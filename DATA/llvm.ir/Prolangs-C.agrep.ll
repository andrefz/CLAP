; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { %struct.ch_set* }
%struct.ch_set = type { %struct.anon.1*, %struct.ch_set* }
%struct.anon.1 = type { i8, i8 }
%struct.pat_list = type { i32, %struct.pat_list* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }
%struct.term = type { i32, [32 x i8] }
%struct.anon.3 = type { i16, %struct.rnode* }
%struct.snode = type { %struct.rnode*, i32, %struct.snode* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"%s: the maximum number of erorrs allowed for full regular expression is 4\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ibuf = common dso_local global [512 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [63 x i8] c"%s: WARNING!!! -B option ignored when -c, -l, -f, or -# is on\0A\00", align 1
@.str.1.7 = private unnamed_addr constant [66 x i8] c"WARNING!!!  approximate matching is not supported with -f option\0A\00", align 1
@.str.2.8 = private unnamed_addr constant [34 x i8] c"%s: -f and -n are not compatible\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: -f and -d are not compatible\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"WARNING!!! -D#, -I#, or -S# option is ignored for regular expression pattern\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: the error cost cannot be 0\0A\00", align 1
@.str.6.9 = private unnamed_addr constant [33 x i8] c"%s: -d and -x is not compatible\0A\00", align 1
@lpos = common dso_local global [0 x %struct.anon*]* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c".*(\00", align 1
@.str.1.11 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2.12 = private unnamed_addr constant [36 x i8] c"mk_followpos: unknown node type %d\0A\00", align 1
@DNA = dso_local global i32 0, align 4
@APPROX = dso_local global i32 0, align 4
@PAT_FILE = dso_local global i32 0, align 4
@CONSTANT = dso_local global i32 0, align 4
@total_line = dso_local global i32 0, align 4
@old_D_pat = dso_local global [16 x i8] c"\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@D_pattern = dso_local global [16 x i8] c"\0A; \00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@NOFILENAME = dso_local global i32 0, align 4
@FILENAMEONLY = dso_local global i32 0, align 4
@Numfiles = dso_local global i32 0, align 4
@Progname = common dso_local global [256 x i8] zeroinitializer, align 16
@COUNT = common dso_local global i32 0, align 4
@SILENT = common dso_local global i32 0, align 4
@I = common dso_local global i32 0, align 4
@WHOLELINE = common dso_local global i32 0, align 4
@WORDBOUND = common dso_local global i32 0, align 4
@DELIMITER = common dso_local global i32 0, align 4
@D_length = common dso_local global i32 0, align 4
@NOUPPER = common dso_local global i32 0, align 4
@LINENUM = common dso_local global i32 0, align 4
@INVERSE = common dso_local global i32 0, align 4
@OUTTAIL = common dso_local global i32 0, align 4
@BESTMATCH = common dso_local global i32 0, align 4
@NOPROMPT = common dso_local global i32 0, align 4
@JUMP = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@DD = common dso_local global i32 0, align 4
@FILEOUT = common dso_local global i32 0, align 4
@Textfiles = common dso_local global i8** null, align 8
@SGREP = common dso_local global i32 0, align 4
@FNAME = common dso_local global i32 0, align 4
@num_of_matched = common dso_local global i32 0, align 4
@CurrentFileName = common dso_local global [256 x i8] zeroinitializer, align 16
@NOMATCH = common dso_local global i32 0, align 4
@EATFIRST = common dso_local global i32 0, align 4
@REGEX = common dso_local global i32 0, align 4
@TRUNCATE = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@FIRSTOUTPUT = common dso_local global i32 0, align 4
@FIRST_IN_RE = common dso_local global i32 0, align 4
@TAIL = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@SIMPLEPATTERN = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@Num_Pat = common dso_local global i32 0, align 4
@RE_ERR = common dso_local global i32 0, align 4
@Bit = common dso_local global [33 x i32] zeroinitializer, align 16
@Mask = common dso_local global [256 x i32] zeroinitializer, align 16
@table = common dso_local global [32 x [32 x i32]] zeroinitializer, align 16
@NO_ERR_MASK = common dso_local global i32 0, align 4
@Init = common dso_local global [8 x i32] zeroinitializer, align 16
@Init1 = common dso_local global i32 0, align 4
@Next = common dso_local global [66000 x i32] zeroinitializer, align 16
@Next1 = common dso_local global [66000 x i32] zeroinitializer, align 16
@buffer = common dso_local global [50177 x i8] zeroinitializer, align 16
@wildmask = common dso_local global i32 0, align 4
@endposition = common dso_local global i32 0, align 4
@D_endpos = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [6 x i8] c"agrep\00", align 1
@.str.1.66 = private unnamed_addr constant [32 x i8] c"%s: illegal option combination\0A\00", align 1
@.str.2.67 = private unnamed_addr constant [32 x i8] c"%s: delimiter pattern too long\0A\00", align 1
@.str.3.68 = private unnamed_addr constant [4 x i8] c">; \00", align 1
@.str.4.69 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -e option\0A\00", align 1
@.str.5.70 = private unnamed_addr constant [32 x i8] c"%s: Can't open pattern file %s\0A\00", align 1
@.str.6.71 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -k option\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"%s: -k should be the last option in the command\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: the maximum number of errors is %d \0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: illegal option  -%c\0A\00", align 1
@.str.10.72 = private unnamed_addr constant [46 x i8] c"%s: -h and -l options are mutually exclusive\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"%s: malloc failure (you probably don't have enough memory)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s: %s: no such file or directory\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"%s: -l option is not compatible with standard input\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: can't open file %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"best match has 1 error, \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"best match has %d errors, \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"there is 1 match, output it? (y/n)\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"there are %d matches, output them? (y/n)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: size of pattern must be greater than number of errors\0A\00", align 1
@.str.27 = private unnamed_addr constant [68 x i8] c"usage: %s [-#cdehiklnpstvwxBDGIS] [-f patternfile] pattern [files]\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"summary of frequently used options:\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"-#: find matches with at most # errors\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"-c: output the number of matched records\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"-d: define record delimiter\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"-h: do not output file names\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"-i: case-insensitive search, e.g., 'a' = 'A'\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"-l: output the names of files that contain a match\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"-n: output record prefixed by record number\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"-v: output those records containing no matches\0A\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"-w: pattern has to match as a word, e.g., 'win' will not match 'wind'\0A\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"-B: best match mode. find the closest matches to the pattern\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"-G: output the files that contain a match\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"%s: regular expression too long\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.41 = private unnamed_addr constant [65 x i8] c"WARNING!!!  some lines have been truncated in output record #%d\0A\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '<', '>'\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '[', ']'\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [18 x i8] c"illegal pattern \0A\00", align 1
@.str.3.84 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@LONG = dso_local global i32 0, align 4
@SHORT = dso_local global i32 0, align 4
@p_size = dso_local global i32 0, align 4
@HASH = common dso_local global [8192 x %struct.pat_list*] zeroinitializer, align 16
@tr = common dso_local global [256 x i8] zeroinitializer, align 16
@patt = common dso_local global [30000 x i8*] zeroinitializer, align 16
@pat_len = common dso_local global [30000 x i8] zeroinitializer, align 16
@SHIFT1 = common dso_local global [4096 x i8] zeroinitializer, align 16
@qt = common dso_local global %struct.pat_list* null, align 8
@pt = common dso_local global %struct.pat_list* null, align 8
@pat_spool = common dso_local global [320256 x i8] zeroinitializer, align 16
@buf = common dso_local global [268192 x i8] zeroinitializer, align 16
@tr1 = common dso_local global [256 x i8] zeroinitializer, align 16
@.str.85 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [37 x i8] c"%s: maximum pattern file size is %d\0A\00", align 1
@.str.3.90 = private unnamed_addr constant [38 x i8] c"%s: maximum number of patterns is %d\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [27 x i8] c"the pattern file is empty\0A\00", align 1
@.str.5.94 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@pos_cnt = dso_local global i32 0, align 4
@final_pos = common dso_local global i32 0, align 4
@.str.97 = private unnamed_addr constant [33 x i8] c"parse_re: unknown token type %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"%s: delimiter pattern too long\0A\00", align 1
@.str.1.103 = private unnamed_addr constant [55 x i8] c"%s: -d or -w option is not supported for this pattern\0A\00", align 1
@.str.2.104 = private unnamed_addr constant [32 x i8] c"%s: illegal regular expression\0A\00", align 1
@.str.3.105 = private unnamed_addr constant [33 x i8] c"%s: regular expression too long\0A\00", align 1
@TR = common dso_local global [256 x i8] zeroinitializer, align 16
@shift_1 = common dso_local global i32 0, align 4
@SHIFT = common dso_local global [256 x i8] zeroinitializer, align 16
@MEMBER = common dso_local global [8192 x i8] zeroinitializer, align 16
@Hashmask = common dso_local global i32 0, align 4
@MEMBER_1 = common dso_local global [65536 x i8] zeroinitializer, align 16
@SHIFT_2 = common dso_local global [4096 x i8] zeroinitializer, align 16
@char_map = common dso_local global [256 x i8] zeroinitializer, align 16
@MEMBER_D = common dso_local global i8* null, align 8
@BSize = common dso_local global i8 0, align 1
@pat = common dso_local global [256 x i8] zeroinitializer, align 16
@.str.106 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1.107 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.108 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3.111 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@.str.4.112 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
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
  %18 = alloca [17 x i32], align 16
  %19 = alloca [17 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [98305 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %25, align 4
  %27 = load i32, i32* @I, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 -1, i32* @Init1, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* @DD, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* @DD, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @I, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* @I, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @S, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* @S, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 @strlen(i8* %52) #7
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %20, align 4
  %55 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 49151
  store i8 10, i8* %55, align 1
  store i32 49152, i32* %22, align 4
  %56 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* @D_endpos, align 4
  store i32 %57, i32* %14, align 4
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %67, %51
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 %63, 1
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %58

70:                                               ; preds = %58
  %71 = load i32, i32* %14, align 4
  %72 = xor i32 %71, -1
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @D_endpos, align 4
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul i32 %76, 2
  store i32 %77, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %89, %70
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %84
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %87
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %78

92:                                               ; preds = %78
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %106, %92
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ule i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %100 = load i32, i32* %15, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %15, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %94

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %671, %109
  %111 = load i32, i32* %5, align 4
  %112 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %113 = getelementptr inbounds i8, i8* %112, i64 49152
  %114 = call i32 @fill_buf(i32 %111, i8* %113, i32 49152)
  store i32 %114, i32* %23, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %672

116:                                              ; preds = %110
  store i32 49152, i32* %8, align 4
  %117 = load i32, i32* %23, align 4
  %118 = add nsw i32 49152, %117
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %24, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %116
  store i32 49151, i32* %8, align 4
  %122 = load i32, i32* @DELIMITER, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %156

124:                                              ; preds = %121
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %145, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i32, i32* %15, align 4
  %137 = add i32 49152, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %135, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  br label %148

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %15, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %125

148:                                              ; preds = %143, %125
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp uge i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %25, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %25, align 4
  br label %155

155:                                              ; preds = %152, %148
  br label %156

156:                                              ; preds = %155, %121
  store i32 0, i32* %24, align 4
  br label %157

157:                                              ; preds = %156, %116
  %158 = load i32, i32* %23, align 4
  %159 = icmp slt i32 %158, 49152
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %162 = getelementptr inbounds i8, i8* %161, i64 49152
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8*, i8** %4, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = call i8* @strncpy(i8* %165, i8* %166, i64 %168) #8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %20, align 4
  %172 = add i32 %170, %171
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %174
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %160, %157
  br label %177

177:                                              ; preds = %639, %176
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %640

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %8, align 4
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i64
  %188 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* @Init1, align 4
  %191 = load i32, i32* %6, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %190, %194
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %6, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = lshr i32 %199, 1
  %201 = load i32, i32* %13, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* %9, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %6, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %206
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %254, %181
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ule i32 %210, %211
  br i1 %212, label %213, label %257

213:                                              ; preds = %209
  %214 = load i32, i32* %15, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* @Init1, align 4
  %219 = load i32, i32* %12, align 4
  %220 = and i32 %218, %219
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %12, align 4
  %222 = lshr i32 %221, 1
  %223 = load i32, i32* %13, align 4
  %224 = and i32 %222, %223
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @I, align 4
  %227 = sub i32 %225, %226
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %224, %230
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* @DD, align 4
  %234 = sub i32 %232, %233
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @S, align 4
  %240 = sub i32 %238, %239
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %237, %243
  %245 = lshr i32 %244, 1
  %246 = load i32, i32* %17, align 4
  %247 = and i32 %245, %246
  %248 = or i32 %231, %247
  %249 = load i32, i32* %9, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* %15, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %252
  store i32 %250, i32* %253, align 4
  br label %254

254:                                              ; preds = %213
  %255 = load i32, i32* %15, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %15, align 4
  br label %209

257:                                              ; preds = %209
  %258 = load i32, i32* %6, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %16, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %410

265:                                              ; preds = %257
  %266 = load i32, i32* %25, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %25, align 4
  %268 = load i32, i32* @AND, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %280

270:                                              ; preds = %265
  %271 = load i32, i32* %6, align 4
  %272 = mul i32 %271, 2
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @endposition, align 4
  %277 = and i32 %275, %276
  %278 = load i32, i32* @endposition, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %298, label %280

280:                                              ; preds = %270, %265
  %281 = load i32, i32* @AND, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load i32, i32* %6, align 4
  %285 = mul i32 %284, 2
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @endposition, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br label %292

292:                                              ; preds = %283, %280
  %293 = phi i1 [ false, %280 ], [ %291, %283 ]
  %294 = zext i1 %293 to i32
  %295 = load i32, i32* @INVERSE, align 4
  %296 = xor i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %319

298:                                              ; preds = %292, %270
  %299 = load i32, i32* @FILENAMEONLY, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %298
  %302 = load i32, i32* @num_of_matched, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* @num_of_matched, align 4
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %673

305:                                              ; preds = %298
  %306 = load i32, i32* %22, align 4
  %307 = load i32, i32* %23, align 4
  %308 = add nsw i32 49152, %307
  %309 = icmp slt i32 %306, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %312 = load i32, i32* %22, align 4
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* %20, align 4
  %315 = sub i32 %313, %314
  %316 = sub i32 %315, 1
  %317 = load i32, i32* %25, align 4
  call void @output(i8* %311, i32 %312, i32 %316, i32 %317)
  br label %318

318:                                              ; preds = %310, %305
  br label %319

319:                                              ; preds = %318, %292
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %20, align 4
  %322 = sub i32 %320, %321
  store i32 %322, i32* %22, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %15, align 4
  br label %324

324:                                              ; preds = %336, %319
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ule i32 %325, %326
  br i1 %327, label %328, label %339

328:                                              ; preds = %324
  %329 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %330 = load i32, i32* %15, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %331
  store i32 %329, i32* %332, align 4
  %333 = load i32, i32* %15, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %334
  store i32 %329, i32* %335, align 4
  br label %336

336:                                              ; preds = %328
  %337 = load i32, i32* %15, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %15, align 4
  br label %324

339:                                              ; preds = %324
  %340 = load i32, i32* @Init1, align 4
  %341 = load i32, i32* %6, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %340, %344
  store i32 %345, i32* %9, align 4
  %346 = load i32, i32* %6, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = lshr i32 %349, 1
  %351 = load i32, i32* %13, align 4
  %352 = and i32 %350, %351
  %353 = load i32, i32* %9, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* %14, align 4
  %356 = and i32 %354, %355
  %357 = load i32, i32* %6, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %358
  store i32 %356, i32* %359, align 4
  %360 = load i32, i32* %10, align 4
  store i32 %360, i32* %15, align 4
  br label %361

361:                                              ; preds = %406, %339
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* %11, align 4
  %364 = icmp ule i32 %362, %363
  br i1 %364, label %365, label %409

365:                                              ; preds = %361
  %366 = load i32, i32* %15, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  store i32 %369, i32* %12, align 4
  %370 = load i32, i32* @Init1, align 4
  %371 = load i32, i32* %12, align 4
  %372 = and i32 %370, %371
  store i32 %372, i32* %9, align 4
  %373 = load i32, i32* %12, align 4
  %374 = lshr i32 %373, 1
  %375 = load i32, i32* %13, align 4
  %376 = and i32 %374, %375
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* @I, align 4
  %379 = sub i32 %377, %378
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = or i32 %376, %382
  %384 = load i32, i32* %15, align 4
  %385 = load i32, i32* @DD, align 4
  %386 = sub i32 %384, %385
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* @S, align 4
  %392 = sub i32 %390, %391
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %389, %395
  %397 = lshr i32 %396, 1
  %398 = load i32, i32* %17, align 4
  %399 = and i32 %397, %398
  %400 = or i32 %383, %399
  %401 = load i32, i32* %9, align 4
  %402 = or i32 %400, %401
  %403 = load i32, i32* %15, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %404
  store i32 %402, i32* %405, align 4
  br label %406

406:                                              ; preds = %365
  %407 = load i32, i32* %15, align 4
  %408 = add i32 %407, 1
  store i32 %408, i32* %15, align 4
  br label %361

409:                                              ; preds = %361
  br label %410

410:                                              ; preds = %409, %257
  %411 = load i32, i32* %8, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %8, align 4
  %413 = zext i32 %411 to i64
  %414 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i64
  %417 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %416
  %418 = load i32, i32* %417, align 4
  store i32 %418, i32* %13, align 4
  %419 = load i32, i32* %6, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @Init1, align 4
  %424 = and i32 %422, %423
  store i32 %424, i32* %9, align 4
  %425 = load i32, i32* %6, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = lshr i32 %428, 1
  %430 = load i32, i32* %13, align 4
  %431 = and i32 %429, %430
  %432 = load i32, i32* %9, align 4
  %433 = or i32 %431, %432
  %434 = load i32, i32* %6, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %435
  store i32 %433, i32* %436, align 4
  %437 = load i32, i32* %10, align 4
  store i32 %437, i32* %15, align 4
  br label %438

438:                                              ; preds = %485, %410
  %439 = load i32, i32* %15, align 4
  %440 = load i32, i32* %11, align 4
  %441 = icmp ule i32 %439, %440
  br i1 %441, label %442, label %488

442:                                              ; preds = %438
  %443 = load i32, i32* %15, align 4
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @Init1, align 4
  %448 = and i32 %446, %447
  store i32 %448, i32* %9, align 4
  %449 = load i32, i32* %15, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = lshr i32 %452, 1
  %454 = load i32, i32* %13, align 4
  %455 = and i32 %453, %454
  %456 = load i32, i32* %15, align 4
  %457 = load i32, i32* @I, align 4
  %458 = sub i32 %456, %457
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = or i32 %455, %461
  %463 = load i32, i32* %15, align 4
  %464 = load i32, i32* @DD, align 4
  %465 = sub i32 %463, %464
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* %15, align 4
  %470 = load i32, i32* @S, align 4
  %471 = sub i32 %469, %470
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = or i32 %468, %474
  %476 = lshr i32 %475, 1
  %477 = load i32, i32* %17, align 4
  %478 = and i32 %476, %477
  %479 = or i32 %462, %478
  %480 = load i32, i32* %9, align 4
  %481 = or i32 %479, %480
  %482 = load i32, i32* %15, align 4
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %483
  store i32 %481, i32* %484, align 4
  br label %485

485:                                              ; preds = %442
  %486 = load i32, i32* %15, align 4
  %487 = add i32 %486, 1
  store i32 %487, i32* %15, align 4
  br label %438

488:                                              ; preds = %438
  %489 = load i32, i32* %6, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %16, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %639

496:                                              ; preds = %488
  %497 = load i32, i32* %25, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %25, align 4
  %499 = load i32, i32* @AND, align 4
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %501, label %510

501:                                              ; preds = %496
  %502 = load i32, i32* %11, align 4
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* @endposition, align 4
  %507 = and i32 %505, %506
  %508 = load i32, i32* @endposition, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %527, label %510

510:                                              ; preds = %501, %496
  %511 = load i32, i32* @AND, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %521

513:                                              ; preds = %510
  %514 = load i32, i32* %11, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @endposition, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br label %521

521:                                              ; preds = %513, %510
  %522 = phi i1 [ false, %510 ], [ %520, %513 ]
  %523 = zext i1 %522 to i32
  %524 = load i32, i32* @INVERSE, align 4
  %525 = xor i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %548

527:                                              ; preds = %521, %501
  %528 = load i32, i32* @FILENAMEONLY, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %527
  %531 = load i32, i32* @num_of_matched, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* @num_of_matched, align 4
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %673

534:                                              ; preds = %527
  %535 = load i32, i32* %22, align 4
  %536 = load i32, i32* %23, align 4
  %537 = add nsw i32 49152, %536
  %538 = icmp slt i32 %535, %537
  br i1 %538, label %539, label %547

539:                                              ; preds = %534
  %540 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %541 = load i32, i32* %22, align 4
  %542 = load i32, i32* %8, align 4
  %543 = load i32, i32* %20, align 4
  %544 = sub i32 %542, %543
  %545 = sub i32 %544, 1
  %546 = load i32, i32* %25, align 4
  call void @output(i8* %540, i32 %541, i32 %545, i32 %546)
  br label %547

547:                                              ; preds = %539, %534
  br label %548

548:                                              ; preds = %547, %521
  %549 = load i32, i32* %8, align 4
  %550 = load i32, i32* %20, align 4
  %551 = sub i32 %549, %550
  store i32 %551, i32* %22, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %552 = load i32, i32* %6, align 4
  store i32 %552, i32* %15, align 4
  br label %553

553:                                              ; preds = %565, %548
  %554 = load i32, i32* %15, align 4
  %555 = load i32, i32* %11, align 4
  %556 = icmp ule i32 %554, %555
  br i1 %556, label %557, label %568

557:                                              ; preds = %553
  %558 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %559 = load i32, i32* %15, align 4
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %560
  store i32 %558, i32* %561, align 4
  %562 = load i32, i32* %15, align 4
  %563 = zext i32 %562 to i64
  %564 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %563
  store i32 %558, i32* %564, align 4
  br label %565

565:                                              ; preds = %557
  %566 = load i32, i32* %15, align 4
  %567 = add i32 %566, 1
  store i32 %567, i32* %15, align 4
  br label %553

568:                                              ; preds = %553
  %569 = load i32, i32* @Init1, align 4
  %570 = load i32, i32* %6, align 4
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = and i32 %569, %573
  store i32 %574, i32* %9, align 4
  %575 = load i32, i32* %6, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = lshr i32 %578, 1
  %580 = load i32, i32* %13, align 4
  %581 = and i32 %579, %580
  %582 = load i32, i32* %9, align 4
  %583 = or i32 %581, %582
  %584 = load i32, i32* %14, align 4
  %585 = and i32 %583, %584
  %586 = load i32, i32* %6, align 4
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %587
  store i32 %585, i32* %588, align 4
  %589 = load i32, i32* %10, align 4
  store i32 %589, i32* %15, align 4
  br label %590

590:                                              ; preds = %635, %568
  %591 = load i32, i32* %15, align 4
  %592 = load i32, i32* %11, align 4
  %593 = icmp ule i32 %591, %592
  br i1 %593, label %594, label %638

594:                                              ; preds = %590
  %595 = load i32, i32* %15, align 4
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %596
  %598 = load i32, i32* %597, align 4
  store i32 %598, i32* %12, align 4
  %599 = load i32, i32* @Init1, align 4
  %600 = load i32, i32* %12, align 4
  %601 = and i32 %599, %600
  store i32 %601, i32* %9, align 4
  %602 = load i32, i32* %12, align 4
  %603 = lshr i32 %602, 1
  %604 = load i32, i32* %13, align 4
  %605 = and i32 %603, %604
  %606 = load i32, i32* %15, align 4
  %607 = load i32, i32* @I, align 4
  %608 = sub i32 %606, %607
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %609
  %611 = load i32, i32* %610, align 4
  %612 = or i32 %605, %611
  %613 = load i32, i32* %15, align 4
  %614 = load i32, i32* @DD, align 4
  %615 = sub i32 %613, %614
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %616
  %618 = load i32, i32* %617, align 4
  %619 = load i32, i32* %15, align 4
  %620 = load i32, i32* @S, align 4
  %621 = sub i32 %619, %620
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds [17 x i32], [17 x i32]* %18, i64 0, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = or i32 %618, %624
  %626 = lshr i32 %625, 1
  %627 = load i32, i32* %17, align 4
  %628 = and i32 %626, %627
  %629 = or i32 %612, %628
  %630 = load i32, i32* %9, align 4
  %631 = or i32 %629, %630
  %632 = load i32, i32* %15, align 4
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds [17 x i32], [17 x i32]* %19, i64 0, i64 %633
  store i32 %631, i32* %634, align 4
  br label %635

635:                                              ; preds = %594
  %636 = load i32, i32* %15, align 4
  %637 = add i32 %636, 1
  store i32 %637, i32* %15, align 4
  br label %590

638:                                              ; preds = %590
  br label %639

639:                                              ; preds = %638, %488
  br label %177

640:                                              ; preds = %177
  %641 = load i32, i32* %23, align 4
  %642 = add nsw i32 49152, %641
  %643 = load i32, i32* %22, align 4
  %644 = sub nsw i32 %642, %643
  store i32 %644, i32* %21, align 4
  %645 = load i32, i32* %21, align 4
  %646 = icmp sgt i32 %645, 49152
  br i1 %646, label %647, label %648

647:                                              ; preds = %640
  store i32 49152, i32* %21, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %648

648:                                              ; preds = %647, %640
  %649 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %650 = getelementptr inbounds i8, i8* %649, i64 49152
  %651 = load i32, i32* %21, align 4
  %652 = sext i32 %651 to i64
  %653 = sub i64 0, %652
  %654 = getelementptr inbounds i8, i8* %650, i64 %653
  %655 = getelementptr inbounds [98305 x i8], [98305 x i8]* %26, i64 0, i64 0
  %656 = load i32, i32* %22, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i8, i8* %655, i64 %657
  %659 = load i32, i32* %21, align 4
  %660 = sext i32 %659 to i64
  %661 = call i8* @strncpy(i8* %654, i8* %658, i64 %660) #8
  %662 = load i32, i32* %21, align 4
  %663 = sub nsw i32 49152, %662
  store i32 %663, i32* %22, align 4
  %664 = load i32, i32* %22, align 4
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %666, label %667

666:                                              ; preds = %648
  store i32 1, i32* %22, align 4
  br label %667

667:                                              ; preds = %666, %648
  %668 = load i32, i32* %23, align 4
  %669 = icmp slt i32 %668, 49152
  br i1 %669, label %670, label %671

670:                                              ; preds = %667
  store i32 49152, i32* %22, align 4
  br label %671

671:                                              ; preds = %670, %667
  br label %110

672:                                              ; preds = %110
  br label %673

673:                                              ; preds = %672, %530, %301
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch0(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
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
  %16 = alloca [10 x i32], align 16
  %17 = alloca [10 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [98305 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %25, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strlen(i8* %28) #7
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %19, align 4
  %31 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 49151
  store i8 10, i8* %31, align 1
  %32 = load i32, i32* @D_endpos, align 4
  store i32 %32, i32* %18, align 4
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %42, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %18, align 4
  %39 = shl i32 %38, 1
  %40 = load i32, i32* %18, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %33

45:                                               ; preds = %33
  %46 = load i32, i32* %18, align 4
  %47 = xor i32 %46, -1
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @Init1, align 4
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @D_endpos, align 4
  store i32 %50, i32* %15, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %24, align 4
  br label %51

51:                                               ; preds = %63, %45
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %57 = load i32, i32* %24, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %24, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %24, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %24, align 4
  br label %51

66:                                               ; preds = %51
  store i32 49152, i32* %22, align 4
  br label %67

67:                                               ; preds = %555, %66
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 49152
  %71 = call i32 @fill_buf(i32 %68, i8* %70, i32 49152)
  store i32 %71, i32* %23, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %556

73:                                               ; preds = %67
  store i32 49152, i32* %7, align 4
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 49152, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 49151, i32* %7, align 4
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %23, align 4
  %81 = icmp slt i32 %80, 49152
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = call i8* @strncpy(i8* %86, i8* %87, i64 %89) #8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %19, align 4
  %93 = add i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add i32 %96, %97
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %82, %79
  br label %100

100:                                              ; preds = %522, %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %523

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %11, align 4
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %9, align 4
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = lshr i32 %120, 1
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %123, %124
  %126 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  store i32 1, i32* %24, align 4
  br label %127

127:                                              ; preds = %172, %104
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ule i32 %128, %129
  br i1 %130, label %131, label %175

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %24, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %132, %136
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %24, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %24, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %24, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %147, %152
  %154 = lshr i32 %153, 1
  %155 = load i32, i32* %12, align 4
  %156 = and i32 %154, %155
  %157 = or i32 %142, %156
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = lshr i32 %161, 1
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %10, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %24, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %170
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %131
  %173 = load i32, i32* %24, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %24, align 4
  br label %127

175:                                              ; preds = %127
  %176 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %177 = load i32, i32* %176, align 16
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %313

181:                                              ; preds = %175
  %182 = load i32, i32* %25, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %25, align 4
  %184 = load i32, i32* %6, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* @AND, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %196

190:                                              ; preds = %181
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @endposition, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @endposition, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %210, label %196

196:                                              ; preds = %190, %181
  %197 = load i32, i32* @AND, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @endposition, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br label %204

204:                                              ; preds = %199, %196
  %205 = phi i1 [ false, %196 ], [ %203, %199 ]
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* @INVERSE, align 4
  %208 = xor i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %233

210:                                              ; preds = %204, %190
  %211 = load i32, i32* @FILENAMEONLY, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* @num_of_matched, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @num_of_matched, align 4
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %557

217:                                              ; preds = %210
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %19, align 4
  %220 = sub i32 %218, %219
  %221 = sub i32 %220, 1
  store i32 %221, i32* %26, align 4
  %222 = load i32, i32* %22, align 4
  %223 = load i32, i32* %23, align 4
  %224 = add nsw i32 49152, %223
  %225 = sub nsw i32 %224, 1
  %226 = icmp sge i32 %222, %225
  br i1 %226, label %232, label %227

227:                                              ; preds = %217
  %228 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %26, align 4
  %231 = load i32, i32* %25, align 4
  call void @output(i8* %228, i32 %229, i32 %230, i32 %231)
  br label %232

232:                                              ; preds = %227, %217
  br label %233

233:                                              ; preds = %232, %204
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %19, align 4
  %236 = sub i32 %234, %235
  store i32 %236, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %237

237:                                              ; preds = %246, %233
  %238 = load i32, i32* %24, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ule i32 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %243 = load i32, i32* %24, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %244
  store i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %24, align 4
  br label %237

249:                                              ; preds = %237
  %250 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %251 = load i32, i32* %250, align 16
  %252 = load i32, i32* %13, align 4
  %253 = and i32 %251, %252
  store i32 %253, i32* %9, align 4
  %254 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %255 = load i32, i32* %254, align 16
  %256 = lshr i32 %255, 1
  %257 = load i32, i32* %11, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* %9, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* %18, align 4
  %262 = and i32 %260, %261
  %263 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  store i32 %262, i32* %263, align 16
  store i32 1, i32* %24, align 4
  br label %264

264:                                              ; preds = %309, %249
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ule i32 %265, %266
  br i1 %267, label %268, label %312

268:                                              ; preds = %264
  %269 = load i32, i32* @Init1, align 4
  %270 = load i32, i32* %24, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %269, %273
  store i32 %274, i32* %9, align 4
  %275 = load i32, i32* %24, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %24, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %24, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %284, %289
  %291 = lshr i32 %290, 1
  %292 = load i32, i32* %12, align 4
  %293 = and i32 %291, %292
  %294 = or i32 %279, %293
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %24, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = lshr i32 %298, 1
  %300 = load i32, i32* %11, align 4
  %301 = and i32 %299, %300
  %302 = load i32, i32* %9, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* %10, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* %24, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %307
  store i32 %305, i32* %308, align 4
  br label %309

309:                                              ; preds = %268
  %310 = load i32, i32* %24, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %24, align 4
  br label %264

312:                                              ; preds = %264
  br label %313

313:                                              ; preds = %312, %175
  %314 = load i32, i32* %7, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %7, align 4
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  store i32 %319, i32* %8, align 4
  %320 = load i32, i32* %8, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* %13, align 4
  %325 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %326 = load i32, i32* %325, align 16
  %327 = and i32 %324, %326
  store i32 %327, i32* %9, align 4
  %328 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %329 = load i32, i32* %328, align 16
  %330 = lshr i32 %329, 1
  %331 = load i32, i32* %11, align 4
  %332 = and i32 %330, %331
  %333 = load i32, i32* %9, align 4
  %334 = or i32 %332, %333
  %335 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %334, i32* %335, align 16
  store i32 1, i32* %24, align 4
  br label %336

336:                                              ; preds = %381, %313
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %6, align 4
  %339 = icmp ule i32 %337, %338
  br i1 %339, label %340, label %384

340:                                              ; preds = %336
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %24, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %341, %345
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %24, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %24, align 4
  %353 = sub nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %24, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %356, %361
  %363 = lshr i32 %362, 1
  %364 = load i32, i32* %12, align 4
  %365 = and i32 %363, %364
  %366 = or i32 %351, %365
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* %24, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = lshr i32 %370, 1
  %372 = load i32, i32* %11, align 4
  %373 = and i32 %371, %372
  %374 = load i32, i32* %10, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* %9, align 4
  %377 = or i32 %375, %376
  %378 = load i32, i32* %24, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %379
  store i32 %377, i32* %380, align 4
  br label %381

381:                                              ; preds = %340
  %382 = load i32, i32* %24, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %24, align 4
  br label %336

384:                                              ; preds = %336
  %385 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %386 = load i32, i32* %385, align 16
  %387 = load i32, i32* %15, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %522

390:                                              ; preds = %384
  %391 = load i32, i32* %25, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %25, align 4
  %393 = load i32, i32* %6, align 4
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %9, align 4
  %397 = load i32, i32* @AND, align 4
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %390
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* @endposition, align 4
  %402 = and i32 %400, %401
  %403 = load i32, i32* @endposition, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %419, label %405

405:                                              ; preds = %399, %390
  %406 = load i32, i32* @AND, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %405
  %409 = load i32, i32* %9, align 4
  %410 = load i32, i32* @endposition, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br label %413

413:                                              ; preds = %408, %405
  %414 = phi i1 [ false, %405 ], [ %412, %408 ]
  %415 = zext i1 %414 to i32
  %416 = load i32, i32* @INVERSE, align 4
  %417 = xor i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %442

419:                                              ; preds = %413, %399
  %420 = load i32, i32* @FILENAMEONLY, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load i32, i32* @num_of_matched, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* @num_of_matched, align 4
  %425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %557

426:                                              ; preds = %419
  %427 = load i32, i32* %7, align 4
  %428 = load i32, i32* %19, align 4
  %429 = sub i32 %427, %428
  %430 = sub i32 %429, 1
  store i32 %430, i32* %26, align 4
  %431 = load i32, i32* %22, align 4
  %432 = load i32, i32* %23, align 4
  %433 = add nsw i32 49152, %432
  %434 = sub nsw i32 %433, 1
  %435 = icmp sge i32 %431, %434
  br i1 %435, label %441, label %436

436:                                              ; preds = %426
  %437 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %438 = load i32, i32* %22, align 4
  %439 = load i32, i32* %26, align 4
  %440 = load i32, i32* %25, align 4
  call void @output(i8* %437, i32 %438, i32 %439, i32 %440)
  br label %441

441:                                              ; preds = %436, %426
  br label %442

442:                                              ; preds = %441, %413
  %443 = load i32, i32* %7, align 4
  %444 = load i32, i32* %19, align 4
  %445 = sub i32 %443, %444
  store i32 %445, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %446

446:                                              ; preds = %455, %442
  %447 = load i32, i32* %24, align 4
  %448 = load i32, i32* %6, align 4
  %449 = icmp ule i32 %447, %448
  br i1 %449, label %450, label %458

450:                                              ; preds = %446
  %451 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %452 = load i32, i32* %24, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %453
  store i32 %451, i32* %454, align 4
  br label %455

455:                                              ; preds = %450
  %456 = load i32, i32* %24, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %24, align 4
  br label %446

458:                                              ; preds = %446
  %459 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %460 = load i32, i32* %459, align 16
  %461 = load i32, i32* %13, align 4
  %462 = and i32 %460, %461
  store i32 %462, i32* %9, align 4
  %463 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 0
  %464 = load i32, i32* %463, align 16
  %465 = lshr i32 %464, 1
  %466 = load i32, i32* %11, align 4
  %467 = and i32 %465, %466
  %468 = load i32, i32* %9, align 4
  %469 = or i32 %467, %468
  %470 = load i32, i32* %18, align 4
  %471 = and i32 %469, %470
  %472 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  store i32 %471, i32* %472, align 16
  store i32 1, i32* %24, align 4
  br label %473

473:                                              ; preds = %518, %458
  %474 = load i32, i32* %24, align 4
  %475 = load i32, i32* %6, align 4
  %476 = icmp ule i32 %474, %475
  br i1 %476, label %477, label %521

477:                                              ; preds = %473
  %478 = load i32, i32* %13, align 4
  %479 = load i32, i32* %24, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = and i32 %478, %482
  store i32 %483, i32* %9, align 4
  %484 = load i32, i32* %24, align 4
  %485 = sub nsw i32 %484, 1
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %24, align 4
  %490 = sub nsw i32 %489, 1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* %24, align 4
  %495 = sub nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = or i32 %493, %498
  %500 = lshr i32 %499, 1
  %501 = load i32, i32* %12, align 4
  %502 = and i32 %500, %501
  %503 = or i32 %488, %502
  store i32 %503, i32* %10, align 4
  %504 = load i32, i32* %24, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = lshr i32 %507, 1
  %509 = load i32, i32* %11, align 4
  %510 = and i32 %508, %509
  %511 = load i32, i32* %9, align 4
  %512 = or i32 %510, %511
  %513 = load i32, i32* %10, align 4
  %514 = or i32 %512, %513
  %515 = load i32, i32* %24, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %516
  store i32 %514, i32* %517, align 4
  br label %518

518:                                              ; preds = %477
  %519 = load i32, i32* %24, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %24, align 4
  br label %473

521:                                              ; preds = %473
  br label %522

522:                                              ; preds = %521, %384
  br label %100

523:                                              ; preds = %100
  %524 = load i32, i32* %23, align 4
  %525 = icmp slt i32 %524, 49152
  br i1 %525, label %526, label %527

526:                                              ; preds = %523
  store i32 49152, i32* %22, align 4
  br label %555

527:                                              ; preds = %523
  %528 = load i32, i32* %23, align 4
  %529 = add nsw i32 49152, %528
  %530 = load i32, i32* %22, align 4
  %531 = sub nsw i32 %529, %530
  store i32 %531, i32* %21, align 4
  %532 = load i32, i32* %21, align 4
  %533 = icmp sgt i32 %532, 49152
  br i1 %533, label %534, label %535

534:                                              ; preds = %527
  store i32 49152, i32* %21, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %535

535:                                              ; preds = %534, %527
  %536 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %537 = getelementptr inbounds i8, i8* %536, i64 49152
  %538 = load i32, i32* %21, align 4
  %539 = sext i32 %538 to i64
  %540 = sub i64 0, %539
  %541 = getelementptr inbounds i8, i8* %537, i64 %540
  %542 = getelementptr inbounds [98305 x i8], [98305 x i8]* %27, i64 0, i64 0
  %543 = load i32, i32* %22, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, i8* %542, i64 %544
  %546 = load i32, i32* %21, align 4
  %547 = sext i32 %546 to i64
  %548 = call i8* @strncpy(i8* %541, i8* %545, i64 %547) #8
  %549 = load i32, i32* %21, align 4
  %550 = sub nsw i32 49152, %549
  store i32 %550, i32* %22, align 4
  %551 = load i32, i32* %22, align 4
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %535
  store i32 1, i32* %22, align 4
  br label %554

554:                                              ; preds = %553, %535
  br label %555

555:                                              ; preds = %554, %526
  br label %67

556:                                              ; preds = %67
  br label %557

557:                                              ; preds = %556, %422, %213
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @asearch(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [9 x i32], align 16
  %26 = alloca [9 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca [98305 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %35, align 4
  %38 = load i32, i32* @I, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 -1, i32* @Init1, align 4
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp ugt i32 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  call void @asearch0(i8* %45, i32 %46, i32 %47)
  br label %770

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @strlen(i8* %49) #7
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %29, align 4
  %52 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 49151
  store i8 10, i8* %52, align 1
  %53 = load i32, i32* @D_endpos, align 4
  store i32 %53, i32* %27, align 4
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %63, %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %29, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %27, align 4
  %60 = shl i32 %59, 1
  %61 = load i32, i32* %27, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %27, align 4
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %54

66:                                               ; preds = %54
  %67 = load i32, i32* %27, align 4
  %68 = xor i32 %67, -1
  store i32 %68, i32* %27, align 4
  %69 = load i32, i32* @Init1, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @D_endpos, align 4
  store i32 %71, i32* %18, align 4
  store i32 1, i32* %30, align 4
  %72 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %72, i32* %24, align 4
  store i32 %72, i32* %23, align 4
  store i32 %72, i32* %22, align 4
  store i32 %72, i32* %21, align 4
  store i32 %72, i32* %20, align 4
  store i32 %72, i32* %19, align 4
  store i32 %72, i32* %17, align 4
  store i32 %72, i32* %16, align 4
  store i32 %72, i32* %15, align 4
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %34, align 4
  br label %73

73:                                               ; preds = %85, %66
  %74 = load i32, i32* %34, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ule i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %79 = load i32, i32* %34, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %34, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %34, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %34, align 4
  br label %73

88:                                               ; preds = %73
  store i32 49152, i32* %32, align 4
  br label %89

89:                                               ; preds = %768, %88
  %90 = load i32, i32* %5, align 4
  %91 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 49152
  %93 = call i32 @fill_buf(i32 %90, i8* %92, i32 49152)
  store i32 %93, i32* %33, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %769

95:                                               ; preds = %89
  store i32 49152, i32* %7, align 4
  %96 = load i32, i32* %33, align 4
  %97 = add nsw i32 49152, %96
  store i32 %97, i32* %28, align 4
  %98 = load i32, i32* %30, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %95
  store i32 49151, i32* %7, align 4
  %101 = load i32, i32* @DELIMITER, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %100
  store i32 0, i32* %34, align 4
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i32, i32* %34, align 4
  %106 = load i32, i32* %29, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* %34, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %34, align 4
  %116 = add nsw i32 49152, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %114, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %127

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %34, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %34, align 4
  br label %104

127:                                              ; preds = %122, %104
  %128 = load i32, i32* %34, align 4
  %129 = load i32, i32* %29, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %35, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %35, align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %100
  store i32 0, i32* %30, align 4
  br label %136

136:                                              ; preds = %135, %95
  %137 = load i32, i32* %33, align 4
  %138 = icmp slt i32 %137, 49152
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %141 = load i32, i32* %28, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8*, i8** %4, align 8
  %145 = load i32, i32* %29, align 4
  %146 = sext i32 %145 to i64
  %147 = call i8* @strncpy(i8* %143, i8* %144, i64 %146) #8
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %29, align 4
  %150 = add i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %29, align 4
  %155 = add i32 %153, %154
  store i32 %155, i32* %28, align 4
  br label %156

156:                                              ; preds = %139, %136
  br label %157

157:                                              ; preds = %735, %156
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %28, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %736

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %15, align 4
  %173 = and i32 %171, %172
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %15, align 4
  %175 = lshr i32 %174, 1
  %176 = load i32, i32* %11, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* %9, align 4
  %179 = or i32 %177, %178
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %17, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %184, %185
  %187 = lshr i32 %186, 1
  %188 = load i32, i32* %12, align 4
  %189 = and i32 %187, %188
  %190 = or i32 %183, %189
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %17, align 4
  %192 = lshr i32 %191, 1
  %193 = load i32, i32* %11, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* %10, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %161
  br label %272

202:                                              ; preds = %161
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %20, align 4
  %205 = and i32 %203, %204
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = or i32 %207, %208
  %210 = lshr i32 %209, 1
  %211 = load i32, i32* %12, align 4
  %212 = and i32 %210, %211
  %213 = or i32 %206, %212
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %20, align 4
  %215 = lshr i32 %214, 1
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* %10, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* %9, align 4
  %221 = or i32 %219, %220
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %225

224:                                              ; preds = %202
  br label %272

225:                                              ; preds = %202
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %22, align 4
  %228 = and i32 %226, %227
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %20, align 4
  %232 = or i32 %230, %231
  %233 = lshr i32 %232, 1
  %234 = load i32, i32* %12, align 4
  %235 = and i32 %233, %234
  %236 = or i32 %229, %235
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %22, align 4
  %238 = lshr i32 %237, 1
  %239 = load i32, i32* %11, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* %10, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* %9, align 4
  %244 = or i32 %242, %243
  store i32 %244, i32* %21, align 4
  %245 = load i32, i32* %6, align 4
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %248

247:                                              ; preds = %225
  br label %272

248:                                              ; preds = %225
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %24, align 4
  %251 = and i32 %249, %250
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %21, align 4
  %254 = load i32, i32* %22, align 4
  %255 = or i32 %253, %254
  %256 = lshr i32 %255, 1
  %257 = load i32, i32* %12, align 4
  %258 = and i32 %256, %257
  %259 = or i32 %252, %258
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %24, align 4
  %261 = lshr i32 %260, 1
  %262 = load i32, i32* %11, align 4
  %263 = and i32 %261, %262
  %264 = load i32, i32* %10, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* %9, align 4
  %267 = or i32 %265, %266
  store i32 %267, i32* %23, align 4
  %268 = load i32, i32* %6, align 4
  %269 = icmp eq i32 %268, 4
  br i1 %269, label %270, label %271

270:                                              ; preds = %248
  br label %272

271:                                              ; preds = %248
  br label %272

272:                                              ; preds = %271, %270, %247, %224, %201
  %273 = load i32, i32* %7, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %18, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %448

279:                                              ; preds = %272
  %280 = load i32, i32* %35, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %35, align 4
  %282 = load i32, i32* %14, align 4
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %6, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %287

285:                                              ; preds = %279
  %286 = load i32, i32* %16, align 4
  store i32 %286, i32* %9, align 4
  br label %287

287:                                              ; preds = %285, %279
  %288 = load i32, i32* %6, align 4
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, i32* %19, align 4
  store i32 %291, i32* %9, align 4
  br label %292

292:                                              ; preds = %290, %287
  %293 = load i32, i32* %6, align 4
  %294 = icmp eq i32 %293, 3
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load i32, i32* %21, align 4
  store i32 %296, i32* %9, align 4
  br label %297

297:                                              ; preds = %295, %292
  %298 = load i32, i32* %6, align 4
  %299 = icmp eq i32 %298, 4
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32, i32* %23, align 4
  store i32 %301, i32* %9, align 4
  br label %302

302:                                              ; preds = %300, %297
  %303 = load i32, i32* @AND, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %311

305:                                              ; preds = %302
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @endposition, align 4
  %308 = and i32 %306, %307
  %309 = load i32, i32* @endposition, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %325, label %311

311:                                              ; preds = %305, %302
  %312 = load i32, i32* @AND, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @endposition, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br label %319

319:                                              ; preds = %314, %311
  %320 = phi i1 [ false, %311 ], [ %318, %314 ]
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* @INVERSE, align 4
  %323 = xor i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %348

325:                                              ; preds = %319, %305
  %326 = load i32, i32* @FILENAMEONLY, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32, i32* @num_of_matched, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* @num_of_matched, align 4
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %770

332:                                              ; preds = %325
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* %29, align 4
  %335 = sub i32 %333, %334
  %336 = sub i32 %335, 1
  store i32 %336, i32* %36, align 4
  %337 = load i32, i32* %32, align 4
  %338 = load i32, i32* %33, align 4
  %339 = add nsw i32 49152, %338
  %340 = sub nsw i32 %339, 1
  %341 = icmp sge i32 %337, %340
  br i1 %341, label %347, label %342

342:                                              ; preds = %332
  %343 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %344 = load i32, i32* %32, align 4
  %345 = load i32, i32* %36, align 4
  %346 = load i32, i32* %35, align 4
  call void @output(i8* %343, i32 %344, i32 %345, i32 %346)
  br label %347

347:                                              ; preds = %342, %332
  br label %348

348:                                              ; preds = %347, %319
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %29, align 4
  %351 = sub i32 %349, %350
  store i32 %351, i32* %32, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* %34, align 4
  br label %352

352:                                              ; preds = %361, %348
  %353 = load i32, i32* %34, align 4
  %354 = load i32, i32* %6, align 4
  %355 = icmp ule i32 %353, %354
  br i1 %355, label %356, label %364

356:                                              ; preds = %352
  %357 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %358 = load i32, i32* %34, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %359
  store i32 %357, i32* %360, align 4
  br label %361

361:                                              ; preds = %356
  %362 = load i32, i32* %34, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %34, align 4
  br label %352

364:                                              ; preds = %352
  %365 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %366 = load i32, i32* %365, align 16
  %367 = load i32, i32* @Init1, align 4
  %368 = and i32 %366, %367
  store i32 %368, i32* %9, align 4
  %369 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %370 = load i32, i32* %369, align 16
  %371 = lshr i32 %370, 1
  %372 = load i32, i32* %11, align 4
  %373 = and i32 %371, %372
  %374 = load i32, i32* %9, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* %27, align 4
  %377 = and i32 %375, %376
  %378 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  store i32 %377, i32* %378, align 16
  store i32 1, i32* %34, align 4
  br label %379

379:                                              ; preds = %424, %364
  %380 = load i32, i32* %34, align 4
  %381 = load i32, i32* %6, align 4
  %382 = icmp ule i32 %380, %381
  br i1 %382, label %383, label %427

383:                                              ; preds = %379
  %384 = load i32, i32* @Init1, align 4
  %385 = load i32, i32* %34, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = and i32 %384, %388
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %34, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* %34, align 4
  %396 = sub nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %34, align 4
  %401 = sub nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %399, %404
  %406 = lshr i32 %405, 1
  %407 = load i32, i32* %12, align 4
  %408 = and i32 %406, %407
  %409 = or i32 %394, %408
  store i32 %409, i32* %10, align 4
  %410 = load i32, i32* %34, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = lshr i32 %413, 1
  %415 = load i32, i32* %11, align 4
  %416 = and i32 %414, %415
  %417 = load i32, i32* %9, align 4
  %418 = or i32 %416, %417
  %419 = load i32, i32* %10, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* %34, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %422
  store i32 %420, i32* %423, align 4
  br label %424

424:                                              ; preds = %383
  %425 = load i32, i32* %34, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %34, align 4
  br label %379

427:                                              ; preds = %379
  %428 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %429 = load i32, i32* %428, align 16
  store i32 %429, i32* %14, align 4
  %430 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %431 = load i32, i32* %430, align 16
  store i32 %431, i32* %15, align 4
  %432 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 1
  %433 = load i32, i32* %432, align 4
  store i32 %433, i32* %16, align 4
  %434 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 1
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %17, align 4
  %436 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 2
  %437 = load i32, i32* %436, align 8
  store i32 %437, i32* %19, align 4
  %438 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 2
  %439 = load i32, i32* %438, align 8
  store i32 %439, i32* %20, align 4
  %440 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 3
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %21, align 4
  %442 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 3
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %22, align 4
  %444 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 4
  %445 = load i32, i32* %444, align 16
  store i32 %445, i32* %23, align 4
  %446 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 4
  %447 = load i32, i32* %446, align 16
  store i32 %447, i32* %24, align 4
  br label %448

448:                                              ; preds = %427, %272
  %449 = load i32, i32* %7, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i32
  store i32 %453, i32* %8, align 4
  %454 = load i32, i32* %8, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %455
  %457 = load i32, i32* %456, align 4
  store i32 %457, i32* %11, align 4
  %458 = load i32, i32* %13, align 4
  %459 = load i32, i32* %14, align 4
  %460 = and i32 %458, %459
  store i32 %460, i32* %9, align 4
  %461 = load i32, i32* %14, align 4
  %462 = lshr i32 %461, 1
  %463 = load i32, i32* %11, align 4
  %464 = and i32 %462, %463
  %465 = load i32, i32* %9, align 4
  %466 = or i32 %464, %465
  store i32 %466, i32* %15, align 4
  %467 = load i32, i32* %13, align 4
  %468 = load i32, i32* %16, align 4
  %469 = and i32 %467, %468
  store i32 %469, i32* %9, align 4
  %470 = load i32, i32* %14, align 4
  %471 = load i32, i32* %14, align 4
  %472 = load i32, i32* %15, align 4
  %473 = or i32 %471, %472
  %474 = lshr i32 %473, 1
  %475 = load i32, i32* %12, align 4
  %476 = and i32 %474, %475
  %477 = or i32 %470, %476
  store i32 %477, i32* %10, align 4
  %478 = load i32, i32* %16, align 4
  %479 = lshr i32 %478, 1
  %480 = load i32, i32* %11, align 4
  %481 = and i32 %479, %480
  %482 = load i32, i32* %10, align 4
  %483 = or i32 %481, %482
  %484 = load i32, i32* %9, align 4
  %485 = or i32 %483, %484
  store i32 %485, i32* %17, align 4
  %486 = load i32, i32* %6, align 4
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %488, label %489

488:                                              ; preds = %448
  br label %559

489:                                              ; preds = %448
  %490 = load i32, i32* %13, align 4
  %491 = load i32, i32* %19, align 4
  %492 = and i32 %490, %491
  store i32 %492, i32* %9, align 4
  %493 = load i32, i32* %16, align 4
  %494 = load i32, i32* %16, align 4
  %495 = load i32, i32* %17, align 4
  %496 = or i32 %494, %495
  %497 = lshr i32 %496, 1
  %498 = load i32, i32* %12, align 4
  %499 = and i32 %497, %498
  %500 = or i32 %493, %499
  store i32 %500, i32* %10, align 4
  %501 = load i32, i32* %19, align 4
  %502 = lshr i32 %501, 1
  %503 = load i32, i32* %11, align 4
  %504 = and i32 %502, %503
  %505 = load i32, i32* %10, align 4
  %506 = or i32 %504, %505
  %507 = load i32, i32* %9, align 4
  %508 = or i32 %506, %507
  store i32 %508, i32* %20, align 4
  %509 = load i32, i32* %6, align 4
  %510 = icmp eq i32 %509, 2
  br i1 %510, label %511, label %512

511:                                              ; preds = %489
  br label %559

512:                                              ; preds = %489
  %513 = load i32, i32* %13, align 4
  %514 = load i32, i32* %21, align 4
  %515 = and i32 %513, %514
  store i32 %515, i32* %9, align 4
  %516 = load i32, i32* %19, align 4
  %517 = load i32, i32* %19, align 4
  %518 = load i32, i32* %20, align 4
  %519 = or i32 %517, %518
  %520 = lshr i32 %519, 1
  %521 = load i32, i32* %12, align 4
  %522 = and i32 %520, %521
  %523 = or i32 %516, %522
  store i32 %523, i32* %10, align 4
  %524 = load i32, i32* %21, align 4
  %525 = lshr i32 %524, 1
  %526 = load i32, i32* %11, align 4
  %527 = and i32 %525, %526
  %528 = load i32, i32* %10, align 4
  %529 = or i32 %527, %528
  %530 = load i32, i32* %9, align 4
  %531 = or i32 %529, %530
  store i32 %531, i32* %22, align 4
  %532 = load i32, i32* %6, align 4
  %533 = icmp eq i32 %532, 3
  br i1 %533, label %534, label %535

534:                                              ; preds = %512
  br label %559

535:                                              ; preds = %512
  %536 = load i32, i32* %13, align 4
  %537 = load i32, i32* %23, align 4
  %538 = and i32 %536, %537
  store i32 %538, i32* %9, align 4
  %539 = load i32, i32* %21, align 4
  %540 = load i32, i32* %21, align 4
  %541 = load i32, i32* %22, align 4
  %542 = or i32 %540, %541
  %543 = lshr i32 %542, 1
  %544 = load i32, i32* %12, align 4
  %545 = and i32 %543, %544
  %546 = or i32 %539, %545
  store i32 %546, i32* %10, align 4
  %547 = load i32, i32* %23, align 4
  %548 = lshr i32 %547, 1
  %549 = load i32, i32* %11, align 4
  %550 = and i32 %548, %549
  %551 = load i32, i32* %10, align 4
  %552 = or i32 %550, %551
  %553 = load i32, i32* %9, align 4
  %554 = or i32 %552, %553
  store i32 %554, i32* %24, align 4
  %555 = load i32, i32* %6, align 4
  %556 = icmp eq i32 %555, 4
  br i1 %556, label %557, label %558

557:                                              ; preds = %535
  br label %559

558:                                              ; preds = %535
  br label %559

559:                                              ; preds = %558, %557, %534, %511, %488
  %560 = load i32, i32* %7, align 4
  %561 = add i32 %560, 1
  store i32 %561, i32* %7, align 4
  %562 = load i32, i32* %15, align 4
  %563 = load i32, i32* %18, align 4
  %564 = and i32 %562, %563
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %735

566:                                              ; preds = %559
  %567 = load i32, i32* %35, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %35, align 4
  %569 = load i32, i32* %15, align 4
  store i32 %569, i32* %9, align 4
  %570 = load i32, i32* %6, align 4
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %572, label %574

572:                                              ; preds = %566
  %573 = load i32, i32* %17, align 4
  store i32 %573, i32* %9, align 4
  br label %574

574:                                              ; preds = %572, %566
  %575 = load i32, i32* %6, align 4
  %576 = icmp eq i32 %575, 2
  br i1 %576, label %577, label %579

577:                                              ; preds = %574
  %578 = load i32, i32* %20, align 4
  store i32 %578, i32* %9, align 4
  br label %579

579:                                              ; preds = %577, %574
  %580 = load i32, i32* %6, align 4
  %581 = icmp eq i32 %580, 3
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  %583 = load i32, i32* %22, align 4
  store i32 %583, i32* %9, align 4
  br label %584

584:                                              ; preds = %582, %579
  %585 = load i32, i32* %6, align 4
  %586 = icmp eq i32 %585, 4
  br i1 %586, label %587, label %589

587:                                              ; preds = %584
  %588 = load i32, i32* %24, align 4
  store i32 %588, i32* %9, align 4
  br label %589

589:                                              ; preds = %587, %584
  %590 = load i32, i32* @AND, align 4
  %591 = icmp eq i32 %590, 1
  br i1 %591, label %592, label %598

592:                                              ; preds = %589
  %593 = load i32, i32* %9, align 4
  %594 = load i32, i32* @endposition, align 4
  %595 = and i32 %593, %594
  %596 = load i32, i32* @endposition, align 4
  %597 = icmp eq i32 %595, %596
  br i1 %597, label %612, label %598

598:                                              ; preds = %592, %589
  %599 = load i32, i32* @AND, align 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %598
  %602 = load i32, i32* %9, align 4
  %603 = load i32, i32* @endposition, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  br label %606

606:                                              ; preds = %601, %598
  %607 = phi i1 [ false, %598 ], [ %605, %601 ]
  %608 = zext i1 %607 to i32
  %609 = load i32, i32* @INVERSE, align 4
  %610 = xor i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %635

612:                                              ; preds = %606, %592
  %613 = load i32, i32* @FILENAMEONLY, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %619

615:                                              ; preds = %612
  %616 = load i32, i32* @num_of_matched, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* @num_of_matched, align 4
  %618 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %770

619:                                              ; preds = %612
  %620 = load i32, i32* %7, align 4
  %621 = load i32, i32* %29, align 4
  %622 = sub i32 %620, %621
  %623 = sub i32 %622, 1
  store i32 %623, i32* %36, align 4
  %624 = load i32, i32* %32, align 4
  %625 = load i32, i32* %33, align 4
  %626 = add nsw i32 49152, %625
  %627 = sub nsw i32 %626, 1
  %628 = icmp sge i32 %624, %627
  br i1 %628, label %634, label %629

629:                                              ; preds = %619
  %630 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %631 = load i32, i32* %32, align 4
  %632 = load i32, i32* %36, align 4
  %633 = load i32, i32* %35, align 4
  call void @output(i8* %630, i32 %631, i32 %632, i32 %633)
  br label %634

634:                                              ; preds = %629, %619
  br label %635

635:                                              ; preds = %634, %606
  %636 = load i32, i32* %7, align 4
  %637 = load i32, i32* %29, align 4
  %638 = sub i32 %636, %637
  store i32 %638, i32* %32, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* %34, align 4
  br label %639

639:                                              ; preds = %648, %635
  %640 = load i32, i32* %34, align 4
  %641 = load i32, i32* %6, align 4
  %642 = icmp ule i32 %640, %641
  br i1 %642, label %643, label %651

643:                                              ; preds = %639
  %644 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %645 = load i32, i32* %34, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %646
  store i32 %644, i32* %647, align 4
  br label %648

648:                                              ; preds = %643
  %649 = load i32, i32* %34, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %34, align 4
  br label %639

651:                                              ; preds = %639
  %652 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %653 = load i32, i32* %652, align 16
  %654 = load i32, i32* @Init1, align 4
  %655 = and i32 %653, %654
  store i32 %655, i32* %9, align 4
  %656 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %657 = load i32, i32* %656, align 16
  %658 = lshr i32 %657, 1
  %659 = load i32, i32* %11, align 4
  %660 = and i32 %658, %659
  %661 = load i32, i32* %9, align 4
  %662 = or i32 %660, %661
  %663 = load i32, i32* %27, align 4
  %664 = and i32 %662, %663
  %665 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  store i32 %664, i32* %665, align 16
  store i32 1, i32* %34, align 4
  br label %666

666:                                              ; preds = %711, %651
  %667 = load i32, i32* %34, align 4
  %668 = load i32, i32* %6, align 4
  %669 = icmp ule i32 %667, %668
  br i1 %669, label %670, label %714

670:                                              ; preds = %666
  %671 = load i32, i32* @Init1, align 4
  %672 = load i32, i32* %34, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %673
  %675 = load i32, i32* %674, align 4
  %676 = and i32 %671, %675
  store i32 %676, i32* %9, align 4
  %677 = load i32, i32* %34, align 4
  %678 = sub nsw i32 %677, 1
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %679
  %681 = load i32, i32* %680, align 4
  %682 = load i32, i32* %34, align 4
  %683 = sub nsw i32 %682, 1
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* %34, align 4
  %688 = sub nsw i32 %687, 1
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = or i32 %686, %691
  %693 = lshr i32 %692, 1
  %694 = load i32, i32* %12, align 4
  %695 = and i32 %693, %694
  %696 = or i32 %681, %695
  store i32 %696, i32* %10, align 4
  %697 = load i32, i32* %34, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = lshr i32 %700, 1
  %702 = load i32, i32* %11, align 4
  %703 = and i32 %701, %702
  %704 = load i32, i32* %9, align 4
  %705 = or i32 %703, %704
  %706 = load i32, i32* %10, align 4
  %707 = or i32 %705, %706
  %708 = load i32, i32* %34, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %709
  store i32 %707, i32* %710, align 4
  br label %711

711:                                              ; preds = %670
  %712 = load i32, i32* %34, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %34, align 4
  br label %666

714:                                              ; preds = %666
  %715 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %716 = load i32, i32* %715, align 16
  store i32 %716, i32* %14, align 4
  %717 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %718 = load i32, i32* %717, align 16
  store i32 %718, i32* %15, align 4
  %719 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 1
  %720 = load i32, i32* %719, align 4
  store i32 %720, i32* %16, align 4
  %721 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 1
  %722 = load i32, i32* %721, align 4
  store i32 %722, i32* %17, align 4
  %723 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 2
  %724 = load i32, i32* %723, align 8
  store i32 %724, i32* %19, align 4
  %725 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 2
  %726 = load i32, i32* %725, align 8
  store i32 %726, i32* %20, align 4
  %727 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 3
  %728 = load i32, i32* %727, align 4
  store i32 %728, i32* %21, align 4
  %729 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 3
  %730 = load i32, i32* %729, align 4
  store i32 %730, i32* %22, align 4
  %731 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 4
  %732 = load i32, i32* %731, align 16
  store i32 %732, i32* %23, align 4
  %733 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 4
  %734 = load i32, i32* %733, align 16
  store i32 %734, i32* %24, align 4
  br label %735

735:                                              ; preds = %714, %559
  br label %157

736:                                              ; preds = %157
  %737 = load i32, i32* %33, align 4
  %738 = icmp slt i32 %737, 49152
  br i1 %738, label %739, label %740

739:                                              ; preds = %736
  store i32 49152, i32* %32, align 4
  br label %768

740:                                              ; preds = %736
  %741 = load i32, i32* %33, align 4
  %742 = add nsw i32 49152, %741
  %743 = load i32, i32* %32, align 4
  %744 = sub nsw i32 %742, %743
  store i32 %744, i32* %31, align 4
  %745 = load i32, i32* %31, align 4
  %746 = icmp sgt i32 %745, 49152
  br i1 %746, label %747, label %748

747:                                              ; preds = %740
  store i32 49152, i32* %31, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %748

748:                                              ; preds = %747, %740
  %749 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %750 = getelementptr inbounds i8, i8* %749, i64 49152
  %751 = load i32, i32* %31, align 4
  %752 = sext i32 %751 to i64
  %753 = sub i64 0, %752
  %754 = getelementptr inbounds i8, i8* %750, i64 %753
  %755 = getelementptr inbounds [98305 x i8], [98305 x i8]* %37, i64 0, i64 0
  %756 = load i32, i32* %32, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds i8, i8* %755, i64 %757
  %759 = load i32, i32* %31, align 4
  %760 = sext i32 %759 to i64
  %761 = call i8* @strncpy(i8* %754, i8* %758, i64 %760) #8
  %762 = load i32, i32* %31, align 4
  %763 = sub nsw i32 49152, %762
  store i32 %763, i32* %32, align 4
  %764 = load i32, i32* %32, align 4
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %766, label %767

766:                                              ; preds = %748
  store i32 1, i32* %32, align 4
  br label %767

767:                                              ; preds = %766, %748
  br label %768

768:                                              ; preds = %767, %739
  br label %89

769:                                              ; preds = %89
  br label %770

770:                                              ; preds = %769, %615, %328, %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitap(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %28 = alloca [147456 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29) #7
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @D_length, align 4
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %58, %5
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @D_length, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %16, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 94
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 36
  br i1 %51, label %52, label %57

52:                                               ; preds = %44, %36
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %16, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 10, i8* %56, align 1
  br label %57

57:                                               ; preds = %52, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %16, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %16, align 4
  br label %32

61:                                               ; preds = %32
  %62 = load i32, i32* @REGEX, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %71, 15
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  call void @re(i32 %74, i32 %75, i32 %76)
  br label %399

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  call void @re1(i32 %78, i32 %79, i32 %80)
  br label %399

81:                                               ; preds = %61
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* @JUMP, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  call void @asearch1(i8* %88, i32 %89, i32 %90)
  br label %399

91:                                               ; preds = %84, %81
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  call void @asearch(i8* %95, i32 %96, i32 %97)
  br label %399

98:                                               ; preds = %91
  %99 = load i32, i32* @I, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 -1, i32* @Init1, align 4
  br label %102

102:                                              ; preds = %101, %98
  store i32 0, i32* %25, align 4
  store i32 49152, i32* %23, align 4
  %103 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 49151
  store i8 10, i8* %103, align 1
  %104 = load i32, i32* @Init1, align 4
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %105, i32* %14, align 4
  store i32 %105, i32* %13, align 4
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @D_endpos, align 4
  store i32 %106, i32* %18, align 4
  %107 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 49151
  store i8 10, i8* %107, align 1
  %108 = load i32, i32* @D_endpos, align 4
  store i32 %108, i32* %20, align 4
  store i32 1, i32* %16, align 4
  br label %109

109:                                              ; preds = %118, %102
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @D_length, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %20, align 4
  %115 = shl i32 %114, 1
  %116 = load i32, i32* %20, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %20, align 4
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %109

121:                                              ; preds = %109
  %122 = load i32, i32* %20, align 4
  %123 = xor i32 %122, -1
  store i32 %123, i32* %20, align 4
  store i32 1, i32* %22, align 4
  br label %124

124:                                              ; preds = %397, %121
  %125 = load i32, i32* %8, align 4
  %126 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %127 = getelementptr inbounds i8, i8* %126, i64 49152
  %128 = call i32 @fill_buf(i32 %125, i8* %127, i32 49152)
  store i32 %128, i32* %26, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %398

130:                                              ; preds = %124
  store i32 49152, i32* %16, align 4
  %131 = load i32, i32* %26, align 4
  %132 = add nsw i32 49152, %131
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %130
  store i32 49151, i32* %16, align 4
  %136 = load i32, i32* @DELIMITER, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %135
  store i32 0, i32* %27, align 4
  br label %139

139:                                              ; preds = %159, %138
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* @D_length, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %27, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = load i32, i32* %27, align 4
  %151 = add nsw i32 49152, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %149, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  br label %162

158:                                              ; preds = %143
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %27, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %27, align 4
  br label %139

162:                                              ; preds = %157, %139
  %163 = load i32, i32* %27, align 4
  %164 = load i32, i32* @D_length, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* %25, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %25, align 4
  br label %169

169:                                              ; preds = %166, %162
  br label %170

170:                                              ; preds = %169, %135
  store i32 0, i32* %22, align 4
  br label %171

171:                                              ; preds = %170, %130
  %172 = load i32, i32* %26, align 4
  %173 = icmp slt i32 %172, 49152
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  %175 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %176 = getelementptr inbounds i8, i8* %175, i64 49152
  %177 = load i32, i32* %26, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* @D_length, align 4
  %182 = sext i32 %181 to i64
  %183 = call i8* @strncpy(i8* %179, i8* %180, i64 %182) #8
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* @D_length, align 4
  %186 = add i32 %184, %185
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %188
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %174, %171
  br label %191

191:                                              ; preds = %369, %190
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %17, align 4
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %195, label %370

195:                                              ; preds = %191
  %196 = load i32, i32* %16, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %16, align 4
  %198 = zext i32 %196 to i64
  %199 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  store i8 %200, i8* %11, align 1
  %201 = load i8, i8* %11, align 1
  %202 = sext i8 %201 to i64
  %203 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %14, align 4
  %207 = and i32 %205, %206
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %14, align 4
  %209 = lshr i32 %208, 1
  %210 = load i32, i32* %15, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* %12, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %18, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %282

218:                                              ; preds = %195
  %219 = load i32, i32* %25, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %25, align 4
  %221 = load i32, i32* @AND, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* @endposition, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* @endposition, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %243, label %229

229:                                              ; preds = %223, %218
  %230 = load i32, i32* @AND, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* @endposition, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br label %237

237:                                              ; preds = %232, %229
  %238 = phi i1 [ false, %229 ], [ %236, %232 ]
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* @INVERSE, align 4
  %241 = xor i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %266

243:                                              ; preds = %237, %223
  %244 = load i32, i32* @FILENAMEONLY, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load i32, i32* @num_of_matched, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* @num_of_matched, align 4
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %399

250:                                              ; preds = %243
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* @D_length, align 4
  %253 = sub i32 %251, %252
  %254 = sub i32 %253, 1
  store i32 %254, i32* %24, align 4
  %255 = load i32, i32* %23, align 4
  %256 = load i32, i32* %26, align 4
  %257 = add nsw i32 49152, %256
  %258 = sub nsw i32 %257, 1
  %259 = icmp sge i32 %255, %258
  br i1 %259, label %265, label %260

260:                                              ; preds = %250
  %261 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %262 = load i32, i32* %23, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* %25, align 4
  call void @output(i8* %261, i32 %262, i32 %263, i32 %264)
  br label %265

265:                                              ; preds = %260, %250
  br label %266

266:                                              ; preds = %265, %237
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* @D_length, align 4
  %269 = sub i32 %267, %268
  store i32 %269, i32* %23, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %270 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %270, i32* %12, align 4
  store i32 %270, i32* %14, align 4
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %14, align 4
  %273 = and i32 %271, %272
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %13, align 4
  %275 = lshr i32 %274, 1
  %276 = load i32, i32* %15, align 4
  %277 = and i32 %275, %276
  %278 = load i32, i32* %12, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* %20, align 4
  %281 = and i32 %279, %280
  store i32 %281, i32* %13, align 4
  br label %282

282:                                              ; preds = %266, %195
  %283 = load i32, i32* %16, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %16, align 4
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %285
  %287 = load i8, i8* %286, align 1
  store i8 %287, i8* %11, align 1
  %288 = load i8, i8* %11, align 1
  %289 = sext i8 %288 to i64
  %290 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %13, align 4
  %294 = and i32 %292, %293
  store i32 %294, i32* %12, align 4
  %295 = load i32, i32* %13, align 4
  %296 = lshr i32 %295, 1
  %297 = load i32, i32* %15, align 4
  %298 = and i32 %296, %297
  %299 = load i32, i32* %12, align 4
  %300 = or i32 %298, %299
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* %18, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %369

305:                                              ; preds = %282
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %25, align 4
  %308 = load i32, i32* @AND, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %316

310:                                              ; preds = %305
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* @endposition, align 4
  %313 = and i32 %311, %312
  %314 = load i32, i32* @endposition, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %330, label %316

316:                                              ; preds = %310, %305
  %317 = load i32, i32* @AND, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @endposition, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br label %324

324:                                              ; preds = %319, %316
  %325 = phi i1 [ false, %316 ], [ %323, %319 ]
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* @INVERSE, align 4
  %328 = xor i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %353

330:                                              ; preds = %324, %310
  %331 = load i32, i32* @FILENAMEONLY, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load i32, i32* @num_of_matched, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* @num_of_matched, align 4
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %399

337:                                              ; preds = %330
  %338 = load i32, i32* %16, align 4
  %339 = load i32, i32* @D_length, align 4
  %340 = sub i32 %338, %339
  %341 = sub i32 %340, 1
  store i32 %341, i32* %24, align 4
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %26, align 4
  %344 = add nsw i32 49152, %343
  %345 = sub nsw i32 %344, 1
  %346 = icmp sge i32 %342, %345
  br i1 %346, label %352, label %347

347:                                              ; preds = %337
  %348 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %349 = load i32, i32* %23, align 4
  %350 = load i32, i32* %24, align 4
  %351 = load i32, i32* %25, align 4
  call void @output(i8* %348, i32 %349, i32 %350, i32 %351)
  br label %352

352:                                              ; preds = %347, %337
  br label %353

353:                                              ; preds = %352, %324
  %354 = load i32, i32* %16, align 4
  %355 = load i32, i32* @D_length, align 4
  %356 = sub i32 %354, %355
  store i32 %356, i32* %23, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %357 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %357, i32* %12, align 4
  store i32 %357, i32* %14, align 4
  store i32 %357, i32* %13, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* %13, align 4
  %360 = and i32 %358, %359
  store i32 %360, i32* %12, align 4
  %361 = load i32, i32* %13, align 4
  %362 = lshr i32 %361, 1
  %363 = load i32, i32* %15, align 4
  %364 = and i32 %362, %363
  %365 = load i32, i32* %12, align 4
  %366 = or i32 %364, %365
  %367 = load i32, i32* %20, align 4
  %368 = and i32 %366, %367
  store i32 %368, i32* %14, align 4
  br label %369

369:                                              ; preds = %353, %282
  br label %191

370:                                              ; preds = %191
  %371 = load i32, i32* %26, align 4
  %372 = add nsw i32 %371, 49152
  %373 = load i32, i32* %23, align 4
  %374 = sub nsw i32 %372, %373
  store i32 %374, i32* %21, align 4
  %375 = load i32, i32* %21, align 4
  %376 = icmp sgt i32 %375, 49152
  br i1 %376, label %377, label %378

377:                                              ; preds = %370
  store i32 49152, i32* %21, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %378

378:                                              ; preds = %377, %370
  %379 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %380 = getelementptr inbounds i8, i8* %379, i64 49152
  %381 = load i32, i32* %21, align 4
  %382 = sext i32 %381 to i64
  %383 = sub i64 0, %382
  %384 = getelementptr inbounds i8, i8* %380, i64 %383
  %385 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %386 = load i32, i32* %23, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %385, i64 %387
  %389 = load i32, i32* %21, align 4
  %390 = sext i32 %389 to i64
  %391 = call i8* @strncpy(i8* %384, i8* %388, i64 %390) #8
  %392 = load i32, i32* %21, align 4
  %393 = sub nsw i32 49152, %392
  store i32 %393, i32* %23, align 4
  %394 = load i32, i32* %23, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %378
  store i32 1, i32* %23, align 4
  br label %397

397:                                              ; preds = %396, %378
  br label %124

398:                                              ; preds = %124
  br label %399

399:                                              ; preds = %398, %333, %246, %94, %87, %77, %73
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fill_buf(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %18, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = call i64 @read(i32 %19, i8* %23, i64 4096)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %9

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i64 @read(i32, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @stat(i8* %5, %struct.stat* %4) #8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call i32* @__errno_location() #10
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -3, i32* %2, align 4
  br label %16

13:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %13, %12
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @compat() #0 {
  %1 = load i32, i32* @BESTMATCH, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = load i32, i32* @COUNT, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @FILENAMEONLY, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @APPROX, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @PAT_FILE, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %9, %6, %3
  store i32 0, i32* @BESTMATCH, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i32, i32* @PAT_FILE, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* @APPROX, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1.7, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @LINENUM, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

34:                                               ; preds = %28
  %35 = load i32, i32* @DELIMITER, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* @JUMP, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* @REGEX, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @JUMP, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @I, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @S, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @DD, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %53, %50
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* @DELIMITER, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* @WHOLELINE, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.9, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @extend_re(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #7
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 4
  %8 = add i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call noalias i8* @malloc(i64 %9) #8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strcat(i8* %12, i8* %13) #8
  %15 = call i8* @strcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.11, i64 0, i64 0)) #8
  ret i8* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mk_followpos_1(%struct.rnode* %0, [0 x %struct.pnode*]* %1) #0 {
  %3 = alloca %struct.rnode*, align 8
  %4 = alloca [0 x %struct.pnode*]*, align 8
  %5 = alloca %struct.pnode*, align 8
  %6 = alloca i32, align 4
  store %struct.rnode* %0, %struct.rnode** %3, align 8
  store [0 x %struct.pnode*]* %1, [0 x %struct.pnode*]** %4, align 8
  %7 = load %struct.rnode*, %struct.rnode** %3, align 8
  %8 = getelementptr inbounds %struct.rnode, %struct.rnode* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 8
  %10 = sext i16 %9 to i32
  switch i32 %10, label %113 [
    i32 0, label %11
    i32 2, label %12
    i32 5, label %45
    i32 4, label %93
    i32 3, label %99
    i32 1, label %112
  ]

11:                                               ; preds = %2
  br label %119

12:                                               ; preds = %2
  %13 = load %struct.rnode*, %struct.rnode** %3, align 8
  %14 = getelementptr inbounds %struct.rnode, %struct.rnode* %13, i32 0, i32 4
  %15 = load %struct.pnode*, %struct.pnode** %14, align 8
  store %struct.pnode* %15, %struct.pnode** %5, align 8
  br label %16

16:                                               ; preds = %19, %12
  %17 = load %struct.pnode*, %struct.pnode** %5, align 8
  %18 = icmp ne %struct.pnode* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.pnode*, %struct.pnode** %5, align 8
  %21 = getelementptr inbounds %struct.pnode, %struct.pnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rnode*, %struct.rnode** %3, align 8
  %24 = getelementptr inbounds %struct.rnode, %struct.rnode* %23, i32 0, i32 3
  %25 = load %struct.pnode*, %struct.pnode** %24, align 8
  %26 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %26, i64 0, i64 %28
  %30 = load %struct.pnode*, %struct.pnode** %29, align 1
  %31 = call %struct.pnode* @pset_union(%struct.pnode* %25, %struct.pnode* %30)
  %32 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %32, i64 0, i64 %34
  store %struct.pnode* %31, %struct.pnode** %35, align 1
  %36 = load %struct.pnode*, %struct.pnode** %5, align 8
  %37 = getelementptr inbounds %struct.pnode, %struct.pnode* %36, i32 0, i32 1
  %38 = load %struct.pnode*, %struct.pnode** %37, align 8
  store %struct.pnode* %38, %struct.pnode** %5, align 8
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.rnode*, %struct.rnode** %3, align 8
  %41 = getelementptr inbounds %struct.rnode, %struct.rnode* %40, i32 0, i32 1
  %42 = bitcast %union.anon* %41 to %struct.rnode**
  %43 = load %struct.rnode*, %struct.rnode** %42, align 8
  %44 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* %43, [0 x %struct.pnode*]* %44)
  br label %119

45:                                               ; preds = %2
  %46 = load %struct.rnode*, %struct.rnode** %3, align 8
  %47 = getelementptr inbounds %struct.rnode, %struct.rnode* %46, i32 0, i32 1
  %48 = bitcast %union.anon* %47 to %struct.anon.2*
  %49 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %48, i32 0, i32 0
  %50 = load %struct.rnode*, %struct.rnode** %49, align 8
  %51 = getelementptr inbounds %struct.rnode, %struct.rnode* %50, i32 0, i32 4
  %52 = load %struct.pnode*, %struct.pnode** %51, align 8
  store %struct.pnode* %52, %struct.pnode** %5, align 8
  br label %53

53:                                               ; preds = %56, %45
  %54 = load %struct.pnode*, %struct.pnode** %5, align 8
  %55 = icmp ne %struct.pnode* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load %struct.pnode*, %struct.pnode** %5, align 8
  %58 = getelementptr inbounds %struct.pnode, %struct.pnode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.rnode*, %struct.rnode** %3, align 8
  %61 = getelementptr inbounds %struct.rnode, %struct.rnode* %60, i32 0, i32 1
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %63 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 1
  %64 = load %struct.rnode*, %struct.rnode** %63, align 8
  %65 = getelementptr inbounds %struct.rnode, %struct.rnode* %64, i32 0, i32 3
  %66 = load %struct.pnode*, %struct.pnode** %65, align 8
  %67 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %67, i64 0, i64 %69
  %71 = load %struct.pnode*, %struct.pnode** %70, align 1
  %72 = call %struct.pnode* @pset_union(%struct.pnode* %66, %struct.pnode* %71)
  %73 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %73, i64 0, i64 %75
  store %struct.pnode* %72, %struct.pnode** %76, align 1
  %77 = load %struct.pnode*, %struct.pnode** %5, align 8
  %78 = getelementptr inbounds %struct.pnode, %struct.pnode* %77, i32 0, i32 1
  %79 = load %struct.pnode*, %struct.pnode** %78, align 8
  store %struct.pnode* %79, %struct.pnode** %5, align 8
  br label %53

80:                                               ; preds = %53
  %81 = load %struct.rnode*, %struct.rnode** %3, align 8
  %82 = getelementptr inbounds %struct.rnode, %struct.rnode* %81, i32 0, i32 1
  %83 = bitcast %union.anon* %82 to %struct.anon.2*
  %84 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %83, i32 0, i32 0
  %85 = load %struct.rnode*, %struct.rnode** %84, align 8
  %86 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* %85, [0 x %struct.pnode*]* %86)
  %87 = load %struct.rnode*, %struct.rnode** %3, align 8
  %88 = getelementptr inbounds %struct.rnode, %struct.rnode* %87, i32 0, i32 1
  %89 = bitcast %union.anon* %88 to %struct.anon.2*
  %90 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %89, i32 0, i32 1
  %91 = load %struct.rnode*, %struct.rnode** %90, align 8
  %92 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* %91, [0 x %struct.pnode*]* %92)
  br label %119

93:                                               ; preds = %2
  %94 = load %struct.rnode*, %struct.rnode** %3, align 8
  %95 = getelementptr inbounds %struct.rnode, %struct.rnode* %94, i32 0, i32 1
  %96 = bitcast %union.anon* %95 to %struct.rnode**
  %97 = load %struct.rnode*, %struct.rnode** %96, align 8
  %98 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* %97, [0 x %struct.pnode*]* %98)
  br label %119

99:                                               ; preds = %2
  %100 = load %struct.rnode*, %struct.rnode** %3, align 8
  %101 = getelementptr inbounds %struct.rnode, %struct.rnode* %100, i32 0, i32 1
  %102 = bitcast %union.anon* %101 to %struct.anon.2*
  %103 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %102, i32 0, i32 0
  %104 = load %struct.rnode*, %struct.rnode** %103, align 8
  %105 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* %104, [0 x %struct.pnode*]* %105)
  %106 = load %struct.rnode*, %struct.rnode** %3, align 8
  %107 = getelementptr inbounds %struct.rnode, %struct.rnode* %106, i32 0, i32 1
  %108 = bitcast %union.anon* %107 to %struct.anon.2*
  %109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %108, i32 0, i32 1
  %110 = load %struct.rnode*, %struct.rnode** %109, align 8
  %111 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %4, align 8
  call void @mk_followpos_1(%struct.rnode* %110, [0 x %struct.pnode*]* %111)
  br label %119

112:                                              ; preds = %2
  br label %119

113:                                              ; preds = %2
  %114 = load %struct.rnode*, %struct.rnode** %3, align 8
  %115 = getelementptr inbounds %struct.rnode, %struct.rnode* %114, i32 0, i32 0
  %116 = load i16, i16* %115, align 8
  %117 = sext i16 %116 to i32
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2.12, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %112, %99, %93, %80, %39, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* %0, i32 %1) #0 {
  %3 = alloca [0 x %struct.pnode*]*, align 8
  %4 = alloca %struct.rnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [0 x %struct.pnode*]*, align 8
  store %struct.rnode* %0, %struct.rnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rnode*, %struct.rnode** %4, align 8
  %9 = icmp eq %struct.rnode* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store [0 x %struct.pnode*]* null, [0 x %struct.pnode*]** %3, align 8
  br label %41

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #8
  %20 = bitcast i8* %19 to [0 x %struct.pnode*]*
  store [0 x %struct.pnode*]* %20, [0 x %struct.pnode*]** %7, align 8
  %21 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  %22 = icmp eq [0 x %struct.pnode*]* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store [0 x %struct.pnode*]* null, [0 x %struct.pnode*]** %3, align 8
  br label %41

24:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %30, i64 0, i64 %32
  store %struct.pnode* null, %struct.pnode** %33, align 1
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load %struct.rnode*, %struct.rnode** %4, align 8
  %39 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  call void @mk_followpos_1(%struct.rnode* %38, [0 x %struct.pnode*]* %39)
  %40 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %7, align 8
  store [0 x %struct.pnode*]* %40, [0 x %struct.pnode*]** %3, align 8
  br label %41

41:                                               ; preds = %37, %23, %13
  %42 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %3, align 8
  ret [0 x %struct.pnode*]* %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init(i8* %0, [32 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i32]*, align 8
  %6 = alloca [0 x %struct.pnode*]*, align 8
  %7 = alloca %struct.rnode*, align 8
  %8 = alloca %struct.pnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store [32 x i32]* %1, [32 x i32]** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @extend_re(i8* %11)
  %13 = call %struct.rnode* @parse(i8* %12)
  store %struct.rnode* %13, %struct.rnode** %7, align 8
  %14 = icmp eq %struct.rnode* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.rnode*, %struct.rnode** %7, align 8
  %18 = load i32, i32* @pos_cnt, align 4
  %19 = call [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* %17, i32 %18)
  store [0 x %struct.pnode*]* %19, [0 x %struct.pnode*]** %6, align 8
  %20 = icmp eq [0 x %struct.pnode*]* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %59

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @pos_cnt, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %28, i64 0, i64 %30
  %32 = load %struct.pnode*, %struct.pnode** %31, align 1
  store %struct.pnode* %32, %struct.pnode** %8, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %49, %27
  %34 = load %struct.pnode*, %struct.pnode** %8, align 8
  %35 = icmp ne %struct.pnode* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.pnode*, %struct.pnode** %8, align 8
  %38 = getelementptr inbounds %struct.pnode, %struct.pnode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load [32 x i32]*, [32 x i32]** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %40, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %43, i64 0, i64 %45
  store i32 %39, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load %struct.pnode*, %struct.pnode** %8, align 8
  %51 = getelementptr inbounds %struct.pnode, %struct.pnode* %50, i32 0, i32 1
  %52 = load %struct.pnode*, %struct.pnode** %51, align 8
  store %struct.pnode* %52, %struct.pnode** %8, align 8
  br label %33

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %23

57:                                               ; preds = %23
  %58 = load i32, i32* @pos_cnt, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %21, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

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
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  call void @initial_value()
  %15 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0)) #8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  call void @usage()
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %20, align 16
  br label %21

21:                                               ; preds = %247, %19
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi i1 [ false, %21 ], [ %32, %25 ]
  br i1 %34, label %35, label %248

35:                                               ; preds = %33
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %218 [
    i32 99, label %43
    i32 115, label %44
    i32 112, label %45
    i32 120, label %46
    i32 76, label %53
    i32 100, label %54
    i32 101, label %106
    i32 102, label %137
    i32 104, label %154
    i32 105, label %155
    i32 107, label %156
    i32 108, label %186
    i32 110, label %187
    i32 118, label %188
    i32 116, label %189
    i32 66, label %190
    i32 119, label %191
    i32 121, label %198
    i32 73, label %199
    i32 83, label %205
    i32 68, label %211
    i32 71, label %217
  ]

43:                                               ; preds = %35
  store i32 1, i32* @COUNT, align 4
  br label %247

44:                                               ; preds = %35
  store i32 1, i32* @SILENT, align 4
  br label %247

45:                                               ; preds = %35
  store i32 0, i32* @I, align 4
  br label %247

46:                                               ; preds = %35
  store i32 1, i32* @WHOLELINE, align 4
  %47 = load i32, i32* @WORDBOUND, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.66, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

52:                                               ; preds = %46
  br label %247

53:                                               ; preds = %35
  br label %247

54:                                               ; preds = %35
  store i32 1, i32* @DELIMITER, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @usage()
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %58
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %5, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71) #7
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* @D_length, align 4
  %74 = icmp sgt i32 %73, 16
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.67, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

78:                                               ; preds = %66
  store i8 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 0), align 16
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 1), i8* %81) #8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %4, align 4
  br label %102

85:                                               ; preds = %58
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = call i64 @strlen(i8* %89) #7
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* @D_length, align 4
  %92 = icmp sgt i32 %91, 16
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.67, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

96:                                               ; preds = %85
  store i8 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 0), align 16
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 1), i8* %100) #8
  br label %102

102:                                              ; preds = %96, %78
  %103 = call i8* @strcat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.68, i64 0, i64 0)) #8
  %104 = load i32, i32* @D_length, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @D_length, align 4
  br label %247

106:                                              ; preds = %35
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4.69, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @usage()
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i32 1
  store i8** %116, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 45
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  store i8 92, i8* %124, align 16
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @strcat(i8* %125, i8* %128) #8
  br label %136

130:                                              ; preds = %114
  %131 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @strcat(i8* %131, i8* %134) #8
  br label %136

136:                                              ; preds = %130, %123
  br label %247

137:                                              ; preds = %35
  store i32 1, i32* @PAT_FILE, align 4
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %5, align 8
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %4, align 4
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, i32, ...) @open(i8* %144, i32 0)
  store i32 %145, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %137
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5.70, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i8* %151)
  call void @exit(i32 2) #9
  unreachable

153:                                              ; preds = %137
  br label %247

154:                                              ; preds = %35
  store i32 1, i32* @NOFILENAME, align 4
  br label %247

155:                                              ; preds = %35
  store i32 1, i32* @NOUPPER, align 4
  br label %247

156:                                              ; preds = %35
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6.71, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @usage()
  br label %164

164:                                              ; preds = %161, %156
  store i32 1, i32* @CONSTANT, align 4
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %5, align 8
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %168 = load i8**, i8*** %5, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @strcat(i8* %167, i8* %170) #8
  %172 = load i32, i32* %4, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %185

174:                                              ; preds = %164
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 45
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

185:                                              ; preds = %174, %164
  br label %247

186:                                              ; preds = %35
  store i32 1, i32* @FILENAMEONLY, align 4
  br label %247

187:                                              ; preds = %35
  store i32 1, i32* @LINENUM, align 4
  br label %247

188:                                              ; preds = %35
  store i32 1, i32* @INVERSE, align 4
  br label %247

189:                                              ; preds = %35
  store i32 1, i32* @OUTTAIL, align 4
  br label %247

190:                                              ; preds = %35
  store i32 1, i32* @BESTMATCH, align 4
  br label %247

191:                                              ; preds = %35
  store i32 1, i32* @WORDBOUND, align 4
  %192 = load i32, i32* @WHOLELINE, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.66, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

197:                                              ; preds = %191
  br label %247

198:                                              ; preds = %35
  store i32 1, i32* @NOPROMPT, align 4
  br label %247

199:                                              ; preds = %35
  %200 = load i8**, i8*** %5, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = call i32 @atoi(i8* %203) #7
  store i32 %204, i32* @I, align 4
  store i32 1, i32* @JUMP, align 4
  br label %247

205:                                              ; preds = %35
  %206 = load i8**, i8*** %5, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  %210 = call i32 @atoi(i8* %209) #7
  store i32 %210, i32* @S, align 4
  store i32 1, i32* @JUMP, align 4
  br label %247

211:                                              ; preds = %35
  %212 = load i8**, i8*** %5, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  %216 = call i32 @atoi(i8* %215) #7
  store i32 %216, i32* @DD, align 4
  store i32 1, i32* @JUMP, align 4
  br label %247

217:                                              ; preds = %35
  store i32 1, i32* @FILEOUT, align 4
  store i32 1, i32* @COUNT, align 4
  br label %247

218:                                              ; preds = %35
  %219 = call i16** @__ctype_b_loc() #10
  %220 = load i16*, i16** %219, align 8
  %221 = load i8, i8* %11, align 1
  %222 = sext i8 %221 to i32
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i16, i16* %220, i64 %223
  %225 = load i16, i16* %224, align 2
  %226 = zext i16 %225 to i32
  %227 = and i32 %226, 2048
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %218
  store i32 1, i32* @APPROX, align 4
  %230 = load i8**, i8*** %5, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 0
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  %234 = call i32 @atoi(i8* %233) #7
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp sgt i32 %235, 8
  br i1 %236, label %237, label %240

237:                                              ; preds = %229
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i32 8)
  call void @exit(i32 2) #9
  unreachable

240:                                              ; preds = %229
  br label %246

241:                                              ; preds = %218
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %243 = load i8, i8* %11, align 1
  %244 = sext i8 %243 to i32
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i32 %244)
  call void @usage()
  br label %246

246:                                              ; preds = %241, %240
  br label %247

247:                                              ; preds = %246, %217, %211, %205, %199, %198, %197, %190, %189, %188, %187, %186, %185, %155, %154, %153, %136, %102, %53, %52, %45, %44, %43
  br label %21

248:                                              ; preds = %33
  %249 = load i32, i32* @FILENAMEONLY, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load i32, i32* @NOFILENAME, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10.72, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %251, %248
  %258 = load i32, i32* @COUNT, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %257
  %261 = load i32, i32* @FILENAMEONLY, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* @NOFILENAME, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263, %260
  store i32 0, i32* @FILENAMEONLY, align 4
  %267 = load i32, i32* @FILEOUT, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  store i32 0, i32* @NOFILENAME, align 4
  br label %270

270:                                              ; preds = %269, %266
  br label %271

271:                                              ; preds = %270, %263, %257
  %272 = load i32, i32* @PAT_FILE, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %292, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %276 = load i8, i8* %275, align 16
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %274
  %280 = load i32, i32* %4, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  call void @usage()
  br label %283

283:                                              ; preds = %282, %279
  %284 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %285 = load i8**, i8*** %5, align 8
  %286 = load i8*, i8** %285, align 8
  %287 = call i8* @strcpy(i8* %284, i8* %286) #8
  %288 = load i32, i32* %4, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %4, align 4
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i32 1
  store i8** %291, i8*** %5, align 8
  br label %292

292:                                              ; preds = %283, %274, %271
  store i32 0, i32* @Numfiles, align 4
  store i32 3, i32* %9, align 4
  %293 = load i32, i32* %4, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store i32 0, i32* %9, align 4
  br label %354

296:                                              ; preds = %292
  %297 = load i32, i32* %4, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 8
  %300 = call noalias i8* @malloc(i64 %299) #8
  %301 = bitcast i8* %300 to i8**
  store i8** %301, i8*** @Textfiles, align 8
  %302 = icmp ne i8** %301, null
  br i1 %302, label %306, label %303

303:                                              ; preds = %296
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %304, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

306:                                              ; preds = %296
  br label %307

307:                                              ; preds = %352, %306
  %308 = load i32, i32* %4, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %4, align 4
  %310 = icmp ne i32 %308, 0
  br i1 %310, label %311, label %353

311:                                              ; preds = %307
  %312 = load i8**, i8*** %5, align 8
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @check_file(i8* %313)
  store i32 %314, i32* %12, align 4
  %315 = icmp eq i32 %314, -3
  br i1 %315, label %316, label %327

316:                                              ; preds = %311
  %317 = load i32, i32* %12, align 4
  %318 = icmp eq i32 %317, -3
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %321 = load i8**, i8*** %5, align 8
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %320, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i8* %322)
  br label %324

324:                                              ; preds = %319, %316
  %325 = load i8**, i8*** %5, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i32 1
  store i8** %326, i8*** %5, align 8
  br label %352

327:                                              ; preds = %311
  %328 = load i8**, i8*** %5, align 8
  %329 = load i8*, i8** %328, align 8
  %330 = call i64 @strlen(i8* %329) #7
  %331 = add i64 %330, 1
  %332 = call noalias i8* @malloc(i64 %331) #8
  %333 = load i8**, i8*** @Textfiles, align 8
  %334 = load i32, i32* @Numfiles, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8*, i8** %333, i64 %335
  store i8* %332, i8** %336, align 8
  %337 = icmp ne i8* %332, null
  br i1 %337, label %341, label %338

338:                                              ; preds = %327
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %340 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

341:                                              ; preds = %327
  %342 = load i8**, i8*** @Textfiles, align 8
  %343 = load i32, i32* @Numfiles, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* @Numfiles, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i8*, i8** %342, i64 %345
  %347 = load i8*, i8** %346, align 8
  %348 = load i8**, i8*** %5, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i32 1
  store i8** %349, i8*** %5, align 8
  %350 = load i8*, i8** %348, align 8
  %351 = call i8* @strcpy(i8* %347, i8* %350) #8
  br label %352

352:                                              ; preds = %341, %324
  br label %307

353:                                              ; preds = %307
  br label %354

354:                                              ; preds = %353, %295
  %355 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %356 = load i32, i32* %7, align 4
  call void @checksg(i8* %355, i32 %356)
  %357 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %358 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %359 = call i8* @strcpy(i8* %357, i8* %358) #8
  %360 = load i32, i32* @SGREP, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %354
  %363 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  call void @preprocess(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 0), i8* %363)
  %364 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 0)) #8
  %365 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %366 = load i32, i32* %7, align 4
  %367 = call i32 @maskgen(i8* %365, i32 %366)
  store i32 %367, i32* %6, align 4
  br label %372

368:                                              ; preds = %354
  %369 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %370 = call i64 @strlen(i8* %369) #7
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %6, align 4
  br label %372

372:                                              ; preds = %368, %362
  %373 = load i32, i32* @PAT_FILE, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  %376 = load i32, i32* %8, align 4
  call void @prepf(i32 %376)
  br label %377

377:                                              ; preds = %375, %372
  %378 = load i32, i32* @Numfiles, align 4
  %379 = icmp sgt i32 %378, 1
  br i1 %379, label %380, label %381

380:                                              ; preds = %377
  store i32 1, i32* @FNAME, align 4
  br label %381

381:                                              ; preds = %380, %377
  %382 = load i32, i32* @NOFILENAME, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  store i32 0, i32* @FNAME, align 4
  br label %385

385:                                              ; preds = %384, %381
  store i32 0, i32* @num_of_matched, align 4
  call void @compat()
  %386 = load i32, i32* %9, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %434

388:                                              ; preds = %385
  %389 = load i32, i32* @FILENAMEONLY, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %393 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %392, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

394:                                              ; preds = %388
  %395 = load i32, i32* @PAT_FILE, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %394
  %398 = load i32, i32* %9, align 4
  call void @mgrep(i32 %398)
  br label %415

399:                                              ; preds = %394
  %400 = load i32, i32* @SGREP, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %399
  %403 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %404 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %405 = call i64 @strlen(i8* %404) #7
  %406 = trunc i64 %405 to i32
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* %7, align 4
  call void @sgrep(i8* %403, i32 %406, i32 %407, i32 %408)
  br label %414

409:                                              ; preds = %399
  %410 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %411 = load i32, i32* %9, align 4
  %412 = load i32, i32* %6, align 4
  %413 = load i32, i32* %7, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i64 0, i64 0), i8* %410, i32 %411, i32 %412, i32 %413)
  br label %414

414:                                              ; preds = %409, %402
  br label %415

415:                                              ; preds = %414, %397
  %416 = load i32, i32* @COUNT, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %433

418:                                              ; preds = %415
  %419 = load i32, i32* @INVERSE, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %418
  %422 = load i32, i32* @PAT_FILE, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %429

424:                                              ; preds = %421
  %425 = load i32, i32* @total_line, align 4
  %426 = load i32, i32* @num_of_matched, align 4
  %427 = sub nsw i32 %425, %426
  %428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %427)
  br label %432

429:                                              ; preds = %421, %418
  %430 = load i32, i32* @num_of_matched, align 4
  %431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %430)
  br label %432

432:                                              ; preds = %429, %424
  br label %433

433:                                              ; preds = %432, %415
  br label %712

434:                                              ; preds = %385
  store i32 0, i32* %10, align 4
  br label %435

435:                                              ; preds = %532, %434
  %436 = load i32, i32* %10, align 4
  %437 = load i32, i32* @Numfiles, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %537

439:                                              ; preds = %435
  %440 = load i8**, i8*** @Textfiles, align 8
  %441 = load i32, i32* %10, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8*, i8** %440, i64 %442
  %444 = load i8*, i8** %443, align 8
  %445 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0), i8* %444) #8
  %446 = load i8**, i8*** @Textfiles, align 8
  %447 = load i32, i32* %10, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8*, i8** %446, i64 %448
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 (i8*, i32, ...) @open(i8* %450, i32 0)
  store i32 %451, i32* %9, align 4
  %452 = icmp sle i32 %451, 0
  br i1 %452, label %453, label %461

453:                                              ; preds = %439
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %455 = load i8**, i8*** @Textfiles, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8*, i8** %455, i64 %457
  %459 = load i8*, i8** %458, align 8
  %460 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %454, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i8* %459)
  br label %531

461:                                              ; preds = %439
  %462 = load i32, i32* @PAT_FILE, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = load i32, i32* %9, align 4
  call void @mgrep(i32 %465)
  br label %482

466:                                              ; preds = %461
  %467 = load i32, i32* @SGREP, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %466
  %470 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %471 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %472 = call i64 @strlen(i8* %471) #7
  %473 = trunc i64 %472 to i32
  %474 = load i32, i32* %9, align 4
  %475 = load i32, i32* %7, align 4
  call void @sgrep(i8* %470, i32 %473, i32 %474, i32 %475)
  br label %481

476:                                              ; preds = %466
  %477 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %478 = load i32, i32* %9, align 4
  %479 = load i32, i32* %6, align 4
  %480 = load i32, i32* %7, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i64 0, i64 0), i8* %477, i32 %478, i32 %479, i32 %480)
  br label %481

481:                                              ; preds = %476, %469
  br label %482

482:                                              ; preds = %481, %464
  %483 = load i32, i32* @num_of_matched, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %482
  store i32 0, i32* @NOMATCH, align 4
  br label %486

486:                                              ; preds = %485, %482
  %487 = load i32, i32* @COUNT, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %523

489:                                              ; preds = %486
  %490 = load i32, i32* @FILEOUT, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %523, label %492

492:                                              ; preds = %489
  %493 = load i32, i32* @INVERSE, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %512

495:                                              ; preds = %492
  %496 = load i32, i32* @PAT_FILE, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %512

498:                                              ; preds = %495
  %499 = load i32, i32* @FNAME, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %498
  %502 = load i32, i32* @total_line, align 4
  %503 = load i32, i32* @num_of_matched, align 4
  %504 = sub nsw i32 %502, %503
  %505 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0), i32 %504)
  br label %511

506:                                              ; preds = %498
  %507 = load i32, i32* @total_line, align 4
  %508 = load i32, i32* @num_of_matched, align 4
  %509 = sub nsw i32 %507, %508
  %510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %509)
  br label %511

511:                                              ; preds = %506, %501
  br label %522

512:                                              ; preds = %495, %492
  %513 = load i32, i32* @FNAME, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %518

515:                                              ; preds = %512
  %516 = load i32, i32* @num_of_matched, align 4
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0), i32 %516)
  br label %521

518:                                              ; preds = %512
  %519 = load i32, i32* @num_of_matched, align 4
  %520 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %519)
  br label %521

521:                                              ; preds = %518, %515
  br label %522

522:                                              ; preds = %521, %511
  br label %523

523:                                              ; preds = %522, %489, %486
  %524 = load i32, i32* @FILEOUT, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %523
  %527 = load i32, i32* @num_of_matched, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %526
  call void @file_out(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %530

530:                                              ; preds = %529, %526, %523
  br label %531

531:                                              ; preds = %530, %453
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %10, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %10, align 4
  %535 = load i32, i32* %9, align 4
  %536 = call i32 @close(i32 %535)
  store i32 0, i32* @num_of_matched, align 4
  br label %435

537:                                              ; preds = %435
  %538 = load i32, i32* @NOMATCH, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %711

540:                                              ; preds = %537
  %541 = load i32, i32* @BESTMATCH, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %711

543:                                              ; preds = %540
  %544 = load i32, i32* @WORDBOUND, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %555, label %546

546:                                              ; preds = %543
  %547 = load i32, i32* @WHOLELINE, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %546
  %550 = load i32, i32* @LINENUM, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %555, label %552

552:                                              ; preds = %549
  %553 = load i32, i32* @INVERSE, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %561

555:                                              ; preds = %552, %549, %546, %543
  store i32 0, i32* @SGREP, align 4
  %556 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  call void @preprocess(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 0), i8* %556)
  %557 = call i8* @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @D_pattern, i64 0, i64 0)) #8
  %558 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %559 = load i32, i32* %7, align 4
  %560 = call i32 @maskgen(i8* %558, i32 %559)
  store i32 %560, i32* %6, align 4
  br label %561

561:                                              ; preds = %555, %552
  store i32 1, i32* @COUNT, align 4
  store i32 1, i32* %7, align 4
  br label %562

562:                                              ; preds = %621, %561
  %563 = load i32, i32* %7, align 4
  %564 = load i32, i32* %6, align 4
  %565 = icmp slt i32 %563, %564
  br i1 %565, label %566, label %572

566:                                              ; preds = %562
  %567 = load i32, i32* %7, align 4
  %568 = icmp sle i32 %567, 8
  br i1 %568, label %569, label %572

569:                                              ; preds = %566
  %570 = load i32, i32* @num_of_matched, align 4
  %571 = icmp eq i32 %570, 0
  br label %572

572:                                              ; preds = %569, %566, %562
  %573 = phi i1 [ false, %566 ], [ false, %562 ], [ %571, %569 ]
  br i1 %573, label %574, label %624

574:                                              ; preds = %572
  store i32 0, i32* %10, align 4
  br label %575

575:                                              ; preds = %616, %574
  %576 = load i32, i32* %10, align 4
  %577 = load i32, i32* @Numfiles, align 4
  %578 = icmp slt i32 %576, %577
  br i1 %578, label %579, label %621

579:                                              ; preds = %575
  %580 = load i8**, i8*** @Textfiles, align 8
  %581 = load i32, i32* %10, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i8*, i8** %580, i64 %582
  %584 = load i8*, i8** %583, align 8
  %585 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0), i8* %584) #8
  %586 = load i8**, i8*** @Textfiles, align 8
  %587 = load i32, i32* %10, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8*, i8** %586, i64 %588
  %590 = load i8*, i8** %589, align 8
  %591 = call i32 (i8*, i32, ...) @open(i8* %590, i32 0)
  store i32 %591, i32* %9, align 4
  %592 = icmp sgt i32 %591, 0
  br i1 %592, label %593, label %615

593:                                              ; preds = %579
  %594 = load i32, i32* @PAT_FILE, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %598

596:                                              ; preds = %593
  %597 = load i32, i32* %9, align 4
  call void @mgrep(i32 %597)
  br label %614

598:                                              ; preds = %593
  %599 = load i32, i32* @SGREP, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %608

601:                                              ; preds = %598
  %602 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %603 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %604 = call i64 @strlen(i8* %603) #7
  %605 = trunc i64 %604 to i32
  %606 = load i32, i32* %9, align 4
  %607 = load i32, i32* %7, align 4
  call void @sgrep(i8* %602, i32 %605, i32 %606, i32 %607)
  br label %613

608:                                              ; preds = %598
  %609 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %610 = load i32, i32* %9, align 4
  %611 = load i32, i32* %6, align 4
  %612 = load i32, i32* %7, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i64 0, i64 0), i8* %609, i32 %610, i32 %611, i32 %612)
  br label %613

613:                                              ; preds = %608, %601
  br label %614

614:                                              ; preds = %613, %596
  br label %615

615:                                              ; preds = %614, %579
  br label %616

616:                                              ; preds = %615
  %617 = load i32, i32* %10, align 4
  %618 = add nsw i32 %617, 1
  store i32 %618, i32* %10, align 4
  %619 = load i32, i32* %9, align 4
  %620 = call i32 @close(i32 %619)
  br label %575

621:                                              ; preds = %575
  %622 = load i32, i32* %7, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %7, align 4
  br label %562

624:                                              ; preds = %572
  %625 = load i32, i32* @num_of_matched, align 4
  %626 = icmp sgt i32 %625, 0
  br i1 %626, label %627, label %710

627:                                              ; preds = %624
  %628 = load i32, i32* %7, align 4
  %629 = add nsw i32 %628, -1
  store i32 %629, i32* %7, align 4
  store i32 0, i32* @COUNT, align 4
  %630 = load i32, i32* @NOPROMPT, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %627
  br label %662

633:                                              ; preds = %627
  %634 = load i32, i32* %7, align 4
  %635 = icmp eq i32 %634, 1
  br i1 %635, label %636, label %639

636:                                              ; preds = %633
  %637 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %638 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %637, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  br label %643

639:                                              ; preds = %633
  %640 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %641 = load i32, i32* %7, align 4
  %642 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %640, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %641)
  br label %643

643:                                              ; preds = %639, %636
  %644 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %645 = call i32 @fflush(%struct._IO_FILE* %644)
  %646 = load i32, i32* @num_of_matched, align 4
  %647 = icmp eq i32 %646, 1
  br i1 %647, label %648, label %651

648:                                              ; preds = %643
  %649 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %650 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %649, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  br label %655

651:                                              ; preds = %643
  %652 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %653 = load i32, i32* @num_of_matched, align 4
  %654 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %652, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %653)
  br label %655

655:                                              ; preds = %651, %648
  %656 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* %11)
  %657 = load i8, i8* %11, align 1
  %658 = sext i8 %657 to i32
  %659 = icmp ne i32 %658, 121
  br i1 %659, label %660, label %661

660:                                              ; preds = %655
  br label %713

661:                                              ; preds = %655
  br label %662

662:                                              ; preds = %661, %632
  store i32 0, i32* %10, align 4
  br label %663

663:                                              ; preds = %704, %662
  %664 = load i32, i32* %10, align 4
  %665 = load i32, i32* @Numfiles, align 4
  %666 = icmp slt i32 %664, %665
  br i1 %666, label %667, label %709

667:                                              ; preds = %663
  %668 = load i8**, i8*** @Textfiles, align 8
  %669 = load i32, i32* %10, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i8*, i8** %668, i64 %670
  %672 = load i8*, i8** %671, align 8
  %673 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0), i8* %672) #8
  %674 = load i8**, i8*** @Textfiles, align 8
  %675 = load i32, i32* %10, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i8*, i8** %674, i64 %676
  %678 = load i8*, i8** %677, align 8
  %679 = call i32 (i8*, i32, ...) @open(i8* %678, i32 0)
  store i32 %679, i32* %9, align 4
  %680 = icmp sgt i32 %679, 0
  br i1 %680, label %681, label %703

681:                                              ; preds = %667
  %682 = load i32, i32* @PAT_FILE, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %686

684:                                              ; preds = %681
  %685 = load i32, i32* %9, align 4
  call void @mgrep(i32 %685)
  br label %702

686:                                              ; preds = %681
  %687 = load i32, i32* @SGREP, align 4
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %696

689:                                              ; preds = %686
  %690 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %691 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %692 = call i64 @strlen(i8* %691) #7
  %693 = trunc i64 %692 to i32
  %694 = load i32, i32* %9, align 4
  %695 = load i32, i32* %7, align 4
  call void @sgrep(i8* %690, i32 %693, i32 %694, i32 %695)
  br label %701

696:                                              ; preds = %686
  %697 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %698 = load i32, i32* %9, align 4
  %699 = load i32, i32* %6, align 4
  %700 = load i32, i32* %7, align 4
  call void @bitap(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @old_D_pat, i64 0, i64 0), i8* %697, i32 %698, i32 %699, i32 %700)
  br label %701

701:                                              ; preds = %696, %689
  br label %702

702:                                              ; preds = %701, %684
  br label %703

703:                                              ; preds = %702, %667
  br label %704

704:                                              ; preds = %703
  %705 = load i32, i32* %10, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %10, align 4
  %707 = load i32, i32* %9, align 4
  %708 = call i32 @close(i32 %707)
  br label %663

709:                                              ; preds = %663
  store i32 0, i32* @NOMATCH, align 4
  br label %710

710:                                              ; preds = %709, %624
  br label %711

711:                                              ; preds = %710, %540, %537
  br label %712

712:                                              ; preds = %711, %433
  br label %713

713:                                              ; preds = %712, %660
  %714 = load i32, i32* @EATFIRST, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %718

716:                                              ; preds = %713
  %717 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* @EATFIRST, align 4
  br label %718

718:                                              ; preds = %716, %713
  %719 = load i32, i32* @num_of_matched, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %722

721:                                              ; preds = %718
  store i32 0, i32* @NOMATCH, align 4
  br label %722

722:                                              ; preds = %721, %718
  %723 = load i32, i32* @NOMATCH, align 4
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %725, label %726

725:                                              ; preds = %722
  call void @exit(i32 1) #9
  unreachable

726:                                              ; preds = %722
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initial_value() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @NOUPPER, align 4
  store i32 0, i32* @NOPROMPT, align 4
  store i32 0, i32* @BESTMATCH, align 4
  store i32 0, i32* @FNAME, align 4
  store i32 0, i32* @REGEX, align 4
  store i32 0, i32* @JUMP, align 4
  store i32 0, i32* @SGREP, align 4
  store i32 0, i32* @WHOLELINE, align 4
  store i32 0, i32* @LINENUM, align 4
  store i32 0, i32* @COUNT, align 4
  store i32 0, i32* @OUTTAIL, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* @AND, align 4
  store i32 0, i32* @INVERSE, align 4
  store i32 0, i32* @EATFIRST, align 4
  store i32 1, i32* @FIRSTOUTPUT, align 4
  store i32 1, i32* @NOMATCH, align 4
  store i32 1, i32* @FIRST_IN_RE, align 4
  store i32 1, i32* @S, align 4
  store i32 1, i32* @DD, align 4
  store i32 1, i32* @I, align 4
  store i32 1, i32* @TAIL, align 4
  store i32 1, i32* @HEAD, align 4
  store i32 2, i32* @D_length, align 4
  store i32 0, i32* @num_of_matched, align 4
  store i32 0, i32* @SIMPLEPATTERN, align 4
  store i32 0, i32* @PSIZE, align 4
  store i32 0, i32* @Num_Pat, align 4
  store i32 0, i32* @SILENT, align 4
  store i32 0, i32* @RE_ERR, align 4
  store i32 0, i32* @DELIMITER, align 4
  store i32 0, i32* @WORDBOUND, align 4
  store i32 1, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i64 0, i64 32), align 16
  store i32 31, i32* %1, align 4
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 1
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %13
  store i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %1, align 4
  br label %2

18:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %26, %18
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %19

29:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.37, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable
}

declare dso_local i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @checksg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #7
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @PAT_FILE, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

20:                                               ; preds = %13, %2
  store i32 1, i32* @SIMPLEPATTERN, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  switch i32 %31, label %56 [
    i32 59, label %32
    i32 44, label %33
    i32 46, label %34
    i32 42, label %35
    i32 45, label %36
    i32 91, label %37
    i32 93, label %38
    i32 40, label %39
    i32 41, label %40
    i32 60, label %41
    i32 62, label %42
    i32 94, label %43
    i32 36, label %48
    i32 124, label %53
    i32 35, label %54
    i32 92, label %55
  ]

32:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

33:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

34:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

35:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

36:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

37:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

38:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

39:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

40:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

41:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

42:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

43:                                               ; preds = %25
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %57

48:                                               ; preds = %25
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %57

53:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

54:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

55:                                               ; preds = %25
  store i32 0, i32* @SIMPLEPATTERN, align 4
  br label %57

56:                                               ; preds = %25
  br label %57

57:                                               ; preds = %56, %55, %54, %53, %52, %47, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load i32, i32* @CONSTANT, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* @SIMPLEPATTERN, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* @SIMPLEPATTERN, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %151

69:                                               ; preds = %65
  %70 = load i32, i32* @NOUPPER, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %151

76:                                               ; preds = %72, %69
  %77 = load i32, i32* @JUMP, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %151

80:                                               ; preds = %76
  %81 = load i32, i32* @I, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %151

84:                                               ; preds = %80
  %85 = load i32, i32* @LINENUM, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %151

88:                                               ; preds = %84
  %89 = load i32, i32* @DELIMITER, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %151

92:                                               ; preds = %88
  %93 = load i32, i32* @INVERSE, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %151

96:                                               ; preds = %92
  %97 = load i32, i32* @WORDBOUND, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %151

103:                                              ; preds = %99, %96
  %104 = load i32, i32* @WHOLELINE, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %151

110:                                              ; preds = %106, %103
  %111 = load i32, i32* @SILENT, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %151

114:                                              ; preds = %110
  store i32 1, i32* @SGREP, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp sge i32 %115, 16
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 1, i32* @DNA, align 4
  br label %118

118:                                              ; preds = %117, %114
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %147, %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load i8*, i8** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  store i8 %128, i8* %5, align 1
  %129 = load i8, i8* %5, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 97
  br i1 %131, label %144, label %132

132:                                              ; preds = %123
  %133 = load i8, i8* %5, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 99
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = load i8, i8* %5, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 116
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i8, i8* %5, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 103
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %136, %132, %123
  br label %146

145:                                              ; preds = %140
  store i32 0, i32* @DNA, align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %119

150:                                              ; preds = %119
  br label %151

151:                                              ; preds = %150, %113, %109, %102, %95, %91, %87, %83, %79, %75, %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @file_out(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4097 x i8], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @FNAME, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strlen(i8* %11) #7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = call i32 @putchar(i32 10)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %21, %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = call i32 @putchar(i32 58)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %15

24:                                               ; preds = %15
  %25 = call i32 @putchar(i32 10)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strlen(i8* %27) #7
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %36, %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = call i32 @putchar(i32 58)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %30

39:                                               ; preds = %30
  %40 = call i32 @putchar(i32 10)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = call i32 @fflush(%struct._IO_FILE* %41)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 (i8*, i32, ...) @open(i8* %44, i32 0)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %52, %43
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds [4097 x i8], [4097 x i8]* %7, i64 0, i64 0
  %49 = call i64 @read(i32 %47, i8* %48, i64 4096)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = getelementptr inbounds [4097 x i8], [4097 x i8]* %7, i64 0, i64 0
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = call i64 @write(i32 1, i8* %53, i64 %55)
  br label %46

57:                                               ; preds = %46
  ret void
}

declare dso_local i32 @close(i32) #3

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

declare dso_local i32 @__isoc99_scanf(i8*, ...) #3

declare dso_local i32 @putchar(i32) #3

declare dso_local i64 @write(i32, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_next(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [32 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 32, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %33, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %31
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %26

36:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %79, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @table, i64 0, i64 %44
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 10
  br label %54

54:                                               ; preds = %51, %42
  %55 = phi i1 [ false, %42 ], [ %53, %51 ]
  br i1 %55, label %56, label %78

56:                                               ; preds = %54
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @table, i64 0, i64 %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %64, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %61, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %60, %73
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %76
  store i32 %74, i32* %77, align 4
  br label %42

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %37

82:                                               ; preds = %37
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp sle i32 %87, 15
  br i1 %88, label %89, label %142

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @exponen(i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = mul nsw i32 2, %92
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %138, %89
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %141

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = ashr i32 %101, 1
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %134, %99
  %109 = load i32, i32* %8, align 4
  %110 = icmp sge i32 %109, 1
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i64 0, i64 32), align 16
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %121, %125
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %116, %111
  %132 = load i32, i32* %9, align 4
  %133 = ashr i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %8, align 4
  br label %108

137:                                              ; preds = %108
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %95

141:                                              ; preds = %95
  br label %264

142:                                              ; preds = %82
  %143 = load i32, i32* %4, align 4
  %144 = icmp sgt i32 %143, 30
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %4, align 4
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %4, align 4
  %158 = sdiv i32 %157, 2
  %159 = call i32 @exponen(i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = mul nsw i32 2, %160
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = sdiv i32 %162, 2
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %260, %156
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %263

169:                                              ; preds = %165
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = lshr i32 %174, 1
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %210, %169
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i64 0, i64 32), align 16
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %185
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %12, align 4
  %198 = sub nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %195, %201
  %203 = load i32*, i32** %5, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  br label %207

207:                                              ; preds = %190, %185
  %208 = load i32, i32* %9, align 4
  %209 = ashr i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %8, align 4
  br label %181

213:                                              ; preds = %181
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %10, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %9, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %10, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %217, i64 %221
  store i32 0, i32* %222, align 4
  store i32 0, i32* %8, align 4
  br label %223

223:                                              ; preds = %256, %213
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %259

227:                                              ; preds = %223
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i64 0, i64 32), align 16
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %227
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %10, align 4
  %236 = sub nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %8, align 4
  %242 = sub nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %239, %245
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %10, align 4
  %250 = sub nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  store i32 %246, i32* %252, align 4
  br label %253

253:                                              ; preds = %232, %227
  %254 = load i32, i32* %9, align 4
  %255 = ashr i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  br label %223

259:                                              ; preds = %223
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  br label %165

263:                                              ; preds = %165
  br label %264

264:                                              ; preds = %263, %141
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @exponen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %12, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %5

15:                                               ; preds = %5
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @re1(i32 %0, i32 %1, i32 %2) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [5 x i32], align 16
  %26 = alloca [5 x i32], align 16
  %27 = alloca [66000 x i32], align 16
  %28 = alloca [66000 x i32], align 16
  %29 = alloca [50177 x i8], align 16
  %30 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 30
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 32, %38
  store i32 %39, i32* %24, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %18, align 4
  store i32 32, i32* %7, align 4
  store i32 0, i32* %23, align 4
  br label %42

42:                                               ; preds = %53, %37
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %47, %51
  store i32 %52, i32* %19, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %23, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %23, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* @FIRST_IN_RE, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 0
  %64 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 0
  call void @compute_next(i32 %62, i32* %63, i32* %64)
  br label %65

65:                                               ; preds = %61, %58
  store i32 0, i32* @FIRST_IN_RE, align 4
  store i32 10, i32* %14, align 4
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  %70 = load i32, i32* @HEAD, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  %74 = load i32, i32* %24, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  store i32 %79, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  br label %80

80:                                               ; preds = %72, %65
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %116, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ule i32 %82, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = sub i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %18, align 4
  %97 = lshr i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %90, %100
  %102 = load i32, i32* %7, align 4
  %103 = sub i32 %102, 1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %19, align 4
  %108 = and i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %101, %111
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %85
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %81

119:                                              ; preds = %81
  %120 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  %121 = or i32 %120, 1
  store i32 %121, i32* @Init1, align 4
  %122 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  store i32 %123, i32* %12, align 4
  store i32 %123, i32* %11, align 4
  store i32 0, i32* %20, align 4
  br label %124

124:                                              ; preds = %139, %119
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ule i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %124
  %129 = load i32, i32* %20, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %20, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %20, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %20, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %20, align 4
  br label %124

142:                                              ; preds = %124
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %438

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %430, %145
  %147 = load i32, i32* %4, align 4
  %148 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %149 = getelementptr inbounds i8, i8* %148, i64 1024
  %150 = call i64 @read(i32 %147, i8* %149, i64 49152)
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %22, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %437

153:                                              ; preds = %146
  store i32 1024, i32* %7, align 4
  %154 = load i32, i32* %22, align 4
  %155 = add nsw i32 %154, 1024
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %22, align 4
  %157 = icmp slt i32 %156, 49152
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load i32, i32* %17, align 4
  %160 = sub i32 %159, 1
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp ne i32 %164, 10
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load i32, i32* %17, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %168
  store i8 10, i8* %169, align 1
  br label %170

170:                                              ; preds = %166, %158, %153
  %171 = load i32, i32* %30, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %7, align 4
  %175 = sub i32 %174, 1
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %176
  store i8 10, i8* %177, align 1
  %178 = load i32, i32* %7, align 4
  %179 = add i32 %178, -1
  store i32 %179, i32* %7, align 4
  store i32 0, i32* %30, align 4
  br label %180

180:                                              ; preds = %173, %170
  br label %181

181:                                              ; preds = %429, %180
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %430

185:                                              ; preds = %181
  %186 = load i32, i32* %7, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %7, align 4
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %228

199:                                              ; preds = %185
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %223

202:                                              ; preds = %199
  %203 = load i32, i32* @Init1, align 4
  %204 = load i32, i32* %12, align 4
  %205 = and i32 %203, %204
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %18, align 4
  %208 = lshr i32 %206, %207
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %19, align 4
  %214 = and i32 %212, %213
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %211, %217
  %219 = load i32, i32* %13, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* %10, align 4
  %222 = or i32 %220, %221
  store i32 %222, i32* %11, align 4
  br label %227

223:                                              ; preds = %199
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @Init1, align 4
  %226 = and i32 %224, %225
  store i32 %226, i32* %11, align 4
  br label %227

227:                                              ; preds = %223, %202
  br label %307

228:                                              ; preds = %185
  %229 = load i32, i32* %23, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %23, align 4
  %231 = load i32, i32* @Init1, align 4
  %232 = load i32, i32* %12, align 4
  %233 = and i32 %231, %232
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %18, align 4
  %236 = lshr i32 %234, %235
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %19, align 4
  %242 = and i32 %240, %241
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %239, %245
  %247 = load i32, i32* %13, align 4
  %248 = and i32 %246, %247
  %249 = load i32, i32* %10, align 4
  %250 = or i32 %248, %249
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* @TAIL, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %269

253:                                              ; preds = %228
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %18, align 4
  %256 = lshr i32 %254, %255
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %19, align 4
  %262 = and i32 %260, %261
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %259, %265
  %267 = load i32, i32* %11, align 4
  %268 = or i32 %266, %267
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %253, %228
  %270 = load i32, i32* %11, align 4
  %271 = and i32 %270, 1
  %272 = load i32, i32* @INVERSE, align 4
  %273 = xor i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %269
  %276 = load i32, i32* @FILENAMEONLY, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %275
  %279 = load i32, i32* @num_of_matched, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* @num_of_matched, align 4
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %1631

282:                                              ; preds = %275
  %283 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %284 = load i32, i32* %7, align 4
  %285 = sub i32 %284, 1
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %23, align 4
  call void @r_output(i8* %283, i32 %285, i32 %286, i32 %287)
  br label %288

288:                                              ; preds = %282, %269
  %289 = load i32, i32* %15, align 4
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %18, align 4
  %292 = lshr i32 %290, %291
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* %19, align 4
  %298 = and i32 %296, %297
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %295, %301
  %303 = load i32, i32* %13, align 4
  %304 = and i32 %302, %303
  %305 = load i32, i32* %15, align 4
  %306 = or i32 %304, %305
  store i32 %306, i32* %11, align 4
  br label %307

307:                                              ; preds = %288, %227
  %308 = load i32, i32* %7, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %7, align 4
  %310 = zext i32 %308 to i64
  %311 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %318, %319
  br i1 %320, label %321, label %350

321:                                              ; preds = %307
  %322 = load i32, i32* %13, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %345

324:                                              ; preds = %321
  %325 = load i32, i32* @Init1, align 4
  %326 = load i32, i32* %11, align 4
  %327 = and i32 %325, %326
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* %11, align 4
  %329 = load i32, i32* %18, align 4
  %330 = lshr i32 %328, %329
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %19, align 4
  %336 = and i32 %334, %335
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = or i32 %333, %339
  %341 = load i32, i32* %13, align 4
  %342 = and i32 %340, %341
  %343 = load i32, i32* %10, align 4
  %344 = or i32 %342, %343
  store i32 %344, i32* %12, align 4
  br label %349

345:                                              ; preds = %321
  %346 = load i32, i32* %11, align 4
  %347 = load i32, i32* @Init1, align 4
  %348 = and i32 %346, %347
  store i32 %348, i32* %12, align 4
  br label %349

349:                                              ; preds = %345, %324
  br label %429

350:                                              ; preds = %307
  %351 = load i32, i32* %23, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %23, align 4
  %353 = load i32, i32* @Init1, align 4
  %354 = load i32, i32* %11, align 4
  %355 = and i32 %353, %354
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* %11, align 4
  %357 = load i32, i32* %18, align 4
  %358 = lshr i32 %356, %357
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %11, align 4
  %363 = load i32, i32* %19, align 4
  %364 = and i32 %362, %363
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %361, %367
  %369 = load i32, i32* %13, align 4
  %370 = and i32 %368, %369
  %371 = load i32, i32* %10, align 4
  %372 = or i32 %370, %371
  store i32 %372, i32* %12, align 4
  %373 = load i32, i32* @TAIL, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %391

375:                                              ; preds = %350
  %376 = load i32, i32* %12, align 4
  %377 = load i32, i32* %18, align 4
  %378 = lshr i32 %376, %377
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* %19, align 4
  %384 = and i32 %382, %383
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %381, %387
  %389 = load i32, i32* %12, align 4
  %390 = or i32 %388, %389
  store i32 %390, i32* %12, align 4
  br label %391

391:                                              ; preds = %375, %350
  %392 = load i32, i32* %12, align 4
  %393 = and i32 %392, 1
  %394 = load i32, i32* @INVERSE, align 4
  %395 = xor i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %391
  %398 = load i32, i32* @FILENAMEONLY, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %397
  %401 = load i32, i32* @num_of_matched, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* @num_of_matched, align 4
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %1631

404:                                              ; preds = %397
  %405 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %406 = load i32, i32* %7, align 4
  %407 = sub i32 %406, 1
  %408 = load i32, i32* %17, align 4
  %409 = load i32, i32* %23, align 4
  call void @r_output(i8* %405, i32 %407, i32 %408, i32 %409)
  br label %410

410:                                              ; preds = %404, %391
  %411 = load i32, i32* %15, align 4
  store i32 %411, i32* %11, align 4
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* %18, align 4
  %414 = lshr i32 %412, %413
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %11, align 4
  %419 = load i32, i32* %19, align 4
  %420 = and i32 %418, %419
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %417, %423
  %425 = load i32, i32* %13, align 4
  %426 = and i32 %424, %425
  %427 = load i32, i32* %15, align 4
  %428 = or i32 %426, %427
  store i32 %428, i32* %12, align 4
  br label %429

429:                                              ; preds = %410, %349
  br label %181

430:                                              ; preds = %181
  %431 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %432 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %433 = load i32, i32* %22, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, i8* %432, i64 %434
  %436 = call i8* @strncpy(i8* %431, i8* %435, i64 1024) #8
  br label %146

437:                                              ; preds = %146
  br label %1631

438:                                              ; preds = %142
  br label %439

439:                                              ; preds = %1623, %438
  %440 = load i32, i32* %4, align 4
  %441 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %442 = getelementptr inbounds i8, i8* %441, i64 1024
  %443 = call i64 @read(i32 %440, i8* %442, i64 49152)
  %444 = trunc i64 %443 to i32
  store i32 %444, i32* %22, align 4
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %1630

446:                                              ; preds = %439
  store i32 1024, i32* %7, align 4
  %447 = load i32, i32* %22, align 4
  %448 = add nsw i32 1024, %447
  store i32 %448, i32* %17, align 4
  %449 = load i32, i32* %22, align 4
  %450 = icmp slt i32 %449, 49152
  br i1 %450, label %451, label %463

451:                                              ; preds = %446
  %452 = load i32, i32* %17, align 4
  %453 = sub i32 %452, 1
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %454
  %456 = load i8, i8* %455, align 1
  %457 = zext i8 %456 to i32
  %458 = icmp ne i32 %457, 10
  br i1 %458, label %459, label %463

459:                                              ; preds = %451
  %460 = load i32, i32* %17, align 4
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %461
  store i8 10, i8* %462, align 1
  br label %463

463:                                              ; preds = %459, %451, %446
  %464 = load i32, i32* %21, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %473

466:                                              ; preds = %463
  %467 = load i32, i32* %7, align 4
  %468 = sub i32 %467, 1
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %469
  store i8 10, i8* %470, align 1
  %471 = load i32, i32* %7, align 4
  %472 = add i32 %471, -1
  store i32 %472, i32* %7, align 4
  store i32 0, i32* %21, align 4
  br label %473

473:                                              ; preds = %466, %463
  br label %474

474:                                              ; preds = %1620, %473
  %475 = load i32, i32* %7, align 4
  %476 = load i32, i32* %17, align 4
  %477 = icmp ult i32 %475, %476
  br i1 %477, label %478, label %1623

478:                                              ; preds = %474
  %479 = load i32, i32* %7, align 4
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %480
  %482 = load i8, i8* %481, align 1
  %483 = zext i8 %482 to i32
  store i32 %483, i32* %8, align 4
  %484 = load i32, i32* %8, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i64 0, i64 %485
  %487 = load i32, i32* %486, align 4
  store i32 %487, i32* %13, align 4
  %488 = load i32, i32* %8, align 4
  %489 = load i32, i32* %14, align 4
  %490 = icmp ne i32 %488, %489
  br i1 %490, label %491, label %854

491:                                              ; preds = %478
  %492 = load i32, i32* %13, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %714

494:                                              ; preds = %491
  %495 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %496 = load i32, i32* %495, align 16
  store i32 %496, i32* %11, align 4
  %497 = load i32, i32* @Init1, align 4
  %498 = load i32, i32* %11, align 4
  %499 = and i32 %497, %498
  store i32 %499, i32* %10, align 4
  %500 = load i32, i32* %11, align 4
  %501 = load i32, i32* %18, align 4
  %502 = lshr i32 %500, %501
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %11, align 4
  %507 = load i32, i32* %19, align 4
  %508 = and i32 %506, %507
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = or i32 %505, %511
  %513 = load i32, i32* %13, align 4
  %514 = and i32 %512, %513
  %515 = load i32, i32* %10, align 4
  %516 = or i32 %514, %515
  %517 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  store i32 %516, i32* %517, align 16
  %518 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1
  %519 = load i32, i32* %518, align 4
  store i32 %519, i32* %12, align 4
  %520 = load i32, i32* @Init1, align 4
  %521 = load i32, i32* %12, align 4
  %522 = and i32 %520, %521
  store i32 %522, i32* %10, align 4
  %523 = load i32, i32* %11, align 4
  %524 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  %525 = load i32, i32* %524, align 16
  %526 = or i32 %523, %525
  store i32 %526, i32* %9, align 4
  %527 = load i32, i32* %12, align 4
  %528 = load i32, i32* %18, align 4
  %529 = lshr i32 %527, %528
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* %12, align 4
  %534 = load i32, i32* %19, align 4
  %535 = and i32 %533, %534
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = or i32 %532, %538
  %540 = load i32, i32* %13, align 4
  %541 = and i32 %539, %540
  %542 = load i32, i32* %11, align 4
  %543 = load i32, i32* %9, align 4
  %544 = load i32, i32* %18, align 4
  %545 = lshr i32 %543, %544
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = or i32 %542, %548
  %550 = load i32, i32* %9, align 4
  %551 = load i32, i32* %19, align 4
  %552 = and i32 %550, %551
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = or i32 %549, %555
  %557 = load i32, i32* %16, align 4
  %558 = and i32 %556, %557
  %559 = or i32 %541, %558
  %560 = load i32, i32* %10, align 4
  %561 = or i32 %559, %560
  %562 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 1
  store i32 %561, i32* %562, align 4
  %563 = load i32, i32* %6, align 4
  %564 = icmp eq i32 %563, 1
  br i1 %564, label %565, label %566

565:                                              ; preds = %494
  br label %1048

566:                                              ; preds = %494
  %567 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 2
  %568 = load i32, i32* %567, align 8
  store i32 %568, i32* %11, align 4
  %569 = load i32, i32* @Init1, align 4
  %570 = load i32, i32* %11, align 4
  %571 = and i32 %569, %570
  store i32 %571, i32* %10, align 4
  %572 = load i32, i32* %12, align 4
  %573 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 1
  %574 = load i32, i32* %573, align 4
  %575 = or i32 %572, %574
  store i32 %575, i32* %9, align 4
  %576 = load i32, i32* %11, align 4
  %577 = load i32, i32* %18, align 4
  %578 = lshr i32 %576, %577
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* %11, align 4
  %583 = load i32, i32* %19, align 4
  %584 = and i32 %582, %583
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %585
  %587 = load i32, i32* %586, align 4
  %588 = or i32 %581, %587
  %589 = load i32, i32* %13, align 4
  %590 = and i32 %588, %589
  %591 = load i32, i32* %12, align 4
  %592 = load i32, i32* %9, align 4
  %593 = load i32, i32* %18, align 4
  %594 = lshr i32 %592, %593
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = or i32 %591, %597
  %599 = load i32, i32* %9, align 4
  %600 = load i32, i32* %19, align 4
  %601 = and i32 %599, %600
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %602
  %604 = load i32, i32* %603, align 4
  %605 = or i32 %598, %604
  %606 = load i32, i32* %16, align 4
  %607 = and i32 %605, %606
  %608 = or i32 %590, %607
  %609 = load i32, i32* %10, align 4
  %610 = or i32 %608, %609
  %611 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 2
  store i32 %610, i32* %611, align 8
  %612 = load i32, i32* %6, align 4
  %613 = icmp eq i32 %612, 2
  br i1 %613, label %614, label %615

614:                                              ; preds = %566
  br label %1048

615:                                              ; preds = %566
  %616 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 3
  %617 = load i32, i32* %616, align 4
  store i32 %617, i32* %12, align 4
  %618 = load i32, i32* @Init1, align 4
  %619 = load i32, i32* %12, align 4
  %620 = and i32 %618, %619
  store i32 %620, i32* %10, align 4
  %621 = load i32, i32* %11, align 4
  %622 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 2
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %621, %623
  store i32 %624, i32* %9, align 4
  %625 = load i32, i32* %12, align 4
  %626 = load i32, i32* %18, align 4
  %627 = lshr i32 %625, %626
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %628
  %630 = load i32, i32* %629, align 4
  %631 = load i32, i32* %12, align 4
  %632 = load i32, i32* %19, align 4
  %633 = and i32 %631, %632
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %634
  %636 = load i32, i32* %635, align 4
  %637 = or i32 %630, %636
  %638 = load i32, i32* %13, align 4
  %639 = and i32 %637, %638
  %640 = load i32, i32* %11, align 4
  %641 = load i32, i32* %9, align 4
  %642 = load i32, i32* %18, align 4
  %643 = lshr i32 %641, %642
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %644
  %646 = load i32, i32* %645, align 4
  %647 = or i32 %640, %646
  %648 = load i32, i32* %9, align 4
  %649 = load i32, i32* %19, align 4
  %650 = and i32 %648, %649
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = or i32 %647, %653
  %655 = load i32, i32* %16, align 4
  %656 = and i32 %654, %655
  %657 = or i32 %639, %656
  %658 = load i32, i32* %10, align 4
  %659 = or i32 %657, %658
  %660 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 3
  store i32 %659, i32* %660, align 4
  %661 = load i32, i32* %6, align 4
  %662 = icmp eq i32 %661, 3
  br i1 %662, label %663, label %664

663:                                              ; preds = %615
  br label %1048

664:                                              ; preds = %615
  %665 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 4
  %666 = load i32, i32* %665, align 16
  store i32 %666, i32* %11, align 4
  %667 = load i32, i32* @Init1, align 4
  %668 = load i32, i32* %11, align 4
  %669 = and i32 %667, %668
  store i32 %669, i32* %10, align 4
  %670 = load i32, i32* %12, align 4
  %671 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 3
  %672 = load i32, i32* %671, align 4
  %673 = or i32 %670, %672
  store i32 %673, i32* %9, align 4
  %674 = load i32, i32* %11, align 4
  %675 = load i32, i32* %18, align 4
  %676 = lshr i32 %674, %675
  %677 = zext i32 %676 to i64
  %678 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %677
  %679 = load i32, i32* %678, align 4
  %680 = load i32, i32* %11, align 4
  %681 = load i32, i32* %19, align 4
  %682 = and i32 %680, %681
  %683 = zext i32 %682 to i64
  %684 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = or i32 %679, %685
  %687 = load i32, i32* %13, align 4
  %688 = and i32 %686, %687
  %689 = load i32, i32* %12, align 4
  %690 = load i32, i32* %9, align 4
  %691 = load i32, i32* %18, align 4
  %692 = lshr i32 %690, %691
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %693
  %695 = load i32, i32* %694, align 4
  %696 = or i32 %689, %695
  %697 = load i32, i32* %9, align 4
  %698 = load i32, i32* %19, align 4
  %699 = and i32 %697, %698
  %700 = zext i32 %699 to i64
  %701 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = or i32 %696, %702
  %704 = load i32, i32* %16, align 4
  %705 = and i32 %703, %704
  %706 = or i32 %688, %705
  %707 = load i32, i32* %10, align 4
  %708 = or i32 %706, %707
  %709 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 4
  store i32 %708, i32* %709, align 16
  %710 = load i32, i32* %6, align 4
  %711 = icmp eq i32 %710, 4
  br i1 %711, label %712, label %713

712:                                              ; preds = %664
  br label %1048

713:                                              ; preds = %664
  br label %853

714:                                              ; preds = %491
  %715 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %716 = load i32, i32* %715, align 16
  store i32 %716, i32* %11, align 4
  %717 = load i32, i32* %11, align 4
  %718 = load i32, i32* @Init1, align 4
  %719 = and i32 %717, %718
  %720 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  store i32 %719, i32* %720, align 16
  %721 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1
  %722 = load i32, i32* %721, align 4
  store i32 %722, i32* %12, align 4
  %723 = load i32, i32* @Init1, align 4
  %724 = load i32, i32* %12, align 4
  %725 = and i32 %723, %724
  store i32 %725, i32* %10, align 4
  %726 = load i32, i32* %11, align 4
  %727 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  %728 = load i32, i32* %727, align 16
  %729 = or i32 %726, %728
  store i32 %729, i32* %9, align 4
  %730 = load i32, i32* %11, align 4
  %731 = load i32, i32* %9, align 4
  %732 = load i32, i32* %18, align 4
  %733 = lshr i32 %731, %732
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %734
  %736 = load i32, i32* %735, align 4
  %737 = or i32 %730, %736
  %738 = load i32, i32* %9, align 4
  %739 = load i32, i32* %19, align 4
  %740 = and i32 %738, %739
  %741 = zext i32 %740 to i64
  %742 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %741
  %743 = load i32, i32* %742, align 4
  %744 = or i32 %737, %743
  %745 = load i32, i32* %16, align 4
  %746 = and i32 %744, %745
  %747 = load i32, i32* %10, align 4
  %748 = or i32 %746, %747
  %749 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 1
  store i32 %748, i32* %749, align 4
  %750 = load i32, i32* %6, align 4
  %751 = icmp eq i32 %750, 1
  br i1 %751, label %752, label %753

752:                                              ; preds = %714
  br label %1048

753:                                              ; preds = %714
  %754 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 2
  %755 = load i32, i32* %754, align 8
  store i32 %755, i32* %11, align 4
  %756 = load i32, i32* @Init1, align 4
  %757 = load i32, i32* %11, align 4
  %758 = and i32 %756, %757
  store i32 %758, i32* %10, align 4
  %759 = load i32, i32* %12, align 4
  %760 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 1
  %761 = load i32, i32* %760, align 4
  %762 = or i32 %759, %761
  store i32 %762, i32* %9, align 4
  %763 = load i32, i32* %12, align 4
  %764 = load i32, i32* %9, align 4
  %765 = load i32, i32* %18, align 4
  %766 = lshr i32 %764, %765
  %767 = zext i32 %766 to i64
  %768 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %767
  %769 = load i32, i32* %768, align 4
  %770 = or i32 %763, %769
  %771 = load i32, i32* %9, align 4
  %772 = load i32, i32* %19, align 4
  %773 = and i32 %771, %772
  %774 = zext i32 %773 to i64
  %775 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %774
  %776 = load i32, i32* %775, align 4
  %777 = or i32 %770, %776
  %778 = load i32, i32* %16, align 4
  %779 = and i32 %777, %778
  %780 = load i32, i32* %10, align 4
  %781 = or i32 %779, %780
  %782 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 2
  store i32 %781, i32* %782, align 8
  %783 = load i32, i32* %6, align 4
  %784 = icmp eq i32 %783, 2
  br i1 %784, label %785, label %786

785:                                              ; preds = %753
  br label %1048

786:                                              ; preds = %753
  %787 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 3
  %788 = load i32, i32* %787, align 4
  store i32 %788, i32* %12, align 4
  %789 = load i32, i32* @Init1, align 4
  %790 = load i32, i32* %12, align 4
  %791 = and i32 %789, %790
  store i32 %791, i32* %10, align 4
  %792 = load i32, i32* %11, align 4
  %793 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 2
  %794 = load i32, i32* %793, align 8
  %795 = or i32 %792, %794
  store i32 %795, i32* %9, align 4
  %796 = load i32, i32* %11, align 4
  %797 = load i32, i32* %9, align 4
  %798 = load i32, i32* %18, align 4
  %799 = lshr i32 %797, %798
  %800 = zext i32 %799 to i64
  %801 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %800
  %802 = load i32, i32* %801, align 4
  %803 = or i32 %796, %802
  %804 = load i32, i32* %9, align 4
  %805 = load i32, i32* %19, align 4
  %806 = and i32 %804, %805
  %807 = zext i32 %806 to i64
  %808 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %807
  %809 = load i32, i32* %808, align 4
  %810 = or i32 %803, %809
  %811 = load i32, i32* %16, align 4
  %812 = and i32 %810, %811
  %813 = load i32, i32* %10, align 4
  %814 = or i32 %812, %813
  %815 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 3
  store i32 %814, i32* %815, align 4
  %816 = load i32, i32* %6, align 4
  %817 = icmp eq i32 %816, 3
  br i1 %817, label %818, label %819

818:                                              ; preds = %786
  br label %1048

819:                                              ; preds = %786
  %820 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 4
  %821 = load i32, i32* %820, align 16
  store i32 %821, i32* %11, align 4
  %822 = load i32, i32* @Init1, align 4
  %823 = load i32, i32* %11, align 4
  %824 = and i32 %822, %823
  store i32 %824, i32* %10, align 4
  %825 = load i32, i32* %12, align 4
  %826 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 3
  %827 = load i32, i32* %826, align 4
  %828 = or i32 %825, %827
  store i32 %828, i32* %9, align 4
  %829 = load i32, i32* %12, align 4
  %830 = load i32, i32* %9, align 4
  %831 = load i32, i32* %18, align 4
  %832 = lshr i32 %830, %831
  %833 = zext i32 %832 to i64
  %834 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %833
  %835 = load i32, i32* %834, align 4
  %836 = or i32 %829, %835
  %837 = load i32, i32* %9, align 4
  %838 = load i32, i32* %19, align 4
  %839 = and i32 %837, %838
  %840 = zext i32 %839 to i64
  %841 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %840
  %842 = load i32, i32* %841, align 4
  %843 = or i32 %836, %842
  %844 = load i32, i32* %16, align 4
  %845 = and i32 %843, %844
  %846 = load i32, i32* %10, align 4
  %847 = or i32 %845, %846
  %848 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 4
  store i32 %847, i32* %848, align 16
  %849 = load i32, i32* %6, align 4
  %850 = icmp eq i32 %849, 4
  br i1 %850, label %851, label %852

851:                                              ; preds = %819
  br label %1048

852:                                              ; preds = %819
  br label %853

853:                                              ; preds = %852, %713
  br label %1047

854:                                              ; preds = %478
  %855 = load i32, i32* %23, align 4
  %856 = add nsw i32 %855, 1
  store i32 %856, i32* %23, align 4
  %857 = load i32, i32* @Init1, align 4
  %858 = load i32, i32* %6, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %859
  %861 = load i32, i32* %860, align 4
  %862 = and i32 %857, %861
  store i32 %862, i32* %10, align 4
  %863 = load i32, i32* %6, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %864
  %866 = load i32, i32* %865, align 4
  %867 = load i32, i32* %18, align 4
  %868 = lshr i32 %866, %867
  %869 = zext i32 %868 to i64
  %870 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %869
  %871 = load i32, i32* %870, align 4
  %872 = load i32, i32* %6, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %873
  %875 = load i32, i32* %874, align 4
  %876 = load i32, i32* %19, align 4
  %877 = and i32 %875, %876
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = or i32 %871, %880
  %882 = load i32, i32* %13, align 4
  %883 = and i32 %881, %882
  %884 = load i32, i32* %10, align 4
  %885 = or i32 %883, %884
  %886 = load i32, i32* %6, align 4
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %887
  store i32 %885, i32* %888, align 4
  %889 = load i32, i32* @TAIL, align 4
  %890 = icmp ne i32 %889, 0
  br i1 %890, label %891, label %919

891:                                              ; preds = %854
  %892 = load i32, i32* %6, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %893
  %895 = load i32, i32* %894, align 4
  %896 = load i32, i32* %18, align 4
  %897 = lshr i32 %895, %896
  %898 = zext i32 %897 to i64
  %899 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = load i32, i32* %6, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %902
  %904 = load i32, i32* %903, align 4
  %905 = load i32, i32* %19, align 4
  %906 = and i32 %904, %905
  %907 = zext i32 %906 to i64
  %908 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %907
  %909 = load i32, i32* %908, align 4
  %910 = or i32 %900, %909
  %911 = load i32, i32* %6, align 4
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %912
  %914 = load i32, i32* %913, align 4
  %915 = or i32 %910, %914
  %916 = load i32, i32* %6, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %917
  store i32 %915, i32* %918, align 4
  br label %919

919:                                              ; preds = %891, %854
  %920 = load i32, i32* %6, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %921
  %923 = load i32, i32* %922, align 4
  %924 = and i32 %923, 1
  %925 = load i32, i32* @INVERSE, align 4
  %926 = xor i32 %924, %925
  %927 = icmp ne i32 %926, 0
  br i1 %927, label %928, label %940

928:                                              ; preds = %919
  %929 = load i32, i32* @FILENAMEONLY, align 4
  %930 = icmp ne i32 %929, 0
  br i1 %930, label %931, label %935

931:                                              ; preds = %928
  %932 = load i32, i32* @num_of_matched, align 4
  %933 = add nsw i32 %932, 1
  store i32 %933, i32* @num_of_matched, align 4
  %934 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %1631

935:                                              ; preds = %928
  %936 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %937 = load i32, i32* %7, align 4
  %938 = load i32, i32* %17, align 4
  %939 = load i32, i32* %23, align 4
  call void @r_output(i8* %936, i32 %937, i32 %938, i32 %939)
  br label %940

940:                                              ; preds = %935, %919
  store i32 0, i32* %20, align 4
  br label %941

941:                                              ; preds = %950, %940
  %942 = load i32, i32* %20, align 4
  %943 = load i32, i32* %6, align 4
  %944 = icmp ule i32 %942, %943
  br i1 %944, label %945, label %953

945:                                              ; preds = %941
  %946 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  %947 = load i32, i32* %20, align 4
  %948 = zext i32 %947 to i64
  %949 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %948
  store i32 %946, i32* %949, align 4
  br label %950

950:                                              ; preds = %945
  %951 = load i32, i32* %20, align 4
  %952 = add i32 %951, 1
  store i32 %952, i32* %20, align 4
  br label %941

953:                                              ; preds = %941
  %954 = load i32, i32* @Init1, align 4
  %955 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %956 = load i32, i32* %955, align 16
  %957 = and i32 %954, %956
  store i32 %957, i32* %10, align 4
  %958 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %959 = load i32, i32* %958, align 16
  %960 = load i32, i32* %18, align 4
  %961 = lshr i32 %959, %960
  %962 = zext i32 %961 to i64
  %963 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %962
  %964 = load i32, i32* %963, align 4
  %965 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %966 = load i32, i32* %965, align 16
  %967 = load i32, i32* %19, align 4
  %968 = and i32 %966, %967
  %969 = zext i32 %968 to i64
  %970 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %969
  %971 = load i32, i32* %970, align 4
  %972 = or i32 %964, %971
  %973 = load i32, i32* %13, align 4
  %974 = and i32 %972, %973
  %975 = load i32, i32* %10, align 4
  %976 = or i32 %974, %975
  %977 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  store i32 %976, i32* %977, align 16
  store i32 1, i32* %20, align 4
  br label %978

978:                                              ; preds = %1043, %953
  %979 = load i32, i32* %20, align 4
  %980 = load i32, i32* %6, align 4
  %981 = icmp ule i32 %979, %980
  br i1 %981, label %982, label %1046

982:                                              ; preds = %978
  %983 = load i32, i32* %20, align 4
  %984 = zext i32 %983 to i64
  %985 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %984
  %986 = load i32, i32* %985, align 4
  store i32 %986, i32* %12, align 4
  %987 = load i32, i32* @Init1, align 4
  %988 = load i32, i32* %12, align 4
  %989 = and i32 %987, %988
  store i32 %989, i32* %10, align 4
  %990 = load i32, i32* %20, align 4
  %991 = sub i32 %990, 1
  %992 = zext i32 %991 to i64
  %993 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %992
  %994 = load i32, i32* %993, align 4
  %995 = load i32, i32* %20, align 4
  %996 = sub i32 %995, 1
  %997 = zext i32 %996 to i64
  %998 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %997
  %999 = load i32, i32* %998, align 4
  %1000 = or i32 %994, %999
  store i32 %1000, i32* %11, align 4
  %1001 = load i32, i32* %12, align 4
  %1002 = load i32, i32* %18, align 4
  %1003 = lshr i32 %1001, %1002
  %1004 = zext i32 %1003 to i64
  %1005 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1004
  %1006 = load i32, i32* %1005, align 4
  %1007 = load i32, i32* %12, align 4
  %1008 = load i32, i32* %19, align 4
  %1009 = and i32 %1007, %1008
  %1010 = zext i32 %1009 to i64
  %1011 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1010
  %1012 = load i32, i32* %1011, align 4
  %1013 = or i32 %1006, %1012
  %1014 = load i32, i32* %13, align 4
  %1015 = and i32 %1013, %1014
  %1016 = load i32, i32* %20, align 4
  %1017 = sub i32 %1016, 1
  %1018 = zext i32 %1017 to i64
  %1019 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1018
  %1020 = load i32, i32* %1019, align 4
  %1021 = load i32, i32* %11, align 4
  %1022 = load i32, i32* %18, align 4
  %1023 = lshr i32 %1021, %1022
  %1024 = zext i32 %1023 to i64
  %1025 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1024
  %1026 = load i32, i32* %1025, align 4
  %1027 = or i32 %1020, %1026
  %1028 = load i32, i32* %11, align 4
  %1029 = load i32, i32* %19, align 4
  %1030 = and i32 %1028, %1029
  %1031 = zext i32 %1030 to i64
  %1032 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1031
  %1033 = load i32, i32* %1032, align 4
  %1034 = or i32 %1027, %1033
  %1035 = load i32, i32* %16, align 4
  %1036 = and i32 %1034, %1035
  %1037 = or i32 %1015, %1036
  %1038 = load i32, i32* %10, align 4
  %1039 = or i32 %1037, %1038
  %1040 = load i32, i32* %20, align 4
  %1041 = zext i32 %1040 to i64
  %1042 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1041
  store i32 %1039, i32* %1042, align 4
  br label %1043

1043:                                             ; preds = %982
  %1044 = load i32, i32* %20, align 4
  %1045 = add i32 %1044, 1
  store i32 %1045, i32* %20, align 4
  br label %978

1046:                                             ; preds = %978
  br label %1047

1047:                                             ; preds = %1046, %853
  br label %1048

1048:                                             ; preds = %1047, %851, %818, %785, %752, %712, %663, %614, %565
  %1049 = load i32, i32* %7, align 4
  %1050 = add i32 %1049, 1
  store i32 %1050, i32* %7, align 4
  %1051 = load i32, i32* %7, align 4
  %1052 = zext i32 %1051 to i64
  %1053 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 %1052
  %1054 = load i8, i8* %1053, align 1
  %1055 = zext i8 %1054 to i32
  store i32 %1055, i32* %8, align 4
  %1056 = load i32, i32* %8, align 4
  %1057 = zext i32 %1056 to i64
  %1058 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i64 0, i64 %1057
  %1059 = load i32, i32* %1058, align 4
  store i32 %1059, i32* %13, align 4
  %1060 = load i32, i32* %8, align 4
  %1061 = load i32, i32* %14, align 4
  %1062 = icmp ne i32 %1060, %1061
  br i1 %1062, label %1063, label %1426

1063:                                             ; preds = %1048
  %1064 = load i32, i32* %13, align 4
  %1065 = icmp ne i32 %1064, 0
  br i1 %1065, label %1066, label %1286

1066:                                             ; preds = %1063
  %1067 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  %1068 = load i32, i32* %1067, align 16
  store i32 %1068, i32* %11, align 4
  %1069 = load i32, i32* @Init1, align 4
  %1070 = load i32, i32* %11, align 4
  %1071 = and i32 %1069, %1070
  store i32 %1071, i32* %10, align 4
  %1072 = load i32, i32* %11, align 4
  %1073 = load i32, i32* %18, align 4
  %1074 = lshr i32 %1072, %1073
  %1075 = zext i32 %1074 to i64
  %1076 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1075
  %1077 = load i32, i32* %1076, align 4
  %1078 = load i32, i32* %11, align 4
  %1079 = load i32, i32* %19, align 4
  %1080 = and i32 %1078, %1079
  %1081 = zext i32 %1080 to i64
  %1082 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1081
  %1083 = load i32, i32* %1082, align 4
  %1084 = or i32 %1077, %1083
  %1085 = load i32, i32* %13, align 4
  %1086 = and i32 %1084, %1085
  %1087 = load i32, i32* %10, align 4
  %1088 = or i32 %1086, %1087
  %1089 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  store i32 %1088, i32* %1089, align 16
  %1090 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 1
  %1091 = load i32, i32* %1090, align 4
  store i32 %1091, i32* %12, align 4
  %1092 = load i32, i32* @Init1, align 4
  %1093 = load i32, i32* %12, align 4
  %1094 = and i32 %1092, %1093
  store i32 %1094, i32* %10, align 4
  %1095 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %1096 = load i32, i32* %1095, align 16
  %1097 = load i32, i32* %11, align 4
  %1098 = or i32 %1096, %1097
  store i32 %1098, i32* %9, align 4
  %1099 = load i32, i32* %12, align 4
  %1100 = load i32, i32* %18, align 4
  %1101 = lshr i32 %1099, %1100
  %1102 = zext i32 %1101 to i64
  %1103 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1102
  %1104 = load i32, i32* %1103, align 4
  %1105 = load i32, i32* %12, align 4
  %1106 = load i32, i32* %19, align 4
  %1107 = and i32 %1105, %1106
  %1108 = zext i32 %1107 to i64
  %1109 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1108
  %1110 = load i32, i32* %1109, align 4
  %1111 = or i32 %1104, %1110
  %1112 = load i32, i32* %13, align 4
  %1113 = and i32 %1111, %1112
  %1114 = load i32, i32* %11, align 4
  %1115 = load i32, i32* %9, align 4
  %1116 = load i32, i32* %18, align 4
  %1117 = lshr i32 %1115, %1116
  %1118 = zext i32 %1117 to i64
  %1119 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1118
  %1120 = load i32, i32* %1119, align 4
  %1121 = or i32 %1114, %1120
  %1122 = load i32, i32* %9, align 4
  %1123 = load i32, i32* %19, align 4
  %1124 = and i32 %1122, %1123
  %1125 = zext i32 %1124 to i64
  %1126 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1125
  %1127 = load i32, i32* %1126, align 4
  %1128 = or i32 %1121, %1127
  %1129 = load i32, i32* %16, align 4
  %1130 = and i32 %1128, %1129
  %1131 = or i32 %1113, %1130
  %1132 = load i32, i32* %10, align 4
  %1133 = or i32 %1131, %1132
  %1134 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1
  store i32 %1133, i32* %1134, align 4
  %1135 = load i32, i32* %6, align 4
  %1136 = icmp eq i32 %1135, 1
  br i1 %1136, label %1137, label %1138

1137:                                             ; preds = %1066
  br label %1620

1138:                                             ; preds = %1066
  %1139 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 2
  %1140 = load i32, i32* %1139, align 8
  store i32 %1140, i32* %11, align 4
  %1141 = load i32, i32* @Init1, align 4
  %1142 = load i32, i32* %11, align 4
  %1143 = and i32 %1141, %1142
  store i32 %1143, i32* %10, align 4
  %1144 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1
  %1145 = load i32, i32* %1144, align 4
  %1146 = load i32, i32* %12, align 4
  %1147 = or i32 %1145, %1146
  store i32 %1147, i32* %9, align 4
  %1148 = load i32, i32* %11, align 4
  %1149 = load i32, i32* %18, align 4
  %1150 = lshr i32 %1148, %1149
  %1151 = zext i32 %1150 to i64
  %1152 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1151
  %1153 = load i32, i32* %1152, align 4
  %1154 = load i32, i32* %11, align 4
  %1155 = load i32, i32* %19, align 4
  %1156 = and i32 %1154, %1155
  %1157 = zext i32 %1156 to i64
  %1158 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1157
  %1159 = load i32, i32* %1158, align 4
  %1160 = or i32 %1153, %1159
  %1161 = load i32, i32* %13, align 4
  %1162 = and i32 %1160, %1161
  %1163 = load i32, i32* %12, align 4
  %1164 = load i32, i32* %9, align 4
  %1165 = load i32, i32* %18, align 4
  %1166 = lshr i32 %1164, %1165
  %1167 = zext i32 %1166 to i64
  %1168 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1167
  %1169 = load i32, i32* %1168, align 4
  %1170 = or i32 %1163, %1169
  %1171 = load i32, i32* %9, align 4
  %1172 = load i32, i32* %19, align 4
  %1173 = and i32 %1171, %1172
  %1174 = zext i32 %1173 to i64
  %1175 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1174
  %1176 = load i32, i32* %1175, align 4
  %1177 = or i32 %1170, %1176
  %1178 = load i32, i32* %16, align 4
  %1179 = and i32 %1177, %1178
  %1180 = or i32 %1162, %1179
  %1181 = load i32, i32* %10, align 4
  %1182 = or i32 %1180, %1181
  %1183 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 2
  store i32 %1182, i32* %1183, align 8
  %1184 = load i32, i32* %6, align 4
  %1185 = icmp eq i32 %1184, 2
  br i1 %1185, label %1186, label %1187

1186:                                             ; preds = %1138
  br label %1620

1187:                                             ; preds = %1138
  %1188 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 3
  %1189 = load i32, i32* %1188, align 4
  store i32 %1189, i32* %12, align 4
  %1190 = load i32, i32* @Init1, align 4
  %1191 = load i32, i32* %12, align 4
  %1192 = and i32 %1190, %1191
  store i32 %1192, i32* %10, align 4
  %1193 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 2
  %1194 = load i32, i32* %1193, align 8
  %1195 = load i32, i32* %11, align 4
  %1196 = or i32 %1194, %1195
  store i32 %1196, i32* %9, align 4
  %1197 = load i32, i32* %12, align 4
  %1198 = load i32, i32* %18, align 4
  %1199 = lshr i32 %1197, %1198
  %1200 = zext i32 %1199 to i64
  %1201 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1200
  %1202 = load i32, i32* %1201, align 4
  %1203 = load i32, i32* %12, align 4
  %1204 = load i32, i32* %19, align 4
  %1205 = and i32 %1203, %1204
  %1206 = zext i32 %1205 to i64
  %1207 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1206
  %1208 = load i32, i32* %1207, align 4
  %1209 = or i32 %1202, %1208
  %1210 = load i32, i32* %13, align 4
  %1211 = and i32 %1209, %1210
  %1212 = load i32, i32* %11, align 4
  %1213 = load i32, i32* %9, align 4
  %1214 = load i32, i32* %18, align 4
  %1215 = lshr i32 %1213, %1214
  %1216 = zext i32 %1215 to i64
  %1217 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1216
  %1218 = load i32, i32* %1217, align 4
  %1219 = or i32 %1212, %1218
  %1220 = load i32, i32* %9, align 4
  %1221 = load i32, i32* %19, align 4
  %1222 = and i32 %1220, %1221
  %1223 = zext i32 %1222 to i64
  %1224 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1223
  %1225 = load i32, i32* %1224, align 4
  %1226 = or i32 %1219, %1225
  %1227 = load i32, i32* %16, align 4
  %1228 = and i32 %1226, %1227
  %1229 = or i32 %1211, %1228
  %1230 = load i32, i32* %10, align 4
  %1231 = or i32 %1229, %1230
  %1232 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 3
  store i32 %1231, i32* %1232, align 4
  %1233 = load i32, i32* %6, align 4
  %1234 = icmp eq i32 %1233, 3
  br i1 %1234, label %1235, label %1236

1235:                                             ; preds = %1187
  br label %1620

1236:                                             ; preds = %1187
  %1237 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 4
  %1238 = load i32, i32* %1237, align 16
  store i32 %1238, i32* %11, align 4
  %1239 = load i32, i32* @Init1, align 4
  %1240 = load i32, i32* %11, align 4
  %1241 = and i32 %1239, %1240
  store i32 %1241, i32* %10, align 4
  %1242 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 3
  %1243 = load i32, i32* %1242, align 4
  %1244 = load i32, i32* %12, align 4
  %1245 = or i32 %1243, %1244
  store i32 %1245, i32* %9, align 4
  %1246 = load i32, i32* %11, align 4
  %1247 = load i32, i32* %18, align 4
  %1248 = lshr i32 %1246, %1247
  %1249 = zext i32 %1248 to i64
  %1250 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1249
  %1251 = load i32, i32* %1250, align 4
  %1252 = load i32, i32* %11, align 4
  %1253 = load i32, i32* %19, align 4
  %1254 = and i32 %1252, %1253
  %1255 = zext i32 %1254 to i64
  %1256 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1255
  %1257 = load i32, i32* %1256, align 4
  %1258 = or i32 %1251, %1257
  %1259 = load i32, i32* %13, align 4
  %1260 = and i32 %1258, %1259
  %1261 = load i32, i32* %12, align 4
  %1262 = load i32, i32* %9, align 4
  %1263 = load i32, i32* %18, align 4
  %1264 = lshr i32 %1262, %1263
  %1265 = zext i32 %1264 to i64
  %1266 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1265
  %1267 = load i32, i32* %1266, align 4
  %1268 = or i32 %1261, %1267
  %1269 = load i32, i32* %9, align 4
  %1270 = load i32, i32* %19, align 4
  %1271 = and i32 %1269, %1270
  %1272 = zext i32 %1271 to i64
  %1273 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1272
  %1274 = load i32, i32* %1273, align 4
  %1275 = or i32 %1268, %1274
  %1276 = load i32, i32* %16, align 4
  %1277 = and i32 %1275, %1276
  %1278 = or i32 %1260, %1277
  %1279 = load i32, i32* %10, align 4
  %1280 = or i32 %1278, %1279
  %1281 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 4
  store i32 %1280, i32* %1281, align 16
  %1282 = load i32, i32* %6, align 4
  %1283 = icmp eq i32 %1282, 4
  br i1 %1283, label %1284, label %1285

1284:                                             ; preds = %1236
  br label %1620

1285:                                             ; preds = %1236
  br label %1425

1286:                                             ; preds = %1063
  %1287 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  %1288 = load i32, i32* %1287, align 16
  store i32 %1288, i32* %11, align 4
  %1289 = load i32, i32* %11, align 4
  %1290 = load i32, i32* @Init1, align 4
  %1291 = and i32 %1289, %1290
  %1292 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  store i32 %1291, i32* %1292, align 16
  %1293 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 1
  %1294 = load i32, i32* %1293, align 4
  store i32 %1294, i32* %12, align 4
  %1295 = load i32, i32* @Init1, align 4
  %1296 = load i32, i32* %12, align 4
  %1297 = and i32 %1295, %1296
  store i32 %1297, i32* %10, align 4
  %1298 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  %1299 = load i32, i32* %1298, align 16
  %1300 = load i32, i32* %11, align 4
  %1301 = or i32 %1299, %1300
  store i32 %1301, i32* %9, align 4
  %1302 = load i32, i32* %11, align 4
  %1303 = load i32, i32* %9, align 4
  %1304 = load i32, i32* %18, align 4
  %1305 = lshr i32 %1303, %1304
  %1306 = zext i32 %1305 to i64
  %1307 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1306
  %1308 = load i32, i32* %1307, align 4
  %1309 = or i32 %1302, %1308
  %1310 = load i32, i32* %9, align 4
  %1311 = load i32, i32* %19, align 4
  %1312 = and i32 %1310, %1311
  %1313 = zext i32 %1312 to i64
  %1314 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1313
  %1315 = load i32, i32* %1314, align 4
  %1316 = or i32 %1309, %1315
  %1317 = load i32, i32* %16, align 4
  %1318 = and i32 %1316, %1317
  %1319 = load i32, i32* %10, align 4
  %1320 = or i32 %1318, %1319
  %1321 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1
  store i32 %1320, i32* %1321, align 4
  %1322 = load i32, i32* %6, align 4
  %1323 = icmp eq i32 %1322, 1
  br i1 %1323, label %1324, label %1325

1324:                                             ; preds = %1286
  br label %1620

1325:                                             ; preds = %1286
  %1326 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 2
  %1327 = load i32, i32* %1326, align 8
  store i32 %1327, i32* %11, align 4
  %1328 = load i32, i32* @Init1, align 4
  %1329 = load i32, i32* %11, align 4
  %1330 = and i32 %1328, %1329
  store i32 %1330, i32* %10, align 4
  %1331 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 1
  %1332 = load i32, i32* %1331, align 4
  %1333 = load i32, i32* %12, align 4
  %1334 = or i32 %1332, %1333
  store i32 %1334, i32* %9, align 4
  %1335 = load i32, i32* %12, align 4
  %1336 = load i32, i32* %9, align 4
  %1337 = load i32, i32* %18, align 4
  %1338 = lshr i32 %1336, %1337
  %1339 = zext i32 %1338 to i64
  %1340 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1339
  %1341 = load i32, i32* %1340, align 4
  %1342 = or i32 %1335, %1341
  %1343 = load i32, i32* %9, align 4
  %1344 = load i32, i32* %19, align 4
  %1345 = and i32 %1343, %1344
  %1346 = zext i32 %1345 to i64
  %1347 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1346
  %1348 = load i32, i32* %1347, align 4
  %1349 = or i32 %1342, %1348
  %1350 = load i32, i32* %16, align 4
  %1351 = and i32 %1349, %1350
  %1352 = load i32, i32* %10, align 4
  %1353 = or i32 %1351, %1352
  %1354 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 2
  store i32 %1353, i32* %1354, align 8
  %1355 = load i32, i32* %6, align 4
  %1356 = icmp eq i32 %1355, 2
  br i1 %1356, label %1357, label %1358

1357:                                             ; preds = %1325
  br label %1620

1358:                                             ; preds = %1325
  %1359 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 3
  %1360 = load i32, i32* %1359, align 4
  store i32 %1360, i32* %12, align 4
  %1361 = load i32, i32* @Init1, align 4
  %1362 = load i32, i32* %12, align 4
  %1363 = and i32 %1361, %1362
  store i32 %1363, i32* %10, align 4
  %1364 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 2
  %1365 = load i32, i32* %1364, align 8
  %1366 = load i32, i32* %11, align 4
  %1367 = or i32 %1365, %1366
  store i32 %1367, i32* %9, align 4
  %1368 = load i32, i32* %11, align 4
  %1369 = load i32, i32* %9, align 4
  %1370 = load i32, i32* %18, align 4
  %1371 = lshr i32 %1369, %1370
  %1372 = zext i32 %1371 to i64
  %1373 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1372
  %1374 = load i32, i32* %1373, align 4
  %1375 = or i32 %1368, %1374
  %1376 = load i32, i32* %9, align 4
  %1377 = load i32, i32* %19, align 4
  %1378 = and i32 %1376, %1377
  %1379 = zext i32 %1378 to i64
  %1380 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1379
  %1381 = load i32, i32* %1380, align 4
  %1382 = or i32 %1375, %1381
  %1383 = load i32, i32* %16, align 4
  %1384 = and i32 %1382, %1383
  %1385 = load i32, i32* %10, align 4
  %1386 = or i32 %1384, %1385
  %1387 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 3
  store i32 %1386, i32* %1387, align 4
  %1388 = load i32, i32* %6, align 4
  %1389 = icmp eq i32 %1388, 3
  br i1 %1389, label %1390, label %1391

1390:                                             ; preds = %1358
  br label %1620

1391:                                             ; preds = %1358
  %1392 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 4
  %1393 = load i32, i32* %1392, align 16
  store i32 %1393, i32* %11, align 4
  %1394 = load i32, i32* @Init1, align 4
  %1395 = load i32, i32* %11, align 4
  %1396 = and i32 %1394, %1395
  store i32 %1396, i32* %10, align 4
  %1397 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 3
  %1398 = load i32, i32* %1397, align 4
  %1399 = load i32, i32* %12, align 4
  %1400 = or i32 %1398, %1399
  store i32 %1400, i32* %9, align 4
  %1401 = load i32, i32* %12, align 4
  %1402 = load i32, i32* %9, align 4
  %1403 = load i32, i32* %18, align 4
  %1404 = lshr i32 %1402, %1403
  %1405 = zext i32 %1404 to i64
  %1406 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1405
  %1407 = load i32, i32* %1406, align 4
  %1408 = or i32 %1401, %1407
  %1409 = load i32, i32* %9, align 4
  %1410 = load i32, i32* %19, align 4
  %1411 = and i32 %1409, %1410
  %1412 = zext i32 %1411 to i64
  %1413 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1412
  %1414 = load i32, i32* %1413, align 4
  %1415 = or i32 %1408, %1414
  %1416 = load i32, i32* %16, align 4
  %1417 = and i32 %1415, %1416
  %1418 = load i32, i32* %10, align 4
  %1419 = or i32 %1417, %1418
  %1420 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 4
  store i32 %1419, i32* %1420, align 16
  %1421 = load i32, i32* %6, align 4
  %1422 = icmp eq i32 %1421, 4
  br i1 %1422, label %1423, label %1424

1423:                                             ; preds = %1391
  br label %1620

1424:                                             ; preds = %1391
  br label %1425

1425:                                             ; preds = %1424, %1285
  br label %1619

1426:                                             ; preds = %1048
  %1427 = load i32, i32* %23, align 4
  %1428 = add nsw i32 %1427, 1
  store i32 %1428, i32* %23, align 4
  %1429 = load i32, i32* @Init1, align 4
  %1430 = load i32, i32* %6, align 4
  %1431 = sext i32 %1430 to i64
  %1432 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1431
  %1433 = load i32, i32* %1432, align 4
  %1434 = and i32 %1429, %1433
  store i32 %1434, i32* %10, align 4
  %1435 = load i32, i32* %6, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1436
  %1438 = load i32, i32* %1437, align 4
  %1439 = load i32, i32* %18, align 4
  %1440 = lshr i32 %1438, %1439
  %1441 = zext i32 %1440 to i64
  %1442 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1441
  %1443 = load i32, i32* %1442, align 4
  %1444 = load i32, i32* %6, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1445
  %1447 = load i32, i32* %1446, align 4
  %1448 = load i32, i32* %19, align 4
  %1449 = and i32 %1447, %1448
  %1450 = zext i32 %1449 to i64
  %1451 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1450
  %1452 = load i32, i32* %1451, align 4
  %1453 = or i32 %1443, %1452
  %1454 = load i32, i32* %13, align 4
  %1455 = and i32 %1453, %1454
  %1456 = load i32, i32* %10, align 4
  %1457 = or i32 %1455, %1456
  %1458 = load i32, i32* %6, align 4
  %1459 = sext i32 %1458 to i64
  %1460 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1459
  store i32 %1457, i32* %1460, align 4
  %1461 = load i32, i32* @TAIL, align 4
  %1462 = icmp ne i32 %1461, 0
  br i1 %1462, label %1463, label %1491

1463:                                             ; preds = %1426
  %1464 = load i32, i32* %6, align 4
  %1465 = sext i32 %1464 to i64
  %1466 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1465
  %1467 = load i32, i32* %1466, align 4
  %1468 = load i32, i32* %18, align 4
  %1469 = lshr i32 %1467, %1468
  %1470 = zext i32 %1469 to i64
  %1471 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1470
  %1472 = load i32, i32* %1471, align 4
  %1473 = load i32, i32* %6, align 4
  %1474 = sext i32 %1473 to i64
  %1475 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1474
  %1476 = load i32, i32* %1475, align 4
  %1477 = load i32, i32* %19, align 4
  %1478 = and i32 %1476, %1477
  %1479 = zext i32 %1478 to i64
  %1480 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1479
  %1481 = load i32, i32* %1480, align 4
  %1482 = or i32 %1472, %1481
  %1483 = load i32, i32* %6, align 4
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1484
  %1486 = load i32, i32* %1485, align 4
  %1487 = or i32 %1482, %1486
  %1488 = load i32, i32* %6, align 4
  %1489 = sext i32 %1488 to i64
  %1490 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1489
  store i32 %1487, i32* %1490, align 4
  br label %1491

1491:                                             ; preds = %1463, %1426
  %1492 = load i32, i32* %6, align 4
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1493
  %1495 = load i32, i32* %1494, align 4
  %1496 = and i32 %1495, 1
  %1497 = load i32, i32* @INVERSE, align 4
  %1498 = xor i32 %1496, %1497
  %1499 = icmp ne i32 %1498, 0
  br i1 %1499, label %1500, label %1512

1500:                                             ; preds = %1491
  %1501 = load i32, i32* @FILENAMEONLY, align 4
  %1502 = icmp ne i32 %1501, 0
  br i1 %1502, label %1503, label %1507

1503:                                             ; preds = %1500
  %1504 = load i32, i32* @num_of_matched, align 4
  %1505 = add nsw i32 %1504, 1
  store i32 %1505, i32* @num_of_matched, align 4
  %1506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %1631

1507:                                             ; preds = %1500
  %1508 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %1509 = load i32, i32* %7, align 4
  %1510 = load i32, i32* %17, align 4
  %1511 = load i32, i32* %23, align 4
  call void @r_output(i8* %1508, i32 %1509, i32 %1510, i32 %1511)
  br label %1512

1512:                                             ; preds = %1507, %1491
  store i32 0, i32* %20, align 4
  br label %1513

1513:                                             ; preds = %1522, %1512
  %1514 = load i32, i32* %20, align 4
  %1515 = load i32, i32* %6, align 4
  %1516 = icmp ule i32 %1514, %1515
  br i1 %1516, label %1517, label %1525

1517:                                             ; preds = %1513
  %1518 = load i32, i32* %15, align 4
  %1519 = load i32, i32* %20, align 4
  %1520 = zext i32 %1519 to i64
  %1521 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1520
  store i32 %1518, i32* %1521, align 4
  br label %1522

1522:                                             ; preds = %1517
  %1523 = load i32, i32* %20, align 4
  %1524 = add i32 %1523, 1
  store i32 %1524, i32* %20, align 4
  br label %1513

1525:                                             ; preds = %1513
  %1526 = load i32, i32* @Init1, align 4
  %1527 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  %1528 = load i32, i32* %1527, align 16
  %1529 = and i32 %1526, %1528
  store i32 %1529, i32* %10, align 4
  %1530 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  %1531 = load i32, i32* %1530, align 16
  %1532 = load i32, i32* %18, align 4
  %1533 = lshr i32 %1531, %1532
  %1534 = zext i32 %1533 to i64
  %1535 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1534
  %1536 = load i32, i32* %1535, align 4
  %1537 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 0
  %1538 = load i32, i32* %1537, align 16
  %1539 = load i32, i32* %19, align 4
  %1540 = and i32 %1538, %1539
  %1541 = zext i32 %1540 to i64
  %1542 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1541
  %1543 = load i32, i32* %1542, align 4
  %1544 = or i32 %1536, %1543
  %1545 = load i32, i32* %13, align 4
  %1546 = and i32 %1544, %1545
  %1547 = load i32, i32* %10, align 4
  %1548 = or i32 %1546, %1547
  %1549 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 0
  store i32 %1548, i32* %1549, align 16
  store i32 1, i32* %20, align 4
  br label %1550

1550:                                             ; preds = %1615, %1525
  %1551 = load i32, i32* %20, align 4
  %1552 = load i32, i32* %6, align 4
  %1553 = icmp ule i32 %1551, %1552
  br i1 %1553, label %1554, label %1618

1554:                                             ; preds = %1550
  %1555 = load i32, i32* %20, align 4
  %1556 = zext i32 %1555 to i64
  %1557 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1556
  %1558 = load i32, i32* %1557, align 4
  store i32 %1558, i32* %12, align 4
  %1559 = load i32, i32* @Init1, align 4
  %1560 = load i32, i32* %12, align 4
  %1561 = and i32 %1559, %1560
  store i32 %1561, i32* %10, align 4
  %1562 = load i32, i32* %20, align 4
  %1563 = sub i32 %1562, 1
  %1564 = zext i32 %1563 to i64
  %1565 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1564
  %1566 = load i32, i32* %1565, align 4
  %1567 = load i32, i32* %20, align 4
  %1568 = sub i32 %1567, 1
  %1569 = zext i32 %1568 to i64
  %1570 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1569
  %1571 = load i32, i32* %1570, align 4
  %1572 = or i32 %1566, %1571
  store i32 %1572, i32* %11, align 4
  %1573 = load i32, i32* %12, align 4
  %1574 = load i32, i32* %18, align 4
  %1575 = lshr i32 %1573, %1574
  %1576 = zext i32 %1575 to i64
  %1577 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1576
  %1578 = load i32, i32* %1577, align 4
  %1579 = load i32, i32* %12, align 4
  %1580 = load i32, i32* %19, align 4
  %1581 = and i32 %1579, %1580
  %1582 = zext i32 %1581 to i64
  %1583 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1582
  %1584 = load i32, i32* %1583, align 4
  %1585 = or i32 %1578, %1584
  %1586 = load i32, i32* %13, align 4
  %1587 = and i32 %1585, %1586
  %1588 = load i32, i32* %20, align 4
  %1589 = sub i32 %1588, 1
  %1590 = zext i32 %1589 to i64
  %1591 = getelementptr inbounds [5 x i32], [5 x i32]* %25, i64 0, i64 %1590
  %1592 = load i32, i32* %1591, align 4
  %1593 = load i32, i32* %11, align 4
  %1594 = load i32, i32* %18, align 4
  %1595 = lshr i32 %1593, %1594
  %1596 = zext i32 %1595 to i64
  %1597 = getelementptr inbounds [66000 x i32], [66000 x i32]* %27, i64 0, i64 %1596
  %1598 = load i32, i32* %1597, align 4
  %1599 = or i32 %1592, %1598
  %1600 = load i32, i32* %11, align 4
  %1601 = load i32, i32* %19, align 4
  %1602 = and i32 %1600, %1601
  %1603 = zext i32 %1602 to i64
  %1604 = getelementptr inbounds [66000 x i32], [66000 x i32]* %28, i64 0, i64 %1603
  %1605 = load i32, i32* %1604, align 4
  %1606 = or i32 %1599, %1605
  %1607 = load i32, i32* %16, align 4
  %1608 = and i32 %1606, %1607
  %1609 = or i32 %1587, %1608
  %1610 = load i32, i32* %10, align 4
  %1611 = or i32 %1609, %1610
  %1612 = load i32, i32* %20, align 4
  %1613 = zext i32 %1612 to i64
  %1614 = getelementptr inbounds [5 x i32], [5 x i32]* %26, i64 0, i64 %1613
  store i32 %1611, i32* %1614, align 4
  br label %1615

1615:                                             ; preds = %1554
  %1616 = load i32, i32* %20, align 4
  %1617 = add i32 %1616, 1
  store i32 %1617, i32* %20, align 4
  br label %1550

1618:                                             ; preds = %1550
  br label %1619

1619:                                             ; preds = %1618, %1425
  br label %1620

1620:                                             ; preds = %1619, %1423, %1390, %1357, %1324, %1284, %1235, %1186, %1137
  %1621 = load i32, i32* %7, align 4
  %1622 = add i32 %1621, 1
  store i32 %1622, i32* %7, align 4
  br label %474

1623:                                             ; preds = %474
  %1624 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %1625 = getelementptr inbounds [50177 x i8], [50177 x i8]* %29, i64 0, i64 0
  %1626 = load i32, i32* %22, align 4
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds i8, i8* %1625, i64 %1627
  %1629 = call i8* @strncpy(i8* %1624, i8* %1628, i64 1024) #8
  br label %439

1630:                                             ; preds = %439
  br label %1631

1631:                                             ; preds = %1630, %1503, %931, %437, %400, %278
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @r_output(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %75

14:                                               ; preds = %4
  %15 = load i32, i32* @num_of_matched, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @num_of_matched, align 4
  %17 = load i32, i32* @COUNT, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %75

20:                                               ; preds = %14
  %21 = load i32, i32* @FNAME, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %41, %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi i1 [ false, %28 ], [ %38, %36 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %9, align 4
  br label %28

44:                                               ; preds = %39
  %45 = load i32, i32* @LINENUM, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 10
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1023, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %66, %59
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 @putchar(i32 %73)
  br label %62

75:                                               ; preds = %62, %19, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @re(i32 %0, i32 %1, i32 %2) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [256 x i32], align 16
  %22 = alloca [5 x i32], align 16
  %23 = alloca [5 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %25, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 32, %30
  store i32 %31, i32* %27, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @exponen(i32 %32)
  %34 = mul nsw i32 2, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @FIRST_IN_RE, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  call void @compute_next(i32 %38, i32* getelementptr inbounds ([66000 x i32], [66000 x i32]* @Next, i64 0, i64 0), i32* getelementptr inbounds ([66000 x i32], [66000 x i32]* @Next1, i64 0, i64 0))
  store i32 0, i32* @FIRST_IN_RE, align 4
  br label %39

39:                                               ; preds = %37, %3
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %41, 256
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @Mask, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %55, i32* %20, align 4
  store i32 10, i32* %14, align 4
  store i32 1024, i32* %26, align 4
  %56 = load i32, i32* %27, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @HEAD, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %27, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [33 x i32], [33 x i32]* @Bit, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %63, %68
  store i32 %69, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %62, %54
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %93, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ule i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %80, %88
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %91
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %75
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %71

96:                                               ; preds = %71
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, 1
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %11, align 4
  store i32 %99, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %112, %96
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ule i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 16
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %100

115:                                              ; preds = %100
  store i32 1, i32* %29, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %337

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %323, %118
  %120 = load i32, i32* %4, align 4
  %121 = call i64 @read(i32 %120, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 1024), i64 49152)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %24, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %336

124:                                              ; preds = %119
  store i32 1024, i32* %7, align 4
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 1024, %125
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %24, align 4
  %128 = icmp slt i32 %127, 49152
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load i32, i32* %17, align 4
  %131 = sub i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %135, 10
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32, i32* %17, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %139
  store i8 10, i8* %140, align 1
  br label %141

141:                                              ; preds = %137, %129, %124
  %142 = load i32, i32* %29, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = sub i32 %145, 1
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %147
  store i8 10, i8* %148, align 1
  %149 = load i32, i32* %7, align 4
  %150 = add i32 %149, -1
  store i32 %150, i32* %7, align 4
  store i32 0, i32* %29, align 4
  br label %151

151:                                              ; preds = %144, %141
  br label %152

152:                                              ; preds = %314, %151
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %315

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %7, align 4
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %156
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %11, align 4
  %173 = and i32 %171, %172
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %11, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %12, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %10, align 4
  br label %235

182:                                              ; preds = %156
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %183, %184
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %11, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %12, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* %9, align 4
  %193 = or i32 %191, %192
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %25, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %25, align 4
  %196 = load i32, i32* @TAIL, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %182
  %199 = load i32, i32* %10, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %202, %203
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %198, %182
  %206 = load i32, i32* %10, align 4
  %207 = and i32 %206, 1
  %208 = load i32, i32* @INVERSE, align 4
  %209 = xor i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %205
  %212 = load i32, i32* @FILENAMEONLY, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i32, i32* @num_of_matched, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* @num_of_matched, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %984

218:                                              ; preds = %211
  %219 = load i32, i32* %7, align 4
  %220 = sub i32 %219, 1
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %25, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 0), i32 %220, i32 %221, i32 %222)
  br label %223

223:                                              ; preds = %218, %205
  %224 = load i32, i32* %7, align 4
  %225 = sub i32 %224, 1
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %15, align 4
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %12, align 4
  %232 = and i32 %230, %231
  %233 = load i32, i32* %15, align 4
  %234 = or i32 %232, %233
  store i32 %234, i32* %10, align 4
  br label %235

235:                                              ; preds = %223, %170
  %236 = load i32, i32* %7, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %7, align 4
  %238 = zext i32 %236 to i64
  %239 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %8, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %235
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %10, align 4
  %252 = and i32 %250, %251
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %10, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %12, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* %9, align 4
  %260 = or i32 %258, %259
  store i32 %260, i32* %11, align 4
  br label %314

261:                                              ; preds = %235
  %262 = load i32, i32* %25, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %25, align 4
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %10, align 4
  %266 = and i32 %264, %265
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %10, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %12, align 4
  %272 = and i32 %270, %271
  %273 = load i32, i32* %9, align 4
  %274 = or i32 %272, %273
  store i32 %274, i32* %11, align 4
  %275 = load i32, i32* @TAIL, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %261
  %278 = load i32, i32* %11, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %281, %282
  store i32 %283, i32* %11, align 4
  br label %284

284:                                              ; preds = %277, %261
  %285 = load i32, i32* %11, align 4
  %286 = and i32 %285, 1
  %287 = load i32, i32* @INVERSE, align 4
  %288 = xor i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %284
  %291 = load i32, i32* @FILENAMEONLY, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load i32, i32* @num_of_matched, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* @num_of_matched, align 4
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %984

297:                                              ; preds = %290
  %298 = load i32, i32* %7, align 4
  %299 = sub i32 %298, 1
  %300 = load i32, i32* %17, align 4
  %301 = load i32, i32* %25, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 0), i32 %299, i32 %300, i32 %301)
  br label %302

302:                                              ; preds = %297, %284
  %303 = load i32, i32* %7, align 4
  %304 = sub i32 %303, 1
  store i32 %304, i32* %26, align 4
  %305 = load i32, i32* %15, align 4
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %10, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %12, align 4
  %311 = and i32 %309, %310
  %312 = load i32, i32* %15, align 4
  %313 = or i32 %311, %312
  store i32 %313, i32* %11, align 4
  br label %314

314:                                              ; preds = %302, %249
  br label %152

315:                                              ; preds = %152
  %316 = load i32, i32* %24, align 4
  %317 = add nsw i32 1024, %316
  %318 = load i32, i32* %26, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* %28, align 4
  %320 = load i32, i32* %28, align 4
  %321 = icmp sgt i32 %320, 1024
  br i1 %321, label %322, label %323

322:                                              ; preds = %315
  store i32 1024, i32* %28, align 4
  br label %323

323:                                              ; preds = %322, %315
  %324 = load i32, i32* %28, align 4
  %325 = sext i32 %324 to i64
  %326 = sub i64 0, %325
  %327 = getelementptr inbounds i8, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 1024), i64 %326
  %328 = load i32, i32* %26, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 0), i64 %329
  %331 = load i32, i32* %28, align 4
  %332 = sext i32 %331 to i64
  %333 = call i8* @strncpy(i8* %327, i8* %330, i64 %332) #8
  %334 = load i32, i32* %28, align 4
  %335 = sub nsw i32 1024, %334
  store i32 %335, i32* %26, align 4
  br label %119

336:                                              ; preds = %119
  br label %984

337:                                              ; preds = %115
  br label %338

338:                                              ; preds = %978, %337
  %339 = load i32, i32* %4, align 4
  %340 = call i64 @read(i32 %339, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 1024), i64 49152)
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %24, align 4
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %983

343:                                              ; preds = %338
  store i32 1024, i32* %7, align 4
  %344 = load i32, i32* %24, align 4
  %345 = add nsw i32 1024, %344
  store i32 %345, i32* %17, align 4
  %346 = load i32, i32* %24, align 4
  %347 = icmp slt i32 %346, 49152
  br i1 %347, label %348, label %360

348:                                              ; preds = %343
  %349 = load i32, i32* %17, align 4
  %350 = sub i32 %349, 1
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp ne i32 %354, 10
  br i1 %355, label %356, label %360

356:                                              ; preds = %348
  %357 = load i32, i32* %17, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %358
  store i8 10, i8* %359, align 1
  br label %360

360:                                              ; preds = %356, %348, %343
  %361 = load i32, i32* %29, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %360
  %364 = load i32, i32* %7, align 4
  %365 = sub i32 %364, 1
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %366
  store i8 10, i8* %367, align 1
  %368 = load i32, i32* %7, align 4
  %369 = add i32 %368, -1
  store i32 %369, i32* %7, align 4
  store i32 0, i32* %29, align 4
  br label %370

370:                                              ; preds = %363, %360
  br label %371

371:                                              ; preds = %975, %370
  %372 = load i32, i32* %7, align 4
  %373 = load i32, i32* %17, align 4
  %374 = icmp ult i32 %372, %373
  br i1 %374, label %375, label %978

375:                                              ; preds = %371
  %376 = load i32, i32* %7, align 4
  %377 = add i32 %376, 1
  store i32 %377, i32* %7, align 4
  %378 = zext i32 %376 to i64
  %379 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  store i32 %381, i32* %8, align 4
  %382 = load i32, i32* %8, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %12, align 4
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* %14, align 4
  %388 = icmp ne i32 %386, %387
  br i1 %388, label %389, label %524

389:                                              ; preds = %375
  %390 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  %391 = load i32, i32* %390, align 16
  store i32 %391, i32* %18, align 4
  %392 = load i32, i32* %16, align 4
  %393 = load i32, i32* %18, align 4
  %394 = and i32 %392, %393
  store i32 %394, i32* %9, align 4
  %395 = load i32, i32* %18, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* %12, align 4
  %400 = and i32 %398, %399
  %401 = load i32, i32* %9, align 4
  %402 = or i32 %400, %401
  %403 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  store i32 %402, i32* %403, align 16
  %404 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 1
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %19, align 4
  %406 = load i32, i32* %16, align 4
  %407 = load i32, i32* %19, align 4
  %408 = and i32 %406, %407
  store i32 %408, i32* %9, align 4
  %409 = load i32, i32* %18, align 4
  %410 = load i32, i32* %18, align 4
  %411 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %412 = load i32, i32* %411, align 16
  %413 = or i32 %410, %412
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = or i32 %409, %416
  %418 = load i32, i32* %20, align 4
  %419 = and i32 %417, %418
  store i32 %419, i32* %10, align 4
  %420 = load i32, i32* %19, align 4
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %12, align 4
  %425 = and i32 %423, %424
  %426 = load i32, i32* %10, align 4
  %427 = or i32 %425, %426
  %428 = load i32, i32* %9, align 4
  %429 = or i32 %427, %428
  %430 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 1
  store i32 %429, i32* %430, align 4
  %431 = load i32, i32* %6, align 4
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %434

433:                                              ; preds = %389
  br label %674

434:                                              ; preds = %389
  %435 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 2
  %436 = load i32, i32* %435, align 8
  store i32 %436, i32* %18, align 4
  %437 = load i32, i32* %16, align 4
  %438 = load i32, i32* %18, align 4
  %439 = and i32 %437, %438
  store i32 %439, i32* %9, align 4
  %440 = load i32, i32* %19, align 4
  %441 = load i32, i32* %19, align 4
  %442 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 1
  %443 = load i32, i32* %442, align 4
  %444 = or i32 %441, %443
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = or i32 %440, %447
  %449 = load i32, i32* %20, align 4
  %450 = and i32 %448, %449
  store i32 %450, i32* %10, align 4
  %451 = load i32, i32* %18, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* %12, align 4
  %456 = and i32 %454, %455
  %457 = load i32, i32* %10, align 4
  %458 = or i32 %456, %457
  %459 = load i32, i32* %9, align 4
  %460 = or i32 %458, %459
  %461 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 2
  store i32 %460, i32* %461, align 8
  %462 = load i32, i32* %6, align 4
  %463 = icmp eq i32 %462, 2
  br i1 %463, label %464, label %465

464:                                              ; preds = %434
  br label %674

465:                                              ; preds = %434
  %466 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 3
  %467 = load i32, i32* %466, align 4
  store i32 %467, i32* %19, align 4
  %468 = load i32, i32* %16, align 4
  %469 = load i32, i32* %19, align 4
  %470 = and i32 %468, %469
  store i32 %470, i32* %9, align 4
  %471 = load i32, i32* %18, align 4
  %472 = load i32, i32* %18, align 4
  %473 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 2
  %474 = load i32, i32* %473, align 8
  %475 = or i32 %472, %474
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = or i32 %471, %478
  %480 = load i32, i32* %20, align 4
  %481 = and i32 %479, %480
  store i32 %481, i32* %10, align 4
  %482 = load i32, i32* %19, align 4
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %12, align 4
  %487 = and i32 %485, %486
  %488 = load i32, i32* %10, align 4
  %489 = or i32 %487, %488
  %490 = load i32, i32* %9, align 4
  %491 = or i32 %489, %490
  %492 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 3
  store i32 %491, i32* %492, align 4
  %493 = load i32, i32* %6, align 4
  %494 = icmp eq i32 %493, 3
  br i1 %494, label %495, label %496

495:                                              ; preds = %465
  br label %674

496:                                              ; preds = %465
  %497 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 4
  %498 = load i32, i32* %497, align 16
  store i32 %498, i32* %18, align 4
  %499 = load i32, i32* %16, align 4
  %500 = load i32, i32* %18, align 4
  %501 = and i32 %499, %500
  store i32 %501, i32* %9, align 4
  %502 = load i32, i32* %19, align 4
  %503 = load i32, i32* %19, align 4
  %504 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 3
  %505 = load i32, i32* %504, align 4
  %506 = or i32 %503, %505
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = or i32 %502, %509
  %511 = load i32, i32* %20, align 4
  %512 = and i32 %510, %511
  store i32 %512, i32* %10, align 4
  %513 = load i32, i32* %18, align 4
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %12, align 4
  %518 = and i32 %516, %517
  %519 = load i32, i32* %10, align 4
  %520 = or i32 %518, %519
  %521 = load i32, i32* %9, align 4
  %522 = or i32 %520, %521
  %523 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 4
  store i32 %522, i32* %523, align 16
  br label %674

524:                                              ; preds = %375
  %525 = load i32, i32* %25, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %25, align 4
  %527 = load i32, i32* %16, align 4
  %528 = load i32, i32* %6, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = and i32 %527, %531
  store i32 %532, i32* %9, align 4
  %533 = load i32, i32* %6, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* %12, align 4
  %541 = and i32 %539, %540
  %542 = load i32, i32* %9, align 4
  %543 = or i32 %541, %542
  %544 = load i32, i32* %6, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %545
  store i32 %543, i32* %546, align 4
  %547 = load i32, i32* @TAIL, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %565

549:                                              ; preds = %524
  %550 = load i32, i32* %6, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* %6, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = or i32 %556, %560
  %562 = load i32, i32* %6, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %563
  store i32 %561, i32* %564, align 4
  br label %565

565:                                              ; preds = %549, %524
  %566 = load i32, i32* %6, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %567
  %569 = load i32, i32* %568, align 4
  %570 = and i32 %569, 1
  %571 = load i32, i32* @INVERSE, align 4
  %572 = xor i32 %570, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %586

574:                                              ; preds = %565
  %575 = load i32, i32* @FILENAMEONLY, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %581

577:                                              ; preds = %574
  %578 = load i32, i32* @num_of_matched, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* @num_of_matched, align 4
  %580 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %984

581:                                              ; preds = %574
  %582 = load i32, i32* %7, align 4
  %583 = sub i32 %582, 1
  %584 = load i32, i32* %17, align 4
  %585 = load i32, i32* %25, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 0), i32 %583, i32 %584, i32 %585)
  br label %586

586:                                              ; preds = %581, %565
  store i32 0, i32* %13, align 4
  br label %587

587:                                              ; preds = %602, %586
  %588 = load i32, i32* %13, align 4
  %589 = load i32, i32* %6, align 4
  %590 = icmp ule i32 %588, %589
  br i1 %590, label %591, label %605

591:                                              ; preds = %587
  %592 = load i32, i32* %13, align 4
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = load i32, i32* %13, align 4
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %597
  store i32 %595, i32* %598, align 4
  %599 = load i32, i32* %13, align 4
  %600 = zext i32 %599 to i64
  %601 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %600
  store i32 %595, i32* %601, align 4
  br label %602

602:                                              ; preds = %591
  %603 = load i32, i32* %13, align 4
  %604 = add i32 %603, 1
  store i32 %604, i32* %13, align 4
  br label %587

605:                                              ; preds = %587
  %606 = load i32, i32* %16, align 4
  %607 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  %608 = load i32, i32* %607, align 16
  %609 = and i32 %606, %608
  store i32 %609, i32* %9, align 4
  %610 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  %611 = load i32, i32* %610, align 16
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* %12, align 4
  %616 = and i32 %614, %615
  %617 = load i32, i32* %9, align 4
  %618 = or i32 %616, %617
  %619 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  store i32 %618, i32* %619, align 16
  store i32 1, i32* %13, align 4
  br label %620

620:                                              ; preds = %669, %605
  %621 = load i32, i32* %13, align 4
  %622 = load i32, i32* %6, align 4
  %623 = icmp ule i32 %621, %622
  br i1 %623, label %624, label %672

624:                                              ; preds = %620
  %625 = load i32, i32* %16, align 4
  %626 = load i32, i32* %13, align 4
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = and i32 %625, %629
  store i32 %630, i32* %9, align 4
  %631 = load i32, i32* %13, align 4
  %632 = sub i32 %631, 1
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %13, align 4
  %637 = sub i32 %636, 1
  %638 = zext i32 %637 to i64
  %639 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = load i32, i32* %13, align 4
  %642 = sub i32 %641, 1
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = or i32 %640, %645
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = or i32 %635, %649
  %651 = load i32, i32* %20, align 4
  %652 = and i32 %650, %651
  store i32 %652, i32* %10, align 4
  %653 = load i32, i32* %13, align 4
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %657
  %659 = load i32, i32* %658, align 4
  %660 = load i32, i32* %12, align 4
  %661 = and i32 %659, %660
  %662 = load i32, i32* %9, align 4
  %663 = or i32 %661, %662
  %664 = load i32, i32* %10, align 4
  %665 = or i32 %663, %664
  %666 = load i32, i32* %13, align 4
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %667
  store i32 %665, i32* %668, align 4
  br label %669

669:                                              ; preds = %624
  %670 = load i32, i32* %13, align 4
  %671 = add i32 %670, 1
  store i32 %671, i32* %13, align 4
  br label %620

672:                                              ; preds = %620
  br label %673

673:                                              ; preds = %672
  br label %674

674:                                              ; preds = %673, %496, %495, %464, %433
  %675 = load i32, i32* %7, align 4
  %676 = zext i32 %675 to i64
  %677 = getelementptr inbounds [50177 x i8], [50177 x i8]* @buffer, i64 0, i64 %676
  %678 = load i8, i8* %677, align 1
  %679 = zext i8 %678 to i32
  store i32 %679, i32* %8, align 4
  %680 = load i32, i32* %8, align 4
  %681 = zext i32 %680 to i64
  %682 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %681
  %683 = load i32, i32* %682, align 4
  store i32 %683, i32* %12, align 4
  %684 = load i32, i32* %8, align 4
  %685 = load i32, i32* %14, align 4
  %686 = icmp ne i32 %684, %685
  br i1 %686, label %687, label %826

687:                                              ; preds = %674
  %688 = load i32, i32* %16, align 4
  %689 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %690 = load i32, i32* %689, align 16
  %691 = and i32 %688, %690
  store i32 %691, i32* %9, align 4
  %692 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %693 = load i32, i32* %692, align 16
  %694 = zext i32 %693 to i64
  %695 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* %12, align 4
  %698 = and i32 %696, %697
  %699 = load i32, i32* %9, align 4
  %700 = or i32 %698, %699
  %701 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  store i32 %700, i32* %701, align 16
  %702 = load i32, i32* %16, align 4
  %703 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 1
  %704 = load i32, i32* %703, align 4
  %705 = and i32 %702, %704
  store i32 %705, i32* %9, align 4
  %706 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 1
  %707 = load i32, i32* %706, align 4
  %708 = zext i32 %707 to i64
  %709 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %708
  %710 = load i32, i32* %709, align 4
  %711 = load i32, i32* %12, align 4
  %712 = and i32 %710, %711
  %713 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %714 = load i32, i32* %713, align 16
  %715 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %716 = load i32, i32* %715, align 16
  %717 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  %718 = load i32, i32* %717, align 16
  %719 = or i32 %716, %718
  %720 = zext i32 %719 to i64
  %721 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %720
  %722 = load i32, i32* %721, align 4
  %723 = or i32 %714, %722
  %724 = load i32, i32* %20, align 4
  %725 = and i32 %723, %724
  %726 = or i32 %712, %725
  %727 = load i32, i32* %9, align 4
  %728 = or i32 %726, %727
  %729 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 1
  store i32 %728, i32* %729, align 4
  %730 = load i32, i32* %6, align 4
  %731 = icmp eq i32 %730, 1
  br i1 %731, label %732, label %733

732:                                              ; preds = %687
  br label %975

733:                                              ; preds = %687
  %734 = load i32, i32* %16, align 4
  %735 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 2
  %736 = load i32, i32* %735, align 8
  %737 = and i32 %734, %736
  store i32 %737, i32* %9, align 4
  %738 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 2
  %739 = load i32, i32* %738, align 8
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %740
  %742 = load i32, i32* %741, align 4
  %743 = load i32, i32* %12, align 4
  %744 = and i32 %742, %743
  %745 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 1
  %746 = load i32, i32* %745, align 4
  %747 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 1
  %748 = load i32, i32* %747, align 4
  %749 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 1
  %750 = load i32, i32* %749, align 4
  %751 = or i32 %748, %750
  %752 = zext i32 %751 to i64
  %753 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %752
  %754 = load i32, i32* %753, align 4
  %755 = or i32 %746, %754
  %756 = load i32, i32* %20, align 4
  %757 = and i32 %755, %756
  %758 = or i32 %744, %757
  %759 = load i32, i32* %9, align 4
  %760 = or i32 %758, %759
  %761 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 2
  store i32 %760, i32* %761, align 8
  %762 = load i32, i32* %6, align 4
  %763 = icmp eq i32 %762, 2
  br i1 %763, label %764, label %765

764:                                              ; preds = %733
  br label %975

765:                                              ; preds = %733
  %766 = load i32, i32* %16, align 4
  %767 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 3
  %768 = load i32, i32* %767, align 4
  %769 = and i32 %766, %768
  store i32 %769, i32* %9, align 4
  %770 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 3
  %771 = load i32, i32* %770, align 4
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %772
  %774 = load i32, i32* %773, align 4
  %775 = load i32, i32* %12, align 4
  %776 = and i32 %774, %775
  %777 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 2
  %778 = load i32, i32* %777, align 8
  %779 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 2
  %780 = load i32, i32* %779, align 8
  %781 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 2
  %782 = load i32, i32* %781, align 8
  %783 = or i32 %780, %782
  %784 = zext i32 %783 to i64
  %785 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %784
  %786 = load i32, i32* %785, align 4
  %787 = or i32 %778, %786
  %788 = load i32, i32* %20, align 4
  %789 = and i32 %787, %788
  %790 = or i32 %776, %789
  %791 = load i32, i32* %9, align 4
  %792 = or i32 %790, %791
  %793 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 3
  store i32 %792, i32* %793, align 4
  %794 = load i32, i32* %6, align 4
  %795 = icmp eq i32 %794, 3
  br i1 %795, label %796, label %797

796:                                              ; preds = %765
  br label %975

797:                                              ; preds = %765
  %798 = load i32, i32* %16, align 4
  %799 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 4
  %800 = load i32, i32* %799, align 16
  %801 = and i32 %798, %800
  store i32 %801, i32* %9, align 4
  %802 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 4
  %803 = load i32, i32* %802, align 16
  %804 = zext i32 %803 to i64
  %805 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %804
  %806 = load i32, i32* %805, align 4
  %807 = load i32, i32* %12, align 4
  %808 = and i32 %806, %807
  %809 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 3
  %810 = load i32, i32* %809, align 4
  %811 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 3
  %812 = load i32, i32* %811, align 4
  %813 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 3
  %814 = load i32, i32* %813, align 4
  %815 = or i32 %812, %814
  %816 = zext i32 %815 to i64
  %817 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %816
  %818 = load i32, i32* %817, align 4
  %819 = or i32 %810, %818
  %820 = load i32, i32* %20, align 4
  %821 = and i32 %819, %820
  %822 = or i32 %808, %821
  %823 = load i32, i32* %9, align 4
  %824 = or i32 %822, %823
  %825 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 4
  store i32 %824, i32* %825, align 16
  br label %975

826:                                              ; preds = %674
  %827 = load i32, i32* %25, align 4
  %828 = add nsw i32 %827, 1
  store i32 %828, i32* %25, align 4
  %829 = load i32, i32* %16, align 4
  %830 = load i32, i32* %6, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %831
  %833 = load i32, i32* %832, align 4
  %834 = and i32 %829, %833
  store i32 %834, i32* %9, align 4
  %835 = load i32, i32* %6, align 4
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %836
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  %840 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %839
  %841 = load i32, i32* %840, align 4
  %842 = load i32, i32* %12, align 4
  %843 = and i32 %841, %842
  %844 = load i32, i32* %9, align 4
  %845 = or i32 %843, %844
  %846 = load i32, i32* %6, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %847
  store i32 %845, i32* %848, align 4
  %849 = load i32, i32* @TAIL, align 4
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %851, label %867

851:                                              ; preds = %826
  %852 = load i32, i32* %6, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %853
  %855 = load i32, i32* %854, align 4
  %856 = zext i32 %855 to i64
  %857 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = load i32, i32* %6, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %860
  %862 = load i32, i32* %861, align 4
  %863 = or i32 %858, %862
  %864 = load i32, i32* %6, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %865
  store i32 %863, i32* %866, align 4
  br label %867

867:                                              ; preds = %851, %826
  %868 = load i32, i32* %6, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %869
  %871 = load i32, i32* %870, align 4
  %872 = and i32 %871, 1
  %873 = load i32, i32* @INVERSE, align 4
  %874 = xor i32 %872, %873
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %887

876:                                              ; preds = %867
  %877 = load i32, i32* @FILENAMEONLY, align 4
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %883

879:                                              ; preds = %876
  %880 = load i32, i32* @num_of_matched, align 4
  %881 = add nsw i32 %880, 1
  store i32 %881, i32* @num_of_matched, align 4
  %882 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %984

883:                                              ; preds = %876
  %884 = load i32, i32* %7, align 4
  %885 = load i32, i32* %17, align 4
  %886 = load i32, i32* %25, align 4
  call void @r_output(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 0), i32 %884, i32 %885, i32 %886)
  br label %887

887:                                              ; preds = %883, %867
  store i32 0, i32* %13, align 4
  br label %888

888:                                              ; preds = %903, %887
  %889 = load i32, i32* %13, align 4
  %890 = load i32, i32* %6, align 4
  %891 = icmp ule i32 %889, %890
  br i1 %891, label %892, label %906

892:                                              ; preds = %888
  %893 = load i32, i32* %13, align 4
  %894 = zext i32 %893 to i64
  %895 = getelementptr inbounds [8 x i32], [8 x i32]* @Init, i64 0, i64 %894
  %896 = load i32, i32* %895, align 4
  %897 = load i32, i32* %13, align 4
  %898 = zext i32 %897 to i64
  %899 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %898
  store i32 %896, i32* %899, align 4
  %900 = load i32, i32* %13, align 4
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %901
  store i32 %896, i32* %902, align 4
  br label %903

903:                                              ; preds = %892
  %904 = load i32, i32* %13, align 4
  %905 = add i32 %904, 1
  store i32 %905, i32* %13, align 4
  br label %888

906:                                              ; preds = %888
  %907 = load i32, i32* %16, align 4
  %908 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %909 = load i32, i32* %908, align 16
  %910 = and i32 %907, %909
  store i32 %910, i32* %9, align 4
  %911 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %912 = load i32, i32* %911, align 16
  %913 = zext i32 %912 to i64
  %914 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %913
  %915 = load i32, i32* %914, align 4
  %916 = load i32, i32* %12, align 4
  %917 = and i32 %915, %916
  %918 = load i32, i32* %9, align 4
  %919 = or i32 %917, %918
  %920 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  store i32 %919, i32* %920, align 16
  store i32 1, i32* %13, align 4
  br label %921

921:                                              ; preds = %970, %906
  %922 = load i32, i32* %13, align 4
  %923 = load i32, i32* %6, align 4
  %924 = icmp ule i32 %922, %923
  br i1 %924, label %925, label %973

925:                                              ; preds = %921
  %926 = load i32, i32* %16, align 4
  %927 = load i32, i32* %13, align 4
  %928 = zext i32 %927 to i64
  %929 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %928
  %930 = load i32, i32* %929, align 4
  %931 = and i32 %926, %930
  store i32 %931, i32* %9, align 4
  %932 = load i32, i32* %13, align 4
  %933 = sub i32 %932, 1
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %934
  %936 = load i32, i32* %935, align 4
  %937 = load i32, i32* %13, align 4
  %938 = sub i32 %937, 1
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %939
  %941 = load i32, i32* %940, align 4
  %942 = load i32, i32* %13, align 4
  %943 = sub i32 %942, 1
  %944 = zext i32 %943 to i64
  %945 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %944
  %946 = load i32, i32* %945, align 4
  %947 = or i32 %941, %946
  %948 = zext i32 %947 to i64
  %949 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %948
  %950 = load i32, i32* %949, align 4
  %951 = or i32 %936, %950
  %952 = load i32, i32* %20, align 4
  %953 = and i32 %951, %952
  store i32 %953, i32* %10, align 4
  %954 = load i32, i32* %13, align 4
  %955 = zext i32 %954 to i64
  %956 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 %955
  %957 = load i32, i32* %956, align 4
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds [66000 x i32], [66000 x i32]* @Next, i64 0, i64 %958
  %960 = load i32, i32* %959, align 4
  %961 = load i32, i32* %12, align 4
  %962 = and i32 %960, %961
  %963 = load i32, i32* %9, align 4
  %964 = or i32 %962, %963
  %965 = load i32, i32* %10, align 4
  %966 = or i32 %964, %965
  %967 = load i32, i32* %13, align 4
  %968 = zext i32 %967 to i64
  %969 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 %968
  store i32 %966, i32* %969, align 4
  br label %970

970:                                              ; preds = %925
  %971 = load i32, i32* %13, align 4
  %972 = add i32 %971, 1
  store i32 %972, i32* %13, align 4
  br label %921

973:                                              ; preds = %921
  br label %974

974:                                              ; preds = %973
  br label %975

975:                                              ; preds = %974, %797, %796, %764, %732
  %976 = load i32, i32* %7, align 4
  %977 = add i32 %976, 1
  store i32 %977, i32* %7, align 4
  br label %371

978:                                              ; preds = %371
  %979 = load i32, i32* %24, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds i8, i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 0), i64 %980
  %982 = call i8* @strncpy(i8* getelementptr inbounds ([50177 x i8], [50177 x i8]* @buffer, i64 0, i64 0), i8* %981, i64 1024) #8
  br label %338

983:                                              ; preds = %338
  br label %984

984:                                              ; preds = %983, %879, %577, %336, %293, %214
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %114

15:                                               ; preds = %4
  %16 = load i32, i32* @num_of_matched, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @num_of_matched, align 4
  %18 = load i32, i32* @COUNT, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %114

21:                                               ; preds = %15
  %22 = load i32, i32* @SILENT, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %114

25:                                               ; preds = %21
  %26 = load i32, i32* @OUTTAIL, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @D_length, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @D_length, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i32, i32* @DELIMITER, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @FIRSTOUTPUT, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  store i32 1, i32* @EATFIRST, align 4
  br label %55

55:                                               ; preds = %52, %44
  store i32 0, i32* @FIRSTOUTPUT, align 4
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* @TRUNCATE, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = load i32, i32* @num_of_matched, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.41, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sle i32 %74, %75
  br label %77

77:                                               ; preds = %73, %65
  %78 = phi i1 [ false, %65 ], [ %76, %73 ]
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %65

83:                                               ; preds = %77
  %84 = load i32, i32* @FNAME, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* @LINENUM, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %108, %95
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ule i8* %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  %111 = load i8, i8* %109, align 1
  %112 = zext i8 %111 to i32
  %113 = call i32 @putchar(i32 %112)
  br label %104

114:                                              ; preds = %104, %24, %20, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @maskgen(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [42 x %struct.term], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %25, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.term, %struct.term* %22, i32 0, i32 1
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %24, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %16

28:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 32
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.term, %struct.term* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %29

40:                                               ; preds = %29
  store i32 0, i32* @endposition, align 4
  store i32 0, i32* @NO_ERR_MASK, align 4
  store i32 0, i32* @wildmask, align 4
  store i32 0, i32* %15, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strlen(i8* %41) #7
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @NOUPPER, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %96, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = call i16** @__ctype_b_loc() #10
  %53 = load i16*, i16** %52, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %53, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 1024
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %51
  %67 = call i16** @__ctype_b_loc() #10
  %68 = load i16*, i16** %67, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %68, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 256
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %66
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 @tolower(i32 %87) #7
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 %89, i8* %93, align 1
  br label %94

94:                                               ; preds = %81, %66
  br label %95

95:                                               ; preds = %94, %51
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %47

99:                                               ; preds = %47
  br label %100

100:                                              ; preds = %99, %40
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %482, %100
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %485

105:                                              ; preds = %101
  %106 = load i8*, i8** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  switch i32 %111, label %439 [
    i32 249, label %112
    i32 253, label %140
    i32 250, label %141
    i32 242, label %142
    i32 243, label %143
    i32 246, label %144
    i32 247, label %147
    i32 244, label %156
    i32 245, label %266
    i32 251, label %269
    i32 252, label %295
    i32 10, label %330
    i32 241, label %353
    i32 239, label %406
  ]

112:                                              ; preds = %105
  %113 = load i32, i32* @REGEX, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.term, %struct.term* %118, i32 0, i32 1
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %119, i64 0, i64 0
  store i8 46, i8* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.term, %struct.term* %123, i32 0, i32 1
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %124, i64 0, i64 1
  store i8 46, i8* %125, align 1
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.term, %struct.term* %129, i32 0, i32 1
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %130, i64 0, i64 2
  store i8 0, i8* %131, align 2
  br label %475

132:                                              ; preds = %112
  %133 = load i32, i32* @wildmask, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %133, %138
  store i32 %139, i32* @wildmask, align 4
  br label %475

140:                                              ; preds = %105
  br label %475

141:                                              ; preds = %105
  br label %475

142:                                              ; preds = %105
  br label %475

143:                                              ; preds = %105
  br label %475

144:                                              ; preds = %105
  store i32 1, i32* %15, align 4
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %475

147:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

155:                                              ; preds = %147
  br label %475

156:                                              ; preds = %105
  %157 = load i32, i32* %15, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, i32* @NO_ERR_MASK, align 4
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %160, %164
  store i32 %165, i32* @NO_ERR_MASK, align 4
  br label %166

166:                                              ; preds = %159, %156
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  %169 = load i8*, i8** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 248
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.term, %struct.term* %179, i32 0, i32 0
  store i32 1, i32* %180, align 4
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %176, %166
  store i32 0, i32* %9, align 4
  br label %184

184:                                              ; preds = %248, %183
  %185 = load i8*, i8** %3, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp ne i32 %190, 245
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp slt i32 %193, %194
  br label %196

196:                                              ; preds = %192, %184
  %197 = phi i1 [ false, %184 ], [ %195, %192 ]
  br i1 %197, label %198, label %249

198:                                              ; preds = %196
  %199 = load i8*, i8** %3, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 237
  br i1 %205, label %206, label %223

206:                                              ; preds = %198
  %207 = load i8*, i8** %3, align 8
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %214
  %216 = getelementptr inbounds %struct.term, %struct.term* %215, i32 0, i32 1
  %217 = load i32, i32* %9, align 4
  %218 = sub nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [32 x i8], [32 x i8]* %216, i64 0, i64 %219
  store i8 %212, i8* %220, align 1
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 2
  store i32 %222, i32* %7, align 4
  br label %248

223:                                              ; preds = %198
  %224 = load i8*, i8** %3, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %230
  %232 = getelementptr inbounds %struct.term, %struct.term* %231, i32 0, i32 1
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [32 x i8], [32 x i8]* %232, i64 0, i64 %235
  store i8 %228, i8* %236, align 1
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %238
  %240 = getelementptr inbounds %struct.term, %struct.term* %239, i32 0, i32 1
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [32 x i8], [32 x i8]* %240, i64 0, i64 %242
  store i8 %228, i8* %243, align 1
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 2
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %223, %206
  br label %184

249:                                              ; preds = %196
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.82, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

256:                                              ; preds = %249
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %258
  %260 = getelementptr inbounds %struct.term, %struct.term* %259, i32 0, i32 1
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [32 x i8], [32 x i8]* %260, i64 0, i64 %262
  store i8 0, i8* %263, align 1
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %475

266:                                              ; preds = %105
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %267, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.82, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

269:                                              ; preds = %105
  %270 = load i32, i32* @REGEX, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %275, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* @AND, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %278

275:                                              ; preds = %272, %269
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %276, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.83, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

278:                                              ; preds = %272
  store i32 1, i32* %12, align 4
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %280
  %282 = getelementptr inbounds %struct.term, %struct.term* %281, i32 0, i32 0
  store i32 2, i32* %282, align 4
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.term, %struct.term* %285, i32 0, i32 1
  %287 = getelementptr inbounds [32 x i8], [32 x i8]* %286, i64 0, i64 0
  store i8 0, i8* %287, align 4
  %288 = load i32, i32* @endposition, align 4
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %8, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %288, %293
  store i32 %294, i32* @endposition, align 4
  br label %475

295:                                              ; preds = %105
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.term, %struct.term* %298, i32 0, i32 0
  store i32 2, i32* %299, align 4
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %301
  %303 = getelementptr inbounds %struct.term, %struct.term* %302, i32 0, i32 1
  %304 = getelementptr inbounds [32 x i8], [32 x i8]* %303, i64 0, i64 0
  store i8 0, i8* %304, align 4
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @D_length, align 4
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %295
  store i32 1, i32* @AND, align 4
  br label %309

309:                                              ; preds = %308, %295
  %310 = load i32, i32* %12, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %319, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* @REGEX, align 4
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %322

315:                                              ; preds = %312
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* @D_length, align 4
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %315, %309
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.83, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

322:                                              ; preds = %315, %312
  %323 = load i32, i32* @endposition, align 4
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %323, %328
  store i32 %329, i32* @endposition, align 4
  br label %475

330:                                              ; preds = %105
  %331 = load i32, i32* @NO_ERR_MASK, align 4
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %331, %335
  store i32 %336, i32* @NO_ERR_MASK, align 4
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.term, %struct.term* %339, i32 0, i32 1
  %341 = getelementptr inbounds [32 x i8], [32 x i8]* %340, i64 0, i64 1
  store i8 10, i8* %341, align 1
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %343
  %345 = getelementptr inbounds %struct.term, %struct.term* %344, i32 0, i32 1
  %346 = getelementptr inbounds [32 x i8], [32 x i8]* %345, i64 0, i64 0
  store i8 10, i8* %346, align 4
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %8, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %349
  %351 = getelementptr inbounds %struct.term, %struct.term* %350, i32 0, i32 1
  %352 = getelementptr inbounds [32 x i8], [32 x i8]* %351, i64 0, i64 2
  store i8 0, i8* %352, align 2
  br label %475

353:                                              ; preds = %105
  %354 = load i32, i32* @NO_ERR_MASK, align 4
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %354, %358
  store i32 %359, i32* @NO_ERR_MASK, align 4
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %361
  %363 = getelementptr inbounds %struct.term, %struct.term* %362, i32 0, i32 1
  %364 = getelementptr inbounds [32 x i8], [32 x i8]* %363, i64 0, i64 0
  store i8 1, i8* %364, align 4
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %366
  %368 = getelementptr inbounds %struct.term, %struct.term* %367, i32 0, i32 1
  %369 = getelementptr inbounds [32 x i8], [32 x i8]* %368, i64 0, i64 1
  store i8 47, i8* %369, align 1
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %371
  %373 = getelementptr inbounds %struct.term, %struct.term* %372, i32 0, i32 1
  %374 = getelementptr inbounds [32 x i8], [32 x i8]* %373, i64 0, i64 2
  store i8 58, i8* %374, align 2
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %376
  %378 = getelementptr inbounds %struct.term, %struct.term* %377, i32 0, i32 1
  %379 = getelementptr inbounds [32 x i8], [32 x i8]* %378, i64 0, i64 3
  store i8 64, i8* %379, align 1
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %381
  %383 = getelementptr inbounds %struct.term, %struct.term* %382, i32 0, i32 1
  %384 = getelementptr inbounds [32 x i8], [32 x i8]* %383, i64 0, i64 4
  store i8 91, i8* %384, align 4
  %385 = load i32, i32* %8, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %386
  %388 = getelementptr inbounds %struct.term, %struct.term* %387, i32 0, i32 1
  %389 = getelementptr inbounds [32 x i8], [32 x i8]* %388, i64 0, i64 5
  store i8 96, i8* %389, align 1
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %391
  %393 = getelementptr inbounds %struct.term, %struct.term* %392, i32 0, i32 1
  %394 = getelementptr inbounds [32 x i8], [32 x i8]* %393, i64 0, i64 6
  store i8 123, i8* %394, align 2
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %396
  %398 = getelementptr inbounds %struct.term, %struct.term* %397, i32 0, i32 1
  %399 = getelementptr inbounds [32 x i8], [32 x i8]* %398, i64 0, i64 7
  store i8 127, i8* %399, align 1
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %8, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %402
  %404 = getelementptr inbounds %struct.term, %struct.term* %403, i32 0, i32 1
  %405 = getelementptr inbounds [32 x i8], [32 x i8]* %404, i64 0, i64 8
  store i8 0, i8* %405, align 4
  br label %475

406:                                              ; preds = %105
  %407 = load i32, i32* %8, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @NO_ERR_MASK, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* @NO_ERR_MASK, align 4
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %414
  %416 = getelementptr inbounds %struct.term, %struct.term* %415, i32 0, i32 1
  %417 = getelementptr inbounds [32 x i8], [32 x i8]* %416, i64 0, i64 1
  store i8 10, i8* %417, align 1
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %419
  %421 = getelementptr inbounds %struct.term, %struct.term* %420, i32 0, i32 1
  %422 = getelementptr inbounds [32 x i8], [32 x i8]* %421, i64 0, i64 0
  store i8 10, i8* %422, align 4
  %423 = load i32, i32* %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %424
  %426 = getelementptr inbounds %struct.term, %struct.term* %425, i32 0, i32 1
  %427 = getelementptr inbounds [32 x i8], [32 x i8]* %426, i64 0, i64 3
  store i8 -17, i8* %427, align 1
  %428 = load i32, i32* %8, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %429
  %431 = getelementptr inbounds %struct.term, %struct.term* %430, i32 0, i32 1
  %432 = getelementptr inbounds [32 x i8], [32 x i8]* %431, i64 0, i64 2
  store i8 -17, i8* %432, align 2
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %435
  %437 = getelementptr inbounds %struct.term, %struct.term* %436, i32 0, i32 1
  %438 = getelementptr inbounds [32 x i8], [32 x i8]* %437, i64 0, i64 4
  store i8 0, i8* %438, align 4
  br label %475

439:                                              ; preds = %105
  %440 = load i32, i32* %15, align 4
  %441 = icmp eq i32 %440, 1
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  %443 = load i32, i32* @NO_ERR_MASK, align 4
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = or i32 %443, %447
  store i32 %448, i32* @NO_ERR_MASK, align 4
  br label %449

449:                                              ; preds = %442, %439
  %450 = load i32, i32* %8, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %451
  %453 = getelementptr inbounds %struct.term, %struct.term* %452, i32 0, i32 0
  store i32 0, i32* %453, align 4
  %454 = load i8*, i8** %3, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load i8, i8* %457, align 1
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %460
  %462 = getelementptr inbounds %struct.term, %struct.term* %461, i32 0, i32 1
  %463 = getelementptr inbounds [32 x i8], [32 x i8]* %462, i64 0, i64 1
  store i8 %458, i8* %463, align 1
  %464 = load i32, i32* %8, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %465
  %467 = getelementptr inbounds %struct.term, %struct.term* %466, i32 0, i32 1
  %468 = getelementptr inbounds [32 x i8], [32 x i8]* %467, i64 0, i64 0
  store i8 %458, i8* %468, align 4
  %469 = load i32, i32* %8, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %8, align 4
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %471
  %473 = getelementptr inbounds %struct.term, %struct.term* %472, i32 0, i32 1
  %474 = getelementptr inbounds [32 x i8], [32 x i8]* %473, i64 0, i64 2
  store i8 0, i8* %474, align 2
  br label %475

475:                                              ; preds = %449, %406, %353, %330, %322, %278, %256, %155, %144, %143, %142, %141, %140, %132, %115
  %476 = load i32, i32* %8, align 4
  %477 = icmp sgt i32 %476, 32
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %479, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3.84, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

481:                                              ; preds = %475
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %7, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %7, align 4
  br label %101

485:                                              ; preds = %101
  %486 = load i32, i32* %13, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %490 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %489, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

491:                                              ; preds = %485
  %492 = load i32, i32* %8, align 4
  %493 = sub nsw i32 %492, 1
  store i32 %493, i32* %11, align 4
  %494 = load i32, i32* %11, align 4
  %495 = sub nsw i32 32, %494
  store i32 %495, i32* %14, align 4
  %496 = load i32, i32* @wildmask, align 4
  %497 = load i32, i32* %14, align 4
  %498 = lshr i32 %496, %497
  store i32 %498, i32* @wildmask, align 4
  %499 = load i32, i32* @endposition, align 4
  %500 = load i32, i32* %14, align 4
  %501 = lshr i32 %499, %500
  store i32 %501, i32* @endposition, align 4
  %502 = load i32, i32* @NO_ERR_MASK, align 4
  %503 = ashr i32 %502, 1
  %504 = load i32, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @Bit, i64 0, i64 1), align 4
  %505 = xor i32 %504, -1
  %506 = and i32 %503, %505
  store i32 %506, i32* @NO_ERR_MASK, align 4
  %507 = load i32, i32* @NO_ERR_MASK, align 4
  %508 = xor i32 %507, -1
  %509 = load i32, i32* %14, align 4
  %510 = sub nsw i32 %509, 1
  %511 = ashr i32 %508, %510
  store i32 %511, i32* @NO_ERR_MASK, align 4
  store i32 1, i32* %7, align 4
  br label %512

512:                                              ; preds = %524, %491
  %513 = load i32, i32* %7, align 4
  %514 = load i32, i32* %11, align 4
  %515 = sub nsw i32 32, %514
  %516 = icmp sle i32 %513, %515
  br i1 %516, label %517, label %527

517:                                              ; preds = %512
  %518 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %519 = load i32, i32* %7, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = or i32 %518, %522
  store i32 %523, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  br label %524

524:                                              ; preds = %517
  %525 = load i32, i32* %7, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %7, align 4
  br label %512

527:                                              ; preds = %512
  %528 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %529 = load i32, i32* @endposition, align 4
  %530 = or i32 %528, %529
  store i32 %530, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %531 = load i32, i32* @endposition, align 4
  %532 = shl i32 %531, 1
  %533 = add i32 %532, 1
  store i32 %533, i32* @endposition, align 4
  %534 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @Init, i64 0, i64 0), align 4
  %535 = load i32, i32* @wildmask, align 4
  %536 = or i32 %534, %535
  %537 = load i32, i32* @endposition, align 4
  %538 = or i32 %536, %537
  store i32 %538, i32* @Init1, align 4
  %539 = load i32, i32* @endposition, align 4
  %540 = load i32, i32* %11, align 4
  %541 = load i32, i32* @D_length, align 4
  %542 = sub nsw i32 %540, %541
  %543 = lshr i32 %539, %542
  %544 = load i32, i32* %11, align 4
  %545 = load i32, i32* @D_length, align 4
  %546 = sub nsw i32 %544, %545
  %547 = shl i32 %543, %546
  store i32 %547, i32* @D_endpos, align 4
  %548 = load i32, i32* @endposition, align 4
  %549 = load i32, i32* @D_endpos, align 4
  %550 = xor i32 %548, %549
  store i32 %550, i32* @endposition, align 4
  store i8 0, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %551

551:                                              ; preds = %676, %527
  %552 = load i32, i32* %7, align 4
  %553 = icmp slt i32 %552, 256
  br i1 %553, label %554, label %681

554:                                              ; preds = %551
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %555

555:                                              ; preds = %672, %554
  %556 = load i32, i32* %9, align 4
  %557 = load i32, i32* %11, align 4
  %558 = icmp sle i32 %556, %557
  br i1 %558, label %559, label %675

559:                                              ; preds = %555
  br label %560

560:                                              ; preds = %646, %559
  %561 = load i32, i32* %9, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %562
  %564 = getelementptr inbounds %struct.term, %struct.term* %563, i32 0, i32 1
  %565 = load i32, i32* %10, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [32 x i8], [32 x i8]* %564, i64 0, i64 %566
  %568 = load i8, i8* %567, align 1
  %569 = zext i8 %568 to i32
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %649

571:                                              ; preds = %560
  %572 = load i32, i32* %9, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %573
  %575 = getelementptr inbounds %struct.term, %struct.term* %574, i32 0, i32 1
  %576 = load i32, i32* %10, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [32 x i8], [32 x i8]* %575, i64 0, i64 %577
  %579 = load i8, i8* %578, align 1
  %580 = zext i8 %579 to i32
  %581 = icmp eq i32 %580, 238
  br i1 %581, label %582, label %604

582:                                              ; preds = %571
  %583 = load i8, i8* %6, align 1
  %584 = zext i8 %583 to i32
  %585 = icmp ne i32 %584, 10
  br i1 %585, label %589, label %586

586:                                              ; preds = %582
  %587 = load i32, i32* @REGEX, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %604

589:                                              ; preds = %586, %582
  %590 = load i8, i8* %6, align 1
  %591 = zext i8 %590 to i64
  %592 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* %14, align 4
  %595 = load i32, i32* %9, align 4
  %596 = add nsw i32 %594, %595
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = or i32 %593, %599
  %601 = load i8, i8* %6, align 1
  %602 = zext i8 %601 to i64
  %603 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %602
  store i32 %600, i32* %603, align 4
  br label %649

604:                                              ; preds = %586, %571
  %605 = load i8, i8* %6, align 1
  %606 = zext i8 %605 to i32
  %607 = load i32, i32* %9, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %608
  %610 = getelementptr inbounds %struct.term, %struct.term* %609, i32 0, i32 1
  %611 = load i32, i32* %10, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [32 x i8], [32 x i8]* %610, i64 0, i64 %612
  %614 = load i8, i8* %613, align 1
  %615 = zext i8 %614 to i32
  %616 = icmp sge i32 %606, %615
  br i1 %616, label %617, label %646

617:                                              ; preds = %604
  %618 = load i8, i8* %6, align 1
  %619 = zext i8 %618 to i32
  %620 = load i32, i32* %9, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %621
  %623 = getelementptr inbounds %struct.term, %struct.term* %622, i32 0, i32 1
  %624 = load i32, i32* %10, align 4
  %625 = add nsw i32 %624, 1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [32 x i8], [32 x i8]* %623, i64 0, i64 %626
  %628 = load i8, i8* %627, align 1
  %629 = zext i8 %628 to i32
  %630 = icmp sle i32 %619, %629
  br i1 %630, label %631, label %646

631:                                              ; preds = %617
  %632 = load i8, i8* %6, align 1
  %633 = zext i8 %632 to i64
  %634 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %14, align 4
  %637 = load i32, i32* %9, align 4
  %638 = add nsw i32 %636, %637
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = or i32 %635, %641
  %643 = load i8, i8* %6, align 1
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %644
  store i32 %642, i32* %645, align 4
  br label %649

646:                                              ; preds = %617, %604
  %647 = load i32, i32* %10, align 4
  %648 = add nsw i32 %647, 2
  store i32 %648, i32* %10, align 4
  br label %560

649:                                              ; preds = %631, %589, %560
  %650 = load i32, i32* %9, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %651
  %653 = getelementptr inbounds %struct.term, %struct.term* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 4
  %655 = icmp eq i32 %654, 1
  br i1 %655, label %656, label %671

656:                                              ; preds = %649
  %657 = load i8, i8* %6, align 1
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = load i32, i32* %14, align 4
  %662 = load i32, i32* %9, align 4
  %663 = add nsw i32 %661, %662
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([33 x i32]* @Bit to [0 x i32]*), i64 0, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = xor i32 %660, %666
  %668 = load i8, i8* %6, align 1
  %669 = zext i8 %668 to i64
  %670 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %669
  store i32 %667, i32* %670, align 4
  br label %671

671:                                              ; preds = %656, %649
  br label %672

672:                                              ; preds = %671
  %673 = load i32, i32* %9, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %555

675:                                              ; preds = %555
  br label %676

676:                                              ; preds = %675
  %677 = load i8, i8* %6, align 1
  %678 = add i8 %677, 1
  store i8 %678, i8* %6, align 1
  %679 = load i32, i32* %7, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %7, align 4
  br label %551

681:                                              ; preds = %551
  %682 = load i32, i32* @NOUPPER, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %717

684:                                              ; preds = %681
  store i8 65, i8* %6, align 1
  br label %685

685:                                              ; preds = %711, %684
  %686 = load i8, i8* %6, align 1
  %687 = zext i8 %686 to i32
  %688 = icmp sle i32 %687, 90
  br i1 %688, label %689, label %716

689:                                              ; preds = %685
  %690 = call i16** @__ctype_b_loc() #10
  %691 = load i16*, i16** %690, align 8
  %692 = load i8, i8* %6, align 1
  %693 = zext i8 %692 to i32
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i16, i16* %691, i64 %694
  %696 = load i16, i16* %695, align 2
  %697 = zext i16 %696 to i32
  %698 = and i32 %697, 256
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %710

700:                                              ; preds = %689
  %701 = load i8, i8* %6, align 1
  %702 = zext i8 %701 to i32
  %703 = call i32 @tolower(i32 %702) #7
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %704
  %706 = load i32, i32* %705, align 4
  %707 = load i8, i8* %6, align 1
  %708 = zext i8 %707 to i64
  %709 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %708
  store i32 %706, i32* %709, align 4
  br label %710

710:                                              ; preds = %700, %689
  br label %711

711:                                              ; preds = %710
  %712 = load i8, i8* %6, align 1
  %713 = zext i8 %712 to i32
  %714 = add nsw i32 %713, 1
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %6, align 1
  br label %685

716:                                              ; preds = %685
  br label %717

717:                                              ; preds = %716, %681
  %718 = load i32, i32* %11, align 4
  ret i32 %718
}

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @countline(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* @total_line, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @total_line, align 4
  br label %21

21:                                               ; preds = %18, %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @m_short(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pat_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %187, %3
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ule i8* %31, %32
  br i1 %33, label %34, label %188

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %37
  %39 = load %struct.pat_list*, %struct.pat_list** %38, align 8
  store %struct.pat_list* %39, %struct.pat_list** %9, align 8
  br label %40

40:                                               ; preds = %186, %34
  %41 = load %struct.pat_list*, %struct.pat_list** %9, align 8
  %42 = icmp ne %struct.pat_list* %41, null
  br i1 %42, label %43, label %187

43:                                               ; preds = %40
  %44 = load %struct.pat_list*, %struct.pat_list** %9, align 8
  %45 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.pat_list*, %struct.pat_list** %9, align 8
  %48 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %47, i32 0, i32 1
  %49 = load %struct.pat_list*, %struct.pat_list** %48, align 8
  store %struct.pat_list* %49, %struct.pat_list** %9, align 8
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %14, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %72, %43
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %63, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %51
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %8, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %182

83:                                               ; preds = %75
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp uge i8* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %206

88:                                               ; preds = %83
  %89 = load i32, i32* @num_of_matched, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @num_of_matched, align 4
  %91 = load i32, i32* @FILENAMEONLY, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @SILENT, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %88
  br label %206

97:                                               ; preds = %93
  %98 = load i32, i32* @COUNT, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %106, %100
  %102 = load i8*, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %4, align 8
  br label %101

109:                                              ; preds = %101
  br label %181

110:                                              ; preds = %97
  %111 = load i32, i32* @FNAME, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* @INVERSE, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %125, %118
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 -1
  store i8* %121, i8** %4, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp ne i32 %123, 10
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %119

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %133, %126
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 10
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = call i32 @putchar(i32 %136)
  br label %127

138:                                              ; preds = %127
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.86, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %180

140:                                              ; preds = %115
  br label %141

141:                                              ; preds = %147, %140
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 -1
  store i8* %143, i8** %4, align 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %145, 10
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %141

148:                                              ; preds = %141
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = icmp ult i8* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %148
  br label %154

154:                                              ; preds = %158, %153
  %155 = load i8*, i8** %13, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = icmp ult i8* %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i8*, i8** %13, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %13, align 8
  %161 = load i8, i8* %159, align 1
  %162 = zext i8 %161 to i32
  %163 = call i32 @putchar(i32 %162)
  br label %154

164:                                              ; preds = %154
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 @putchar(i32 10)
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %167, %164
  br label %170

170:                                              ; preds = %176, %169
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %4, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp ne i32 %174, 10
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %170

177:                                              ; preds = %170
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8* %179, i8** %13, align 8
  store i32 1, i32* %11, align 4
  br label %180

180:                                              ; preds = %177, %138
  br label %181

181:                                              ; preds = %180, %109
  br label %182

182:                                              ; preds = %181, %75
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %187

186:                                              ; preds = %182
  br label %40

187:                                              ; preds = %185, %40
  store i32 0, i32* %11, align 4
  br label %29

188:                                              ; preds = %29
  %189 = load i32, i32* @INVERSE, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  %192 = load i32, i32* @COUNT, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %191
  br label %195

195:                                              ; preds = %199, %194
  %196 = load i8*, i8** %13, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = icmp ule i8* %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i8*, i8** %13, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %13, align 8
  %202 = load i8, i8* %200, align 1
  %203 = zext i8 %202 to i32
  %204 = call i32 @putchar(i32 %203)
  br label %195

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %191, %188, %96, %87
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f_prep(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 15, i32* %8, align 4
  %9 = load i32, i32* @p_size, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %74, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LONG, align 4
  %15 = add nsw i32 1, %14
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  %37 = add i32 %27, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @LONG, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %17
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %49, %50
  %52 = add i32 %42, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %40, %17
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp sge i32 %58, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  %69 = trunc i32 %68 to i8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %71
  store i8 %69, i8* %72, align 1
  br label %73

73:                                               ; preds = %64, %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %12

77:                                               ; preds = %12
  %78 = load i32, i32* @SHORT, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 255, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %77
  store i32 0, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %102, %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 4
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %98, %99
  %101 = add i32 %89, %100
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %5, align 4
  br label %84

105:                                              ; preds = %84
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, 8191
  store i32 %107, i32* %7, align 4
  %108 = call noalias i8* @malloc(i64 16) #8
  %109 = bitcast i8* %108 to %struct.pat_list*
  store %struct.pat_list* %109, %struct.pat_list** @qt, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %112 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %114
  %116 = load %struct.pat_list*, %struct.pat_list** %115, align 8
  store %struct.pat_list* %116, %struct.pat_list** @pt, align 8
  %117 = load %struct.pat_list*, %struct.pat_list** @pt, align 8
  %118 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %119 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %118, i32 0, i32 1
  store %struct.pat_list* %117, %struct.pat_list** %119, align 8
  %120 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %122
  store %struct.pat_list* %120, %struct.pat_list** %123, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prepf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %5, align 4
  store i8* getelementptr inbounds ([320256 x i8], [320256 x i8]* @pat_spool, i64 0, i64 0), i8** %7, align 8
  store i32 15, i32* %8, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* getelementptr inbounds ([268192 x i8], [268192 x i8]* @buf, i64 0, i64 0), i64 %13
  %15 = call i64 @read(i32 %11, i8* %14, i64 8192)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 260000
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i32 260000)
  call void @exit(i32 2) #9
  unreachable

27:                                               ; preds = %18
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i64 0, i64 %30
  store i8 10, i8* %31, align 1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %77, %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %39
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @WORDBOUND, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 -128, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* @WHOLELINE, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  store i8 10, i8* %50, align 1
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %62, %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  %60 = zext i8 %58 to i32
  %61 = icmp ne i32 %60, 10
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %53

65:                                               ; preds = %53
  %66 = load i32, i32* @WORDBOUND, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 -128, i8* %69, align 1
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @WHOLELINE, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  store i8 10, i8* %75, align 1
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  store i8 0, i8* %78, align 1
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %32

82:                                               ; preds = %32
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 30000
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3.90, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0), i32 30000)
  call void @exit(i32 2) #9
  unreachable

88:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %96, %88
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 20
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %7, align 8
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %89

99:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %109, %99
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 256
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %107
  store i8 %105, i8* %108, align 1
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %100

112:                                              ; preds = %100
  %113 = load i32, i32* @NOUPPER, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  store i32 65, i32* %4, align 4
  br label %116

116:                                              ; preds = %127, %115
  %117 = load i32, i32* %4, align 4
  %118 = icmp sle i32 %117, 90
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 97
  %122 = sub nsw i32 %121, 65
  %123 = trunc i32 %122 to i8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %125
  store i8 %123, i8* %126, align 1
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %116

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %112
  %132 = load i32, i32* @WORDBOUND, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %153, %134
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %136, 128
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = call i16** @__ctype_b_loc() #10
  %140 = load i16*, i16** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i16, i16* %140, i64 %142
  %144 = load i16, i16* %143, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %150
  store i8 -128, i8* %151, align 1
  br label %152

152:                                              ; preds = %148, %138
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %135

156:                                              ; preds = %135
  br label %157

157:                                              ; preds = %156, %131
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %173, %157
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %159, 256
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32, i32* %8, align 4
  %168 = and i32 %166, %167
  %169 = trunc i32 %168 to i8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %171
  store i8 %169, i8* %172, align 1
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %158

176:                                              ; preds = %158
  %177 = load i32, i32* %5, align 4
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  store i32 256, i32* @p_size, align 4
  store i32 1, i32* %4, align 4
  br label %179

179:                                              ; preds = %204, %176
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %207

183:                                              ; preds = %179
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @strlen(i8* %187) #7
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %193
  store i8 %191, i8* %194, align 1
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %183
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @p_size, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* %5, align 4
  store i32 %202, i32* @p_size, align 4
  br label %203

203:                                              ; preds = %201, %197, %183
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %179

207:                                              ; preds = %179
  %208 = load i32, i32* @p_size, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.91, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

213:                                              ; preds = %207
  %214 = load i32, i32* %3, align 4
  %215 = icmp sgt i32 %214, 400
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* @p_size, align 4
  %218 = icmp sgt i32 %217, 2
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  store i32 1, i32* @LONG, align 4
  br label %220

220:                                              ; preds = %219, %216, %213
  %221 = load i32, i32* @p_size, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 1, i32* @SHORT, align 4
  br label %224

224:                                              ; preds = %223, %220
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %235, %224
  %226 = load i32, i32* %4, align 4
  %227 = icmp slt i32 %226, 4096
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = load i32, i32* @p_size, align 4
  %230 = sub nsw i32 %229, 2
  %231 = trunc i32 %230 to i8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %233
  store i8 %231, i8* %234, align 1
  br label %235

235:                                              ; preds = %228
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %225

238:                                              ; preds = %225
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %246, %238
  %240 = load i32, i32* %4, align 4
  %241 = icmp slt i32 %240, 8192
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %244
  store %struct.pat_list* null, %struct.pat_list** %245, align 8
  br label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %4, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %4, align 4
  br label %239

249:                                              ; preds = %239
  store i32 1, i32* %4, align 4
  br label %250

250:                                              ; preds = %260, %249
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %250
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %257
  %259 = load i8*, i8** %258, align 8
  call void @f_prep(i32 %255, i8* %259)
  br label %260

260:                                              ; preds = %254
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %4, align 4
  br label %250

263:                                              ; preds = %250
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @monkey1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.pat_list*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* @LONG, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @p_size, align 4
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %20, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %19, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %281, %3
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ule i8* %42, %43
  br i1 %44, label %45, label %287

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 4
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add i32 %53, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %45
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 4
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add i32 %66, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %64, %45
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %10, align 1
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %281

83:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ule i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 %89, 4
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = sub i64 0, %93
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add i32 %90, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %84

105:                                              ; preds = %84
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 8191
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %109
  %111 = load %struct.pat_list*, %struct.pat_list** %110, align 8
  store %struct.pat_list* %111, %struct.pat_list** %18, align 8
  br label %112

112:                                              ; preds = %272, %105
  %113 = load %struct.pat_list*, %struct.pat_list** %18, align 8
  %114 = icmp ne %struct.pat_list* %113, null
  br i1 %114, label %115, label %273

115:                                              ; preds = %112
  %116 = load %struct.pat_list*, %struct.pat_list** %18, align 8
  %117 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %14, align 4
  %119 = load %struct.pat_list*, %struct.pat_list** %18, align 8
  %120 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %119, i32 0, i32 1
  %121 = load %struct.pat_list*, %struct.pat_list** %120, align 8
  store %struct.pat_list* %121, %struct.pat_list** %18, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8* %126, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %148, %115
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8*, i8** %17, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %17, align 8
  %142 = load i8, i8* %140, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %139, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %127
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %127

151:                                              ; preds = %127
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %268

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load i32, i32* %12, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %267

163:                                              ; preds = %155
  %164 = load i8*, i8** %4, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = icmp ugt i8* %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %305

168:                                              ; preds = %163
  %169 = load i32, i32* @num_of_matched, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @num_of_matched, align 4
  %171 = load i32, i32* @FILENAMEONLY, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* @SILENT, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173, %168
  br label %305

177:                                              ; preds = %173
  store i32 1, i32* %16, align 4
  %178 = load i32, i32* @COUNT, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %186, %180
  %182 = load i8*, i8** %4, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp ne i32 %184, 10
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %4, align 8
  br label %181

189:                                              ; preds = %181
  br label %266

190:                                              ; preds = %177
  %191 = load i32, i32* @INVERSE, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %220, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @FNAME, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %193
  br label %199

199:                                              ; preds = %205, %198
  %200 = load i8*, i8** %4, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %4, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp ne i32 %203, 10
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %199

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %213, %206
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %4, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %211, 10
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i8*, i8** %4, align 8
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = call i32 @putchar(i32 %216)
  br label %207

218:                                              ; preds = %207
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.86, i64 0, i64 0))
  br label %265

220:                                              ; preds = %190
  %221 = load i32, i32* @FNAME, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %220
  br label %226

226:                                              ; preds = %232, %225
  %227 = load i8*, i8** %4, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 -1
  store i8* %228, i8** %4, align 8
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 10
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %226

233:                                              ; preds = %226
  %234 = load i8*, i8** %19, align 8
  %235 = load i8*, i8** %4, align 8
  %236 = icmp ult i8* %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i32 1, i32* %20, align 4
  br label %238

238:                                              ; preds = %237, %233
  br label %239

239:                                              ; preds = %243, %238
  %240 = load i8*, i8** %19, align 8
  %241 = load i8*, i8** %4, align 8
  %242 = icmp ult i8* %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %239
  %244 = load i8*, i8** %19, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %19, align 8
  %246 = load i8, i8* %244, align 1
  %247 = zext i8 %246 to i32
  %248 = call i32 @putchar(i32 %247)
  br label %239

249:                                              ; preds = %239
  %250 = load i32, i32* %20, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = call i32 @putchar(i32 10)
  store i32 0, i32* %20, align 4
  br label %254

254:                                              ; preds = %252, %249
  br label %255

255:                                              ; preds = %261, %254
  %256 = load i8*, i8** %4, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %4, align 8
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp ne i32 %259, 10
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %255

262:                                              ; preds = %255
  %263 = load i8*, i8** %4, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  store i8* %264, i8** %19, align 8
  br label %265

265:                                              ; preds = %262, %218
  br label %266

266:                                              ; preds = %265, %189
  br label %267

267:                                              ; preds = %266, %155
  br label %268

268:                                              ; preds = %267, %151
  %269 = load i32, i32* %16, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  br label %273

272:                                              ; preds = %268
  br label %112

273:                                              ; preds = %271, %112
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  store i8 1, i8* %10, align 1
  br label %280

277:                                              ; preds = %273
  store i32 0, i32* %16, align 4
  %278 = load i32, i32* %11, align 4
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %10, align 1
  br label %280

280:                                              ; preds = %277, %276
  br label %281

281:                                              ; preds = %280, %75
  %282 = load i8*, i8** %4, align 8
  %283 = load i8, i8* %10, align 1
  %284 = zext i8 %283 to i32
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  store i8* %286, i8** %4, align 8
  br label %41

287:                                              ; preds = %41
  %288 = load i32, i32* @INVERSE, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %287
  %291 = load i32, i32* @COUNT, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %305, label %293

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %298, %293
  %295 = load i8*, i8** %19, align 8
  %296 = load i8*, i8** %7, align 8
  %297 = icmp ule i8* %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = load i8*, i8** %19, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %19, align 8
  %301 = load i8, i8* %299, align 1
  %302 = zext i8 %301 to i32
  %303 = call i32 @putchar(i32 %302)
  br label %294

304:                                              ; preds = %294
  br label %305

305:                                              ; preds = %304, %290, %287, %176, %167
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mgrep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca [17408 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 10, i8* %3, align 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 1023
  store i8 10, i8* %10, align 1
  store i32 1023, i32* %7, align 4
  br label %11

11:                                               ; preds = %83, %1
  %12 = load i32, i32* %2, align 4
  %13 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 1024
  %15 = call i64 @read(i32 %12, i8* %14, i64 8192)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %11
  %19 = load i32, i32* @INVERSE, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @COUNT, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 1024
  %27 = load i32, i32* %6, align 4
  call void @countline(i8* %26, i32 %27)
  br label %28

28:                                               ; preds = %24, %21, %18
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 1024, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %46, %28
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %3, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 1024
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi i1 [ false, %32 ], [ %43, %41 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  br label %32

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load i8, i8* %3, align 1
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 %57
  store i8 %54, i8* %58, align 1
  %59 = load i32, i32* @SHORT, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  call void @m_short(i8* %62, i32 %63, i32 %64)
  br label %69

65:                                               ; preds = %49
  %66 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  call void @monkey1(i8* %66, i32 %67, i32 %68)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @FILENAMEONLY, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @num_of_matched, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.94, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %116

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 1024, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = call i8* @strncpy(i8* %87, i8* %91, i64 %93) #8
  br label %11

95:                                               ; preds = %11
  %96 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 1024
  store i8 10, i8* %96, align 16
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 %99
  store i8 10, i8* %100, align 1
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load i32, i32* @SHORT, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  call void @m_short(i8* %107, i32 %108, i32 %109)
  br label %114

110:                                              ; preds = %103
  %111 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  call void @monkey1(i8* %111, i32 %112, i32 %113)
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %115, %75
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @mk_leaf(i16 signext %0, i16 signext %1, i8 signext %2, %struct.ch_set* %3) #0 {
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca %struct.ch_set*, align 8
  %10 = alloca %struct.rnode*, align 8
  %11 = alloca %struct.anon*, align 8
  store i16 %0, i16* %6, align 2
  store i16 %1, i16* %7, align 2
  store i8 %2, i8* %8, align 1
  store %struct.ch_set* %3, %struct.ch_set** %9, align 8
  %12 = call noalias i8* @malloc(i64 16) #8
  %13 = bitcast i8* %12 to %struct.anon*
  store %struct.anon* %13, %struct.anon** %11, align 8
  %14 = call noalias i8* @malloc(i64 48) #8
  %15 = bitcast i8* %14 to %struct.rnode*
  store %struct.rnode* %15, %struct.rnode** %10, align 8
  %16 = load %struct.anon*, %struct.anon** %11, align 8
  %17 = icmp eq %struct.anon* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.rnode*, %struct.rnode** %10, align 8
  %20 = icmp eq %struct.rnode* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  store %struct.rnode* null, %struct.rnode** %5, align 8
  br label %65

22:                                               ; preds = %18
  %23 = load i16, i16* %7, align 2
  %24 = load %struct.anon*, %struct.anon** %11, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 1
  store i16 %23, i16* %25, align 4
  %26 = load i32, i32* @pos_cnt, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @pos_cnt, align 4
  %28 = load %struct.anon*, %struct.anon** %11, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i16, i16* %7, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.ch_set*, %struct.ch_set** %9, align 8
  %35 = load %struct.anon*, %struct.anon** %11, align 8
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  %37 = bitcast %union.anon.0* %36 to %struct.ch_set**
  store %struct.ch_set* %34, %struct.ch_set** %37, align 8
  br label %43

38:                                               ; preds = %22
  %39 = load i8, i8* %8, align 1
  %40 = load %struct.anon*, %struct.anon** %11, align 8
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2
  %42 = bitcast %union.anon.0* %41 to i8*
  store i8 %39, i8* %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i16, i16* %6, align 2
  %45 = load %struct.rnode*, %struct.rnode** %10, align 8
  %46 = getelementptr inbounds %struct.rnode, %struct.rnode* %45, i32 0, i32 0
  store i16 %44, i16* %46, align 8
  %47 = load %struct.anon*, %struct.anon** %11, align 8
  %48 = load %struct.rnode*, %struct.rnode** %10, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i32 0, i32 1
  %50 = bitcast %union.anon* %49 to %struct.anon**
  store %struct.anon* %47, %struct.anon** %50, align 8
  %51 = load %struct.rnode*, %struct.rnode** %10, align 8
  %52 = getelementptr inbounds %struct.rnode, %struct.rnode* %51, i32 0, i32 2
  store i16 0, i16* %52, align 8
  %53 = load %struct.anon*, %struct.anon** %11, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.pnode* @create_pos(i32 %55)
  %57 = load %struct.rnode*, %struct.rnode** %10, align 8
  %58 = getelementptr inbounds %struct.rnode, %struct.rnode* %57, i32 0, i32 3
  store %struct.pnode* %56, %struct.pnode** %58, align 8
  %59 = load %struct.rnode*, %struct.rnode** %10, align 8
  %60 = getelementptr inbounds %struct.rnode, %struct.rnode* %59, i32 0, i32 3
  %61 = load %struct.pnode*, %struct.pnode** %60, align 8
  %62 = load %struct.rnode*, %struct.rnode** %10, align 8
  %63 = getelementptr inbounds %struct.rnode, %struct.rnode* %62, i32 0, i32 4
  store %struct.pnode* %61, %struct.pnode** %63, align 8
  %64 = load %struct.rnode*, %struct.rnode** %10, align 8
  store %struct.rnode* %64, %struct.rnode** %5, align 8
  br label %65

65:                                               ; preds = %43, %21
  %66 = load %struct.rnode*, %struct.rnode** %5, align 8
  ret %struct.rnode* %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_cset(i8** %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.ch_set*, align 8
  %5 = alloca %struct.ch_set*, align 8
  %6 = alloca %struct.ch_set*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.anon.1*, align 8
  store i8** %0, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 93
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

21:                                               ; preds = %14
  %22 = call noalias i8* @malloc(i64 16) #8
  %23 = bitcast i8* %22 to %struct.ch_set*
  store %struct.ch_set* %23, %struct.ch_set** %5, align 8
  %24 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  store %struct.ch_set* %24, %struct.ch_set** %4, align 8
  br label %25

25:                                               ; preds = %113, %21
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 93
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %120

40:                                               ; preds = %37
  %41 = call noalias i8* @malloc(i64 2) #8
  %42 = bitcast i8* %41 to %struct.anon.1*
  store %struct.anon.1* %42, %struct.anon.1** %8, align 8
  %43 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %44 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  %45 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %44, i32 0, i32 0
  store %struct.anon.1* %43, %struct.anon.1** %45, align 8
  %46 = load i8**, i8*** %3, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %7, align 1
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

54:                                               ; preds = %40
  %55 = load i8, i8* %7, align 1
  %56 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %57 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %56, i32 0, i32 0
  store i8 %55, i8* %57, align 1
  %58 = load i8**, i8*** %3, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

64:                                               ; preds = %54
  %65 = load i8**, i8*** %3, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %108

70:                                               ; preds = %64
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %71, align 8
  %74 = load i8**, i8*** %3, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %70
  %80 = load i8**, i8*** %3, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 45
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = load i8**, i8*** %3, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 93
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load i8**, i8*** %3, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* %7, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %85, %79, %70
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

100:                                              ; preds = %91
  %101 = load i8**, i8*** %3, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %101, align 8
  %104 = load i8, i8* %102, align 1
  %105 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %105, i32 0, i32 1
  store i8 %104, i8* %106, align 1
  br label %107

107:                                              ; preds = %100
  br label %112

108:                                              ; preds = %64
  %109 = load i8, i8* %7, align 1
  %110 = load %struct.anon.1*, %struct.anon.1** %8, align 8
  %111 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %110, i32 0, i32 1
  store i8 %109, i8* %111, align 1
  br label %112

112:                                              ; preds = %108, %107
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  store %struct.ch_set* %114, %struct.ch_set** %6, align 8
  %115 = call noalias i8* @malloc(i64 16) #8
  %116 = bitcast i8* %115 to %struct.ch_set*
  store %struct.ch_set* %116, %struct.ch_set** %5, align 8
  %117 = load %struct.ch_set*, %struct.ch_set** %5, align 8
  %118 = load %struct.ch_set*, %struct.ch_set** %6, align 8
  %119 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %118, i32 0, i32 1
  store %struct.ch_set* %117, %struct.ch_set** %119, align 8
  br label %25

120:                                              ; preds = %37
  %121 = load i8**, i8*** %3, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 93
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.ch_set*, %struct.ch_set** %6, align 8
  %128 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %127, i32 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %128, align 8
  %129 = load %struct.ch_set*, %struct.ch_set** %4, align 8
  %130 = call %struct.rnode* @mk_leaf(i16 signext 1, i16 signext 1, i8 signext 0, %struct.ch_set* %129)
  store %struct.rnode* %130, %struct.rnode** %2, align 8
  br label %132

131:                                              ; preds = %120
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %132

132:                                              ; preds = %131, %126, %99, %63, %53, %20
  %133 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %133
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_wildcard() #0 {
  %1 = alloca %struct.ch_set*, align 8
  %2 = alloca %struct.anon.1*, align 8
  %3 = call noalias i8* @malloc(i64 2) #8
  %4 = bitcast i8* %3 to %struct.anon.1*
  store %struct.anon.1* %4, %struct.anon.1** %2, align 8
  %5 = load %struct.anon.1*, %struct.anon.1** %2, align 8
  %6 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %5, i32 0, i32 0
  store i8 1, i8* %6, align 1
  %7 = load %struct.anon.1*, %struct.anon.1** %2, align 8
  %8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %7, i32 0, i32 1
  store i8 127, i8* %8, align 1
  %9 = call noalias i8* @malloc(i64 16) #8
  %10 = bitcast i8* %9 to %struct.ch_set*
  store %struct.ch_set* %10, %struct.ch_set** %1, align 8
  %11 = load %struct.anon.1*, %struct.anon.1** %2, align 8
  %12 = load %struct.ch_set*, %struct.ch_set** %1, align 8
  %13 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %12, i32 0, i32 0
  store %struct.anon.1* %11, %struct.anon.1** %13, align 8
  %14 = load %struct.ch_set*, %struct.ch_set** %1, align 8
  %15 = getelementptr inbounds %struct.ch_set, %struct.ch_set* %14, i32 0, i32 1
  store %struct.ch_set* null, %struct.ch_set** %15, align 8
  %16 = load %struct.ch_set*, %struct.ch_set** %1, align 8
  %17 = call %struct.rnode* @mk_leaf(i16 signext 1, i16 signext 1, i8 signext 0, %struct.ch_set* %16)
  ret %struct.rnode* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_chlit(i8 signext %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load i8, i8* %3, align 1
  %10 = call %struct.rnode* @mk_leaf(i16 signext 1, i16 signext 0, i8 signext %9, %struct.ch_set* null)
  store %struct.rnode* %10, %struct.rnode** %2, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.anon.3* @get_token(i8** %0) #0 {
  %2 = alloca %struct.anon.3*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.anon.3*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.anon.3* null, %struct.anon.3** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp eq i8** %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

12:                                               ; preds = %7
  %13 = call noalias i8* @malloc(i64 16) #8
  %14 = bitcast i8* %13 to %struct.anon.3*
  store %struct.anon.3* %14, %struct.anon.3** %4, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %22 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %21, i32 0, i32 0
  store i16 0, i16* %22, align 8
  br label %94

23:                                               ; preds = %12
  %24 = load i8**, i8*** %3, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %75 [
    i32 46, label %28
    i32 91, label %40
    i32 40, label %56
    i32 41, label %59
    i32 42, label %62
    i32 124, label %65
    i32 63, label %68
    i32 92, label %71
  ]

28:                                               ; preds = %23
  %29 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %29, i32 0, i32 0
  store i16 1, i16* %30, align 8
  %31 = call %struct.rnode* @parse_wildcard()
  %32 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %33 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %32, i32 0, i32 1
  store %struct.rnode* %31, %struct.rnode** %33, align 8
  %34 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %34, i32 0, i32 1
  %36 = load %struct.rnode*, %struct.rnode** %35, align 8
  %37 = icmp eq %struct.rnode* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

39:                                               ; preds = %28
  br label %90

40:                                               ; preds = %23
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %41, align 8
  %44 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %45 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %44, i32 0, i32 0
  store i16 1, i16* %45, align 8
  %46 = load i8**, i8*** %3, align 8
  %47 = call %struct.rnode* @parse_cset(i8** %46)
  %48 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %49 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %48, i32 0, i32 1
  store %struct.rnode* %47, %struct.rnode** %49, align 8
  %50 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %51 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %50, i32 0, i32 1
  %52 = load %struct.rnode*, %struct.rnode** %51, align 8
  %53 = icmp eq %struct.rnode* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

55:                                               ; preds = %40
  br label %90

56:                                               ; preds = %23
  %57 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %57, i32 0, i32 0
  store i16 6, i16* %58, align 8
  br label %90

59:                                               ; preds = %23
  %60 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %61 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %60, i32 0, i32 0
  store i16 7, i16* %61, align 8
  br label %90

62:                                               ; preds = %23
  %63 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %64 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %63, i32 0, i32 0
  store i16 2, i16* %64, align 8
  br label %90

65:                                               ; preds = %23
  %66 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %67 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %66, i32 0, i32 0
  store i16 3, i16* %67, align 8
  br label %90

68:                                               ; preds = %23
  %69 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %70 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %69, i32 0, i32 0
  store i16 4, i16* %70, align 8
  br label %90

71:                                               ; preds = %23
  %72 = load i8**, i8*** %3, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  br label %75

75:                                               ; preds = %71, %23
  %76 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %77 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %76, i32 0, i32 0
  store i16 1, i16* %77, align 8
  %78 = load i8**, i8*** %3, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call %struct.rnode* @parse_chlit(i8 signext %80)
  %82 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %83 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %82, i32 0, i32 1
  store %struct.rnode* %81, %struct.rnode** %83, align 8
  %84 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  %85 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %84, i32 0, i32 1
  %86 = load %struct.rnode*, %struct.rnode** %85, align 8
  %87 = icmp eq %struct.rnode* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  store %struct.anon.3* null, %struct.anon.3** %2, align 8
  br label %96

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %68, %65, %62, %59, %56, %55, %39
  %91 = load i8**, i8*** %3, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  br label %94

94:                                               ; preds = %90, %20
  %95 = load %struct.anon.3*, %struct.anon.3** %4, align 8
  store %struct.anon.3* %95, %struct.anon.3** %2, align 8
  br label %96

96:                                               ; preds = %94, %88, %54, %38, %11
  %97 = load %struct.anon.3*, %struct.anon.3** %2, align 8
  ret %struct.anon.3* %97
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @cat2(%struct.snode** %0) #0 {
  %2 = alloca %struct.snode*, align 8
  %3 = alloca %struct.snode**, align 8
  %4 = alloca %struct.rnode*, align 8
  store %struct.snode** %0, %struct.snode*** %3, align 8
  %5 = load %struct.snode**, %struct.snode*** %3, align 8
  %6 = icmp eq %struct.snode** %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.snode* null, %struct.snode** %2, align 8
  br label %149

8:                                                ; preds = %1
  %9 = load %struct.snode**, %struct.snode*** %3, align 8
  %10 = load %struct.snode*, %struct.snode** %9, align 8
  %11 = icmp eq %struct.snode* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load %struct.snode**, %struct.snode*** %3, align 8
  %14 = load %struct.snode*, %struct.snode** %13, align 8
  %15 = getelementptr inbounds %struct.snode, %struct.snode* %14, i32 0, i32 2
  %16 = load %struct.snode*, %struct.snode** %15, align 8
  %17 = icmp eq %struct.snode* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %8
  %19 = load %struct.snode**, %struct.snode*** %3, align 8
  %20 = load %struct.snode*, %struct.snode** %19, align 8
  store %struct.snode* %20, %struct.snode** %2, align 8
  br label %149

21:                                               ; preds = %12
  %22 = call noalias i8* @malloc(i64 48) #8
  %23 = bitcast i8* %22 to %struct.rnode*
  store %struct.rnode* %23, %struct.rnode** %4, align 8
  %24 = load %struct.rnode*, %struct.rnode** %4, align 8
  %25 = icmp eq %struct.rnode* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.snode* null, %struct.snode** %2, align 8
  br label %149

27:                                               ; preds = %21
  %28 = load %struct.rnode*, %struct.rnode** %4, align 8
  %29 = getelementptr inbounds %struct.rnode, %struct.rnode* %28, i32 0, i32 0
  store i16 5, i16* %29, align 8
  %30 = load %struct.snode**, %struct.snode*** %3, align 8
  %31 = call %struct.rnode* @Pop(%struct.snode** %30)
  %32 = load %struct.rnode*, %struct.rnode** %4, align 8
  %33 = getelementptr inbounds %struct.rnode, %struct.rnode* %32, i32 0, i32 1
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 1
  store %struct.rnode* %31, %struct.rnode** %35, align 8
  %36 = load %struct.snode**, %struct.snode*** %3, align 8
  %37 = call %struct.rnode* @Pop(%struct.snode** %36)
  %38 = load %struct.rnode*, %struct.rnode** %4, align 8
  %39 = getelementptr inbounds %struct.rnode, %struct.rnode* %38, i32 0, i32 1
  %40 = bitcast %union.anon* %39 to %struct.anon.2*
  %41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %40, i32 0, i32 0
  store %struct.rnode* %37, %struct.rnode** %41, align 8
  %42 = load %struct.snode**, %struct.snode*** %3, align 8
  %43 = load %struct.rnode*, %struct.rnode** %4, align 8
  %44 = call %struct.snode* @Push(%struct.snode** %42, %struct.rnode* %43)
  %45 = icmp eq %struct.snode* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store %struct.snode* null, %struct.snode** %2, align 8
  br label %149

47:                                               ; preds = %27
  %48 = load %struct.rnode*, %struct.rnode** %4, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i32 0, i32 1
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0
  %52 = load %struct.rnode*, %struct.rnode** %51, align 8
  %53 = getelementptr inbounds %struct.rnode, %struct.rnode* %52, i32 0, i32 2
  %54 = load i16, i16* %53, align 8
  %55 = sext i16 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.rnode*, %struct.rnode** %4, align 8
  %59 = getelementptr inbounds %struct.rnode, %struct.rnode* %58, i32 0, i32 1
  %60 = bitcast %union.anon* %59 to %struct.anon.2*
  %61 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %60, i32 0, i32 1
  %62 = load %struct.rnode*, %struct.rnode** %61, align 8
  %63 = getelementptr inbounds %struct.rnode, %struct.rnode* %62, i32 0, i32 2
  %64 = load i16, i16* %63, align 8
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %57, %47
  %68 = phi i1 [ false, %47 ], [ %66, %57 ]
  %69 = zext i1 %68 to i32
  %70 = trunc i32 %69 to i16
  %71 = load %struct.rnode*, %struct.rnode** %4, align 8
  %72 = getelementptr inbounds %struct.rnode, %struct.rnode* %71, i32 0, i32 2
  store i16 %70, i16* %72, align 8
  %73 = load %struct.rnode*, %struct.rnode** %4, align 8
  %74 = getelementptr inbounds %struct.rnode, %struct.rnode* %73, i32 0, i32 1
  %75 = bitcast %union.anon* %74 to %struct.anon.2*
  %76 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %75, i32 0, i32 0
  %77 = load %struct.rnode*, %struct.rnode** %76, align 8
  %78 = getelementptr inbounds %struct.rnode, %struct.rnode* %77, i32 0, i32 2
  %79 = load i16, i16* %78, align 8
  %80 = icmp ne i16 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %67
  %82 = load %struct.rnode*, %struct.rnode** %4, align 8
  %83 = getelementptr inbounds %struct.rnode, %struct.rnode* %82, i32 0, i32 1
  %84 = bitcast %union.anon* %83 to %struct.anon.2*
  %85 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %84, i32 0, i32 0
  %86 = load %struct.rnode*, %struct.rnode** %85, align 8
  %87 = getelementptr inbounds %struct.rnode, %struct.rnode* %86, i32 0, i32 3
  %88 = load %struct.pnode*, %struct.pnode** %87, align 8
  %89 = load %struct.rnode*, %struct.rnode** %4, align 8
  %90 = getelementptr inbounds %struct.rnode, %struct.rnode* %89, i32 0, i32 1
  %91 = bitcast %union.anon* %90 to %struct.anon.2*
  %92 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %91, i32 0, i32 1
  %93 = load %struct.rnode*, %struct.rnode** %92, align 8
  %94 = getelementptr inbounds %struct.rnode, %struct.rnode* %93, i32 0, i32 3
  %95 = load %struct.pnode*, %struct.pnode** %94, align 8
  %96 = call %struct.pnode* @pset_union(%struct.pnode* %88, %struct.pnode* %95)
  %97 = load %struct.rnode*, %struct.rnode** %4, align 8
  %98 = getelementptr inbounds %struct.rnode, %struct.rnode* %97, i32 0, i32 3
  store %struct.pnode* %96, %struct.pnode** %98, align 8
  br label %109

99:                                               ; preds = %67
  %100 = load %struct.rnode*, %struct.rnode** %4, align 8
  %101 = getelementptr inbounds %struct.rnode, %struct.rnode* %100, i32 0, i32 1
  %102 = bitcast %union.anon* %101 to %struct.anon.2*
  %103 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %102, i32 0, i32 0
  %104 = load %struct.rnode*, %struct.rnode** %103, align 8
  %105 = getelementptr inbounds %struct.rnode, %struct.rnode* %104, i32 0, i32 3
  %106 = load %struct.pnode*, %struct.pnode** %105, align 8
  %107 = load %struct.rnode*, %struct.rnode** %4, align 8
  %108 = getelementptr inbounds %struct.rnode, %struct.rnode* %107, i32 0, i32 3
  store %struct.pnode* %106, %struct.pnode** %108, align 8
  br label %109

109:                                              ; preds = %99, %81
  %110 = load %struct.rnode*, %struct.rnode** %4, align 8
  %111 = getelementptr inbounds %struct.rnode, %struct.rnode* %110, i32 0, i32 1
  %112 = bitcast %union.anon* %111 to %struct.anon.2*
  %113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %112, i32 0, i32 1
  %114 = load %struct.rnode*, %struct.rnode** %113, align 8
  %115 = getelementptr inbounds %struct.rnode, %struct.rnode* %114, i32 0, i32 2
  %116 = load i16, i16* %115, align 8
  %117 = icmp ne i16 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %109
  %119 = load %struct.rnode*, %struct.rnode** %4, align 8
  %120 = getelementptr inbounds %struct.rnode, %struct.rnode* %119, i32 0, i32 1
  %121 = bitcast %union.anon* %120 to %struct.anon.2*
  %122 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %121, i32 0, i32 0
  %123 = load %struct.rnode*, %struct.rnode** %122, align 8
  %124 = getelementptr inbounds %struct.rnode, %struct.rnode* %123, i32 0, i32 4
  %125 = load %struct.pnode*, %struct.pnode** %124, align 8
  %126 = load %struct.rnode*, %struct.rnode** %4, align 8
  %127 = getelementptr inbounds %struct.rnode, %struct.rnode* %126, i32 0, i32 1
  %128 = bitcast %union.anon* %127 to %struct.anon.2*
  %129 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %128, i32 0, i32 1
  %130 = load %struct.rnode*, %struct.rnode** %129, align 8
  %131 = getelementptr inbounds %struct.rnode, %struct.rnode* %130, i32 0, i32 4
  %132 = load %struct.pnode*, %struct.pnode** %131, align 8
  %133 = call %struct.pnode* @pset_union(%struct.pnode* %125, %struct.pnode* %132)
  %134 = load %struct.rnode*, %struct.rnode** %4, align 8
  %135 = getelementptr inbounds %struct.rnode, %struct.rnode* %134, i32 0, i32 4
  store %struct.pnode* %133, %struct.pnode** %135, align 8
  br label %146

136:                                              ; preds = %109
  %137 = load %struct.rnode*, %struct.rnode** %4, align 8
  %138 = getelementptr inbounds %struct.rnode, %struct.rnode* %137, i32 0, i32 1
  %139 = bitcast %union.anon* %138 to %struct.anon.2*
  %140 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %139, i32 0, i32 1
  %141 = load %struct.rnode*, %struct.rnode** %140, align 8
  %142 = getelementptr inbounds %struct.rnode, %struct.rnode* %141, i32 0, i32 4
  %143 = load %struct.pnode*, %struct.pnode** %142, align 8
  %144 = load %struct.rnode*, %struct.rnode** %4, align 8
  %145 = getelementptr inbounds %struct.rnode, %struct.rnode* %144, i32 0, i32 4
  store %struct.pnode* %143, %struct.pnode** %145, align 8
  br label %146

146:                                              ; preds = %136, %118
  %147 = load %struct.snode**, %struct.snode*** %3, align 8
  %148 = load %struct.snode*, %struct.snode** %147, align 8
  store %struct.snode* %148, %struct.snode** %2, align 8
  br label %149

149:                                              ; preds = %146, %46, %26, %18, %7
  %150 = load %struct.snode*, %struct.snode** %2, align 8
  ret %struct.snode* %150
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @wrap(%struct.snode** %0, i16 signext %1) #0 {
  %3 = alloca %struct.snode*, align 8
  %4 = alloca %struct.snode**, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.rnode*, align 8
  store %struct.snode** %0, %struct.snode*** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.snode**, %struct.snode*** %4, align 8
  %8 = icmp eq %struct.snode** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.snode**, %struct.snode*** %4, align 8
  %11 = load %struct.snode*, %struct.snode** %10, align 8
  %12 = icmp eq %struct.snode* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %55

14:                                               ; preds = %9
  %15 = call noalias i8* @malloc(i64 48) #8
  %16 = bitcast i8* %15 to %struct.rnode*
  store %struct.rnode* %16, %struct.rnode** %6, align 8
  %17 = load %struct.rnode*, %struct.rnode** %6, align 8
  %18 = icmp eq %struct.rnode* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %55

20:                                               ; preds = %14
  %21 = load i16, i16* %5, align 2
  %22 = load %struct.rnode*, %struct.rnode** %6, align 8
  %23 = getelementptr inbounds %struct.rnode, %struct.rnode* %22, i32 0, i32 0
  store i16 %21, i16* %23, align 8
  %24 = load %struct.snode**, %struct.snode*** %4, align 8
  %25 = call %struct.rnode* @Pop(%struct.snode** %24)
  %26 = load %struct.rnode*, %struct.rnode** %6, align 8
  %27 = getelementptr inbounds %struct.rnode, %struct.rnode* %26, i32 0, i32 1
  %28 = bitcast %union.anon* %27 to %struct.rnode**
  store %struct.rnode* %25, %struct.rnode** %28, align 8
  %29 = load %struct.snode**, %struct.snode*** %4, align 8
  %30 = load %struct.rnode*, %struct.rnode** %6, align 8
  %31 = call %struct.snode* @Push(%struct.snode** %29, %struct.rnode* %30)
  %32 = icmp eq %struct.snode* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %55

34:                                               ; preds = %20
  %35 = load %struct.rnode*, %struct.rnode** %6, align 8
  %36 = getelementptr inbounds %struct.rnode, %struct.rnode* %35, i32 0, i32 2
  store i16 1, i16* %36, align 8
  %37 = load %struct.rnode*, %struct.rnode** %6, align 8
  %38 = getelementptr inbounds %struct.rnode, %struct.rnode* %37, i32 0, i32 1
  %39 = bitcast %union.anon* %38 to %struct.rnode**
  %40 = load %struct.rnode*, %struct.rnode** %39, align 8
  %41 = getelementptr inbounds %struct.rnode, %struct.rnode* %40, i32 0, i32 3
  %42 = load %struct.pnode*, %struct.pnode** %41, align 8
  %43 = load %struct.rnode*, %struct.rnode** %6, align 8
  %44 = getelementptr inbounds %struct.rnode, %struct.rnode* %43, i32 0, i32 3
  store %struct.pnode* %42, %struct.pnode** %44, align 8
  %45 = load %struct.rnode*, %struct.rnode** %6, align 8
  %46 = getelementptr inbounds %struct.rnode, %struct.rnode* %45, i32 0, i32 1
  %47 = bitcast %union.anon* %46 to %struct.rnode**
  %48 = load %struct.rnode*, %struct.rnode** %47, align 8
  %49 = getelementptr inbounds %struct.rnode, %struct.rnode* %48, i32 0, i32 4
  %50 = load %struct.pnode*, %struct.pnode** %49, align 8
  %51 = load %struct.rnode*, %struct.rnode** %6, align 8
  %52 = getelementptr inbounds %struct.rnode, %struct.rnode* %51, i32 0, i32 4
  store %struct.pnode* %50, %struct.pnode** %52, align 8
  %53 = load %struct.snode**, %struct.snode*** %4, align 8
  %54 = load %struct.snode*, %struct.snode** %53, align 8
  store %struct.snode* %54, %struct.snode** %3, align 8
  br label %55

55:                                               ; preds = %34, %33, %19, %13
  %56 = load %struct.snode*, %struct.snode** %3, align 8
  ret %struct.snode* %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @mk_alt(%struct.snode** %0, %struct.rnode* %1) #0 {
  %3 = alloca %struct.snode*, align 8
  %4 = alloca %struct.snode**, align 8
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca %struct.rnode*, align 8
  store %struct.snode** %0, %struct.snode*** %4, align 8
  store %struct.rnode* %1, %struct.rnode** %5, align 8
  %7 = load %struct.snode**, %struct.snode*** %4, align 8
  %8 = icmp eq %struct.snode** %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.snode**, %struct.snode*** %4, align 8
  %11 = load %struct.snode*, %struct.snode** %10, align 8
  %12 = icmp eq %struct.snode* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.rnode*, %struct.rnode** %5, align 8
  %15 = icmp eq %struct.rnode* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %9, %2
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %104

17:                                               ; preds = %13
  %18 = call noalias i8* @malloc(i64 48) #8
  %19 = bitcast i8* %18 to %struct.rnode*
  store %struct.rnode* %19, %struct.rnode** %6, align 8
  %20 = load %struct.rnode*, %struct.rnode** %6, align 8
  %21 = icmp eq %struct.rnode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %104

23:                                               ; preds = %17
  %24 = load %struct.rnode*, %struct.rnode** %6, align 8
  %25 = getelementptr inbounds %struct.rnode, %struct.rnode* %24, i32 0, i32 0
  store i16 3, i16* %25, align 8
  %26 = load %struct.snode**, %struct.snode*** %4, align 8
  %27 = call %struct.rnode* @Pop(%struct.snode** %26)
  %28 = load %struct.rnode*, %struct.rnode** %6, align 8
  %29 = getelementptr inbounds %struct.rnode, %struct.rnode* %28, i32 0, i32 1
  %30 = bitcast %union.anon* %29 to %struct.anon.2*
  %31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0
  store %struct.rnode* %27, %struct.rnode** %31, align 8
  %32 = load %struct.rnode*, %struct.rnode** %5, align 8
  %33 = load %struct.rnode*, %struct.rnode** %6, align 8
  %34 = getelementptr inbounds %struct.rnode, %struct.rnode* %33, i32 0, i32 1
  %35 = bitcast %union.anon* %34 to %struct.anon.2*
  %36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %35, i32 0, i32 1
  store %struct.rnode* %32, %struct.rnode** %36, align 8
  %37 = load %struct.snode**, %struct.snode*** %4, align 8
  %38 = load %struct.rnode*, %struct.rnode** %6, align 8
  %39 = call %struct.snode* @Push(%struct.snode** %37, %struct.rnode* %38)
  %40 = icmp eq %struct.snode* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %104

42:                                               ; preds = %23
  %43 = load %struct.rnode*, %struct.rnode** %6, align 8
  %44 = getelementptr inbounds %struct.rnode, %struct.rnode* %43, i32 0, i32 1
  %45 = bitcast %union.anon* %44 to %struct.anon.2*
  %46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %45, i32 0, i32 0
  %47 = load %struct.rnode*, %struct.rnode** %46, align 8
  %48 = getelementptr inbounds %struct.rnode, %struct.rnode* %47, i32 0, i32 2
  %49 = load i16, i16* %48, align 8
  %50 = sext i16 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %42
  %53 = load %struct.rnode*, %struct.rnode** %6, align 8
  %54 = getelementptr inbounds %struct.rnode, %struct.rnode* %53, i32 0, i32 1
  %55 = bitcast %union.anon* %54 to %struct.anon.2*
  %56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %55, i32 0, i32 1
  %57 = load %struct.rnode*, %struct.rnode** %56, align 8
  %58 = getelementptr inbounds %struct.rnode, %struct.rnode* %57, i32 0, i32 2
  %59 = load i16, i16* %58, align 8
  %60 = sext i16 %59 to i32
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %52, %42
  %63 = phi i1 [ true, %42 ], [ %61, %52 ]
  %64 = zext i1 %63 to i32
  %65 = trunc i32 %64 to i16
  %66 = load %struct.rnode*, %struct.rnode** %6, align 8
  %67 = getelementptr inbounds %struct.rnode, %struct.rnode* %66, i32 0, i32 2
  store i16 %65, i16* %67, align 8
  %68 = load %struct.rnode*, %struct.rnode** %6, align 8
  %69 = getelementptr inbounds %struct.rnode, %struct.rnode* %68, i32 0, i32 1
  %70 = bitcast %union.anon* %69 to %struct.anon.2*
  %71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %72 = load %struct.rnode*, %struct.rnode** %71, align 8
  %73 = getelementptr inbounds %struct.rnode, %struct.rnode* %72, i32 0, i32 3
  %74 = load %struct.pnode*, %struct.pnode** %73, align 8
  %75 = load %struct.rnode*, %struct.rnode** %6, align 8
  %76 = getelementptr inbounds %struct.rnode, %struct.rnode* %75, i32 0, i32 1
  %77 = bitcast %union.anon* %76 to %struct.anon.2*
  %78 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %77, i32 0, i32 1
  %79 = load %struct.rnode*, %struct.rnode** %78, align 8
  %80 = getelementptr inbounds %struct.rnode, %struct.rnode* %79, i32 0, i32 3
  %81 = load %struct.pnode*, %struct.pnode** %80, align 8
  %82 = call %struct.pnode* @pset_union(%struct.pnode* %74, %struct.pnode* %81)
  %83 = load %struct.rnode*, %struct.rnode** %6, align 8
  %84 = getelementptr inbounds %struct.rnode, %struct.rnode* %83, i32 0, i32 3
  store %struct.pnode* %82, %struct.pnode** %84, align 8
  %85 = load %struct.rnode*, %struct.rnode** %6, align 8
  %86 = getelementptr inbounds %struct.rnode, %struct.rnode* %85, i32 0, i32 1
  %87 = bitcast %union.anon* %86 to %struct.anon.2*
  %88 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %87, i32 0, i32 0
  %89 = load %struct.rnode*, %struct.rnode** %88, align 8
  %90 = getelementptr inbounds %struct.rnode, %struct.rnode* %89, i32 0, i32 4
  %91 = load %struct.pnode*, %struct.pnode** %90, align 8
  %92 = load %struct.rnode*, %struct.rnode** %6, align 8
  %93 = getelementptr inbounds %struct.rnode, %struct.rnode* %92, i32 0, i32 1
  %94 = bitcast %union.anon* %93 to %struct.anon.2*
  %95 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %94, i32 0, i32 1
  %96 = load %struct.rnode*, %struct.rnode** %95, align 8
  %97 = getelementptr inbounds %struct.rnode, %struct.rnode* %96, i32 0, i32 4
  %98 = load %struct.pnode*, %struct.pnode** %97, align 8
  %99 = call %struct.pnode* @pset_union(%struct.pnode* %91, %struct.pnode* %98)
  %100 = load %struct.rnode*, %struct.rnode** %6, align 8
  %101 = getelementptr inbounds %struct.rnode, %struct.rnode* %100, i32 0, i32 4
  store %struct.pnode* %99, %struct.pnode** %101, align 8
  %102 = load %struct.snode**, %struct.snode*** %4, align 8
  %103 = load %struct.snode*, %struct.snode** %102, align 8
  store %struct.snode* %103, %struct.snode** %3, align 8
  br label %104

104:                                              ; preds = %62, %41, %22, %16
  %105 = load %struct.snode*, %struct.snode** %3, align 8
  ret %struct.snode* %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse_re(i8** %0, i16 signext %1) #0 {
  %3 = alloca %struct.rnode*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.snode*, align 8
  %7 = alloca %struct.snode*, align 8
  %8 = alloca %struct.anon.3*, align 8
  %9 = alloca %struct.rnode*, align 8
  store i8** %0, i8*** %4, align 8
  store i16 %1, i16* %5, align 2
  store %struct.snode* null, %struct.snode** %6, align 8
  store %struct.rnode* null, %struct.rnode** %9, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %157, %17
  %19 = load i8**, i8*** %4, align 8
  %20 = call %struct.anon.3* @get_token(i8** %19)
  store %struct.anon.3* %20, %struct.anon.3** %8, align 8
  %21 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %22 = icmp eq %struct.anon.3* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

24:                                               ; preds = %18
  %25 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %26 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 8
  %28 = sext i16 %27 to i32
  switch i32 %28, label %151 [
    i32 7, label %29
    i32 0, label %33
    i32 6, label %45
    i32 2, label %90
    i32 4, label %95
    i32 3, label %100
    i32 1, label %117
  ]

29:                                               ; preds = %24
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i16, i16* %5, align 2
  %35 = sext i16 %34 to i32
  %36 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %37 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 8
  %39 = sext i16 %38 to i32
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = call %struct.snode* @cat2(%struct.snode** %6)
  %43 = call %struct.rnode* @Top(%struct.snode* %42)
  store %struct.rnode* %43, %struct.rnode** %3, align 8
  br label %158

44:                                               ; preds = %33
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

45:                                               ; preds = %24
  %46 = load i8**, i8*** %4, align 8
  %47 = call %struct.rnode* @parse_re(i8** %46, i16 signext 7)
  store %struct.rnode* %47, %struct.rnode** %9, align 8
  %48 = load %struct.rnode*, %struct.rnode** %9, align 8
  %49 = call %struct.snode* @Push(%struct.snode** %6, %struct.rnode* %48)
  %50 = icmp eq %struct.snode* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

52:                                               ; preds = %45
  %53 = load i8**, i8*** %4, align 8
  %54 = call %struct.anon.3* @get_token(i8** %53)
  %55 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %54, i32 0, i32 0
  %56 = load i16, i16* %55, align 8
  %57 = sext i16 %56 to i32
  %58 = icmp ne i32 %57, 7
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load %struct.rnode*, %struct.rnode** %9, align 8
  %61 = icmp eq %struct.rnode* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %52
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

63:                                               ; preds = %59
  %64 = load %struct.snode*, %struct.snode** %6, align 8
  %65 = call i32 @Size(%struct.snode* %64)
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load %struct.snode*, %struct.snode** %6, align 8
  %69 = getelementptr inbounds %struct.snode, %struct.snode* %68, i32 0, i32 2
  %70 = load %struct.snode*, %struct.snode** %69, align 8
  store %struct.snode* %70, %struct.snode** %7, align 8
  %71 = call %struct.snode* @cat2(%struct.snode** %7)
  %72 = load %struct.snode*, %struct.snode** %6, align 8
  %73 = getelementptr inbounds %struct.snode, %struct.snode* %72, i32 0, i32 2
  store %struct.snode* %71, %struct.snode** %73, align 8
  %74 = load %struct.snode*, %struct.snode** %6, align 8
  %75 = getelementptr inbounds %struct.snode, %struct.snode* %74, i32 0, i32 2
  %76 = load %struct.snode*, %struct.snode** %75, align 8
  %77 = icmp eq %struct.snode* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

79:                                               ; preds = %67
  %80 = load %struct.snode*, %struct.snode** %6, align 8
  %81 = getelementptr inbounds %struct.snode, %struct.snode* %80, i32 0, i32 2
  %82 = load %struct.snode*, %struct.snode** %81, align 8
  %83 = getelementptr inbounds %struct.snode, %struct.snode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = load %struct.snode*, %struct.snode** %6, align 8
  %87 = getelementptr inbounds %struct.snode, %struct.snode* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %63
  br label %157

90:                                               ; preds = %24
  %91 = call %struct.snode* @wrap(%struct.snode** %6, i16 signext 2)
  %92 = icmp eq %struct.snode* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

94:                                               ; preds = %90
  br label %157

95:                                               ; preds = %24
  %96 = call %struct.snode* @wrap(%struct.snode** %6, i16 signext 4)
  %97 = icmp eq %struct.snode* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

99:                                               ; preds = %95
  br label %157

100:                                              ; preds = %24
  %101 = call %struct.snode* @cat2(%struct.snode** %6)
  %102 = icmp eq %struct.snode* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

104:                                              ; preds = %100
  %105 = load i8**, i8*** %4, align 8
  %106 = load i16, i16* %5, align 2
  %107 = call %struct.rnode* @parse_re(i8** %105, i16 signext %106)
  store %struct.rnode* %107, %struct.rnode** %9, align 8
  %108 = load %struct.rnode*, %struct.rnode** %9, align 8
  %109 = icmp eq %struct.rnode* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

111:                                              ; preds = %104
  %112 = load %struct.rnode*, %struct.rnode** %9, align 8
  %113 = call %struct.snode* @mk_alt(%struct.snode** %6, %struct.rnode* %112)
  %114 = icmp eq %struct.snode* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

116:                                              ; preds = %111
  br label %157

117:                                              ; preds = %24
  %118 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %119 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %118, i32 0, i32 1
  %120 = load %struct.rnode*, %struct.rnode** %119, align 8
  %121 = call %struct.snode* @Push(%struct.snode** %6, %struct.rnode* %120)
  %122 = icmp eq %struct.snode* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

124:                                              ; preds = %117
  %125 = load %struct.snode*, %struct.snode** %6, align 8
  %126 = call i32 @Size(%struct.snode* %125)
  %127 = icmp sgt i32 %126, 2
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load %struct.snode*, %struct.snode** %6, align 8
  %130 = getelementptr inbounds %struct.snode, %struct.snode* %129, i32 0, i32 2
  %131 = load %struct.snode*, %struct.snode** %130, align 8
  store %struct.snode* %131, %struct.snode** %7, align 8
  %132 = call %struct.snode* @cat2(%struct.snode** %7)
  %133 = load %struct.snode*, %struct.snode** %6, align 8
  %134 = getelementptr inbounds %struct.snode, %struct.snode* %133, i32 0, i32 2
  store %struct.snode* %132, %struct.snode** %134, align 8
  %135 = load %struct.snode*, %struct.snode** %6, align 8
  %136 = getelementptr inbounds %struct.snode, %struct.snode* %135, i32 0, i32 2
  %137 = load %struct.snode*, %struct.snode** %136, align 8
  %138 = icmp eq %struct.snode* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  store %struct.rnode* null, %struct.rnode** %3, align 8
  br label %158

140:                                              ; preds = %128
  %141 = load %struct.snode*, %struct.snode** %6, align 8
  %142 = getelementptr inbounds %struct.snode, %struct.snode* %141, i32 0, i32 2
  %143 = load %struct.snode*, %struct.snode** %142, align 8
  %144 = getelementptr inbounds %struct.snode, %struct.snode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  %147 = load %struct.snode*, %struct.snode** %6, align 8
  %148 = getelementptr inbounds %struct.snode, %struct.snode* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %124
  br label %157

151:                                              ; preds = %24
  %152 = load %struct.anon.3*, %struct.anon.3** %8, align 8
  %153 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %152, i32 0, i32 0
  %154 = load i16, i16* %153, align 8
  %155 = sext i16 %154 to i32
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.97, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %151, %150, %116, %99, %94, %89
  br label %18

158:                                              ; preds = %139, %123, %115, %110, %103, %98, %93, %78, %62, %51, %44, %41, %23, %16
  %159 = load %struct.rnode*, %struct.rnode** %3, align 8
  ret %struct.rnode* %159
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @parse(i8* %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rnode*, align 8
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca %struct.snode*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.snode* null, %struct.snode** %6, align 8
  %7 = call %struct.rnode* @parse_re(i8** %3, i16 signext 0)
  store %struct.rnode* %7, %struct.rnode** %4, align 8
  %8 = load %struct.rnode*, %struct.rnode** %4, align 8
  %9 = icmp eq %struct.rnode* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.rnode*, %struct.rnode** %4, align 8
  %12 = call %struct.snode* @Push(%struct.snode** %6, %struct.rnode* %11)
  %13 = icmp eq %struct.snode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %29

15:                                               ; preds = %10
  %16 = call %struct.rnode* @mk_leaf(i16 signext 0, i16 signext 0, i8 signext 0, %struct.ch_set* null)
  store %struct.rnode* %16, %struct.rnode** %5, align 8
  %17 = load %struct.rnode*, %struct.rnode** %5, align 8
  %18 = icmp eq %struct.rnode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.rnode*, %struct.rnode** %5, align 8
  %21 = call %struct.snode* @Push(%struct.snode** %6, %struct.rnode* %20)
  %22 = icmp eq %struct.snode* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @pos_cnt, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @pos_cnt, align 4
  store i32 %26, i32* @final_pos, align 4
  %27 = call %struct.snode* @cat2(%struct.snode** %6)
  %28 = call %struct.rnode* @Top(%struct.snode* %27)
  store %struct.rnode* %28, %struct.rnode** %2, align 8
  br label %29

29:                                               ; preds = %24, %23, %14
  %30 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @preprocess(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* %19) #7
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %56, %2
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %55

37:                                               ; preds = %26
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 124
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 42
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %37
  store i32 1, i32* @REGEX, align 4
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @strlen(i8* %60) #7
  %62 = load i8*, i8** %3, align 8
  %63 = call i64 @strlen(i8* %62) #7
  %64 = mul i64 2, %63
  %65 = add i64 %61, %64
  %66 = call noalias i8* @malloc(i64 %65) #8
  store i8* %66, i8** %6, align 8
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %68 = load i8*, i8** %3, align 8
  %69 = call i8* @strcpy(i8* %67, i8* %68) #8
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %71 = call i64 @strlen(i8* %70) #7
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* @WHOLELINE, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %59
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %78
  store i8 -10, i8* %79, align 1
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %82
  store i8 -17, i8* %83, align 1
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %86
  store i8 -9, i8* %87, align 1
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %89
  store i8 0, i8* %90, align 1
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %92 = load i8*, i8** %4, align 8
  %93 = call i8* @strcat(i8* %91, i8* %92) #8
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %95 = call i64 @strlen(i8* %94) #7
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %99
  store i8 -10, i8* %100, align 1
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %103
  store i8 10, i8* %104, align 1
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %107
  store i8 -9, i8* %108, align 1
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %110
  store i8 0, i8* %111, align 1
  br label %157

112:                                              ; preds = %59
  %113 = load i32, i32* @WORDBOUND, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %118
  store i8 -10, i8* %119, align 1
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %122
  store i8 -15, i8* %123, align 1
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %126
  store i8 -9, i8* %127, align 1
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %129
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %115, %112
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %133 = load i8*, i8** %4, align 8
  %134 = call i8* @strcat(i8* %132, i8* %133) #8
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %136 = call i64 @strlen(i8* %135) #7
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* @WORDBOUND, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %131
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %143
  store i8 -10, i8* %144, align 1
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %147
  store i8 -15, i8* %148, align 1
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %151
  store i8 -9, i8* %152, align 1
  br label %153

153:                                              ; preds = %140, %131
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %155
  store i8 0, i8* %156, align 1
  br label %157

157:                                              ; preds = %153, %75
  store i32 0, i32* @D_length, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %248, %157
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %16, align 4
  %161 = sub nsw i32 %160, 2
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %251

163:                                              ; preds = %158
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  switch i32 %168, label %229 [
    i32 92, label %169
    i32 60, label %189
    i32 62, label %195
    i32 94, label %201
    i32 36, label %215
  ]

169:                                              ; preds = %163
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8 %175, i8* %180, align 1
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = load i32, i32* @D_length, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @D_length, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %187
  store i8 %184, i8* %188, align 1
  br label %247

189:                                              ; preds = %163
  %190 = load i8*, i8** %4, align 8
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8 -10, i8* %194, align 1
  br label %247

195:                                              ; preds = %163
  %196 = load i8*, i8** %4, align 8
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  store i8 -9, i8* %200, align 1
  br label %247

201:                                              ; preds = %163
  %202 = load i8*, i8** %4, align 8
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  store i8 10, i8* %206, align 1
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = load i32, i32* @D_length, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* @D_length, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %213
  store i8 %210, i8* %214, align 1
  br label %247

215:                                              ; preds = %163
  %216 = load i8*, i8** %4, align 8
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  store i8 10, i8* %220, align 1
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = load i32, i32* @D_length, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* @D_length, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %227
  store i8 %224, i8* %228, align 1
  br label %247

229:                                              ; preds = %163
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = load i8*, i8** %4, align 8
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  store i8 %233, i8* %238, align 1
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = load i32, i32* @D_length, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* @D_length, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %245
  store i8 %242, i8* %246, align 1
  br label %247

247:                                              ; preds = %229, %215, %201, %195, %189, %169
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  br label %158

251:                                              ; preds = %158
  %252 = load i32, i32* @D_length, align 4
  %253 = icmp sgt i32 %252, 8
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

257:                                              ; preds = %251
  %258 = load i8*, i8** %4, align 8
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i8, i8* %258, i64 %261
  store i8 -4, i8* %262, align 1
  %263 = load i32, i32* @D_length, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %264
  store i8 0, i8* %265, align 1
  %266 = load i8*, i8** %3, align 8
  %267 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %268 = call i8* @strcpy(i8* %266, i8* %267) #8
  %269 = load i32, i32* @D_length, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* @D_length, align 4
  %271 = load i8*, i8** %4, align 8
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %271, i64 %273
  store i8 0, i8* %274, align 1
  store i32 0, i32* %11, align 4
  %275 = load i32, i32* @REGEX, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %257
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* %11, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %11, align 4
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %278, i64 %281
  store i8 46, i8* %282, align 1
  %283 = load i8*, i8** %6, align 8
  %284 = load i32, i32* %11, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %11, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  store i8 40, i8* %287, align 1
  %288 = load i8*, i8** %4, align 8
  %289 = load i32, i32* %10, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %10, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i8, i8* %288, i64 %291
  store i8 -18, i8* %292, align 1
  store i32 1, i32* @HEAD, align 4
  br label %293

293:                                              ; preds = %277, %257
  %294 = load i32, i32* %16, align 4
  store i32 %294, i32* %9, align 4
  br label %295

295:                                              ; preds = %558, %293
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %561

299:                                              ; preds = %295
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  switch i32 %304, label %538 [
    i32 92, label %305
    i32 35, label %322
    i32 40, label %347
    i32 41, label %358
    i32 91, label %369
    i32 93, label %380
    i32 60, label %391
    i32 62, label %397
    i32 94, label %403
    i32 36, label %429
    i32 46, label %440
    i32 42, label %451
    i32 124, label %462
    i32 44, label %473
    i32 59, label %479
    i32 45, label %489
    i32 239, label %523
  ]

305:                                              ; preds = %299
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = load i8*, i8** %4, align 8
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %10, align 4
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  store i8 %311, i8* %316, align 1
  %317 = load i8*, i8** %6, align 8
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i8, i8* %317, i64 %320
  store i8 111, i8* %321, align 1
  br label %557

322:                                              ; preds = %299
  %323 = load i32, i32* @REGEX, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %322
  %326 = load i8*, i8** %4, align 8
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %10, align 4
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i8, i8* %326, i64 %329
  store i8 -18, i8* %330, align 1
  %331 = load i8*, i8** %6, align 8
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %11, align 4
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  store i8 46, i8* %335, align 1
  %336 = load i8*, i8** %6, align 8
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %11, align 4
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i8, i8* %336, i64 %339
  store i8 42, i8* %340, align 1
  br label %557

341:                                              ; preds = %322
  %342 = load i8*, i8** %4, align 8
  %343 = load i32, i32* %10, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %10, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i8, i8* %342, i64 %345
  store i8 -7, i8* %346, align 1
  br label %557

347:                                              ; preds = %299
  %348 = load i8*, i8** %4, align 8
  %349 = load i32, i32* %10, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %10, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i8, i8* %348, i64 %351
  store i8 -14, i8* %352, align 1
  %353 = load i8*, i8** %6, align 8
  %354 = load i32, i32* %11, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %11, align 4
  %356 = sext i32 %354 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  store i8 40, i8* %357, align 1
  br label %557

358:                                              ; preds = %299
  %359 = load i8*, i8** %4, align 8
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i8, i8* %359, i64 %362
  store i8 -13, i8* %363, align 1
  %364 = load i8*, i8** %6, align 8
  %365 = load i32, i32* %11, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %11, align 4
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  store i8 41, i8* %368, align 1
  br label %557

369:                                              ; preds = %299
  %370 = load i8*, i8** %4, align 8
  %371 = load i32, i32* %10, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %10, align 4
  %373 = sext i32 %371 to i64
  %374 = getelementptr inbounds i8, i8* %370, i64 %373
  store i8 -12, i8* %374, align 1
  %375 = load i8*, i8** %6, align 8
  %376 = load i32, i32* %11, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %11, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i8, i8* %375, i64 %378
  store i8 91, i8* %379, align 1
  store i32 1, i32* %17, align 4
  br label %557

380:                                              ; preds = %299
  %381 = load i8*, i8** %4, align 8
  %382 = load i32, i32* %10, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %10, align 4
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, i8* %381, i64 %384
  store i8 -11, i8* %385, align 1
  %386 = load i8*, i8** %6, align 8
  %387 = load i32, i32* %11, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %11, align 4
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, i8* %386, i64 %389
  store i8 93, i8* %390, align 1
  store i32 0, i32* %17, align 4
  br label %557

391:                                              ; preds = %299
  %392 = load i8*, i8** %4, align 8
  %393 = load i32, i32* %10, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %10, align 4
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i8, i8* %392, i64 %395
  store i8 -10, i8* %396, align 1
  br label %557

397:                                              ; preds = %299
  %398 = load i8*, i8** %4, align 8
  %399 = load i32, i32* %10, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %10, align 4
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds i8, i8* %398, i64 %401
  store i8 -9, i8* %402, align 1
  br label %557

403:                                              ; preds = %299
  %404 = load i32, i32* %9, align 4
  %405 = sub nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %406
  %408 = load i8, i8* %407, align 1
  %409 = zext i8 %408 to i32
  %410 = icmp eq i32 %409, 91
  br i1 %410, label %411, label %417

411:                                              ; preds = %403
  %412 = load i8*, i8** %4, align 8
  %413 = load i32, i32* %10, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %10, align 4
  %415 = sext i32 %413 to i64
  %416 = getelementptr inbounds i8, i8* %412, i64 %415
  store i8 -8, i8* %416, align 1
  br label %423

417:                                              ; preds = %403
  %418 = load i8*, i8** %4, align 8
  %419 = load i32, i32* %10, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %10, align 4
  %421 = sext i32 %419 to i64
  %422 = getelementptr inbounds i8, i8* %418, i64 %421
  store i8 10, i8* %422, align 1
  br label %423

423:                                              ; preds = %417, %411
  %424 = load i8*, i8** %6, align 8
  %425 = load i32, i32* %11, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %11, align 4
  %427 = sext i32 %425 to i64
  %428 = getelementptr inbounds i8, i8* %424, i64 %427
  store i8 94, i8* %428, align 1
  br label %557

429:                                              ; preds = %299
  %430 = load i8*, i8** %4, align 8
  %431 = load i32, i32* %10, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %10, align 4
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds i8, i8* %430, i64 %433
  store i8 10, i8* %434, align 1
  %435 = load i8*, i8** %6, align 8
  %436 = load i32, i32* %11, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %11, align 4
  %438 = sext i32 %436 to i64
  %439 = getelementptr inbounds i8, i8* %435, i64 %438
  store i8 36, i8* %439, align 1
  br label %557

440:                                              ; preds = %299
  %441 = load i8*, i8** %4, align 8
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %10, align 4
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i8, i8* %441, i64 %444
  store i8 -18, i8* %445, align 1
  %446 = load i8*, i8** %6, align 8
  %447 = load i32, i32* %11, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %11, align 4
  %449 = sext i32 %447 to i64
  %450 = getelementptr inbounds i8, i8* %446, i64 %449
  store i8 46, i8* %450, align 1
  br label %557

451:                                              ; preds = %299
  %452 = load i8*, i8** %4, align 8
  %453 = load i32, i32* %10, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %10, align 4
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i8, i8* %452, i64 %455
  store i8 -3, i8* %456, align 1
  %457 = load i8*, i8** %6, align 8
  %458 = load i32, i32* %11, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %11, align 4
  %460 = sext i32 %458 to i64
  %461 = getelementptr inbounds i8, i8* %457, i64 %460
  store i8 42, i8* %461, align 1
  br label %557

462:                                              ; preds = %299
  %463 = load i8*, i8** %4, align 8
  %464 = load i32, i32* %10, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %10, align 4
  %466 = sext i32 %464 to i64
  %467 = getelementptr inbounds i8, i8* %463, i64 %466
  store i8 -6, i8* %467, align 1
  %468 = load i8*, i8** %6, align 8
  %469 = load i32, i32* %11, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %11, align 4
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds i8, i8* %468, i64 %471
  store i8 124, i8* %472, align 1
  br label %557

473:                                              ; preds = %299
  %474 = load i8*, i8** %4, align 8
  %475 = load i32, i32* %10, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %10, align 4
  %477 = sext i32 %475 to i64
  %478 = getelementptr inbounds i8, i8* %474, i64 %477
  store i8 -5, i8* %478, align 1
  store i32 1, i32* @RE_ERR, align 4
  br label %557

479:                                              ; preds = %299
  %480 = load i32, i32* %15, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  store i32 1, i32* @RE_ERR, align 4
  br label %483

483:                                              ; preds = %482, %479
  %484 = load i8*, i8** %4, align 8
  %485 = load i32, i32* %10, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %10, align 4
  %487 = sext i32 %485 to i64
  %488 = getelementptr inbounds i8, i8* %484, i64 %487
  store i8 -4, i8* %488, align 1
  store i32 1, i32* %15, align 4
  br label %557

489:                                              ; preds = %299
  %490 = load i32, i32* %17, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %503

492:                                              ; preds = %489
  %493 = load i8*, i8** %4, align 8
  %494 = load i32, i32* %10, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %10, align 4
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i8, i8* %493, i64 %496
  store i8 -19, i8* %497, align 1
  %498 = load i8*, i8** %6, align 8
  %499 = load i32, i32* %11, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %11, align 4
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i8, i8* %498, i64 %501
  store i8 45, i8* %502, align 1
  br label %522

503:                                              ; preds = %489
  %504 = load i32, i32* %9, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = load i8*, i8** %4, align 8
  %509 = load i32, i32* %10, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %10, align 4
  %511 = sext i32 %509 to i64
  %512 = getelementptr inbounds i8, i8* %508, i64 %511
  store i8 %507, i8* %512, align 1
  %513 = load i32, i32* %9, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %514
  %516 = load i8, i8* %515, align 1
  %517 = load i8*, i8** %6, align 8
  %518 = load i32, i32* %11, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %11, align 4
  %520 = sext i32 %518 to i64
  %521 = getelementptr inbounds i8, i8* %517, i64 %520
  store i8 %516, i8* %521, align 1
  br label %522

522:                                              ; preds = %503, %492
  br label %557

523:                                              ; preds = %299
  %524 = load i32, i32* %9, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %525
  %527 = load i8, i8* %526, align 1
  %528 = load i8*, i8** %4, align 8
  %529 = load i32, i32* %10, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %10, align 4
  %531 = sext i32 %529 to i64
  %532 = getelementptr inbounds i8, i8* %528, i64 %531
  store i8 %527, i8* %532, align 1
  %533 = load i8*, i8** %6, align 8
  %534 = load i32, i32* %11, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %11, align 4
  %536 = sext i32 %534 to i64
  %537 = getelementptr inbounds i8, i8* %533, i64 %536
  store i8 78, i8* %537, align 1
  br label %557

538:                                              ; preds = %299
  %539 = load i32, i32* %9, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %540
  %542 = load i8, i8* %541, align 1
  %543 = load i8*, i8** %4, align 8
  %544 = load i32, i32* %10, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %10, align 4
  %546 = sext i32 %544 to i64
  %547 = getelementptr inbounds i8, i8* %543, i64 %546
  store i8 %542, i8* %547, align 1
  %548 = load i32, i32* %9, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %549
  %551 = load i8, i8* %550, align 1
  %552 = load i8*, i8** %6, align 8
  %553 = load i32, i32* %11, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %11, align 4
  %555 = sext i32 %553 to i64
  %556 = getelementptr inbounds i8, i8* %552, i64 %555
  store i8 %551, i8* %556, align 1
  br label %557

557:                                              ; preds = %538, %523, %522, %483, %473, %462, %451, %440, %429, %423, %397, %391, %380, %369, %358, %347, %341, %325, %305
  br label %558

558:                                              ; preds = %557
  %559 = load i32, i32* %9, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %9, align 4
  br label %295

561:                                              ; preds = %295
  %562 = load i32, i32* @REGEX, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %580

564:                                              ; preds = %561
  %565 = load i8*, i8** %6, align 8
  %566 = load i32, i32* %11, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %11, align 4
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i8, i8* %565, i64 %568
  store i8 41, i8* %569, align 1
  %570 = load i8*, i8** %6, align 8
  %571 = load i32, i32* %11, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %11, align 4
  %573 = sext i32 %571 to i64
  %574 = getelementptr inbounds i8, i8* %570, i64 %573
  store i8 46, i8* %574, align 1
  %575 = load i8*, i8** %4, align 8
  %576 = load i32, i32* %10, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %10, align 4
  %578 = sext i32 %576 to i64
  %579 = getelementptr inbounds i8, i8* %575, i64 %578
  store i8 -18, i8* %579, align 1
  store i32 1, i32* @TAIL, align 4
  br label %580

580:                                              ; preds = %564, %561
  %581 = load i8*, i8** %4, align 8
  %582 = load i32, i32* %10, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8, i8* %581, i64 %583
  store i8 0, i8* %584, align 1
  %585 = load i32, i32* %10, align 4
  store i32 %585, i32* %12, align 4
  %586 = load i8*, i8** %6, align 8
  %587 = load i32, i32* %11, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8, i8* %586, i64 %588
  store i8 0, i8* %589, align 1
  %590 = load i32, i32* @REGEX, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %640

592:                                              ; preds = %580
  %593 = load i32, i32* @DELIMITER, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %598, label %595

595:                                              ; preds = %592
  %596 = load i32, i32* @WORDBOUND, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %601

598:                                              ; preds = %595, %592
  %599 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %600 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %599, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1.103, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

601:                                              ; preds = %595
  %602 = load i32, i32* @RE_ERR, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %601
  %605 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %606 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %605, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.104, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

607:                                              ; preds = %601
  br label %608

608:                                              ; preds = %619, %607
  %609 = load i8*, i8** %4, align 8
  %610 = load i8, i8* %609, align 1
  %611 = zext i8 %610 to i32
  %612 = icmp ne i32 %611, 238
  br i1 %612, label %613, label %617

613:                                              ; preds = %608
  %614 = load i32, i32* %12, align 4
  %615 = add nsw i32 %614, -1
  store i32 %615, i32* %12, align 4
  %616 = icmp sgt i32 %614, 0
  br label %617

617:                                              ; preds = %613, %608
  %618 = phi i1 [ false, %608 ], [ %616, %613 ]
  br i1 %618, label %619, label %622

619:                                              ; preds = %617
  %620 = load i8*, i8** %4, align 8
  %621 = getelementptr inbounds i8, i8* %620, i32 1
  store i8* %621, i8** %4, align 8
  br label %608

622:                                              ; preds = %617
  %623 = load i8*, i8** %6, align 8
  %624 = call i32 @init(i8* %623, [32 x i32]* getelementptr inbounds ([32 x [32 x i32]], [32 x [32 x i32]]* @table, i64 0, i64 0))
  store i32 %624, i32* %14, align 4
  %625 = load i32, i32* %14, align 4
  %626 = icmp sle i32 %625, 0
  br i1 %626, label %627, label %630

627:                                              ; preds = %622
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %629 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %628, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.104, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

630:                                              ; preds = %622
  %631 = load i32, i32* %14, align 4
  %632 = icmp sgt i32 %631, 30
  br i1 %632, label %633, label %636

633:                                              ; preds = %630
  %634 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %635 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %634, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3.105, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

636:                                              ; preds = %630
  %637 = load i8*, i8** %7, align 8
  %638 = load i8*, i8** %4, align 8
  %639 = call i8* @strcpy(i8* %637, i8* %638) #8
  br label %641

640:                                              ; preds = %580
  br label %641

641:                                              ; preds = %640, %636
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @char_tr(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %16, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %14
  store i8 %12, i8* %15, align 1
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %7

19:                                               ; preds = %7
  %20 = load i32, i32* @NOUPPER, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  store i32 65, i32* %5, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 90
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 97
  %29 = sub nsw i32 %28, 65
  %30 = trunc i32 %29 to i8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %32
  store i8 %30, i8* %33, align 1
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %23

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* @WORDBOUND, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = call i16** @__ctype_b_loc() #10
  %47 = load i16*, i16** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %57
  store i8 -128, i8* %58, align 1
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %42

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i32, i32* @WHOLELINE, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %69 = load i8*, i8** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 1 %69, i64 %72, i1 false)
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 10, i8* %74, align 1
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* align 16 %77, i64 %80, i1 false)
  %81 = load i8*, i8** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  store i8 10, i8* %86, align 1
  %87 = load i8*, i8** %3, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 2
  %96 = load i32*, i32** %4, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %67, %64
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @s_output(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @SILENT, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  %10 = load i32, i32* @COUNT, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %22, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %13

27:                                               ; preds = %13
  br label %68

28:                                               ; preds = %9
  %29 = load i32, i32* @FNAME, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %45, %33
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %36

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 10
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 @putchar(i32 %62)
  br label %47

64:                                               ; preds = %47
  %65 = call i32 @putchar(i32 10)
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** %4, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %27, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [256 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %19, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %20, align 8
  %29 = load i8*, i8** %11, align 8
  store i8* %29, i8** %21, align 8
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %42, %5
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %19, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %17, align 4
  br label %30

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %354, %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %355

50:                                               ; preds = %46
  store i32 1, i32* %16, align 4
  br label %51

51:                                               ; preds = %112, %50
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %115

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %55
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %81, %73
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %96, %87
  br label %107

104:                                              ; preds = %55
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  br label %51

115:                                              ; preds = %51
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  %124 = load i8, i8* %122, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %121, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %115
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %134
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %127, %115
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %138
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %154
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %145, %138
  br label %157

157:                                              ; preds = %164, %156
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32, i32* %14, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %157

167:                                              ; preds = %157
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i8*, i8** %11, align 8
  %173 = load i8*, i8** %21, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = sub nsw i64 %176, 1
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %6, align 4
  br label %356

179:                                              ; preds = %167
  %180 = load i8*, i8** %11, align 8
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 10
  br i1 %183, label %184, label %202

184:                                              ; preds = %179
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %186

186:                                              ; preds = %198, %184
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %19, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %193
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %196
  store i32 %191, i32* %197, align 4
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %18, align 4
  br label %186

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %179
  store i32 1, i32* %16, align 4
  br label %203

203:                                              ; preds = %264, %202
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %14, align 4
  %206 = icmp sle i32 %204, %205
  br i1 %206, label %207, label %267

207:                                              ; preds = %203
  %208 = load i32, i32* %16, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  %214 = load i8*, i8** %10, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = load i8*, i8** %11, align 8
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp ne i32 %220, %223
  br i1 %224, label %225, label %256

225:                                              ; preds = %207
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  %231 = load i32, i32* %15, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %225
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %15, align 4
  br label %239

239:                                              ; preds = %233, %225
  %240 = load i32, i32* %16, align 4
  %241 = sub nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  %246 = load i32, i32* %15, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %239
  %249 = load i32, i32* %16, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %255

255:                                              ; preds = %248, %239
  br label %259

256:                                              ; preds = %207
  %257 = load i32, i32* %15, align 4
  %258 = sub nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  br label %259

259:                                              ; preds = %256, %255
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %262
  store i32 %260, i32* %263, align 4
  br label %264

264:                                              ; preds = %259
  %265 = load i32, i32* %16, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %16, align 4
  br label %203

267:                                              ; preds = %203
  %268 = load i8*, i8** %10, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = load i8*, i8** %11, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %11, align 8
  %276 = load i8, i8* %274, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %273, %277
  br i1 %278, label %279, label %290

279:                                              ; preds = %267
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %14, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %286
  store i32 %283, i32* %287, align 4
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %14, align 4
  br label %290

290:                                              ; preds = %279, %267
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %9, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %290
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %14, align 4
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 1
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %306
  store i32 %303, i32* %307, align 4
  br label %308

308:                                              ; preds = %297, %290
  br label %309

309:                                              ; preds = %316, %308
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %9, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = load i32, i32* %14, align 4
  %318 = sub nsw i32 %317, 1
  store i32 %318, i32* %14, align 4
  br label %309

319:                                              ; preds = %309
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %7, align 4
  %322 = icmp sge i32 %320, %321
  br i1 %322, label %323, label %331

323:                                              ; preds = %319
  %324 = load i8*, i8** %11, align 8
  %325 = load i8*, i8** %21, align 8
  %326 = ptrtoint i8* %324 to i64
  %327 = ptrtoint i8* %325 to i64
  %328 = sub i64 %326, %327
  %329 = sub nsw i64 %328, 1
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %6, align 4
  br label %356

331:                                              ; preds = %319
  %332 = load i8*, i8** %11, align 8
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = icmp eq i32 %334, 10
  br i1 %335, label %336, label %354

336:                                              ; preds = %331
  %337 = load i32, i32* %9, align 4
  store i32 %337, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %338

338:                                              ; preds = %350, %336
  %339 = load i32, i32* %18, align 4
  %340 = load i32, i32* %19, align 4
  %341 = icmp sle i32 %339, %340
  br i1 %341, label %342, label %353

342:                                              ; preds = %338
  %343 = load i32, i32* %18, align 4
  %344 = load i32, i32* %18, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %345
  store i32 %343, i32* %346, align 4
  %347 = load i32, i32* %18, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %348
  store i32 %343, i32* %349, align 4
  br label %350

350:                                              ; preds = %342
  %351 = load i32, i32* %18, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %18, align 4
  br label %338

353:                                              ; preds = %338
  br label %354

354:                                              ; preds = %353, %331
  br label %46

355:                                              ; preds = %46
  store i32 0, i32* %6, align 4
  br label %356

356:                                              ; preds = %355, %323, %171
  %357 = load i32, i32* %6, align 4
  ret i32 %357
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bm(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @shift_1, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %181, %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ule i8* %17, %18
  br i1 %19, label %20, label %182

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %33, %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %9, align 4
  br label %30

61:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %91, %61
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %73, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %62
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %92

91:                                               ; preds = %85
  br label %62

92:                                               ; preds = %90, %62
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %179

96:                                               ; preds = %92
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = icmp ugt i8* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %183

101:                                              ; preds = %96
  %102 = load i32, i32* @WORDBOUND, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %101
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 128
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %178

114:                                              ; preds = %104
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 0, %117
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 128
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %178

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %101
  %129 = load i32, i32* @num_of_matched, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @num_of_matched, align 4
  %131 = load i32, i32* @FILENAMEONLY, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %183

134:                                              ; preds = %128
  %135 = load i32, i32* @COUNT, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %167, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @FNAME, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %137
  br label %143

143:                                              ; preds = %149, %142
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %145, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp ne i32 %147, 10
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %143

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %157, %150
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %7, align 8
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ne i32 %155, 10
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i8*, i8** %7, align 8
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call i32 @putchar(i32 %160)
  br label %151

162:                                              ; preds = %151
  %163 = load i8*, i8** %7, align 8
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = call i32 @putchar(i32 %165)
  br label %177

167:                                              ; preds = %134
  br label %168

168:                                              ; preds = %173, %167
  %169 = load i8*, i8** %7, align 8
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %171, 10
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i8*, i8** %7, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %7, align 8
  br label %168

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %162
  br label %178

178:                                              ; preds = %177, %126, %113
  store i32 1, i32* %9, align 4
  br label %181

179:                                              ; preds = %92
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %179, %178
  br label %16

182:                                              ; preds = %16
  br label %183

183:                                              ; preds = %182, %133, %100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initmask(i8* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 -2147483648, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %31, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = lshr i32 %26, %27
  %29 = or i32 %25, %28
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %15, align 4
  %39 = sub nsw i32 %37, %38
  %40 = lshr i32 %36, %39
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %68, %34
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 94
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 36
  br i1 %61, label %62, label %67

62:                                               ; preds = %54, %46
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 10, i8* %66, align 1
  br label %67

67:                                               ; preds = %62, %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %42

71:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %80, %71
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %72

83:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %128, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  store i32 %94, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %124, %88
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %100, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %99
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %14, align 4
  %116 = lshr i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %12, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %108, %99
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %95

127:                                              ; preds = %95
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %84

131:                                              ; preds = %84
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prep(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
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
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 3, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = sdiv i32 %15, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = mul i32 %20, %22
  %24 = sub i32 %19, %23
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %34, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %32
  store i8 %30, i8* %33, align 1
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %71, %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = urem i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %44
  %65 = load i32, i32* %11, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %68
  store i8 %66, i8* %69, align 1
  br label %70

70:                                               ; preds = %64, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* @shift_1, align 4
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %135, %74
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %138

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul i32 %84, %85
  %87 = sub i32 %83, %86
  store i32 %87, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %131, %81
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %134

92:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %127, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = mul i32 %110, %111
  %113 = sub i32 %109, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %107, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %106, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %98
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @shift_1, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* @shift_1, align 4
  br label %125

125:                                              ; preds = %123, %119
  br label %126

126:                                              ; preds = %125, %98
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %93

130:                                              ; preds = %93
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %88

134:                                              ; preds = %88
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %76

138:                                              ; preds = %76
  %139 = load i32, i32* @shift_1, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* @shift_1, align 4
  br label %142

142:                                              ; preds = %141, %138
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %150, %142
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 8192
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8192 x i8], [8192 x i8]* @MEMBER, i64 0, i64 %148
  store i8 0, i8* %149, align 1
  br label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %143

153:                                              ; preds = %143
  %154 = load i32, i32* %12, align 4
  %155 = icmp ult i32 %154, 3
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %156, %153
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %194, %158
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %197

164:                                              ; preds = %159
  %165 = load i32, i32* %5, align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %7, align 4
  %169 = mul i32 %167, %168
  %170 = sub i32 %166, %169
  store i32 %170, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %187, %164
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %190

175:                                              ; preds = %171
  %176 = load i32, i32* %13, align 4
  %177 = shl i32 %176, 2
  %178 = load i8*, i8** %4, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %178, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = add i32 %177, %185
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %175
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %171

190:                                              ; preds = %171
  %191 = load i32, i32* %13, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [8192 x i8], [8192 x i8]* @MEMBER, i64 0, i64 %192
  store i8 1, i8* %193, align 1
  br label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %159

197:                                              ; preds = %159
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @agrep(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2048 x [2 x i32]], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [21 x i32], align 16
  %25 = alloca [21 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %32, %34
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %23, align 4
  %36 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 0
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  store i32 0, i32* %39, align 16
  %40 = load i32, i32* @shift_1, align 4
  store i32 %40, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %26, align 4
  br label %46

45:                                               ; preds = %5
  store i32 3, i32* %26, align 4
  br label %46

46:                                               ; preds = %45, %43
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %187, %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %188

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp uge i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %188

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %100, %68
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = icmp uge i8* %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %101

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = icmp uge i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %101

100:                                              ; preds = %86
  br label %69

101:                                              ; preds = %99, %85, %69
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp uge i8* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %188

106:                                              ; preds = %101
  store i32 1, i32* %16, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %114, %106
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %26, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load i32, i32* %15, align 4
  %116 = shl i32 %115, 2
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 0, %119
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %116, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %110

127:                                              ; preds = %110
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8192 x i8], [8192 x i8]* @MEMBER, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %185

133:                                              ; preds = %127
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sub nsw i32 %144, 10
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %147
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %148, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %145, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %133
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sub nsw i32 %157, 2
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %161
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %162, i64 0, i64 0
  store i32 %158, i32* %163, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %170
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %171, i64 0, i64 1
  store i32 %168, i32* %172, align 4
  br label %183

173:                                              ; preds = %133
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %180
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %181, i64 0, i64 1
  store i32 %178, i32* %182, align 4
  br label %183

183:                                              ; preds = %173, %152
  %184 = load i32, i32* %18, align 4
  store i32 %184, i32* %14, align 4
  br label %187

185:                                              ; preds = %127
  %186 = load i32, i32* %18, align 4
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %185, %183
  br label %50

188:                                              ; preds = %105, %67, %50
  %189 = load i8*, i8** %13, align 8
  store i8* %189, i8** %8, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = ptrtoint i8* %190 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %19, align 4
  store i32 10, i32* %31, align 4
  %196 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 1
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i64 0, i64 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %188
  %201 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 1
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %201, i64 0, i64 0
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %188
  %204 = load i32, i32* @endposition, align 4
  store i32 %204, i32* %27, align 4
  store i32 -2147483648, i32* %30, align 4
  store i32 0, i32* %22, align 4
  br label %205

205:                                              ; preds = %508, %203
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %20, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %511

209:                                              ; preds = %205
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %211
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %212, i64 0, i64 0
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %22, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %216
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %217, i64 0, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %209
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %22, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %225
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %226, i64 0, i64 1
  store i32 %223, i32* %227, align 4
  br label %228

228:                                              ; preds = %222, %209
  %229 = load i32, i32* %11, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 0, i32* %11, align 4
  br label %232

232:                                              ; preds = %231, %228
  %233 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 0
  store i32 -1, i32* %233, align 16
  %234 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 0
  store i32 -1, i32* %234, align 16
  %235 = load i32, i32* %30, align 4
  %236 = xor i32 %235, -1
  %237 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 1
  store i32 %236, i32* %237, align 4
  %238 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 1
  store i32 %236, i32* %238, align 4
  store i32 1, i32* %17, align 4
  br label %239

239:                                              ; preds = %262, %232
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %265

243:                                              ; preds = %239
  %244 = load i32, i32* %17, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = lshr i32 %248, 1
  %250 = load i32, i32* %17, align 4
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %249, %254
  %256 = load i32, i32* %17, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %257
  store i32 %255, i32* %258, align 4
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %260
  store i32 %255, i32* %261, align 4
  br label %262

262:                                              ; preds = %243
  %263 = load i32, i32* %17, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %17, align 4
  br label %239

265:                                              ; preds = %239
  br label %266

266:                                              ; preds = %506, %265
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %22, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %21, i64 0, i64 %269
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %270, i64 0, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %267, %272
  br i1 %273, label %274, label %507

274:                                              ; preds = %266
  %275 = load i8*, i8** %8, align 8
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %275, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  store i32 %281, i32* %28, align 4
  %282 = load i32, i32* %28, align 4
  %283 = load i32, i32* %31, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %301

285:                                              ; preds = %274
  store i32 0, i32* %17, align 4
  br label %286

286:                                              ; preds = %297, %285
  %287 = load i32, i32* %17, align 4
  %288 = load i32, i32* %10, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %286
  %291 = load i32, i32* %17, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %292
  store i32 -1, i32* %293, align 4
  %294 = load i32, i32* %17, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %295
  store i32 -1, i32* %296, align 4
  br label %297

297:                                              ; preds = %290
  %298 = load i32, i32* %17, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %17, align 4
  br label %286

300:                                              ; preds = %286
  br label %301

301:                                              ; preds = %300, %274
  %302 = load i32, i32* %28, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %26, align 4
  %306 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 0
  %307 = load i32, i32* %306, align 16
  %308 = lshr i32 %307, 1
  %309 = load i32, i32* %26, align 4
  %310 = or i32 %308, %309
  %311 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 0
  store i32 %310, i32* %311, align 16
  store i32 1, i32* %17, align 4
  br label %312

312:                                              ; preds = %346, %301
  %313 = load i32, i32* %17, align 4
  %314 = load i32, i32* %10, align 4
  %315 = icmp sle i32 %313, %314
  br i1 %315, label %316, label %349

316:                                              ; preds = %312
  %317 = load i32, i32* %17, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = lshr i32 %320, 1
  %322 = load i32, i32* %26, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* %17, align 4
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %323, %328
  %330 = load i32, i32* %17, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %17, align 4
  %336 = sub nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = and i32 %334, %339
  %341 = lshr i32 %340, 1
  %342 = and i32 %329, %341
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %344
  store i32 %342, i32* %345, align 4
  br label %346

346:                                              ; preds = %316
  %347 = load i32, i32* %17, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %17, align 4
  br label %312

349:                                              ; preds = %312
  %350 = load i32, i32* %10, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %27, align 4
  %355 = and i32 %353, %354
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %390

357:                                              ; preds = %349
  %358 = load i32, i32* @num_of_matched, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* @num_of_matched, align 4
  %360 = load i32, i32* @FILENAMEONLY, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  br label %512

363:                                              ; preds = %357
  %364 = load i32, i32* %11, align 4
  store i32 %364, i32* %29, align 4
  %365 = load i32, i32* %11, align 4
  %366 = load i32, i32* %23, align 4
  %367 = icmp sle i32 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %363
  %369 = load i32, i32* %23, align 4
  store i32 %369, i32* %11, align 4
  br label %373

370:                                              ; preds = %363
  %371 = load i8*, i8** %8, align 8
  call void @s_output(i8* %371, i32* %29)
  %372 = load i32, i32* %29, align 4
  store i32 %372, i32* %11, align 4
  br label %373

373:                                              ; preds = %370, %368
  %374 = load i32, i32* %11, align 4
  store i32 %374, i32* %23, align 4
  store i32 0, i32* %17, align 4
  br label %375

375:                                              ; preds = %386, %373
  %376 = load i32, i32* %17, align 4
  %377 = load i32, i32* %10, align 4
  %378 = icmp sle i32 %376, %377
  br i1 %378, label %379, label %389

379:                                              ; preds = %375
  %380 = load i32, i32* %17, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %381
  store i32 -1, i32* %382, align 4
  %383 = load i32, i32* %17, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %384
  store i32 -1, i32* %385, align 4
  br label %386

386:                                              ; preds = %379
  %387 = load i32, i32* %17, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %17, align 4
  br label %375

389:                                              ; preds = %375
  br label %390

390:                                              ; preds = %389, %349
  %391 = load i8*, i8** %8, align 8
  %392 = load i32, i32* %11, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %11, align 4
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds i8, i8* %391, i64 %394
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  store i32 %397, i32* %28, align 4
  %398 = load i32, i32* %28, align 4
  %399 = load i32, i32* %31, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %417

401:                                              ; preds = %390
  store i32 0, i32* %17, align 4
  br label %402

402:                                              ; preds = %413, %401
  %403 = load i32, i32* %17, align 4
  %404 = load i32, i32* %10, align 4
  %405 = icmp sle i32 %403, %404
  br i1 %405, label %406, label %416

406:                                              ; preds = %402
  %407 = load i32, i32* %17, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %408
  store i32 -1, i32* %409, align 4
  %410 = load i32, i32* %17, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %411
  store i32 -1, i32* %412, align 4
  br label %413

413:                                              ; preds = %406
  %414 = load i32, i32* %17, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %17, align 4
  br label %402

416:                                              ; preds = %402
  br label %417

417:                                              ; preds = %416, %390
  %418 = load i32, i32* %28, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([256 x i32]* @Mask to [0 x i32]*), i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %26, align 4
  %422 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 0
  %423 = load i32, i32* %422, align 16
  %424 = lshr i32 %423, 1
  %425 = load i32, i32* %26, align 4
  %426 = or i32 %424, %425
  %427 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 0
  store i32 %426, i32* %427, align 16
  store i32 1, i32* %17, align 4
  br label %428

428:                                              ; preds = %462, %417
  %429 = load i32, i32* %17, align 4
  %430 = load i32, i32* %10, align 4
  %431 = icmp sle i32 %429, %430
  br i1 %431, label %432, label %465

432:                                              ; preds = %428
  %433 = load i32, i32* %17, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = lshr i32 %436, 1
  %438 = load i32, i32* %26, align 4
  %439 = or i32 %437, %438
  %440 = load i32, i32* %17, align 4
  %441 = sub nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = and i32 %439, %444
  %446 = load i32, i32* %17, align 4
  %447 = sub nsw i32 %446, 1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %17, align 4
  %452 = sub nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = and i32 %450, %455
  %457 = lshr i32 %456, 1
  %458 = and i32 %445, %457
  %459 = load i32, i32* %17, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %460
  store i32 %458, i32* %461, align 4
  br label %462

462:                                              ; preds = %432
  %463 = load i32, i32* %17, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %17, align 4
  br label %428

465:                                              ; preds = %428
  %466 = load i32, i32* %10, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* %27, align 4
  %471 = and i32 %469, %470
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %506

473:                                              ; preds = %465
  %474 = load i32, i32* %11, align 4
  store i32 %474, i32* %29, align 4
  %475 = load i32, i32* @num_of_matched, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* @num_of_matched, align 4
  %477 = load i32, i32* @FILENAMEONLY, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %473
  br label %512

480:                                              ; preds = %473
  %481 = load i32, i32* %11, align 4
  %482 = load i32, i32* %23, align 4
  %483 = icmp sle i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %480
  %485 = load i32, i32* %23, align 4
  store i32 %485, i32* %11, align 4
  br label %489

486:                                              ; preds = %480
  %487 = load i8*, i8** %8, align 8
  call void @s_output(i8* %487, i32* %29)
  %488 = load i32, i32* %29, align 4
  store i32 %488, i32* %11, align 4
  br label %489

489:                                              ; preds = %486, %484
  %490 = load i32, i32* %11, align 4
  store i32 %490, i32* %23, align 4
  store i32 0, i32* %17, align 4
  br label %491

491:                                              ; preds = %502, %489
  %492 = load i32, i32* %17, align 4
  %493 = load i32, i32* %10, align 4
  %494 = icmp sle i32 %492, %493
  br i1 %494, label %495, label %505

495:                                              ; preds = %491
  %496 = load i32, i32* %17, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [21 x i32], [21 x i32]* %25, i64 0, i64 %497
  store i32 -1, i32* %498, align 4
  %499 = load i32, i32* %17, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [21 x i32], [21 x i32]* %24, i64 0, i64 %500
  store i32 -1, i32* %501, align 4
  br label %502

502:                                              ; preds = %495
  %503 = load i32, i32* %17, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %17, align 4
  br label %491

505:                                              ; preds = %491
  br label %506

506:                                              ; preds = %505, %465
  br label %266

507:                                              ; preds = %266
  br label %508

508:                                              ; preds = %507
  %509 = load i32, i32* %22, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %22, align 4
  br label %205

511:                                              ; preds = %205
  br label %512

512:                                              ; preds = %511, %479, %362
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prep_bm(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %17, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %15
  store i8 %13, i8* %16, align 1
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %8

20:                                               ; preds = %8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %54, %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %46, %47
  %49 = trunc i32 %48 to i8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %51
  store i8 %49, i8* %52, align 1
  br label %53

53:                                               ; preds = %44, %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %23

57:                                               ; preds = %23
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* @shift_1, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %7, align 1
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 2
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %93, %57
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %7, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %74
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* @shift_1, align 4
  store i32 -1, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %74
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %5, align 4
  br label %71

96:                                               ; preds = %71
  %97 = load i32, i32* @shift_1, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* @shift_1, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, i32* @NOUPPER, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  store i32 65, i32* %5, align 4
  br label %104

104:                                              ; preds = %117, %103
  %105 = load i32, i32* %5, align 4
  %106 = icmp sle i32 %105, 90
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 97
  %110 = sub nsw i32 %109, 65
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i64 0, i64 %115
  store i8 %113, i8* %116, align 1
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %104

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @a_monkey(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* @Hashmask, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %137, %5
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %139

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %57, %27
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %8, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %47, %36
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  %49 = shl i32 %48, 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %8, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = add i32 %49, %53
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %12, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load i32, i32* %14, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ule i8* %61, %62
  br i1 %63, label %64, label %137

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 2, %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @verify(i32 %65, i32 %69, i32 %70, i8* %71, i8* %72)
  store i32 %73, i32* %16, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %64
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ugt i8* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %139

84:                                               ; preds = %75
  %85 = load i32, i32* @num_of_matched, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @num_of_matched, align 4
  %87 = load i32, i32* @FILENAMEONLY, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %139

90:                                               ; preds = %84
  %91 = load i32, i32* @COUNT, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @FNAME, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  br label %99

99:                                               ; preds = %105, %98
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %101, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 10
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %99

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %113, %106
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 10
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i8*, i8** %8, align 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = call i32 @putchar(i32 %116)
  br label %107

118:                                              ; preds = %107
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.107, i64 0, i64 0))
  br label %130

120:                                              ; preds = %90
  br label %121

121:                                              ; preds = %126, %120
  %122 = load i8*, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 10
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %8, align 8
  br label %121

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %118
  br label %136

131:                                              ; preds = %64
  %132 = load i8*, i8** %11, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8* %135, i8** %8, align 8
  br label %136

136:                                              ; preds = %131, %130
  br label %137

137:                                              ; preds = %136, %60
  %138 = load i8*, i8** %8, align 8
  store i8* %138, i8** %11, align 8
  br label %23

139:                                              ; preds = %89, %83, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @monkey(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 10, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %155, %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %158

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %28, 3
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add i32 %29, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  br label %39

39:                                               ; preds = %42, %24
  %40 = load i8, i8* %10, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 3
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %10, align 1
  br label %39

61:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %91, %61
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %73, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %62
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %92

91:                                               ; preds = %85
  br label %62

92:                                               ; preds = %90, %62
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %155

96:                                               ; preds = %92
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = icmp uge i8* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %158

101:                                              ; preds = %96
  %102 = load i32, i32* @num_of_matched, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @num_of_matched, align 4
  %104 = load i32, i32* @FILENAMEONLY, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %158

107:                                              ; preds = %101
  %108 = load i32, i32* @COUNT, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %117, %110
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  br label %111

120:                                              ; preds = %111
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 -1
  store i8* %122, i8** %7, align 8
  br label %154

123:                                              ; preds = %107
  %124 = load i32, i32* @FNAME, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  br label %129

129:                                              ; preds = %136, %128
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 -1
  store i8* %131, i8** %7, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %129

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %145, %137
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %7, align 8
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i8*, i8** %7, align 8
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = call i32 @putchar(i32 %148)
  br label %138

150:                                              ; preds = %138
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.107, i64 0, i64 0))
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 -1
  store i8* %153, i8** %7, align 8
  br label %154

154:                                              ; preds = %150, %120
  br label %155

155:                                              ; preds = %154, %92
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  br label %20

158:                                              ; preds = %106, %100, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @am_preprocess(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) #7
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* @Hashmask, align 4
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* @Hashmask, align 4
  %13 = shl i32 %12, 1
  %14 = add i32 %13, 1
  store i32 %14, i32* @Hashmask, align 4
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %8

18:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %26, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 65536
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i64 0, i64 %24
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %43, %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i64 0, i64 %41
  store i8 1, i8* %42, align 1
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %70, %46
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load i8*, i8** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = load i8*, i8** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %59, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i64 0, i64 %68
  store i8 1, i8* %69, align 1
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %3, align 4
  br label %49

73:                                               ; preds = %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @m_preprocess(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strlen(i8* %7) #7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4096
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 %17
  store i8 %15, i8* %18, align 1
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %10

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %91, %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %94

28:                                               ; preds = %25
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 3
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %60, %28
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 256
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 1
  %53 = trunc i32 %52 to i8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 %57
  store i8 %53, i8* %58, align 1
  br label %59

59:                                               ; preds = %50, %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %37

63:                                               ; preds = %37
  %64 = load i32, i32* %6, align 4
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add i32 %64, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %63
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %3, align 4
  %85 = sub nsw i32 %83, %84
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 %88
  store i8 %86, i8* %89, align 1
  br label %90

90:                                               ; preds = %81, %63
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %3, align 4
  br label %25

94:                                               ; preds = %25
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* @shift_1, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 2
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %123, %94
  %100 = load i32, i32* %3, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load i8*, i8** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8*, i8** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %108, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %102
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* %3, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* @shift_1, align 4
  store i32 -1, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %102
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %3, align 4
  br label %99

126:                                              ; preds = %99
  %127 = load i32, i32* @shift_1, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 1, i32* @shift_1, align 4
  br label %130

130:                                              ; preds = %129, %126
  store i8 0, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @SHIFT_2, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @monkey4(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* @Hashmask, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %160, %5
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %162

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %76, %27
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %8, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = shl i32 %44, 3
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %8, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add i32 %45, %52
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %63, %36
  %57 = load i8*, i8** @MEMBER_D, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 %64, 3
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %8, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add i32 %65, %72
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %12, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i32, i32* %14, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %32

79:                                               ; preds = %32
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ule i8* %80, %81
  br i1 %82, label %83, label %160

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 2, %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @verify(i32 %84, i32 %88, i32 %89, i8* %90, i8* %91)
  store i32 %92, i32* %16, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %154

94:                                               ; preds = %83
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8* %98, i8** %8, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ugt i8* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %162

103:                                              ; preds = %94
  %104 = load i32, i32* @num_of_matched, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @num_of_matched, align 4
  %106 = load i32, i32* @FILENAMEONLY, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %162

109:                                              ; preds = %103
  %110 = load i32, i32* @COUNT, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %141, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @FNAME, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.108, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %124, %117
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %120, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ne i32 %122, 10
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %118

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %132, %125
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %8, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 10
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = call i32 @putchar(i32 %135)
  br label %126

137:                                              ; preds = %126
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.107, i64 0, i64 0))
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  br label %153

141:                                              ; preds = %109
  br label %142

142:                                              ; preds = %147, %141
  %143 = load i8*, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %145, 10
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %8, align 8
  br label %142

150:                                              ; preds = %142
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %8, align 8
  br label %153

153:                                              ; preds = %150, %137
  br label %159

154:                                              ; preds = %83
  %155 = load i8*, i8** %11, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8* %158, i8** %8, align 8
  br label %159

159:                                              ; preds = %154, %153
  br label %160

160:                                              ; preds = %159, %79
  %161 = load i8*, i8** %8, align 8
  store i8* %161, i8** %11, align 8
  br label %23

162:                                              ; preds = %108, %102, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @blog(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %9, 2
  %11 = add nsw i32 %8, %10
  store i32 %11, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %20, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prep4(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %16, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i64 0, i64 %14
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %9

19:                                               ; preds = %9
  store i8 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 65), align 1
  store i8 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 97), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 103), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 103), align 1
  store i8 2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 116), align 4
  store i8 2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 116), align 4
  store i8 3, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 99), align 1
  store i8 3, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 99), align 1
  store i8 5, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 110), align 2
  store i8 5, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i64 0, i64 110), align 2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @blog(i32 4, i32 %20)
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* @BSize, align 1
  store i32 1, i32* %5, align 4
  store i32 1, i32* @Hashmask, align 4
  br label %23

23:                                               ; preds = %33, %19
  %24 = load i32, i32* %5, align 4
  %25 = load i8, i8* @BSize, align 1
  %26 = zext i8 %25 to i32
  %27 = mul nsw i32 %26, 3
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @Hashmask, align 4
  %31 = shl i32 %30, 1
  %32 = add i32 %31, 1
  store i32 %32, i32* @Hashmask, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load i32, i32* @Hashmask, align 4
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = call noalias i8* @malloc(i64 %40) #8
  store i8* %41, i8** @MEMBER_D, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %51, %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @Hashmask, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i8*, i8** @MEMBER_D, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %42

54:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %99, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i8, i8* @BSize, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %95, %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %73, 3
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i64
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add i32 %74, %85
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %68

90:                                               ; preds = %68
  %91 = load i8*, i8** @MEMBER_D, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 1, i8* %94, align 1
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %5, align 4
  br label %63

98:                                               ; preds = %63
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %55

102:                                              ; preds = %55
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sgrep(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10496 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 2048, i32* %10, align 4
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 94
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 36
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 10, i8* %30, align 1
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 94
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 36
  br i1 %48, label %49, label %55

49:                                               ; preds = %40, %31
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 10, i8* %54, align 1
  br label %55

55:                                               ; preds = %49, %40
  %56 = load i8*, i8** %5, align 8
  call void @char_tr(i8* %56, i32* %6)
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 %59
  store i8 10, i8* %60, align 1
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %68, %55
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 1024
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %61

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @WHOLELINE, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 256
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3.111, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 2) #9
  unreachable

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 20
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i8*, i8** %5, align 8
  call void @m_preprocess(i8* %91)
  br label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %6, align 4
  call void @prep_bm(i8* %93, i32 %94)
  br label %95

95:                                               ; preds = %92, %90
  br label %115

96:                                               ; preds = %84
  %97 = load i32, i32* @DNA, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %6, align 4
  call void @prep4(i8* %100, i32 %101)
  br label %114

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = icmp sge i32 %103, 24
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i8*, i8** %5, align 8
  call void @am_preprocess(i8* %106)
  br label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  call void @prep(i8* %108, i32 %109, i32 %110)
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %6, align 4
  call void @initmask(i8* %111, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @Mask, i64 0, i64 0), i32 %112, i32 0, i32* @endposition)
  br label %113

113:                                              ; preds = %107, %105
  br label %114

114:                                              ; preds = %113, %99
  br label %115

115:                                              ; preds = %114, %95
  store i32 1, i32* %13, align 4
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 8192, %127
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 %131
  store i8 %126, i8* %132, align 1
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %116

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %263, %136
  %138 = load i32, i32* %7, align 4
  %139 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = call i64 @read(i32 %138, i8* %142, i64 8192)
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %12, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %277

146:                                              ; preds = %137
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %147, %148
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %164, %146
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %156, 10
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp sgt i32 %159, %160
  br label %162

162:                                              ; preds = %158, %151
  %163 = phi i1 [ false, %151 ], [ %161, %158 ]
  br i1 %163, label %164, label %167

164:                                              ; preds = %162
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %15, align 4
  br label %151

167:                                              ; preds = %162
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %15, align 4
  %170 = sub nsw i32 %168, %169
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %14, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 %174
  store i8 10, i8* %175, align 1
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %204

178:                                              ; preds = %167
  %179 = load i32, i32* %6, align 4
  %180 = icmp sgt i32 %179, 20
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  call void @monkey(i8* %182, i32 %183, i8* %187, i8* %191)
  br label %203

192:                                              ; preds = %178
  %193 = load i8*, i8** %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  call void @bm(i8* %193, i32 %194, i8* %198, i8* %202)
  br label %203

203:                                              ; preds = %192, %181
  br label %248

204:                                              ; preds = %167
  %205 = load i32, i32* @DNA, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load i8*, i8** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i32, i32* %8, align 4
  call void @monkey4(i8* %208, i32 %209, i8* %213, i8* %217, i32 %218)
  br label %247

219:                                              ; preds = %204
  %220 = load i32, i32* %6, align 4
  %221 = icmp sge i32 %220, 24
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  %223 = load i8*, i8** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i32, i32* %8, align 4
  call void @a_monkey(i8* %223, i32 %224, i8* %228, i8* %232, i32 %233)
  br label %246

234:                                              ; preds = %219
  %235 = load i8*, i8** %5, align 8
  %236 = load i32, i32* %6, align 4
  %237 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i32, i32* %8, align 4
  call void @agrep(i8* %235, i32 %236, i8* %240, i8* %244, i32 %245)
  br label %246

246:                                              ; preds = %234, %222
  br label %247

247:                                              ; preds = %246, %207
  br label %248

248:                                              ; preds = %247, %203
  %249 = load i32, i32* @FILENAMEONLY, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* @num_of_matched, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.112, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %278

256:                                              ; preds = %251, %248
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %16, align 4
  %259 = sub nsw i32 %257, %258
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp slt i32 %260, 1024
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  store i32 1024, i32* %14, align 4
  br label %263

263:                                              ; preds = %262, %256
  %264 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = getelementptr inbounds [10496 x i8], [10496 x i8]* %9, i64 0, i64 0
  %269 = load i32, i32* %15, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = call i8* @strncpy(i8* %267, i8* %271, i64 %273) #8
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %14, align 4
  br label %137

277:                                              ; preds = %137
  br label %278

278:                                              ; preds = %277, %254
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @Push(%struct.snode** %0, %struct.rnode* %1) #0 {
  %3 = alloca %struct.snode*, align 8
  %4 = alloca %struct.snode**, align 8
  %5 = alloca %struct.rnode*, align 8
  %6 = alloca %struct.snode*, align 8
  store %struct.snode** %0, %struct.snode*** %4, align 8
  store %struct.rnode* %1, %struct.rnode** %5, align 8
  %7 = call noalias i8* @malloc(i64 24) #8
  %8 = bitcast i8* %7 to %struct.snode*
  store %struct.snode* %8, %struct.snode** %6, align 8
  %9 = load %struct.snode**, %struct.snode*** %4, align 8
  %10 = icmp eq %struct.snode** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.snode*, %struct.snode** %6, align 8
  %13 = icmp eq %struct.snode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store %struct.snode* null, %struct.snode** %3, align 8
  br label %42

15:                                               ; preds = %11
  %16 = load %struct.snode**, %struct.snode*** %4, align 8
  %17 = load %struct.snode*, %struct.snode** %16, align 8
  %18 = load %struct.snode*, %struct.snode** %6, align 8
  %19 = getelementptr inbounds %struct.snode, %struct.snode* %18, i32 0, i32 2
  store %struct.snode* %17, %struct.snode** %19, align 8
  %20 = load %struct.rnode*, %struct.rnode** %5, align 8
  %21 = load %struct.snode*, %struct.snode** %6, align 8
  %22 = getelementptr inbounds %struct.snode, %struct.snode* %21, i32 0, i32 0
  store %struct.rnode* %20, %struct.rnode** %22, align 8
  %23 = load %struct.snode**, %struct.snode*** %4, align 8
  %24 = load %struct.snode*, %struct.snode** %23, align 8
  %25 = icmp eq %struct.snode* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.snode*, %struct.snode** %6, align 8
  %28 = getelementptr inbounds %struct.snode, %struct.snode* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  br label %37

29:                                               ; preds = %15
  %30 = load %struct.snode**, %struct.snode*** %4, align 8
  %31 = load %struct.snode*, %struct.snode** %30, align 8
  %32 = getelementptr inbounds %struct.snode, %struct.snode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = load %struct.snode*, %struct.snode** %6, align 8
  %36 = getelementptr inbounds %struct.snode, %struct.snode* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.snode*, %struct.snode** %6, align 8
  %39 = load %struct.snode**, %struct.snode*** %4, align 8
  store %struct.snode* %38, %struct.snode** %39, align 8
  %40 = load %struct.snode**, %struct.snode*** %4, align 8
  %41 = load %struct.snode*, %struct.snode** %40, align 8
  store %struct.snode* %41, %struct.snode** %3, align 8
  br label %42

42:                                               ; preds = %37, %14
  %43 = load %struct.snode*, %struct.snode** %3, align 8
  ret %struct.snode* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @Pop(%struct.snode** %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca %struct.snode**, align 8
  %4 = alloca %struct.rnode*, align 8
  %5 = alloca %struct.snode*, align 8
  store %struct.snode** %0, %struct.snode*** %3, align 8
  %6 = load %struct.snode**, %struct.snode*** %3, align 8
  %7 = icmp eq %struct.snode** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.snode**, %struct.snode*** %3, align 8
  %10 = load %struct.snode*, %struct.snode** %9, align 8
  %11 = icmp eq %struct.snode* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %28

13:                                               ; preds = %8
  %14 = load %struct.snode**, %struct.snode*** %3, align 8
  %15 = load %struct.snode*, %struct.snode** %14, align 8
  store %struct.snode* %15, %struct.snode** %5, align 8
  %16 = load %struct.snode**, %struct.snode*** %3, align 8
  %17 = load %struct.snode*, %struct.snode** %16, align 8
  %18 = getelementptr inbounds %struct.snode, %struct.snode* %17, i32 0, i32 0
  %19 = load %struct.rnode*, %struct.rnode** %18, align 8
  store %struct.rnode* %19, %struct.rnode** %4, align 8
  %20 = load %struct.snode**, %struct.snode*** %3, align 8
  %21 = load %struct.snode*, %struct.snode** %20, align 8
  %22 = getelementptr inbounds %struct.snode, %struct.snode* %21, i32 0, i32 2
  %23 = load %struct.snode*, %struct.snode** %22, align 8
  %24 = load %struct.snode**, %struct.snode*** %3, align 8
  store %struct.snode* %23, %struct.snode** %24, align 8
  %25 = load %struct.snode*, %struct.snode** %5, align 8
  %26 = bitcast %struct.snode* %25 to i8*
  call void @free(i8* %26) #8
  %27 = load %struct.rnode*, %struct.rnode** %4, align 8
  store %struct.rnode* %27, %struct.rnode** %2, align 8
  br label %28

28:                                               ; preds = %13, %12
  %29 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %29
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @Top(%struct.snode* %0) #0 {
  %2 = alloca %struct.rnode*, align 8
  %3 = alloca %struct.snode*, align 8
  store %struct.snode* %0, %struct.snode** %3, align 8
  %4 = load %struct.snode*, %struct.snode** %3, align 8
  %5 = icmp eq %struct.snode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.rnode* null, %struct.rnode** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.snode*, %struct.snode** %3, align 8
  %9 = getelementptr inbounds %struct.snode, %struct.snode* %8, i32 0, i32 0
  %10 = load %struct.rnode*, %struct.rnode** %9, align 8
  store %struct.rnode* %10, %struct.rnode** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.rnode*, %struct.rnode** %2, align 8
  ret %struct.rnode* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Size(%struct.snode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snode*, align 8
  store %struct.snode* %0, %struct.snode** %3, align 8
  %4 = load %struct.snode*, %struct.snode** %3, align 8
  %5 = icmp eq %struct.snode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.snode*, %struct.snode** %3, align 8
  %9 = getelementptr inbounds %struct.snode, %struct.snode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @occurs_in(i32 %0, %struct.pnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pnode* %1, %struct.pnode** %5, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = load %struct.pnode*, %struct.pnode** %5, align 8
  %8 = icmp ne %struct.pnode* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.pnode*, %struct.pnode** %5, align 8
  %12 = getelementptr inbounds %struct.pnode, %struct.pnode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %22

16:                                               ; preds = %9
  %17 = load %struct.pnode*, %struct.pnode** %5, align 8
  %18 = getelementptr inbounds %struct.pnode, %struct.pnode* %17, i32 0, i32 1
  %19 = load %struct.pnode*, %struct.pnode** %18, align 8
  store %struct.pnode* %19, %struct.pnode** %5, align 8
  br label %20

20:                                               ; preds = %16
  br label %6

21:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pnode* @pset_union(%struct.pnode* %0, %struct.pnode* %1) #0 {
  %3 = alloca %struct.pnode*, align 8
  %4 = alloca %struct.pnode*, align 8
  %5 = alloca %struct.pnode*, align 8
  %6 = alloca %struct.pnode*, align 8
  %7 = alloca %struct.pnode*, align 8
  %8 = alloca %struct.pnode*, align 8
  store %struct.pnode* %0, %struct.pnode** %4, align 8
  store %struct.pnode* %1, %struct.pnode** %5, align 8
  store %struct.pnode* null, %struct.pnode** %6, align 8
  store %struct.pnode* null, %struct.pnode** %7, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.pnode*, %struct.pnode** %4, align 8
  %11 = icmp ne %struct.pnode* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load %struct.pnode*, %struct.pnode** %4, align 8
  %14 = getelementptr inbounds %struct.pnode, %struct.pnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pnode*, %struct.pnode** %5, align 8
  %17 = call i32 @occurs_in(i32 %15, %struct.pnode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %12
  %20 = call noalias i8* @malloc(i64 16) #8
  %21 = bitcast i8* %20 to %struct.pnode*
  store %struct.pnode* %21, %struct.pnode** %8, align 8
  %22 = load %struct.pnode*, %struct.pnode** %8, align 8
  %23 = icmp eq %struct.pnode* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.pnode* null, %struct.pnode** %3, align 8
  br label %56

25:                                               ; preds = %19
  %26 = load %struct.pnode*, %struct.pnode** %4, align 8
  %27 = getelementptr inbounds %struct.pnode, %struct.pnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pnode*, %struct.pnode** %8, align 8
  %30 = getelementptr inbounds %struct.pnode, %struct.pnode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pnode*, %struct.pnode** %6, align 8
  %32 = icmp eq %struct.pnode* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.pnode*, %struct.pnode** %8, align 8
  store %struct.pnode* %34, %struct.pnode** %6, align 8
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.pnode*, %struct.pnode** %8, align 8
  %37 = load %struct.pnode*, %struct.pnode** %7, align 8
  %38 = getelementptr inbounds %struct.pnode, %struct.pnode* %37, i32 0, i32 1
  store %struct.pnode* %36, %struct.pnode** %38, align 8
  br label %39

39:                                               ; preds = %35, %33
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.pnode*, %struct.pnode** %8, align 8
  store %struct.pnode* %41, %struct.pnode** %7, align 8
  %42 = load %struct.pnode*, %struct.pnode** %4, align 8
  %43 = getelementptr inbounds %struct.pnode, %struct.pnode* %42, i32 0, i32 1
  %44 = load %struct.pnode*, %struct.pnode** %43, align 8
  store %struct.pnode* %44, %struct.pnode** %4, align 8
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.pnode*, %struct.pnode** %6, align 8
  %47 = icmp eq %struct.pnode* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %struct.pnode*, %struct.pnode** %5, align 8
  store %struct.pnode* %49, %struct.pnode** %6, align 8
  br label %54

50:                                               ; preds = %45
  %51 = load %struct.pnode*, %struct.pnode** %5, align 8
  %52 = load %struct.pnode*, %struct.pnode** %7, align 8
  %53 = getelementptr inbounds %struct.pnode, %struct.pnode* %52, i32 0, i32 1
  store %struct.pnode* %51, %struct.pnode** %53, align 8
  br label %54

54:                                               ; preds = %50, %48
  %55 = load %struct.pnode*, %struct.pnode** %6, align 8
  store %struct.pnode* %55, %struct.pnode** %3, align 8
  br label %56

56:                                               ; preds = %54, %24
  %57 = load %struct.pnode*, %struct.pnode** %3, align 8
  ret %struct.pnode* %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pnode* @create_pos(i32 %0) #0 {
  %2 = alloca %struct.pnode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnode*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 16) #8
  %6 = bitcast i8* %5 to %struct.pnode*
  store %struct.pnode* %6, %struct.pnode** %4, align 8
  %7 = load %struct.pnode*, %struct.pnode** %4, align 8
  %8 = icmp eq %struct.pnode* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.pnode* null, %struct.pnode** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pnode*, %struct.pnode** %4, align 8
  %13 = getelementptr inbounds %struct.pnode, %struct.pnode* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.pnode*, %struct.pnode** %4, align 8
  %15 = getelementptr inbounds %struct.pnode, %struct.pnode* %14, i32 0, i32 1
  store %struct.pnode* null, %struct.pnode** %15, align 8
  %16 = load %struct.pnode*, %struct.pnode** %4, align 8
  store %struct.pnode* %16, %struct.pnode** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.pnode*, %struct.pnode** %2, align 8
  ret %struct.pnode* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subset_pset(%struct.pnode* %0, %struct.pnode* %1) #0 {
  %3 = alloca %struct.pnode*, align 8
  %4 = alloca %struct.pnode*, align 8
  %5 = alloca i32, align 4
  store %struct.pnode* %0, %struct.pnode** %3, align 8
  store %struct.pnode* %1, %struct.pnode** %4, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %37, %2
  %7 = load %struct.pnode*, %struct.pnode** %3, align 8
  %8 = icmp ne %struct.pnode* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %41

14:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load %struct.pnode*, %struct.pnode** %4, align 8
  %17 = icmp ne %struct.pnode* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 1
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = load %struct.pnode*, %struct.pnode** %3, align 8
  %25 = getelementptr inbounds %struct.pnode, %struct.pnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pnode*, %struct.pnode** %4, align 8
  %28 = getelementptr inbounds %struct.pnode, %struct.pnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.pnode*, %struct.pnode** %4, align 8
  %34 = getelementptr inbounds %struct.pnode, %struct.pnode* %33, i32 0, i32 1
  %35 = load %struct.pnode*, %struct.pnode** %34, align 8
  store %struct.pnode* %35, %struct.pnode** %4, align 8
  br label %36

36:                                               ; preds = %32, %31
  br label %15

37:                                               ; preds = %21
  %38 = load %struct.pnode*, %struct.pnode** %3, align 8
  %39 = getelementptr inbounds %struct.pnode, %struct.pnode* %38, i32 0, i32 1
  %40 = load %struct.pnode*, %struct.pnode** %39, align 8
  store %struct.pnode* %40, %struct.pnode** %3, align 8
  br label %6

41:                                               ; preds = %12
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @eq_pset(%struct.pnode* %0, %struct.pnode* %1) #0 {
  %3 = alloca %struct.pnode*, align 8
  %4 = alloca %struct.pnode*, align 8
  store %struct.pnode* %0, %struct.pnode** %3, align 8
  store %struct.pnode* %1, %struct.pnode** %4, align 8
  %5 = load %struct.pnode*, %struct.pnode** %3, align 8
  %6 = load %struct.pnode*, %struct.pnode** %4, align 8
  %7 = call i32 @subset_pset(%struct.pnode* %5, %struct.pnode* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.pnode*, %struct.pnode** %4, align 8
  %11 = load %struct.pnode*, %struct.pnode** %3, align 8
  %12 = call i32 @subset_pset(%struct.pnode* %10, %struct.pnode* %11)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
