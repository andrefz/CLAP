; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._W_bolstruct = type { [16 x i8], [16 x i8], [16 x i8] }
%struct._W_comstruct = type { [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.R_flstr = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._K_str = type { i32, i32, i32, i8*, %struct.R_flstr*, %struct._T_tstr* }
%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }
%struct.edt = type { %struct.edt*, i32, i32, i32 }

@_C_nextcmd = internal global i32 0, align 4
@_C_cmds = internal global [100 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"command word is too long\00", align 1
@_C_cmdword = internal global [20 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"tol\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nestcom\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resetcomments\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resetliterals\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"beginchar\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"endchar\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"addalpha\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"don't understand command %s\0A\00", align 1
@_W_bolchar = dso_local global i8 94, align 1
@_W_eolchar = dso_local global i8 36, align 1
@_W_bols = common dso_local global [20 x %struct._W_bolstruct] zeroinitializer, align 16
@_W_coms = common dso_local global [20 x %struct._W_comstruct] zeroinitializer, align 16
@_W_lits = common dso_local global [20 x %struct._W_bolstruct] zeroinitializer, align 16
@_W_nextbol = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"too many beginning of line comment delimiter sets\00", align 1
@.str.1.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.15 = private unnamed_addr constant [36 x i8] c"begining of line comment won't nest\00", align 1
@_W_nextcom = internal global i32 0, align 4
@.str.3.16 = private unnamed_addr constant [32 x i8] c"too many comment delimiter sets\00", align 1
@_W_nextlit = internal global i32 0, align 4
@.str.4.21 = private unnamed_addr constant [32 x i8] c"too many literal delimiter sets\00", align 1
@bol_scratch = internal global %struct._W_bolstruct zeroinitializer, align 1
@lit_scratch = internal global %struct._W_bolstruct zeroinitializer, align 1
@com_scratch = internal global %struct._W_comstruct zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [32 x i8] c"fell off switch in _X_cmptokens\00", align 1
@.str.1.25 = private unnamed_addr constant [42 x i8] c"_X_floatdiff called with a null tolerance\00", align 1
@.str.2.26 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3.27 = private unnamed_addr constant [45 x i8] c"bad value for type of tolerance in floatdiff\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"unequal number of tokens, %d and %d respectively\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"didn't use up all of %s in atocf\00", align 1
@.str.1.30 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@F_floatsub.needinit = internal global i32 1, align 4
@F_floatsub.result = internal global %struct.R_flstr* null, align 8
@F_floatsub.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.man2 = internal global [200 x i8] zeroinitializer, align 16
@.str.2.33 = private unnamed_addr constant [51 x i8] c"mantissas didn't get lined up properly in floatsub\00", align 1
@.str.3.34 = private unnamed_addr constant [32 x i8] c"lengths not equal in F_floatsub\00", align 1
@F_floatsub.diff = internal global [200 x i8] zeroinitializer, align 16
@F_floatcmp.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatcmp.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.needinit = internal global i32 1, align 4
@F_floatmul.result = internal global %struct.R_flstr* null, align 8
@F_floatmul.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.prod = internal global [200 x i8] zeroinitializer, align 16
@_F_stradd.result = internal global [200 x i8] zeroinitializer, align 16
@F_floatmagadd.needinit = internal global i32 1, align 4
@F_floatmagadd.result = internal global %struct.R_flstr* null, align 8
@F_floatmagadd.man1 = internal global [200 x i8] zeroinitializer, align 16
@.str.4.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@F_floatmagadd.man2 = internal global [200 x i8] zeroinitializer, align 16
@.str.5.42 = private unnamed_addr constant [40 x i8] c"numbers differ by too much in magnitude\00", align 1
@_L_brlm = common dso_local global i32 0, align 4
@_L_arlm = common dso_local global i32 0, align 4
@_L_bclm = common dso_local global i32 0, align 4
@_L_aclm = common dso_local global i32 0, align 4
@_L_btlm = common dso_local global i32 0, align 4
@_L_atlm = common dso_local global i32 0, align 4
@_L_al = common dso_local global [10000 x i8*] zeroinitializer, align 16
@_L_bl = common dso_local global [10000 x i8*] zeroinitializer, align 16
@_L_ai = common dso_local global [10000 x i32] zeroinitializer, align 16
@_L_bi = common dso_local global [10000 x i32] zeroinitializer, align 16
@_L_ac = common dso_local global [10000 x i32] zeroinitializer, align 16
@_L_bc = common dso_local global [10000 x i32] zeroinitializer, align 16
@_L_aclindex = common dso_local global [10000 x i32] zeroinitializer, align 16
@_L_bclindex = common dso_local global [10000 x i32] zeroinitializer, align 16
@_L_atlindex = common dso_local global [10000 x i32] zeroinitializer, align 16
@_L_btlindex = common dso_local global [10000 x i32] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.48 = private unnamed_addr constant [22 x i8] c"Cannot open file %s.\0A\00", align 1
@L_init_file.buf = internal global [1026 x i8] zeroinitializer, align 16
@.str.2.49 = private unnamed_addr constant [48 x i8] c"fatal error -- got 0 length line %d in file %s\0A\00", align 1
@.str.3.50 = private unnamed_addr constant [65 x i8] c"got fatally long line %d in file %s length is %d, must be a bug\0A\00", align 1
@.str.4.51 = private unnamed_addr constant [64 x i8] c"line %d too long in file %s, newline added after %d characters\0A\00", align 1
@.str.5.52 = private unnamed_addr constant [63 x i8] c"didn't find a newline at end of line %d in file %s, added one\0A\00", align 1
@.str.6.53 = private unnamed_addr constant [63 x i8] c"warning -- ran out of space reading %s, truncated to %d lines\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [27 x i8] c"fell off end of do_miller\0A\00", align 1
@Z_err_buf = common dso_local global [1024 x i8] zeroinitializer, align 16
@_Z_qflag = internal global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.60 = private unnamed_addr constant [10 x i8] c"spiff -- \00", align 1
@.str.1.67 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@.str.2.70 = private unnamed_addr constant [41 x i8] c"The files differ in more than %d places\0A\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.74 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.3.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [5 x i8] c"d%d\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [4 x i8] c"c%d\00", align 1
@.str.6.79 = private unnamed_addr constant [29 x i8] c"type in O_output wasn't set\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [5 x i8] c"< %s\00", align 1
@.str.8.81 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [5 x i8] c"> %s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@_O_need_init = internal global i32 1, align 4
@_O_st_ok = internal global i32 0, align 4
@_O_doing_ul = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@_O_st_tmp = internal global i8* null, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"can't find TERM entry in environment\0A\00", align 1
@_O_get_text.buf = internal global [2048 x i8] zeroinitializer, align 16
@.str.10.83 = private unnamed_addr constant [29 x i8] c"%s -- line %d, character %d\0A\00", align 1
@_O_convert.spacetext = internal global [20 x i8] zeroinitializer, align 16
@.str.11.84 = private unnamed_addr constant [10 x i8] c"<NEWLINE>\00", align 1
@.str.12.85 = private unnamed_addr constant [6 x i8] c"<TAB>\00", align 1
@.str.13.86 = private unnamed_addr constant [8 x i8] c"<SPACE>\00", align 1
@_P_alpha = internal global [256 x i8] zeroinitializer, align 16
@.str.89 = private unnamed_addr constant [47 x i8] c"too many characters added to extended alphabet\00", align 1
@_P_fnumb = internal global i32 0, align 4
@_P_start = internal global i32 0, align 4
@_P_lcount = internal global i32 0, align 4
@_P_flags = internal global i32 0, align 4
@_P_dummyline = internal global [2 x i8] zeroinitializer, align 1
@_P_nextchr = internal global i8* null, align 8
@_P_has_content = internal global i32 0, align 4
@_P_next_tol = internal global i32 0, align 4
@_P_realline = internal global i32 0, align 4
@.str.1.90 = private unnamed_addr constant [36 x i8] c"parser got confused at end of file\0A\00", align 1
@_P_firstchr = internal global i8* null, align 8
@_P_stringsize = internal global i32 0, align 4
@.str.2.91 = private unnamed_addr constant [70 x i8] c"warning -- to many tokens in file only first %d tokens will be used.\0A\00", align 1
@.str.3.92 = private unnamed_addr constant [32 x i8] c"scanned %d words from file #%d\0A\00", align 1
@_Y_flags = internal global i32 0, align 4
@_Y_vflag = internal global i32 0, align 4
@_Y_eflag = internal global i32 0, align 4
@.str.93 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.94 = private unnamed_addr constant [25 x i8] c"can't open command file\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [21 x i8] c"literal  \22   \22    \\ \00", align 1
@.str.3.96 = private unnamed_addr constant [18 x i8] c"comment  /*  */\09 \00", align 1
@.str.4.97 = private unnamed_addr constant [15 x i8] c"literal  &&\09\09 \00", align 1
@.str.5.98 = private unnamed_addr constant [15 x i8] c"literal  ||\09\09 \00", align 1
@.str.6.99 = private unnamed_addr constant [15 x i8] c"literal  <=\09\09 \00", align 1
@.str.7.100 = private unnamed_addr constant [15 x i8] c"literal  >=\09\09 \00", align 1
@.str.8.101 = private unnamed_addr constant [15 x i8] c"literal  !=\09\09 \00", align 1
@.str.9.102 = private unnamed_addr constant [15 x i8] c"literal  ==\09\09 \00", align 1
@.str.10.103 = private unnamed_addr constant [15 x i8] c"literal  --\09\09 \00", align 1
@.str.11.104 = private unnamed_addr constant [15 x i8] c"literal  ++\09\09 \00", align 1
@.str.12.105 = private unnamed_addr constant [15 x i8] c"literal  <<\09\09 \00", align 1
@.str.13.106 = private unnamed_addr constant [15 x i8] c"literal  >>\09\09 \00", align 1
@.str.14.107 = private unnamed_addr constant [15 x i8] c"literal  ->\09\09 \00", align 1
@.str.15.108 = private unnamed_addr constant [14 x i8] c"addalpha _\09\09 \00", align 1
@.str.16.109 = private unnamed_addr constant [16 x i8] c"tol      a0 \09\09 \00", align 1
@.str.17.110 = private unnamed_addr constant [22 x i8] c"literal  '    '    \\\09\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"comment  #    $\09\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tol      a0 \09\09\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"literal  '\09'     ' \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"comment  ^C   $\09\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"literal  \22 \09\22\09\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"comment  ; \09$\09\00", align 1
@.str.24.111 = private unnamed_addr constant [14 x i8] c"literal ' \09'\09\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"literal \22\09\22\09\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"comment (*\09*)\09\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"literal :=\09\09\00", align 1
@.str.28.112 = private unnamed_addr constant [13 x i8] c"literal <>\09\09\00", align 1
@.str.29.113 = private unnamed_addr constant [13 x i8] c"literal <=\09\09\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"literal >=\09\09\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"don't understand arguments\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"spiff requires two file names.\0A\00", align 1
@_K_bto = common dso_local global [50000 x %struct._K_str*] zeroinitializer, align 16
@_K_ato = common dso_local global [50000 x %struct._K_str*] zeroinitializer, align 16
@_K_atm = common dso_local global i32 0, align 4
@_K_btm = common dso_local global i32 0, align 4
@_T_gtol = dso_local global %struct._T_tstr* null, align 8
@T_initdefault.called_before = internal global i32 0, align 4
@.str.144 = private unnamed_addr constant [37 x i8] c"T_initdefault called more than once\0A\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"1e-10\00", align 1
@.str.3.148 = private unnamed_addr constant [47 x i8] c"%s : negative tolerances don't make any sense\0A\00", align 1
@.str.4.149 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.5.150 = private unnamed_addr constant [62 x i8] c"%s : relative tolerances greater than 2 don't make any sense\0A\00", align 1
@_T_tols = internal global [10 x %struct._T_tstr*] zeroinitializer, align 16
@.str.6.153 = private unnamed_addr constant [38 x i8] c"don't understand tolerance type '%c'\0A\00", align 1
@.str.2.156 = private unnamed_addr constant [29 x i8] c"too many tolerances per line\00", align 1
@_T_getspec.retval = internal global [1024 x i8] zeroinitializer, align 16
@.str.165 = private unnamed_addr constant [46 x i8] c"visual mode is not available on this machine\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @C_addcmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @_C_nextcmd, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @_C_nextcmd, align 4
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i64 0, i64 %5
  %7 = load i8*, i8** %2, align 8
  call void (i8**, i8*, ...) bitcast (void (i8**, i8*)* @S_savestr to void (i8**, i8*, ...)*)(i8** %6, i8* %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @C_docmds() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @_C_nextcmd, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  call void @_C_do_a_cmd(i8* %10)
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_C_do_a_cmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  call void (i8**, ...) bitcast (void (i8**)* @S_skipspace to void (i8**, ...)*)(i8** %2)
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9) #6
  %11 = icmp uge i64 %10, 20
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), i8* %14)
  br label %111

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %20 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (i8*)* @T_tolline to void (i8*, ...)*)(i8* %20)
  br label %110

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strlen(i8* %26) #6
  %28 = icmp uge i64 %27, 20
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i8*, i8** %2, align 8
  call void (i8*, i32, ...) bitcast (void (i8*, i32)* @W_addcom to void (i8*, i32, ...)*)(i8* %31, i32 0)
  br label %109

32:                                               ; preds = %21
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %37 = load i8*, i8** %2, align 8
  %38 = call i64 @strlen(i8* %37) #6
  %39 = icmp uge i64 %38, 20
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8*, i8** %2, align 8
  call void (i8*, i32, ...) bitcast (void (i8*, i32)* @W_addcom to void (i8*, i32, ...)*)(i8* %42, i32 1)
  br label %108

43:                                               ; preds = %32
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %48 = load i8*, i8** %2, align 8
  %49 = call i64 @strlen(i8* %48) #6
  %50 = icmp uge i64 %49, 20
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (i8*)* @W_addlit to void (i8*, ...)*)(i8* %53)
  br label %107

54:                                               ; preds = %43
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  call void (...) bitcast (void ()* @W_clearcoms to void (...)*)()
  br label %106

59:                                               ; preds = %54
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void (...) bitcast (void ()* @W_clearlits to void (...)*)()
  br label %105

64:                                               ; preds = %59
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %69 = load i8*, i8** %2, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* @_W_bolchar, align 1
  br label %104

71:                                               ; preds = %64
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %76 = load i8*, i8** %2, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* @_W_eolchar, align 1
  br label %103

78:                                               ; preds = %71
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %83 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (i8*)* @P_addalpha to void (i8*, ...)*)(i8* %83)
  br label %102

84:                                               ; preds = %78
  %85 = load i8*, i8** %2, align 8
  %86 = call i64 @strlen(i8* %85) #6
  %87 = icmp eq i64 0, %86
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %2, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 35, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %88, %84
  br label %101

98:                                               ; preds = %92
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %99) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %97
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %68
  br label %105

105:                                              ; preds = %104, %63
  br label %106

106:                                              ; preds = %105, %58
  br label %107

107:                                              ; preds = %106, %52
  br label %108

108:                                              ; preds = %107, %41
  br label %109

109:                                              ; preds = %108, %30
  br label %110

110:                                              ; preds = %109, %19
  br label %111

111:                                              ; preds = %110, %13
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @C_clear_cmd() #0 {
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @C_is_cmd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), align 16
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 0, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %4, align 8
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %4)
  %14 = load i8*, i8** %4, align 8
  call void @_C_do_a_cmd(i8* %14)
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @W_addcom(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8, i8* @_W_bolchar, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = load i32, i32* @_W_nextbol, align 4
  %13 = icmp sge i32 %12, 20
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i32, i32* @_W_nextbol, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %19
  %21 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %20, i32 0, i32 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 0
  %23 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %22, i8* %23)
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %3)
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @_W_eolchar, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = load i32, i32* @_W_nextbol, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %32
  %34 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %33, i32 0, i32 1
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %34, i64 0, i64 0
  %36 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i64 0, i64 0)) #7
  br label %44

37:                                               ; preds = %15
  %38 = load i32, i32* @_W_nextbol, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %39
  %41 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %40, i32 0, i32 1
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %41, i64 0, i64 0
  %43 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %42, i8* %43)
  br label %44

44:                                               ; preds = %37, %30
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %3)
  %45 = load i32, i32* @_W_nextbol, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %46
  %48 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %47, i32 0, i32 2
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %48, i64 0, i64 0
  %50 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %49, i8* %50)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2.15, i64 0, i64 0))
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* @_W_nextbol, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @_W_nextbol, align 4
  br label %102

57:                                               ; preds = %2
  %58 = load i32, i32* @_W_nextcom, align 4
  %59 = icmp sge i32 %58, 20
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.16, i64 0, i64 0))
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* @_W_nextcom, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %63
  %65 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %64, i32 0, i32 0
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %65, i64 0, i64 0
  %67 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %66, i8* %67)
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %3)
  %68 = load i8*, i8** %3, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @_W_eolchar, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load i32, i32* @_W_nextbol, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %76
  %78 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %77, i32 0, i32 1
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %78, i64 0, i64 0
  %80 = call i8* @strcpy(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i64 0, i64 0)) #7
  br label %88

81:                                               ; preds = %61
  %82 = load i32, i32* @_W_nextbol, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %83
  %85 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %84, i32 0, i32 1
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %85, i64 0, i64 0
  %87 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %86, i8* %87)
  br label %88

88:                                               ; preds = %81, %74
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %3)
  %89 = load i32, i32* @_W_nextcom, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %90
  %92 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %91, i32 0, i32 2
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %92, i64 0, i64 0
  %94 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %93, i8* %94)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @_W_nextcom, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %97
  %99 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %98, i32 0, i32 3
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @_W_nextcom, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @_W_nextcom, align 4
  br label %102

102:                                              ; preds = %88, %54
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @W_clearcoms() #0 {
  store i32 0, i32* @_W_nextcom, align 4
  store i32 0, i32* @_W_nextbol, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @W_addlit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @_W_nextlit, align 4
  %4 = icmp sge i32 %3, 20
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4.21, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, i32* @_W_nextlit, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %8
  %10 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %9, i32 0, i32 0
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %12 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %11, i8* %12)
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %13 = load i32, i32* @_W_nextlit, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %14
  %16 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %17, i8* %18)
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %2)
  %19 = load i32, i32* @_W_nextlit, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %20
  %22 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %21, i32 0, i32 2
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %24 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %23, i8* %24)
  %25 = load i32, i32* @_W_nextlit, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @_W_nextlit, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @W_clearlits() #0 {
  store i32 0, i32* @_W_nextlit, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._W_bolstruct* @W_isbol(i8* %0) #0 {
  %2 = alloca %struct._W_bolstruct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_W_nextbol, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %12
  %14 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %13, i32 0, i32 0
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %10, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %20
  call void @_W_copybol(%struct._W_bolstruct* @bol_scratch, %struct._W_bolstruct* %21)
  store %struct._W_bolstruct* @bol_scratch, %struct._W_bolstruct** %2, align 8
  br label %27

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %5

26:                                               ; preds = %5
  store %struct._W_bolstruct* null, %struct._W_bolstruct** %2, align 8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct._W_bolstruct*, %struct._W_bolstruct** %2, align 8
  ret %struct._W_bolstruct* %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @_W_copybol(%struct._W_bolstruct* %0, %struct._W_bolstruct* %1) #0 {
  %3 = alloca %struct._W_bolstruct*, align 8
  %4 = alloca %struct._W_bolstruct*, align 8
  store %struct._W_bolstruct* %0, %struct._W_bolstruct** %3, align 8
  store %struct._W_bolstruct* %1, %struct._W_bolstruct** %4, align 8
  %5 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %6 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %8 = load %struct._W_bolstruct*, %struct._W_bolstruct** %4, align 8
  %9 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %8, i32 0, i32 0
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %11 = call i8* @strcpy(i8* %7, i8* %10) #7
  %12 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %13 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %12, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %15 = load %struct._W_bolstruct*, %struct._W_bolstruct** %4, align 8
  %16 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i8* @strcpy(i8* %14, i8* %17) #7
  %19 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %20 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %19, i32 0, i32 2
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %22 = load %struct._W_bolstruct*, %struct._W_bolstruct** %4, align 8
  %23 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %22, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %25 = call i8* @strcpy(i8* %21, i8* %24) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @W_is_bol(%struct._W_bolstruct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._W_bolstruct*, align 8
  %4 = alloca i32, align 4
  store %struct._W_bolstruct* %0, %struct._W_bolstruct** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_W_nextbol, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %5
  %10 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %11 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %10, i32 0, i32 0
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %14
  %16 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %15, i32 0, i32 0
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %12, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %9
  %21 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %22 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %21, i32 0, i32 1
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %25
  %27 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %26, i32 0, i32 1
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 0
  %29 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %23, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %20
  %32 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %33 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %32, i32 0, i32 2
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %33, i64 0, i64 0
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i64 0, i64 %36
  %38 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %37, i32 0, i32 2
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %34, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %48

43:                                               ; preds = %31, %20, %9
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %5

47:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._W_bolstruct* @W_islit(i8* %0) #0 {
  %2 = alloca %struct._W_bolstruct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_W_nextlit, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %12
  %14 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %13, i32 0, i32 0
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %10, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %20
  call void @_W_copylit(%struct._W_bolstruct* @lit_scratch, %struct._W_bolstruct* %21)
  store %struct._W_bolstruct* @lit_scratch, %struct._W_bolstruct** %2, align 8
  br label %27

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %5

26:                                               ; preds = %5
  store %struct._W_bolstruct* null, %struct._W_bolstruct** %2, align 8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct._W_bolstruct*, %struct._W_bolstruct** %2, align 8
  ret %struct._W_bolstruct* %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @_W_copylit(%struct._W_bolstruct* %0, %struct._W_bolstruct* %1) #0 {
  %3 = alloca %struct._W_bolstruct*, align 8
  %4 = alloca %struct._W_bolstruct*, align 8
  store %struct._W_bolstruct* %0, %struct._W_bolstruct** %3, align 8
  store %struct._W_bolstruct* %1, %struct._W_bolstruct** %4, align 8
  %5 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %6 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %8 = load %struct._W_bolstruct*, %struct._W_bolstruct** %4, align 8
  %9 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %8, i32 0, i32 0
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %11 = call i8* @strcpy(i8* %7, i8* %10) #7
  %12 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %13 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %12, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %15 = load %struct._W_bolstruct*, %struct._W_bolstruct** %4, align 8
  %16 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i8* @strcpy(i8* %14, i8* %17) #7
  %19 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %20 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %19, i32 0, i32 2
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %22 = load %struct._W_bolstruct*, %struct._W_bolstruct** %4, align 8
  %23 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %22, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %25 = call i8* @strcpy(i8* %21, i8* %24) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @W_is_lit(%struct._W_bolstruct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._W_bolstruct*, align 8
  %4 = alloca i32, align 4
  store %struct._W_bolstruct* %0, %struct._W_bolstruct** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_W_nextlit, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %5
  %10 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %11 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %10, i32 0, i32 0
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %14
  %16 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %15, i32 0, i32 0
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %12, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %9
  %21 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %22 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %21, i32 0, i32 1
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %25
  %27 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %26, i32 0, i32 1
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 0
  %29 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %23, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %20
  %32 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %33 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %32, i32 0, i32 2
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %33, i64 0, i64 0
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_lits, i64 0, i64 %36
  %38 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %37, i32 0, i32 2
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %34, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %48

43:                                               ; preds = %31, %20, %9
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %5

47:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._W_comstruct* @W_iscom(i8* %0) #0 {
  %2 = alloca %struct._W_comstruct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_W_nextcom, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %12
  %14 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %13, i32 0, i32 0
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %10, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %20
  call void @_W_copycom(%struct._W_comstruct* @com_scratch, %struct._W_comstruct* %21)
  store %struct._W_comstruct* @com_scratch, %struct._W_comstruct** %2, align 8
  br label %27

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %5

26:                                               ; preds = %5
  store %struct._W_comstruct* null, %struct._W_comstruct** %2, align 8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct._W_comstruct*, %struct._W_comstruct** %2, align 8
  ret %struct._W_comstruct* %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @_W_copycom(%struct._W_comstruct* %0, %struct._W_comstruct* %1) #0 {
  %3 = alloca %struct._W_comstruct*, align 8
  %4 = alloca %struct._W_comstruct*, align 8
  store %struct._W_comstruct* %0, %struct._W_comstruct** %3, align 8
  store %struct._W_comstruct* %1, %struct._W_comstruct** %4, align 8
  %5 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %6 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %8 = load %struct._W_comstruct*, %struct._W_comstruct** %4, align 8
  %9 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %8, i32 0, i32 0
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %11 = call i8* @strcpy(i8* %7, i8* %10) #7
  %12 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %13 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %12, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %15 = load %struct._W_comstruct*, %struct._W_comstruct** %4, align 8
  %16 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i8* @strcpy(i8* %14, i8* %17) #7
  %19 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %20 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %19, i32 0, i32 2
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %22 = load %struct._W_comstruct*, %struct._W_comstruct** %4, align 8
  %23 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %22, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %25 = call i8* @strcpy(i8* %21, i8* %24) #7
  %26 = load %struct._W_comstruct*, %struct._W_comstruct** %4, align 8
  %27 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %30 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @W_is_com(%struct._W_comstruct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._W_comstruct*, align 8
  %4 = alloca i32, align 4
  store %struct._W_comstruct* %0, %struct._W_comstruct** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %54, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_W_nextcom, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %57

9:                                                ; preds = %5
  %10 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %11 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %10, i32 0, i32 0
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %14
  %16 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %15, i32 0, i32 0
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %12, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %9
  %21 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %22 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %21, i32 0, i32 1
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %25
  %27 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %26, i32 0, i32 1
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 0
  %29 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %23, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %20
  %32 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %33 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %32, i32 0, i32 2
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %33, i64 0, i64 0
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %36
  %38 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %37, i32 0, i32 2
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %34, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %31
  %43 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %44 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i64 0, i64 %47
  %49 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %58

53:                                               ; preds = %42, %31, %20, %9
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %5

57:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @W_is_nesting(%struct._W_comstruct* %0) #0 {
  %2 = alloca %struct._W_comstruct*, align 8
  store %struct._W_comstruct* %0, %struct._W_comstruct** %2, align 8
  %3 = load %struct._W_comstruct*, %struct._W_comstruct** %2, align 8
  %4 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @X_com(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._K_str*, align 8
  %9 = alloca %struct._K_str*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %11
  %13 = load %struct._K_str*, %struct._K_str** %12, align 8
  store %struct._K_str* %13, %struct._K_str** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %15
  %17 = load %struct._K_str*, %struct._K_str** %16, align 8
  store %struct._K_str* %17, %struct._K_str** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct._K_str*, %struct._K_str** %8, align 8
  %23 = getelementptr inbounds %struct._K_str, %struct._K_str* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct._K_str*, %struct._K_str** %9, align 8
  %26 = getelementptr inbounds %struct._K_str, %struct._K_str* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @_X_strcmp(i8* %24, i8* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct._K_str*, %struct._K_str** %8, align 8
  %32 = load %struct._K_str*, %struct._K_str** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @_X_cmptokens(%struct._K_str* %31, %struct._K_str* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %21
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_X_strcmp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %83

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %69, %11
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* null, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 0, %18
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %74

22:                                               ; preds = %20
  %23 = call i16** @__ctype_b_loc() #8
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 1024
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %22
  %35 = call i16** @__ctype_b_loc() #8
  %36 = load i16*, i16** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %36, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 1024
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %34
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 @tolower(i32 %49) #6
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 @tolower(i32 %53) #6
  %55 = icmp ne i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %87

57:                                               ; preds = %46
  br label %68

58:                                               ; preds = %34, %22
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %87

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %12

74:                                               ; preds = %20
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %77, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %87

83:                                               ; preds = %3
  %84 = load i8*, i8** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strcmp(i8* %84, i8* %85) #6
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %74, %66, %56
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_X_cmptokens(%struct._K_str* %0, %struct._K_str* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._K_str*, align 8
  %6 = alloca %struct._K_str*, align 8
  %7 = alloca i32, align 4
  store %struct._K_str* %0, %struct._K_str** %5, align 8
  store %struct._K_str* %1, %struct._K_str** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct._K_str*, %struct._K_str** %5, align 8
  %9 = getelementptr inbounds %struct._K_str, %struct._K_str* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct._K_str*, %struct._K_str** %6, align 8
  %12 = getelementptr inbounds %struct._K_str, %struct._K_str* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load %struct._K_str*, %struct._K_str** %5, align 8
  %18 = getelementptr inbounds %struct._K_str, %struct._K_str* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %44 [
    i32 1, label %20
    i32 2, label %29
  ]

20:                                               ; preds = %16
  %21 = load %struct._K_str*, %struct._K_str** %5, align 8
  %22 = getelementptr inbounds %struct._K_str, %struct._K_str* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct._K_str*, %struct._K_str** %6, align 8
  %25 = getelementptr inbounds %struct._K_str, %struct._K_str* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @_X_strcmp(i8* %23, i8* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %16
  %30 = load %struct._K_str*, %struct._K_str** %5, align 8
  %31 = getelementptr inbounds %struct._K_str, %struct._K_str* %30, i32 0, i32 4
  %32 = load %struct.R_flstr*, %struct.R_flstr** %31, align 8
  %33 = load %struct._K_str*, %struct._K_str** %6, align 8
  %34 = getelementptr inbounds %struct._K_str, %struct._K_str* %33, i32 0, i32 4
  %35 = load %struct.R_flstr*, %struct.R_flstr** %34, align 8
  %36 = load %struct._K_str*, %struct._K_str** %5, align 8
  %37 = getelementptr inbounds %struct._K_str, %struct._K_str* %36, i32 0, i32 5
  %38 = load %struct._T_tstr*, %struct._T_tstr** %37, align 8
  %39 = load %struct._K_str*, %struct._K_str** %6, align 8
  %40 = getelementptr inbounds %struct._K_str, %struct._K_str* %39, i32 0, i32 5
  %41 = load %struct._T_tstr*, %struct._T_tstr** %40, align 8
  %42 = call %struct._T_tstr* (%struct._T_tstr*, %struct._T_tstr*, ...) bitcast (%struct._T_tstr* (%struct._T_tstr*, %struct._T_tstr*)* @T_picktol to %struct._T_tstr* (%struct._T_tstr*, %struct._T_tstr*, ...)*)(%struct._T_tstr* %38, %struct._T_tstr* %41)
  %43 = call i32 @_X_floatdiff(%struct.R_flstr* %32, %struct.R_flstr* %35, %struct._T_tstr* %42)
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %16
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %29, %20, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_X_floatdiff(%struct.R_flstr* %0, %struct.R_flstr* %1, %struct._T_tstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.R_flstr*, align 8
  %6 = alloca %struct.R_flstr*, align 8
  %7 = alloca %struct._T_tstr*, align 8
  %8 = alloca %struct.R_flstr*, align 8
  %9 = alloca %struct.R_flstr*, align 8
  %10 = alloca %struct._T_tstr*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %5, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %6, align 8
  store %struct._T_tstr* %2, %struct._T_tstr** %7, align 8
  %11 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %12 = icmp eq %struct._T_tstr* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1.25, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %3
  %15 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  store %struct._T_tstr* %15, %struct._T_tstr** %10, align 8
  br label %16

16:                                               ; preds = %65, %14
  %17 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %18 = icmp eq %struct._T_tstr* %17, null
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %22 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 2, %23
  br i1 %24, label %63, label %25

25:                                               ; preds = %20
  %26 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %27 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 0, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %25
  %31 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %32 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %31, i32 0, i32 1
  %33 = load %struct.R_flstr*, %struct.R_flstr** %32, align 8
  %34 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 0, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %39 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %38, i32 0, i32 1
  %40 = load %struct.R_flstr*, %struct.R_flstr** %39, align 8
  %41 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.26, i64 0, i64 0)) #6
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %37, %30
  %46 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %47 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %46)
  %48 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %49 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %48, i32 0, i32 1
  %50 = load %struct.R_flstr*, %struct.R_flstr** %49, align 8
  %51 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %50)
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load %struct.R_flstr*, %struct.R_flstr** %6, align 8
  %56 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %55)
  %57 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %58 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %57, i32 0, i32 1
  %59 = load %struct.R_flstr*, %struct.R_flstr** %58, align 8
  %60 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %59)
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %20
  store i32 0, i32* %4, align 4
  br label %133

64:                                               ; preds = %54, %45, %37, %25
  br label %65

65:                                               ; preds = %64
  %66 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %67 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %66, i32 0, i32 2
  %68 = load %struct._T_tstr*, %struct._T_tstr** %67, align 8
  store %struct._T_tstr* %68, %struct._T_tstr** %10, align 8
  br label %16

69:                                               ; preds = %16
  %70 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %71 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.R_flstr*, %struct.R_flstr** %6, align 8
  %74 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %79 = load %struct.R_flstr*, %struct.R_flstr** %6, align 8
  %80 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*)* @F_floatmagadd to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %78, %struct.R_flstr* %79)
  store %struct.R_flstr* %80, %struct.R_flstr** %8, align 8
  br label %85

81:                                               ; preds = %69
  %82 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %83 = load %struct.R_flstr*, %struct.R_flstr** %6, align 8
  %84 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*)* @F_floatsub to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %82, %struct.R_flstr* %83)
  store %struct.R_flstr* %84, %struct.R_flstr** %8, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  store %struct._T_tstr* %86, %struct._T_tstr** %10, align 8
  br label %87

87:                                               ; preds = %128, %85
  %88 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %89 = icmp eq %struct._T_tstr* %88, null
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %132

91:                                               ; preds = %87
  %92 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %93 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %92, i32 0, i32 1
  %94 = load %struct.R_flstr*, %struct.R_flstr** %93, align 8
  store %struct.R_flstr* %94, %struct.R_flstr** %9, align 8
  %95 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %96 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %121

100:                                              ; preds = %91
  %101 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %102 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %107 = load %struct.R_flstr*, %struct.R_flstr** %6, align 8
  %108 = call i32 @F_floatcmp(%struct.R_flstr* %106, %struct.R_flstr* %107)
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %112 = load %struct.R_flstr*, %struct.R_flstr** %9, align 8
  %113 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*)* @F_floatmul to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %111, %struct.R_flstr* %112)
  store %struct.R_flstr* %113, %struct.R_flstr** %9, align 8
  br label %118

114:                                              ; preds = %105
  %115 = load %struct.R_flstr*, %struct.R_flstr** %6, align 8
  %116 = load %struct.R_flstr*, %struct.R_flstr** %9, align 8
  %117 = call %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...) bitcast (%struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*)* @F_floatmul to %struct.R_flstr* (%struct.R_flstr*, %struct.R_flstr*, ...)*)(%struct.R_flstr* %115, %struct.R_flstr* %116)
  store %struct.R_flstr* %117, %struct.R_flstr** %9, align 8
  br label %118

118:                                              ; preds = %114, %110
  br label %120

119:                                              ; preds = %100
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.27, i64 0, i64 0))
  br label %120

120:                                              ; preds = %119, %118
  br label %121

121:                                              ; preds = %120, %99
  %122 = load %struct.R_flstr*, %struct.R_flstr** %8, align 8
  %123 = load %struct.R_flstr*, %struct.R_flstr** %9, align 8
  %124 = call i32 @F_floatcmp(%struct.R_flstr* %122, %struct.R_flstr* %123)
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %133

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = load %struct._T_tstr*, %struct._T_tstr** %10, align 8
  %130 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %129, i32 0, i32 2
  %131 = load %struct._T_tstr*, %struct._T_tstr** %130, align 8
  store %struct._T_tstr* %131, %struct._T_tstr** %10, align 8
  br label %87

132:                                              ; preds = %87
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %126, %63
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edt* @Q_do_exact(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.edt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.edt**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.edt* null, %struct.edt** %13, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 %29)
  %31 = bitcast i32* %30 to %struct.edt**
  store %struct.edt** %31, %struct.edt*** %16, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0), i32 %36, i32 %37) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %24
  br label %40

40:                                               ; preds = %184, %39
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %45, %41
  %53 = phi i1 [ false, %41 ], [ %51, %45 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %41

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %79, %57
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %82

71:                                               ; preds = %69
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = icmp sge i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  call void (i32, ...) bitcast (void (i32)* @Z_exceed to void (i32, ...)*)(i32 %78)
  br label %79

79:                                               ; preds = %77, %71
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %59

82:                                               ; preds = %69
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %127, %82
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %84
  %89 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %90 = bitcast i32* %89 to %struct.edt*
  %91 = load %struct.edt**, %struct.edt*** %16, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.edt*, %struct.edt** %91, i64 %93
  store %struct.edt* %90, %struct.edt** %94, align 8
  %95 = load %struct.edt*, %struct.edt** %13, align 8
  %96 = load %struct.edt**, %struct.edt*** %16, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.edt*, %struct.edt** %96, i64 %98
  %100 = load %struct.edt*, %struct.edt** %99, align 8
  %101 = getelementptr inbounds %struct.edt, %struct.edt* %100, i32 0, i32 0
  store %struct.edt* %95, %struct.edt** %101, align 8
  %102 = load %struct.edt**, %struct.edt*** %16, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.edt*, %struct.edt** %102, i64 %104
  %106 = load %struct.edt*, %struct.edt** %105, align 8
  store %struct.edt* %106, %struct.edt** %13, align 8
  %107 = load %struct.edt**, %struct.edt*** %16, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.edt*, %struct.edt** %107, i64 %109
  %111 = load %struct.edt*, %struct.edt** %110, align 8
  %112 = getelementptr inbounds %struct.edt, %struct.edt* %111, i32 0, i32 1
  store i32 2, i32* %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  %115 = load %struct.edt**, %struct.edt*** %16, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.edt*, %struct.edt** %115, i64 %117
  %119 = load %struct.edt*, %struct.edt** %118, align 8
  %120 = getelementptr inbounds %struct.edt, %struct.edt* %119, i32 0, i32 2
  store i32 %114, i32* %120, align 4
  %121 = load %struct.edt**, %struct.edt*** %16, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.edt*, %struct.edt** %121, i64 %123
  %125 = load %struct.edt*, %struct.edt** %124, align 8
  %126 = getelementptr inbounds %struct.edt, %struct.edt* %125, i32 0, i32 3
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %88
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %84

132:                                              ; preds = %84
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %178, %132
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %183

138:                                              ; preds = %134
  %139 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %140 = bitcast i32* %139 to %struct.edt*
  %141 = load %struct.edt**, %struct.edt*** %16, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.edt*, %struct.edt** %141, i64 %143
  store %struct.edt* %140, %struct.edt** %144, align 8
  %145 = load %struct.edt*, %struct.edt** %13, align 8
  %146 = load %struct.edt**, %struct.edt*** %16, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.edt*, %struct.edt** %146, i64 %148
  %150 = load %struct.edt*, %struct.edt** %149, align 8
  %151 = getelementptr inbounds %struct.edt, %struct.edt* %150, i32 0, i32 0
  store %struct.edt* %145, %struct.edt** %151, align 8
  %152 = load %struct.edt**, %struct.edt*** %16, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.edt*, %struct.edt** %152, i64 %154
  %156 = load %struct.edt*, %struct.edt** %155, align 8
  store %struct.edt* %156, %struct.edt** %13, align 8
  %157 = load %struct.edt**, %struct.edt*** %16, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.edt*, %struct.edt** %157, i64 %159
  %161 = load %struct.edt*, %struct.edt** %160, align 8
  %162 = getelementptr inbounds %struct.edt, %struct.edt* %161, i32 0, i32 1
  store i32 1, i32* %162, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.edt**, %struct.edt*** %16, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.edt*, %struct.edt** %164, i64 %166
  %168 = load %struct.edt*, %struct.edt** %167, align 8
  %169 = getelementptr inbounds %struct.edt, %struct.edt* %168, i32 0, i32 2
  store i32 %163, i32* %169, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  %172 = load %struct.edt**, %struct.edt*** %16, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.edt*, %struct.edt** %172, i64 %174
  %176 = load %struct.edt*, %struct.edt** %175, align 8
  %177 = getelementptr inbounds %struct.edt, %struct.edt* %176, i32 0, i32 3
  store i32 %171, i32* %177, align 8
  br label %178

178:                                              ; preds = %138
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %134

183:                                              ; preds = %134
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %40, label %188

188:                                              ; preds = %184
  %189 = load %struct.edt*, %struct.edt** %13, align 8
  ret %struct.edt* %189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @F_isfloat(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 43, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 45, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18, %13
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %18, %3
  br label %29

29:                                               ; preds = %41, %28
  %30 = call i16** @__ctype_b_loc() #8
  %31 = load i16*, i16** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %31, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 2048
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %159

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %74, %61
  %63 = call i16** @__ctype_b_loc() #8
  %64 = load i16*, i16** %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %64, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 2048
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %62

79:                                               ; preds = %62
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %159

83:                                               ; preds = %79
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 101, %86
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 69, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 100, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 68, %101
  br i1 %102, label %103, label %155

103:                                              ; preds = %98, %93, %88, %83
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 43, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %103
  %113 = load i8*, i8** %5, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 45, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112, %103
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = call i16** @__ctype_b_loc() #8
  %124 = load i16*, i16** %123, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i16, i16* %124, i64 %128
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = and i32 %131, 2048
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %159

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %149, %136
  %138 = call i16** @__ctype_b_loc() #8
  %139 = load i16*, i16** %138, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %139, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 2048
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %137
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %137

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %98
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %134, %82, %59
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_atof(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [200 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.R_flstr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = call %struct.R_flstr* (...) bitcast (%struct.R_flstr* ()* @R_makefloat to %struct.R_flstr* (...)*)()
  store %struct.R_flstr* %14, %struct.R_flstr** %12, align 8
  %15 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %16 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %17 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %17, align 16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 43, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %36

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 45, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %32 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %42, %36
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 48, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %37

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %58, %45
  %47 = call i16** @__ctype_b_loc() #8
  %48 = load i16*, i16** %47, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %48, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 2048
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %59, align 1
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %64
  store i8 %61, i8* %65, align 1
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 46, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %88, %82
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 48, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  br label %83

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %107, %94
  %96 = call i16** @__ctype_b_loc() #8
  %97 = load i16*, i16** %96, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %97, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 2048
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %95
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  %110 = load i8, i8* %108, align 1
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %113
  store i8 %110, i8* %114, align 1
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %116
  store i8 0, i8* %117, align 1
  br label %95

118:                                              ; preds = %95
  %119 = load i8*, i8** %4, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 101, %121
  br i1 %122, label %138, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %4, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 69, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %4, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 100, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 68, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133, %128, %123, %118
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %4, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 @atoi(i8* %141) #6
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %138, %133
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %145
  %149 = load i8*, i8** %4, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 43, %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i8*, i8** %4, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 45, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %148
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %4, align 8
  br label %161

161:                                              ; preds = %158, %153
  br label %162

162:                                              ; preds = %174, %161
  %163 = call i16** @__ctype_b_loc() #8
  %164 = load i16*, i16** %163, align 8
  %165 = load i8*, i8** %4, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i16, i16* %164, i64 %168
  %170 = load i16, i16* %169, align 2
  %171 = zext i16 %170 to i32
  %172 = and i32 %171, 2048
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %4, align 8
  br label %162

177:                                              ; preds = %162
  %178 = load i8*, i8** %4, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 0, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* %183) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %177
  br label %186

186:                                              ; preds = %185, %145
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %210, %186
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 48
  br i1 %197, label %198, label %209

198:                                              ; preds = %191
  %199 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  call void (i8*, ...) bitcast (void (i8*)* @S_trimzeros to void (i8*, ...)*)(i8* %199)
  %200 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %201 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %204 = call i8* @strcpy(i8* %202, i8* %203) #7
  %205 = load i32, i32* %11, align 4
  %206 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %207 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  store %struct.R_flstr* %208, %struct.R_flstr** %3, align 8
  br label %223

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %187

213:                                              ; preds = %187
  %214 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %215 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @strcpy(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #7
  %218 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %219 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  %220 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  %221 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  %222 = load %struct.R_flstr*, %struct.R_flstr** %12, align 8
  store %struct.R_flstr* %222, %struct.R_flstr** %3, align 8
  br label %223

223:                                              ; preds = %213, %198
  %224 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  ret %struct.R_flstr* %224
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatsub(%struct.R_flstr* %0, %struct.R_flstr* %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca %struct.R_flstr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.R_flstr* %0, %struct.R_flstr** %4, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %5, align 8
  %15 = load i32, i32* @F_floatsub.needinit, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call %struct.R_flstr* (...) bitcast (%struct.R_flstr* ()* @R_makefloat to %struct.R_flstr* (...)*)()
  store %struct.R_flstr* %18, %struct.R_flstr** @F_floatsub.result, align 8
  store i32 0, i32* @F_floatsub.needinit, align 4
  br label %19

19:                                               ; preds = %17, %2
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), align 16
  %20 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %21 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %23 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %28, %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #7
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %24

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #7
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %33

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2.33, i64 0, i64 0))
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %48 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* %49) #7
  %51 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %52 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8* %53) #7
  %55 = call i32 @strcmp(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  store i32 %55, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %59 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @strcpy(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #7
  %62 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %63 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %65 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  store %struct.R_flstr* %66, %struct.R_flstr** %3, align 8
  br label %192

67:                                               ; preds = %46
  %68 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %69 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %73 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i32 %75)
  br label %86

76:                                               ; preds = %67
  %77 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %78 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %82 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i32 %84)
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85, %71
  %87 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0)) #6
  %88 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0)) #6
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.34, i64 0, i64 0))
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8** %10, align 8
  br label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i64 0, i64 0), i8** %10, align 8
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i8*, i8** %9, align 8
  %98 = call i64 @strlen(i8* %97) #6
  %99 = sub i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = call i64 @strlen(i8* %101) #6
  %103 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %166, %96
  %105 = load i32, i32* %12, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %169

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 48
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i8 57, i8* %14, align 1
  br label %128

119:                                              ; preds = %110
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = sub nsw i32 %125, 1
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %14, align 1
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %119, %118
  br label %151

129:                                              ; preds = %107
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp slt i32 %135, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  store i8 58, i8* %14, align 1
  store i32 1, i32* %13, align 4
  br label %150

144:                                              ; preds = %129
  %145 = load i8*, i8** %9, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %14, align 1
  br label %150

150:                                              ; preds = %144, %143
  br label %151

151:                                              ; preds = %150, %128
  %152 = load i8, i8* %14, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = sub nsw i32 %153, %159
  %161 = add nsw i32 %160, 48
  %162 = trunc i32 %161 to i8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 %164
  store i8 %162, i8* %165, align 1
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %12, align 4
  br label %104

169:                                              ; preds = %104
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.diff, i64 0, i64 0), i8** %8, align 8
  br label %170

170:                                              ; preds = %175, %169
  %171 = load i8*, i8** %8, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 48, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %8, align 8
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %6, align 4
  br label %170

180:                                              ; preds = %170
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %183 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %185 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = call i8* @strcpy(i8* %186, i8* %187) #7
  %189 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %190 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %189, i32 0, i32 1
  store i32 0, i32* %190, align 4
  %191 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  store %struct.R_flstr* %191, %struct.R_flstr** %3, align 8
  br label %192

192:                                              ; preds = %180, %57
  %193 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  ret %struct.R_flstr* %193
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @addzeros(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strcat(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #7
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  br label %5

14:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @F_floatcmp(%struct.R_flstr* %0, %struct.R_flstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca %struct.R_flstr*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %4, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %5, align 8
  %6 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %7 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 0, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %12 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #6
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %18 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 0, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %23 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #6
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %66

28:                                               ; preds = %21, %16
  store i32 -1, i32* %3, align 4
  br label %66

29:                                               ; preds = %10, %2
  %30 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %31 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %36 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #6
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %66

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %44 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %43)
  %45 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %46 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %66

49:                                               ; preds = %42
  %50 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %51 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %50)
  %52 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %53 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %52)
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %66

56:                                               ; preds = %49
  %57 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %58 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0), i8* %59) #7
  call void (i8*, ...) bitcast (void (i8*)* @S_trimzeros to void (i8*, ...)*)(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0))
  %61 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %62 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0), i8* %63) #7
  call void (i8*, ...) bitcast (void (i8*)* @S_trimzeros to void (i8*, ...)*)(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0))
  %65 = call i32 @strcmp(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i64 0, i64 0), i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i64 0, i64 0)) #6
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %56, %55, %48, %40, %28, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatmul(%struct.R_flstr* %0, %struct.R_flstr* %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca %struct.R_flstr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %4, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @F_floatmul.needinit, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call %struct.R_flstr* (...) bitcast (%struct.R_flstr* ()* @R_makefloat to %struct.R_flstr* (...)*)()
  store %struct.R_flstr* %18, %struct.R_flstr** @F_floatmul.result, align 8
  store i32 0, i32* @F_floatmul.needinit, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %21 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %26 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #6
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24, %19
  %31 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %32 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %37 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #6
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35, %24
  %42 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %43 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strcpy(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #7
  %46 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %47 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %49 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  store %struct.R_flstr* %50, %struct.R_flstr** %3, align 8
  br label %166

51:                                               ; preds = %35, %30
  %52 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %53 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i8* %54) #7
  %56 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %57 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i8* %58) #7
  %60 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0)) #6
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i64 %61
  store i8* %62, i8** %11, align 8
  %63 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0)) #6
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i64 %64
  store i8* %65, i8** %12, align 8
  br label %66

66:                                               ; preds = %69, %51
  %67 = load i8*, i8** %11, align 8
  %68 = icmp uge i8* %67, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0)
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %11, align 8
  br label %66

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %82, %78
  %80 = load i8*, i8** %12, align 8
  %81 = icmp uge i8* %80, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0)
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 %85, 48
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %90, i8** %12, align 8
  br label %79

91:                                               ; preds = %79
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i8** %14, align 8
  br label %97

96:                                               ; preds = %91
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i64 0, i64 0), i8** %14, align 8
  br label %97

97:                                               ; preds = %96, %95
  %98 = load i8*, i8** %13, align 8
  call void (i8*, ...) bitcast (void (i8*)* @S_trimzeros to void (i8*, ...)*)(i8* %98)
  %99 = load i8*, i8** %14, align 8
  call void (i8*, ...) bitcast (void (i8*)* @S_trimzeros to void (i8*, ...)*)(i8* %99)
  %100 = load i8*, i8** %13, align 8
  %101 = call i64 @strlen(i8* %100) #6
  %102 = load i8*, i8** %14, align 8
  %103 = call i64 @strlen(i8* %102) #6
  %104 = add i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %10, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i64 @strlen(i8* %107) #6
  %109 = sub i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8* %110, i8** %6, align 8
  %111 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.30, i64 0, i64 0)) #7
  br label %112

112:                                              ; preds = %129, %97
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = icmp uge i8* %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %126, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = sub nsw i32 %121, 48
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load i8*, i8** %13, align 8
  call void @_F_stradd(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0), i8* %125)
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %117

129:                                              ; preds = %117
  %130 = load i8*, i8** %13, align 8
  call void @addzeros(i8* %130, i32 1)
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 -1
  store i8* %132, i8** %6, align 8
  br label %112

133:                                              ; preds = %112
  %134 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %135 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @strcpy(i8* %136, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0)) #7
  %138 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %139 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %138)
  %140 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %141 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %140)
  %142 = add nsw i32 %139, %141
  %143 = load i32, i32* %10, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i64 0, i64 0)) #6
  %147 = add i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %150 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %152 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.R_flstr*, %struct.R_flstr** %5, align 8
  %155 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %133
  %159 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %160 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %159, i32 0, i32 1
  store i32 0, i32* %160, align 4
  br label %164

161:                                              ; preds = %133
  %162 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %163 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  store %struct.R_flstr* %165, %struct.R_flstr** %3, align 8
  br label %166

166:                                              ; preds = %164, %41
  %167 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  ret %struct.R_flstr* %167
}

; Function Attrs: noinline nounwind uwtable
define internal void @_F_stradd(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* %13) #6
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18) #6
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8* %21, i8** %6, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @_F_stradd.result, i64 0, i64 199), i8** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %7, align 8
  store i8 0, i8* %22, align 1
  br label %24

24:                                               ; preds = %70, %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp uge i8* %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp uge i8* %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %76

34:                                               ; preds = %32
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp uge i8* %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 48
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %5, align 8
  br label %46

45:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp uge i8* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 48
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %56, i8** %6, align 8
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 9
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 10
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 48
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %7, align 8
  store i8 %73, i8* %74, align 1
  br label %24

76:                                               ; preds = %32
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8*, i8** %7, align 8
  store i8 49, i8* %80, align 1
  br label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %81, %79
  %85 = load i8*, i8** %3, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* @strcpy(i8* %85, i8* %86) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_F_xor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i1 [ true, %7 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_F_ABSDIFF(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 0, %9
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ]
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 0, %18
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  %24 = icmp slt i32 %14, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 0, %29
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 0, %38
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  %44 = sub nsw i32 %34, %43
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %22
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 0, %49
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %50, %48 ], [ %52, %51 ]
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 0, %58
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %59, %57 ], [ %61, %60 ]
  %64 = sub nsw i32 %54, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %42
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @F_floatmagadd(%struct.R_flstr* %0, %struct.R_flstr* %1) #0 {
  %3 = alloca %struct.R_flstr*, align 8
  %4 = alloca %struct.R_flstr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %3, align 8
  store %struct.R_flstr* %1, %struct.R_flstr** %4, align 8
  %9 = load i32, i32* @F_floatmagadd.needinit, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call %struct.R_flstr* (...) bitcast (%struct.R_flstr* ()* @R_makefloat to %struct.R_flstr* (...)*)()
  store %struct.R_flstr* %12, %struct.R_flstr** @F_floatmagadd.result, align 8
  store i32 0, i32* @F_floatmagadd.needinit, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.41, i64 0, i64 0)) #7
  %15 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.41, i64 0, i64 0)) #7
  %16 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %17 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %16)
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %21 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %20)
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @_F_xor(i32 %19, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %28 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %27)
  %29 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %30 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %29)
  %31 = call i32 @_F_ABSDIFF(i32 %28, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %58

32:                                               ; preds = %13
  %33 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %34 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %38 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %37)
  %39 = sub nsw i32 0, %38
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %42 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %46 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %50 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %49)
  %51 = sub nsw i32 0, %50
  br label %55

52:                                               ; preds = %43
  %53 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %54 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %51, %48 ], [ %54, %52 ]
  %57 = add nsw i32 %44, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %26
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %63 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %62)
  %64 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %65 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %71 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72) #6
  %74 = add i64 %69, %73
  %75 = icmp ugt i64 %74, 199
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5.42, i64 0, i64 0)) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %67
  br label %91

79:                                               ; preds = %61
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %83 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strlen(i8* %84) #6
  %86 = add i64 %81, %85
  %87 = icmp ugt i64 %86, 199
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5.42, i64 0, i64 0)) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %79
  br label %91

91:                                               ; preds = %90, %78
  br label %118

92:                                               ; preds = %58
  %93 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %94 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strlen(i8* %95) #6
  %97 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %98 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strlen(i8* %99) #6
  %101 = icmp ugt i64 %96, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %104 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strlen(i8* %105) #6
  br label %112

107:                                              ; preds = %92
  %108 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %109 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strlen(i8* %110) #6
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i64 [ %106, %102 ], [ %111, %107 ]
  %114 = icmp ugt i64 %113, 198
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5.42, i64 0, i64 0)) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %117, %91
  %119 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %120 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %119)
  %121 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %122 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %121)
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* %5, align 4
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i32 %125)
  %126 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %127 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %126)
  store i32 %127, i32* %6, align 4
  br label %132

128:                                              ; preds = %118
  %129 = load i32, i32* %5, align 4
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i32 %129)
  %130 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %131 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (%struct.R_flstr*)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.R_flstr*, %struct.R_flstr** %3, align 8
  %134 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* %135) #7
  %137 = load %struct.R_flstr*, %struct.R_flstr** %4, align 8
  %138 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0), i8* %139) #7
  %141 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #6
  %142 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0)) #6
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #6
  br label %148

146:                                              ; preds = %132
  %147 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0)) #6
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %7, align 4
  call void @_F_stradd(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i64 0, i64 0))
  %151 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0)) #6
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %151, %153
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %6, align 4
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i64 0, i64 0), i8** %8, align 8
  br label %159

159:                                              ; preds = %164, %148
  %160 = load i8*, i8** %8, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 48, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %8, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %6, align 4
  br label %159

169:                                              ; preds = %159
  %170 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %171 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = call i8* @strcpy(i8* %172, i8* %173) #7
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %177 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %179 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  ret %struct.R_flstr* %180
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @R_makefloat() #0 {
  %1 = alloca %struct.R_flstr*, align 8
  %2 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 16)
  %3 = bitcast i32* %2 to %struct.R_flstr*
  store %struct.R_flstr* %3, %struct.R_flstr** %1, align 8
  %4 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 200)
  %5 = bitcast i32* %4 to i8*
  %6 = load %struct.R_flstr*, %struct.R_flstr** %1, align 8
  %7 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %6, i32 0, i32 2
  store i8* %5, i8** %7, align 8
  %8 = load %struct.R_flstr*, %struct.R_flstr** %1, align 8
  ret %struct.R_flstr* %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @R_getexp(%struct.R_flstr* %0) #0 {
  %2 = alloca %struct.R_flstr*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %2, align 8
  %3 = load %struct.R_flstr*, %struct.R_flstr** %2, align 8
  %4 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @L_init_file(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %5, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.48, i64 0, i64 0), i8* %12) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* @_L_brlm, align 4
  br label %19

18:                                               ; preds = %14
  store i32 0, i32* @_L_arlm, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi i32 [ 0, %17 ], [ 0, %18 ]
  br label %21

21:                                               ; preds = %135, %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %23 = call i8* @fgets(i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @L_init_file.buf, i64 0, i64 0), i32 1025, %struct._IO_FILE* %22)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %136

25:                                               ; preds = %21
  %26 = call i64 @strlen(i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @L_init_file.buf, i64 0, i64 0)) #6
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @_L_brlm, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @_L_arlm, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = add nsw i32 %38, 1
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2.49, i64 0, i64 0), i32 %39, i8* %40) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %59

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 1024
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @_L_brlm, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @_L_arlm, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = add nsw i32 %53, 1
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3.50, i64 0, i64 0), i32 %54, i8* %55, i32 %56) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %42
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1026 x i8], [1026 x i8]* @L_init_file.buf, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 10, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 1024
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @_L_brlm, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @_L_arlm, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = add nsw i32 %78, 1
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4.51, i64 0, i64 0), i32 %79, i8* %80, i32 1024) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %94

82:                                               ; preds = %67
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @_L_brlm, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @_L_arlm, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = add nsw i32 %90, 1
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5.52, i64 0, i64 0), i32 %91, i8* %92) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %77
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1026 x i8], [1026 x i8]* @L_init_file.buf, i64 0, i64 %96
  store i8 10, i8* %97, align 1
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1026 x i8], [1026 x i8]* @L_init_file.buf, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %94, %59
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @_L_brlm, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @_L_arlm, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  call void @_L_setrline(i32 %103, i32 %111, i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @L_init_file.buf, i64 0, i64 0))
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @_L_brlm, align 4
  br label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @_L_arlm, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = icmp sge i32 %119, 9999
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6.53, i64 0, i64 0), i8* %122, i32 10000) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %136

124:                                              ; preds = %118
  %125 = load i32, i32* %3, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @_L_brlm, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @_L_brlm, align 4
  br label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @_L_arlm, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @_L_arlm, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ %128, %127 ], [ %131, %130 ]
  br label %135

135:                                              ; preds = %133
  br label %21

136:                                              ; preds = %121, %21
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %138 = call i32 @fclose(%struct._IO_FILE* %137)
  %139 = load i32, i32* %3, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, i32* @_L_bclm, align 4
  br label %143

142:                                              ; preds = %136
  store i32 0, i32* @_L_aclm, align 4
  br label %143

143:                                              ; preds = %142, %141
  %144 = phi i32 [ 0, %141 ], [ 0, %142 ]
  %145 = load i32, i32* %3, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 0, i32* @_L_btlm, align 4
  br label %149

148:                                              ; preds = %143
  store i32 0, i32* @_L_atlm, align 4
  br label %149

149:                                              ; preds = %148, %147
  %150 = phi i32 [ 0, %147 ], [ 0, %148 ]
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @_L_setrline(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @_L_bl, i64 0, i64 %11
  %13 = load i8*, i8** %6, align 8
  call void (i8**, i8*, ...) bitcast (void (i8**, i8*)* @S_savestr to void (i8**, i8*, ...)*)(i8** %12, i8* %13)
  br label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @_L_al, i64 0, i64 %16
  %18 = load i8*, i8** %6, align 8
  call void (i8**, i8*, ...) bitcast (void (i8**, i8*)* @S_savestr to void (i8**, i8*, ...)*)(i8** %17, i8* %18)
  br label %19

19:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edt* @G_do_miller(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.edt*, align 8
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
  %17 = alloca %struct.edt*, align 8
  %18 = alloca %struct.edt**, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 %26)
  %28 = bitcast i32* %27 to %struct.edt**
  store %struct.edt** %28, %struct.edt*** %18, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 %32)
  store i32* %33, i32** %19, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %51, %4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %43, i32 %44, i32 %45)
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %42, %38, %34
  %49 = phi i1 [ false, %38 ], [ false, %34 ], [ %47, %42 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %34

54:                                               ; preds = %48
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.edt**, %struct.edt*** %18, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.edt*, %struct.edt** %61, i64 %64
  store %struct.edt* null, %struct.edt** %65, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* %10, align 4
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 %71, 1
  br label %77

73:                                               ; preds = %54
  %74 = load i32, i32* %10, align 4
  %75 = sdiv i32 %74, 2
  %76 = sub nsw i32 %75, 1
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %72, %69 ], [ %76, %73 ]
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = sdiv i32 %83, 2
  %85 = sub nsw i32 %84, 1
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* %10, align 4
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %88, 1
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %85, %82 ], [ %89, %86 ]
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store %struct.edt* null, %struct.edt** %5, align 8
  br label %268

96:                                               ; preds = %90
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %263, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %266

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %245, %101
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %248

107:                                              ; preds = %103
  %108 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %109 = bitcast i32* %108 to %struct.edt*
  store %struct.edt* %109, %struct.edt** %17, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %111, 2
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %137, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sdiv i32 %118, 2
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %116
  %124 = load i32*, i32** %19, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %129, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %123, %107
  %138 = load i32*, i32** %19, align 8
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  %145 = load %struct.edt**, %struct.edt*** %18, align 8
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.edt*, %struct.edt** %145, i64 %148
  %150 = load %struct.edt*, %struct.edt** %149, align 8
  %151 = load %struct.edt*, %struct.edt** %17, align 8
  %152 = getelementptr inbounds %struct.edt, %struct.edt* %151, i32 0, i32 0
  store %struct.edt* %150, %struct.edt** %152, align 8
  %153 = load %struct.edt*, %struct.edt** %17, align 8
  %154 = getelementptr inbounds %struct.edt, %struct.edt* %153, i32 0, i32 1
  store i32 2, i32* %154, align 8
  br label %172

155:                                              ; preds = %123, %116
  %156 = load i32*, i32** %19, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %15, align 4
  %162 = load %struct.edt**, %struct.edt*** %18, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.edt*, %struct.edt** %162, i64 %165
  %167 = load %struct.edt*, %struct.edt** %166, align 8
  %168 = load %struct.edt*, %struct.edt** %17, align 8
  %169 = getelementptr inbounds %struct.edt, %struct.edt* %168, i32 0, i32 0
  store %struct.edt* %167, %struct.edt** %169, align 8
  %170 = load %struct.edt*, %struct.edt** %17, align 8
  %171 = getelementptr inbounds %struct.edt, %struct.edt* %170, i32 0, i32 1
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %155, %137
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.edt*, %struct.edt** %17, align 8
  %175 = getelementptr inbounds %struct.edt, %struct.edt* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %10, align 4
  %180 = sdiv i32 %179, 2
  %181 = sub nsw i32 %178, %180
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load %struct.edt*, %struct.edt** %17, align 8
  %184 = getelementptr inbounds %struct.edt, %struct.edt* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  %185 = load %struct.edt*, %struct.edt** %17, align 8
  %186 = load %struct.edt**, %struct.edt*** %18, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.edt*, %struct.edt** %186, i64 %188
  store %struct.edt* %185, %struct.edt** %189, align 8
  br label %190

190:                                              ; preds = %206, %172
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @X_com to i32 (i32, i32, i32, ...)*)(i32 %199, i32 %200, i32 %201)
  %203 = icmp eq i32 %202, 0
  br label %204

204:                                              ; preds = %198, %194, %190
  %205 = phi i1 [ false, %194 ], [ false, %190 ], [ %203, %198 ]
  br i1 %205, label %206, label %211

206:                                              ; preds = %204
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %190

211:                                              ; preds = %204
  %212 = load i32, i32* %15, align 4
  %213 = load i32*, i32** %19, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %211
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load %struct.edt**, %struct.edt*** %18, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.edt*, %struct.edt** %225, i64 %227
  %229 = load %struct.edt*, %struct.edt** %228, align 8
  store %struct.edt* %229, %struct.edt** %5, align 8
  br label %268

230:                                              ; preds = %220, %211
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 2
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %234, %230
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %242, 2
  store i32 %243, i32* %12, align 4
  br label %244

244:                                              ; preds = %241, %237
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %246, 2
  store i32 %247, i32* %14, align 4
  br label %103

248:                                              ; preds = %103
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %248
  %256 = load i32, i32* %13, align 4
  %257 = srem i32 %256, 100
  %258 = icmp eq i32 0, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i32, i32* %13, align 4
  %261 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i32 %260) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_chatter to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %255, %248
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %97

266:                                              ; preds = %97
  %267 = load i32, i32* %8, align 4
  call void (i32, ...) bitcast (void (i32)* @Z_exceed to void (i32, ...)*)(i32 %267)
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.55, i64 0, i64 0))
  store %struct.edt* null, %struct.edt** %5, align 8
  br label %268

268:                                              ; preds = %266, %224, %95
  %269 = load %struct.edt*, %struct.edt** %5, align 8
  ret %struct.edt* %269
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Z_setquiet() #0 {
  store i32 1, i32* @_Z_qflag, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Z_chatter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @_Z_qflag, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), %struct._IO_FILE* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 @fputs(i8* %8, %struct._IO_FILE* %9)
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Z_complain(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @_Z_qflag, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fputs(i8* %6, %struct._IO_FILE* %7)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z_qfatal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void (...) bitcast (void ()* @V_cleanup to void (...)*)()
  call void (...) bitcast (void ()* @O_cleanup to void (...)*)()
  %3 = load i8*, i8** %2, align 8
  call void @Z_complain(i8* %3)
  call void @_Z_errexit()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_Z_errexit() #0 {
  call void @exit(i32 2) #9
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @Z_fatal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void (...) bitcast (void ()* @V_cleanup to void (...)*)()
  call void (...) bitcast (void ()* @O_cleanup to void (...)*)()
  %3 = load i8*, i8** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 @fputs(i8* %3, %struct._IO_FILE* %4)
  call void @_Z_errexit()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @_Z_myalloc(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = zext i32 %5 to i64
  %7 = call noalias i8* @calloc(i64 %6, i64 1) #7
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %2, align 8
  br label %14

12:                                               ; preds = %1
  call void @Z_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.67, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %2, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32*, i32** %2, align 8
  ret i32* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Z_exceed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.70, i64 0, i64 0), i32 %3) #7
  call void @_Z_qfatal(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @O_cleanup() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @O_output(%struct.edt* %0, i32 %1) #0 {
  %3 = alloca %struct.edt*, align 8
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
  %14 = alloca %struct.edt*, align 8
  %15 = alloca %struct.edt*, align 8
  %16 = alloca %struct.edt*, align 8
  %17 = alloca %struct.edt*, align 8
  %18 = alloca %struct.edt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.edt* %0, %struct.edt** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %21 = load %struct.edt*, %struct.edt** %3, align 8
  store %struct.edt* %21, %struct.edt** %16, align 8
  store %struct.edt* null, %struct.edt** %14, align 8
  br label %22

22:                                               ; preds = %25, %2
  %23 = load %struct.edt*, %struct.edt** %16, align 8
  %24 = icmp ne %struct.edt* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  %26 = load %struct.edt*, %struct.edt** %16, align 8
  %27 = getelementptr inbounds %struct.edt, %struct.edt* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.edt*, %struct.edt** %16, align 8
  %31 = getelementptr inbounds %struct.edt, %struct.edt* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.edt*, %struct.edt** %16, align 8
  %33 = getelementptr inbounds %struct.edt, %struct.edt* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.edt*, %struct.edt** %16, align 8
  %37 = getelementptr inbounds %struct.edt, %struct.edt* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.edt*, %struct.edt** %14, align 8
  store %struct.edt* %38, %struct.edt** %15, align 8
  %39 = load %struct.edt*, %struct.edt** %16, align 8
  store %struct.edt* %39, %struct.edt** %14, align 8
  %40 = load %struct.edt*, %struct.edt** %16, align 8
  %41 = getelementptr inbounds %struct.edt, %struct.edt* %40, i32 0, i32 0
  %42 = load %struct.edt*, %struct.edt** %41, align 8
  store %struct.edt* %42, %struct.edt** %16, align 8
  %43 = load %struct.edt*, %struct.edt** %15, align 8
  %44 = load %struct.edt*, %struct.edt** %14, align 8
  %45 = getelementptr inbounds %struct.edt, %struct.edt* %44, i32 0, i32 0
  store %struct.edt* %43, %struct.edt** %45, align 8
  br label %22

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %327, %46
  %48 = load %struct.edt*, %struct.edt** %14, align 8
  %49 = icmp ne %struct.edt* %48, null
  br i1 %49, label %50, label %328

50:                                               ; preds = %47
  %51 = load %struct.edt*, %struct.edt** %14, align 8
  store %struct.edt* %51, %struct.edt** %18, align 8
  %52 = load %struct.edt*, %struct.edt** %14, align 8
  %53 = getelementptr inbounds %struct.edt, %struct.edt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.edt*, %struct.edt** %14, align 8
  %56 = getelementptr inbounds %struct.edt, %struct.edt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %115

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %83, %60
  %62 = load %struct.edt*, %struct.edt** %18, align 8
  store %struct.edt* %62, %struct.edt** %17, align 8
  %63 = load %struct.edt*, %struct.edt** %18, align 8
  %64 = getelementptr inbounds %struct.edt, %struct.edt* %63, i32 0, i32 0
  %65 = load %struct.edt*, %struct.edt** %64, align 8
  store %struct.edt* %65, %struct.edt** %18, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load %struct.edt*, %struct.edt** %18, align 8
  %68 = icmp ne %struct.edt* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.edt*, %struct.edt** %18, align 8
  %71 = getelementptr inbounds %struct.edt, %struct.edt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.edt*, %struct.edt** %18, align 8
  %76 = getelementptr inbounds %struct.edt, %struct.edt* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.edt*, %struct.edt** %17, align 8
  %79 = getelementptr inbounds %struct.edt, %struct.edt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = icmp eq i32 %77, %81
  br label %83

83:                                               ; preds = %74, %69, %66
  %84 = phi i1 [ false, %69 ], [ false, %66 ], [ %82, %74 ]
  br i1 %84, label %61, label %85

85:                                               ; preds = %83
  %86 = load %struct.edt*, %struct.edt** %18, align 8
  %87 = icmp ne %struct.edt* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load %struct.edt*, %struct.edt** %18, align 8
  %90 = getelementptr inbounds %struct.edt, %struct.edt* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.edt*, %struct.edt** %18, align 8
  %95 = getelementptr inbounds %struct.edt, %struct.edt* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.edt*, %struct.edt** %17, align 8
  %98 = getelementptr inbounds %struct.edt, %struct.edt* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 3, i32* %5, align 4
  br label %103

102:                                              ; preds = %93, %88, %85
  store i32 2, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %101
  %104 = load %struct.edt*, %struct.edt** %17, align 8
  %105 = getelementptr inbounds %struct.edt, %struct.edt* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %8, align 4
  %107 = load %struct.edt*, %struct.edt** %18, align 8
  store %struct.edt* %107, %struct.edt** %14, align 8
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 2, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.edt*, %struct.edt** %17, align 8
  %112 = getelementptr inbounds %struct.edt, %struct.edt* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  br label %146

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %59
  %116 = load %struct.edt*, %struct.edt** %14, align 8
  %117 = getelementptr inbounds %struct.edt, %struct.edt* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %143, %115
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  %124 = load %struct.edt*, %struct.edt** %14, align 8
  %125 = getelementptr inbounds %struct.edt, %struct.edt* %124, i32 0, i32 0
  %126 = load %struct.edt*, %struct.edt** %125, align 8
  store %struct.edt* %126, %struct.edt** %14, align 8
  br label %127

127:                                              ; preds = %121
  %128 = load %struct.edt*, %struct.edt** %14, align 8
  %129 = icmp ne %struct.edt* %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load %struct.edt*, %struct.edt** %14, align 8
  %132 = getelementptr inbounds %struct.edt, %struct.edt* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.edt*, %struct.edt** %14, align 8
  %137 = getelementptr inbounds %struct.edt, %struct.edt* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.edt*, %struct.edt** %18, align 8
  %140 = getelementptr inbounds %struct.edt, %struct.edt* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %138, %141
  br label %143

143:                                              ; preds = %135, %130, %127
  %144 = phi i1 [ false, %130 ], [ false, %127 ], [ %142, %135 ]
  br i1 %144, label %121, label %145

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145, %110
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %13, align 4
  br label %204

155:                                              ; preds = %146
  %156 = load i32, i32* %6, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %160
  %162 = load %struct._K_str*, %struct._K_str** %161, align 8
  %163 = getelementptr inbounds %struct._K_str, %struct._K_str* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %10, align 4
  br label %167

165:                                              ; preds = %155
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %165, %158
  %168 = load i32, i32* %8, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %172
  %174 = load %struct._K_str*, %struct._K_str** %173, align 8
  %175 = getelementptr inbounds %struct._K_str, %struct._K_str* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %11, align 4
  br label %179

177:                                              ; preds = %167
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %177, %170
  %180 = load i32, i32* %7, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %184
  %186 = load %struct._K_str*, %struct._K_str** %185, align 8
  %187 = getelementptr inbounds %struct._K_str, %struct._K_str* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %12, align 4
  br label %191

189:                                              ; preds = %179
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %189, %182
  %192 = load i32, i32* %9, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %196
  %198 = load %struct._K_str*, %struct._K_str** %197, align 8
  %199 = getelementptr inbounds %struct._K_str, %struct._K_str* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %13, align 4
  br label %203

201:                                              ; preds = %191
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %201, %194
  br label %204

204:                                              ; preds = %203, %150
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @_O_con_line(i32 %205, i32 %206, i32 0)
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %5, align 4
  switch i32 %209, label %263 [
    i32 1, label %210
    i32 2, label %225
    i32 3, label %239
  ]

210:                                              ; preds = %204
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @_O_con_line(i32 %211, i32 %212, i32 1)
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.74, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %210
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @_O_con_line(i32 %219, i32 %220, i32 1)
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %218, %210
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0))
  br label %264

225:                                              ; preds = %204
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp sgt i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @_O_con_line(i32 %230, i32 %231, i32 0)
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %229, %225
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %4, align 4
  %237 = call i32 @_O_con_line(i32 %235, i32 %236, i32 1)
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.77, i64 0, i64 0), i32 %237)
  br label %264

239:                                              ; preds = %204
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %239
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @_O_con_line(i32 %244, i32 %245, i32 0)
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %243, %239
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %4, align 4
  %251 = call i32 @_O_con_line(i32 %249, i32 %250, i32 1)
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.78, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %248
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %4, align 4
  %259 = call i32 @_O_con_line(i32 %257, i32 %258, i32 1)
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %256, %248
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0))
  br label %264

263:                                              ; preds = %204
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6.79, i64 0, i64 0))
  br label %264

264:                                              ; preds = %263, %261, %234, %223
  %265 = load i32, i32* %5, align 4
  %266 = icmp eq i32 2, %265
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %5, align 4
  %269 = icmp eq i32 3, %268
  br i1 %269, label %270, label %293

270:                                              ; preds = %267, %264
  %271 = load i32, i32* %4, align 4
  %272 = and i32 %271, 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %270
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %19, align 4
  br label %276

276:                                              ; preds = %285, %274
  %277 = load i32, i32* %19, align 4
  %278 = load i32, i32* %11, align 4
  %279 = icmp sle i32 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %276
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* %4, align 4
  %283 = call i8* @_O_get_text(i32 0, i32 %281, i32 %282)
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.80, i64 0, i64 0), i8* %283)
  br label %285

285:                                              ; preds = %280
  %286 = load i32, i32* %19, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %19, align 4
  br label %276

288:                                              ; preds = %276
  br label %292

289:                                              ; preds = %270
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %8, align 4
  call void @_O_do_lines(i32 %290, i32 %291, i32 0)
  br label %292

292:                                              ; preds = %289, %288
  br label %293

293:                                              ; preds = %292, %267
  %294 = load i32, i32* %5, align 4
  %295 = icmp eq i32 3, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.81, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %293
  %299 = load i32, i32* %5, align 4
  %300 = icmp eq i32 1, %299
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  %302 = load i32, i32* %5, align 4
  %303 = icmp eq i32 3, %302
  br i1 %303, label %304, label %327

304:                                              ; preds = %301, %298
  %305 = load i32, i32* %4, align 4
  %306 = and i32 %305, 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %304
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %20, align 4
  br label %310

310:                                              ; preds = %319, %308
  %311 = load i32, i32* %20, align 4
  %312 = load i32, i32* %13, align 4
  %313 = icmp sle i32 %311, %312
  br i1 %313, label %314, label %322

314:                                              ; preds = %310
  %315 = load i32, i32* %20, align 4
  %316 = load i32, i32* %4, align 4
  %317 = call i8* @_O_get_text(i32 1, i32 %315, i32 %316)
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.82, i64 0, i64 0), i8* %317)
  br label %319

319:                                              ; preds = %314
  %320 = load i32, i32* %20, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %20, align 4
  br label %310

322:                                              ; preds = %310
  br label %326

323:                                              ; preds = %304
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %9, align 4
  call void @_O_do_lines(i32 %324, i32 %325, i32 1)
  br label %326

326:                                              ; preds = %323, %322
  br label %327

327:                                              ; preds = %326, %301
  br label %47

328:                                              ; preds = %47
  call void @O_cleanup()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_O_con_line(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %34

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_btlindex to [0 x i32]*), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  br label %31

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_atlindex to [0 x i32]*), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %25, %21 ], [ %30, %26 ]
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %17, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @_O_get_text(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._K_str*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %18
  %20 = load %struct._K_str*, %struct._K_str** %19, align 8
  br label %26

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %23
  %25 = load %struct._K_str*, %struct._K_str** %24, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi %struct._K_str* [ %20, %16 ], [ %25, %21 ]
  store %struct._K_str* %27, %struct._K_str** %9, align 8
  %28 = load %struct._K_str*, %struct._K_str** %9, align 8
  %29 = getelementptr inbounds %struct._K_str, %struct._K_str* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @_O_convert(i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct._K_str*, %struct._K_str** %9, align 8
  %37 = getelementptr inbounds %struct._K_str, %struct._K_str* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_btlindex to [0 x i32]*), i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  br label %49

42:                                               ; preds = %26
  %43 = load %struct._K_str*, %struct._K_str** %9, align 8
  %44 = getelementptr inbounds %struct._K_str, %struct._K_str* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_atlindex to [0 x i32]*), i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = phi i32 [ %41, %35 ], [ %48, %42 ]
  %51 = add nsw i32 %50, 1
  %52 = load %struct._K_str*, %struct._K_str** %9, align 8
  %53 = getelementptr inbounds %struct._K_str, %struct._K_str* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @_O_get_text.buf, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10.83, i64 0, i64 0), i8* %32, i32 %51, i32 %55) #7
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @_O_get_text.buf, i64 0, i64 0), i8** %4, align 8
  br label %84

57:                                               ; preds = %3
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_btlindex to [0 x i32]*), i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bclindex to [0 x i32]*), i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_bl to [0 x i8*]*), i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  br label %82

71:                                               ; preds = %57
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_atlindex to [0 x i32]*), i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_aclindex to [0 x i32]*), i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_al to [0 x i8*]*), i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  br label %82

82:                                               ; preds = %71, %60
  %83 = phi i8* [ %70, %60 ], [ %81, %71 ]
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %82, %49
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

; Function Attrs: noinline nounwind uwtable
define internal void @_O_do_lines(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._K_str*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._K_str*, align 8
  %14 = alloca [1025 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %165, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %168

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %25
  %27 = load %struct._K_str*, %struct._K_str** %26, align 8
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %30
  %32 = load %struct._K_str*, %struct._K_str** %31, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi %struct._K_str* [ %27, %23 ], [ %32, %28 ]
  store %struct._K_str* %34, %struct._K_str** %10, align 8
  %35 = load %struct._K_str*, %struct._K_str** %10, align 8
  %36 = getelementptr inbounds %struct._K_str, %struct._K_str* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %164

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 0, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44
  %49 = getelementptr inbounds [1025 x i8], [1025 x i8]* %14, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_btlindex to [0 x i32]*), i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bclindex to [0 x i32]*), i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_bl to [0 x i8*]*), i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  br label %74

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_atlindex to [0 x i32]*), i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_aclindex to [0 x i32]*), i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_al to [0 x i8*]*), i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  br label %74

74:                                               ; preds = %63, %52
  %75 = phi i8* [ %62, %52 ], [ %73, %63 ]
  %76 = call i8* @strcpy(i8* %49, i8* %75) #7
  %77 = getelementptr inbounds [1025 x i8], [1025 x i8]* %14, i64 0, i64 0
  %78 = load %struct._K_str*, %struct._K_str** %10, align 8
  %79 = getelementptr inbounds %struct._K_str, %struct._K_str* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  call void @_O_pchars(i8* %77, i32 0, i32 %80)
  call void @_O_start_standout()
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %86
  %88 = load %struct._K_str*, %struct._K_str** %87, align 8
  br label %94

89:                                               ; preds = %74
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %91
  %93 = load %struct._K_str*, %struct._K_str** %92, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi %struct._K_str* [ %88, %84 ], [ %93, %89 ]
  store %struct._K_str* %95, %struct._K_str** %13, align 8
  br label %96

96:                                               ; preds = %124, %94
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load %struct._K_str*, %struct._K_str** %13, align 8
  %103 = getelementptr inbounds %struct._K_str, %struct._K_str* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %101, %104
  br label %106

106:                                              ; preds = %100, %96
  %107 = phi i1 [ false, %96 ], [ %105, %100 ]
  br i1 %107, label %108, label %126

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %116
  %118 = load %struct._K_str*, %struct._K_str** %117, align 8
  br label %124

119:                                              ; preds = %109
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %121
  %123 = load %struct._K_str*, %struct._K_str** %122, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi %struct._K_str* [ %118, %114 ], [ %123, %119 ]
  store %struct._K_str* %125, %struct._K_str** %13, align 8
  br label %96

126:                                              ; preds = %106
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_bto to [0 x %struct._K_str*]*), i64 0, i64 %133
  %135 = load %struct._K_str*, %struct._K_str** %134, align 8
  br label %141

136:                                              ; preds = %126
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [0 x %struct._K_str*], [0 x %struct._K_str*]* bitcast ([50000 x %struct._K_str*]* @_K_ato to [0 x %struct._K_str*]*), i64 0, i64 %138
  %140 = load %struct._K_str*, %struct._K_str** %139, align 8
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi %struct._K_str* [ %135, %131 ], [ %140, %136 ]
  store %struct._K_str* %142, %struct._K_str** %13, align 8
  %143 = load %struct._K_str*, %struct._K_str** %13, align 8
  %144 = getelementptr inbounds %struct._K_str, %struct._K_str* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct._K_str*, %struct._K_str** %13, align 8
  %148 = getelementptr inbounds %struct._K_str, %struct._K_str* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strlen(i8* %149) #6
  %151 = add i64 %146, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %12, align 4
  %153 = getelementptr inbounds [1025 x i8], [1025 x i8]* %14, i64 0, i64 0
  %154 = load %struct._K_str*, %struct._K_str** %10, align 8
  %155 = getelementptr inbounds %struct._K_str, %struct._K_str* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %12, align 4
  call void @_O_pchars(i8* %153, i32 %156, i32 %157)
  call void @_O_end_standout()
  %158 = getelementptr inbounds [1025 x i8], [1025 x i8]* %14, i64 0, i64 0
  %159 = load i32, i32* %12, align 4
  %160 = getelementptr inbounds [1025 x i8], [1025 x i8]* %14, i64 0, i64 0
  %161 = call i64 @strlen(i8* %160) #6
  %162 = trunc i64 %161 to i32
  call void @_O_pchars(i8* %158, i32 %159, i32 %162)
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %141, %33
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %16

168:                                              ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_O_pchars(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @putchar(i32 %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %9

24:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_O_start_standout() #0 {
  %1 = load i32, i32* @_O_need_init, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @_O_st_init()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @_O_st_ok, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  store i32 1, i32* @_O_doing_ul, align 4
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_O_end_standout() #0 {
  %1 = load i32, i32* @_O_need_init, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @_O_st_init()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @_O_st_ok, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  store i32 0, i32* @_O_doing_ul, align 4
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_O_st_init() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = call i32 @isatty(i32 1) #7
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* @_O_need_init, align 4
  store i32 0, i32* @_O_st_ok, align 4
  br label %13

5:                                                ; preds = %0
  %6 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #7
  store i8* %6, i8** @_O_st_tmp, align 8
  %7 = icmp eq i8* null, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* @_O_need_init, align 4
  store i32 0, i32* @_O_st_ok, align 4
  br label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %11 = load i8*, i8** @_O_st_tmp, align 8
  %12 = call i8* @strcpy(i8* %10, i8* %11) #7
  store i32 0, i32* @_O_need_init, align 4
  br label %13

13:                                               ; preds = %9, %8, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @putchar(i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @_O_convert(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strlen(i8* %4) #6
  %6 = icmp eq i64 1, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %11 [
    i32 10, label %12
    i32 9, label %14
    i32 32, label %16
  ]

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.84, i64 0, i64 0)) #7
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i64 0, i64 0), i8** %2, align 8
  br label %21

14:                                               ; preds = %7
  %15 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12.85, i64 0, i64 0)) #7
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i64 0, i64 0), i8** %2, align 8
  br label %21

16:                                               ; preds = %7
  %17 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13.86, i64 0, i64 0)) #7
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_O_convert.spacetext, i64 0, i64 0), i8** %2, align 8
  br label %21

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %19, %16, %14, %12
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @P_addalpha(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %5 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (i8*, i8*)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %4, i8* %5)
  %6 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i64 0, i64 0)) #6
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %8 = call i64 @strlen(i8* %7) #6
  %9 = add i64 %6, %8
  %10 = icmp uge i64 %9, 256
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.89, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %14 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i64 0, i64 0), i8* %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @P_file_parse(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* @_P_fnumb, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* @_P_start, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* @_P_lcount, align 4
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* @_P_flags, align 4
  call void @_P_initparser()
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @_P_dummyline, i64 0, i64 0), i8** @_P_nextchr, align 8
  store i32 0, i32* @_P_has_content, align 4
  store i32 0, i32* @_P_next_tol, align 4
  %13 = load i32, i32* @_P_fnumb, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32, i32* @_P_fnumb, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @_L_btlm, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @_L_atlm, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bc to [0 x i32]*), i64 0, i64 %24
  store i32 0, i32* %25, align 4
  br label %37

26:                                               ; preds = %4
  %27 = load i32, i32* @_P_fnumb, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @_L_btlm, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @_L_atlm, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_ac to [0 x i32]*), i64 0, i64 %35
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %22
  %38 = phi i32 [ 0, %22 ], [ 0, %33 ]
  %39 = load i32, i32* @_P_start, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* @_P_realline, align 4
  call void @_P_do_parse()
  %41 = load i32, i32* @_P_has_content, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %95

43:                                               ; preds = %37
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1.90, i64 0, i64 0)) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  %45 = load i32, i32* @_P_fnumb, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @_L_bclm, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @_L_bclm, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @_L_aclm, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @_L_aclm, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %48, %47 ], [ %51, %50 ]
  %55 = load i32, i32* @_P_fnumb, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32, i32* @_P_fnumb, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @_L_btlm, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @_L_atlm, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bc to [0 x i32]*), i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %94

70:                                               ; preds = %53
  %71 = load i32, i32* @_P_fnumb, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @_L_btlm, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @_L_atlm, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_ac to [0 x i32]*), i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77, %64
  %84 = load i32, i32* @_P_fnumb, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @_L_btlm, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @_L_btlm, align 4
  br label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @_L_atlm, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @_L_atlm, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i32 [ %87, %86 ], [ %90, %89 ]
  br label %94

94:                                               ; preds = %92, %77, %64
  br label %95

95:                                               ; preds = %94, %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_P_initparser() #0 {
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @_P_dummyline, i64 0, i64 0), align 1
  call void (...) bitcast (void ()* @C_clear_cmd to void (...)*)()
  call void (...) bitcast (void ()* @T_clear_tols to void (...)*)()
  call void (...) bitcast (void ()* @W_clearcoms to void (...)*)()
  call void (...) bitcast (void ()* @W_clearlits to void (...)*)()
  call void @_P_alpha_clear()
  call void (...) bitcast (void ()* @C_docmds to void (...)*)()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_P_do_parse() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._K_str*, align 8
  %5 = alloca %struct._W_bolstruct*, align 8
  %6 = alloca %struct._W_comstruct*, align 8
  %7 = alloca %struct._W_bolstruct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  br label %12

12:                                               ; preds = %613, %62, %50, %32, %22, %0
  %13 = call i32 @_P_needmore()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = call i32 @_P_nextline()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %614

19:                                               ; preds = %15
  %20 = load i32, i32* @_P_has_content, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %12

23:                                               ; preds = %19
  %24 = load i8*, i8** @_P_firstchr, align 8
  %25 = call %struct._W_bolstruct* (i8*, ...) bitcast (%struct._W_bolstruct* (i8*)* @W_isbol to %struct._W_bolstruct* (i8*, ...)*)(i8* %24)
  store %struct._W_bolstruct* %25, %struct._W_bolstruct** %5, align 8
  %26 = icmp ne %struct._W_bolstruct* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct._W_bolstruct*, %struct._W_bolstruct** %5, align 8
  %29 = call i32 @_P_bolsnarf(%struct._W_bolstruct* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %614

32:                                               ; preds = %27
  br label %12

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32, i32* @_P_flags, align 4
  %36 = and i32 1, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = call i16** @__ctype_b_loc() #8
  %40 = load i16*, i16** %39, align 8
  %41 = load i8*, i8** @_P_nextchr, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %40, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 8192
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i8*, i8** @_P_nextchr, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** @_P_nextchr, align 8
  br label %12

53:                                               ; preds = %38, %34
  %54 = load i8*, i8** @_P_nextchr, align 8
  %55 = call %struct._W_comstruct* (i8*, ...) bitcast (%struct._W_comstruct* (i8*)* @W_iscom to %struct._W_comstruct* (i8*, ...)*)(i8* %54)
  store %struct._W_comstruct* %55, %struct._W_comstruct** %6, align 8
  %56 = icmp ne %struct._W_comstruct* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct._W_comstruct*, %struct._W_comstruct** %6, align 8
  %59 = call i32 @_P_comsnarf(%struct._W_comstruct* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %614

62:                                               ; preds = %57
  br label %12

63:                                               ; preds = %53
  %64 = load i32, i32* @_P_fnumb, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i32, i32* @_P_fnumb, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @_L_btlm, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @_L_atlm, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bc to [0 x i32]*), i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %177, label %92

79:                                               ; preds = %63
  %80 = load i32, i32* @_P_fnumb, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @_L_btlm, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @_L_atlm, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_ac to [0 x i32]*), i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %177, label %92

92:                                               ; preds = %86, %73
  %93 = load i32, i32* @_P_fnumb, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = load i32, i32* @_P_fnumb, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @_L_bclm, align 4
  br label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @_L_aclm, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = load i32, i32* @_P_fnumb, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @_L_btlm, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @_L_atlm, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_btlindex to [0 x i32]*), i64 0, i64 %112
  store i32 %103, i32* %113, align 4
  br label %133

114:                                              ; preds = %92
  %115 = load i32, i32* @_P_fnumb, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @_L_bclm, align 4
  br label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @_L_aclm, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load i32, i32* @_P_fnumb, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @_L_btlm, align 4
  br label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @_L_atlm, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_atlindex to [0 x i32]*), i64 0, i64 %131
  store i32 %122, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %110
  %134 = phi i32 [ %103, %110 ], [ %122, %129 ]
  %135 = load i32, i32* @_P_fnumb, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = load i32, i32* @_P_fnumb, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @_K_btm, align 4
  br label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @_K_atm, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = load i32, i32* @_P_fnumb, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @_L_btlm, align 4
  br label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @_L_atlm, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bi to [0 x i32]*), i64 0, i64 %154
  store i32 %145, i32* %155, align 4
  br label %175

156:                                              ; preds = %133
  %157 = load i32, i32* @_P_fnumb, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* @_K_btm, align 4
  br label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @_K_atm, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = load i32, i32* @_P_fnumb, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @_L_btlm, align 4
  br label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @_L_atlm, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_ai to [0 x i32]*), i64 0, i64 %173
  store i32 %164, i32* %174, align 4
  br label %175

175:                                              ; preds = %171, %152
  %176 = phi i32 [ %145, %152 ], [ %164, %171 ]
  br label %177

177:                                              ; preds = %175, %86, %73
  %178 = load i32, i32* @_P_fnumb, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load i32, i32* @_P_fnumb, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* @_L_btlm, align 4
  br label %187

185:                                              ; preds = %180
  %186 = load i32, i32* @_L_atlm, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_btlindex to [0 x i32]*), i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  br label %204

192:                                              ; preds = %177
  %193 = load i32, i32* @_P_fnumb, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* @_L_btlm, align 4
  br label %199

197:                                              ; preds = %192
  %198 = load i32, i32* @_L_atlm, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_atlindex to [0 x i32]*), i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  br label %204

204:                                              ; preds = %199, %187
  %205 = phi i32 [ %191, %187 ], [ %203, %199 ]
  store i32 %205, i32* %8, align 4
  %206 = load i8*, i8** @_P_nextchr, align 8
  %207 = load i8*, i8** @_P_firstchr, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %10, align 4
  %212 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 40)
  %213 = bitcast i32* %212 to %struct._K_str*
  store %struct._K_str* %213, %struct._K_str** %4, align 8
  %214 = load i32, i32* @_P_fnumb, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %204
  %217 = load i32, i32* @_L_btlm, align 4
  br label %220

218:                                              ; preds = %204
  %219 = load i32, i32* @_L_atlm, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  %222 = load %struct._K_str*, %struct._K_str** %4, align 8
  %223 = getelementptr inbounds %struct._K_str, %struct._K_str* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load %struct._K_str*, %struct._K_str** %4, align 8
  %226 = getelementptr inbounds %struct._K_str, %struct._K_str* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  store i32 0, i32* %3, align 4
  %227 = load i8*, i8** @_P_nextchr, align 8
  %228 = call %struct._W_bolstruct* (i8*, ...) bitcast (%struct._W_bolstruct* (i8*)* @W_islit to %struct._W_bolstruct* (i8*, ...)*)(i8* %227)
  store %struct._W_bolstruct* %228, %struct._W_bolstruct** %7, align 8
  %229 = icmp ne %struct._W_bolstruct* %228, null
  br i1 %229, label %230, label %369

230:                                              ; preds = %220
  %231 = load %struct._W_bolstruct*, %struct._W_bolstruct** %7, align 8
  %232 = call i32 @_P_litsnarf(%struct._W_bolstruct* %231)
  store i32 %232, i32* %3, align 4
  %233 = load %struct._K_str*, %struct._K_str** %4, align 8
  %234 = getelementptr inbounds %struct._K_str, %struct._K_str* %233, i32 0, i32 2
  store i32 1, i32* %234, align 8
  %235 = load i32, i32* @_P_stringsize, align 4
  call void (i8**, i32, ...) bitcast (void (i8**, i32)* @S_allocstr to void (i8**, i32, ...)*)(i8** %1, i32 %235)
  %236 = load i32, i32* @_P_fnumb, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = load i32, i32* @_L_bclm, align 4
  br label %242

240:                                              ; preds = %230
  %241 = load i32, i32* @_L_aclm, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %333

247:                                              ; preds = %242
  %248 = load i8*, i8** %1, align 8
  %249 = load i32, i32* @_P_fnumb, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %247
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bclindex to [0 x i32]*), i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_bl to [0 x i8*]*), i64 0, i64 %256
  %258 = load i8*, i8** %257, align 8
  br label %267

259:                                              ; preds = %247
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_aclindex to [0 x i32]*), i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_al to [0 x i8*]*), i64 0, i64 %264
  %266 = load i8*, i8** %265, align 8
  br label %267

267:                                              ; preds = %259, %251
  %268 = phi i8* [ %258, %251 ], [ %266, %259 ]
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = call i8* @strcpy(i8* %248, i8* %271) #7
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %302, %267
  %276 = load i32, i32* %2, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %305

279:                                              ; preds = %275
  %280 = load i8*, i8** %1, align 8
  %281 = load i32, i32* @_P_fnumb, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %279
  %284 = load i32, i32* %2, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bclindex to [0 x i32]*), i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_bl to [0 x i8*]*), i64 0, i64 %288
  %290 = load i8*, i8** %289, align 8
  br label %299

291:                                              ; preds = %279
  %292 = load i32, i32* %2, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_aclindex to [0 x i32]*), i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_al to [0 x i8*]*), i64 0, i64 %296
  %298 = load i8*, i8** %297, align 8
  br label %299

299:                                              ; preds = %291, %283
  %300 = phi i8* [ %290, %283 ], [ %298, %291 ]
  %301 = call i8* @strcat(i8* %280, i8* %300) #7
  br label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %2, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %2, align 4
  br label %275

305:                                              ; preds = %275
  %306 = load i8*, i8** %1, align 8
  %307 = load i32, i32* @_P_fnumb, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %305
  %310 = load i32, i32* %9, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bclindex to [0 x i32]*), i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_bl to [0 x i8*]*), i64 0, i64 %314
  %316 = load i8*, i8** %315, align 8
  br label %325

317:                                              ; preds = %305
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_aclindex to [0 x i32]*), i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_al to [0 x i8*]*), i64 0, i64 %322
  %324 = load i8*, i8** %323, align 8
  br label %325

325:                                              ; preds = %317, %309
  %326 = phi i8* [ %316, %309 ], [ %324, %317 ]
  %327 = load i32, i32* @_P_stringsize, align 4
  %328 = sext i32 %327 to i64
  %329 = load i8*, i8** %1, align 8
  %330 = call i64 @strlen(i8* %329) #6
  %331 = sub i64 %328, %330
  %332 = call i8* @strncat(i8* %306, i8* %326, i64 %331) #7
  br label %365

333:                                              ; preds = %242
  %334 = load i8*, i8** %1, align 8
  %335 = load i32, i32* @_P_fnumb, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %333
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bclindex to [0 x i32]*), i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_bl to [0 x i8*]*), i64 0, i64 %342
  %344 = load i8*, i8** %343, align 8
  br label %353

345:                                              ; preds = %333
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_aclindex to [0 x i32]*), i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_al to [0 x i8*]*), i64 0, i64 %350
  %352 = load i8*, i8** %351, align 8
  br label %353

353:                                              ; preds = %345, %337
  %354 = phi i8* [ %344, %337 ], [ %352, %345 ]
  %355 = load i32, i32* %10, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  %358 = load i32, i32* @_P_stringsize, align 4
  %359 = sext i32 %358 to i64
  %360 = call i8* @strncpy(i8* %334, i8* %357, i64 %359) #7
  %361 = load i8*, i8** %1, align 8
  %362 = load i32, i32* @_P_stringsize, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  store i8 0, i8* %364, align 1
  br label %365

365:                                              ; preds = %353, %325
  %366 = load i8*, i8** %1, align 8
  %367 = load %struct._K_str*, %struct._K_str** %4, align 8
  %368 = getelementptr inbounds %struct._K_str, %struct._K_str* %367, i32 0, i32 3
  store i8* %366, i8** %368, align 8
  br label %531

369:                                              ; preds = %220
  %370 = load i8*, i8** @_P_nextchr, align 8
  %371 = load i32, i32* @_P_flags, align 4
  %372 = and i32 %371, 32
  %373 = load i32, i32* @_P_flags, align 4
  %374 = and i32 %373, 16
  %375 = call i32 @F_isfloat(i8* %370, i32 %372, i32 %374)
  store i32 %375, i32* %2, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %410

377:                                              ; preds = %369
  %378 = load %struct._K_str*, %struct._K_str** %4, align 8
  %379 = getelementptr inbounds %struct._K_str, %struct._K_str* %378, i32 0, i32 3
  %380 = load i8*, i8** @_P_nextchr, align 8
  %381 = load i32, i32* %2, align 4
  call void (i8**, i8*, i32, ...) bitcast (void (i8**, i8*, i32)* @S_savenstr to void (i8**, i8*, i32, ...)*)(i8** %379, i8* %380, i32 %381)
  %382 = load %struct._K_str*, %struct._K_str** %4, align 8
  %383 = getelementptr inbounds %struct._K_str, %struct._K_str* %382, i32 0, i32 2
  store i32 2, i32* %383, align 8
  %384 = load i32, i32* @_P_flags, align 4
  %385 = and i32 %384, 2
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %398, label %387

387:                                              ; preds = %377
  %388 = load %struct._K_str*, %struct._K_str** %4, align 8
  %389 = getelementptr inbounds %struct._K_str, %struct._K_str* %388, i32 0, i32 3
  %390 = load i8*, i8** %389, align 8
  %391 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (i8*, i32)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* %390, i32 1)
  %392 = load %struct._K_str*, %struct._K_str** %4, align 8
  %393 = getelementptr inbounds %struct._K_str, %struct._K_str* %392, i32 0, i32 4
  store %struct.R_flstr* %391, %struct.R_flstr** %393, align 8
  %394 = load i32, i32* @_P_next_tol, align 4
  %395 = call %struct._T_tstr* (i32, ...) bitcast (%struct._T_tstr* (i32)* @T_gettol to %struct._T_tstr* (i32, ...)*)(i32 %394)
  %396 = load %struct._K_str*, %struct._K_str** %4, align 8
  %397 = getelementptr inbounds %struct._K_str, %struct._K_str* %396, i32 0, i32 5
  store %struct._T_tstr* %395, %struct._T_tstr** %397, align 8
  br label %398

398:                                              ; preds = %387, %377
  %399 = load i32, i32* @_P_next_tol, align 4
  %400 = call i32 @T_moretols(i32 %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %398
  %403 = load i32, i32* @_P_next_tol, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* @_P_next_tol, align 4
  br label %405

405:                                              ; preds = %402, %398
  %406 = load i32, i32* %2, align 4
  %407 = load i8*, i8** @_P_nextchr, align 8
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i8, i8* %407, i64 %408
  store i8* %409, i8** @_P_nextchr, align 8
  br label %530

410:                                              ; preds = %369
  %411 = call i16** @__ctype_b_loc() #8
  %412 = load i16*, i16** %411, align 8
  %413 = load i8*, i8** @_P_nextchr, align 8
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i32
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i16, i16* %412, i64 %416
  %418 = load i16, i16* %417, align 2
  %419 = zext i16 %418 to i32
  %420 = and i32 %419, 2048
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %452

422:                                              ; preds = %410
  %423 = load i8*, i8** @_P_nextchr, align 8
  store i8* %423, i8** %1, align 8
  br label %424

424:                                              ; preds = %437, %422
  %425 = call i16** @__ctype_b_loc() #8
  %426 = load i16*, i16** %425, align 8
  %427 = load i8*, i8** %1, align 8
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i16, i16* %426, i64 %430
  %432 = load i16, i16* %431, align 2
  %433 = zext i16 %432 to i32
  %434 = and i32 %433, 2048
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %424
  br label %437

437:                                              ; preds = %436
  %438 = load i8*, i8** %1, align 8
  %439 = getelementptr inbounds i8, i8* %438, i32 1
  store i8* %439, i8** %1, align 8
  br label %424

440:                                              ; preds = %424
  %441 = load %struct._K_str*, %struct._K_str** %4, align 8
  %442 = getelementptr inbounds %struct._K_str, %struct._K_str* %441, i32 0, i32 3
  %443 = load i8*, i8** @_P_nextchr, align 8
  %444 = load i8*, i8** %1, align 8
  %445 = load i8*, i8** @_P_nextchr, align 8
  %446 = ptrtoint i8* %444 to i64
  %447 = ptrtoint i8* %445 to i64
  %448 = sub i64 %446, %447
  call void (i8**, i8*, i64, ...) bitcast (void (i8**, i8*, i32)* @S_savenstr to void (i8**, i8*, i64, ...)*)(i8** %442, i8* %443, i64 %448)
  %449 = load %struct._K_str*, %struct._K_str** %4, align 8
  %450 = getelementptr inbounds %struct._K_str, %struct._K_str* %449, i32 0, i32 2
  store i32 1, i32* %450, align 8
  %451 = load i8*, i8** %1, align 8
  store i8* %451, i8** @_P_nextchr, align 8
  br label %529

452:                                              ; preds = %410
  %453 = call i16** @__ctype_b_loc() #8
  %454 = load i16*, i16** %453, align 8
  %455 = load i8*, i8** @_P_nextchr, align 8
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i32
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i16, i16* %454, i64 %458
  %460 = load i16, i16* %459, align 2
  %461 = zext i16 %460 to i32
  %462 = and i32 %461, 1024
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %470, label %464

464:                                              ; preds = %452
  %465 = load i8*, i8** @_P_nextchr, align 8
  %466 = load i8, i8* %465, align 1
  %467 = sext i8 %466 to i32
  %468 = call i32 @_P_in_alpha(i32 %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %520

470:                                              ; preds = %464, %452
  %471 = load i8*, i8** @_P_nextchr, align 8
  store i8* %471, i8** %1, align 8
  br label %472

472:                                              ; preds = %505, %470
  %473 = call i16** @__ctype_b_loc() #8
  %474 = load i16*, i16** %473, align 8
  %475 = load i8*, i8** %1, align 8
  %476 = load i8, i8* %475, align 1
  %477 = sext i8 %476 to i32
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i16, i16* %474, i64 %478
  %480 = load i16, i16* %479, align 2
  %481 = zext i16 %480 to i32
  %482 = and i32 %481, 1024
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %502, label %484

484:                                              ; preds = %472
  %485 = call i16** @__ctype_b_loc() #8
  %486 = load i16*, i16** %485, align 8
  %487 = load i8*, i8** %1, align 8
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i16, i16* %486, i64 %490
  %492 = load i16, i16* %491, align 2
  %493 = zext i16 %492 to i32
  %494 = and i32 %493, 2048
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %502, label %496

496:                                              ; preds = %484
  %497 = load i8*, i8** %1, align 8
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i32
  %500 = call i32 @_P_in_alpha(i32 %499)
  %501 = icmp ne i32 %500, 0
  br label %502

502:                                              ; preds = %496, %484, %472
  %503 = phi i1 [ true, %484 ], [ true, %472 ], [ %501, %496 ]
  br i1 %503, label %504, label %508

504:                                              ; preds = %502
  br label %505

505:                                              ; preds = %504
  %506 = load i8*, i8** %1, align 8
  %507 = getelementptr inbounds i8, i8* %506, i32 1
  store i8* %507, i8** %1, align 8
  br label %472

508:                                              ; preds = %502
  %509 = load %struct._K_str*, %struct._K_str** %4, align 8
  %510 = getelementptr inbounds %struct._K_str, %struct._K_str* %509, i32 0, i32 3
  %511 = load i8*, i8** @_P_nextchr, align 8
  %512 = load i8*, i8** %1, align 8
  %513 = load i8*, i8** @_P_nextchr, align 8
  %514 = ptrtoint i8* %512 to i64
  %515 = ptrtoint i8* %513 to i64
  %516 = sub i64 %514, %515
  call void (i8**, i8*, i64, ...) bitcast (void (i8**, i8*, i32)* @S_savenstr to void (i8**, i8*, i64, ...)*)(i8** %510, i8* %511, i64 %516)
  %517 = load %struct._K_str*, %struct._K_str** %4, align 8
  %518 = getelementptr inbounds %struct._K_str, %struct._K_str* %517, i32 0, i32 2
  store i32 1, i32* %518, align 8
  %519 = load i8*, i8** %1, align 8
  store i8* %519, i8** @_P_nextchr, align 8
  br label %528

520:                                              ; preds = %464
  %521 = load %struct._K_str*, %struct._K_str** %4, align 8
  %522 = getelementptr inbounds %struct._K_str, %struct._K_str* %521, i32 0, i32 3
  %523 = load i8*, i8** @_P_nextchr, align 8
  call void (i8**, i8*, i32, ...) bitcast (void (i8**, i8*, i32)* @S_savenstr to void (i8**, i8*, i32, ...)*)(i8** %522, i8* %523, i32 1)
  %524 = load %struct._K_str*, %struct._K_str** %4, align 8
  %525 = getelementptr inbounds %struct._K_str, %struct._K_str* %524, i32 0, i32 2
  store i32 1, i32* %525, align 8
  %526 = load i8*, i8** @_P_nextchr, align 8
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** @_P_nextchr, align 8
  br label %528

528:                                              ; preds = %520, %508
  br label %529

529:                                              ; preds = %528, %440
  br label %530

530:                                              ; preds = %529, %405
  br label %531

531:                                              ; preds = %530, %365
  %532 = load i32, i32* @_P_fnumb, align 4
  %533 = load i32, i32* @_P_fnumb, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %531
  %536 = load i32, i32* @_K_btm, align 4
  br label %539

537:                                              ; preds = %531
  %538 = load i32, i32* @_K_atm, align 4
  br label %539

539:                                              ; preds = %537, %535
  %540 = phi i32 [ %536, %535 ], [ %538, %537 ]
  %541 = load %struct._K_str*, %struct._K_str** %4, align 8
  call void (i32, i32, %struct._K_str*, ...) bitcast (void (i32, i32, %struct._K_str*)* @K_settoken to void (i32, i32, %struct._K_str*, ...)*)(i32 %532, i32 %540, %struct._K_str* %541)
  %542 = load i32, i32* @_P_fnumb, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %557

544:                                              ; preds = %539
  %545 = load i32, i32* @_P_fnumb, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  %548 = load i32, i32* @_L_btlm, align 4
  br label %551

549:                                              ; preds = %544
  %550 = load i32, i32* @_L_atlm, align 4
  br label %551

551:                                              ; preds = %549, %547
  %552 = phi i32 [ %548, %547 ], [ %550, %549 ]
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bc to [0 x i32]*), i64 0, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %554, align 4
  br label %570

557:                                              ; preds = %539
  %558 = load i32, i32* @_P_fnumb, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %557
  %561 = load i32, i32* @_L_btlm, align 4
  br label %564

562:                                              ; preds = %557
  %563 = load i32, i32* @_L_atlm, align 4
  br label %564

564:                                              ; preds = %562, %560
  %565 = phi i32 [ %561, %560 ], [ %563, %562 ]
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_ac to [0 x i32]*), i64 0, i64 %566
  %568 = load i32, i32* %567, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %567, align 4
  br label %570

570:                                              ; preds = %564, %551
  %571 = phi i32 [ %555, %551 ], [ %568, %564 ]
  %572 = load i32, i32* @_P_fnumb, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %577

574:                                              ; preds = %570
  %575 = load i32, i32* @_K_btm, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* @_K_btm, align 4
  br label %580

577:                                              ; preds = %570
  %578 = load i32, i32* @_K_atm, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* @_K_atm, align 4
  br label %580

580:                                              ; preds = %577, %574
  %581 = phi i32 [ %576, %574 ], [ %579, %577 ]
  %582 = icmp sge i32 %581, 50000
  br i1 %582, label %583, label %585

583:                                              ; preds = %580
  %584 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2.91, i64 0, i64 0), i32 50000) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %614

585:                                              ; preds = %580
  %586 = load i32, i32* @_P_fnumb, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %590

588:                                              ; preds = %585
  %589 = load i32, i32* @_K_btm, align 4
  br label %592

590:                                              ; preds = %585
  %591 = load i32, i32* @_K_atm, align 4
  br label %592

592:                                              ; preds = %590, %588
  %593 = phi i32 [ %589, %588 ], [ %591, %590 ]
  %594 = srem i32 %593, 1000
  %595 = icmp eq i32 0, %594
  br i1 %595, label %596, label %609

596:                                              ; preds = %592
  %597 = load i32, i32* @_P_fnumb, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %596
  %600 = load i32, i32* @_K_btm, align 4
  br label %603

601:                                              ; preds = %596
  %602 = load i32, i32* @_K_atm, align 4
  br label %603

603:                                              ; preds = %601, %599
  %604 = phi i32 [ %600, %599 ], [ %602, %601 ]
  store i32 %604, i32* %11, align 4
  %605 = load i32, i32* %11, align 4
  %606 = load i32, i32* @_P_fnumb, align 4
  %607 = add nsw i32 %606, 1
  %608 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.92, i64 0, i64 0), i32 %605, i32 %607) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_chatter to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %609

609:                                              ; preds = %603, %592
  %610 = load i32, i32* %3, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %609
  br label %614

613:                                              ; preds = %609
  br label %12

614:                                              ; preds = %612, %583, %61, %31, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_P_needmore() #0 {
  %1 = load i8*, i8** @_P_nextchr, align 8
  %2 = load i8, i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_P_nextline() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @_P_has_content, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %81

4:                                                ; preds = %0
  %5 = load i32, i32* @_P_fnumb, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @_L_bclm, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @_L_bclm, align 4
  br label %13

10:                                               ; preds = %4
  %11 = load i32, i32* @_L_aclm, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @_L_aclm, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %8, %7 ], [ %11, %10 ]
  %15 = load i32, i32* @_P_fnumb, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, i32* @_P_fnumb, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @_L_btlm, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @_L_atlm, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bc to [0 x i32]*), i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %80

30:                                               ; preds = %13
  %31 = load i32, i32* @_P_fnumb, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @_L_btlm, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @_L_atlm, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_ac to [0 x i32]*), i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %37, %24
  %44 = load i32, i32* @_P_fnumb, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @_L_btlm, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @_L_btlm, align 4
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @_L_atlm, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @_L_atlm, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %47, %46 ], [ %50, %49 ]
  %54 = load i32, i32* @_P_fnumb, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, i32* @_P_fnumb, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @_L_btlm, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @_L_atlm, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bc to [0 x i32]*), i64 0, i64 %65
  store i32 0, i32* %66, align 4
  br label %78

67:                                               ; preds = %52
  %68 = load i32, i32* @_P_fnumb, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @_L_btlm, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @_L_atlm, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_ac to [0 x i32]*), i64 0, i64 %76
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %63
  %79 = phi i32 [ 0, %63 ], [ 0, %74 ]
  br label %80

80:                                               ; preds = %78, %37, %24
  store i32 0, i32* @_P_has_content, align 4
  br label %81

81:                                               ; preds = %80, %0
  store i32 0, i32* @_P_next_tol, align 4
  %82 = load i32, i32* @_P_realline, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @_P_realline, align 4
  %84 = load i32, i32* @_P_realline, align 4
  %85 = load i32, i32* @_P_start, align 4
  %86 = load i32, i32* @_P_lcount, align 4
  %87 = add nsw i32 %85, %86
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 1, i32* %1, align 4
  br label %139

90:                                               ; preds = %81
  %91 = load i32, i32* @_P_fnumb, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @_P_realline, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_bl to [0 x i8*]*), i64 0, i64 %95
  %97 = load i8*, i8** %96, align 8
  br label %103

98:                                               ; preds = %90
  %99 = load i32, i32* @_P_realline, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([10000 x i8*]* @_L_al to [0 x i8*]*), i64 0, i64 %100
  %102 = load i8*, i8** %101, align 8
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi i8* [ %97, %93 ], [ %102, %98 ]
  store i8* %104, i8** @_P_nextchr, align 8
  store i8* %104, i8** @_P_firstchr, align 8
  %105 = load i8*, i8** @_P_firstchr, align 8
  %106 = call i32 (i8*, ...) bitcast (i32 (i8*)* @C_is_cmd to i32 (i8*, ...)*)(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @_P_dummyline, i64 0, i64 0), i8** @_P_nextchr, align 8
  store i32 0, i32* @_P_has_content, align 4
  br label %138

109:                                              ; preds = %103
  %110 = load i32, i32* @_P_fnumb, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i32, i32* @_P_realline, align 4
  %114 = load i32, i32* @_P_fnumb, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @_L_bclm, align 4
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @_L_aclm, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_bclindex to [0 x i32]*), i64 0, i64 %122
  store i32 %113, i32* %123, align 4
  br label %136

124:                                              ; preds = %109
  %125 = load i32, i32* @_P_realline, align 4
  %126 = load i32, i32* @_P_fnumb, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @_L_bclm, align 4
  br label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @_L_aclm, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10000 x i32]* @_L_aclindex to [0 x i32]*), i64 0, i64 %134
  store i32 %125, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %120
  %137 = phi i32 [ %113, %120 ], [ %125, %132 ]
  store i32 1, i32* @_P_has_content, align 4
  br label %138

138:                                              ; preds = %136, %108
  store i32 0, i32* %1, align 4
  br label %139

139:                                              ; preds = %138, %89
  %140 = load i32, i32* %1, align 4
  ret i32 %140
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_P_bolsnarf(%struct._W_bolstruct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._W_bolstruct*, align 8
  store %struct._W_bolstruct* %0, %struct._W_bolstruct** %3, align 8
  %4 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %5 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = call i64 @strlen(i8* %6) #6
  %8 = load i8*, i8** @_P_nextchr, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 %7
  store i8* %9, i8** @_P_nextchr, align 8
  %10 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %11 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %10, i32 0, i32 1
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %87, %61, %17
  %19 = call i32 @_P_needmore()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = call i32 @_P_nextline()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %90

25:                                               ; preds = %21
  %26 = load i32, i32* @_P_has_content, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %30 = call i32 (%struct._W_bolstruct*, ...) bitcast (i32 (%struct._W_bolstruct*)* @W_is_bol to i32 (%struct._W_bolstruct*, ...)*)(%struct._W_bolstruct* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %90

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %37 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %36, i32 0, i32 2
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %37, i64 0, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 0, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load i8*, i8** @_P_nextchr, align 8
  %44 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %45 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %44, i32 0, i32 2
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0
  %47 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %43, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** @_P_nextchr, align 8
  %51 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %52 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %51, i32 0, i32 2
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %52, i64 0, i64 0
  %54 = call i64 @strlen(i8* %53) #6
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %57 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %56, i32 0, i32 1
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %57, i64 0, i64 0
  %59 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %55, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %49
  %62 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %63 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %62, i32 0, i32 2
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %63, i64 0, i64 0
  %65 = call i64 @strlen(i8* %64) #6
  %66 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %67 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %66, i32 0, i32 1
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %67, i64 0, i64 0
  %69 = call i64 @strlen(i8* %68) #6
  %70 = add i64 %65, %69
  %71 = load i8*, i8** @_P_nextchr, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** @_P_nextchr, align 8
  br label %18

73:                                               ; preds = %49, %42, %35
  %74 = load i8*, i8** @_P_nextchr, align 8
  %75 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %76 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %75, i32 0, i32 1
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %76, i64 0, i64 0
  %78 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %74, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %82 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %81, i32 0, i32 1
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %82, i64 0, i64 0
  %84 = call i64 @strlen(i8* %83) #6
  %85 = load i8*, i8** @_P_nextchr, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** @_P_nextchr, align 8
  store i32 0, i32* %2, align 4
  br label %90

87:                                               ; preds = %73
  %88 = load i8*, i8** @_P_nextchr, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** @_P_nextchr, align 8
  br label %18

90:                                               ; preds = %80, %32, %24, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_P_comsnarf(%struct._W_comstruct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._W_comstruct*, align 8
  %4 = alloca i32, align 4
  store %struct._W_comstruct* %0, %struct._W_comstruct** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %6 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %8 = call i64 @strlen(i8* %7) #6
  %9 = load i8*, i8** @_P_nextchr, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 %8
  store i8* %10, i8** @_P_nextchr, align 8
  %11 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %12 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %11, i32 0, i32 1
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %14 = load i8, i8* %13, align 4
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 0, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %120, %111, %99, %62, %18
  %20 = call i32 @_P_needmore()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = call i32 @_P_nextline()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %123

26:                                               ; preds = %22
  %27 = load i32, i32* @_P_has_content, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %31 = call i32 (%struct._W_comstruct*, ...) bitcast (i32 (%struct._W_comstruct*)* @W_is_com to i32 (%struct._W_comstruct*, ...)*)(%struct._W_comstruct* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %123

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %26
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %38 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %37, i32 0, i32 2
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i64 0, i64 0
  %40 = load i8, i8* %39, align 4
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 0, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %36
  %44 = load i8*, i8** @_P_nextchr, align 8
  %45 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %46 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %45, i32 0, i32 2
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %44, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %43
  %51 = load i8*, i8** @_P_nextchr, align 8
  %52 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %53 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %52, i32 0, i32 2
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %53, i64 0, i64 0
  %55 = call i64 @strlen(i8* %54) #6
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %58 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %57, i32 0, i32 1
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %58, i64 0, i64 0
  %60 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %56, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %50
  %63 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %64 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %63, i32 0, i32 2
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %64, i64 0, i64 0
  %66 = call i64 @strlen(i8* %65) #6
  %67 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %68 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %67, i32 0, i32 1
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %68, i64 0, i64 0
  %70 = call i64 @strlen(i8* %69) #6
  %71 = add i64 %66, %70
  %72 = load i8*, i8** @_P_nextchr, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** @_P_nextchr, align 8
  br label %19

74:                                               ; preds = %50, %43, %36
  %75 = load i8*, i8** @_P_nextchr, align 8
  %76 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %77 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %76, i32 0, i32 1
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %77, i64 0, i64 0
  %79 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %75, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %74
  %82 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %83 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %82, i32 0, i32 1
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %83, i64 0, i64 0
  %85 = call i64 @strlen(i8* %84) #6
  %86 = load i8*, i8** @_P_nextchr, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** @_P_nextchr, align 8
  %88 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %89 = call i32 @W_is_nesting(%struct._W_comstruct* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 0, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %123

97:                                               ; preds = %91
  br label %99

98:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %123

99:                                               ; preds = %97
  br label %19

100:                                              ; preds = %74
  %101 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %102 = call i32 @W_is_nesting(%struct._W_comstruct* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load i8*, i8** @_P_nextchr, align 8
  %106 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %107 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %106, i32 0, i32 1
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %107, i64 0, i64 0
  %109 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %105, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %104
  %112 = load %struct._W_comstruct*, %struct._W_comstruct** %3, align 8
  %113 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %112, i32 0, i32 1
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %113, i64 0, i64 0
  %115 = call i64 @strlen(i8* %114) #6
  %116 = load i8*, i8** @_P_nextchr, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %117, i8** @_P_nextchr, align 8
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %19

120:                                              ; preds = %104, %100
  %121 = load i8*, i8** @_P_nextchr, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** @_P_nextchr, align 8
  br label %19

123:                                              ; preds = %98, %96, %33, %25, %17
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_P_litsnarf(%struct._W_bolstruct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._W_bolstruct*, align 8
  store %struct._W_bolstruct* %0, %struct._W_bolstruct** %3, align 8
  store i32 0, i32* @_P_stringsize, align 4
  %4 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %5 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = call i64 @strlen(i8* %6) #6
  %8 = load i8*, i8** @_P_nextchr, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 %7
  store i8* %9, i8** @_P_nextchr, align 8
  %10 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %11 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %10, i32 0, i32 0
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %13 = call i64 @strlen(i8* %12) #6
  %14 = load i32, i32* @_P_stringsize, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @_P_stringsize, align 4
  %18 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %19 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %18, i32 0, i32 1
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %121

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %116, %69, %25
  %27 = call i32 @_P_needmore()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = call i32 @_P_nextline()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %121

33:                                               ; preds = %29
  %34 = load i32, i32* @_P_has_content, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %38 = call i32 (%struct._W_bolstruct*, ...) bitcast (i32 (%struct._W_bolstruct*)* @W_is_lit to i32 (%struct._W_bolstruct*, ...)*)(%struct._W_bolstruct* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %121

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %33
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %45 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %44, i32 0, i32 2
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 0, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %43
  %51 = load i8*, i8** @_P_nextchr, align 8
  %52 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %53 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %52, i32 0, i32 2
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %53, i64 0, i64 0
  %55 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %51, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %94, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** @_P_nextchr, align 8
  %59 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %60 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %59, i32 0, i32 2
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %60, i64 0, i64 0
  %62 = call i64 @strlen(i8* %61) #6
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %65 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %64, i32 0, i32 1
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %65, i64 0, i64 0
  %67 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %63, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %94, label %69

69:                                               ; preds = %57
  %70 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %71 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %70, i32 0, i32 2
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %71, i64 0, i64 0
  %73 = call i64 @strlen(i8* %72) #6
  %74 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %75 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %74, i32 0, i32 1
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %75, i64 0, i64 0
  %77 = call i64 @strlen(i8* %76) #6
  %78 = add i64 %73, %77
  %79 = load i8*, i8** @_P_nextchr, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** @_P_nextchr, align 8
  %81 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %82 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %81, i32 0, i32 2
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %82, i64 0, i64 0
  %84 = call i64 @strlen(i8* %83) #6
  %85 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %86 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %85, i32 0, i32 1
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %86, i64 0, i64 0
  %88 = call i64 @strlen(i8* %87) #6
  %89 = add i64 %84, %88
  %90 = load i32, i32* @_P_stringsize, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* @_P_stringsize, align 4
  br label %26

94:                                               ; preds = %57, %50, %43
  %95 = load i8*, i8** @_P_nextchr, align 8
  %96 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %97 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %96, i32 0, i32 1
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %97, i64 0, i64 0
  %99 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %95, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %94
  %102 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %103 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %102, i32 0, i32 1
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %103, i64 0, i64 0
  %105 = call i64 @strlen(i8* %104) #6
  %106 = load i8*, i8** @_P_nextchr, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** @_P_nextchr, align 8
  %108 = load %struct._W_bolstruct*, %struct._W_bolstruct** %3, align 8
  %109 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %108, i32 0, i32 1
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %109, i64 0, i64 0
  %111 = call i64 @strlen(i8* %110) #6
  %112 = load i32, i32* @_P_stringsize, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* @_P_stringsize, align 4
  store i32 0, i32* %2, align 4
  br label %121

116:                                              ; preds = %94
  %117 = load i8*, i8** @_P_nextchr, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** @_P_nextchr, align 8
  %119 = load i32, i32* @_P_stringsize, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @_P_stringsize, align 4
  br label %26

121:                                              ; preds = %101, %40, %32, %24
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @_P_in_alpha(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = trunc i32 %0 to i8
  store i8 %4, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 0, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i8, i8* %3, align 1
  %11 = sext i8 %10 to i32
  %12 = call i8* @index(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i64 0, i64 0), i32 %11) #6
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare dso_local i8* @index(i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_P_alpha_clear() #0 {
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_P_alpha, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.edt*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  call void @_Y_doargs(i32 %11, i8** %12, i8** %13, i8** %14, i32* %8)
  call void (...) bitcast (void ()* @T_initdefault to void (...)*)()
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @L_init_file(i32 %19, i8* %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* @_K_btm, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* @_K_atm, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i32 [ 0, %27 ], [ 0, %28 ]
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @_L_brlm, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @_L_arlm, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* @_Y_flags, align 4
  call void (i32, i32, i32, i32, ...) bitcast (void (i32, i32, i32, i32)* @P_file_parse to void (i32, i32, i32, i32, ...)*)(i32 %31, i32 0, i32 %39, i32 %40)
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load i32, i32* @_Y_vflag, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @_Y_flags, align 4
  %49 = call i32 @V_visual(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %88

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 -1, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @_K_atm, align 4
  %56 = load i32, i32* @_K_btm, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %51
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %9, align 4
  %61 = icmp sle i32 %60, 300000
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i32, i32* @_Y_eflag, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* @_K_atm, align 4
  %67 = load i32, i32* @_K_btm, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @_Y_flags, align 4
  %70 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (i32, i32, i32, i32)* @Q_do_exact to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 %66, i32 %67, i32 %68, i32 %69)
  store %struct.edt* %70, %struct.edt** %6, align 8
  br label %77

71:                                               ; preds = %62
  %72 = load i32, i32* @_K_atm, align 4
  %73 = load i32, i32* @_K_btm, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @_Y_flags, align 4
  %76 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (i32, i32, i32, i32)* @G_do_miller to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 %72, i32 %73, i32 %74, i32 %75)
  store %struct.edt* %76, %struct.edt** %6, align 8
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %59

81:                                               ; preds = %59
  %82 = load %struct.edt*, %struct.edt** %6, align 8
  %83 = icmp ne %struct.edt* null, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.edt*, %struct.edt** %6, align 8
  %86 = load i32, i32* @_Y_flags, align 4
  call void (%struct.edt*, i32, ...) bitcast (void (%struct.edt*, i32)* @O_output to void (%struct.edt*, i32, ...)*)(%struct.edt* %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %47
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define internal void @_Y_doargs(i32 %0, i8** %1, i8** %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  store i32 -1, i32* %14, align 4
  br label %15

15:                                               ; preds = %168, %5
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %173

28:                                               ; preds = %26
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %167 [
    i32 116, label %35
    i32 119, label %38
    i32 98, label %41
    i32 99, label %44
    i32 100, label %47
    i32 109, label %50
    i32 97, label %53
    i32 114, label %74
    i32 105, label %95
    i32 101, label %96
    i32 118, label %97
    i32 113, label %98
    i32 115, label %99
    i32 102, label %120
    i32 67, label %155
    i32 83, label %156
    i32 70, label %157
    i32 76, label %158
    i32 77, label %159
    i32 48, label %160
    i32 49, label %160
    i32 50, label %160
    i32 51, label %160
    i32 52, label %160
    i32 53, label %160
    i32 54, label %160
    i32 55, label %160
    i32 56, label %160
    i32 57, label %160
  ]

35:                                               ; preds = %28
  %36 = load i32, i32* @_Y_flags, align 4
  %37 = or i32 %36, 8
  store i32 %37, i32* @_Y_flags, align 4
  br label %168

38:                                               ; preds = %28
  %39 = load i32, i32* @_Y_flags, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* @_Y_flags, align 4
  br label %168

41:                                               ; preds = %28
  %42 = load i32, i32* @_Y_flags, align 4
  %43 = or i32 %42, 2
  store i32 %43, i32* @_Y_flags, align 4
  br label %168

44:                                               ; preds = %28
  %45 = load i32, i32* @_Y_flags, align 4
  %46 = or i32 %45, 4
  store i32 %46, i32* @_Y_flags, align 4
  br label %168

47:                                               ; preds = %28
  %48 = load i32, i32* @_Y_flags, align 4
  %49 = or i32 %48, 32
  store i32 %49, i32* @_Y_flags, align 4
  br label %168

50:                                               ; preds = %28
  %51 = load i32, i32* @_Y_flags, align 4
  %52 = or i32 %51, 16
  store i32 %52, i32* @_Y_flags, align 4
  br label %168

53:                                               ; preds = %28
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strlen(i8* %56) #6
  %58 = icmp eq i64 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  %64 = load i8**, i8*** %7, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %11, align 8
  br label %72

67:                                               ; preds = %53
  %68 = load i8**, i8*** %7, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i8*, i8** %11, align 8
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (%struct._T_tstr**, i32, i8*)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** @_T_gtol, i32 0, i8* %73)
  br label %168

74:                                               ; preds = %28
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strlen(i8* %77) #6
  %79 = icmp eq i64 %78, 2
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i8**, i8*** %7, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = load i8**, i8*** %7, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %11, align 8
  br label %93

88:                                               ; preds = %74
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8* %92, i8** %11, align 8
  br label %93

93:                                               ; preds = %88, %80
  %94 = load i8*, i8** %11, align 8
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (%struct._T_tstr**, i32, i8*)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** @_T_gtol, i32 1, i8* %94)
  br label %168

95:                                               ; preds = %28
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (%struct._T_tstr**, i32, i8*)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** @_T_gtol, i32 2, i8* null)
  br label %168

96:                                               ; preds = %28
  store i32 1, i32* @_Y_eflag, align 4
  br label %168

97:                                               ; preds = %28
  store i32 1, i32* @_Y_vflag, align 4
  br label %168

98:                                               ; preds = %28
  call void (...) bitcast (void ()* @Z_setquiet to void (...)*)()
  br label %168

99:                                               ; preds = %28
  %100 = load i8**, i8*** %7, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strlen(i8* %102) #6
  %104 = icmp eq i64 %103, 2
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i8**, i8*** %7, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %6, align 4
  %110 = load i8**, i8*** %7, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %11, align 8
  br label %118

113:                                              ; preds = %99
  %114 = load i8**, i8*** %7, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %113, %105
  %119 = load i8*, i8** %11, align 8
  call void @_Y_cmdlines(i8* %119)
  br label %168

120:                                              ; preds = %28
  %121 = load i8**, i8*** %7, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strlen(i8* %123) #6
  %125 = icmp eq i64 %124, 2
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i8**, i8*** %7, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %7, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %6, align 4
  %131 = load i8**, i8*** %7, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %11, align 8
  br label %139

134:                                              ; preds = %120
  %135 = load i8**, i8*** %7, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8* %138, i8** %11, align 8
  br label %139

139:                                              ; preds = %134, %126
  %140 = load i8*, i8** %11, align 8
  %141 = call %struct._IO_FILE* @fopen(i8* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0))
  store %struct._IO_FILE* %141, %struct._IO_FILE** %13, align 8
  %142 = icmp eq %struct._IO_FILE* null, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.94, i64 0, i64 0))
  br label %144

144:                                              ; preds = %143, %139
  br label %145

145:                                              ; preds = %150, %144
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %148 = call i8* @fgets(i8* %146, i32 1024, %struct._IO_FILE* %147)
  %149 = icmp ne i8* null, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* %151)
  br label %145

152:                                              ; preds = %145
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %154 = call i32 @fclose(%struct._IO_FILE* %153)
  br label %168

155:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.95, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.96, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.97, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.98, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.99, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.100, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.101, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9.102, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.103, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11.104, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.105, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13.106, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14.107, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15.108, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16.109, i64 0, i64 0))
  br label %168

156:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.110, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

157:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

158:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

159:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24.111, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28.112, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29.113, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

160:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %161 = load i8**, i8*** %7, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 1
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = call i32 @atoi(i8* %164) #6
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  br label %168

167:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0))
  br label %168

168:                                              ; preds = %167, %160, %159, %158, %157, %156, %155, %152, %118, %98, %97, %96, %95, %93, %72, %50, %47, %44, %41, %38, %35
  %169 = load i8**, i8*** %7, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %7, align 8
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %6, align 4
  br label %15

173:                                              ; preds = %26
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 3
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0))
  br label %177

177:                                              ; preds = %176, %173
  %178 = load i8**, i8*** %7, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i8**, i8*** %8, align 8
  store i8* %180, i8** %181, align 8
  %182 = load i8**, i8*** %7, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 2
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** %9, align 8
  store i8* %184, i8** %185, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_Y_cmdlines(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 0, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %5
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %24, %10
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 0, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 10, %20
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  %27 = load i8, i8* %25, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8 %27, i8* %28, align 1
  br label %12

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  call void (i8*, ...) bitcast (void (i8*)* @C_addcmd to void (i8*, ...)*)(i8* %32)
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 10, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %5

41:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_wordcpy(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %37, %2
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = call i16** @__ctype_b_loc() #8
  %12 = load i16*, i16** %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %12, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 16384
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %10
  %23 = call i16** @__ctype_b_loc() #8
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 8192
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %22, %10, %5
  %36 = phi i1 [ false, %10 ], [ false, %5 ], [ %34, %22 ]
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  store i8 %40, i8* %41, align 1
  br label %5

43:                                               ; preds = %35
  %44 = load i8*, i8** %3, align 8
  store i8 0, i8* %44, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_skipword(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  br label %3

3:                                                ; preds = %38, %1
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %10, align 8
  %12 = load i8**, i8*** %2, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %11, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 16384
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %9
  %23 = call i16** @__ctype_b_loc() #8
  %24 = load i16*, i16** %23, align 8
  %25 = load i8**, i8*** %2, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %24, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %22, %9, %3
  %37 = phi i1 [ false, %9 ], [ false, %3 ], [ %35, %22 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load i8**, i8*** %2, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  br label %3

42:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_skipspace(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  br label %3

3:                                                ; preds = %24, %1
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %10, align 8
  %12 = load i8**, i8*** %2, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %11, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 8192
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi i1 [ false, %3 ], [ %21, %9 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load i8**, i8*** %2, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  br label %3

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_nextword(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  call void @S_skipword(i8** %3)
  %4 = load i8**, i8*** %2, align 8
  call void @S_skipspace(i8** %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @S_wordcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7) #6
  %9 = call i32 @strncmp(i8* %5, i8* %6, i64 %8) #6
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_trimzeros(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) #6
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = icmp ugt i8* %9, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 48, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  store i8 0, i8* %21, align 1
  br label %23

22:                                               ; preds = %13
  br label %25

23:                                               ; preds = %20
  br label %8

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_savestr(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strlen(i8* %6) #6
  call void (i8**, i64, ...) bitcast (void (i8**, i32)* @S_allocstr to void (i8**, i64, ...)*)(i8** %5, i64 %7)
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strcpy(i8* %9, i8* %10) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_allocstr(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 1
  %9 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 %8)
  %10 = bitcast i32* %9 to i8*
  %11 = load i8**, i8*** %3, align 8
  store i8* %10, i8** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S_savenstr(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = load i32, i32* %6, align 4
  call void @S_allocstr(i8** %7, i32 %8)
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = call i8* @strncpy(i8* %10, i8* %11, i64 %13) #7
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 0, i8* %19, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @K_settoken(i32 %0, i32 %1, %struct._K_str* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._K_str*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct._K_str* %2, %struct._K_str** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct._K_str*, %struct._K_str** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [50000 x %struct._K_str*], [50000 x %struct._K_str*]* @_K_bto, i64 0, i64 %12
  store %struct._K_str* %10, %struct._K_str** %13, align 8
  br label %19

14:                                               ; preds = %3
  %15 = load %struct._K_str*, %struct._K_str** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [50000 x %struct._K_str*], [50000 x %struct._K_str*]* @_K_ato, i64 0, i64 %17
  store %struct._K_str* %15, %struct._K_str** %18, align 8
  br label %19

19:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_initdefault() #0 {
  %1 = load i32, i32* @T_initdefault.called_before, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.144, i64 0, i64 0))
  br label %4

4:                                                ; preds = %3, %0
  %5 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  %6 = icmp eq %struct._T_tstr* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @_T_addtol(%struct._T_tstr** @_T_gtol, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0))
  call void @_T_addtol(%struct._T_tstr** @_T_gtol, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0))
  br label %8

8:                                                ; preds = %7, %4
  store i32 1, i32* @T_initdefault.called_before, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_T_addtol(%struct._T_tstr** %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct._T_tstr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr** %0, %struct._T_tstr*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct._T_tstr**, %struct._T_tstr*** %4, align 8
  %9 = load %struct._T_tstr*, %struct._T_tstr** %8, align 8
  %10 = icmp eq %struct._T_tstr* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %13 = bitcast i32* %12 to %struct._T_tstr*
  %14 = load %struct._T_tstr**, %struct._T_tstr*** %4, align 8
  store %struct._T_tstr* %13, %struct._T_tstr** %14, align 8
  store %struct._T_tstr* %13, %struct._T_tstr** %7, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load %struct._T_tstr**, %struct._T_tstr*** %4, align 8
  %17 = load %struct._T_tstr*, %struct._T_tstr** %16, align 8
  store %struct._T_tstr* %17, %struct._T_tstr** %7, align 8
  br label %18

18:                                               ; preds = %25, %15
  %19 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %20 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %19, i32 0, i32 2
  %21 = load %struct._T_tstr*, %struct._T_tstr** %20, align 8
  %22 = icmp eq %struct._T_tstr* %21, null
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %27 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %26, i32 0, i32 2
  %28 = load %struct._T_tstr*, %struct._T_tstr** %27, align 8
  store %struct._T_tstr* %28, %struct._T_tstr** %7, align 8
  br label %18

29:                                               ; preds = %18
  %30 = call i32* (i64, ...) bitcast (i32* (i32)* @_Z_myalloc to i32* (i64, ...)*)(i64 24)
  %31 = bitcast i32* %30 to %struct._T_tstr*
  %32 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %33 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %32, i32 0, i32 2
  store %struct._T_tstr* %31, %struct._T_tstr** %33, align 8
  %34 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %35 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %34, i32 0, i32 2
  %36 = load %struct._T_tstr*, %struct._T_tstr** %35, align 8
  store %struct._T_tstr* %36, %struct._T_tstr** %7, align 8
  br label %37

37:                                               ; preds = %29, %11
  %38 = load i32, i32* %5, align 4
  %39 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %40 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %42 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %41, i32 0, i32 2
  store %struct._T_tstr* null, %struct._T_tstr** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 2, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %47 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %46, i32 0, i32 1
  store %struct.R_flstr* null, %struct.R_flstr** %47, align 8
  br label %76

48:                                               ; preds = %37
  %49 = load i8*, i8** %6, align 8
  %50 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (i8*, i32)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* %49, i32 0)
  %51 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %52 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %51, i32 0, i32 1
  store %struct.R_flstr* %50, %struct.R_flstr** %52, align 8
  %53 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %54 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %53, i32 0, i32 1
  %55 = load %struct.R_flstr*, %struct.R_flstr** %54, align 8
  %56 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3.148, i64 0, i64 0), i8* %60) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 1, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct._T_tstr*, %struct._T_tstr** %7, align 8
  %67 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %66, i32 0, i32 1
  %68 = load %struct.R_flstr*, %struct.R_flstr** %67, align 8
  %69 = call %struct.R_flstr* (i8*, i32, ...) bitcast (%struct.R_flstr* (i8*, i32)* @F_atof to %struct.R_flstr* (i8*, i32, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.149, i64 0, i64 0), i32 1)
  %70 = call i32 @F_floatcmp(%struct.R_flstr* %68, %struct.R_flstr* %69)
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5.150, i64 0, i64 0), i8* %73) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %65, %62
  br label %76

76:                                               ; preds = %75, %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_clear_tols() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %7
  call void @_T_tolclear(%struct._T_tstr** %8)
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_T_tolclear(%struct._T_tstr** %0) #0 {
  %2 = alloca %struct._T_tstr**, align 8
  store %struct._T_tstr** %0, %struct._T_tstr*** %2, align 8
  %3 = load %struct._T_tstr**, %struct._T_tstr*** %2, align 8
  store %struct._T_tstr* null, %struct._T_tstr** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_setdef(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @_T_defclear()
  %3 = load i8*, i8** %2, align 8
  call void @_T_settol(%struct._T_tstr** @_T_gtol, i8* %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_T_defclear() #0 {
  call void @_T_tolclear(%struct._T_tstr** @_T_gtol)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_T_settol(%struct._T_tstr** %0, i8* %1) #0 {
  %3 = alloca %struct._T_tstr**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct._T_tstr** %0, %struct._T_tstr*** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 0, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  call void (i8**, ...) bitcast (void (i8**)* @S_skipspace to void (i8**, ...)*)(i8** %4)
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %5, align 1
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  call void (i8**, ...) bitcast (void (i8**)* @S_skipspace to void (i8**, ...)*)(i8** %4)
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %29 [
    i32 97, label %18
    i32 114, label %21
    i32 105, label %24
    i32 100, label %26
  ]

18:                                               ; preds = %11
  %19 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %20 = load i8*, i8** %4, align 8
  call void @_T_addtol(%struct._T_tstr** %19, i32 0, i8* %20)
  br label %33

21:                                               ; preds = %11
  %22 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %23 = load i8*, i8** %4, align 8
  call void @_T_addtol(%struct._T_tstr** %22, i32 1, i8* %23)
  br label %33

24:                                               ; preds = %11
  %25 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  call void @_T_addtol(%struct._T_tstr** %25, i32 2, i8* null)
  br label %33

26:                                               ; preds = %11
  %27 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %28 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  call void @_T_appendtols(%struct._T_tstr** %27, %struct._T_tstr* %28)
  br label %33

29:                                               ; preds = %11
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6.153, i64 0, i64 0), i32 %31) #7
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26, %24, %21, %18
  call void (i8**, ...) bitcast (void (i8**)* @S_nextword to void (i8**, ...)*)(i8** %4)
  br label %6

34:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_T_appendtols(%struct._T_tstr** %0, %struct._T_tstr* %1) #0 {
  %3 = alloca %struct._T_tstr**, align 8
  %4 = alloca %struct._T_tstr*, align 8
  %5 = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr** %0, %struct._T_tstr*** %3, align 8
  store %struct._T_tstr* %1, %struct._T_tstr** %4, align 8
  %6 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %7 = load %struct._T_tstr*, %struct._T_tstr** %6, align 8
  %8 = icmp eq %struct._T_tstr* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  %11 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  store %struct._T_tstr* %10, %struct._T_tstr** %11, align 8
  br label %30

12:                                               ; preds = %2
  %13 = load %struct._T_tstr**, %struct._T_tstr*** %3, align 8
  %14 = load %struct._T_tstr*, %struct._T_tstr** %13, align 8
  store %struct._T_tstr* %14, %struct._T_tstr** %5, align 8
  br label %15

15:                                               ; preds = %22, %12
  %16 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %17 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %16, i32 0, i32 2
  %18 = load %struct._T_tstr*, %struct._T_tstr** %17, align 8
  %19 = icmp eq %struct._T_tstr* %18, null
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %24 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %23, i32 0, i32 2
  %25 = load %struct._T_tstr*, %struct._T_tstr** %24, align 8
  store %struct._T_tstr* %25, %struct._T_tstr** %5, align 8
  br label %15

26:                                               ; preds = %15
  %27 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  %28 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %29 = getelementptr inbounds %struct._T_tstr, %struct._T_tstr* %28, i32 0, i32 2
  store %struct._T_tstr* %27, %struct._T_tstr** %29, align 8
  br label %30

30:                                               ; preds = %26, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @T_tolline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @T_clear_tols()
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 0, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.156, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %15
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @_T_getspec(i8* %17)
  call void @_T_settol(%struct._T_tstr** %16, i8* %18)
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @_T_nextspec(i8* %22)
  store i8* %23, i8** %2, align 8
  br label %4

24:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @_T_getspec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i64 0, i64 0), i8** %3, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 59, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 0, %12
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i1 [ false, %4 ], [ %13, %9 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  %19 = load i8, i8* %17, align 1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  store i8 %19, i8* %20, align 1
  br label %4

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  store i8 0, i8* %23, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @_T_getspec.retval, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @_T_nextspec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %16, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 59, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 0, %11
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i1 [ false, %3 ], [ %12, %8 ]
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  br label %3

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 59, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @T_moretols(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 9, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %11
  %13 = load %struct._T_tstr*, %struct._T_tstr** %12, align 8
  %14 = icmp eq %struct._T_tstr* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %8, %5, %1
  %17 = phi i1 [ false, %5 ], [ false, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._T_tstr* @T_gettol(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10 x %struct._T_tstr*], [10 x %struct._T_tstr*]* @_T_tols, i64 0, i64 %4
  %6 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  ret %struct._T_tstr* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._T_tstr* @T_picktol(%struct._T_tstr* %0, %struct._T_tstr* %1) #0 {
  %3 = alloca %struct._T_tstr*, align 8
  %4 = alloca %struct._T_tstr*, align 8
  %5 = alloca %struct._T_tstr*, align 8
  store %struct._T_tstr* %0, %struct._T_tstr** %4, align 8
  store %struct._T_tstr* %1, %struct._T_tstr** %5, align 8
  %6 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  %7 = icmp eq %struct._T_tstr* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct._T_tstr*, %struct._T_tstr** %4, align 8
  store %struct._T_tstr* %9, %struct._T_tstr** %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  %12 = icmp eq %struct._T_tstr* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct._T_tstr*, %struct._T_tstr** %5, align 8
  store %struct._T_tstr* %14, %struct._T_tstr** %3, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load %struct._T_tstr*, %struct._T_tstr** @_T_gtol, align 8
  store %struct._T_tstr* %16, %struct._T_tstr** %3, align 8
  br label %17

17:                                               ; preds = %15, %13, %8
  %18 = load %struct._T_tstr*, %struct._T_tstr** %3, align 8
  ret %struct._T_tstr* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @V_visual(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void (i8*, ...) bitcast (void (i8*)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0))
  %3 = load i32, i32* %2, align 4
  %4 = sub nsw i32 0, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @V_cleanup() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
