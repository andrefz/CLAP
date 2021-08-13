; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.errs = type { i16, [1 x i16] }
%struct.core = type { %struct.core*, %struct.core*, i16, i16, i16, [1 x i16] }
%struct.shifts = type { %struct.shifts*, i16, i16, [1 x i16] }
%struct.reductions = type { %struct.reductions*, i16, i16, [1 x i16] }
%struct.shorts = type { %struct.shorts*, i16 }
%struct.bucket = type { %struct.bucket*, %struct.bucket*, i8*, i8*, i16, i16, i16, i16, i8 }
%struct.symbol_list = type { %struct.symbol_list*, %struct.bucket*, %struct.bucket* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [25 x i8] c"bison: memory exhausted\0A\00", align 1
@itemset = common dso_local global i16* null, align 8
@itemsetend = common dso_local global i16* null, align 8
@rulesetsize = internal global i32 0, align 4
@ruleset = internal global i32* null, align 8
@fderives = internal global i32* null, align 8
@firsts = internal global i32* null, align 8
@varsetsize = internal global i32 0, align 4
@conflicts = common dso_local global i8* null, align 8
@err_table = common dso_local global %struct.errs** null, align 8
@any_conflicts = common dso_local global i8 0, align 1
@expected_conflicts = common dso_local global i32 0, align 4
@shiftset = internal global i32* null, align 8
@lookaheadset = internal global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.1.2 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"an error\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Conflict in state %d between rule %d and token %s resolved as %s.\0A\00", align 1
@src_total = internal global i32 0, align 4
@rrc_total = internal global i32 0, align 4
@src_count = internal global i32 0, align 4
@rrc_count = internal global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"%s contains\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" 1 shift/reduce conflict\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" %d shift/reduce conflicts\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" and\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c" 1 reduce/reduce conflict\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" %d reduce/reduce conflicts\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"State %d contains\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"    %-4s\09[reduce  %d  (%s)]\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"    %-4s\09reduce  %d  (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"    $default\09reduce  %d  (%s)\0A\00", align 1
@derives = common dso_local global i16** null, align 8
@finput = dso_local global %struct._IO_FILE* null, align 8
@foutput = dso_local global %struct._IO_FILE* null, align 8
@fdefines = dso_local global %struct._IO_FILE* null, align 8
@ftable = dso_local global %struct._IO_FILE* null, align 8
@fattrs = dso_local global %struct._IO_FILE* null, align 8
@fguard = dso_local global %struct._IO_FILE* null, align 8
@faction = dso_local global %struct._IO_FILE* null, align 8
@fparser = dso_local global %struct._IO_FILE* null, align 8
@fixed_outfiles = dso_local global i32 0, align 4
@spec_outfile = common dso_local global i8* null, align 8
@infile = common dso_local global i8* null, align 8
@outfile = common dso_local global i8* null, align 8
@defsfile = common dso_local global i8* null, align 8
@actfile = common dso_local global i8* null, align 8
@tmpattrsfile = common dso_local global i8* null, align 8
@tmptabfile = common dso_local global i8* null, align 8
@tabfile = common dso_local global i8* null, align 8
@attrsfile = common dso_local global i8* null, align 8
@guardfile = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"/tmp/b.\00", align 1
@.str.1.16 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.2.17 = private unnamed_addr constant [5 x i8] c".tab\00", align 1
@.str.3.18 = private unnamed_addr constant [5 x i8] c"_tab\00", align 1
@.str.4.19 = private unnamed_addr constant [4 x i8] c"y.y\00", align 1
@.str.5.20 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.6.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7.22 = private unnamed_addr constant [8 x i8] c".output\00", align 1
@.str.8.23 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.9.24 = private unnamed_addr constant [11 x i8] c"act.XXXXXX\00", align 1
@.str.10.25 = private unnamed_addr constant [13 x i8] c"attrs.XXXXXX\00", align 1
@.str.11.26 = private unnamed_addr constant [11 x i8] c"tab.XXXXXX\00", align 1
@.str.12.27 = private unnamed_addr constant [9 x i8] c".stype.h\00", align 1
@.str.13.28 = private unnamed_addr constant [9 x i8] c".guard.c\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bison: \00", align 1
@.str.14.31 = private unnamed_addr constant [12 x i8] c"BISON_HAIRY\00", align 1
@.str.15.32 = private unnamed_addr constant [11 x i8] c"parse.y.in\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@verboseflag = common dso_local global i32 0, align 4
@definesflag = common dso_local global i32 0, align 4
@debugflag = common dso_local global i32 0, align 4
@nolinesflag = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.1.38 = private unnamed_addr constant [8 x i8] c"yvdlto:\00", align 1
@.str.2.39 = private unnamed_addr constant [27 x i8] c"grammar file not specified\00", align 1
@.str.3.40 = private unnamed_addr constant [41 x i8] c"bison: warning: extra arguments ignored\0A\00", align 1
@optarg = dso_local global i8* null, align 8
@optind = dso_local global i32 0, align 4
@opterr = dso_local global i32 1, align 4
@last_nonopt = internal global i32 0, align 4
@first_nonopt = internal global i32 0, align 4
@nextchar = internal global i8* null, align 8
@ordering = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [20 x i8] c"_POSIX_OPTION_ORDER\00", align 1
@.str.1.48 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2.49 = private unnamed_addr constant [45 x i8] c"%s: unrecognized option, character code 0%o\0A\00", align 1
@.str.3.50 = private unnamed_addr constant [31 x i8] c"%s: unrecognized option `-%c'\0A\00", align 1
@.str.4.51 = private unnamed_addr constant [34 x i8] c"%s: no argument for `-%c' option\0A\00", align 1
@nitems = common dso_local global i32 0, align 4
@nrules = common dso_local global i32 0, align 4
@nsyms = common dso_local global i32 0, align 4
@ntokens = common dso_local global i32 0, align 4
@nvars = common dso_local global i32 0, align 4
@ritem = common dso_local global i16* null, align 8
@rlhs = common dso_local global i16* null, align 8
@rrhs = common dso_local global i16* null, align 8
@rprec = common dso_local global i16* null, align 8
@sprec = common dso_local global i16* null, align 8
@rassoc = common dso_local global i16* null, align 8
@sassoc = common dso_local global i16* null, align 8
@token_translations = common dso_local global i16* null, align 8
@rline = common dso_local global i16* null, align 8
@start_symbol = common dso_local global i32 0, align 4
@translations = common dso_local global i32 0, align 4
@max_user_token_number = common dso_local global i32 0, align 4
@semantic_parser = common dso_local global i32 0, align 4
@pure_parser = common dso_local global i32 0, align 4
@error_token_number = common dso_local global i32 0, align 4
@tokensetsize = common dso_local global i32 0, align 4
@state_table = common dso_local global %struct.core** null, align 8
@accessing_symbol = common dso_local global i16* null, align 8
@shift_table = common dso_local global %struct.shifts** null, align 8
@reduction_table = common dso_local global %struct.reductions** null, align 8
@consistent = common dso_local global i8* null, align 8
@lookaheads = common dso_local global i16* null, align 8
@LA = common dso_local global i32* null, align 8
@LAruleno = common dso_local global i16* null, align 8
@goto_map = common dso_local global i16* null, align 8
@from_state = common dso_local global i16* null, align 8
@to_state = common dso_local global i16* null, align 8
@lookback = internal global %struct.shorts** null, align 8
@F = internal global i32* null, align 8
@includes = internal global i16** null, align 8
@ngotos = internal global i32 0, align 4
@infinity = internal global i32 0, align 4
@INDEX = internal global i16* null, align 8
@VERTICES = internal global i16* null, align 8
@top = internal global i32 0, align 4
@R = internal global i16** null, align 8
@maxrhs = internal global i32 0, align 4
@.str.1.90 = private unnamed_addr constant [9 x i8] c"map_goto\00", align 1
@.str.2.91 = private unnamed_addr constant [18 x i8] c"add_lookback_edge\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"gotos\00", align 1
@symval = common dso_local global %struct.bucket* null, align 8
@token_buffer = common dso_local global [1025 x i8] zeroinitializer, align 16
@numval = common dso_local global i32 0, align 4
@unlexed = internal global i32 0, align 4
@.str.93 = private unnamed_addr constant [23 x i8] c"unexpected '/%c' found\00", align 1
@.str.1.94 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@unlexed_symval = internal global %struct.bucket* null, align 8
@.str.2.95 = private unnamed_addr constant [35 x i8] c"malformatted literal token '\\%03o'\00", align 1
@.str.3.96 = private unnamed_addr constant [28 x i8] c"invalid literal token '\\%c'\00", align 1
@.str.4.97 = private unnamed_addr constant [44 x i8] c"multicharacter literal tokens NOT supported\00", align 1
@.str.5.98 = private unnamed_addr constant [23 x i8] c"unterminated type name\00", align 1
@.str.6.99 = private unnamed_addr constant [28 x i8] c"type name too long (%d max)\00", align 1
@.str.7.100 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.8.101 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.9.102 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@.str.10.103 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11.104 = private unnamed_addr constant [6 x i8] c"guard\00", align 1
@.str.12.105 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.13.106 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@.str.14.107 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.15.108 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.16.109 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.17.110 = private unnamed_addr constant [9 x i8] c"nonassoc\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"semantic_parser\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"pure_parser\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"prec\00", align 1
@nstates = common dso_local global i32 0, align 4
@first_state = common dso_local global %struct.core* null, align 8
@first_shift = common dso_local global %struct.shifts* null, align 8
@first_reduction = common dso_local global %struct.reductions* null, align 8
@final_state = common dso_local global i32 0, align 4
@kernel_base = internal global i16** null, align 8
@kernel_items = internal global i16* null, align 8
@shift_symbol = internal global i16* null, align 8
@kernel_end = internal global i16** null, align 8
@shiftset.119 = internal global i16* null, align 8
@redset = internal global i16* null, align 8
@state_table.120 = internal global %struct.core** null, align 8
@this_state = internal global %struct.core* null, align 8
@nshifts = internal global i32 0, align 4
@last_shift = internal global %struct.shifts* null, align 8
@last_state = internal global %struct.core* null, align 8
@.str.121 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@last_reduction = internal global %struct.reductions* null, align 8
@failure = common dso_local global i32 0, align 4
@.str.124 = private unnamed_addr constant [17 x i8] c"fatal error: %s\0A\00", align 1
@.str.1.125 = private unnamed_addr constant [19 x i8] c"\22%s\22, line %d: %s\0A\00", align 1
@.str.2.130 = private unnamed_addr constant [34 x i8] c"limit of %d exceeded, too many %s\00", align 1
@.str.3.133 = private unnamed_addr constant [20 x i8] c"internal error, %s\0A\00", align 1
@nullable = common dso_local global i8* null, align 8
@.str.138 = private unnamed_addr constant [248 x i8] c"\0A#include \22%s\22\0Aextern int yyerror;\0Aextern int yycost;\0Aextern char * yymsg;\0Aextern YYSTYPE yyval;\0A\0Ayyguard(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  yyerror = 0;\0Ayycost = 0;\0A  yymsg = 0;\0Aswitch (n)\0A    {\00", align 1
@.str.1.139 = private unnamed_addr constant [164 x i8] c"\0A#include \22%s\22\0Aextern YYSTYPE yyval;\0Aextern int yychar;yyaction(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  switch (n)\0A{\00", align 1
@.str.2.140 = private unnamed_addr constant [19 x i8] c"\0A  switch (yyn) {\0A\00", align 1
@.str.3.141 = private unnamed_addr constant [10 x i8] c"\0A    }\0A}\0A\00", align 1
@.str.4.142 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@.str.5.145 = private unnamed_addr constant [17 x i8] c"#define YYDEBUG\0A\00", align 1
@.str.6.146 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.7.147 = private unnamed_addr constant [21 x i8] c"#include <stdio.h>\0A\0A\00", align 1
@.str.8.148 = private unnamed_addr constant [40 x i8] c"#ifndef __STDC__\0A#define const\0A#endif\0A\0A\00", align 1
@.str.47.150 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"#define YYIMPURE 1\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"#define YYPURE 1\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"#lin\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"#li\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"#l\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@nvectors = internal global i32 0, align 4
@froms = internal global i16** null, align 8
@tos = internal global i16** null, align 8
@tally = internal global i16* null, align 8
@width = internal global i16* null, align 8
@check = internal global i16* null, align 8
@.str.40 = private unnamed_addr constant [37 x i8] c"\0Astatic const short yycheck[] = {%6d\00", align 1
@high = internal global i32 0, align 4
@.str.12.151 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@.str.13.152 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A\0A#define\09YYLAST\09\09%d\0A\0A\00", align 1
@table = internal global i16* null, align 8
@.str.39 = private unnamed_addr constant [37 x i8] c"\0Astatic const short yytable[] = {%6d\00", align 1
@base = internal global i16* null, align 8
@.str.36 = private unnamed_addr constant [36 x i8] c"\0Astatic const short yypact[] = {%6d\00", align 1
@.str.37.153 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yypgoto[] = {%6d\00", align 1
@nentries = internal global i32 0, align 4
@pos = internal global i16* null, align 8
@lowzero = internal global i32 0, align 4
@order = internal global i16* null, align 8
@.str.34 = private unnamed_addr constant [12 x i8] c"pack_vector\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"maximum table size (%d) exceeded\00", align 1
@state_count = internal global i16* null, align 8
@.str.33 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yydefgoto[] = {%6d\00", align 1
@actrow = internal global i16* null, align 8
@.str.32 = private unnamed_addr constant [38 x i8] c"\0Astatic const short yydefact[] = {%6d\00", align 1
@.str.19.154 = private unnamed_addr constant [40 x i8] c"\0Astatic const short yyrline[] = {     0\00", align 1
@.str.20.155 = private unnamed_addr constant [51 x i8] c"\0A};\0A\0Astatic const char * const yytname[] = {     0\00", align 1
@.str.21.156 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yyr1[] = {     0\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yyr2[] = {     0\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%6d\0A};\0A\00", align 1
@.str.18.157 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yystos[] = {     0\00", align 1
@.str.15.158 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yyprhs[] = {     0\00", align 1
@.str.16.159 = private unnamed_addr constant [39 x i8] c"\0A};\0A\0Astatic const short yyrhs[] = {%6d\00", align 1
@.str.17.160 = private unnamed_addr constant [7 x i8] c"     0\00", align 1
@.str.9.161 = private unnamed_addr constant [69 x i8] c"\0A#define YYTRANSLATE(x) ((unsigned)(x) <= %d ? yytranslate[x] : %d)\0A\00", align 1
@.str.10.162 = private unnamed_addr constant [43 x i8] c"\0Astatic const char yytranslate[] = {     0\00", align 1
@.str.11.163 = private unnamed_addr constant [44 x i8] c"\0Astatic const short yytranslate[] = {     0\00", align 1
@.str.14.164 = private unnamed_addr constant [29 x i8] c"\0A#define YYTRANSLATE(x) (x)\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A\0A#define\09YYFINAL\09\09%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"#define\09YYFLAG\09\09%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"#define\09YYNTBASE\09%d\0A\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"\0A\0Atoken types:\0A\00", align 1
@.str.2.170 = private unnamed_addr constant [13 x i8] c"\0A\0Astate %d\0A\0A\00", align 1
@.str.7.171 = private unnamed_addr constant [16 x i8] c"    NO ACTIONS\0A\00", align 1
@.str.8.172 = private unnamed_addr constant [20 x i8] c"    %-4s\09shift  %d\0A\00", align 1
@.str.9.173 = private unnamed_addr constant [33 x i8] c"    %-4s\09error (nonassociative)\0A\00", align 1
@.str.10.174 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.11.175 = private unnamed_addr constant [19 x i8] c"    %-4s\09goto  %d\0A\00", align 1
@.str.3.176 = private unnamed_addr constant [13 x i8] c"    %s  ->  \00", align 1
@.str.4.177 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5.178 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6.179 = private unnamed_addr constant [8 x i8] c"   (%d)\00", align 1
@.str.1.180 = private unnamed_addr constant [16 x i8] c" type %d is %s\0A\00", align 1
@start_flag = common dso_local global i32 0, align 4
@startval = common dso_local global %struct.bucket* null, align 8
@rline_allocated = common dso_local global i32 0, align 4
@grammar = common dso_local global %struct.symbol_list* null, align 8
@lineno = common dso_local global i32 0, align 4
@tags = common dso_local global i8** null, align 8
@typed = internal global i32 0, align 4
@lastprec = internal global i32 0, align 4
@gensym_count = internal global i32 0, align 4
@yylsp_needed = internal global i32 0, align 4
@.str.187 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errtoken = internal global %struct.bucket* null, align 8
@.str.1.188 = private unnamed_addr constant [10 x i8] c"$illegal.\00", align 1
@.str.2.190 = private unnamed_addr constant [40 x i8] c"\0A/*  A Bison parser, made from %s  */\0A\0A\00", align 1
@.str.3.191 = private unnamed_addr constant [23 x i8] c"#define YYLSP_NEEDED\0A\0A\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"tokens %s and %s both assigned number %d\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"the start symbol %s is undefined\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"the start symbol %s is a token\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"#define\09NT%s\09%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"#define\09%s\09%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"#define\09T%s\09%d\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"ill-formed rule\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"grammar starts with vertical bar\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"rule given for %s, which is a token\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"%guard present but %semantic_parser not specified\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"two actions at end of one rule\00", align 1
@.str.56 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [60 x i8] c"%s:%d:  warning:  type clash ('%s' '%s') on default action\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.5.192 = private unnamed_addr constant [17 x i8] c"no input grammar\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"#ifndef YYSTYPE\0A#define YYSTYPE int\0A#endif\0A\00", align 1
@.str.59 = private unnamed_addr constant [59 x i8] c"symbol %s used, not defined as token, and no rules for it\0A\00", align 1
@.str.14.193 = private unnamed_addr constant [29 x i8] c"multiple %start declarations\00", align 1
@.str.15.194 = private unnamed_addr constant [27 x i8] c"invalid %start declaration\00", align 1
@.str.20.195 = private unnamed_addr constant [29 x i8] c"multiple %union declarations\00", align 1
@.str.21.196 = private unnamed_addr constant [16 x i8] c"\0A#line %d \22%s\22\0A\00", align 1
@.str.22.197 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23.198 = private unnamed_addr constant [14 x i8] c"typedef union\00", align 1
@.str.24.199 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.25.200 = private unnamed_addr constant [11 x i8] c" YYSTYPE;\0A\00", align 1
@.str.16.201 = private unnamed_addr constant [29 x i8] c"ill-formed %type declaration\00", align 1
@.str.12.202 = private unnamed_addr constant [26 x i8] c"type redeclaration for %s\00", align 1
@.str.11.203 = private unnamed_addr constant [20 x i8] c"symbol %s redefined\00", align 1
@.str.13.204 = private unnamed_addr constant [45 x i8] c"invalid text in %token or %nterm declaration\00", align 1
@.str.35.205 = private unnamed_addr constant [11 x i8] c"\0Acase %d:\0A\00", align 1
@.str.7.206 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@.str.36.207 = private unnamed_addr constant [28 x i8] c"unmatched right brace ('}')\00", align 1
@.str.8.208 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.37.209 = private unnamed_addr constant [6 x i8] c"yyval\00", align 1
@.str.38.210 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@.str.39.211 = private unnamed_addr constant [52 x i8] c"%s:%d:  warning:  $$ of '%s' has no declared type.\0A\00", align 1
@.str.40.212 = private unnamed_addr constant [15 x i8] c"yyp->yyvsp[%d]\00", align 1
@.str.41.213 = private unnamed_addr constant [53 x i8] c"%s:%d:  warning:  $%d of '%s' has no declared type.\0A\00", align 1
@.str.42.214 = private unnamed_addr constant [15 x i8] c"$%c is invalid\00", align 1
@.str.43.215 = private unnamed_addr constant [15 x i8] c"@%c is invalid\00", align 1
@.str.44.216 = private unnamed_addr constant [15 x i8] c"yyp->yylsp[%d]\00", align 1
@.str.45.217 = private unnamed_addr constant [27 x i8] c"unterminated %guard clause\00", align 1
@.str.46.218 = private unnamed_addr constant [14 x i8] c";\0A    break;}\00", align 1
@get_type_name.msg = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34.219, i32 0, i32 0), align 8
@.str.34.219 = private unnamed_addr constant [16 x i8] c"invalid $ value\00", align 1
@.str.47.220 = private unnamed_addr constant [20 x i8] c"invalid @-construct\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"unmatched '{'\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"@%d\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"bison: memory exhausted\0A\00", align 1
@.str.26.221 = private unnamed_addr constant [189 x i8] c"\0A#ifndef YYLTYPE\0Atypedef\0A  struct yyltype\0A    {\0A      int first_line;\0A      int first_column;\0A      int last_line;\0A      int last_column;\0A    }\0A  yyltype;\0A\0A#define YYLTYPE yyltype\0A#endif\0A\0A\00", align 1
@.str.27.222 = private unnamed_addr constant [32 x i8] c"#define\09YYACCEPT\09goto yyaccept\0A\00", align 1
@.str.28.223 = private unnamed_addr constant [30 x i8] c"#define\09YYABORT\09goto yyabort\0A\00", align 1
@.str.29.224 = private unnamed_addr constant [31 x i8] c"#define\09YYERROR\09goto yyerrlab\0A\00", align 1
@.str.30.225 = private unnamed_addr constant [50 x i8] c"#define\09yytext\09(*_yytext)\0Aextern char **_yytext;\0A\00", align 1
@.str.31.226 = private unnamed_addr constant [52 x i8] c"#define\09yylval\09(*_yylval)\0Aextern YYSTYPE *_yylval;\0A\00", align 1
@.str.32.227 = private unnamed_addr constant [52 x i8] c"#define\09yylloc\09(*_yylloc)\0Aextern YYLTYPE *_yylloc;\0A\00", align 1
@.str.33.228 = private unnamed_addr constant [51 x i8] c"#define\09yyppval\09(*_yyppval)\0Aextern int *_yyppval;\0A\00", align 1
@.str.4.229 = private unnamed_addr constant [35 x i8] c"junk after % in definition section\00", align 1
@.str.6.230 = private unnamed_addr constant [46 x i8] c"Unrecognized char '%c' in declaration section\00", align 1
@.str.18.231 = private unnamed_addr constant [40 x i8] c"invalid text in association declaration\00", align 1
@.str.19.232 = private unnamed_addr constant [37 x i8] c"malformatted association declaration\00", align 1
@.str.17.233 = private unnamed_addr constant [26 x i8] c"invalid %type declaration\00", align 1
@.str.9.234 = private unnamed_addr constant [38 x i8] c"unterminated comment in %{ definition\00", align 1
@.str.10.235 = private unnamed_addr constant [27 x i8] c"unterminated %{ definition\00", align 1
@symtab = common dso_local global %struct.bucket** null, align 8
@firstsymbol = common dso_local global %struct.bucket* null, align 8
@lastsymbol = common dso_local global %struct.bucket* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @mallocate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 %5, i64 1) #7
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  call void @done(i32 1)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i8*, i8** %3, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_closure(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 2
  %6 = trunc i64 %5 to i32
  %7 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %6)
  %8 = bitcast i8* %7 to i16*
  store i16* %8, i16** @itemset, align 8
  %9 = load i32, i32* @nrules, align 4
  %10 = add nsw i32 %9, 1
  %11 = add nsw i32 %10, 31
  %12 = sdiv i32 %11, 32
  store i32 %12, i32* @rulesetsize, align 4
  %13 = load i32, i32* @rulesetsize, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** @ruleset, align 8
  call void @set_fderives()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_fderives() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @nvars, align 4
  %10 = load i32, i32* @rulesetsize, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* @ntokens, align 4
  %18 = load i32, i32* @rulesetsize, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32* %22, i32** @fderives, align 8
  call void @set_firsts()
  %23 = load i32*, i32** @fderives, align 8
  %24 = load i32, i32* @ntokens, align 4
  %25 = load i32, i32* @rulesetsize, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %1, align 8
  %29 = load i32, i32* @ntokens, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %107, %0
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @nsyms, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %110

34:                                               ; preds = %30
  %35 = load i32*, i32** @firsts, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ntokens, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* @varsetsize, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  store i32* %42, i32** %2, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %2, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %4, align 4
  %46 = load i32, i32* @ntokens, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %95, %34
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @nsyms, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %98

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i16**, i16*** @derives, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16*, i16** %57, i64 %59
  %61 = load i16*, i16** %60, align 8
  store i16* %61, i16** %6, align 8
  br label %62

62:                                               ; preds = %68, %56
  %63 = load i16*, i16** %6, align 8
  %64 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %64, i16** %6, align 8
  %65 = load i16, i16* %63, align 2
  %66 = sext i16 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 31
  %71 = shl i32 1, %70
  %72 = load i32*, i32** %1, align 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 5
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  br label %62

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* @nsyms, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %2, align 8
  %93 = load i32, i32* %91, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %85, %80
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %47

98:                                               ; preds = %47
  %99 = load i32, i32* @varsetsize, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %2, align 8
  %103 = load i32, i32* @rulesetsize, align 4
  %104 = load i32*, i32** %1, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %1, align 8
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %30

110:                                              ; preds = %30
  %111 = load i32*, i32** @firsts, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** @firsts, align 8
  %115 = bitcast i32* %114 to i8*
  call void @free(i8* %115) #7
  br label %116

116:                                              ; preds = %113, %110
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_firsts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @nvars, align 4
  %7 = add nsw i32 %6, 31
  %8 = sdiv i32 %7, 32
  store i32 %8, i32* %4, align 4
  store i32 %8, i32* @varsetsize, align 4
  %9 = load i32, i32* @nvars, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** @firsts, align 8
  %17 = load i32*, i32** @firsts, align 8
  store i32* %17, i32** %1, align 8
  %18 = load i32, i32* @ntokens, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %70, %0
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @nsyms, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i16**, i16*** @derives, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16*, i16** %24, i64 %26
  %28 = load i16*, i16** %27, align 8
  store i16* %28, i16** %3, align 8
  br label %29

29:                                               ; preds = %64, %23
  %30 = load i16*, i16** %3, align 8
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load i16*, i16** @ritem, align 8
  %36 = load i16*, i16** @rrhs, align 8
  %37 = load i16*, i16** %3, align 8
  %38 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %38, i16** %3, align 8
  %39 = load i16, i16* %37, align 2
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i16, i16* %36, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds i16, i16* %35, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @ntokens, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %34
  %51 = load i32, i32* @ntokens, align 4
  %52 = load i32, i32* %2, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 31
  %56 = shl i32 1, %55
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* %2, align 4
  %59 = ashr i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %56
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %50, %34
  br label %29

65:                                               ; preds = %29
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %1, align 8
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %19

73:                                               ; preds = %19
  %74 = load i32*, i32** @firsts, align 8
  %75 = load i32, i32* @nvars, align 4
  call void @RTC(i32* %74, i32 %75)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @closure(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32*, i32** @ruleset, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** @ruleset, align 8
  %17 = load i32, i32* @rulesetsize, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %12, align 8
  %20 = load i16*, i16** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  store i16* %23, i16** %11, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load i32*, i32** @fderives, align 8
  %28 = load i32, i32* @start_symbol, align 4
  %29 = load i32, i32* @rulesetsize, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %9, align 8
  br label %33

33:                                               ; preds = %37, %26
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %33

43:                                               ; preds = %33
  br label %93

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ult i32* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %10, align 8
  store i32 0, i32* %50, align 4
  br label %45

52:                                               ; preds = %45
  %53 = load i16*, i16** %3, align 8
  store i16* %53, i16** %8, align 8
  br label %54

54:                                               ; preds = %91, %52
  %55 = load i16*, i16** %8, align 8
  %56 = load i16*, i16** %11, align 8
  %57 = icmp ult i16* %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i16*, i16** @ritem, align 8
  %60 = load i16*, i16** %8, align 8
  %61 = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %61, i16** %8, align 8
  %62 = load i16, i16* %60, align 2
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds i16, i16* %59, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @ntokens, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %58
  %71 = load i32*, i32** @fderives, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @rulesetsize, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32* %76, i32** %9, align 8
  %77 = load i32*, i32** @ruleset, align 8
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %82, %70
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ult i32* %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %9, align 8
  %85 = load i32, i32* %83, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* %86, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %86, align 4
  br label %78

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %58
  br label %54

92:                                               ; preds = %54
  br label %93

93:                                               ; preds = %92, %43
  store i32 0, i32* %5, align 4
  %94 = load i16*, i16** @itemset, align 8
  store i16* %94, i16** @itemsetend, align 8
  %95 = load i16*, i16** %3, align 8
  store i16* %95, i16** %8, align 8
  %96 = load i32*, i32** @ruleset, align 8
  store i32* %96, i32** %10, align 8
  br label %97

97:                                               ; preds = %155, %93
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = icmp ult i32* %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %10, align 8
  %104 = load i32, i32* %102, align 4
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 32
  store i32 %109, i32* %5, align 4
  br label %155

110:                                              ; preds = %101
  store i32 1, i32* %7, align 4
  br label %111

111:                                              ; preds = %149, %110
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %114
  %120 = load i16*, i16** @rrhs, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %120, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = sext i16 %124 to i32
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %138, %119
  %127 = load i16*, i16** %8, align 8
  %128 = load i16*, i16** %11, align 8
  %129 = icmp ult i16* %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i16*, i16** %8, align 8
  %132 = load i16, i16* %131, align 2
  %133 = sext i16 %132 to i32
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi i1 [ false, %126 ], [ %135, %130 ]
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = load i16*, i16** %8, align 8
  %140 = getelementptr inbounds i16, i16* %139, i32 1
  store i16* %140, i16** %8, align 8
  %141 = load i16, i16* %139, align 2
  %142 = load i16*, i16** @itemsetend, align 8
  %143 = getelementptr inbounds i16, i16* %142, i32 1
  store i16* %143, i16** @itemsetend, align 8
  store i16 %141, i16* %142, align 2
  br label %126

144:                                              ; preds = %136
  %145 = load i32, i32* %14, align 4
  %146 = trunc i32 %145 to i16
  %147 = load i16*, i16** @itemsetend, align 8
  %148 = getelementptr inbounds i16, i16* %147, i32 1
  store i16* %148, i16** @itemsetend, align 8
  store i16 %146, i16* %147, align 2
  br label %149

149:                                              ; preds = %144, %114
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 %150, 1
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %111

154:                                              ; preds = %111
  br label %155

155:                                              ; preds = %154, %107
  br label %97

156:                                              ; preds = %97
  br label %157

157:                                              ; preds = %161, %156
  %158 = load i16*, i16** %8, align 8
  %159 = load i16*, i16** %11, align 8
  %160 = icmp ult i16* %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i16*, i16** %8, align 8
  %163 = getelementptr inbounds i16, i16* %162, i32 1
  store i16* %163, i16** %8, align 8
  %164 = load i16, i16* %162, align 2
  %165 = load i16*, i16** @itemsetend, align 8
  %166 = getelementptr inbounds i16, i16* %165, i32 1
  store i16* %166, i16** @itemsetend, align 8
  store i16 %164, i16* %165, align 2
  br label %157

167:                                              ; preds = %157
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @finalize_closure() #0 {
  %1 = load i16*, i16** @itemset, align 8
  %2 = icmp ne i16* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i16*, i16** @itemset, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #7
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32*, i32** @ruleset, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @ruleset, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #7
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** @fderives, align 8
  %14 = load i32, i32* @ntokens, align 4
  %15 = load i32, i32* @rulesetsize, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load i32*, i32** @fderives, align 8
  %22 = load i32, i32* @ntokens, align 4
  %23 = load i32, i32* @rulesetsize, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27) #7
  br label %28

28:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_conflicts() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @nstates, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 1
  %5 = trunc i64 %4 to i32
  %6 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %5)
  store i8* %6, i8** @conflicts, align 8
  %7 = load i32, i32* @tokensetsize, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %10)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @shiftset, align 8
  %13 = load i32, i32* @tokensetsize, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** @lookaheadset, align 8
  %19 = load i32, i32* @nstates, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %22)
  %24 = bitcast i8* %23 to %struct.errs**
  store %struct.errs** %24, %struct.errs*** @err_table, align 8
  store i8 0, i8* @any_conflicts, align 1
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %31, %0
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @nstates, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  call void @set_conflicts(i32 %30)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %25

34:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_conflicts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.shifts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i8*, i8** @consistent, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %201

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %28, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @tokensetsize, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32*, i32** @lookaheadset, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %19

31:                                               ; preds = %19
  %32 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.shifts*, %struct.shifts** %32, i64 %34
  %36 = load %struct.shifts*, %struct.shifts** %35, align 8
  store %struct.shifts* %36, %struct.shifts** %5, align 8
  %37 = load %struct.shifts*, %struct.shifts** %5, align 8
  %38 = icmp ne %struct.shifts* %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %31
  %40 = load %struct.shifts*, %struct.shifts** %5, align 8
  %41 = getelementptr inbounds %struct.shifts, %struct.shifts* %40, i32 0, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i32
  store i32 %43, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %75, %39
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load i16*, i16** @accessing_symbol, align 8
  %50 = load %struct.shifts*, %struct.shifts** %5, align 8
  %51 = getelementptr inbounds %struct.shifts, %struct.shifts* %50, i32 0, i32 3
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1 x i16], [1 x i16]* %51, i64 0, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds i16, i16* %49, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @ntokens, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %78

64:                                               ; preds = %48
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 31
  %67 = shl i32 1, %66
  %68 = load i32*, i32** @lookaheadset, align 8
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 5
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %67
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %44

78:                                               ; preds = %63, %44
  br label %79

79:                                               ; preds = %78, %31
  %80 = load i16*, i16** @lookaheads, align 8
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %80, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i32*, i32** @lookaheadset, align 8
  %88 = load i32, i32* @tokensetsize, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32* %90, i32** %8, align 8
  %91 = load i16*, i16** @lookaheads, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %91, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %140, %79
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %143

101:                                              ; preds = %97
  %102 = load i16*, i16** @rprec, align 8
  %103 = load i16*, i16** @LAruleno, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %103, i64 %105
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds i16, i16* %102, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = icmp ne i16 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %101
  %113 = load i32*, i32** @LA, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @tokensetsize, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  store i32* %118, i32** %9, align 8
  %119 = load i32*, i32** %9, align 8
  store i32* %119, i32** %6, align 8
  %120 = load i32*, i32** @lookaheadset, align 8
  store i32* %120, i32** %7, align 8
  br label %121

121:                                              ; preds = %137, %112
  %122 = load i32*, i32** %7, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = icmp ult i32* %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %6, align 8
  %128 = load i32, i32* %126, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %7, align 8
  %131 = load i32, i32* %129, align 4
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* %2, align 4
  %136 = load i32, i32* %3, align 4
  call void @resolve_sr_conflict(i32 %135, i32 %136)
  br label %138

137:                                              ; preds = %125
  br label %121

138:                                              ; preds = %134, %121
  br label %139

139:                                              ; preds = %138, %101
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %97

143:                                              ; preds = %97
  %144 = load i16*, i16** @lookaheads, align 8
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i16, i16* %144, i64 %146
  %148 = load i16, i16* %147, align 2
  %149 = sext i16 %148 to i32
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %198, %143
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %201

154:                                              ; preds = %150
  %155 = load i32*, i32** @LA, align 8
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @tokensetsize, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  store i32* %160, i32** %9, align 8
  %161 = load i32*, i32** %9, align 8
  store i32* %161, i32** %6, align 8
  %162 = load i32*, i32** @lookaheadset, align 8
  store i32* %162, i32** %7, align 8
  br label %163

163:                                              ; preds = %181, %154
  %164 = load i32*, i32** %7, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = icmp ult i32* %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %6, align 8
  %170 = load i32, i32* %168, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %7, align 8
  %173 = load i32, i32* %171, align 4
  %174 = and i32 %170, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = load i8*, i8** @conflicts, align 8
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 1, i8* %180, align 1
  store i8 1, i8* @any_conflicts, align 1
  br label %181

181:                                              ; preds = %176, %167
  br label %163

182:                                              ; preds = %163
  %183 = load i32*, i32** %9, align 8
  store i32* %183, i32** %6, align 8
  %184 = load i32*, i32** @lookaheadset, align 8
  store i32* %184, i32** %7, align 8
  br label %185

185:                                              ; preds = %189, %182
  %186 = load i32*, i32** %7, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = icmp ult i32* %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = load i32*, i32** %6, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %6, align 8
  %192 = load i32, i32* %190, align 4
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %7, align 8
  %195 = load i32, i32* %193, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %193, align 4
  br label %185

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %150

201:                                              ; preds = %150, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @resolve_sr_conflict(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.errs*, align 8
  %11 = alloca i16*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @ntokens, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 2
  %15 = add i64 4, %14
  %16 = call noalias i8* @malloc(i64 %15) #7
  %17 = bitcast i8* %16 to %struct.errs*
  store %struct.errs* %17, %struct.errs** %10, align 8
  %18 = load %struct.errs*, %struct.errs** %10, align 8
  %19 = getelementptr inbounds %struct.errs, %struct.errs* %18, i32 0, i32 1
  %20 = getelementptr inbounds [1 x i16], [1 x i16]* %19, i64 0, i64 0
  store i16* %20, i16** %11, align 8
  %21 = load i16*, i16** @rprec, align 8
  %22 = load i16*, i16** @LAruleno, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %22, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i64
  %28 = getelementptr inbounds i16, i16* %21, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  store i32 %30, i32* %9, align 4
  store i32 1, i32* %6, align 4
  %31 = load i32*, i32** @LA, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @tokensetsize, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** @lookaheadset, align 8
  store i32* %37, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %193, %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ntokens, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %196

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %43, %45
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %182

51:                                               ; preds = %42
  %52 = load i16*, i16** @sprec, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %182

59:                                               ; preds = %51
  %60 = load i16*, i16** @sprec, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = load i32, i32* @verboseflag, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  call void @log_resolution(i32 %72, i32 %73, i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %6, align 4
  %77 = xor i32 %76, -1
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %5, align 4
  call void @flush_shift(i32 %81, i32 %82)
  br label %181

83:                                               ; preds = %59
  %84 = load i16*, i16** @sprec, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %84, i64 %86
  %88 = load i16, i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %83
  %93 = load i32, i32* @verboseflag, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  call void @log_resolution(i32 %96, i32 %97, i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %6, align 4
  %101 = xor i32 %100, -1
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %180

105:                                              ; preds = %83
  %106 = load i16*, i16** @sassoc, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %106, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i32
  switch i32 %111, label %136 [
    i32 1, label %112
    i32 2, label %120
    i32 3, label %128
  ]

112:                                              ; preds = %105
  %113 = load i32, i32* @verboseflag, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  call void @log_resolution(i32 %116, i32 %117, i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %112
  br label %136

120:                                              ; preds = %105
  %121 = load i32, i32* @verboseflag, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %5, align 4
  call void @log_resolution(i32 %124, i32 %125, i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %120
  br label %136

128:                                              ; preds = %105
  %129 = load i32, i32* @verboseflag, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %5, align 4
  call void @log_resolution(i32 %132, i32 %133, i32 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %127, %119, %105
  %137 = load i16*, i16** @sassoc, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %137, i64 %139
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i32
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  %146 = xor i32 %145, -1
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %5, align 4
  call void @flush_shift(i32 %150, i32 %151)
  br label %152

152:                                              ; preds = %144, %136
  %153 = load i16*, i16** @sassoc, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i16, i16* %153, i64 %155
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = icmp ne i32 %158, 2
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  %162 = xor i32 %161, -1
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %162
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %152
  %167 = load i16*, i16** @sassoc, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %167, i64 %169
  %171 = load i16, i16* %170, align 2
  %172 = sext i16 %171 to i32
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load i32, i32* %5, align 4
  %176 = trunc i32 %175 to i16
  %177 = load i16*, i16** %11, align 8
  %178 = getelementptr inbounds i16, i16* %177, i32 1
  store i16* %178, i16** %11, align 8
  store i16 %176, i16* %177, align 2
  br label %179

179:                                              ; preds = %174, %166
  br label %180

180:                                              ; preds = %179, %99
  br label %181

181:                                              ; preds = %180, %75
  br label %182

182:                                              ; preds = %181, %51, %42
  %183 = load i32, i32* %6, align 4
  %184 = shl i32 %183, 1
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  store i32 1, i32* %6, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %8, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %7, align 8
  br label %192

192:                                              ; preds = %187, %182
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %38

196:                                              ; preds = %38
  %197 = load i16*, i16** %11, align 8
  %198 = load %struct.errs*, %struct.errs** %10, align 8
  %199 = getelementptr inbounds %struct.errs, %struct.errs* %198, i32 0, i32 1
  %200 = getelementptr inbounds [1 x i16], [1 x i16]* %199, i64 0, i64 0
  %201 = ptrtoint i16* %197 to i64
  %202 = ptrtoint i16* %200 to i64
  %203 = sub i64 %201, %202
  %204 = sdiv exact i64 %203, 2
  %205 = trunc i64 %204 to i16
  %206 = load %struct.errs*, %struct.errs** %10, align 8
  %207 = getelementptr inbounds %struct.errs, %struct.errs* %206, i32 0, i32 0
  store i16 %205, i16* %207, align 2
  %208 = load %struct.errs*, %struct.errs** %10, align 8
  %209 = getelementptr inbounds %struct.errs, %struct.errs* %208, i32 0, i32 0
  %210 = load i16, i16* %209, align 2
  %211 = icmp ne i16 %210, 0
  br i1 %211, label %212, label %238

212:                                              ; preds = %196
  %213 = load i16*, i16** %11, align 8
  %214 = bitcast i16* %213 to i8*
  %215 = load %struct.errs*, %struct.errs** %10, align 8
  %216 = bitcast %struct.errs* %215 to i8*
  %217 = ptrtoint i8* %214 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %221)
  %223 = bitcast i8* %222 to %struct.errs*
  %224 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %225 = load i32, i32* %3, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.errs*, %struct.errs** %224, i64 %226
  store %struct.errs* %223, %struct.errs** %227, align 8
  %228 = load %struct.errs*, %struct.errs** %10, align 8
  %229 = bitcast %struct.errs* %228 to i8*
  %230 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.errs*, %struct.errs** %230, i64 %232
  %234 = load %struct.errs*, %struct.errs** %233, align 8
  %235 = bitcast %struct.errs* %234 to i8*
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  call void @bcopy(i8* %229, i8* %235, i64 %237) #7
  br label %243

238:                                              ; preds = %196
  %239 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.errs*, %struct.errs** %239, i64 %241
  store %struct.errs* null, %struct.errs** %242, align 8
  br label %243

243:                                              ; preds = %238, %212
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @log_resolution(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i16*, i16** @LAruleno, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %11, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  %17 = load i8**, i8*** @tags, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %10, i32 %16, i8* %21, i8* %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flush_shift(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.shifts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.shifts*, %struct.shifts** %8, i64 %10
  %12 = load %struct.shifts*, %struct.shifts** %11, align 8
  store %struct.shifts* %12, %struct.shifts** %5, align 8
  %13 = load %struct.shifts*, %struct.shifts** %5, align 8
  %14 = icmp ne %struct.shifts* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  %16 = load %struct.shifts*, %struct.shifts** %5, align 8
  %17 = getelementptr inbounds %struct.shifts, %struct.shifts* %16, i32 0, i32 2
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %54, %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load %struct.shifts*, %struct.shifts** %5, align 8
  %26 = getelementptr inbounds %struct.shifts, %struct.shifts* %25, i32 0, i32 3
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1 x i16], [1 x i16]* %26, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = load i16*, i16** @accessing_symbol, align 8
  %36 = load %struct.shifts*, %struct.shifts** %5, align 8
  %37 = getelementptr inbounds %struct.shifts, %struct.shifts* %36, i32 0, i32 3
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1 x i16], [1 x i16]* %37, i64 0, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds i16, i16* %35, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp eq i32 %34, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.shifts*, %struct.shifts** %5, align 8
  %49 = getelementptr inbounds %struct.shifts, %struct.shifts* %48, i32 0, i32 3
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1 x i16], [1 x i16]* %49, i64 0, i64 %51
  store i16 0, i16* %52, align 2
  br label %53

53:                                               ; preds = %47, %33, %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %20

57:                                               ; preds = %20
  br label %58

58:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @bcopy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @conflict_log() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @src_total, align 4
  store i32 0, i32* @rrc_total, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %23, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @nstates, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = load i8*, i8** @conflicts, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  call void @count_sr_conflicts(i32 %14)
  %15 = load i32, i32* %1, align 4
  call void @count_rr_conflicts(i32 %15)
  %16 = load i32, i32* @src_count, align 4
  %17 = load i32, i32* @src_total, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* @src_total, align 4
  %19 = load i32, i32* @rrc_count, align 4
  %20 = load i32, i32* @rrc_total, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* @rrc_total, align 4
  br label %22

22:                                               ; preds = %13, %6
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %2

26:                                               ; preds = %2
  call void @total_conflicts()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @count_sr_conflicts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.shifts*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @src_count, align 4
  %11 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.shifts*, %struct.shifts** %11, i64 %13
  %15 = load %struct.shifts*, %struct.shifts** %14, align 8
  store %struct.shifts* %15, %struct.shifts** %6, align 8
  %16 = load %struct.shifts*, %struct.shifts** %6, align 8
  %17 = icmp ne %struct.shifts* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %172

19:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @tokensetsize, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32*, i32** @shiftset, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** @lookaheadset, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.shifts*, %struct.shifts** %6, align 8
  %38 = getelementptr inbounds %struct.shifts, %struct.shifts* %37, i32 0, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  store i32 %40, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %81, %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = load %struct.shifts*, %struct.shifts** %6, align 8
  %47 = getelementptr inbounds %struct.shifts, %struct.shifts* %46, i32 0, i32 3
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1 x i16], [1 x i16]* %47, i64 0, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = icmp ne i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %81

54:                                               ; preds = %45
  %55 = load i16*, i16** @accessing_symbol, align 8
  %56 = load %struct.shifts*, %struct.shifts** %6, align 8
  %57 = getelementptr inbounds %struct.shifts, %struct.shifts* %56, i32 0, i32 3
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1 x i16], [1 x i16]* %57, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds i16, i16* %55, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ntokens, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %84

70:                                               ; preds = %54
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 31
  %73 = shl i32 1, %72
  %74 = load i32*, i32** @shiftset, align 8
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %73
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %70, %53
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %41

84:                                               ; preds = %69, %41
  %85 = load i16*, i16** @lookaheads, align 8
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %85, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i32
  store i32 %91, i32* %4, align 4
  %92 = load i32*, i32** @lookaheadset, align 8
  %93 = load i32, i32* @tokensetsize, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32* %95, i32** %9, align 8
  %96 = load i16*, i16** @lookaheads, align 8
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %96, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %127, %84
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = load i32*, i32** @LA, align 8
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @tokensetsize, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  store i32* %112, i32** %7, align 8
  %113 = load i32*, i32** @lookaheadset, align 8
  store i32* %113, i32** %8, align 8
  br label %114

114:                                              ; preds = %118, %106
  %115 = load i32*, i32** %8, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = icmp ult i32* %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %7, align 8
  %121 = load i32, i32* %119, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %8, align 8
  %124 = load i32, i32* %122, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %122, align 4
  br label %114

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %102

130:                                              ; preds = %102
  %131 = load i32*, i32** @shiftset, align 8
  store i32* %131, i32** %7, align 8
  %132 = load i32*, i32** @lookaheadset, align 8
  store i32* %132, i32** %8, align 8
  br label %133

133:                                              ; preds = %137, %130
  %134 = load i32*, i32** %8, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ult i32* %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %7, align 8
  %140 = load i32, i32* %138, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %8, align 8
  %143 = load i32, i32* %141, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %141, align 4
  br label %133

145:                                              ; preds = %133
  store i32 1, i32* %5, align 4
  %146 = load i32*, i32** @lookaheadset, align 8
  store i32* %146, i32** %8, align 8
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %169, %145
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @ntokens, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* @src_count, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @src_count, align 4
  br label %160

160:                                              ; preds = %157, %151
  %161 = load i32, i32* %5, align 4
  %162 = shl i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  store i32 1, i32* %5, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %8, align 8
  br label %168

168:                                              ; preds = %165, %160
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %147

172:                                              ; preds = %147, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @count_rr_conflicts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @rrc_count, align 4
  %11 = load i16*, i16** @lookaheads, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %11, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i16*, i16** @lookaheads, align 8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %17, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %82

29:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %30 = load i32*, i32** @LA, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @tokensetsize, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %7, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %79, %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ntokens, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %8, align 8
  store i32 0, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %61, %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* @tokensetsize, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %8, align 8
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @rrc_count, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @rrc_count, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %7, align 8
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %36

82:                                               ; preds = %36, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @total_conflicts() #0 {
  %1 = load i32, i32* @src_total, align 4
  %2 = load i32, i32* @expected_conflicts, align 4
  %3 = icmp eq i32 %1, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @rrc_total, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %56

8:                                                ; preds = %4, %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 @fflush(%struct._IO_FILE* %9)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** @infile, align 8
  %13 = call i8* @mybasename(i8* %12)
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @src_total, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %28

20:                                               ; preds = %8
  %21 = load i32, i32* @src_total, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i32, i32* @src_total, align 4
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* @src_total, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @rrc_total, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31, %28
  %38 = load i32, i32* @rrc_total, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %51

43:                                               ; preds = %37
  %44 = load i32, i32* @rrc_total, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i32, i32* @rrc_total, align 4
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 @putc(i32 46, %struct._IO_FILE* %52)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 @putc(i32 10, %struct._IO_FILE* %54)
  br label %56

56:                                               ; preds = %51, %7
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @mybasename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strrchr(i8* %4, i32 47) #8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %10, %8 ], [ %12, %11 ]
  ret i8* %14
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @verbose_conflict_log() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @src_total, align 4
  store i32 0, i32* @rrc_total, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %67, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @nstates, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %70

6:                                                ; preds = %2
  %7 = load i8*, i8** @conflicts, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  call void @count_sr_conflicts(i32 %14)
  %15 = load i32, i32* %1, align 4
  call void @count_rr_conflicts(i32 %15)
  %16 = load i32, i32* @src_count, align 4
  %17 = load i32, i32* @src_total, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* @src_total, align 4
  %19 = load i32, i32* @rrc_count, align 4
  %20 = load i32, i32* @rrc_total, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* @rrc_total, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @src_count, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %38

30:                                               ; preds = %13
  %31 = load i32, i32* @src_count, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %35 = load i32, i32* @src_count, align 4
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* @src_count, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @rrc_count, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41, %38
  %48 = load i32, i32* @rrc_count, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %61

53:                                               ; preds = %47
  %54 = load i32, i32* @rrc_count, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %58 = load i32, i32* @rrc_count, align 4
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %63 = call i32 @putc(i32 46, %struct._IO_FILE* %62)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %65 = call i32 @putc(i32 10, %struct._IO_FILE* %64)
  br label %66

66:                                               ; preds = %61, %6
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %2

70:                                               ; preds = %2
  call void @total_conflicts()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_reductions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.shifts*, align 8
  %20 = alloca %struct.errs*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %32, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @tokensetsize, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32*, i32** @shiftset, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.shifts*, %struct.shifts** %36, i64 %38
  %40 = load %struct.shifts*, %struct.shifts** %39, align 8
  store %struct.shifts* %40, %struct.shifts** %19, align 8
  %41 = load %struct.shifts*, %struct.shifts** %19, align 8
  %42 = icmp ne %struct.shifts* %41, null
  br i1 %42, label %43, label %97

43:                                               ; preds = %35
  %44 = load %struct.shifts*, %struct.shifts** %19, align 8
  %45 = getelementptr inbounds %struct.shifts, %struct.shifts* %44, i32 0, i32 2
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  store i32 %47, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %93, %43
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %96

52:                                               ; preds = %48
  %53 = load %struct.shifts*, %struct.shifts** %19, align 8
  %54 = getelementptr inbounds %struct.shifts, %struct.shifts* %53, i32 0, i32 3
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1 x i16], [1 x i16]* %54, i64 0, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = icmp ne i16 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %93

61:                                               ; preds = %52
  %62 = load i16*, i16** @accessing_symbol, align 8
  %63 = load %struct.shifts*, %struct.shifts** %19, align 8
  %64 = getelementptr inbounds %struct.shifts, %struct.shifts* %63, i32 0, i32 3
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1 x i16], [1 x i16]* %64, i64 0, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i64
  %70 = getelementptr inbounds i16, i16* %62, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @ntokens, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %96

77:                                               ; preds = %61
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @error_token_number, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %21, align 4
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 31
  %85 = shl i32 1, %84
  %86 = load i32*, i32** @shiftset, align 8
  %87 = load i32, i32* %11, align 4
  %88 = ashr i32 %87, 5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %85
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %82, %60
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %48

96:                                               ; preds = %76, %48
  br label %97

97:                                               ; preds = %96, %35
  %98 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.errs*, %struct.errs** %98, i64 %100
  %102 = load %struct.errs*, %struct.errs** %101, align 8
  store %struct.errs* %102, %struct.errs** %20, align 8
  %103 = load %struct.errs*, %struct.errs** %20, align 8
  %104 = icmp ne %struct.errs* %103, null
  br i1 %104, label %105, label %145

105:                                              ; preds = %97
  %106 = load %struct.errs*, %struct.errs** %20, align 8
  %107 = getelementptr inbounds %struct.errs, %struct.errs* %106, i32 0, i32 0
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  store i32 %109, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %141, %105
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %144

114:                                              ; preds = %110
  %115 = load %struct.errs*, %struct.errs** %20, align 8
  %116 = getelementptr inbounds %struct.errs, %struct.errs* %115, i32 0, i32 1
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [1 x i16], [1 x i16]* %116, i64 0, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = icmp ne i16 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  br label %141

123:                                              ; preds = %114
  %124 = load %struct.errs*, %struct.errs** %20, align 8
  %125 = getelementptr inbounds %struct.errs, %struct.errs* %124, i32 0, i32 1
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [1 x i16], [1 x i16]* %125, i64 0, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 31
  %133 = shl i32 1, %132
  %134 = load i32*, i32** @shiftset, align 8
  %135 = load i32, i32* %11, align 4
  %136 = ashr i32 %135, 5
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %133
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %123, %122
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %110

144:                                              ; preds = %110
  br label %145

145:                                              ; preds = %144, %97
  %146 = load i16*, i16** @lookaheads, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, i16* %146, i64 %148
  %150 = load i16, i16* %149, align 2
  %151 = sext i16 %150 to i32
  store i32 %151, i32* %13, align 4
  %152 = load i16*, i16** @lookaheads, align 8
  %153 = load i32, i32* %2, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i16, i16* %152, i64 %155
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %159, %160
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %254

163:                                              ; preds = %145
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %254, label %166

166:                                              ; preds = %163
  %167 = load i16*, i16** @LAruleno, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %167, i64 %169
  %171 = load i16, i16* %170, align 2
  %172 = sext i16 %171 to i32
  store i32 %172, i32* %16, align 4
  %173 = load i32*, i32** @LA, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @tokensetsize, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  store i32* %178, i32** %6, align 8
  %179 = load i32*, i32** @shiftset, align 8
  store i32* %179, i32** %7, align 8
  %180 = load i32*, i32** @lookaheadset, align 8
  store i32* %180, i32** %8, align 8
  %181 = load i32*, i32** @lookaheadset, align 8
  %182 = load i32, i32* @tokensetsize, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32* %184, i32** %9, align 8
  br label %185

185:                                              ; preds = %189, %166
  %186 = load i32*, i32** %8, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = icmp ult i32* %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load i32*, i32** %6, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %6, align 8
  %192 = load i32, i32* %190, align 4
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %7, align 8
  %195 = load i32, i32* %193, align 4
  %196 = and i32 %192, %195
  %197 = load i32*, i32** %8, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %8, align 8
  store i32 %196, i32* %197, align 4
  br label %185

199:                                              ; preds = %185
  store i32 1, i32* %12, align 4
  %200 = load i32*, i32** @lookaheadset, align 8
  store i32* %200, i32** %8, align 8
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %238, %199
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* @ntokens, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %241

205:                                              ; preds = %201
  %206 = load i32, i32* %12, align 4
  %207 = load i32*, i32** %8, align 8
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %206, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %205
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %213 = load i8**, i8*** @tags, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* %16, align 4
  %219 = load i8**, i8*** @tags, align 8
  %220 = load i16*, i16** @rlhs, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i16, i16* %220, i64 %222
  %224 = load i16, i16* %223, align 2
  %225 = sext i16 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %219, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %217, i32 %218, i8* %227)
  br label %229

229:                                              ; preds = %211, %205
  %230 = load i32, i32* %12, align 4
  %231 = shl i32 %230, 1
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  store i32 1, i32* %12, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %8, align 8
  br label %237

237:                                              ; preds = %234, %229
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %3, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %3, align 4
  br label %201

241:                                              ; preds = %201
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %243 = load i32, i32* %16, align 4
  %244 = load i8**, i8*** @tags, align 8
  %245 = load i16*, i16** @rlhs, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i16, i16* %245, i64 %247
  %249 = load i16, i16* %248, align 2
  %250 = sext i16 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %244, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %243, i8* %252)
  br label %581

254:                                              ; preds = %163, %145
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %13, align 4
  %257 = sub nsw i32 %255, %256
  %258 = icmp sge i32 %257, 1
  br i1 %258, label %259, label %580

259:                                              ; preds = %254
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %15, align 4
  %260 = load i32*, i32** @lookaheadset, align 8
  %261 = load i32, i32* @tokensetsize, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32* %263, i32** %9, align 8
  %264 = load i32, i32* %21, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %356, label %266

266:                                              ; preds = %259
  %267 = load i32, i32* %13, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %352, %266
  %269 = load i32, i32* %3, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %355

272:                                              ; preds = %268
  %273 = load i32*, i32** @LA, align 8
  %274 = load i32, i32* %3, align 4
  %275 = load i32, i32* @tokensetsize, align 4
  %276 = mul nsw i32 %274, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %273, i64 %277
  store i32* %278, i32** %6, align 8
  %279 = load i32*, i32** @shiftset, align 8
  store i32* %279, i32** %7, align 8
  %280 = load i32*, i32** @lookaheadset, align 8
  store i32* %280, i32** %8, align 8
  br label %281

281:                                              ; preds = %285, %272
  %282 = load i32*, i32** %8, align 8
  %283 = load i32*, i32** %9, align 8
  %284 = icmp ult i32* %282, %283
  br i1 %284, label %285, label %296

285:                                              ; preds = %281
  %286 = load i32*, i32** %6, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %6, align 8
  %288 = load i32, i32* %286, align 4
  %289 = load i32*, i32** %7, align 8
  %290 = getelementptr inbounds i32, i32* %289, i32 1
  store i32* %290, i32** %7, align 8
  %291 = load i32, i32* %289, align 4
  %292 = xor i32 %291, -1
  %293 = and i32 %288, %292
  %294 = load i32*, i32** %8, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %8, align 8
  store i32 %293, i32* %294, align 4
  br label %281

296:                                              ; preds = %281
  store i32 0, i32* %18, align 4
  store i32 1, i32* %12, align 4
  %297 = load i32*, i32** @lookaheadset, align 8
  store i32* %297, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %298

298:                                              ; preds = %320, %296
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @ntokens, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %323

302:                                              ; preds = %298
  %303 = load i32, i32* %12, align 4
  %304 = load i32*, i32** %8, align 8
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %303, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %302
  %309 = load i32, i32* %18, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %18, align 4
  br label %311

311:                                              ; preds = %308, %302
  %312 = load i32, i32* %12, align 4
  %313 = shl i32 %312, 1
  store i32 %313, i32* %12, align 4
  %314 = load i32, i32* %12, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %311
  store i32 1, i32* %12, align 4
  %317 = load i32*, i32** %8, align 8
  %318 = getelementptr inbounds i32, i32* %317, i32 1
  store i32* %318, i32** %8, align 8
  br label %319

319:                                              ; preds = %316, %311
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %4, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %4, align 4
  br label %298

323:                                              ; preds = %298
  %324 = load i32, i32* %18, align 4
  %325 = load i32, i32* %17, align 4
  %326 = icmp sgt i32 %324, %325
  br i1 %326, label %327, label %336

327:                                              ; preds = %323
  %328 = load i32, i32* %18, align 4
  store i32 %328, i32* %17, align 4
  %329 = load i32, i32* %3, align 4
  store i32 %329, i32* %15, align 4
  %330 = load i16*, i16** @LAruleno, align 8
  %331 = load i32, i32* %3, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i16, i16* %330, i64 %332
  %334 = load i16, i16* %333, align 2
  %335 = sext i16 %334 to i32
  store i32 %335, i32* %16, align 4
  br label %336

336:                                              ; preds = %327, %323
  %337 = load i32*, i32** @shiftset, align 8
  store i32* %337, i32** %7, align 8
  %338 = load i32*, i32** @lookaheadset, align 8
  store i32* %338, i32** %8, align 8
  br label %339

339:                                              ; preds = %343, %336
  %340 = load i32*, i32** %8, align 8
  %341 = load i32*, i32** %9, align 8
  %342 = icmp ult i32* %340, %341
  br i1 %342, label %343, label %351

343:                                              ; preds = %339
  %344 = load i32*, i32** %8, align 8
  %345 = getelementptr inbounds i32, i32* %344, i32 1
  store i32* %345, i32** %8, align 8
  %346 = load i32, i32* %344, align 4
  %347 = load i32*, i32** %7, align 8
  %348 = getelementptr inbounds i32, i32* %347, i32 1
  store i32* %348, i32** %7, align 8
  %349 = load i32, i32* %347, align 4
  %350 = or i32 %349, %346
  store i32 %350, i32* %347, align 4
  br label %339

351:                                              ; preds = %339
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %3, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %3, align 4
  br label %268

355:                                              ; preds = %268
  br label %356

356:                                              ; preds = %355, %259
  store i32 0, i32* %3, align 4
  br label %357

357:                                              ; preds = %366, %356
  %358 = load i32, i32* %3, align 4
  %359 = load i32, i32* @tokensetsize, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %357
  %362 = load i32*, i32** @shiftset, align 8
  %363 = load i32, i32* %3, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  store i32 0, i32* %365, align 4
  br label %366

366:                                              ; preds = %361
  %367 = load i32, i32* %3, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %3, align 4
  br label %357

369:                                              ; preds = %357
  %370 = load %struct.shifts*, %struct.shifts** %19, align 8
  %371 = icmp ne %struct.shifts* %370, null
  br i1 %371, label %372, label %421

372:                                              ; preds = %369
  %373 = load %struct.shifts*, %struct.shifts** %19, align 8
  %374 = getelementptr inbounds %struct.shifts, %struct.shifts* %373, i32 0, i32 2
  %375 = load i16, i16* %374, align 2
  %376 = sext i16 %375 to i32
  store i32 %376, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %377

377:                                              ; preds = %417, %372
  %378 = load i32, i32* %3, align 4
  %379 = load i32, i32* %5, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %420

381:                                              ; preds = %377
  %382 = load %struct.shifts*, %struct.shifts** %19, align 8
  %383 = getelementptr inbounds %struct.shifts, %struct.shifts* %382, i32 0, i32 3
  %384 = load i32, i32* %3, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [1 x i16], [1 x i16]* %383, i64 0, i64 %385
  %387 = load i16, i16* %386, align 2
  %388 = icmp ne i16 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %381
  br label %417

390:                                              ; preds = %381
  %391 = load i16*, i16** @accessing_symbol, align 8
  %392 = load %struct.shifts*, %struct.shifts** %19, align 8
  %393 = getelementptr inbounds %struct.shifts, %struct.shifts* %392, i32 0, i32 3
  %394 = load i32, i32* %3, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [1 x i16], [1 x i16]* %393, i64 0, i64 %395
  %397 = load i16, i16* %396, align 2
  %398 = sext i16 %397 to i64
  %399 = getelementptr inbounds i16, i16* %391, i64 %398
  %400 = load i16, i16* %399, align 2
  %401 = sext i16 %400 to i32
  store i32 %401, i32* %11, align 4
  %402 = load i32, i32* %11, align 4
  %403 = load i32, i32* @ntokens, align 4
  %404 = icmp sge i32 %402, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %390
  br label %420

406:                                              ; preds = %390
  %407 = load i32, i32* %11, align 4
  %408 = and i32 %407, 31
  %409 = shl i32 1, %408
  %410 = load i32*, i32** @shiftset, align 8
  %411 = load i32, i32* %11, align 4
  %412 = ashr i32 %411, 5
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %410, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = or i32 %415, %409
  store i32 %416, i32* %414, align 4
  br label %417

417:                                              ; preds = %406, %389
  %418 = load i32, i32* %3, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %3, align 4
  br label %377

420:                                              ; preds = %405, %377
  br label %421

421:                                              ; preds = %420, %369
  store i32 1, i32* %12, align 4
  %422 = load i32*, i32** @LA, align 8
  %423 = load i32, i32* %13, align 4
  %424 = load i32, i32* @tokensetsize, align 4
  %425 = mul nsw i32 %423, %424
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %422, i64 %426
  store i32* %427, i32** %6, align 8
  %428 = load i32*, i32** @shiftset, align 8
  store i32* %428, i32** %7, align 8
  store i32 0, i32* %3, align 4
  br label %429

429:                                              ; preds = %558, %421
  %430 = load i32, i32* %3, align 4
  %431 = load i32, i32* @ntokens, align 4
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %433, label %561

433:                                              ; preds = %429
  store i32 0, i32* %22, align 4
  %434 = load i32, i32* %12, align 4
  %435 = load i32*, i32** %7, align 8
  %436 = load i32, i32* %435, align 4
  %437 = and i32 %434, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %433
  store i32 1, i32* %18, align 4
  br label %441

440:                                              ; preds = %433
  store i32 0, i32* %18, align 4
  br label %441

441:                                              ; preds = %440, %439
  %442 = load i32*, i32** %6, align 8
  store i32* %442, i32** %8, align 8
  %443 = load i32, i32* %13, align 4
  store i32 %443, i32* %4, align 4
  br label %444

444:                                              ; preds = %546, %441
  %445 = load i32, i32* %4, align 4
  %446 = load i32, i32* %14, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %549

448:                                              ; preds = %444
  %449 = load i32, i32* %12, align 4
  %450 = load i32*, i32** %8, align 8
  %451 = load i32, i32* %450, align 4
  %452 = and i32 %449, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %541

454:                                              ; preds = %448
  %455 = load i32, i32* %18, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %489

457:                                              ; preds = %454
  %458 = load i32, i32* %4, align 4
  %459 = load i32, i32* %15, align 4
  %460 = icmp ne i32 %458, %459
  br i1 %460, label %461, label %485

461:                                              ; preds = %457
  %462 = load i16*, i16** @LAruleno, align 8
  %463 = load i32, i32* %4, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i16, i16* %462, i64 %464
  %466 = load i16, i16* %465, align 2
  %467 = sext i16 %466 to i32
  store i32 %467, i32* %10, align 4
  %468 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %469 = load i8**, i8*** @tags, align 8
  %470 = load i32, i32* %3, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8*, i8** %469, i64 %471
  %473 = load i8*, i8** %472, align 8
  %474 = load i32, i32* %10, align 4
  %475 = load i8**, i8*** @tags, align 8
  %476 = load i16*, i16** @rlhs, align 8
  %477 = load i32, i32* %10, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i16, i16* %476, i64 %478
  %480 = load i16, i16* %479, align 2
  %481 = sext i16 %480 to i64
  %482 = getelementptr inbounds i8*, i8** %475, i64 %481
  %483 = load i8*, i8** %482, align 8
  %484 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %468, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %473, i32 %474, i8* %483)
  br label %486

485:                                              ; preds = %457
  store i32 1, i32* %22, align 4
  br label %486

486:                                              ; preds = %485, %461
  %487 = load i32, i32* %18, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %18, align 4
  br label %540

489:                                              ; preds = %454
  %490 = load i32, i32* %22, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %516

492:                                              ; preds = %489
  %493 = load i16*, i16** @LAruleno, align 8
  %494 = load i32, i32* %15, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i16, i16* %493, i64 %495
  %497 = load i16, i16* %496, align 2
  %498 = sext i16 %497 to i32
  store i32 %498, i32* %10, align 4
  %499 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %500 = load i8**, i8*** @tags, align 8
  %501 = load i32, i32* %3, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8*, i8** %500, i64 %502
  %504 = load i8*, i8** %503, align 8
  %505 = load i32, i32* %10, align 4
  %506 = load i8**, i8*** @tags, align 8
  %507 = load i16*, i16** @rlhs, align 8
  %508 = load i32, i32* %10, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i16, i16* %507, i64 %509
  %511 = load i16, i16* %510, align 2
  %512 = sext i16 %511 to i64
  %513 = getelementptr inbounds i8*, i8** %506, i64 %512
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %499, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %504, i32 %505, i8* %514)
  store i32 0, i32* %22, align 4
  br label %516

516:                                              ; preds = %492, %489
  %517 = load i16*, i16** @LAruleno, align 8
  %518 = load i32, i32* %4, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i16, i16* %517, i64 %519
  %521 = load i16, i16* %520, align 2
  %522 = sext i16 %521 to i32
  store i32 %522, i32* %10, align 4
  %523 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %524 = load i8**, i8*** @tags, align 8
  %525 = load i32, i32* %3, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i8*, i8** %524, i64 %526
  %528 = load i8*, i8** %527, align 8
  %529 = load i32, i32* %10, align 4
  %530 = load i8**, i8*** @tags, align 8
  %531 = load i16*, i16** @rlhs, align 8
  %532 = load i32, i32* %10, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i16, i16* %531, i64 %533
  %535 = load i16, i16* %534, align 2
  %536 = sext i16 %535 to i64
  %537 = getelementptr inbounds i8*, i8** %530, i64 %536
  %538 = load i8*, i8** %537, align 8
  %539 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %523, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %528, i32 %529, i8* %538)
  br label %540

540:                                              ; preds = %516, %486
  br label %541

541:                                              ; preds = %540, %448
  %542 = load i32, i32* @tokensetsize, align 4
  %543 = load i32*, i32** %8, align 8
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds i32, i32* %543, i64 %544
  store i32* %545, i32** %8, align 8
  br label %546

546:                                              ; preds = %541
  %547 = load i32, i32* %4, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %4, align 4
  br label %444

549:                                              ; preds = %444
  %550 = load i32, i32* %12, align 4
  %551 = shl i32 %550, 1
  store i32 %551, i32* %12, align 4
  %552 = load i32, i32* %12, align 4
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %549
  store i32 1, i32* %12, align 4
  %555 = load i32*, i32** %6, align 8
  %556 = getelementptr inbounds i32, i32* %555, i32 1
  store i32* %556, i32** %6, align 8
  br label %557

557:                                              ; preds = %554, %549
  br label %558

558:                                              ; preds = %557
  %559 = load i32, i32* %3, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %3, align 4
  br label %429

561:                                              ; preds = %429
  %562 = load i32, i32* %15, align 4
  %563 = icmp sge i32 %562, 0
  br i1 %563, label %564, label %577

564:                                              ; preds = %561
  %565 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %566 = load i32, i32* %16, align 4
  %567 = load i8**, i8*** @tags, align 8
  %568 = load i16*, i16** @rlhs, align 8
  %569 = load i32, i32* %16, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i16, i16* %568, i64 %570
  %572 = load i16, i16* %571, align 2
  %573 = sext i16 %572 to i64
  %574 = getelementptr inbounds i8*, i8** %567, i64 %573
  %575 = load i8*, i8** %574, align 8
  %576 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %565, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %566, i8* %575)
  br label %577

577:                                              ; preds = %564, %561
  %578 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %579 = call i32 @putc(i32 10, %struct._IO_FILE* %578)
  br label %580

580:                                              ; preds = %577, %254
  br label %581

581:                                              ; preds = %580, %241
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @finalize_conflicts() #0 {
  %1 = load i8*, i8** @conflicts, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i8*, i8** @conflicts, align 8
  call void @free(i8* %4) #7
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32*, i32** @shiftset, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32*, i32** @shiftset, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10) #7
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i32*, i32** @lookaheadset, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** @lookaheadset, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* %16) #7
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_derives() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.shorts*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.shorts**, align 8
  %6 = alloca %struct.shorts*, align 8
  %7 = load i32, i32* @nvars, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %10)
  %12 = bitcast i8* %11 to %struct.shorts**
  %13 = load i32, i32* @ntokens, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.shorts*, %struct.shorts** %12, i64 %15
  store %struct.shorts** %16, %struct.shorts*** %5, align 8
  %17 = load i32, i32* @nrules, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 16
  %21 = trunc i64 %20 to i32
  %22 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %21)
  %23 = bitcast i8* %22 to %struct.shorts*
  store %struct.shorts* %23, %struct.shorts** %6, align 8
  %24 = load %struct.shorts*, %struct.shorts** %6, align 8
  store %struct.shorts* %24, %struct.shorts** %3, align 8
  %25 = load i32, i32* @nrules, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %54, %0
  %27 = load i32, i32* %1, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load i16*, i16** @rlhs, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %30, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  store i32 %35, i32* %2, align 4
  %36 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.shorts*, %struct.shorts** %36, i64 %38
  %40 = load %struct.shorts*, %struct.shorts** %39, align 8
  %41 = load %struct.shorts*, %struct.shorts** %3, align 8
  %42 = getelementptr inbounds %struct.shorts, %struct.shorts* %41, i32 0, i32 0
  store %struct.shorts* %40, %struct.shorts** %42, align 8
  %43 = load i32, i32* %1, align 4
  %44 = trunc i32 %43 to i16
  %45 = load %struct.shorts*, %struct.shorts** %3, align 8
  %46 = getelementptr inbounds %struct.shorts, %struct.shorts* %45, i32 0, i32 1
  store i16 %44, i16* %46, align 8
  %47 = load %struct.shorts*, %struct.shorts** %3, align 8
  %48 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.shorts*, %struct.shorts** %48, i64 %50
  store %struct.shorts* %47, %struct.shorts** %51, align 8
  %52 = load %struct.shorts*, %struct.shorts** %3, align 8
  %53 = getelementptr inbounds %struct.shorts, %struct.shorts* %52, i32 1
  store %struct.shorts* %53, %struct.shorts** %3, align 8
  br label %54

54:                                               ; preds = %29
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %1, align 4
  br label %26

57:                                               ; preds = %26
  %58 = load i32, i32* @nvars, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %61)
  %63 = bitcast i8* %62 to i16**
  %64 = load i32, i32* @ntokens, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i16*, i16** %63, i64 %66
  store i16** %67, i16*** @derives, align 8
  %68 = load i32, i32* @nvars, align 4
  %69 = load i32, i32* @nrules, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 2
  %73 = trunc i64 %72 to i32
  %74 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %73)
  %75 = bitcast i8* %74 to i16*
  store i16* %75, i16** %4, align 8
  %76 = load i32, i32* @ntokens, align 4
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %107, %57
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @nsyms, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load i16*, i16** %4, align 8
  %83 = load i16**, i16*** @derives, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16*, i16** %83, i64 %85
  store i16* %82, i16** %86, align 8
  %87 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.shorts*, %struct.shorts** %87, i64 %89
  %91 = load %struct.shorts*, %struct.shorts** %90, align 8
  store %struct.shorts* %91, %struct.shorts** %3, align 8
  br label %92

92:                                               ; preds = %95, %81
  %93 = load %struct.shorts*, %struct.shorts** %3, align 8
  %94 = icmp ne %struct.shorts* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.shorts*, %struct.shorts** %3, align 8
  %97 = getelementptr inbounds %struct.shorts, %struct.shorts* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 8
  %99 = load i16*, i16** %4, align 8
  %100 = getelementptr inbounds i16, i16* %99, i32 1
  store i16* %100, i16** %4, align 8
  store i16 %98, i16* %99, align 2
  %101 = load %struct.shorts*, %struct.shorts** %3, align 8
  %102 = getelementptr inbounds %struct.shorts, %struct.shorts* %101, i32 0, i32 0
  %103 = load %struct.shorts*, %struct.shorts** %102, align 8
  store %struct.shorts* %103, %struct.shorts** %3, align 8
  br label %92

104:                                              ; preds = %92
  %105 = load i16*, i16** %4, align 8
  %106 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %106, i16** %4, align 8
  store i16 -1, i16* %105, align 2
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %77

110:                                              ; preds = %77
  %111 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %112 = load i32, i32* @ntokens, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.shorts*, %struct.shorts** %111, i64 %113
  %115 = icmp ne %struct.shorts** %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.shorts**, %struct.shorts*** %5, align 8
  %118 = load i32, i32* @ntokens, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.shorts*, %struct.shorts** %117, i64 %119
  %121 = bitcast %struct.shorts** %120 to i8*
  call void @free(i8* %121) #7
  br label %122

122:                                              ; preds = %116, %110
  %123 = load %struct.shorts*, %struct.shorts** %6, align 8
  %124 = icmp ne %struct.shorts* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.shorts*, %struct.shorts** %6, align 8
  %127 = bitcast %struct.shorts* %126 to i8*
  call void @free(i8* %127) #7
  br label %128

128:                                              ; preds = %125, %122
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_derives() #0 {
  %1 = load i16**, i16*** @derives, align 8
  %2 = load i32, i32* @ntokens, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i16*, i16** %1, i64 %3
  %5 = load i16*, i16** %4, align 8
  %6 = icmp ne i16* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = load i16**, i16*** @derives, align 8
  %9 = load i32, i32* @ntokens, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16*, i16** %8, i64 %10
  %12 = load i16*, i16** %11, align 8
  %13 = bitcast i16* %12 to i8*
  call void @free(i8* %13) #7
  br label %14

14:                                               ; preds = %7, %0
  %15 = load i16**, i16*** @derives, align 8
  %16 = load i32, i32* @ntokens, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16*, i16** %15, i64 %17
  %19 = icmp ne i16** %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i16**, i16*** @derives, align 8
  %22 = load i32, i32* @ntokens, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16*, i16** %21, i64 %23
  %25 = bitcast i16** %24 to i8*
  call void @free(i8* %25) #7
  br label %26

26:                                               ; preds = %20, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stringappend(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %17, %3
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %8, align 8
  %15 = load i8, i8* %13, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  br label %12

20:                                               ; preds = %12
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %41, %20
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  %38 = load i8, i8* %36, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  store i8 %38, i8* %39, align 1
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %31

44:                                               ; preds = %31
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %53, %44
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  %49 = load i8, i8* %47, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 %49, i8* %50, align 1
  %52 = icmp ne i8 %49, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %46

54:                                               ; preds = %46
  %55 = load i8*, i8** %7, align 8
  ret i8* %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @openfiles() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @strlen(i8* %8) #8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** @spec_outfile, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %0
  %14 = load i8*, i8** @spec_outfile, align 8
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strlen(i8* %15) #8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -2
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.16, i64 0, i64 0)) #8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i8*, i8** %1, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -4
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.17, i64 0, i64 0)) #8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 4
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %28
  %41 = load i8*, i8** %1, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -4
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.18, i64 0, i64 0)) #8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51, %37
  br label %102

53:                                               ; preds = %0
  %54 = load i32, i32* @fixed_outfiles, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** @infile, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.19, i64 0, i64 0), %56 ], [ %58, %57 ]
  store i8* %60, i8** %1, align 8
  %61 = load i8*, i8** %1, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void @exit(i32 1) #9
  unreachable

64:                                               ; preds = %59
  %65 = load i8*, i8** %1, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %78, %64
  %67 = load i8*, i8** %2, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i8*, i8** %2, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %2, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %1, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %2, align 8
  br label %66

81:                                               ; preds = %66
  %82 = load i8*, i8** %1, align 8
  %83 = call i64 @strlen(i8* %82) #8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load i8*, i8** %1, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 -2
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.20, i64 0, i64 0)) #8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, 2
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %81
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %5, align 4
  %97 = load i8*, i8** %1, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i8* @stringappend(i8* %97, i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.17, i64 0, i64 0))
  store i8* %99, i8** %1, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %95, %52
  %103 = load i8*, i8** @infile, align 8
  %104 = call %struct._IO_FILE* @tryopen(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.21, i64 0, i64 0))
  store %struct._IO_FILE* %104, %struct._IO_FILE** @finput, align 8
  %105 = load i32, i32* @verboseflag, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %1, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i8* @stringappend(i8* %108, i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.22, i64 0, i64 0))
  store i8* %110, i8** @outfile, align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %111, %struct._IO_FILE** @foutput, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* @definesflag, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8*, i8** %1, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i8* @stringappend(i8* %116, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.23, i64 0, i64 0))
  store i8* %118, i8** @defsfile, align 8
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %119, %struct._IO_FILE** @fdefines, align 8
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i8* @stringappend(i8* %121, i32 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9.24, i64 0, i64 0))
  %124 = call i8* @mktemp(i8* %123) #7
  store i8* %124, i8** @actfile, align 8
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %125, %struct._IO_FILE** @faction, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i8* @stringappend(i8* %126, i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10.25, i64 0, i64 0))
  %129 = call i8* @mktemp(i8* %128) #7
  store i8* %129, i8** @tmpattrsfile, align 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %130, %struct._IO_FILE** @fattrs, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i8* @stringappend(i8* %131, i32 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11.26, i64 0, i64 0))
  %134 = call i8* @mktemp(i8* %133) #7
  store i8* %134, i8** @tmptabfile, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %135, %struct._IO_FILE** @ftable, align 8
  %136 = load i8*, i8** @spec_outfile, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %120
  %139 = load i8*, i8** @spec_outfile, align 8
  store i8* %139, i8** @tabfile, align 8
  br label %144

140:                                              ; preds = %120
  %141 = load i8*, i8** %1, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i8* @stringappend(i8* %141, i32 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.16, i64 0, i64 0))
  store i8* %143, i8** @tabfile, align 8
  br label %144

144:                                              ; preds = %140, %138
  %145 = load i8*, i8** %1, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i8* @stringappend(i8* %145, i32 %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12.27, i64 0, i64 0))
  store i8* %147, i8** @attrsfile, align 8
  %148 = load i8*, i8** %1, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i8* @stringappend(i8* %148, i32 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13.28, i64 0, i64 0))
  store i8* %150, i8** @guardfile, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._IO_FILE* @tryopen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct._IO_FILE* @fopen(i8* %6, i8* %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %5, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  call void @perror(i8* %14)
  call void @done(i32 2)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  ret %struct._IO_FILE* %16
}

; Function Attrs: nounwind
declare dso_local i8* @mktemp(i8*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local void @perror(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @done(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @exit(i32 %3) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @open_extra_files() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* %4)
  %6 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14.31, i64 0, i64 0)) #7
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i8*, i8** %3, align 8
  br label %12

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15.32, i64 0, i64 0), %11 ]
  %14 = call %struct._IO_FILE* @tryopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.21, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** @fparser, align 8
  %15 = load i8*, i8** @attrsfile, align 8
  %16 = call %struct._IO_FILE* @tryopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %1, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  call void @rewind(%struct._IO_FILE* %17)
  br label %18

18:                                               ; preds = %22, %12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %20 = call i32 @getc(%struct._IO_FILE* %19)
  store i32 %20, i32* %2, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %25 = call i32 @putc(i32 %23, %struct._IO_FILE* %24)
  br label %18

26:                                               ; preds = %18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %27, %struct._IO_FILE** @fattrs, align 8
  %28 = load i8*, i8** @guardfile, align 8
  %29 = call %struct._IO_FILE* @tryopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** @fguard, align 8
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #1

declare dso_local void @rewind(%struct._IO_FILE*) #2

declare dso_local i32 @getc(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @getargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* @verboseflag, align 4
  store i32 0, i32* @definesflag, align 4
  store i32 0, i32* @debugflag, align 4
  store i32 0, i32* @fixed_outfiles, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0)) #8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* @fixed_outfiles, align 4
  br label %32

32:                                               ; preds = %31, %27
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = call i32 @getopt(i32 %34, i8** %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.38, i64 0, i64 0))
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %47 [
    i32 121, label %40
    i32 118, label %41
    i32 100, label %42
    i32 108, label %43
    i32 116, label %44
    i32 111, label %45
  ]

40:                                               ; preds = %38
  store i32 1, i32* @fixed_outfiles, align 4
  br label %47

41:                                               ; preds = %38
  store i32 1, i32* @verboseflag, align 4
  br label %47

42:                                               ; preds = %38
  store i32 1, i32* @definesflag, align 4
  br label %47

43:                                               ; preds = %38
  store i32 1, i32* @nolinesflag, align 4
  br label %47

44:                                               ; preds = %38
  store i32 1, i32* @debugflag, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** @spec_outfile, align 8
  br label %47

47:                                               ; preds = %45, %44, %43, %42, %41, %40, %38
  br label %33

48:                                               ; preds = %33
  %49 = load i32, i32* @optind, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2.39, i64 0, i64 0))
  br label %59

53:                                               ; preds = %48
  %54 = load i8**, i8*** %4, align 8
  %55 = load i32, i32* @optind, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** @infile, align 8
  br label %59

59:                                               ; preds = %53, %52
  %60 = load i32, i32* @optind, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.40, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @optind, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @last_nonopt, align 4
  store i32 1, i32* @first_nonopt, align 4
  store i8* null, i8** @nextchar, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 2, i32* @ordering, align 4
  br label %25

19:                                               ; preds = %12
  %20 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0)) #7
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* @ordering, align 4
  br label %24

23:                                               ; preds = %19
  store i32 1, i32* @ordering, align 4
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %18
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i8*, i8** @nextchar, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @nextchar, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %171

34:                                               ; preds = %29, %26
  %35 = load i32, i32* @ordering, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %88

37:                                               ; preds = %34
  %38 = load i32, i32* @first_nonopt, align 4
  %39 = load i32, i32* @last_nonopt, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @last_nonopt, align 4
  %43 = load i32, i32* @optind, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8**, i8*** %6, align 8
  call void @exchange(i8** %46)
  br label %54

47:                                               ; preds = %41, %37
  %48 = load i32, i32* @last_nonopt, align 4
  %49 = load i32, i32* @optind, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @optind, align 4
  store i32 %52, i32* @first_nonopt, align 4
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %83, %54
  %56 = load i32, i32* @optind, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load i8**, i8*** %6, align 8
  %61 = load i32, i32* @optind, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 45
  br i1 %68, label %79, label %69

69:                                               ; preds = %59
  %70 = load i8**, i8*** %6, align 8
  %71 = load i32, i32* @optind, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br label %79

79:                                               ; preds = %69, %59
  %80 = phi i1 [ true, %59 ], [ %78, %69 ]
  br label %81

81:                                               ; preds = %79, %55
  %82 = phi i1 [ false, %55 ], [ %80, %79 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i32, i32* @optind, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @optind, align 4
  br label %55

86:                                               ; preds = %81
  %87 = load i32, i32* @optind, align 4
  store i32 %87, i32* @last_nonopt, align 4
  br label %88

88:                                               ; preds = %86, %34
  %89 = load i32, i32* @optind, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = load i8**, i8*** %6, align 8
  %94 = load i32, i32* @optind, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.48, i64 0, i64 0)) #8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @optind, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @optind, align 4
  %103 = load i32, i32* @first_nonopt, align 4
  %104 = load i32, i32* @last_nonopt, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* @last_nonopt, align 4
  %108 = load i32, i32* @optind, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8**, i8*** %6, align 8
  call void @exchange(i8** %111)
  br label %119

112:                                              ; preds = %106, %100
  %113 = load i32, i32* @first_nonopt, align 4
  %114 = load i32, i32* @last_nonopt, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @optind, align 4
  store i32 %117, i32* @first_nonopt, align 4
  br label %118

118:                                              ; preds = %116, %112
  br label %119

119:                                              ; preds = %118, %110
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* @last_nonopt, align 4
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* @optind, align 4
  br label %122

122:                                              ; preds = %119, %92, %88
  %123 = load i32, i32* @optind, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i32, i32* @first_nonopt, align 4
  %128 = load i32, i32* @last_nonopt, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @first_nonopt, align 4
  store i32 %131, i32* @optind, align 4
  br label %132

132:                                              ; preds = %130, %126
  store i32 -1, i32* %4, align 4
  br label %283

133:                                              ; preds = %122
  %134 = load i8**, i8*** %6, align 8
  %135 = load i32, i32* @optind, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 45
  br i1 %142, label %153, label %143

143:                                              ; preds = %133
  %144 = load i8**, i8*** %6, align 8
  %145 = load i32, i32* @optind, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %143, %133
  %154 = load i32, i32* @ordering, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 -1, i32* %4, align 4
  br label %283

157:                                              ; preds = %153
  %158 = load i8**, i8*** %6, align 8
  %159 = load i32, i32* @optind, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @optind, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** @optarg, align 8
  store i32 0, i32* %4, align 4
  br label %283

164:                                              ; preds = %143
  %165 = load i8**, i8*** %6, align 8
  %166 = load i32, i32* @optind, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  store i8* %170, i8** @nextchar, align 8
  br label %171

171:                                              ; preds = %164, %29
  %172 = load i8*, i8** @nextchar, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** @nextchar, align 8
  %174 = load i8, i8* %172, align 1
  store i8 %174, i8* %8, align 1
  %175 = load i8*, i8** %7, align 8
  %176 = load i8, i8* %8, align 1
  %177 = sext i8 %176 to i32
  %178 = call i8* @strchr(i8* %175, i32 %177) #8
  store i8* %178, i8** %9, align 8
  %179 = load i8*, i8** @nextchar, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %171
  %184 = load i32, i32* @optind, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* @optind, align 4
  br label %186

186:                                              ; preds = %183, %171
  %187 = load i8*, i8** %9, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %186
  %190 = load i8, i8* %8, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 58
  br i1 %192, label %193, label %222

193:                                              ; preds = %189, %186
  %194 = load i32, i32* @opterr, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load i8, i8* %8, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp slt i32 %198, 32
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i8, i8* %8, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp sge i32 %202, 127
  br i1 %203, label %204, label %212

204:                                              ; preds = %200, %196
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %206 = load i8**, i8*** %6, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i8, i8* %8, align 1
  %210 = sext i8 %209 to i32
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2.49, i64 0, i64 0), i8* %208, i32 %210)
  br label %220

212:                                              ; preds = %200
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %214 = load i8**, i8*** %6, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i8, i8* %8, align 1
  %218 = sext i8 %217 to i32
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3.50, i64 0, i64 0), i8* %216, i32 %218)
  br label %220

220:                                              ; preds = %212, %204
  br label %221

221:                                              ; preds = %220, %193
  store i32 63, i32* %4, align 4
  br label %283

222:                                              ; preds = %189
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 58
  br i1 %227, label %228, label %280

228:                                              ; preds = %222
  %229 = load i8*, i8** %9, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 58
  br i1 %233, label %234, label %245

234:                                              ; preds = %228
  %235 = load i8*, i8** @nextchar, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = load i8*, i8** @nextchar, align 8
  store i8* %240, i8** @optarg, align 8
  %241 = load i32, i32* @optind, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* @optind, align 4
  br label %244

243:                                              ; preds = %234
  store i8* null, i8** @optarg, align 8
  br label %244

244:                                              ; preds = %243, %239
  store i8* null, i8** @nextchar, align 8
  br label %279

245:                                              ; preds = %228
  %246 = load i8*, i8** @nextchar, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i8*, i8** @nextchar, align 8
  store i8* %251, i8** @optarg, align 8
  %252 = load i32, i32* @optind, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* @optind, align 4
  br label %278

254:                                              ; preds = %245
  %255 = load i32, i32* @optind, align 4
  %256 = load i32, i32* %5, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %254
  %259 = load i32, i32* @opterr, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %258
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %263 = load i8**, i8*** %6, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 0
  %265 = load i8*, i8** %264, align 8
  %266 = load i8, i8* %8, align 1
  %267 = sext i8 %266 to i32
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %262, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4.51, i64 0, i64 0), i8* %265, i32 %267)
  br label %269

269:                                              ; preds = %261, %258
  store i8* null, i8** @optarg, align 8
  br label %277

270:                                              ; preds = %254
  %271 = load i8**, i8*** %6, align 8
  %272 = load i32, i32* @optind, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* @optind, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8*, i8** %271, i64 %274
  %276 = load i8*, i8** %275, align 8
  store i8* %276, i8** @optarg, align 8
  br label %277

277:                                              ; preds = %270, %269
  br label %278

278:                                              ; preds = %277, %250
  store i8* null, i8** @nextchar, align 8
  br label %279

279:                                              ; preds = %278, %244
  br label %280

280:                                              ; preds = %279, %222
  %281 = load i8, i8* %8, align 1
  %282 = sext i8 %281 to i32
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %280, %221, %157, %156, %132
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

; Function Attrs: noinline nounwind uwtable
define internal void @exchange(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %5 = load i32, i32* @last_nonopt, align 4
  %6 = load i32, i32* @first_nonopt, align 4
  %7 = sub nsw i32 %5, %6
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to i8**
  store i8** %14, i8*** %4, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = bitcast i8** %15 to i8*
  %17 = load i8**, i8*** %2, align 8
  %18 = load i32, i32* @first_nonopt, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = bitcast i8** %20 to i8*
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %21, i64 %23, i1 false)
  %24 = load i8**, i8*** %2, align 8
  %25 = load i32, i32* @first_nonopt, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = bitcast i8** %27 to i8*
  %29 = load i8**, i8*** %2, align 8
  %30 = load i32, i32* @last_nonopt, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = bitcast i8** %32 to i8*
  %34 = load i32, i32* @optind, align 4
  %35 = load i32, i32* @last_nonopt, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %33, i64 %38, i1 false)
  %39 = load i8**, i8*** %2, align 8
  %40 = load i32, i32* @first_nonopt, align 4
  %41 = load i32, i32* @optind, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* @last_nonopt, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %39, i64 %45
  %47 = bitcast i8** %46 to i8*
  %48 = load i8**, i8*** %4, align 8
  %49 = bitcast i8** %48 to i8*
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %49, i64 %51, i1 false)
  %52 = load i32, i32* @optind, align 4
  %53 = load i32, i32* @last_nonopt, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* @first_nonopt, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* @first_nonopt, align 4
  %57 = load i32, i32* @optind, align 4
  store i32 %57, i32* @last_nonopt, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @lalr() #0 {
  %1 = load i32, i32* @ntokens, align 4
  %2 = add nsw i32 %1, 31
  %3 = sdiv i32 %2, 32
  store i32 %3, i32* @tokensetsize, align 4
  call void @set_state_table()
  call void @set_accessing_symbol()
  call void @set_shift_table()
  call void @set_reduction_table()
  call void @set_maxrhs()
  call void @initialize_LA()
  call void @set_goto_map()
  call void @initialize_F()
  call void @build_relations()
  call void @compute_FOLLOWS()
  call void @compute_lookaheads()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_state_table() #0 {
  %1 = alloca %struct.core*, align 8
  %2 = load i32, i32* @nstates, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 8
  %5 = trunc i64 %4 to i32
  %6 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %5)
  %7 = bitcast i8* %6 to %struct.core**
  store %struct.core** %7, %struct.core*** @state_table, align 8
  %8 = load %struct.core*, %struct.core** @first_state, align 8
  store %struct.core* %8, %struct.core** %1, align 8
  br label %9

9:                                                ; preds = %20, %0
  %10 = load %struct.core*, %struct.core** %1, align 8
  %11 = icmp ne %struct.core* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.core*, %struct.core** %1, align 8
  %14 = load %struct.core**, %struct.core*** @state_table, align 8
  %15 = load %struct.core*, %struct.core** %1, align 8
  %16 = getelementptr inbounds %struct.core, %struct.core* %15, i32 0, i32 2
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds %struct.core*, %struct.core** %14, i64 %18
  store %struct.core* %13, %struct.core** %19, align 8
  br label %20

20:                                               ; preds = %12
  %21 = load %struct.core*, %struct.core** %1, align 8
  %22 = getelementptr inbounds %struct.core, %struct.core* %21, i32 0, i32 0
  %23 = load %struct.core*, %struct.core** %22, align 8
  store %struct.core* %23, %struct.core** %1, align 8
  br label %9

24:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_accessing_symbol() #0 {
  %1 = alloca %struct.core*, align 8
  %2 = load i32, i32* @nstates, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 2
  %5 = trunc i64 %4 to i32
  %6 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %5)
  %7 = bitcast i8* %6 to i16*
  store i16* %7, i16** @accessing_symbol, align 8
  %8 = load %struct.core*, %struct.core** @first_state, align 8
  store %struct.core* %8, %struct.core** %1, align 8
  br label %9

9:                                                ; preds = %22, %0
  %10 = load %struct.core*, %struct.core** %1, align 8
  %11 = icmp ne %struct.core* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.core*, %struct.core** %1, align 8
  %14 = getelementptr inbounds %struct.core, %struct.core* %13, i32 0, i32 3
  %15 = load i16, i16* %14, align 2
  %16 = load i16*, i16** @accessing_symbol, align 8
  %17 = load %struct.core*, %struct.core** %1, align 8
  %18 = getelementptr inbounds %struct.core, %struct.core* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 8
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds i16, i16* %16, i64 %20
  store i16 %15, i16* %21, align 2
  br label %22

22:                                               ; preds = %12
  %23 = load %struct.core*, %struct.core** %1, align 8
  %24 = getelementptr inbounds %struct.core, %struct.core* %23, i32 0, i32 0
  %25 = load %struct.core*, %struct.core** %24, align 8
  store %struct.core* %25, %struct.core** %1, align 8
  br label %9

26:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_shift_table() #0 {
  %1 = alloca %struct.shifts*, align 8
  %2 = load i32, i32* @nstates, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 8
  %5 = trunc i64 %4 to i32
  %6 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %5)
  %7 = bitcast i8* %6 to %struct.shifts**
  store %struct.shifts** %7, %struct.shifts*** @shift_table, align 8
  %8 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %8, %struct.shifts** %1, align 8
  br label %9

9:                                                ; preds = %20, %0
  %10 = load %struct.shifts*, %struct.shifts** %1, align 8
  %11 = icmp ne %struct.shifts* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.shifts*, %struct.shifts** %1, align 8
  %14 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %15 = load %struct.shifts*, %struct.shifts** %1, align 8
  %16 = getelementptr inbounds %struct.shifts, %struct.shifts* %15, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds %struct.shifts*, %struct.shifts** %14, i64 %18
  store %struct.shifts* %13, %struct.shifts** %19, align 8
  br label %20

20:                                               ; preds = %12
  %21 = load %struct.shifts*, %struct.shifts** %1, align 8
  %22 = getelementptr inbounds %struct.shifts, %struct.shifts* %21, i32 0, i32 0
  %23 = load %struct.shifts*, %struct.shifts** %22, align 8
  store %struct.shifts* %23, %struct.shifts** %1, align 8
  br label %9

24:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_reduction_table() #0 {
  %1 = alloca %struct.reductions*, align 8
  %2 = load i32, i32* @nstates, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 8
  %5 = trunc i64 %4 to i32
  %6 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %5)
  %7 = bitcast i8* %6 to %struct.reductions**
  store %struct.reductions** %7, %struct.reductions*** @reduction_table, align 8
  %8 = load %struct.reductions*, %struct.reductions** @first_reduction, align 8
  store %struct.reductions* %8, %struct.reductions** %1, align 8
  br label %9

9:                                                ; preds = %20, %0
  %10 = load %struct.reductions*, %struct.reductions** %1, align 8
  %11 = icmp ne %struct.reductions* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.reductions*, %struct.reductions** %1, align 8
  %14 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %15 = load %struct.reductions*, %struct.reductions** %1, align 8
  %16 = getelementptr inbounds %struct.reductions, %struct.reductions* %15, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds %struct.reductions*, %struct.reductions** %14, i64 %18
  store %struct.reductions* %13, %struct.reductions** %19, align 8
  br label %20

20:                                               ; preds = %12
  %21 = load %struct.reductions*, %struct.reductions** %1, align 8
  %22 = getelementptr inbounds %struct.reductions, %struct.reductions* %21, i32 0, i32 0
  %23 = load %struct.reductions*, %struct.reductions** %22, align 8
  store %struct.reductions* %23, %struct.reductions** %1, align 8
  br label %9

24:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_maxrhs() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i16*, i16** @ritem, align 8
  store i16* %4, i16** %1, align 8
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i16*, i16** %1, align 8
  %7 = load i16, i16* %6, align 2
  %8 = icmp ne i16 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i16*, i16** %1, align 8
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %17
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i16*, i16** %1, align 8
  %27 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %27, i16** %1, align 8
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* @maxrhs, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_LA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.reductions*, align 8
  %5 = alloca %struct.shifts*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @nstates, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 1
  %11 = trunc i64 %10 to i32
  %12 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %11)
  store i8* %12, i8** @consistent, align 8
  %13 = load i32, i32* @nstates, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 2
  %17 = trunc i64 %16 to i32
  %18 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %17)
  %19 = bitcast i8* %18 to i16*
  store i16* %19, i16** @lookaheads, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %112, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @nstates, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %115

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = trunc i32 %25 to i16
  %27 = load i16*, i16** @lookaheads, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  store i16 %26, i16* %30, align 2
  %31 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.reductions*, %struct.reductions** %31, i64 %33
  %35 = load %struct.reductions*, %struct.reductions** %34, align 8
  store %struct.reductions* %35, %struct.reductions** %4, align 8
  %36 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.shifts*, %struct.shifts** %36, i64 %38
  %40 = load %struct.shifts*, %struct.shifts** %39, align 8
  store %struct.shifts* %40, %struct.shifts** %5, align 8
  %41 = load %struct.reductions*, %struct.reductions** %4, align 8
  %42 = icmp ne %struct.reductions* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %24
  %44 = load %struct.reductions*, %struct.reductions** %4, align 8
  %45 = getelementptr inbounds %struct.reductions, %struct.reductions* %44, i32 0, i32 2
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  %50 = load %struct.shifts*, %struct.shifts** %5, align 8
  %51 = icmp ne %struct.shifts* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i16*, i16** @accessing_symbol, align 8
  %54 = load %struct.shifts*, %struct.shifts** %5, align 8
  %55 = getelementptr inbounds %struct.shifts, %struct.shifts* %54, i32 0, i32 3
  %56 = getelementptr inbounds [1 x i16], [1 x i16]* %55, i64 0, i64 0
  %57 = load i16, i16* %56, align 4
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds i16, i16* %53, i64 %58
  %60 = load i16, i16* %59, align 2
  %61 = sext i16 %60 to i32
  %62 = load i32, i32* @ntokens, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %52, %43
  %65 = load %struct.reductions*, %struct.reductions** %4, align 8
  %66 = getelementptr inbounds %struct.reductions, %struct.reductions* %65, i32 0, i32 2
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %52, %49, %24
  %72 = load i8*, i8** @consistent, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 1, i8* %75, align 1
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.shifts*, %struct.shifts** %5, align 8
  %78 = icmp ne %struct.shifts* %77, null
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %107, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.shifts*, %struct.shifts** %5, align 8
  %83 = getelementptr inbounds %struct.shifts, %struct.shifts* %82, i32 0, i32 2
  %84 = load i16, i16* %83, align 2
  %85 = sext i16 %84 to i32
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %80
  %88 = load i16*, i16** @accessing_symbol, align 8
  %89 = load %struct.shifts*, %struct.shifts** %5, align 8
  %90 = getelementptr inbounds %struct.shifts, %struct.shifts* %89, i32 0, i32 3
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1 x i16], [1 x i16]* %90, i64 0, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds i16, i16* %88, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = load i32, i32* @error_token_number, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %87
  %102 = load i8*, i8** @consistent, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 0, i8* %105, align 1
  br label %110

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %80

110:                                              ; preds = %101, %80
  br label %111

111:                                              ; preds = %110, %76
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %1, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %1, align 4
  br label %20

115:                                              ; preds = %20
  %116 = load i32, i32* %3, align 4
  %117 = trunc i32 %116 to i16
  %118 = load i16*, i16** @lookaheads, align 8
  %119 = load i32, i32* @nstates, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %118, i64 %120
  store i16 %117, i16* %121, align 2
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @tokensetsize, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %127)
  %129 = bitcast i8* %128 to i32*
  store i32* %129, i32** @LA, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 2
  %133 = trunc i64 %132 to i32
  %134 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %133)
  %135 = bitcast i8* %134 to i16*
  store i16* %135, i16** @LAruleno, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = trunc i64 %138 to i32
  %140 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %139)
  %141 = bitcast i8* %140 to %struct.shorts**
  store %struct.shorts** %141, %struct.shorts*** @lookback, align 8
  %142 = load i16*, i16** @LAruleno, align 8
  store i16* %142, i16** %6, align 8
  store i32 0, i32* %1, align 4
  br label %143

143:                                              ; preds = %184, %115
  %144 = load i32, i32* %1, align 4
  %145 = load i32, i32* @nstates, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %187

147:                                              ; preds = %143
  %148 = load i8*, i8** @consistent, align 8
  %149 = load i32, i32* %1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %183, label %154

154:                                              ; preds = %147
  %155 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.reductions*, %struct.reductions** %155, i64 %157
  %159 = load %struct.reductions*, %struct.reductions** %158, align 8
  store %struct.reductions* %159, %struct.reductions** %4, align 8
  %160 = icmp ne %struct.reductions* %159, null
  br i1 %160, label %161, label %182

161:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %178, %161
  %163 = load i32, i32* %2, align 4
  %164 = load %struct.reductions*, %struct.reductions** %4, align 8
  %165 = getelementptr inbounds %struct.reductions, %struct.reductions* %164, i32 0, i32 2
  %166 = load i16, i16* %165, align 2
  %167 = sext i16 %166 to i32
  %168 = icmp slt i32 %163, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %162
  %170 = load %struct.reductions*, %struct.reductions** %4, align 8
  %171 = getelementptr inbounds %struct.reductions, %struct.reductions* %170, i32 0, i32 3
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [1 x i16], [1 x i16]* %171, i64 0, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = load i16*, i16** %6, align 8
  %177 = getelementptr inbounds i16, i16* %176, i32 1
  store i16* %177, i16** %6, align 8
  store i16 %175, i16* %176, align 2
  br label %178

178:                                              ; preds = %169
  %179 = load i32, i32* %2, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %2, align 4
  br label %162

181:                                              ; preds = %162
  br label %182

182:                                              ; preds = %181, %154
  br label %183

183:                                              ; preds = %182, %147
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %1, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %1, align 4
  br label %143

187:                                              ; preds = %143
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_goto_map() #0 {
  %1 = alloca %struct.shifts*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @nvars, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 2
  %12 = trunc i64 %11 to i32
  %13 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %12)
  %14 = bitcast i8* %13 to i16*
  %15 = load i32, i32* @ntokens, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds i16, i16* %14, i64 %17
  store i16* %18, i16** @goto_map, align 8
  %19 = load i32, i32* @nvars, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 2
  %23 = trunc i64 %22 to i32
  %24 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %23)
  %25 = bitcast i8* %24 to i16*
  %26 = load i32, i32* @ntokens, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i16, i16* %25, i64 %28
  store i16* %29, i16** %5, align 8
  store i32 0, i32* @ngotos, align 4
  %30 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %30, %struct.shifts** %1, align 8
  br label %31

31:                                               ; preds = %76, %0
  %32 = load %struct.shifts*, %struct.shifts** %1, align 8
  %33 = icmp ne %struct.shifts* %32, null
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = load %struct.shifts*, %struct.shifts** %1, align 8
  %36 = getelementptr inbounds %struct.shifts, %struct.shifts* %35, i32 0, i32 2
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %72, %34
  %41 = load i32, i32* %2, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load i16*, i16** @accessing_symbol, align 8
  %45 = load %struct.shifts*, %struct.shifts** %1, align 8
  %46 = getelementptr inbounds %struct.shifts, %struct.shifts* %45, i32 0, i32 3
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1 x i16], [1 x i16]* %46, i64 0, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds i16, i16* %44, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @ntokens, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %75

59:                                               ; preds = %43
  %60 = load i32, i32* @ngotos, align 4
  %61 = icmp eq i32 %60, 32767
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @toomany(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0))
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* @ngotos, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @ngotos, align 4
  %66 = load i16*, i16** @goto_map, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = add i16 %70, 1
  store i16 %71, i16* %69, align 2
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %2, align 4
  br label %40

75:                                               ; preds = %58, %40
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.shifts*, %struct.shifts** %1, align 8
  %78 = getelementptr inbounds %struct.shifts, %struct.shifts* %77, i32 0, i32 0
  %79 = load %struct.shifts*, %struct.shifts** %78, align 8
  store %struct.shifts* %79, %struct.shifts** %1, align 8
  br label %31

80:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  %81 = load i32, i32* @ntokens, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %101, %80
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @nsyms, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = trunc i32 %87 to i16
  %89 = load i16*, i16** %5, align 8
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %89, i64 %91
  store i16 %88, i16* %92, align 2
  %93 = load i16*, i16** @goto_map, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %93, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %82

104:                                              ; preds = %82
  %105 = load i32, i32* @ntokens, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %120, %104
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @nsyms, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load i16*, i16** %5, align 8
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = load i16*, i16** @goto_map, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %116, i64 %118
  store i16 %115, i16* %119, align 2
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %2, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %2, align 4
  br label %106

123:                                              ; preds = %106
  %124 = load i32, i32* @ngotos, align 4
  %125 = trunc i32 %124 to i16
  %126 = load i16*, i16** @goto_map, align 8
  %127 = load i32, i32* @nsyms, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i16, i16* %126, i64 %128
  store i16 %125, i16* %129, align 2
  %130 = load i32, i32* @ngotos, align 4
  %131 = trunc i32 %130 to i16
  %132 = load i16*, i16** %5, align 8
  %133 = load i32, i32* @nsyms, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, i16* %132, i64 %134
  store i16 %131, i16* %135, align 2
  %136 = load i32, i32* @ngotos, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 2
  %139 = trunc i64 %138 to i32
  %140 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %139)
  %141 = bitcast i8* %140 to i16*
  store i16* %141, i16** @from_state, align 8
  %142 = load i32, i32* @ngotos, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 2
  %145 = trunc i64 %144 to i32
  %146 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %145)
  %147 = bitcast i8* %146 to i16*
  store i16* %147, i16** @to_state, align 8
  %148 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %148, %struct.shifts** %1, align 8
  br label %149

149:                                              ; preds = %207, %123
  %150 = load %struct.shifts*, %struct.shifts** %1, align 8
  %151 = icmp ne %struct.shifts* %150, null
  br i1 %151, label %152, label %211

152:                                              ; preds = %149
  %153 = load %struct.shifts*, %struct.shifts** %1, align 8
  %154 = getelementptr inbounds %struct.shifts, %struct.shifts* %153, i32 0, i32 1
  %155 = load i16, i16* %154, align 8
  %156 = sext i16 %155 to i32
  store i32 %156, i32* %7, align 4
  %157 = load %struct.shifts*, %struct.shifts** %1, align 8
  %158 = getelementptr inbounds %struct.shifts, %struct.shifts* %157, i32 0, i32 2
  %159 = load i16, i16* %158, align 2
  %160 = sext i16 %159 to i32
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %203, %152
  %163 = load i32, i32* %2, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %206

165:                                              ; preds = %162
  %166 = load %struct.shifts*, %struct.shifts** %1, align 8
  %167 = getelementptr inbounds %struct.shifts, %struct.shifts* %166, i32 0, i32 3
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [1 x i16], [1 x i16]* %167, i64 0, i64 %169
  %171 = load i16, i16* %170, align 2
  %172 = sext i16 %171 to i32
  store i32 %172, i32* %6, align 4
  %173 = load i16*, i16** @accessing_symbol, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, i16* %173, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = sext i16 %177 to i32
  store i32 %178, i32* %3, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @ntokens, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %165
  br label %206

183:                                              ; preds = %165
  %184 = load i16*, i16** %5, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i16, i16* %184, i64 %186
  %188 = load i16, i16* %187, align 2
  %189 = add i16 %188, 1
  store i16 %189, i16* %187, align 2
  %190 = sext i16 %188 to i32
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %7, align 4
  %192 = trunc i32 %191 to i16
  %193 = load i16*, i16** @from_state, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %193, i64 %195
  store i16 %192, i16* %196, align 2
  %197 = load i32, i32* %6, align 4
  %198 = trunc i32 %197 to i16
  %199 = load i16*, i16** @to_state, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i16, i16* %199, i64 %201
  store i16 %198, i16* %202, align 2
  br label %203

203:                                              ; preds = %183
  %204 = load i32, i32* %2, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %2, align 4
  br label %162

206:                                              ; preds = %182, %162
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.shifts*, %struct.shifts** %1, align 8
  %209 = getelementptr inbounds %struct.shifts, %struct.shifts* %208, i32 0, i32 0
  %210 = load %struct.shifts*, %struct.shifts** %209, align 8
  store %struct.shifts* %210, %struct.shifts** %1, align 8
  br label %149

211:                                              ; preds = %149
  %212 = load i16*, i16** %5, align 8
  %213 = load i32, i32* @ntokens, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i16, i16* %212, i64 %214
  %216 = icmp ne i16* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load i16*, i16** %5, align 8
  %219 = load i32, i32* @ntokens, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i16, i16* %218, i64 %220
  %222 = bitcast i16* %221 to i8*
  call void @free(i8* %222) #7
  br label %223

223:                                              ; preds = %217, %211
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_F() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.shifts*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @ngotos, align 4
  %14 = load i32, i32* @tokensetsize, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %19)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** @F, align 8
  %22 = load i32, i32* @ngotos, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %25)
  %27 = bitcast i8* %26 to i16**
  store i16** %27, i16*** %8, align 8
  %28 = load i32, i32* @ngotos, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 2
  %32 = trunc i64 %31 to i32
  %33 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %32)
  %34 = bitcast i8* %33 to i16*
  store i16* %34, i16** %5, align 8
  store i32 0, i32* %9, align 4
  %35 = load i32*, i32** @F, align 8
  store i32* %35, i32** %6, align 8
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %173, %0
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @ngotos, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %176

40:                                               ; preds = %36
  %41 = load i16*, i16** @to_state, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %41, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.shifts*, %struct.shifts** %47, i64 %49
  %51 = load %struct.shifts*, %struct.shifts** %50, align 8
  store %struct.shifts* %51, %struct.shifts** %4, align 8
  %52 = load %struct.shifts*, %struct.shifts** %4, align 8
  %53 = icmp ne %struct.shifts* %52, null
  br i1 %53, label %54, label %168

54:                                               ; preds = %40
  %55 = load %struct.shifts*, %struct.shifts** %4, align 8
  %56 = getelementptr inbounds %struct.shifts, %struct.shifts* %55, i32 0, i32 2
  %57 = load i16, i16* %56, align 2
  %58 = sext i16 %57 to i32
  store i32 %58, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %90, %54
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load i16*, i16** @accessing_symbol, align 8
  %65 = load %struct.shifts*, %struct.shifts** %4, align 8
  %66 = getelementptr inbounds %struct.shifts, %struct.shifts* %65, i32 0, i32 3
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1 x i16], [1 x i16]* %66, i64 0, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i16, i16* %64, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @ntokens, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %93

79:                                               ; preds = %63
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 31
  %82 = shl i32 1, %81
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = ashr i32 %84, 5
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %82
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %59

93:                                               ; preds = %78, %59
  br label %94

94:                                               ; preds = %127, %93
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %94
  %99 = load i16*, i16** @accessing_symbol, align 8
  %100 = load %struct.shifts*, %struct.shifts** %4, align 8
  %101 = getelementptr inbounds %struct.shifts, %struct.shifts* %100, i32 0, i32 3
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1 x i16], [1 x i16]* %101, i64 0, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds i16, i16* %99, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  store i32 %109, i32* %11, align 4
  %110 = load i8*, i8** @nullable, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %98
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @map_goto(i32 %117, i32 %118)
  %120 = trunc i32 %119 to i16
  %121 = load i16*, i16** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i16, i16* %121, i64 %124
  store i16 %120, i16* %125, align 2
  br label %126

126:                                              ; preds = %116, %98
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %2, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %2, align 4
  br label %94

130:                                              ; preds = %94
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %167

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 2
  %138 = trunc i64 %137 to i32
  %139 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %138)
  %140 = bitcast i8* %139 to i16*
  store i16* %140, i16** %7, align 8
  %141 = load i16**, i16*** %8, align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16*, i16** %141, i64 %143
  store i16* %140, i16** %144, align 8
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %159, %133
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load i16*, i16** %5, align 8
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i16, i16* %150, i64 %152
  %154 = load i16, i16* %153, align 2
  %155 = load i16*, i16** %7, align 8
  %156 = load i32, i32* %2, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i16, i16* %155, i64 %157
  store i16 %154, i16* %158, align 2
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %2, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %2, align 4
  br label %145

162:                                              ; preds = %145
  %163 = load i16*, i16** %7, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i16, i16* %163, i64 %165
  store i16 -1, i16* %166, align 2
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %162, %130
  br label %168

168:                                              ; preds = %167, %40
  %169 = load i32, i32* @tokensetsize, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %6, align 8
  br label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %1, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %1, align 4
  br label %36

176:                                              ; preds = %36
  %177 = load i16**, i16*** %8, align 8
  call void @digraph(i16** %177)
  store i32 0, i32* %1, align 4
  br label %178

178:                                              ; preds = %205, %176
  %179 = load i32, i32* %1, align 4
  %180 = load i32, i32* @ngotos, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %208

182:                                              ; preds = %178
  %183 = load i16**, i16*** %8, align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i16*, i16** %183, i64 %185
  %187 = load i16*, i16** %186, align 8
  %188 = icmp ne i16* %187, null
  br i1 %188, label %189, label %204

189:                                              ; preds = %182
  %190 = load i16**, i16*** %8, align 8
  %191 = load i32, i32* %1, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i16*, i16** %190, i64 %192
  %194 = load i16*, i16** %193, align 8
  %195 = icmp ne i16* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %189
  %197 = load i16**, i16*** %8, align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i16*, i16** %197, i64 %199
  %201 = load i16*, i16** %200, align 8
  %202 = bitcast i16* %201 to i8*
  call void @free(i8* %202) #7
  br label %203

203:                                              ; preds = %196, %189
  br label %204

204:                                              ; preds = %203, %182
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %1, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %1, align 4
  br label %178

208:                                              ; preds = %178
  %209 = load i16**, i16*** %8, align 8
  %210 = icmp ne i16** %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i16**, i16*** %8, align 8
  %213 = bitcast i16** %212 to i8*
  call void @free(i8* %213) #7
  br label %214

214:                                              ; preds = %211, %208
  %215 = load i16*, i16** %5, align 8
  %216 = icmp ne i16* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i16*, i16** %5, align 8
  %219 = bitcast i16* %218 to i8*
  call void @free(i8* %219) #7
  br label %220

220:                                              ; preds = %217, %214
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @build_relations() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.shifts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i16**, align 8
  %18 = load i32, i32* @ngotos, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %21)
  %23 = bitcast i8* %22 to i16**
  store i16** %23, i16*** @includes, align 8
  %24 = load i32, i32* @ngotos, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 2
  %28 = trunc i64 %27 to i32
  %29 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %28)
  %30 = bitcast i8* %29 to i16*
  store i16* %30, i16** %15, align 8
  %31 = load i32, i32* @maxrhs, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 2
  %35 = trunc i64 %34 to i32
  %36 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %35)
  %37 = bitcast i8* %36 to i16*
  store i16* %37, i16** %16, align 8
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %242, %0
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @ngotos, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %245

42:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  %43 = load i16*, i16** @from_state, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i16*, i16** @accessing_symbol, align 8
  %50 = load i16*, i16** @to_state, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i64
  %56 = getelementptr inbounds i16, i16* %49, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = sext i16 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load i16**, i16*** @derives, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16*, i16** %59, i64 %61
  %63 = load i16*, i16** %62, align 8
  store i16* %63, i16** %4, align 8
  br label %64

64:                                               ; preds = %201, %42
  %65 = load i16*, i16** %4, align 8
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %204

69:                                               ; preds = %64
  store i32 1, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = trunc i32 %70 to i16
  %72 = load i16*, i16** %16, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 0
  store i16 %71, i16* %73, align 2
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i16*, i16** @ritem, align 8
  %76 = load i16*, i16** @rrhs, align 8
  %77 = load i16*, i16** %4, align 8
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i16, i16* %76, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %75, i64 %83
  store i16* %84, i16** %5, align 8
  br label %85

85:                                               ; preds = %136, %69
  %86 = load i16*, i16** %5, align 8
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %85
  %91 = load i16*, i16** %5, align 8
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.shifts*, %struct.shifts** %94, i64 %96
  %98 = load %struct.shifts*, %struct.shifts** %97, align 8
  store %struct.shifts* %98, %struct.shifts** %6, align 8
  %99 = load %struct.shifts*, %struct.shifts** %6, align 8
  %100 = getelementptr inbounds %struct.shifts, %struct.shifts* %99, i32 0, i32 2
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  store i32 %102, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %125, %90
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load %struct.shifts*, %struct.shifts** %6, align 8
  %109 = getelementptr inbounds %struct.shifts, %struct.shifts* %108, i32 0, i32 3
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1 x i16], [1 x i16]* %109, i64 0, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = sext i16 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load i16*, i16** @accessing_symbol, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i16, i16* %115, i64 %117
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  br label %128

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %2, align 4
  br label %103

128:                                              ; preds = %123, %103
  %129 = load i32, i32* %11, align 4
  %130 = trunc i32 %129 to i16
  %131 = load i16*, i16** %16, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i16, i16* %131, i64 %134
  store i16 %130, i16* %135, align 2
  br label %136

136:                                              ; preds = %128
  %137 = load i16*, i16** %5, align 8
  %138 = getelementptr inbounds i16, i16* %137, i32 1
  store i16* %138, i16** %5, align 8
  br label %85

139:                                              ; preds = %85
  %140 = load i8*, i8** @consistent, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %11, align 4
  %148 = load i16*, i16** %4, align 8
  %149 = load i16, i16* %148, align 2
  %150 = sext i16 %149 to i32
  %151 = load i32, i32* %1, align 4
  call void @add_lookback_edge(i32 %147, i32 %150, i32 %151)
  br label %152

152:                                              ; preds = %146, %139
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %199, %152
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  br i1 %158, label %159, label %200

159:                                              ; preds = %155
  store i32 1, i32* %9, align 4
  %160 = load i16*, i16** %5, align 8
  %161 = getelementptr inbounds i16, i16* %160, i32 -1
  store i16* %161, i16** %5, align 8
  %162 = load i16*, i16** %5, align 8
  %163 = load i16*, i16** @ritem, align 8
  %164 = icmp uge i16* %162, %163
  br i1 %164, label %165, label %199

165:                                              ; preds = %159
  %166 = load i16*, i16** %5, align 8
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i32
  %169 = load i32, i32* @ntokens, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %199

171:                                              ; preds = %165
  %172 = load i16*, i16** %16, align 8
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, i16* %172, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = sext i16 %177 to i32
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i16*, i16** %5, align 8
  %181 = load i16, i16* %180, align 2
  %182 = sext i16 %181 to i32
  %183 = call i32 @map_goto(i32 %179, i32 %182)
  %184 = trunc i32 %183 to i16
  %185 = load i16*, i16** %15, align 8
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i16, i16* %185, i64 %188
  store i16 %184, i16* %189, align 2
  %190 = load i8*, i8** @nullable, align 8
  %191 = load i16*, i16** %5, align 8
  %192 = load i16, i16* %191, align 2
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = icmp ne i8 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %198

198:                                              ; preds = %197, %171
  br label %199

199:                                              ; preds = %198, %165, %159
  br label %155

200:                                              ; preds = %155
  br label %201

201:                                              ; preds = %200
  %202 = load i16*, i16** %4, align 8
  %203 = getelementptr inbounds i16, i16* %202, i32 1
  store i16* %203, i16** %4, align 8
  br label %64

204:                                              ; preds = %64
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %204
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 2
  %212 = trunc i64 %211 to i32
  %213 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %212)
  %214 = bitcast i8* %213 to i16*
  store i16* %214, i16** %14, align 8
  %215 = load i16**, i16*** @includes, align 8
  %216 = load i32, i32* %1, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i16*, i16** %215, i64 %217
  store i16* %214, i16** %218, align 8
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %233, %207
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %219
  %224 = load i16*, i16** %15, align 8
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i16, i16* %224, i64 %226
  %228 = load i16, i16* %227, align 2
  %229 = load i16*, i16** %14, align 8
  %230 = load i32, i32* %2, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i16, i16* %229, i64 %231
  store i16 %228, i16* %232, align 2
  br label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %2, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %2, align 4
  br label %219

236:                                              ; preds = %219
  %237 = load i16*, i16** %14, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i16, i16* %237, i64 %239
  store i16 -1, i16* %240, align 2
  br label %241

241:                                              ; preds = %236, %204
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %1, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %1, align 4
  br label %38

245:                                              ; preds = %38
  %246 = load i16**, i16*** @includes, align 8
  %247 = load i32, i32* @ngotos, align 4
  %248 = call i16** @transpose(i16** %246, i32 %247)
  store i16** %248, i16*** %17, align 8
  store i32 0, i32* %1, align 4
  br label %249

249:                                              ; preds = %276, %245
  %250 = load i32, i32* %1, align 4
  %251 = load i32, i32* @ngotos, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %279

253:                                              ; preds = %249
  %254 = load i16**, i16*** @includes, align 8
  %255 = load i32, i32* %1, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i16*, i16** %254, i64 %256
  %258 = load i16*, i16** %257, align 8
  %259 = icmp ne i16* %258, null
  br i1 %259, label %260, label %275

260:                                              ; preds = %253
  %261 = load i16**, i16*** @includes, align 8
  %262 = load i32, i32* %1, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i16*, i16** %261, i64 %263
  %265 = load i16*, i16** %264, align 8
  %266 = icmp ne i16* %265, null
  br i1 %266, label %267, label %274

267:                                              ; preds = %260
  %268 = load i16**, i16*** @includes, align 8
  %269 = load i32, i32* %1, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i16*, i16** %268, i64 %270
  %272 = load i16*, i16** %271, align 8
  %273 = bitcast i16* %272 to i8*
  call void @free(i8* %273) #7
  br label %274

274:                                              ; preds = %267, %260
  br label %275

275:                                              ; preds = %274, %253
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %1, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %1, align 4
  br label %249

279:                                              ; preds = %249
  %280 = load i16**, i16*** @includes, align 8
  %281 = icmp ne i16** %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i16**, i16*** @includes, align 8
  %284 = bitcast i16** %283 to i8*
  call void @free(i8* %284) #7
  br label %285

285:                                              ; preds = %282, %279
  %286 = load i16**, i16*** %17, align 8
  store i16** %286, i16*** @includes, align 8
  %287 = load i16*, i16** %15, align 8
  %288 = icmp ne i16* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load i16*, i16** %15, align 8
  %291 = bitcast i16* %290 to i8*
  call void @free(i8* %291) #7
  br label %292

292:                                              ; preds = %289, %285
  %293 = load i16*, i16** %16, align 8
  %294 = icmp ne i16* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load i16*, i16** %16, align 8
  %297 = bitcast i16* %296 to i8*
  call void @free(i8* %297) #7
  br label %298

298:                                              ; preds = %295, %292
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_FOLLOWS() #0 {
  %1 = alloca i32, align 4
  %2 = load i16**, i16*** @includes, align 8
  call void @digraph(i16** %2)
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %30, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @ngotos, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = load i16**, i16*** @includes, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16*, i16** %8, i64 %10
  %12 = load i16*, i16** %11, align 8
  %13 = icmp ne i16* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load i16**, i16*** @includes, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16*, i16** %15, i64 %17
  %19 = load i16*, i16** %18, align 8
  %20 = icmp ne i16* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i16**, i16*** @includes, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16*, i16** %22, i64 %24
  %26 = load i16*, i16** %25, align 8
  %27 = bitcast i16* %26 to i8*
  call void @free(i8* %27) #7
  br label %28

28:                                               ; preds = %21, %14
  br label %29

29:                                               ; preds = %28, %7
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %3

33:                                               ; preds = %3
  %34 = load i16**, i16*** @includes, align 8
  %35 = icmp ne i16** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i16**, i16*** @includes, align 8
  %38 = bitcast i16** %37 to i8*
  call void @free(i8* %38) #7
  br label %39

39:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_lookaheads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.shorts*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.shorts*, align 8
  %9 = load i32*, i32** @LA, align 8
  store i32* %9, i32** %7, align 8
  %10 = load i16*, i16** @lookaheads, align 8
  %11 = load i32, i32* @nstates, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16, i16* %10, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %63, %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @tokensetsize, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %5, align 8
  %25 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.shorts*, %struct.shorts** %25, i64 %27
  %29 = load %struct.shorts*, %struct.shorts** %28, align 8
  store %struct.shorts* %29, %struct.shorts** %6, align 8
  br label %30

30:                                               ; preds = %57, %20
  %31 = load %struct.shorts*, %struct.shorts** %6, align 8
  %32 = icmp ne %struct.shorts* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** @F, align 8
  %36 = load i32, i32* @tokensetsize, align 4
  %37 = load %struct.shorts*, %struct.shorts** %6, align 8
  %38 = getelementptr inbounds %struct.shorts, %struct.shorts* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 8
  %40 = sext i16 %39 to i32
  %41 = mul nsw i32 %36, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %35, i64 %42
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %48, %33
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %4, align 8
  %51 = load i32, i32* %49, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %3, align 8
  %54 = load i32, i32* %52, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %52, align 4
  br label %44

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.shorts*, %struct.shorts** %6, align 8
  %59 = getelementptr inbounds %struct.shorts, %struct.shorts* %58, i32 0, i32 0
  %60 = load %struct.shorts*, %struct.shorts** %59, align 8
  store %struct.shorts* %60, %struct.shorts** %6, align 8
  br label %30

61:                                               ; preds = %30
  %62 = load i32*, i32** %5, align 8
  store i32* %62, i32** %7, align 8
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %16

66:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.shorts*, %struct.shorts** %72, i64 %74
  %76 = load %struct.shorts*, %struct.shorts** %75, align 8
  store %struct.shorts* %76, %struct.shorts** %6, align 8
  br label %77

77:                                               ; preds = %90, %71
  %78 = load %struct.shorts*, %struct.shorts** %6, align 8
  %79 = icmp ne %struct.shorts* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.shorts*, %struct.shorts** %6, align 8
  %82 = getelementptr inbounds %struct.shorts, %struct.shorts* %81, i32 0, i32 0
  %83 = load %struct.shorts*, %struct.shorts** %82, align 8
  store %struct.shorts* %83, %struct.shorts** %8, align 8
  %84 = load %struct.shorts*, %struct.shorts** %6, align 8
  %85 = icmp ne %struct.shorts* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.shorts*, %struct.shorts** %6, align 8
  %88 = bitcast %struct.shorts* %87 to i8*
  call void @free(i8* %88) #7
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.shorts*, %struct.shorts** %8, align 8
  store %struct.shorts* %91, %struct.shorts** %6, align 8
  br label %77

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %67

96:                                               ; preds = %67
  %97 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %98 = icmp ne %struct.shorts** %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %101 = bitcast %struct.shorts** %100 to i8*
  call void @free(i8* %101) #7
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32*, i32** @F, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** @F, align 8
  %107 = bitcast i32* %106 to i8*
  call void @free(i8* %107) #7
  br label %108

108:                                              ; preds = %105, %102
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @digraph(i16** %0) #0 {
  %2 = alloca i16**, align 8
  %3 = alloca i32, align 4
  store i16** %0, i16*** %2, align 8
  %4 = load i32, i32* @ngotos, align 4
  %5 = add nsw i32 %4, 2
  store i32 %5, i32* @infinity, align 4
  %6 = load i32, i32* @ngotos, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 2
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %10)
  %12 = bitcast i8* %11 to i16*
  store i16* %12, i16** @INDEX, align 8
  %13 = load i32, i32* @ngotos, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 2
  %17 = trunc i64 %16 to i32
  %18 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %17)
  %19 = bitcast i8* %18 to i16*
  store i16* %19, i16** @VERTICES, align 8
  store i32 0, i32* @top, align 4
  %20 = load i16**, i16*** %2, align 8
  store i16** %20, i16*** @R, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %30, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ngotos, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i16*, i16** @INDEX, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  store i16 0, i16* %29, align 2
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %21

33:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ngotos, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i16*, i16** @INDEX, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i16**, i16*** @R, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16*, i16** %47, i64 %49
  %51 = load i16*, i16** %50, align 8
  %52 = icmp ne i16* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  call void @traverse(i32 %54)
  br label %55

55:                                               ; preds = %53, %46, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load i16*, i16** @INDEX, align 8
  %61 = icmp ne i16* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i16*, i16** @INDEX, align 8
  %64 = bitcast i16* %63 to i8*
  call void @free(i8* %64) #7
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i16*, i16** @VERTICES, align 8
  %67 = icmp ne i16* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i16*, i16** @VERTICES, align 8
  %70 = bitcast i16* %69 to i8*
  call void @free(i8* %70) #7
  br label %71

71:                                               ; preds = %68, %65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @traverse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = trunc i32 %10 to i16
  %12 = load i16*, i16** @VERTICES, align 8
  %13 = load i32, i32* @top, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @top, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %12, i64 %15
  store i16 %11, i16* %16, align 2
  %17 = load i32, i32* @top, align 4
  store i32 %17, i32* %8, align 4
  %18 = trunc i32 %17 to i16
  %19 = load i16*, i16** @INDEX, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  store i16 %18, i16* %22, align 2
  %23 = load i32*, i32** @F, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @tokensetsize, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @tokensetsize, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %5, align 8
  %33 = load i16**, i16*** @R, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16*, i16** %33, i64 %35
  %37 = load i16*, i16** %36, align 8
  store i16* %37, i16** %7, align 8
  %38 = load i16*, i16** %7, align 8
  %39 = icmp ne i16* %38, null
  br i1 %39, label %40, label %103

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %101, %40
  %42 = load i16*, i16** %7, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %43, i16** %7, align 8
  %44 = load i16, i16* %42, align 2
  %45 = sext i16 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %41
  %48 = load i16*, i16** @INDEX, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  call void @traverse(i32 %56)
  br label %57

57:                                               ; preds = %55, %47
  %58 = load i16*, i16** @INDEX, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %58, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = load i16*, i16** @INDEX, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %64, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = icmp sgt i32 %63, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %57
  %72 = load i16*, i16** @INDEX, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %72, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = load i16*, i16** @INDEX, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %77, i64 %79
  store i16 %76, i16* %80, align 2
  br label %81

81:                                               ; preds = %71, %57
  %82 = load i32*, i32** %9, align 8
  store i32* %82, i32** %3, align 8
  %83 = load i32*, i32** @F, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @tokensetsize, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32* %88, i32** %4, align 8
  br label %89

89:                                               ; preds = %93, %81
  %90 = load i32*, i32** %3, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = icmp ult i32* %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %4, align 8
  %96 = load i32, i32* %94, align 4
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %3, align 8
  %99 = load i32, i32* %97, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %97, align 4
  br label %89

101:                                              ; preds = %89
  br label %41

102:                                              ; preds = %41
  br label %103

103:                                              ; preds = %102, %1
  %104 = load i16*, i16** @INDEX, align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i16, i16* %104, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %149, %112
  %114 = load i16*, i16** @VERTICES, align 8
  %115 = load i32, i32* @top, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* @top, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i16, i16* %114, i64 %117
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @infinity, align 4
  %122 = trunc i32 %121 to i16
  %123 = load i16*, i16** @INDEX, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, i16* %123, i64 %125
  store i16 %122, i16* %126, align 2
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %113
  br label %150

131:                                              ; preds = %113
  %132 = load i32*, i32** %9, align 8
  store i32* %132, i32** %3, align 8
  %133 = load i32*, i32** @F, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @tokensetsize, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  store i32* %138, i32** %4, align 8
  br label %139

139:                                              ; preds = %143, %131
  %140 = load i32*, i32** %3, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = icmp ult i32* %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32*, i32** %3, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %3, align 8
  %146 = load i32, i32* %144, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %4, align 8
  store i32 %146, i32* %147, align 4
  br label %139

149:                                              ; preds = %139
  br label %113

150:                                              ; preds = %130
  br label %151

151:                                              ; preds = %150, %103
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_lookback_edge(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.shorts*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i16*, i16** @lookaheads, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %11, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i16*, i16** @lookaheads, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %17, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %46, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load i16*, i16** @LAruleno, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %24

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @berror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.91, i64 0, i64 0))
  br label %51

51:                                               ; preds = %50, %47
  %52 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 16)
  %53 = bitcast i8* %52 to %struct.shorts*
  store %struct.shorts* %53, %struct.shorts** %10, align 8
  %54 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.shorts*, %struct.shorts** %54, i64 %56
  %58 = load %struct.shorts*, %struct.shorts** %57, align 8
  %59 = load %struct.shorts*, %struct.shorts** %10, align 8
  %60 = getelementptr inbounds %struct.shorts, %struct.shorts* %59, i32 0, i32 0
  store %struct.shorts* %58, %struct.shorts** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = trunc i32 %61 to i16
  %63 = load %struct.shorts*, %struct.shorts** %10, align 8
  %64 = getelementptr inbounds %struct.shorts, %struct.shorts* %63, i32 0, i32 1
  store i16 %62, i16* %64, align 8
  %65 = load %struct.shorts*, %struct.shorts** %10, align 8
  %66 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.shorts*, %struct.shorts** %66, i64 %68
  store %struct.shorts* %65, %struct.shorts** %69, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @map_goto(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i16*, i16** @goto_map, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16, i16* %10, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i16*, i16** @goto_map, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %16, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %54, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %8, align 4
  %32 = load i16*, i16** @from_state, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %27
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53
  br label %23

55:                                               ; preds = %23
  call void @berror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.90, i64 0, i64 0))
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i16** @transpose(i16** %0, i32 %1) #0 {
  %3 = alloca i16**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16**, align 8
  %6 = alloca i16**, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i16** %0, i16*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 2
  %14 = trunc i64 %13 to i32
  %15 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %14)
  %16 = bitcast i8* %15 to i16*
  store i16* %16, i16** %7, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %46, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i16**, i16*** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16*, i16** %22, i64 %24
  %26 = load i16*, i16** %25, align 8
  store i16* %26, i16** %8, align 8
  %27 = load i16*, i16** %8, align 8
  %28 = icmp ne i16* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i16*, i16** %8, align 8
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i16*, i16** %7, align 8
  %37 = load i16*, i16** %8, align 8
  %38 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %38, i16** %8, align 8
  %39 = load i16, i16* %37, align 2
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i16, i16* %36, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = add i16 %42, 1
  store i16 %43, i16* %41, align 2
  br label %30

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %21
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %17

49:                                               ; preds = %17
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %53)
  %55 = bitcast i8* %54 to i16**
  store i16** %55, i16*** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %59)
  %61 = bitcast i8* %60 to i16**
  store i16** %61, i16*** %6, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %98, %49
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %62
  %67 = load i16*, i16** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %67, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 2
  %80 = trunc i64 %79 to i32
  %81 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %80)
  %82 = bitcast i8* %81 to i16*
  store i16* %82, i16** %8, align 8
  %83 = load i16*, i16** %8, align 8
  %84 = load i16**, i16*** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16*, i16** %84, i64 %86
  store i16* %83, i16** %87, align 8
  %88 = load i16*, i16** %8, align 8
  %89 = load i16**, i16*** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16*, i16** %89, i64 %91
  store i16* %88, i16** %92, align 8
  %93 = load i16*, i16** %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %93, i64 %95
  store i16 -1, i16* %96, align 2
  br label %97

97:                                               ; preds = %75, %66
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %62

101:                                              ; preds = %62
  %102 = load i16*, i16** %7, align 8
  %103 = icmp ne i16* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i16*, i16** %7, align 8
  %106 = bitcast i16* %105 to i8*
  call void @free(i8* %106) #7
  br label %107

107:                                              ; preds = %104, %101
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %139, %107
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load i16**, i16*** %3, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16*, i16** %113, i64 %115
  %117 = load i16*, i16** %116, align 8
  store i16* %117, i16** %8, align 8
  %118 = load i16*, i16** %8, align 8
  %119 = icmp ne i16* %118, null
  br i1 %119, label %120, label %138

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %126, %120
  %122 = load i16*, i16** %8, align 8
  %123 = load i16, i16* %122, align 2
  %124 = sext i16 %123 to i32
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load i32, i32* %9, align 4
  %128 = trunc i32 %127 to i16
  %129 = load i16**, i16*** %6, align 8
  %130 = load i16*, i16** %8, align 8
  %131 = getelementptr inbounds i16, i16* %130, i32 1
  store i16* %131, i16** %8, align 8
  %132 = load i16, i16* %130, align 2
  %133 = sext i16 %132 to i64
  %134 = getelementptr inbounds i16*, i16** %129, i64 %133
  %135 = load i16*, i16** %134, align 8
  %136 = getelementptr inbounds i16, i16* %135, i32 1
  store i16* %136, i16** %134, align 8
  store i16 %128, i16* %135, align 2
  br label %121

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %112
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %108

142:                                              ; preds = %108
  %143 = load i16**, i16*** %6, align 8
  %144 = icmp ne i16** %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i16**, i16*** %6, align 8
  %147 = bitcast i16** %146 to i8*
  call void @free(i8* %147) #7
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i16**, i16*** %5, align 8
  ret i16** %149
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_lex() #0 {
  store i32 -1, i32* @unlexed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @skip_white_space() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %4 = call i32 @getc(%struct._IO_FILE* %3)
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %64, %0
  %6 = load i32, i32* %1, align 4
  switch i32 %6, label %62 [
    i32 47, label %7
    i32 10, label %56
    i32 32, label %59
    i32 9, label %59
    i32 12, label %59
  ]

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %9 = call i32 @getc(%struct._IO_FILE* %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 42
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* %1, align 4
  call void @fatals(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i64 0, i64 0), i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %14

14:                                               ; preds = %12, %7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %16 = call i32 @getc(%struct._IO_FILE* %15)
  store i32 %16, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %54, %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %29 = call i32 @getc(%struct._IO_FILE* %28)
  store i32 %29, i32* %1, align 4
  br label %24

30:                                               ; preds = %24
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %35 = call i32 @getc(%struct._IO_FILE* %34)
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %54

37:                                               ; preds = %20
  %38 = load i32, i32* %1, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @lineno, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @lineno, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %44 = call i32 @getc(%struct._IO_FILE* %43)
  store i32 %44, i32* %1, align 4
  br label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.94, i64 0, i64 0))
  br label %52

49:                                               ; preds = %45
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %51 = call i32 @getc(%struct._IO_FILE* %50)
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %36
  br label %17

55:                                               ; preds = %17
  br label %64

56:                                               ; preds = %5
  %57 = load i32, i32* @lineno, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @lineno, align 4
  br label %59

59:                                               ; preds = %56, %5, %5, %5
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %61 = call i32 @getc(%struct._IO_FILE* %60)
  store i32 %61, i32* %1, align 4
  br label %64

62:                                               ; preds = %5
  %63 = load i32, i32* %1, align 4
  ret i32 %63

64:                                               ; preds = %59, %55
  br label %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unlex(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @unlexed, align 4
  %4 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %4, %struct.bucket** @unlexed_symval, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @unlexed, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.bucket*, %struct.bucket** @unlexed_symval, align 8
  store %struct.bucket* %8, %struct.bucket** @symval, align 8
  %9 = load i32, i32* @unlexed, align 4
  store i32 %9, i32* %2, align 4
  store i32 -1, i32* @unlexed, align 4
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %342

11:                                               ; preds = %0
  %12 = call i32 @skip_white_space()
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %341 [
    i32 -1, label %14
    i32 65, label %15
    i32 66, label %15
    i32 67, label %15
    i32 68, label %15
    i32 69, label %15
    i32 70, label %15
    i32 71, label %15
    i32 72, label %15
    i32 73, label %15
    i32 74, label %15
    i32 75, label %15
    i32 76, label %15
    i32 77, label %15
    i32 78, label %15
    i32 79, label %15
    i32 80, label %15
    i32 81, label %15
    i32 82, label %15
    i32 83, label %15
    i32 84, label %15
    i32 85, label %15
    i32 86, label %15
    i32 87, label %15
    i32 88, label %15
    i32 89, label %15
    i32 90, label %15
    i32 97, label %15
    i32 98, label %15
    i32 99, label %15
    i32 100, label %15
    i32 101, label %15
    i32 102, label %15
    i32 103, label %15
    i32 104, label %15
    i32 105, label %15
    i32 106, label %15
    i32 107, label %15
    i32 108, label %15
    i32 109, label %15
    i32 110, label %15
    i32 111, label %15
    i32 112, label %15
    i32 113, label %15
    i32 114, label %15
    i32 115, label %15
    i32 116, label %15
    i32 117, label %15
    i32 118, label %15
    i32 119, label %15
    i32 120, label %15
    i32 121, label %15
    i32 122, label %15
    i32 46, label %15
    i32 95, label %15
    i32 48, label %51
    i32 49, label %51
    i32 50, label %51
    i32 51, label %51
    i32 52, label %51
    i32 53, label %51
    i32 54, label %51
    i32 55, label %51
    i32 56, label %51
    i32 57, label %51
    i32 39, label %74
    i32 44, label %279
    i32 58, label %280
    i32 59, label %281
    i32 124, label %282
    i32 123, label %283
    i32 61, label %284
    i32 60, label %313
    i32 37, label %339
  ]

14:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %342

15:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  br label %16

16:                                               ; preds = %42, %15
  %17 = call i16** @__ctype_b_loc() #10
  %18 = load i16*, i16** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 95
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 46
  br label %32

32:                                               ; preds = %29, %26, %16
  %33 = phi i1 [ true, %26 ], [ true, %16 ], [ %31, %29 ]
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ult i8* %35, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1024)
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 %39, i8* %40, align 1
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %44 = call i32 @getc(%struct._IO_FILE* %43)
  store i32 %44, i32* %2, align 4
  br label %16

45:                                               ; preds = %32
  %46 = load i8*, i8** %3, align 8
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %2, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %49 = call i32 @ungetc(i32 %47, %struct._IO_FILE* %48)
  %50 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (i8*)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0))
  store %struct.bucket* %50, %struct.bucket** @symval, align 8
  store i32 1, i32* %1, align 4
  br label %342

51:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  store i32 0, i32* @numval, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = call i16** @__ctype_b_loc() #10
  %54 = load i16*, i16** %53, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 2048
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load i32, i32* @numval, align 4
  %64 = mul nsw i32 %63, 10
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 48
  store i32 %67, i32* @numval, align 4
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %69 = call i32 @getc(%struct._IO_FILE* %68)
  store i32 %69, i32* %2, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32, i32* %2, align 4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %73 = call i32 @ungetc(i32 %71, %struct._IO_FILE* %72)
  store i32 22, i32* %1, align 4
  br label %342

74:                                               ; preds = %11
  store i32 -1, i32* @translations, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %76 = call i32 @getc(%struct._IO_FILE* %75)
  store i32 %76, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %77, 92
  br i1 %78, label %79, label %158

79:                                               ; preds = %74
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %81 = call i32 @getc(%struct._IO_FILE* %80)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = icmp sle i32 %82, 55
  br i1 %83, label %84, label %113

84:                                               ; preds = %79
  %85 = load i32, i32* %2, align 4
  %86 = icmp sge i32 %85, 48
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %96, %87
  %89 = load i32, i32* %2, align 4
  %90 = icmp sle i32 %89, 55
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %2, align 4
  %93 = icmp sge i32 %92, 48
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i1 [ false, %88 ], [ %93, %91 ]
  br i1 %95, label %96, label %104

96:                                               ; preds = %94
  %97 = load i32, i32* %4, align 4
  %98 = mul nsw i32 %97, 8
  %99 = load i32, i32* %2, align 4
  %100 = sub nsw i32 %99, 48
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %4, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %103 = call i32 @getc(%struct._IO_FILE* %102)
  store i32 %103, i32* %2, align 4
  br label %88

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %105, 128
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %4, align 4
  call void @fatals(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2.95, i64 0, i64 0), i32 %111, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %112

112:                                              ; preds = %110, %107
  br label %157

113:                                              ; preds = %84, %79
  %114 = load i32, i32* %2, align 4
  %115 = icmp eq i32 %114, 116
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 9, i32* %4, align 4
  br label %154

117:                                              ; preds = %113
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %118, 110
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 10, i32* %4, align 4
  br label %153

121:                                              ; preds = %117
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 %122, 114
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 13, i32* %4, align 4
  br label %152

125:                                              ; preds = %121
  %126 = load i32, i32* %2, align 4
  %127 = icmp eq i32 %126, 102
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 12, i32* %4, align 4
  br label %151

129:                                              ; preds = %125
  %130 = load i32, i32* %2, align 4
  %131 = icmp eq i32 %130, 98
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 8, i32* %4, align 4
  br label %150

133:                                              ; preds = %129
  %134 = load i32, i32* %2, align 4
  %135 = icmp eq i32 %134, 92
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 92, i32* %4, align 4
  br label %149

137:                                              ; preds = %133
  %138 = load i32, i32* %2, align 4
  %139 = icmp eq i32 %138, 39
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 39, i32* %4, align 4
  br label %148

141:                                              ; preds = %137
  %142 = load i32, i32* %2, align 4
  %143 = icmp eq i32 %142, 34
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 34, i32* %4, align 4
  br label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %2, align 4
  call void @fatals(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.96, i64 0, i64 0), i32 %146, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %147

147:                                              ; preds = %145, %144
  br label %148

148:                                              ; preds = %147, %140
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %132
  br label %151

151:                                              ; preds = %150, %128
  br label %152

152:                                              ; preds = %151, %124
  br label %153

153:                                              ; preds = %152, %120
  br label %154

154:                                              ; preds = %153, %116
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %156 = call i32 @getc(%struct._IO_FILE* %155)
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %112
  br label %162

158:                                              ; preds = %74
  %159 = load i32, i32* %2, align 4
  store i32 %159, i32* %4, align 4
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %161 = call i32 @getc(%struct._IO_FILE* %160)
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %157
  %163 = load i32, i32* %2, align 4
  %164 = icmp ne i32 %163, 39
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  call void @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4.97, i64 0, i64 0))
  br label %166

166:                                              ; preds = %165, %162
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  %167 = load i8*, i8** %3, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %3, align 8
  store i8 39, i8* %167, align 1
  %169 = load i32, i32* %4, align 4
  %170 = icmp eq i32 %169, 92
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %3, align 8
  store i8 92, i8* %172, align 1
  %174 = load i8*, i8** %3, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %3, align 8
  store i8 92, i8* %174, align 1
  br label %262

176:                                              ; preds = %166
  %177 = load i32, i32* %4, align 4
  %178 = icmp eq i32 %177, 39
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %3, align 8
  store i8 92, i8* %180, align 1
  %182 = load i8*, i8** %3, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %3, align 8
  store i8 39, i8* %182, align 1
  br label %261

184:                                              ; preds = %176
  %185 = load i32, i32* %4, align 4
  %186 = icmp sge i32 %185, 32
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 127
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i32, i32* %4, align 4
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %3, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %3, align 8
  store i8 %192, i8* %193, align 1
  br label %260

195:                                              ; preds = %187, %184
  %196 = load i32, i32* %4, align 4
  %197 = icmp eq i32 %196, 9
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %199 = load i8*, i8** %3, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %3, align 8
  store i8 92, i8* %199, align 1
  %201 = load i8*, i8** %3, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %3, align 8
  store i8 116, i8* %201, align 1
  br label %259

203:                                              ; preds = %195
  %204 = load i32, i32* %4, align 4
  %205 = icmp eq i32 %204, 10
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %207 = load i8*, i8** %3, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %3, align 8
  store i8 92, i8* %207, align 1
  %209 = load i8*, i8** %3, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %3, align 8
  store i8 110, i8* %209, align 1
  br label %258

211:                                              ; preds = %203
  %212 = load i32, i32* %4, align 4
  %213 = icmp eq i32 %212, 13
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %215 = load i8*, i8** %3, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %3, align 8
  store i8 92, i8* %215, align 1
  %217 = load i8*, i8** %3, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %3, align 8
  store i8 114, i8* %217, align 1
  br label %257

219:                                              ; preds = %211
  %220 = load i32, i32* %4, align 4
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %223 = load i8*, i8** %3, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %3, align 8
  store i8 92, i8* %223, align 1
  %225 = load i8*, i8** %3, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %3, align 8
  store i8 98, i8* %225, align 1
  br label %256

227:                                              ; preds = %219
  %228 = load i32, i32* %4, align 4
  %229 = icmp eq i32 %228, 12
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1), i8** %3, align 8
  %231 = load i8*, i8** %3, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %3, align 8
  store i8 92, i8* %231, align 1
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %3, align 8
  store i8 102, i8* %233, align 1
  br label %255

235:                                              ; preds = %227
  %236 = load i32, i32* %4, align 4
  %237 = sdiv i32 %236, 64
  %238 = add nsw i32 %237, 48
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %3, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %3, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i32, i32* %4, align 4
  %243 = sdiv i32 %242, 8
  %244 = and i32 %243, 7
  %245 = add nsw i32 %244, 48
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %3, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %3, align 8
  store i8 %246, i8* %247, align 1
  %249 = load i32, i32* %4, align 4
  %250 = and i32 %249, 7
  %251 = add nsw i32 %250, 48
  %252 = trunc i32 %251 to i8
  %253 = load i8*, i8** %3, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %3, align 8
  store i8 %252, i8* %253, align 1
  br label %255

255:                                              ; preds = %235, %230
  br label %256

256:                                              ; preds = %255, %222
  br label %257

257:                                              ; preds = %256, %214
  br label %258

258:                                              ; preds = %257, %206
  br label %259

259:                                              ; preds = %258, %198
  br label %260

260:                                              ; preds = %259, %190
  br label %261

261:                                              ; preds = %260, %179
  br label %262

262:                                              ; preds = %261, %171
  %263 = load i8*, i8** %3, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %3, align 8
  store i8 39, i8* %263, align 1
  %265 = load i8*, i8** %3, align 8
  store i8 0, i8* %265, align 1
  %266 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (i8*)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0))
  store %struct.bucket* %266, %struct.bucket** @symval, align 8
  %267 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %268 = getelementptr inbounds %struct.bucket, %struct.bucket* %267, i32 0, i32 8
  store i8 1, i8* %268, align 8
  %269 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %270 = getelementptr inbounds %struct.bucket, %struct.bucket* %269, i32 0, i32 7
  %271 = load i16, i16* %270, align 2
  %272 = icmp ne i16 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %262
  %274 = load i32, i32* %4, align 4
  %275 = trunc i32 %274 to i16
  %276 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %277 = getelementptr inbounds %struct.bucket, %struct.bucket* %276, i32 0, i32 7
  store i16 %275, i16* %277, align 2
  br label %278

278:                                              ; preds = %273, %262
  store i32 1, i32* %1, align 4
  br label %342

279:                                              ; preds = %11
  store i32 2, i32* %1, align 4
  br label %342

280:                                              ; preds = %11
  store i32 3, i32* %1, align 4
  br label %342

281:                                              ; preds = %11
  store i32 4, i32* %1, align 4
  br label %342

282:                                              ; preds = %11
  store i32 5, i32* %1, align 4
  br label %342

283:                                              ; preds = %11
  store i32 6, i32* %1, align 4
  br label %342

284:                                              ; preds = %11
  br label %285

285:                                              ; preds = %303, %284
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %287 = call i32 @getc(%struct._IO_FILE* %286)
  store i32 %287, i32* %2, align 4
  %288 = load i32, i32* %2, align 4
  %289 = icmp eq i32 %288, 10
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load i32, i32* @lineno, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* @lineno, align 4
  br label %293

293:                                              ; preds = %290, %285
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %2, align 4
  %296 = icmp eq i32 %295, 32
  br i1 %296, label %303, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %2, align 4
  %299 = icmp eq i32 %298, 10
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %2, align 4
  %302 = icmp eq i32 %301, 9
  br label %303

303:                                              ; preds = %300, %297, %294
  %304 = phi i1 [ true, %297 ], [ true, %294 ], [ %302, %300 ]
  br i1 %304, label %285, label %305

305:                                              ; preds = %303
  %306 = load i32, i32* %2, align 4
  %307 = icmp eq i32 %306, 123
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i32 6, i32* %1, align 4
  br label %342

309:                                              ; preds = %305
  %310 = load i32, i32* %2, align 4
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %312 = call i32 @ungetc(i32 %310, %struct._IO_FILE* %311)
  store i32 24, i32* %1, align 4
  br label %342

313:                                              ; preds = %11
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %315 = call i32 @getc(%struct._IO_FILE* %314)
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %330, %313
  %317 = load i32, i32* %2, align 4
  %318 = icmp ne i32 %317, 62
  br i1 %318, label %319, label %337

319:                                              ; preds = %316
  %320 = load i32, i32* %2, align 4
  %321 = icmp eq i32 %320, 10
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %2, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %326

325:                                              ; preds = %322, %319
  call void @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.98, i64 0, i64 0))
  br label %326

326:                                              ; preds = %325, %322
  %327 = load i8*, i8** %3, align 8
  %328 = icmp uge i8* %327, getelementptr inbounds (i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1024), i64 -1)
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  call void @fatals(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.99, i64 0, i64 0), i32 1023, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %330

330:                                              ; preds = %329, %326
  %331 = load i32, i32* %2, align 4
  %332 = trunc i32 %331 to i8
  %333 = load i8*, i8** %3, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %3, align 8
  store i8 %332, i8* %333, align 1
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %336 = call i32 @getc(%struct._IO_FILE* %335)
  store i32 %336, i32* %2, align 4
  br label %316

337:                                              ; preds = %316
  %338 = load i8*, i8** %3, align 8
  store i8 0, i8* %338, align 1
  store i32 21, i32* %1, align 4
  br label %342

339:                                              ; preds = %11
  %340 = call i32 @parse_percent_token()
  store i32 %340, i32* %1, align 4
  br label %342

341:                                              ; preds = %11
  store i32 24, i32* %1, align 4
  br label %342

342:                                              ; preds = %341, %339, %337, %309, %308, %283, %282, %281, %280, %279, %278, %70, %45, %14, %7
  %343 = load i32, i32* %1, align 4
  ret i32 %343
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_percent_token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %5 = call i32 @getc(%struct._IO_FILE* %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %14 [
    i32 37, label %7
    i32 123, label %8
    i32 60, label %9
    i32 62, label %10
    i32 50, label %11
    i32 48, label %12
    i32 61, label %13
  ]

7:                                                ; preds = %0
  store i32 7, i32* %1, align 4
  br label %115

8:                                                ; preds = %0
  store i32 8, i32* %1, align 4
  br label %115

9:                                                ; preds = %0
  store i32 15, i32* %1, align 4
  br label %115

10:                                               ; preds = %0
  store i32 16, i32* %1, align 4
  br label %115

11:                                               ; preds = %0
  store i32 17, i32* %1, align 4
  br label %115

12:                                               ; preds = %0
  store i32 9, i32* %1, align 4
  br label %115

13:                                               ; preds = %0
  store i32 18, i32* %1, align 4
  br label %115

14:                                               ; preds = %0
  %15 = call i16** @__ctype_b_loc() #10
  %16 = load i16*, i16** %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1024
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 24, i32* %1, align 4
  br label %115

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %49, %25
  %27 = call i16** @__ctype_b_loc() #10
  %28 = load i16*, i16** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 1024
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 95
  br label %39

39:                                               ; preds = %36, %26
  %40 = phi i1 [ true, %26 ], [ %38, %36 ]
  br i1 %40, label %41, label %52

41:                                               ; preds = %39
  %42 = load i8*, i8** %3, align 8
  %43 = icmp ult i8* %42, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 1024)
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %51 = call i32 @getc(%struct._IO_FILE* %50)
  store i32 %51, i32* %2, align 4
  br label %26

52:                                               ; preds = %39
  %53 = load i32, i32* %2, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %55 = call i32 @ungetc(i32 %53, %struct._IO_FILE* %54)
  %56 = load i8*, i8** %3, align 8
  store i8 0, i8* %56, align 1
  %57 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.100, i64 0, i64 0)) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.101, i64 0, i64 0)) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %52
  store i32 9, i32* %1, align 4
  br label %115

63:                                               ; preds = %59
  %64 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.102, i64 0, i64 0)) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 10, i32* %1, align 4
  br label %115

67:                                               ; preds = %63
  %68 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.103, i64 0, i64 0)) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 12, i32* %1, align 4
  br label %115

71:                                               ; preds = %67
  %72 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.104, i64 0, i64 0)) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 11, i32* %1, align 4
  br label %115

75:                                               ; preds = %71
  %76 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12.105, i64 0, i64 0)) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 13, i32* %1, align 4
  br label %115

79:                                               ; preds = %75
  %80 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.106, i64 0, i64 0)) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 23, i32* %1, align 4
  br label %115

83:                                               ; preds = %79
  %84 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.107, i64 0, i64 0)) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 14, i32* %1, align 4
  br label %115

87:                                               ; preds = %83
  %88 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15.108, i64 0, i64 0)) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 15, i32* %1, align 4
  br label %115

91:                                               ; preds = %87
  %92 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16.109, i64 0, i64 0)) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 16, i32* %1, align 4
  br label %115

95:                                               ; preds = %91
  %96 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17.110, i64 0, i64 0)) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %95
  store i32 17, i32* %1, align 4
  br label %115

102:                                              ; preds = %98
  %103 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 19, i32* %1, align 4
  br label %115

106:                                              ; preds = %102
  %107 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 20, i32* %1, align 4
  br label %115

110:                                              ; preds = %106
  %111 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 18, i32* %1, align 4
  br label %115

114:                                              ; preds = %110
  store i32 24, i32* %1, align 4
  br label %115

115:                                              ; preds = %114, %113, %109, %105, %101, %94, %90, %86, %82, %78, %74, %70, %66, %62, %24, %13, %12, %11, %10, %9, %8, %7
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @allocate_itemsets() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @nsyms, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 2
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %10)
  %12 = bitcast i8* %11 to i16*
  store i16* %12, i16** %6, align 8
  %13 = load i16*, i16** @ritem, align 8
  store i16* %13, i16** %1, align 8
  %14 = load i16*, i16** %1, align 8
  %15 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %15, i16** %1, align 8
  %16 = load i16, i16* %14, align 2
  %17 = sext i16 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %33, %0
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i16*, i16** %6, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = add i16 %31, 1
  store i16 %32, i16* %30, align 2
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i16*, i16** %1, align 8
  %35 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %35, i16** %1, align 8
  %36 = load i16, i16* %34, align 2
  %37 = sext i16 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* @nsyms, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %42)
  %44 = bitcast i8* %43 to i16**
  store i16** %44, i16*** @kernel_base, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %48)
  %50 = bitcast i8* %49 to i16*
  store i16* %50, i16** @kernel_items, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %88, %38
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @nsyms, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load i16*, i16** @kernel_items, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  %60 = load i16**, i16*** @kernel_base, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16*, i16** %60, i64 %62
  store i16* %59, i16** %63, align 8
  %64 = load i16*, i16** %6, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %64, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i16*, i16** %6, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = icmp slt i32 %72, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %55
  %81 = load i16*, i16** %6, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %81, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %80, %55
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %51

91:                                               ; preds = %51
  %92 = load i16*, i16** %6, align 8
  store i16* %92, i16** @shift_symbol, align 8
  %93 = load i32, i32* @nsyms, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %96)
  %98 = bitcast i8* %97 to i16**
  store i16** %98, i16*** @kernel_end, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @allocate_storage() #0 {
  call void @allocate_itemsets()
  %1 = load i32, i32* @nsyms, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 2
  %4 = trunc i64 %3 to i32
  %5 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %4)
  %6 = bitcast i8* %5 to i16*
  store i16* %6, i16** @shiftset.119, align 8
  %7 = load i32, i32* @nrules, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 2
  %11 = trunc i64 %10 to i32
  %12 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %11)
  %13 = bitcast i8* %12 to i16*
  store i16* %13, i16** @redset, align 8
  %14 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 8072)
  %15 = bitcast i8* %14 to %struct.core**
  store %struct.core** %15, %struct.core*** @state_table.120, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_storage() #0 {
  %1 = load i16*, i16** @shift_symbol, align 8
  %2 = icmp ne i16* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i16*, i16** @shift_symbol, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #7
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i16*, i16** @redset, align 8
  %8 = icmp ne i16* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i16*, i16** @redset, align 8
  %11 = bitcast i16* %10 to i8*
  call void @free(i8* %11) #7
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i16*, i16** @shiftset.119, align 8
  %14 = icmp ne i16* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i16*, i16** @shiftset.119, align 8
  %17 = bitcast i16* %16 to i8*
  call void @free(i8* %17) #7
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i16**, i16*** @kernel_base, align 8
  %20 = icmp ne i16** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i16**, i16*** @kernel_base, align 8
  %23 = bitcast i16** %22 to i8*
  call void @free(i8* %23) #7
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i16**, i16*** @kernel_end, align 8
  %26 = icmp ne i16** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i16**, i16*** @kernel_end, align 8
  %29 = bitcast i16** %28 to i8*
  call void @free(i8* %29) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i16*, i16** @kernel_items, align 8
  %32 = icmp ne i16* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i16*, i16** @kernel_items, align 8
  %35 = bitcast i16* %34 to i8*
  call void @free(i8* %35) #7
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.core**, %struct.core*** @state_table.120, align 8
  %38 = icmp ne %struct.core** %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.core**, %struct.core*** @state_table.120, align 8
  %41 = bitcast %struct.core** %40 to i8*
  call void @free(i8* %41) #7
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_states() #0 {
  call void @allocate_storage()
  %1 = load i32, i32* @nitems, align 4
  call void @initialize_closure(i32 %1)
  call void @initialize_states()
  br label %2

2:                                                ; preds = %16, %0
  %3 = load %struct.core*, %struct.core** @this_state, align 8
  %4 = icmp ne %struct.core* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load %struct.core*, %struct.core** @this_state, align 8
  %7 = getelementptr inbounds %struct.core, %struct.core* %6, i32 0, i32 5
  %8 = getelementptr inbounds [1 x i16], [1 x i16]* %7, i64 0, i64 0
  %9 = load %struct.core*, %struct.core** @this_state, align 8
  %10 = getelementptr inbounds %struct.core, %struct.core* %9, i32 0, i32 4
  %11 = load i16, i16* %10, align 4
  %12 = sext i16 %11 to i32
  call void @closure(i16* %8, i32 %12)
  call void @save_reductions()
  call void @new_itemsets()
  call void @append_states()
  %13 = load i32, i32* @nshifts, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  call void @save_shifts()
  br label %16

16:                                               ; preds = %15, %5
  %17 = load %struct.core*, %struct.core** @this_state, align 8
  %18 = getelementptr inbounds %struct.core, %struct.core* %17, i32 0, i32 0
  %19 = load %struct.core*, %struct.core** %18, align 8
  store %struct.core* %19, %struct.core** @this_state, align 8
  br label %2

20:                                               ; preds = %2
  call void @finalize_closure()
  call void @free_storage()
  call void @augment_automaton()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_states() #0 {
  %1 = alloca %struct.core*, align 8
  %2 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 22)
  %3 = bitcast i8* %2 to %struct.core*
  store %struct.core* %3, %struct.core** %1, align 8
  %4 = load %struct.core*, %struct.core** %1, align 8
  store %struct.core* %4, %struct.core** @this_state, align 8
  store %struct.core* %4, %struct.core** @last_state, align 8
  store %struct.core* %4, %struct.core** @first_state, align 8
  store i32 1, i32* @nstates, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_reductions() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reductions*, align 8
  %7 = alloca i16*, align 8
  store i32 0, i32* %5, align 4
  %8 = load i16*, i16** @itemset, align 8
  store i16* %8, i16** %1, align 8
  br label %9

9:                                                ; preds = %33, %0
  %10 = load i16*, i16** %1, align 8
  %11 = load i16*, i16** @itemsetend, align 8
  %12 = icmp ult i16* %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i16*, i16** @ritem, align 8
  %15 = load i16*, i16** %1, align 8
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds i16, i16* %14, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 0, %24
  %26 = trunc i32 %25 to i16
  %27 = load i16*, i16** @redset, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i16, i16* %27, i64 %30
  store i16 %26, i16* %31, align 2
  br label %32

32:                                               ; preds = %23, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i16*, i16** %1, align 8
  %35 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %35, i16** %1, align 8
  br label %9

36:                                               ; preds = %9
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 2
  %44 = add i64 16, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %45)
  %47 = bitcast i8* %46 to %struct.reductions*
  store %struct.reductions* %47, %struct.reductions** %6, align 8
  %48 = load %struct.core*, %struct.core** @this_state, align 8
  %49 = getelementptr inbounds %struct.core, %struct.core* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 8
  %51 = load %struct.reductions*, %struct.reductions** %6, align 8
  %52 = getelementptr inbounds %struct.reductions, %struct.reductions* %51, i32 0, i32 1
  store i16 %50, i16* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = trunc i32 %53 to i16
  %55 = load %struct.reductions*, %struct.reductions** %6, align 8
  %56 = getelementptr inbounds %struct.reductions, %struct.reductions* %55, i32 0, i32 2
  store i16 %54, i16* %56, align 2
  %57 = load i16*, i16** @redset, align 8
  store i16* %57, i16** %2, align 8
  %58 = load %struct.reductions*, %struct.reductions** %6, align 8
  %59 = getelementptr inbounds %struct.reductions, %struct.reductions* %58, i32 0, i32 3
  %60 = getelementptr inbounds [1 x i16], [1 x i16]* %59, i64 0, i64 0
  store i16* %60, i16** %3, align 8
  %61 = load i16*, i16** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %61, i64 %63
  store i16* %64, i16** %7, align 8
  br label %65

65:                                               ; preds = %69, %39
  %66 = load i16*, i16** %2, align 8
  %67 = load i16*, i16** %7, align 8
  %68 = icmp ult i16* %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i16*, i16** %2, align 8
  %71 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %71, i16** %2, align 8
  %72 = load i16, i16* %70, align 2
  %73 = load i16*, i16** %3, align 8
  %74 = getelementptr inbounds i16, i16* %73, i32 1
  store i16* %74, i16** %3, align 8
  store i16 %72, i16* %73, align 2
  br label %65

75:                                               ; preds = %65
  %76 = load %struct.reductions*, %struct.reductions** @last_reduction, align 8
  %77 = icmp ne %struct.reductions* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.reductions*, %struct.reductions** %6, align 8
  %80 = load %struct.reductions*, %struct.reductions** @last_reduction, align 8
  %81 = getelementptr inbounds %struct.reductions, %struct.reductions* %80, i32 0, i32 0
  store %struct.reductions* %79, %struct.reductions** %81, align 8
  %82 = load %struct.reductions*, %struct.reductions** %6, align 8
  store %struct.reductions* %82, %struct.reductions** @last_reduction, align 8
  br label %86

83:                                               ; preds = %75
  %84 = load %struct.reductions*, %struct.reductions** %6, align 8
  store %struct.reductions* %84, %struct.reductions** @first_reduction, align 8
  %85 = load %struct.reductions*, %struct.reductions** %6, align 8
  store %struct.reductions* %85, %struct.reductions** @last_reduction, align 8
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @new_itemsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @nsyms, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i16**, i16*** @kernel_end, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16*, i16** %11, i64 %13
  store i16* null, i16** %14, align 8
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %6

18:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  %19 = load i16*, i16** @itemset, align 8
  store i16* %19, i16** %3, align 8
  br label %20

20:                                               ; preds = %69, %18
  %21 = load i16*, i16** %3, align 8
  %22 = load i16*, i16** @itemsetend, align 8
  %23 = icmp ult i16* %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  %25 = load i16*, i16** %3, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %3, align 8
  %27 = load i16, i16* %25, align 2
  %28 = sext i16 %27 to i32
  store i32 %28, i32* %1, align 4
  %29 = load i16*, i16** @ritem, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %24
  %38 = load i16**, i16*** @kernel_end, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16*, i16** %38, i64 %40
  %42 = load i16*, i16** %41, align 8
  store i16* %42, i16** %4, align 8
  %43 = load i16*, i16** %4, align 8
  %44 = icmp ne i16* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = trunc i32 %46 to i16
  %48 = load i16*, i16** @shift_symbol, align 8
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i16, i16* %48, i64 %51
  store i16 %47, i16* %52, align 2
  %53 = load i16**, i16*** @kernel_base, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16*, i16** %53, i64 %55
  %57 = load i16*, i16** %56, align 8
  store i16* %57, i16** %4, align 8
  br label %58

58:                                               ; preds = %45, %37
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i16
  %62 = load i16*, i16** %4, align 8
  %63 = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %63, i16** %4, align 8
  store i16 %61, i16* %62, align 2
  %64 = load i16*, i16** %4, align 8
  %65 = load i16**, i16*** @kernel_end, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16*, i16** %65, i64 %67
  store i16* %64, i16** %68, align 8
  br label %69

69:                                               ; preds = %58, %24
  br label %20

70:                                               ; preds = %20
  %71 = load i32, i32* %2, align 4
  store i32 %71, i32* @nshifts, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @append_states() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @nshifts, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  %9 = load i16*, i16** @shift_symbol, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %1, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %31, %8
  %17 = load i32, i32* %2, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i16*, i16** @shift_symbol, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %26, %27
  br label %29

29:                                               ; preds = %19, %16
  %30 = phi i1 [ false, %16 ], [ %28, %19 ]
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  %32 = load i16*, i16** @shift_symbol, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %32, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = load i16*, i16** @shift_symbol, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  store i16 %37, i16* %41, align 2
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %2, align 4
  br label %16

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = trunc i32 %45 to i16
  %47 = load i16*, i16** @shift_symbol, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  store i16 %46, i16* %50, align 2
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %4

54:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @nshifts, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i16*, i16** @shift_symbol, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @get_state(i32 %66)
  %68 = trunc i32 %67 to i16
  %69 = load i16*, i16** @shiftset.119, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  store i16 %68, i16* %72, align 2
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %55

76:                                               ; preds = %55
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_shifts() #0 {
  %1 = alloca %struct.shifts*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = load i32, i32* @nshifts, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 2
  %9 = add i64 16, %8
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %10)
  %12 = bitcast i8* %11 to %struct.shifts*
  store %struct.shifts* %12, %struct.shifts** %1, align 8
  %13 = load %struct.core*, %struct.core** @this_state, align 8
  %14 = getelementptr inbounds %struct.core, %struct.core* %13, i32 0, i32 2
  %15 = load i16, i16* %14, align 8
  %16 = load %struct.shifts*, %struct.shifts** %1, align 8
  %17 = getelementptr inbounds %struct.shifts, %struct.shifts* %16, i32 0, i32 1
  store i16 %15, i16* %17, align 8
  %18 = load i32, i32* @nshifts, align 4
  %19 = trunc i32 %18 to i16
  %20 = load %struct.shifts*, %struct.shifts** %1, align 8
  %21 = getelementptr inbounds %struct.shifts, %struct.shifts* %20, i32 0, i32 2
  store i16 %19, i16* %21, align 2
  %22 = load i16*, i16** @shiftset.119, align 8
  store i16* %22, i16** %2, align 8
  %23 = load %struct.shifts*, %struct.shifts** %1, align 8
  %24 = getelementptr inbounds %struct.shifts, %struct.shifts* %23, i32 0, i32 3
  %25 = getelementptr inbounds [1 x i16], [1 x i16]* %24, i64 0, i64 0
  store i16* %25, i16** %3, align 8
  %26 = load i16*, i16** @shiftset.119, align 8
  %27 = load i32, i32* @nshifts, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  store i16* %29, i16** %4, align 8
  br label %30

30:                                               ; preds = %34, %0
  %31 = load i16*, i16** %2, align 8
  %32 = load i16*, i16** %4, align 8
  %33 = icmp ult i16* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i16*, i16** %2, align 8
  %36 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %36, i16** %2, align 8
  %37 = load i16, i16* %35, align 2
  %38 = load i16*, i16** %3, align 8
  %39 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %39, i16** %3, align 8
  store i16 %37, i16* %38, align 2
  br label %30

40:                                               ; preds = %30
  %41 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %42 = icmp ne %struct.shifts* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.shifts*, %struct.shifts** %1, align 8
  %45 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %46 = getelementptr inbounds %struct.shifts, %struct.shifts* %45, i32 0, i32 0
  store %struct.shifts* %44, %struct.shifts** %46, align 8
  %47 = load %struct.shifts*, %struct.shifts** %1, align 8
  store %struct.shifts* %47, %struct.shifts** @last_shift, align 8
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.shifts*, %struct.shifts** %1, align 8
  store %struct.shifts* %49, %struct.shifts** @first_shift, align 8
  %50 = load %struct.shifts*, %struct.shifts** %1, align 8
  store %struct.shifts* %50, %struct.shifts** @last_shift, align 8
  br label %51

51:                                               ; preds = %48, %43
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @augment_automaton() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.core*, align 8
  %4 = alloca %struct.shifts*, align 8
  %5 = alloca %struct.shifts*, align 8
  %6 = alloca %struct.shifts*, align 8
  %7 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %7, %struct.shifts** %4, align 8
  %8 = load %struct.shifts*, %struct.shifts** %4, align 8
  %9 = icmp ne %struct.shifts* %8, null
  br i1 %9, label %10, label %275

10:                                               ; preds = %0
  %11 = load %struct.shifts*, %struct.shifts** %4, align 8
  %12 = getelementptr inbounds %struct.shifts, %struct.shifts* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %260

16:                                               ; preds = %10
  %17 = load %struct.shifts*, %struct.shifts** %4, align 8
  %18 = getelementptr inbounds %struct.shifts, %struct.shifts* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %2, align 4
  %21 = load %struct.core*, %struct.core** @first_state, align 8
  %22 = getelementptr inbounds %struct.core, %struct.core* %21, i32 0, i32 0
  %23 = load %struct.core*, %struct.core** %22, align 8
  store %struct.core* %23, %struct.core** %3, align 8
  br label %24

24:                                               ; preds = %40, %16
  %25 = load %struct.core*, %struct.core** %3, align 8
  %26 = getelementptr inbounds %struct.core, %struct.core* %25, i32 0, i32 3
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = load i32, i32* @start_symbol, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.core*, %struct.core** %3, align 8
  %33 = getelementptr inbounds %struct.core, %struct.core* %32, i32 0, i32 2
  %34 = load i16, i16* %33, align 8
  %35 = sext i16 %34 to i32
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i1 [ false, %24 ], [ %37, %31 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.core*, %struct.core** %3, align 8
  %42 = getelementptr inbounds %struct.core, %struct.core* %41, i32 0, i32 0
  %43 = load %struct.core*, %struct.core** %42, align 8
  store %struct.core* %43, %struct.core** %3, align 8
  br label %24

44:                                               ; preds = %38
  %45 = load %struct.core*, %struct.core** %3, align 8
  %46 = getelementptr inbounds %struct.core, %struct.core* %45, i32 0, i32 3
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = load i32, i32* @start_symbol, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %166

51:                                               ; preds = %44
  %52 = load %struct.core*, %struct.core** %3, align 8
  %53 = getelementptr inbounds %struct.core, %struct.core* %52, i32 0, i32 2
  %54 = load i16, i16* %53, align 8
  %55 = sext i16 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %63, %51
  %57 = load %struct.shifts*, %struct.shifts** %4, align 8
  %58 = getelementptr inbounds %struct.shifts, %struct.shifts* %57, i32 0, i32 1
  %59 = load i16, i16* %58, align 8
  %60 = sext i16 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %64, %struct.shifts** %6, align 8
  %65 = load %struct.shifts*, %struct.shifts** %4, align 8
  %66 = getelementptr inbounds %struct.shifts, %struct.shifts* %65, i32 0, i32 0
  %67 = load %struct.shifts*, %struct.shifts** %66, align 8
  store %struct.shifts* %67, %struct.shifts** %4, align 8
  br label %56

68:                                               ; preds = %56
  %69 = load %struct.shifts*, %struct.shifts** %4, align 8
  %70 = getelementptr inbounds %struct.shifts, %struct.shifts* %69, i32 0, i32 1
  %71 = load i16, i16* %70, align 8
  %72 = sext i16 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %140

75:                                               ; preds = %68
  %76 = load %struct.shifts*, %struct.shifts** %4, align 8
  %77 = getelementptr inbounds %struct.shifts, %struct.shifts* %76, i32 0, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i64
  %80 = mul i64 %79, 2
  %81 = add i64 16, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %82)
  %84 = bitcast i8* %83 to %struct.shifts*
  store %struct.shifts* %84, %struct.shifts** %5, align 8
  %85 = load %struct.shifts*, %struct.shifts** %4, align 8
  %86 = getelementptr inbounds %struct.shifts, %struct.shifts* %85, i32 0, i32 0
  %87 = load %struct.shifts*, %struct.shifts** %86, align 8
  %88 = load %struct.shifts*, %struct.shifts** %5, align 8
  %89 = getelementptr inbounds %struct.shifts, %struct.shifts* %88, i32 0, i32 0
  store %struct.shifts* %87, %struct.shifts** %89, align 8
  %90 = load i32, i32* %2, align 4
  %91 = trunc i32 %90 to i16
  %92 = load %struct.shifts*, %struct.shifts** %5, align 8
  %93 = getelementptr inbounds %struct.shifts, %struct.shifts* %92, i32 0, i32 1
  store i16 %91, i16* %93, align 8
  %94 = load %struct.shifts*, %struct.shifts** %4, align 8
  %95 = getelementptr inbounds %struct.shifts, %struct.shifts* %94, i32 0, i32 2
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = add nsw i32 %97, 1
  %99 = trunc i32 %98 to i16
  %100 = load %struct.shifts*, %struct.shifts** %5, align 8
  %101 = getelementptr inbounds %struct.shifts, %struct.shifts* %100, i32 0, i32 2
  store i16 %99, i16* %101, align 2
  %102 = load i32, i32* @nstates, align 4
  %103 = trunc i32 %102 to i16
  %104 = load %struct.shifts*, %struct.shifts** %5, align 8
  %105 = getelementptr inbounds %struct.shifts, %struct.shifts* %104, i32 0, i32 3
  %106 = getelementptr inbounds [1 x i16], [1 x i16]* %105, i64 0, i64 0
  store i16 %103, i16* %106, align 4
  %107 = load %struct.shifts*, %struct.shifts** %4, align 8
  %108 = getelementptr inbounds %struct.shifts, %struct.shifts* %107, i32 0, i32 2
  %109 = load i16, i16* %108, align 2
  %110 = sext i16 %109 to i32
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %127, %75
  %112 = load i32, i32* %1, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.shifts*, %struct.shifts** %4, align 8
  %116 = getelementptr inbounds %struct.shifts, %struct.shifts* %115, i32 0, i32 3
  %117 = load i32, i32* %1, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [1 x i16], [1 x i16]* %116, i64 0, i64 %119
  %121 = load i16, i16* %120, align 2
  %122 = load %struct.shifts*, %struct.shifts** %5, align 8
  %123 = getelementptr inbounds %struct.shifts, %struct.shifts* %122, i32 0, i32 3
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1 x i16], [1 x i16]* %123, i64 0, i64 %125
  store i16 %121, i16* %126, align 2
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %1, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load %struct.shifts*, %struct.shifts** %5, align 8
  %132 = load %struct.shifts*, %struct.shifts** %6, align 8
  %133 = getelementptr inbounds %struct.shifts, %struct.shifts* %132, i32 0, i32 0
  store %struct.shifts* %131, %struct.shifts** %133, align 8
  %134 = load %struct.shifts*, %struct.shifts** %4, align 8
  %135 = icmp ne %struct.shifts* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.shifts*, %struct.shifts** %4, align 8
  %138 = bitcast %struct.shifts* %137 to i8*
  call void @free(i8* %138) #7
  br label %139

139:                                              ; preds = %136, %130
  br label %165

140:                                              ; preds = %68
  %141 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 16)
  %142 = bitcast i8* %141 to %struct.shifts*
  store %struct.shifts* %142, %struct.shifts** %5, align 8
  %143 = load %struct.shifts*, %struct.shifts** %4, align 8
  %144 = load %struct.shifts*, %struct.shifts** %5, align 8
  %145 = getelementptr inbounds %struct.shifts, %struct.shifts* %144, i32 0, i32 0
  store %struct.shifts* %143, %struct.shifts** %145, align 8
  %146 = load i32, i32* %2, align 4
  %147 = trunc i32 %146 to i16
  %148 = load %struct.shifts*, %struct.shifts** %5, align 8
  %149 = getelementptr inbounds %struct.shifts, %struct.shifts* %148, i32 0, i32 1
  store i16 %147, i16* %149, align 8
  %150 = load %struct.shifts*, %struct.shifts** %5, align 8
  %151 = getelementptr inbounds %struct.shifts, %struct.shifts* %150, i32 0, i32 2
  store i16 1, i16* %151, align 2
  %152 = load i32, i32* @nstates, align 4
  %153 = trunc i32 %152 to i16
  %154 = load %struct.shifts*, %struct.shifts** %5, align 8
  %155 = getelementptr inbounds %struct.shifts, %struct.shifts* %154, i32 0, i32 3
  %156 = getelementptr inbounds [1 x i16], [1 x i16]* %155, i64 0, i64 0
  store i16 %153, i16* %156, align 4
  %157 = load %struct.shifts*, %struct.shifts** %5, align 8
  %158 = load %struct.shifts*, %struct.shifts** %6, align 8
  %159 = getelementptr inbounds %struct.shifts, %struct.shifts* %158, i32 0, i32 0
  store %struct.shifts* %157, %struct.shifts** %159, align 8
  %160 = load %struct.shifts*, %struct.shifts** %4, align 8
  %161 = icmp ne %struct.shifts* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %140
  %163 = load %struct.shifts*, %struct.shifts** %5, align 8
  store %struct.shifts* %163, %struct.shifts** @last_shift, align 8
  br label %164

164:                                              ; preds = %162, %140
  br label %165

165:                                              ; preds = %164, %139
  br label %259

166:                                              ; preds = %44
  %167 = load %struct.core*, %struct.core** %3, align 8
  %168 = getelementptr inbounds %struct.core, %struct.core* %167, i32 0, i32 2
  %169 = load i16, i16* %168, align 8
  %170 = sext i16 %169 to i32
  store i32 %170, i32* %2, align 4
  %171 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %171, %struct.shifts** %4, align 8
  %172 = load %struct.shifts*, %struct.shifts** %4, align 8
  %173 = getelementptr inbounds %struct.shifts, %struct.shifts* %172, i32 0, i32 2
  %174 = load i16, i16* %173, align 2
  %175 = sext i16 %174 to i64
  %176 = mul i64 %175, 2
  %177 = add i64 16, %176
  %178 = trunc i64 %177 to i32
  %179 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %178)
  %180 = bitcast i8* %179 to %struct.shifts*
  store %struct.shifts* %180, %struct.shifts** %5, align 8
  %181 = load %struct.shifts*, %struct.shifts** %4, align 8
  %182 = getelementptr inbounds %struct.shifts, %struct.shifts* %181, i32 0, i32 0
  %183 = load %struct.shifts*, %struct.shifts** %182, align 8
  %184 = load %struct.shifts*, %struct.shifts** %5, align 8
  %185 = getelementptr inbounds %struct.shifts, %struct.shifts* %184, i32 0, i32 0
  store %struct.shifts* %183, %struct.shifts** %185, align 8
  %186 = load %struct.shifts*, %struct.shifts** %4, align 8
  %187 = getelementptr inbounds %struct.shifts, %struct.shifts* %186, i32 0, i32 2
  %188 = load i16, i16* %187, align 2
  %189 = sext i16 %188 to i32
  %190 = add nsw i32 %189, 1
  %191 = trunc i32 %190 to i16
  %192 = load %struct.shifts*, %struct.shifts** %5, align 8
  %193 = getelementptr inbounds %struct.shifts, %struct.shifts* %192, i32 0, i32 2
  store i16 %191, i16* %193, align 2
  store i32 0, i32* %1, align 4
  br label %194

194:                                              ; preds = %210, %166
  %195 = load i32, i32* %1, align 4
  %196 = load i32, i32* %2, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load %struct.shifts*, %struct.shifts** %4, align 8
  %200 = getelementptr inbounds %struct.shifts, %struct.shifts* %199, i32 0, i32 3
  %201 = load i32, i32* %1, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1 x i16], [1 x i16]* %200, i64 0, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = load %struct.shifts*, %struct.shifts** %5, align 8
  %206 = getelementptr inbounds %struct.shifts, %struct.shifts* %205, i32 0, i32 3
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [1 x i16], [1 x i16]* %206, i64 0, i64 %208
  store i16 %204, i16* %209, align 2
  br label %210

210:                                              ; preds = %198
  %211 = load i32, i32* %1, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %1, align 4
  br label %194

213:                                              ; preds = %194
  %214 = load i32, i32* @nstates, align 4
  %215 = trunc i32 %214 to i16
  %216 = load %struct.shifts*, %struct.shifts** %5, align 8
  %217 = getelementptr inbounds %struct.shifts, %struct.shifts* %216, i32 0, i32 3
  %218 = load i32, i32* %2, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [1 x i16], [1 x i16]* %217, i64 0, i64 %219
  store i16 %215, i16* %220, align 2
  %221 = load i32, i32* %2, align 4
  store i32 %221, i32* %1, align 4
  br label %222

222:                                              ; preds = %242, %213
  %223 = load i32, i32* %1, align 4
  %224 = load %struct.shifts*, %struct.shifts** %4, align 8
  %225 = getelementptr inbounds %struct.shifts, %struct.shifts* %224, i32 0, i32 2
  %226 = load i16, i16* %225, align 2
  %227 = sext i16 %226 to i32
  %228 = icmp slt i32 %223, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %222
  %230 = load %struct.shifts*, %struct.shifts** %4, align 8
  %231 = getelementptr inbounds %struct.shifts, %struct.shifts* %230, i32 0, i32 3
  %232 = load i32, i32* %1, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [1 x i16], [1 x i16]* %231, i64 0, i64 %233
  %235 = load i16, i16* %234, align 2
  %236 = load %struct.shifts*, %struct.shifts** %5, align 8
  %237 = getelementptr inbounds %struct.shifts, %struct.shifts* %236, i32 0, i32 3
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [1 x i16], [1 x i16]* %237, i64 0, i64 %240
  store i16 %235, i16* %241, align 2
  br label %242

242:                                              ; preds = %229
  %243 = load i32, i32* %1, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %1, align 4
  br label %222

245:                                              ; preds = %222
  %246 = load %struct.shifts*, %struct.shifts** %5, align 8
  store %struct.shifts* %246, %struct.shifts** @first_shift, align 8
  %247 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %248 = load %struct.shifts*, %struct.shifts** %4, align 8
  %249 = icmp eq %struct.shifts* %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load %struct.shifts*, %struct.shifts** %5, align 8
  store %struct.shifts* %251, %struct.shifts** @last_shift, align 8
  br label %252

252:                                              ; preds = %250, %245
  %253 = load %struct.shifts*, %struct.shifts** %4, align 8
  %254 = icmp ne %struct.shifts* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load %struct.shifts*, %struct.shifts** %4, align 8
  %257 = bitcast %struct.shifts* %256 to i8*
  call void @free(i8* %257) #7
  br label %258

258:                                              ; preds = %255, %252
  call void @insert_start_shift()
  br label %259

259:                                              ; preds = %258, %165
  br label %274

260:                                              ; preds = %10
  %261 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 16)
  %262 = bitcast i8* %261 to %struct.shifts*
  store %struct.shifts* %262, %struct.shifts** %4, align 8
  %263 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  %264 = load %struct.shifts*, %struct.shifts** %4, align 8
  %265 = getelementptr inbounds %struct.shifts, %struct.shifts* %264, i32 0, i32 0
  store %struct.shifts* %263, %struct.shifts** %265, align 8
  %266 = load %struct.shifts*, %struct.shifts** %4, align 8
  %267 = getelementptr inbounds %struct.shifts, %struct.shifts* %266, i32 0, i32 2
  store i16 1, i16* %267, align 2
  %268 = load i32, i32* @nstates, align 4
  %269 = trunc i32 %268 to i16
  %270 = load %struct.shifts*, %struct.shifts** %4, align 8
  %271 = getelementptr inbounds %struct.shifts, %struct.shifts* %270, i32 0, i32 3
  %272 = getelementptr inbounds [1 x i16], [1 x i16]* %271, i64 0, i64 0
  store i16 %269, i16* %272, align 4
  %273 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %273, %struct.shifts** @first_shift, align 8
  call void @insert_start_shift()
  br label %274

274:                                              ; preds = %260, %259
  br label %287

275:                                              ; preds = %0
  %276 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 16)
  %277 = bitcast i8* %276 to %struct.shifts*
  store %struct.shifts* %277, %struct.shifts** %4, align 8
  %278 = load %struct.shifts*, %struct.shifts** %4, align 8
  %279 = getelementptr inbounds %struct.shifts, %struct.shifts* %278, i32 0, i32 2
  store i16 1, i16* %279, align 2
  %280 = load i32, i32* @nstates, align 4
  %281 = trunc i32 %280 to i16
  %282 = load %struct.shifts*, %struct.shifts** %4, align 8
  %283 = getelementptr inbounds %struct.shifts, %struct.shifts* %282, i32 0, i32 3
  %284 = getelementptr inbounds [1 x i16], [1 x i16]* %283, i64 0, i64 0
  store i16 %281, i16* %284, align 4
  %285 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %285, %struct.shifts** @first_shift, align 8
  %286 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %286, %struct.shifts** @last_shift, align 8
  call void @insert_start_shift()
  br label %287

287:                                              ; preds = %275, %274
  %288 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 22)
  %289 = bitcast i8* %288 to %struct.core*
  store %struct.core* %289, %struct.core** %3, align 8
  %290 = load i32, i32* @nstates, align 4
  %291 = trunc i32 %290 to i16
  %292 = load %struct.core*, %struct.core** %3, align 8
  %293 = getelementptr inbounds %struct.core, %struct.core* %292, i32 0, i32 2
  store i16 %291, i16* %293, align 8
  %294 = load %struct.core*, %struct.core** %3, align 8
  %295 = load %struct.core*, %struct.core** @last_state, align 8
  %296 = getelementptr inbounds %struct.core, %struct.core* %295, i32 0, i32 0
  store %struct.core* %294, %struct.core** %296, align 8
  %297 = load %struct.core*, %struct.core** %3, align 8
  store %struct.core* %297, %struct.core** @last_state, align 8
  %298 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 16)
  %299 = bitcast i8* %298 to %struct.shifts*
  store %struct.shifts* %299, %struct.shifts** %4, align 8
  %300 = load i32, i32* @nstates, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* @nstates, align 4
  %302 = trunc i32 %300 to i16
  %303 = load %struct.shifts*, %struct.shifts** %4, align 8
  %304 = getelementptr inbounds %struct.shifts, %struct.shifts* %303, i32 0, i32 1
  store i16 %302, i16* %304, align 8
  %305 = load %struct.shifts*, %struct.shifts** %4, align 8
  %306 = getelementptr inbounds %struct.shifts, %struct.shifts* %305, i32 0, i32 2
  store i16 1, i16* %306, align 2
  %307 = load i32, i32* @nstates, align 4
  %308 = trunc i32 %307 to i16
  %309 = load %struct.shifts*, %struct.shifts** %4, align 8
  %310 = getelementptr inbounds %struct.shifts, %struct.shifts* %309, i32 0, i32 3
  %311 = getelementptr inbounds [1 x i16], [1 x i16]* %310, i64 0, i64 0
  store i16 %308, i16* %311, align 4
  %312 = load %struct.shifts*, %struct.shifts** %4, align 8
  %313 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %314 = getelementptr inbounds %struct.shifts, %struct.shifts* %313, i32 0, i32 0
  store %struct.shifts* %312, %struct.shifts** %314, align 8
  %315 = load %struct.shifts*, %struct.shifts** %4, align 8
  store %struct.shifts* %315, %struct.shifts** @last_shift, align 8
  %316 = load i32, i32* @nstates, align 4
  store i32 %316, i32* @final_state, align 4
  %317 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 22)
  %318 = bitcast i8* %317 to %struct.core*
  store %struct.core* %318, %struct.core** %3, align 8
  %319 = load i32, i32* @nstates, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @nstates, align 4
  %321 = trunc i32 %319 to i16
  %322 = load %struct.core*, %struct.core** %3, align 8
  %323 = getelementptr inbounds %struct.core, %struct.core* %322, i32 0, i32 2
  store i16 %321, i16* %323, align 8
  %324 = load %struct.core*, %struct.core** %3, align 8
  %325 = load %struct.core*, %struct.core** @last_state, align 8
  %326 = getelementptr inbounds %struct.core, %struct.core* %325, i32 0, i32 0
  store %struct.core* %324, %struct.core** %326, align 8
  %327 = load %struct.core*, %struct.core** %3, align 8
  store %struct.core* %327, %struct.core** @last_state, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insert_start_shift() #0 {
  %1 = alloca %struct.core*, align 8
  %2 = alloca %struct.shifts*, align 8
  %3 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 22)
  %4 = bitcast i8* %3 to %struct.core*
  store %struct.core* %4, %struct.core** %1, align 8
  %5 = load i32, i32* @nstates, align 4
  %6 = trunc i32 %5 to i16
  %7 = load %struct.core*, %struct.core** %1, align 8
  %8 = getelementptr inbounds %struct.core, %struct.core* %7, i32 0, i32 2
  store i16 %6, i16* %8, align 8
  %9 = load i32, i32* @start_symbol, align 4
  %10 = trunc i32 %9 to i16
  %11 = load %struct.core*, %struct.core** %1, align 8
  %12 = getelementptr inbounds %struct.core, %struct.core* %11, i32 0, i32 3
  store i16 %10, i16* %12, align 2
  %13 = load %struct.core*, %struct.core** %1, align 8
  %14 = load %struct.core*, %struct.core** @last_state, align 8
  %15 = getelementptr inbounds %struct.core, %struct.core* %14, i32 0, i32 0
  store %struct.core* %13, %struct.core** %15, align 8
  %16 = load %struct.core*, %struct.core** %1, align 8
  store %struct.core* %16, %struct.core** @last_state, align 8
  %17 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 16)
  %18 = bitcast i8* %17 to %struct.shifts*
  store %struct.shifts* %18, %struct.shifts** %2, align 8
  %19 = load i32, i32* @nstates, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @nstates, align 4
  %21 = trunc i32 %19 to i16
  %22 = load %struct.shifts*, %struct.shifts** %2, align 8
  %23 = getelementptr inbounds %struct.shifts, %struct.shifts* %22, i32 0, i32 1
  store i16 %21, i16* %23, align 8
  %24 = load %struct.shifts*, %struct.shifts** %2, align 8
  %25 = getelementptr inbounds %struct.shifts, %struct.shifts* %24, i32 0, i32 2
  store i16 1, i16* %25, align 2
  %26 = load i32, i32* @nstates, align 4
  %27 = trunc i32 %26 to i16
  %28 = load %struct.shifts*, %struct.shifts** %2, align 8
  %29 = getelementptr inbounds %struct.shifts, %struct.shifts* %28, i32 0, i32 3
  %30 = getelementptr inbounds [1 x i16], [1 x i16]* %29, i64 0, i64 0
  store i16 %27, i16* %30, align 4
  %31 = load %struct.shifts*, %struct.shifts** %2, align 8
  %32 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %33 = getelementptr inbounds %struct.shifts, %struct.shifts* %32, i32 0, i32 0
  store %struct.shifts* %31, %struct.shifts** %33, align 8
  %34 = load %struct.shifts*, %struct.shifts** %2, align 8
  store %struct.shifts* %34, %struct.shifts** @last_shift, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca %struct.core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i16**, i16*** @kernel_base, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16*, i16** %10, i64 %12
  %14 = load i16*, i16** %13, align 8
  store i16* %14, i16** %4, align 8
  %15 = load i16**, i16*** @kernel_end, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16*, i16** %15, i64 %17
  %19 = load i16*, i16** %18, align 8
  store i16* %19, i16** %6, align 8
  %20 = load i16*, i16** %6, align 8
  %21 = load i16*, i16** %4, align 8
  %22 = ptrtoint i16* %20 to i64
  %23 = ptrtoint i16* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 2
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %31, %1
  %28 = load i16*, i16** %4, align 8
  %29 = load i16*, i16** %6, align 8
  %30 = icmp ult i16* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i16*, i16** %4, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %4, align 8
  %34 = load i16, i16* %32, align 2
  %35 = sext i16 %34 to i32
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = srem i32 %39, 1009
  store i32 %40, i32* %3, align 4
  %41 = load %struct.core**, %struct.core*** @state_table.120, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.core*, %struct.core** %41, i64 %43
  %45 = load %struct.core*, %struct.core** %44, align 8
  store %struct.core* %45, %struct.core** %7, align 8
  %46 = load %struct.core*, %struct.core** %7, align 8
  %47 = icmp ne %struct.core* %46, null
  br i1 %47, label %48, label %111

48:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %109, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load %struct.core*, %struct.core** %7, align 8
  %55 = getelementptr inbounds %struct.core, %struct.core* %54, i32 0, i32 4
  %56 = load i16, i16* %55, align 4
  %57 = sext i16 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %61 = load i16**, i16*** @kernel_base, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16*, i16** %61, i64 %63
  %65 = load i16*, i16** %64, align 8
  store i16* %65, i16** %4, align 8
  %66 = load %struct.core*, %struct.core** %7, align 8
  %67 = getelementptr inbounds %struct.core, %struct.core* %66, i32 0, i32 5
  %68 = getelementptr inbounds [1 x i16], [1 x i16]* %67, i64 0, i64 0
  store i16* %68, i16** %5, align 8
  br label %69

69:                                               ; preds = %89, %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i16*, i16** %4, align 8
  %74 = load i16*, i16** %6, align 8
  %75 = icmp ult i16* %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = load i16*, i16** %4, align 8
  %80 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %80, i16** %4, align 8
  %81 = load i16, i16* %79, align 2
  %82 = sext i16 %81 to i32
  %83 = load i16*, i16** %5, align 8
  %84 = getelementptr inbounds i16, i16* %83, i32 1
  store i16* %84, i16** %5, align 8
  %85 = load i16, i16* %83, align 2
  %86 = sext i16 %85 to i32
  %87 = icmp ne i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %78
  br label %69

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %91
  %95 = load %struct.core*, %struct.core** %7, align 8
  %96 = getelementptr inbounds %struct.core, %struct.core* %95, i32 0, i32 1
  %97 = load %struct.core*, %struct.core** %96, align 8
  %98 = icmp ne %struct.core* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.core*, %struct.core** %7, align 8
  %101 = getelementptr inbounds %struct.core, %struct.core* %100, i32 0, i32 1
  %102 = load %struct.core*, %struct.core** %101, align 8
  store %struct.core* %102, %struct.core** %7, align 8
  br label %108

103:                                              ; preds = %94
  %104 = load i32, i32* %2, align 4
  %105 = call %struct.core* @new_state(i32 %104)
  %106 = load %struct.core*, %struct.core** %7, align 8
  %107 = getelementptr inbounds %struct.core, %struct.core* %106, i32 0, i32 1
  store %struct.core* %105, %struct.core** %107, align 8
  store %struct.core* %105, %struct.core** %7, align 8
  store i32 1, i32* %8, align 4
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %91
  br label %49

110:                                              ; preds = %49
  br label %118

111:                                              ; preds = %38
  %112 = load i32, i32* %2, align 4
  %113 = call %struct.core* @new_state(i32 %112)
  store %struct.core* %113, %struct.core** %7, align 8
  %114 = load %struct.core**, %struct.core*** @state_table.120, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.core*, %struct.core** %114, i64 %116
  store %struct.core* %113, %struct.core** %117, align 8
  br label %118

118:                                              ; preds = %111, %110
  %119 = load %struct.core*, %struct.core** %7, align 8
  %120 = getelementptr inbounds %struct.core, %struct.core* %119, i32 0, i32 2
  %121 = load i16, i16* %120, align 8
  %122 = sext i16 %121 to i32
  ret i32 %122
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.core* @new_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.core*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @nstates, align 4
  %9 = icmp sge i32 %8, 32767
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @toomany(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i16**, i16*** @kernel_base, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16*, i16** %12, i64 %14
  %16 = load i16*, i16** %15, align 8
  store i16* %16, i16** %5, align 8
  %17 = load i16**, i16*** @kernel_end, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16*, i16** %17, i64 %19
  %21 = load i16*, i16** %20, align 8
  store i16* %21, i16** %7, align 8
  %22 = load i16*, i16** %7, align 8
  %23 = load i16*, i16** %5, align 8
  %24 = ptrtoint i16* %22 to i64
  %25 = ptrtoint i16* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 2
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 2
  %33 = add i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %34)
  %36 = bitcast i8* %35 to %struct.core*
  store %struct.core* %36, %struct.core** %4, align 8
  %37 = load i32, i32* %2, align 4
  %38 = trunc i32 %37 to i16
  %39 = load %struct.core*, %struct.core** %4, align 8
  %40 = getelementptr inbounds %struct.core, %struct.core* %39, i32 0, i32 3
  store i16 %38, i16* %40, align 2
  %41 = load i32, i32* @nstates, align 4
  %42 = trunc i32 %41 to i16
  %43 = load %struct.core*, %struct.core** %4, align 8
  %44 = getelementptr inbounds %struct.core, %struct.core* %43, i32 0, i32 2
  store i16 %42, i16* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = trunc i32 %45 to i16
  %47 = load %struct.core*, %struct.core** %4, align 8
  %48 = getelementptr inbounds %struct.core, %struct.core* %47, i32 0, i32 4
  store i16 %46, i16* %48, align 4
  %49 = load %struct.core*, %struct.core** %4, align 8
  %50 = getelementptr inbounds %struct.core, %struct.core* %49, i32 0, i32 5
  %51 = getelementptr inbounds [1 x i16], [1 x i16]* %50, i64 0, i64 0
  store i16* %51, i16** %6, align 8
  br label %52

52:                                               ; preds = %56, %11
  %53 = load i16*, i16** %5, align 8
  %54 = load i16*, i16** %7, align 8
  %55 = icmp ult i16* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i16*, i16** %5, align 8
  %58 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %58, i16** %5, align 8
  %59 = load i16, i16* %57, align 2
  %60 = load i16*, i16** %6, align 8
  %61 = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %61, i16** %6, align 8
  store i16 %59, i16* %60, align 2
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.core*, %struct.core** %4, align 8
  %64 = load %struct.core*, %struct.core** @last_state, align 8
  %65 = getelementptr inbounds %struct.core, %struct.core* %64, i32 0, i32 0
  store %struct.core* %63, %struct.core** %65, align 8
  %66 = load %struct.core*, %struct.core** %4, align 8
  store %struct.core* %66, %struct.core** @last_state, align 8
  %67 = load i32, i32* @nstates, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @nstates, align 4
  %69 = load %struct.core*, %struct.core** %4, align 8
  ret %struct.core* %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* @failure, align 4
  store i32 0, i32* @lineno, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  call void @getargs(i32 %6, i8** %7)
  call void @openfiles()
  call void @reader()
  call void @set_derives()
  call void @set_nullable()
  call void @generate_states()
  call void @lalr()
  call void @initialize_conflicts()
  %8 = load i32, i32* @verboseflag, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @verbose()
  br label %12

11:                                               ; preds = %2
  call void @terse()
  br label %12

12:                                               ; preds = %11, %10
  call void @output()
  %13 = load i32, i32* @failure, align 4
  call void @done(i32 %13)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fatal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** @infile, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i64 0, i64 0), i8* %7)
  br label %15

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @infile, align 8
  %12 = load i32, i32* @lineno, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.125, i64 0, i64 0), i8* %11, i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %9, %5
  call void @done(i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fatals(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [200 x i8], align 16
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29) #7
  %31 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  call void @fatal(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @toomany(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [200 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.130, i64 0, i64 0), i32 32767, i8* %5) #7
  %7 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  call void @fatal(i8* %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @berror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.133, i64 0, i64 0), i8* %4)
  call void @abort() #9
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_nullable() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.shorts*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca %struct.shorts**, align 8
  %10 = alloca %struct.shorts*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16*, align 8
  %13 = load i32, i32* @nvars, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %16)
  %18 = load i32, i32* @ntokens, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8* %21, i8** @nullable, align 8
  %22 = load i32, i32* @nvars, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 2
  %25 = trunc i64 %24 to i32
  %26 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %25)
  %27 = bitcast i8* %26 to i16*
  store i16* %27, i16** %7, align 8
  %28 = load i16*, i16** %7, align 8
  store i16* %28, i16** %3, align 8
  store i16* %28, i16** %2, align 8
  %29 = load i32, i32* @nrules, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 2
  %33 = trunc i64 %32 to i32
  %34 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %33)
  %35 = bitcast i8* %34 to i16*
  store i16* %35, i16** %8, align 8
  %36 = load i32, i32* @nvars, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %39)
  %41 = bitcast i8* %40 to %struct.shorts**
  %42 = load i32, i32* @ntokens, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds %struct.shorts*, %struct.shorts** %41, i64 %44
  store %struct.shorts** %45, %struct.shorts*** %9, align 8
  %46 = load i32, i32* @nitems, align 4
  %47 = load i32, i32* @nvars, align 4
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 16
  %52 = trunc i64 %51 to i32
  %53 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %52)
  %54 = bitcast i8* %53 to %struct.shorts*
  store %struct.shorts* %54, %struct.shorts** %10, align 8
  %55 = load %struct.shorts*, %struct.shorts** %10, align 8
  store %struct.shorts* %55, %struct.shorts** %6, align 8
  %56 = load i16*, i16** @ritem, align 8
  store i16* %56, i16** %1, align 8
  br label %57

57:                                               ; preds = %159, %0
  %58 = load i16*, i16** %1, align 8
  %59 = load i16, i16* %58, align 2
  %60 = icmp ne i16 %59, 0
  br i1 %60, label %61, label %160

61:                                               ; preds = %57
  %62 = load i16*, i16** %1, align 8
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load i16*, i16** @rlhs, align 8
  %68 = load i16*, i16** %1, align 8
  %69 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %69, i16** %1, align 8
  %70 = load i16, i16* %68, align 2
  %71 = sext i16 %70 to i32
  %72 = sub nsw i32 0, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16, i16* %67, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  store i32 %76, i32* %5, align 4
  %77 = load i8*, i8** @nullable, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %66
  %84 = load i8*, i8** @nullable, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 1, i8* %87, align 1
  %88 = load i32, i32* %5, align 4
  %89 = trunc i32 %88 to i16
  %90 = load i16*, i16** %3, align 8
  %91 = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %91, i16** %3, align 8
  store i16 %89, i16* %90, align 2
  br label %92

92:                                               ; preds = %83, %66
  br label %159

93:                                               ; preds = %61
  %94 = load i16*, i16** %1, align 8
  store i16* %94, i16** %12, align 8
  store i8 0, i8* %11, align 1
  %95 = load i16*, i16** %1, align 8
  %96 = getelementptr inbounds i16, i16* %95, i32 1
  store i16* %96, i16** %1, align 8
  %97 = load i16, i16* %95, align 2
  %98 = sext i16 %97 to i32
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %108, %93
  %100 = load i32, i32* %5, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @ntokens, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i8 1, i8* %11, align 1
  br label %107

107:                                              ; preds = %106, %102
  br label %108

108:                                              ; preds = %107
  %109 = load i16*, i16** %1, align 8
  %110 = getelementptr inbounds i16, i16* %109, i32 1
  store i16* %110, i16** %1, align 8
  %111 = load i16, i16* %109, align 2
  %112 = sext i16 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %99

113:                                              ; preds = %99
  %114 = load i8, i8* %11, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %158, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  %119 = load i16*, i16** %12, align 8
  store i16* %119, i16** %1, align 8
  %120 = load i16*, i16** %1, align 8
  %121 = getelementptr inbounds i16, i16* %120, i32 1
  store i16* %121, i16** %1, align 8
  %122 = load i16, i16* %120, align 2
  %123 = sext i16 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %152, %116
  %125 = load i32, i32* %5, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %124
  %128 = load i16*, i16** %8, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i16, i16* %128, i64 %130
  %132 = load i16, i16* %131, align 2
  %133 = add i16 %132, 1
  store i16 %133, i16* %131, align 2
  %134 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.shorts*, %struct.shorts** %134, i64 %136
  %138 = load %struct.shorts*, %struct.shorts** %137, align 8
  %139 = load %struct.shorts*, %struct.shorts** %6, align 8
  %140 = getelementptr inbounds %struct.shorts, %struct.shorts* %139, i32 0, i32 0
  store %struct.shorts* %138, %struct.shorts** %140, align 8
  %141 = load i32, i32* %4, align 4
  %142 = trunc i32 %141 to i16
  %143 = load %struct.shorts*, %struct.shorts** %6, align 8
  %144 = getelementptr inbounds %struct.shorts, %struct.shorts* %143, i32 0, i32 1
  store i16 %142, i16* %144, align 8
  %145 = load %struct.shorts*, %struct.shorts** %6, align 8
  %146 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.shorts*, %struct.shorts** %146, i64 %148
  store %struct.shorts* %145, %struct.shorts** %149, align 8
  %150 = load %struct.shorts*, %struct.shorts** %6, align 8
  %151 = getelementptr inbounds %struct.shorts, %struct.shorts* %150, i32 1
  store %struct.shorts* %151, %struct.shorts** %6, align 8
  br label %152

152:                                              ; preds = %127
  %153 = load i16*, i16** %1, align 8
  %154 = getelementptr inbounds i16, i16* %153, i32 1
  store i16* %154, i16** %1, align 8
  %155 = load i16, i16* %153, align 2
  %156 = sext i16 %155 to i32
  store i32 %156, i32* %5, align 4
  br label %124

157:                                              ; preds = %124
  br label %158

158:                                              ; preds = %157, %113
  br label %159

159:                                              ; preds = %158, %92
  br label %57

160:                                              ; preds = %57
  br label %161

161:                                              ; preds = %216, %160
  %162 = load i16*, i16** %2, align 8
  %163 = load i16*, i16** %3, align 8
  %164 = icmp ult i16* %162, %163
  br i1 %164, label %165, label %217

165:                                              ; preds = %161
  %166 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %167 = load i16*, i16** %2, align 8
  %168 = getelementptr inbounds i16, i16* %167, i32 1
  store i16* %168, i16** %2, align 8
  %169 = load i16, i16* %167, align 2
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds %struct.shorts*, %struct.shorts** %166, i64 %170
  %172 = load %struct.shorts*, %struct.shorts** %171, align 8
  store %struct.shorts* %172, %struct.shorts** %6, align 8
  br label %173

173:                                              ; preds = %215, %165
  %174 = load %struct.shorts*, %struct.shorts** %6, align 8
  %175 = icmp ne %struct.shorts* %174, null
  br i1 %175, label %176, label %216

176:                                              ; preds = %173
  %177 = load %struct.shorts*, %struct.shorts** %6, align 8
  %178 = getelementptr inbounds %struct.shorts, %struct.shorts* %177, i32 0, i32 1
  %179 = load i16, i16* %178, align 8
  %180 = sext i16 %179 to i32
  store i32 %180, i32* %4, align 4
  %181 = load %struct.shorts*, %struct.shorts** %6, align 8
  %182 = getelementptr inbounds %struct.shorts, %struct.shorts* %181, i32 0, i32 0
  %183 = load %struct.shorts*, %struct.shorts** %182, align 8
  store %struct.shorts* %183, %struct.shorts** %6, align 8
  %184 = load i16*, i16** %8, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i16, i16* %184, i64 %186
  %188 = load i16, i16* %187, align 2
  %189 = add i16 %188, -1
  store i16 %189, i16* %187, align 2
  %190 = sext i16 %189 to i32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %176
  %193 = load i16*, i16** @rlhs, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %193, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = sext i16 %197 to i32
  store i32 %198, i32* %5, align 4
  %199 = load i8*, i8** @nullable, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = icmp ne i8 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %192
  %206 = load i8*, i8** @nullable, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 1, i8* %209, align 1
  %210 = load i32, i32* %5, align 4
  %211 = trunc i32 %210 to i16
  %212 = load i16*, i16** %3, align 8
  %213 = getelementptr inbounds i16, i16* %212, i32 1
  store i16* %213, i16** %3, align 8
  store i16 %211, i16* %212, align 2
  br label %214

214:                                              ; preds = %205, %192
  br label %215

215:                                              ; preds = %214, %176
  br label %173

216:                                              ; preds = %173
  br label %161

217:                                              ; preds = %161
  %218 = load i16*, i16** %7, align 8
  %219 = icmp ne i16* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i16*, i16** %7, align 8
  %222 = bitcast i16* %221 to i8*
  call void @free(i8* %222) #7
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i16*, i16** %8, align 8
  %225 = icmp ne i16* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i16*, i16** %8, align 8
  %228 = bitcast i16* %227 to i8*
  call void @free(i8* %228) #7
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %231 = load i32, i32* @ntokens, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.shorts*, %struct.shorts** %230, i64 %232
  %234 = icmp ne %struct.shorts** %233, null
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %237 = load i32, i32* @ntokens, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.shorts*, %struct.shorts** %236, i64 %238
  %240 = bitcast %struct.shorts** %239 to i8*
  call void @free(i8* %240) #7
  br label %241

241:                                              ; preds = %235, %229
  %242 = load %struct.shorts*, %struct.shorts** %10, align 8
  %243 = icmp ne %struct.shorts* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.shorts*, %struct.shorts** %10, align 8
  %246 = bitcast %struct.shorts* %245 to i8*
  call void @free(i8* %246) #7
  br label %247

247:                                              ; preds = %244, %241
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_nullable() #0 {
  %1 = load i8*, i8** @nullable, align 8
  %2 = load i32, i32* @ntokens, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i8, i8* %1, i64 %3
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i8*, i8** @nullable, align 8
  %8 = load i32, i32* @ntokens, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  call void @free(i8* %10) #7
  br label %11

11:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_headers() #0 {
  %1 = load i32, i32* @semantic_parser, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %5 = load i8*, i8** @attrsfile, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.138, i64 0, i64 0), i8* %5)
  br label %7

7:                                                ; preds = %3, %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %9 = load i32, i32* @semantic_parser, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1.139, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2.140, i64 0, i64 0)
  %13 = load i8*, i8** @attrsfile, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* %12, i8* %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_trailers() #0 {
  %1 = load i32, i32* @semantic_parser, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.141, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.141, i64 0, i64 0))
  br label %11

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.142, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @semantic_parser, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  call void @rewind(%struct._IO_FILE* %5)
  br label %6

6:                                                ; preds = %10, %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %8 = call i32 @getc(%struct._IO_FILE* %7)
  store i32 %8, i32* %1, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %13 = call i32 @putc(i32 %11, %struct._IO_FILE* %12)
  br label %6

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, i32* @debugflag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.145, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @semantic_parser, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %26 = load i8*, i8** @attrsfile, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.146, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.147, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8.148, i64 0, i64 0))
  call void @free_itemsets()
  call void @output_defines()
  call void @output_token_translations()
  %33 = load i32, i32* @semantic_parser, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @output_gram()
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i16*, i16** @ritem, align 8
  %38 = icmp ne i16* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i16*, i16** @ritem, align 8
  %41 = bitcast i16* %40 to i8*
  call void @free(i8* %41) #7
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @semantic_parser, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @output_stos()
  br label %46

46:                                               ; preds = %45, %42
  call void @output_rule_data()
  call void @output_actions()
  call void @output_parser()
  call void @output_program()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_itemsets() #0 {
  %1 = alloca %struct.core*, align 8
  %2 = alloca %struct.core*, align 8
  %3 = load %struct.core**, %struct.core*** @state_table, align 8
  %4 = icmp ne %struct.core** %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.core**, %struct.core*** @state_table, align 8
  %7 = bitcast %struct.core** %6 to i8*
  call void @free(i8* %7) #7
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.core*, %struct.core** @first_state, align 8
  store %struct.core* %9, %struct.core** %1, align 8
  br label %10

10:                                               ; preds = %23, %8
  %11 = load %struct.core*, %struct.core** %1, align 8
  %12 = icmp ne %struct.core* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.core*, %struct.core** %1, align 8
  %15 = getelementptr inbounds %struct.core, %struct.core* %14, i32 0, i32 0
  %16 = load %struct.core*, %struct.core** %15, align 8
  store %struct.core* %16, %struct.core** %2, align 8
  %17 = load %struct.core*, %struct.core** %1, align 8
  %18 = icmp ne %struct.core* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.core*, %struct.core** %1, align 8
  %21 = bitcast %struct.core* %20 to i8*
  call void @free(i8* %21) #7
  br label %22

22:                                               ; preds = %19, %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.core*, %struct.core** %2, align 8
  store %struct.core* %24, %struct.core** %1, align 8
  br label %10

25:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_defines() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %2 = load i32, i32* @final_state, align 4
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 -32768)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %7 = load i32, i32* @ntokens, align 4
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_token_translations() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @translations, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %49

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %7 = load i32, i32* @max_user_token_number, align 4
  %8 = load i32, i32* @nsyms, align 4
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9.161, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load i32, i32* @ntokens, align 4
  %11 = icmp slt i32 %10, 127
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10.162, i64 0, i64 0))
  br label %18

15:                                               ; preds = %5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11.163, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @max_user_token_number, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %25 = call i32 @putc(i32 44, %struct._IO_FILE* %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %30 = call i32 @putc(i32 10, %struct._IO_FILE* %29)
  store i32 1, i32* %2, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %36 = load i16*, i16** @token_translations, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %19

46:                                               ; preds = %19
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  br label %52

49:                                               ; preds = %0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14.164, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_gram() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15.158, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @nrules, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %12 = call i32 @putc(i32 44, %struct._IO_FILE* %11)
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 10
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %17 = call i32 @putc(i32 10, %struct._IO_FILE* %16)
  store i32 1, i32* %2, align 4
  br label %21

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %23 = load i16*, i16** @rrhs, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %35 = load i16*, i16** @ritem, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 0
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16.159, i64 0, i64 0), i32 %38)
  store i32 10, i32* %2, align 4
  %40 = load i16*, i16** @ritem, align 8
  %41 = getelementptr inbounds i16, i16* %40, i64 1
  store i16* %41, i16** %3, align 8
  br label %42

42:                                               ; preds = %72, %33
  %43 = load i16*, i16** %3, align 8
  %44 = load i16, i16* %43, align 2
  %45 = icmp ne i16 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %48 = call i32 @putc(i32 44, %struct._IO_FILE* %47)
  %49 = load i32, i32* %2, align 4
  %50 = icmp sge i32 %49, 10
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %53 = call i32 @putc(i32 10, %struct._IO_FILE* %52)
  store i32 1, i32* %2, align 4
  br label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i16*, i16** %3, align 8
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %64 = load i16*, i16** %3, align 8
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %66)
  br label %71

68:                                               ; preds = %57
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17.160, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71
  %73 = load i16*, i16** %3, align 8
  %74 = getelementptr inbounds i16, i16* %73, i32 1
  store i16* %74, i16** %3, align 8
  br label %42

75:                                               ; preds = %42
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_stos() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.157, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @nstates, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %11 = call i32 @putc(i32 44, %struct._IO_FILE* %10)
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 10
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %16 = call i32 @putc(i32 10, %struct._IO_FILE* %15)
  store i32 1, i32* %2, align 4
  br label %20

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %22 = load i16*, i16** @accessing_symbol, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %22, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_rule_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19.154, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @nrules, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %12 = call i32 @putc(i32 44, %struct._IO_FILE* %11)
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 10
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %17 = call i32 @putc(i32 10, %struct._IO_FILE* %16)
  store i32 1, i32* %2, align 4
  br label %21

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %23 = load i16*, i16** @rline, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20.155, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %36

36:                                               ; preds = %136, %33
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @ntokens, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %139

40:                                               ; preds = %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %42 = call i32 @putc(i32 44, %struct._IO_FILE* %41)
  %43 = load i32, i32* %2, align 4
  %44 = icmp sge i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %47 = call i32 @putc(i32 10, %struct._IO_FILE* %46)
  store i32 1, i32* %2, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %53 = call i32 @putc(i32 34, %struct._IO_FILE* %52)
  %54 = load i8**, i8*** @tags, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %130, %51
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %133

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 34
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 92
  br i1 %72, label %73, label %79

73:                                               ; preds = %68, %63
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21.156, i64 0, i64 0), i32 %77)
  br label %129

79:                                               ; preds = %68
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %128

87:                                               ; preds = %79
  %88 = load i8*, i8** %3, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %127

95:                                               ; preds = %87
  %96 = load i8*, i8** %3, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  br label %126

103:                                              ; preds = %95
  %104 = load i8*, i8** %3, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp slt i32 %106, 32
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %3, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sge i32 %111, 127
  br i1 %112, label %113, label %119

113:                                              ; preds = %108, %103
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %117)
  br label %125

119:                                              ; preds = %108
  %120 = load i8*, i8** %3, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %124 = call i32 @putc(i32 %122, %struct._IO_FILE* %123)
  br label %125

125:                                              ; preds = %119, %113
  br label %126

126:                                              ; preds = %125, %100
  br label %127

127:                                              ; preds = %126, %92
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128, %73
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %3, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %3, align 8
  br label %59

133:                                              ; preds = %59
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %135 = call i32 @putc(i32 34, %struct._IO_FILE* %134)
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %1, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %1, align 4
  br label %36

139:                                              ; preds = %36
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %142

142:                                              ; preds = %166, %139
  %143 = load i32, i32* %1, align 4
  %144 = load i32, i32* @nrules, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %142
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %148 = call i32 @putc(i32 44, %struct._IO_FILE* %147)
  %149 = load i32, i32* %2, align 4
  %150 = icmp sge i32 %149, 10
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %153 = call i32 @putc(i32 10, %struct._IO_FILE* %152)
  store i32 1, i32* %2, align 4
  br label %157

154:                                              ; preds = %146
  %155 = load i32, i32* %2, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %159 = load i16*, i16** @rlhs, align 8
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i16, i16* %159, i64 %161
  %163 = load i16, i16* %162, align 2
  %164 = sext i16 %163 to i32
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %1, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %1, align 4
  br label %142

169:                                              ; preds = %142
  %170 = load i16*, i16** @rlhs, align 8
  %171 = getelementptr inbounds i16, i16* %170, i64 1
  %172 = icmp ne i16* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i16*, i16** @rlhs, align 8
  %175 = getelementptr inbounds i16, i16* %174, i64 1
  %176 = bitcast i16* %175 to i8*
  call void @free(i8* %176) #7
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %180

180:                                              ; preds = %213, %177
  %181 = load i32, i32* %1, align 4
  %182 = load i32, i32* @nrules, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %216

184:                                              ; preds = %180
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %186 = call i32 @putc(i32 44, %struct._IO_FILE* %185)
  %187 = load i32, i32* %2, align 4
  %188 = icmp sge i32 %187, 10
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %191 = call i32 @putc(i32 10, %struct._IO_FILE* %190)
  store i32 1, i32* %2, align 4
  br label %195

192:                                              ; preds = %184
  %193 = load i32, i32* %2, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %192, %189
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %197 = load i16*, i16** @rrhs, align 8
  %198 = load i32, i32* %1, align 4
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i16, i16* %197, i64 %200
  %202 = load i16, i16* %201, align 2
  %203 = sext i16 %202 to i32
  %204 = load i16*, i16** @rrhs, align 8
  %205 = load i32, i32* %1, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i16, i16* %204, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = sext i16 %208 to i32
  %210 = sub nsw i32 %203, %209
  %211 = sub nsw i32 %210, 1
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %195
  %214 = load i32, i32* %1, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %1, align 4
  br label %180

216:                                              ; preds = %180
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %218 = call i32 @putc(i32 44, %struct._IO_FILE* %217)
  %219 = load i32, i32* %2, align 4
  %220 = icmp sge i32 %219, 10
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %223 = call i32 @putc(i32 10, %struct._IO_FILE* %222)
  br label %224

224:                                              ; preds = %221, %216
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %226 = load i32, i32* @nitems, align 4
  %227 = load i16*, i16** @rrhs, align 8
  %228 = load i32, i32* @nrules, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i16, i16* %227, i64 %229
  %231 = load i16, i16* %230, align 2
  %232 = sext i16 %231 to i32
  %233 = sub nsw i32 %226, %232
  %234 = sub nsw i32 %233, 1
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %234)
  %236 = load i16*, i16** @rrhs, align 8
  %237 = getelementptr inbounds i16, i16* %236, i64 1
  %238 = icmp ne i16* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %224
  %240 = load i16*, i16** @rrhs, align 8
  %241 = getelementptr inbounds i16, i16* %240, i64 1
  %242 = bitcast i16* %241 to i8*
  call void @free(i8* %242) #7
  br label %243

243:                                              ; preds = %239, %224
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_actions() #0 {
  %1 = load i32, i32* @nstates, align 4
  %2 = load i32, i32* @nvars, align 4
  %3 = add nsw i32 %1, %2
  store i32 %3, i32* @nvectors, align 4
  %4 = load i32, i32* @nvectors, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = trunc i64 %6 to i32
  %8 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %7)
  %9 = bitcast i8* %8 to i16**
  store i16** %9, i16*** @froms, align 8
  %10 = load i32, i32* @nvectors, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = trunc i64 %12 to i32
  %14 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %13)
  %15 = bitcast i8* %14 to i16**
  store i16** %15, i16*** @tos, align 8
  %16 = load i32, i32* @nvectors, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 2
  %19 = trunc i64 %18 to i32
  %20 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %19)
  %21 = bitcast i8* %20 to i16*
  store i16* %21, i16** @tally, align 8
  %22 = load i32, i32* @nvectors, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 2
  %25 = trunc i64 %24 to i32
  %26 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %25)
  %27 = bitcast i8* %26 to i16*
  store i16* %27, i16** @width, align 8
  call void @token_actions()
  call void @free_shifts()
  call void @free_reductions()
  %28 = load i16*, i16** @lookaheads, align 8
  %29 = icmp ne i16* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %0
  %31 = load i16*, i16** @lookaheads, align 8
  %32 = bitcast i16* %31 to i8*
  call void @free(i8* %32) #7
  br label %33

33:                                               ; preds = %30, %0
  %34 = load i32*, i32** @LA, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** @LA, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38) #7
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i16*, i16** @LAruleno, align 8
  %41 = icmp ne i16* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i16*, i16** @LAruleno, align 8
  %44 = bitcast i16* %43 to i8*
  call void @free(i8* %44) #7
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i16*, i16** @accessing_symbol, align 8
  %47 = icmp ne i16* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i16*, i16** @accessing_symbol, align 8
  %50 = bitcast i16* %49 to i8*
  call void @free(i8* %50) #7
  br label %51

51:                                               ; preds = %48, %45
  call void @goto_actions()
  %52 = load i16*, i16** @goto_map, align 8
  %53 = load i32, i32* @ntokens, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  %56 = icmp ne i16* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i16*, i16** @goto_map, align 8
  %59 = load i32, i32* @ntokens, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %58, i64 %60
  %62 = bitcast i16* %61 to i8*
  call void @free(i8* %62) #7
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i16*, i16** @from_state, align 8
  %65 = icmp ne i16* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i16*, i16** @from_state, align 8
  %68 = bitcast i16* %67 to i8*
  call void @free(i8* %68) #7
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i16*, i16** @to_state, align 8
  %71 = icmp ne i16* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i16*, i16** @to_state, align 8
  %74 = bitcast i16* %73 to i8*
  call void @free(i8* %74) #7
  br label %75

75:                                               ; preds = %72, %69
  call void @sort_actions()
  call void @pack_table()
  call void @output_base()
  call void @output_table()
  call void @output_check()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_parser() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @pure_parser, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0))
  br label %10

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %15 = call i32 @feof(%struct._IO_FILE* %14) #7
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10
  br label %115

18:                                               ; preds = %13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %20 = call i32 @getc(%struct._IO_FILE* %19)
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %112, %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %115

24:                                               ; preds = %21
  %25 = load i32, i32* @nolinesflag, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %89

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %33 = call i32 @putc(i32 %31, %struct._IO_FILE* %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %35 = call i32 @getc(%struct._IO_FILE* %34)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %88

38:                                               ; preds = %30
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %40 = call i32 @getc(%struct._IO_FILE* %39)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp eq i32 %41, 108
  br i1 %42, label %43, label %84

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %45 = call i32 @getc(%struct._IO_FILE* %44)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, 105
  br i1 %47, label %48, label %80

48:                                               ; preds = %43
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %50 = call i32 @getc(%struct._IO_FILE* %49)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp eq i32 %51, 110
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %55 = call i32 @getc(%struct._IO_FILE* %54)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = icmp eq i32 %56, 101
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %68, %58
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %61 = call i32 @getc(%struct._IO_FILE* %60)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %1, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %59
  br label %69

68:                                               ; preds = %64
  br label %59

69:                                               ; preds = %67
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %71 = call i32 @getc(%struct._IO_FILE* %70)
  store i32 %71, i32* %1, align 4
  br label %75

72:                                               ; preds = %53
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  br label %79

76:                                               ; preds = %48
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %75
  br label %83

80:                                               ; preds = %43
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %79
  br label %87

84:                                               ; preds = %38
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %30
  br label %89

89:                                               ; preds = %88, %27
  br label %90

90:                                               ; preds = %89, %24
  %91 = load i32, i32* %1, align 4
  %92 = icmp eq i32 %91, 36
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  call void @rewind(%struct._IO_FILE* %94)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %96 = call i32 @getc(%struct._IO_FILE* %95)
  store i32 %96, i32* %1, align 4
  br label %97

97:                                               ; preds = %104, %93
  %98 = load i32, i32* %1, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32, i32* %1, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %103 = call i32 @putc(i32 %101, %struct._IO_FILE* %102)
  br label %104

104:                                              ; preds = %100
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %106 = call i32 @getc(%struct._IO_FILE* %105)
  store i32 %106, i32* %1, align 4
  br label %97

107:                                              ; preds = %97
  br label %112

108:                                              ; preds = %90
  %109 = load i32, i32* %1, align 4
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %111 = call i32 @putc(i32 %109, %struct._IO_FILE* %110)
  br label %112

112:                                              ; preds = %108, %107
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %114 = call i32 @getc(%struct._IO_FILE* %113)
  store i32 %114, i32* %1, align 4
  br label %21

115:                                              ; preds = %21, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_program() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %3 = load i32, i32* @lineno, align 4
  %4 = load i8*, i8** @infile, align 8
  %5 = call i8* @mybasename.149(i8* %4)
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47.150, i64 0, i64 0), i32 %3, i8* %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %8 = call i32 @getc(%struct._IO_FILE* %7)
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %12, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %15 = call i32 @putc(i32 %13, %struct._IO_FILE* %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %17 = call i32 @getc(%struct._IO_FILE* %16)
  store i32 %17, i32* %1, align 4
  br label %9

18:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @mybasename.149(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strrchr(i8* %4, i32 47) #8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %10, %8 ], [ %12, %11 ]
  ret i8* %14
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @token_actions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ntokens, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 2
  %7 = trunc i64 %6 to i32
  %8 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %7)
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** @actrow, align 8
  %10 = call i32 @action_row(i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0), i32 %12)
  call void @save_row(i32 0)
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %14

14:                                               ; preds = %36, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @nstates, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %20 = call i32 @putc(i32 44, %struct._IO_FILE* %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %25 = call i32 @putc(i32 10, %struct._IO_FILE* %24)
  store i32 1, i32* %2, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @action_row(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %1, align 4
  call void @save_row(i32 %35)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  %42 = load i16*, i16** @actrow, align 8
  %43 = icmp ne i16* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i16*, i16** @actrow, align 8
  %46 = bitcast i16* %45 to i8*
  call void @free(i8* %46) #7
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_shifts() #0 {
  %1 = alloca %struct.shifts*, align 8
  %2 = alloca %struct.shifts*, align 8
  %3 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %4 = icmp ne %struct.shifts** %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %7 = bitcast %struct.shifts** %6 to i8*
  call void @free(i8* %7) #7
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %9, %struct.shifts** %1, align 8
  br label %10

10:                                               ; preds = %23, %8
  %11 = load %struct.shifts*, %struct.shifts** %1, align 8
  %12 = icmp ne %struct.shifts* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.shifts*, %struct.shifts** %1, align 8
  %15 = getelementptr inbounds %struct.shifts, %struct.shifts* %14, i32 0, i32 0
  %16 = load %struct.shifts*, %struct.shifts** %15, align 8
  store %struct.shifts* %16, %struct.shifts** %2, align 8
  %17 = load %struct.shifts*, %struct.shifts** %1, align 8
  %18 = icmp ne %struct.shifts* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.shifts*, %struct.shifts** %1, align 8
  %21 = bitcast %struct.shifts* %20 to i8*
  call void @free(i8* %21) #7
  br label %22

22:                                               ; preds = %19, %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.shifts*, %struct.shifts** %2, align 8
  store %struct.shifts* %24, %struct.shifts** %1, align 8
  br label %10

25:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_reductions() #0 {
  %1 = alloca %struct.reductions*, align 8
  %2 = alloca %struct.reductions*, align 8
  %3 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %4 = icmp ne %struct.reductions** %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %7 = bitcast %struct.reductions** %6 to i8*
  call void @free(i8* %7) #7
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.reductions*, %struct.reductions** @first_reduction, align 8
  store %struct.reductions* %9, %struct.reductions** %1, align 8
  br label %10

10:                                               ; preds = %23, %8
  %11 = load %struct.reductions*, %struct.reductions** %1, align 8
  %12 = icmp ne %struct.reductions* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.reductions*, %struct.reductions** %1, align 8
  %15 = getelementptr inbounds %struct.reductions, %struct.reductions* %14, i32 0, i32 0
  %16 = load %struct.reductions*, %struct.reductions** %15, align 8
  store %struct.reductions* %16, %struct.reductions** %2, align 8
  %17 = load %struct.reductions*, %struct.reductions** %1, align 8
  %18 = icmp ne %struct.reductions* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.reductions*, %struct.reductions** %1, align 8
  %21 = bitcast %struct.reductions* %20 to i8*
  call void @free(i8* %21) #7
  br label %22

22:                                               ; preds = %19, %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.reductions*, %struct.reductions** %2, align 8
  store %struct.reductions* %24, %struct.reductions** %1, align 8
  br label %10

25:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @goto_actions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @nstates, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 2
  %7 = trunc i64 %6 to i32
  %8 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %7)
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** @state_count, align 8
  %10 = load i32, i32* @ntokens, align 4
  %11 = call i32 @default_goto(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @ntokens, align 4
  %16 = load i32, i32* %3, align 4
  call void @save_column(i32 %15, i32 %16)
  store i32 10, i32* %2, align 4
  %17 = load i32, i32* @ntokens, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %42, %0
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @nsyms, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %25 = call i32 @putc(i32 44, %struct._IO_FILE* %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %30 = call i32 @putc(i32 10, %struct._IO_FILE* %29)
  store i32 1, i32* %2, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @default_goto(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* %3, align 4
  call void @save_column(i32 %40, i32 %41)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  %48 = load i16*, i16** @state_count, align 8
  %49 = icmp ne i16* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i16*, i16** @state_count, align 8
  %52 = bitcast i16* %51 to i8*
  call void @free(i8* %52) #7
  br label %53

53:                                               ; preds = %50, %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort_actions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @nvectors, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 2
  %9 = trunc i64 %8 to i32
  %10 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %9)
  %11 = bitcast i8* %10 to i16*
  store i16* %11, i16** @order, align 8
  store i32 0, i32* @nentries, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %127, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @nvectors, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %130

16:                                               ; preds = %12
  %17 = load i16*, i16** @tally, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %17, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %126

24:                                               ; preds = %16
  %25 = load i16*, i16** @tally, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i16*, i16** @width, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @nentries, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %57, %24
  %40 = load i32, i32* %2, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i16*, i16** @width, align 8
  %44 = load i16*, i16** @order, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = sext i16 %48 to i64
  %50 = getelementptr inbounds i16, i16* %43, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %42, %39
  %56 = phi i1 [ false, %39 ], [ %54, %42 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %2, align 4
  br label %39

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %92, %60
  %62 = load i32, i32* %2, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load i16*, i16** @width, align 8
  %66 = load i16*, i16** @order, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i16, i16* %65, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %64
  %78 = load i16*, i16** @tally, align 8
  %79 = load i16*, i16** @order, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16, i16* %79, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i64
  %85 = getelementptr inbounds i16, i16* %78, i64 %84
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br label %90

90:                                               ; preds = %77, %64, %61
  %91 = phi i1 [ false, %64 ], [ false, %61 ], [ %89, %77 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %2, align 4
  br label %61

95:                                               ; preds = %90
  %96 = load i32, i32* @nentries, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %113, %95
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %2, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load i16*, i16** @order, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %103, i64 %105
  %107 = load i16, i16* %106, align 2
  %108 = load i16*, i16** @order, align 8
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %108, i64 %111
  store i16 %107, i16* %112, align 2
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %3, align 4
  br label %98

116:                                              ; preds = %98
  %117 = load i32, i32* %1, align 4
  %118 = trunc i32 %117 to i16
  %119 = load i16*, i16** @order, align 8
  %120 = load i32, i32* %2, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %119, i64 %122
  store i16 %118, i16* %123, align 2
  %124 = load i32, i32* @nentries, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @nentries, align 4
  br label %126

126:                                              ; preds = %116, %16
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %1, align 4
  br label %12

130:                                              ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pack_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @nvectors, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 2
  %7 = trunc i64 %6 to i32
  %8 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %7)
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** @base, align 8
  %10 = load i32, i32* @nentries, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 2
  %13 = trunc i64 %12 to i32
  %14 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %13)
  %15 = bitcast i8* %14 to i16*
  store i16* %15, i16** @pos, align 8
  %16 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 65534)
  %17 = bitcast i8* %16 to i16*
  store i16* %17, i16** @table, align 8
  %18 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 65534)
  %19 = bitcast i8* %18 to i16*
  store i16* %19, i16** @check, align 8
  store i32 0, i32* @lowzero, align 4
  store i32 0, i32* @high, align 4
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %29, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @nvectors, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i16*, i16** @base, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  store i16 -32768, i16* %28, align 2
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %20

32:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %41, %32
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 32767
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i16*, i16** @check, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  store i16 -1, i16* %40, align 2
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %33

44:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %81, %44
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @nentries, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %45
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @matching_state(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @pack_vector(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load i16*, i16** @base, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %58, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %2, align 4
  %66 = trunc i32 %65 to i16
  %67 = load i16*, i16** @pos, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %67, i64 %69
  store i16 %66, i16* %70, align 2
  %71 = load i32, i32* %2, align 4
  %72 = trunc i32 %71 to i16
  %73 = load i16*, i16** @base, align 8
  %74 = load i16*, i16** @order, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i16, i16* %73, i64 %79
  store i16 %72, i16* %80, align 2
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  br label %45

84:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  br label %85

85:                                               ; preds = %118, %84
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* @nvectors, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %85
  %90 = load i16**, i16*** @froms, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16*, i16** %90, i64 %92
  %94 = load i16*, i16** %93, align 8
  %95 = icmp ne i16* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i16**, i16*** @froms, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16*, i16** %97, i64 %99
  %101 = load i16*, i16** %100, align 8
  %102 = bitcast i16* %101 to i8*
  call void @free(i8* %102) #7
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i16**, i16*** @tos, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i16*, i16** %104, i64 %106
  %108 = load i16*, i16** %107, align 8
  %109 = icmp ne i16* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i16**, i16*** @tos, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16*, i16** %111, i64 %113
  %115 = load i16*, i16** %114, align 8
  %116 = bitcast i16* %115 to i8*
  call void @free(i8* %116) #7
  br label %117

117:                                              ; preds = %110, %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %85

121:                                              ; preds = %85
  %122 = load i16**, i16*** @froms, align 8
  %123 = icmp ne i16** %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i16**, i16*** @froms, align 8
  %126 = bitcast i16** %125 to i8*
  call void @free(i8* %126) #7
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i16**, i16*** @tos, align 8
  %129 = icmp ne i16** %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i16**, i16*** @tos, align 8
  %132 = bitcast i16** %131 to i8*
  call void @free(i8* %132) #7
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i16*, i16** @pos, align 8
  %135 = icmp ne i16* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i16*, i16** @pos, align 8
  %138 = bitcast i16* %137 to i8*
  call void @free(i8* %138) #7
  br label %139

139:                                              ; preds = %136, %133
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %4 = load i16*, i16** @base, align 8
  %5 = getelementptr inbounds i16, i16* %4, i64 0
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0), i32 %7)
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %9

9:                                                ; preds = %33, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @nstates, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %15 = call i32 @putc(i32 44, %struct._IO_FILE* %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %20 = call i32 @putc(i32 10, %struct._IO_FILE* %19)
  store i32 1, i32* %2, align 4
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %26 = load i16*, i16** @base, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %38 = load i16*, i16** @base, align 8
  %39 = load i32, i32* @nstates, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i32
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37.153, i64 0, i64 0), i32 %43)
  store i32 10, i32* %2, align 4
  %45 = load i32, i32* @nstates, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %71, %36
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @nvectors, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %53 = call i32 @putc(i32 44, %struct._IO_FILE* %52)
  %54 = load i32, i32* %2, align 4
  %55 = icmp sge i32 %54, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %58 = call i32 @putc(i32 10, %struct._IO_FILE* %57)
  store i32 1, i32* %2, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %64 = load i16*, i16** @base, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %64, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  %77 = load i16*, i16** @base, align 8
  %78 = icmp ne i16* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i16*, i16** @base, align 8
  %81 = bitcast i16* %80 to i8*
  call void @free(i8* %81) #7
  br label %82

82:                                               ; preds = %79, %74
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %4 = load i32, i32* @high, align 4
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %7 = load i16*, i16** @table, align 8
  %8 = getelementptr inbounds i16, i16* %7, i64 0
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i32
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0), i32 %10)
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %36, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @high, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %18 = call i32 @putc(i32 44, %struct._IO_FILE* %17)
  %19 = load i32, i32* %2, align 4
  %20 = icmp sge i32 %19, 10
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %23 = call i32 @putc(i32 10, %struct._IO_FILE* %22)
  store i32 1, i32* %2, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %29 = load i16*, i16** @table, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %12

39:                                               ; preds = %12
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  %42 = load i16*, i16** @table, align 8
  %43 = icmp ne i16* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i16*, i16** @table, align 8
  %46 = bitcast i16* %45 to i8*
  call void @free(i8* %46) #7
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %4 = load i16*, i16** @check, align 8
  %5 = getelementptr inbounds i16, i16* %4, i64 0
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0), i32 %7)
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %9

9:                                                ; preds = %33, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @high, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %15 = call i32 @putc(i32 44, %struct._IO_FILE* %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %20 = call i32 @putc(i32 10, %struct._IO_FILE* %19)
  store i32 1, i32* %2, align 4
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %26 = load i16*, i16** @check, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.151, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.152, i64 0, i64 0))
  %39 = load i16*, i16** @check, align 8
  %40 = icmp ne i16* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i16*, i16** @check, align 8
  %43 = bitcast i16* %42 to i8*
  call void @free(i8* %43) #7
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @matching_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i16*, i16** @order, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %11, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @nstates, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %133

21:                                               ; preds = %1
  %22 = load i16*, i16** @tally, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %22, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i16*, i16** @width, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %129, %21
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %132

39:                                               ; preds = %36
  %40 = load i16*, i16** @order, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %40, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i16*, i16** @width, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %46, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = sext i16 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %39
  %55 = load i16*, i16** @tally, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %55, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %39
  store i32 -1, i32* %2, align 4
  br label %133

64:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %120, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i1 [ false, %65 ], [ %71, %68 ]
  br i1 %73, label %74, label %123

74:                                               ; preds = %72
  %75 = load i16**, i16*** @tos, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16*, i16** %75, i64 %77
  %79 = load i16*, i16** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16, i16* %79, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16**, i16*** @tos, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16*, i16** %85, i64 %87
  %89 = load i16*, i16** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %89, i64 %91
  %93 = load i16, i16* %92, align 2
  %94 = sext i16 %93 to i32
  %95 = icmp ne i32 %84, %94
  br i1 %95, label %118, label %96

96:                                               ; preds = %74
  %97 = load i16**, i16*** @froms, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16*, i16** %97, i64 %99
  %101 = load i16*, i16** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %101, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i32
  %107 = load i16**, i16*** @froms, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16*, i16** %107, i64 %109
  %111 = load i16*, i16** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i32
  %117 = icmp ne i32 %106, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %96, %74
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %65

123:                                              ; preds = %72
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %133

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %10, align 4
  br label %36

132:                                              ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %126, %63, %20
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pack_vector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i16*, i16** @order, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i16*, i16** @tally, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  call void @berror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i16**, i16*** @froms, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16*, i16** %28, i64 %30
  %32 = load i16*, i16** %31, align 8
  store i16* %32, i16** %10, align 8
  %33 = load i16**, i16*** @tos, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16*, i16** %33, i64 %35
  %37 = load i16*, i16** %36, align 8
  store i16* %37, i16** %11, align 8
  %38 = load i32, i32* @lowzero, align 4
  %39 = load i16*, i16** %10, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 0
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = sub nsw i32 %38, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %165, %27
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 32767
  br i1 %46, label %47, label %168

47:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %79, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %82

57:                                               ; preds = %55
  %58 = load i32, i32* %5, align 4
  %59 = load i16*, i16** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = add nsw i32 %58, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 32767
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  call void @fatals(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 32767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i16*, i16** @table, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %70, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %48

82:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %103, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %87, %88
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %106

92:                                               ; preds = %90
  %93 = load i16*, i16** @pos, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %93, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %83

106:                                              ; preds = %90
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %164

109:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %141, %109
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %144

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = load i16*, i16** %10, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %116, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  %122 = add nsw i32 %115, %121
  store i32 %122, i32* %8, align 4
  %123 = load i16*, i16** %11, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, i16* %123, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = load i16*, i16** @table, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i16, i16* %128, i64 %130
  store i16 %127, i16* %131, align 2
  %132 = load i16*, i16** %10, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, i16* %132, i64 %134
  %136 = load i16, i16* %135, align 2
  %137 = load i16*, i16** @check, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %137, i64 %139
  store i16 %136, i16* %140, align 2
  br label %141

141:                                              ; preds = %114
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %110

144:                                              ; preds = %110
  br label %145

145:                                              ; preds = %153, %144
  %146 = load i16*, i16** @table, align 8
  %147 = load i32, i32* @lowzero, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, i16* %146, i64 %148
  %150 = load i16, i16* %149, align 2
  %151 = sext i16 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @lowzero, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @lowzero, align 4
  br label %145

156:                                              ; preds = %145
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @high, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* @high, align 4
  br label %162

162:                                              ; preds = %160, %156
  %163 = load i32, i32* %5, align 4
  store i32 %163, i32* %2, align 4
  br label %169

164:                                              ; preds = %106
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %44

168:                                              ; preds = %44
  call void @berror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %162
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @default_goto(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i16*, i16** @goto_map, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i16*, i16** @goto_map, align 8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %15, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %87

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @nstates, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i16*, i16** @state_count, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  store i16 0, i16* %35, align 2
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %56, %39
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i16*, i16** @state_count, align 8
  %47 = load i16*, i16** @to_state, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i64
  %53 = getelementptr inbounds i16, i16* %46, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = add i16 %54, 1
  store i16 %55, i16* %53, align 2
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %41

59:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %82, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @nstates, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i16*, i16** @state_count, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = sext i16 %69 to i32
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load i16*, i16** @state_count, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %73, %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %60

85:                                               ; preds = %60
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %25
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_column(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i16*, i16** @goto_map, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i16*, i16** @goto_map, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %19, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %44, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i16*, i16** @to_state, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %132

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @ntokens, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* @nstates, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 2
  %60 = trunc i64 %59 to i32
  %61 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %60)
  %62 = bitcast i8* %61 to i16*
  store i16* %62, i16** %8, align 8
  store i16* %62, i16** %9, align 8
  %63 = load i16**, i16*** @froms, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16*, i16** %63, i64 %65
  store i16* %62, i16** %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 2
  %70 = trunc i64 %69 to i32
  %71 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %70)
  %72 = bitcast i8* %71 to i16*
  store i16* %72, i16** %10, align 8
  %73 = load i16**, i16*** @tos, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16*, i16** %73, i64 %75
  store i16* %72, i16** %76, align 8
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %107, %51
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load i16*, i16** @to_state, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %83, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %82
  %92 = load i16*, i16** @from_state, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = load i16*, i16** %9, align 8
  %98 = getelementptr inbounds i16, i16* %97, i32 1
  store i16* %98, i16** %9, align 8
  store i16 %96, i16* %97, align 2
  %99 = load i16*, i16** @to_state, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %99, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = load i16*, i16** %10, align 8
  %105 = getelementptr inbounds i16, i16* %104, i32 1
  store i16* %105, i16** %10, align 8
  store i16 %103, i16* %104, align 2
  br label %106

106:                                              ; preds = %91, %82
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %78

110:                                              ; preds = %78
  %111 = load i32, i32* %11, align 4
  %112 = trunc i32 %111 to i16
  %113 = load i16*, i16** @tally, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %113, i64 %115
  store i16 %112, i16* %116, align 2
  %117 = load i16*, i16** %9, align 8
  %118 = getelementptr inbounds i16, i16* %117, i64 -1
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  %121 = load i16*, i16** %8, align 8
  %122 = getelementptr inbounds i16, i16* %121, i64 0
  %123 = load i16, i16* %122, align 2
  %124 = sext i16 %123 to i32
  %125 = sub nsw i32 %120, %124
  %126 = add nsw i32 %125, 1
  %127 = trunc i32 %126 to i16
  %128 = load i16*, i16** @width, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i16, i16* %128, i64 %130
  store i16 %127, i16* %131, align 2
  br label %132

132:                                              ; preds = %110, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @action_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
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
  %16 = alloca i32*, align 8
  %17 = alloca %struct.reductions*, align 8
  %18 = alloca %struct.shifts*, align 8
  %19 = alloca %struct.errs*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %30, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ntokens, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i16*, i16** @actrow, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  store i16 0, i16* %29, align 2
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %21

33:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %34 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.reductions*, %struct.reductions** %34, i64 %36
  %38 = load %struct.reductions*, %struct.reductions** %37, align 8
  store %struct.reductions* %38, %struct.reductions** %17, align 8
  %39 = load %struct.reductions*, %struct.reductions** %17, align 8
  %40 = icmp ne %struct.reductions* %39, null
  br i1 %40, label %41, label %117

41:                                               ; preds = %33
  %42 = load %struct.reductions*, %struct.reductions** %17, align 8
  %43 = getelementptr inbounds %struct.reductions, %struct.reductions* %42, i32 0, i32 2
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %116

48:                                               ; preds = %41
  %49 = load i16*, i16** @lookaheads, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i16*, i16** @lookaheads, align 8
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %55, i64 %58
  %60 = load i16, i16* %59, align 2
  %61 = sext i16 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %112, %48
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %64
  %69 = load i16*, i16** @LAruleno, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32*, i32** @LA, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @tokensetsize, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %16, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %108, %68
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @ntokens, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = trunc i32 %93 to i16
  %95 = load i16*, i16** @actrow, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i16, i16* %95, i64 %97
  store i16 %94, i16* %98, align 2
  br label %99

99:                                               ; preds = %92, %86
  %100 = load i32, i32* %15, align 4
  %101 = shl i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  store i32 1, i32* %15, align 4
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %16, align 8
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %82

111:                                              ; preds = %82
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %3, align 4
  br label %64

115:                                              ; preds = %64
  br label %116

116:                                              ; preds = %115, %41
  br label %117

117:                                              ; preds = %116, %33
  %118 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.shifts*, %struct.shifts** %118, i64 %120
  %122 = load %struct.shifts*, %struct.shifts** %121, align 8
  store %struct.shifts* %122, %struct.shifts** %18, align 8
  %123 = load %struct.shifts*, %struct.shifts** %18, align 8
  %124 = icmp ne %struct.shifts* %123, null
  br i1 %124, label %125, label %172

125:                                              ; preds = %117
  %126 = load %struct.shifts*, %struct.shifts** %18, align 8
  %127 = getelementptr inbounds %struct.shifts, %struct.shifts* %126, i32 0, i32 2
  %128 = load i16, i16* %127, align 2
  %129 = sext i16 %128 to i32
  store i32 %129, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %168, %125
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %130
  %135 = load %struct.shifts*, %struct.shifts** %18, align 8
  %136 = getelementptr inbounds %struct.shifts, %struct.shifts* %135, i32 0, i32 3
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [1 x i16], [1 x i16]* %136, i64 0, i64 %138
  %140 = load i16, i16* %139, align 2
  %141 = sext i16 %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  br label %168

145:                                              ; preds = %134
  %146 = load i16*, i16** @accessing_symbol, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, i16* %146, i64 %148
  %150 = load i16, i16* %149, align 2
  %151 = sext i16 %150 to i32
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @ntokens, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %171

156:                                              ; preds = %145
  %157 = load i32, i32* %13, align 4
  %158 = trunc i32 %157 to i16
  %159 = load i16*, i16** @actrow, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i16, i16* %159, i64 %161
  store i16 %158, i16* %162, align 2
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @error_token_number, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  store i32 1, i32* %20, align 4
  br label %167

167:                                              ; preds = %166, %156
  br label %168

168:                                              ; preds = %167, %144
  %169 = load i32, i32* %3, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %3, align 4
  br label %130

171:                                              ; preds = %155, %130
  br label %172

172:                                              ; preds = %171, %117
  %173 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %174 = load i32, i32* %2, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.errs*, %struct.errs** %173, i64 %175
  %177 = load %struct.errs*, %struct.errs** %176, align 8
  store %struct.errs* %177, %struct.errs** %19, align 8
  %178 = load %struct.errs*, %struct.errs** %19, align 8
  %179 = icmp ne %struct.errs* %178, null
  br i1 %179, label %180, label %205

180:                                              ; preds = %172
  %181 = load %struct.errs*, %struct.errs** %19, align 8
  %182 = getelementptr inbounds %struct.errs, %struct.errs* %181, i32 0, i32 0
  %183 = load i16, i16* %182, align 2
  %184 = sext i16 %183 to i32
  store i32 %184, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %201, %180
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  %190 = load %struct.errs*, %struct.errs** %19, align 8
  %191 = getelementptr inbounds %struct.errs, %struct.errs* %190, i32 0, i32 1
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [1 x i16], [1 x i16]* %191, i64 0, i64 %193
  %195 = load i16, i16* %194, align 2
  %196 = sext i16 %195 to i32
  store i32 %196, i32* %14, align 4
  %197 = load i16*, i16** @actrow, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i16, i16* %197, i64 %199
  store i16 -32768, i16* %200, align 2
  br label %201

201:                                              ; preds = %189
  %202 = load i32, i32* %3, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %3, align 4
  br label %185

204:                                              ; preds = %185
  br label %205

205:                                              ; preds = %204, %172
  %206 = load i32, i32* %10, align 4
  %207 = icmp sge i32 %206, 1
  br i1 %207, label %208, label %300

208:                                              ; preds = %205
  %209 = load i32, i32* %20, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %300, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** @consistent, align 8
  %213 = load i32, i32* %2, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = icmp ne i8 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %211
  %219 = load %struct.reductions*, %struct.reductions** %17, align 8
  %220 = getelementptr inbounds %struct.reductions, %struct.reductions* %219, i32 0, i32 3
  %221 = getelementptr inbounds [1 x i16], [1 x i16]* %220, i64 0, i64 0
  %222 = load i16, i16* %221, align 4
  %223 = sext i16 %222 to i32
  store i32 %223, i32* %9, align 4
  br label %299

224:                                              ; preds = %211
  store i32 0, i32* %11, align 4
  %225 = load i32, i32* %6, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %266, %224
  %227 = load i32, i32* %3, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %269

230:                                              ; preds = %226
  store i32 0, i32* %8, align 4
  %231 = load i16*, i16** @LAruleno, align 8
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i16, i16* %231, i64 %233
  %235 = load i16, i16* %234, align 2
  %236 = sext i16 %235 to i32
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %12, align 4
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %255, %230
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @ntokens, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %238
  %243 = load i16*, i16** @actrow, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i16, i16* %243, i64 %245
  %247 = load i16, i16* %246, align 2
  %248 = sext i16 %247 to i32
  %249 = load i32, i32* %12, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %254

254:                                              ; preds = %251, %242
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %4, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %4, align 4
  br label %238

258:                                              ; preds = %238
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load i32, i32* %8, align 4
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %12, align 4
  store i32 %264, i32* %9, align 4
  br label %265

265:                                              ; preds = %262, %258
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %3, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %3, align 4
  br label %226

269:                                              ; preds = %226
  %270 = load i32, i32* %11, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %298

272:                                              ; preds = %269
  store i32 0, i32* %4, align 4
  br label %273

273:                                              ; preds = %292, %272
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* @ntokens, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %295

277:                                              ; preds = %273
  %278 = load i16*, i16** @actrow, align 8
  %279 = load i32, i32* %4, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i16, i16* %278, i64 %280
  %282 = load i16, i16* %281, align 2
  %283 = sext i16 %282 to i32
  %284 = load i32, i32* %9, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %277
  %287 = load i16*, i16** @actrow, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i16, i16* %287, i64 %289
  store i16 0, i16* %290, align 2
  br label %291

291:                                              ; preds = %286, %277
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %4, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %4, align 4
  br label %273

295:                                              ; preds = %273
  %296 = load i32, i32* %9, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %9, align 4
  br label %298

298:                                              ; preds = %295, %269
  br label %299

299:                                              ; preds = %298, %218
  br label %300

300:                                              ; preds = %299, %208, %205
  %301 = load i32, i32* %9, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %300
  store i32 0, i32* %4, align 4
  br label %304

304:                                              ; preds = %322, %303
  %305 = load i32, i32* %4, align 4
  %306 = load i32, i32* @ntokens, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %325

308:                                              ; preds = %304
  %309 = load i16*, i16** @actrow, align 8
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i16, i16* %309, i64 %311
  %313 = load i16, i16* %312, align 2
  %314 = sext i16 %313 to i32
  %315 = icmp eq i32 %314, -32768
  br i1 %315, label %316, label %321

316:                                              ; preds = %308
  %317 = load i16*, i16** @actrow, align 8
  %318 = load i32, i32* %4, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i16, i16* %317, i64 %319
  store i16 0, i16* %320, align 2
  br label %321

321:                                              ; preds = %316, %308
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %4, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %4, align 4
  br label %304

325:                                              ; preds = %304
  br label %326

326:                                              ; preds = %325, %300
  %327 = load i32, i32* %9, align 4
  ret i32 %327
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ntokens, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i16*, i16** @actrow, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %102

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 2
  %35 = trunc i64 %34 to i32
  %36 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %35)
  %37 = bitcast i8* %36 to i16*
  store i16* %37, i16** %5, align 8
  store i16* %37, i16** %6, align 8
  %38 = load i16**, i16*** @froms, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16*, i16** %38, i64 %40
  store i16* %37, i16** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 2
  %45 = trunc i64 %44 to i32
  %46 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %45)
  %47 = bitcast i8* %46 to i16*
  store i16* %47, i16** %7, align 8
  %48 = load i16**, i16*** @tos, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16*, i16** %48, i64 %50
  store i16* %47, i16** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %77, %31
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @ntokens, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i16*, i16** @actrow, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %57, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load i32, i32* %3, align 4
  %66 = trunc i32 %65 to i16
  %67 = load i16*, i16** %6, align 8
  %68 = getelementptr inbounds i16, i16* %67, i32 1
  store i16* %68, i16** %6, align 8
  store i16 %66, i16* %67, align 2
  %69 = load i16*, i16** @actrow, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = load i16*, i16** %7, align 8
  %75 = getelementptr inbounds i16, i16* %74, i32 1
  store i16* %75, i16** %7, align 8
  store i16 %73, i16* %74, align 2
  br label %76

76:                                               ; preds = %64, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load i32, i32* %4, align 4
  %82 = trunc i32 %81 to i16
  %83 = load i16*, i16** @tally, align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %83, i64 %85
  store i16 %82, i16* %86, align 2
  %87 = load i16*, i16** %6, align 8
  %88 = getelementptr inbounds i16, i16* %87, i64 -1
  %89 = load i16, i16* %88, align 2
  %90 = sext i16 %89 to i32
  %91 = load i16*, i16** %5, align 8
  %92 = getelementptr inbounds i16, i16* %91, i64 0
  %93 = load i16, i16* %92, align 2
  %94 = sext i16 %93 to i32
  %95 = sub nsw i32 %90, %94
  %96 = add nsw i32 %95, 1
  %97 = trunc i32 %96 to i16
  %98 = load i16*, i16** @width, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, i16* %98, i64 %100
  store i16 %97, i16* %101, align 2
  br label %102

102:                                              ; preds = %80, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @terse() #0 {
  %1 = load i8, i8* @any_conflicts, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @conflict_log()
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @verbose() #0 {
  %1 = alloca i32, align 4
  %2 = load i8, i8* @any_conflicts, align 1
  %3 = icmp ne i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @verbose_conflict_log()
  br label %5

5:                                                ; preds = %4, %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.169, i64 0, i64 0))
  call void @print_token(i32 -1, i32 0)
  %8 = load i32, i32* @translations, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @max_user_token_number, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i16*, i16** @token_translations, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load i32, i32* %1, align 4
  %25 = load i16*, i16** @token_translations, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  call void @print_token(i32 %24, i32 %30)
  br label %31

31:                                               ; preds = %23, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %11

35:                                               ; preds = %11
  br label %48

36:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %37

37:                                               ; preds = %44, %36
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @ntokens, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  call void @print_token(i32 %42, i32 %43)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %37

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %35
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %55, %48
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @nstates, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %1, align 4
  call void @print_state(i32 %54)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %49

58:                                               ; preds = %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_token(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i8**, i8*** @tags, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.180, i64 0, i64 0), i32 %6, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.170, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %2, align 4
  call void @print_core(i32 %6)
  %7 = load i32, i32* %2, align 4
  call void @print_actions(i32 %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_core(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.core*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load %struct.core**, %struct.core*** @state_table, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.core*, %struct.core** %9, i64 %11
  %13 = load %struct.core*, %struct.core** %12, align 8
  store %struct.core* %13, %struct.core** %6, align 8
  %14 = load %struct.core*, %struct.core** %6, align 8
  %15 = getelementptr inbounds %struct.core, %struct.core* %14, i32 0, i32 4
  %16 = load i16, i16* %15, align 4
  %17 = sext i16 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %117

21:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %111, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %22
  %27 = load i16*, i16** @ritem, align 8
  %28 = load %struct.core*, %struct.core** %6, align 8
  %29 = getelementptr inbounds %struct.core, %struct.core* %28, i32 0, i32 5
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1 x i16], [1 x i16]* %29, i64 0, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %27, i64 %35
  store i16* %36, i16** %7, align 8
  store i16* %36, i16** %8, align 8
  br label %37

37:                                               ; preds = %42, %26
  %38 = load i16*, i16** %7, align 8
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i16*, i16** %7, align 8
  %44 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %44, i16** %7, align 8
  br label %37

45:                                               ; preds = %37
  %46 = load i16*, i16** %7, align 8
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %51 = load i8**, i8*** @tags, align 8
  %52 = load i16*, i16** @rlhs, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %51, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.176, i64 0, i64 0), i8* %59)
  %61 = load i16*, i16** @ritem, align 8
  %62 = load i16*, i16** @rrhs, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %61, i64 %68
  store i16* %69, i16** %7, align 8
  br label %70

70:                                               ; preds = %83, %45
  %71 = load i16*, i16** %7, align 8
  %72 = load i16*, i16** %8, align 8
  %73 = icmp ult i16* %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %76 = load i8**, i8*** @tags, align 8
  %77 = load i16*, i16** %7, align 8
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.177, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i16*, i16** %7, align 8
  %85 = getelementptr inbounds i16, i16* %84, i32 1
  store i16* %85, i16** %7, align 8
  br label %70

86:                                               ; preds = %70
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %88 = call i32 @putc(i32 46, %struct._IO_FILE* %87)
  br label %89

89:                                               ; preds = %94, %86
  %90 = load i16*, i16** %7, align 8
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %96 = load i8**, i8*** @tags, align 8
  %97 = load i16*, i16** %7, align 8
  %98 = load i16, i16* %97, align 2
  %99 = sext i16 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.178, i64 0, i64 0), i8* %101)
  %103 = load i16*, i16** %7, align 8
  %104 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %104, i16** %7, align 8
  br label %89

105:                                              ; preds = %89
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.179, i64 0, i64 0), i32 %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %110 = call i32 @putc(i32 10, %struct._IO_FILE* %109)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %22

114:                                              ; preds = %22
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %116 = call i32 @putc(i32 10, %struct._IO_FILE* %115)
  br label %117

117:                                              ; preds = %114, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_actions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.shifts*, align 8
  %8 = alloca %struct.errs*, align 8
  %9 = alloca %struct.reductions*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.shifts*, %struct.shifts** %11, i64 %13
  %15 = load %struct.shifts*, %struct.shifts** %14, align 8
  store %struct.shifts* %15, %struct.shifts** %7, align 8
  %16 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.reductions*, %struct.reductions** %16, i64 %18
  %20 = load %struct.reductions*, %struct.reductions** %19, align 8
  store %struct.reductions* %20, %struct.reductions** %9, align 8
  %21 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.errs*, %struct.errs** %21, i64 %23
  %25 = load %struct.errs*, %struct.errs** %24, align 8
  store %struct.errs* %25, %struct.errs** %8, align 8
  %26 = load %struct.shifts*, %struct.shifts** %7, align 8
  %27 = icmp ne %struct.shifts* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.reductions*, %struct.reductions** %9, align 8
  %30 = icmp ne %struct.reductions* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.171, i64 0, i64 0))
  br label %218

34:                                               ; preds = %28, %1
  %35 = load %struct.shifts*, %struct.shifts** %7, align 8
  %36 = icmp ne %struct.shifts* %35, null
  br i1 %36, label %37, label %87

37:                                               ; preds = %34
  %38 = load %struct.shifts*, %struct.shifts** %7, align 8
  %39 = getelementptr inbounds %struct.shifts, %struct.shifts* %38, i32 0, i32 2
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  store i32 %41, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %77, %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load %struct.shifts*, %struct.shifts** %7, align 8
  %48 = getelementptr inbounds %struct.shifts, %struct.shifts* %47, i32 0, i32 3
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x i16], [1 x i16]* %48, i64 0, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = icmp ne i16 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %77

55:                                               ; preds = %46
  %56 = load %struct.shifts*, %struct.shifts** %7, align 8
  %57 = getelementptr inbounds %struct.shifts, %struct.shifts* %56, i32 0, i32 3
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1 x i16], [1 x i16]* %57, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i16*, i16** @accessing_symbol, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %63, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %70 = load i8**, i8*** @tags, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.172, i64 0, i64 0), i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %55, %54
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %42

80:                                               ; preds = %42
  %81 = load i32, i32* %3, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %85 = call i32 @putc(i32 10, %struct._IO_FILE* %84)
  br label %86

86:                                               ; preds = %83, %80
  br label %88

87:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load %struct.errs*, %struct.errs** %8, align 8
  %90 = icmp ne %struct.errs* %89, null
  br i1 %90, label %91, label %134

91:                                               ; preds = %88
  %92 = load %struct.errs*, %struct.errs** %8, align 8
  %93 = getelementptr inbounds %struct.errs, %struct.errs* %92, i32 0, i32 0
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i32
  store i32 %95, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %124, %91
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load %struct.errs*, %struct.errs** %8, align 8
  %102 = getelementptr inbounds %struct.errs, %struct.errs* %101, i32 0, i32 1
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [1 x i16], [1 x i16]* %102, i64 0, i64 %104
  %106 = load i16, i16* %105, align 2
  %107 = icmp ne i16 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %124

109:                                              ; preds = %100
  %110 = load %struct.errs*, %struct.errs** %8, align 8
  %111 = getelementptr inbounds %struct.errs, %struct.errs* %110, i32 0, i32 1
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [1 x i16], [1 x i16]* %111, i64 0, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i32
  store i32 %116, i32* %6, align 4
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %118 = load i8**, i8*** @tags, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9.173, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %109, %108
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %96

127:                                              ; preds = %96
  %128 = load i32, i32* %3, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %132 = call i32 @putc(i32 10, %struct._IO_FILE* %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %135

134:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i8*, i8** @consistent, align 8
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %135
  %144 = load %struct.reductions*, %struct.reductions** %9, align 8
  %145 = icmp ne %struct.reductions* %144, null
  br i1 %145, label %146, label %166

146:                                              ; preds = %143
  %147 = load %struct.reductions*, %struct.reductions** %9, align 8
  %148 = getelementptr inbounds %struct.reductions, %struct.reductions* %147, i32 0, i32 3
  %149 = getelementptr inbounds [1 x i16], [1 x i16]* %148, i64 0, i64 0
  %150 = load i16, i16* %149, align 4
  %151 = sext i16 %150 to i32
  store i32 %151, i32* %10, align 4
  %152 = load i16*, i16** @rlhs, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16, i16* %152, i64 %154
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i32
  store i32 %157, i32* %6, align 4
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i8**, i8*** @tags, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.174, i64 0, i64 0), i32 %159, i8* %164)
  br label %172

166:                                              ; preds = %143, %135
  %167 = load %struct.reductions*, %struct.reductions** %9, align 8
  %168 = icmp ne %struct.reductions* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* %2, align 4
  call void @print_reductions(i32 %170)
  br label %171

171:                                              ; preds = %169, %166
  br label %172

172:                                              ; preds = %171, %146
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %218

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %212, %176
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %215

181:                                              ; preds = %177
  %182 = load %struct.shifts*, %struct.shifts** %7, align 8
  %183 = getelementptr inbounds %struct.shifts, %struct.shifts* %182, i32 0, i32 3
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [1 x i16], [1 x i16]* %183, i64 0, i64 %185
  %187 = load i16, i16* %186, align 2
  %188 = icmp ne i16 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %181
  br label %212

190:                                              ; preds = %181
  %191 = load %struct.shifts*, %struct.shifts** %7, align 8
  %192 = getelementptr inbounds %struct.shifts, %struct.shifts* %191, i32 0, i32 3
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [1 x i16], [1 x i16]* %192, i64 0, i64 %194
  %196 = load i16, i16* %195, align 2
  %197 = sext i16 %196 to i32
  store i32 %197, i32* %5, align 4
  %198 = load i16*, i16** @accessing_symbol, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i16, i16* %198, i64 %200
  %202 = load i16, i16* %201, align 2
  %203 = sext i16 %202 to i32
  store i32 %203, i32* %6, align 4
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %205 = load i8**, i8*** @tags, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11.175, i64 0, i64 0), i8* %209, i32 %210)
  br label %212

212:                                              ; preds = %190, %189
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %177

215:                                              ; preds = %177
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %217 = call i32 @putc(i32 10, %struct._IO_FILE* %216)
  br label %218

218:                                              ; preds = %215, %172, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @reader() #0 {
  store i32 0, i32* @start_flag, align 4
  store %struct.bucket* null, %struct.bucket** @startval, align 8
  store i32 0, i32* @translations, align 4
  store i32 1, i32* @nsyms, align 4
  store i32 0, i32* @nvars, align 4
  store i32 0, i32* @nrules, align 4
  store i32 0, i32* @nitems, align 4
  store i32 10, i32* @rline_allocated, align 4
  %1 = load i32, i32* @rline_allocated, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 2
  %4 = trunc i64 %3 to i32
  %5 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %4)
  %6 = bitcast i8* %5 to i16*
  store i16* %6, i16** @rline, align 8
  store i32 0, i32* @typed, align 4
  store i32 0, i32* @lastprec, align 4
  store i32 0, i32* @gensym_count, align 4
  store i32 0, i32* @semantic_parser, align 4
  store i32 0, i32* @pure_parser, align 4
  store i32 0, i32* @yylsp_needed, align 4
  store %struct.symbol_list* null, %struct.symbol_list** @grammar, align 8
  call void @init_lex()
  store i32 1, i32* @lineno, align 4
  call void @tabinit()
  %7 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (i8*)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.187, i64 0, i64 0))
  store %struct.bucket* %7, %struct.bucket** @errtoken, align 8
  %8 = load %struct.bucket*, %struct.bucket** @errtoken, align 8
  %9 = getelementptr inbounds %struct.bucket, %struct.bucket* %8, i32 0, i32 8
  store i8 1, i8* %9, align 8
  %10 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (i8*)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.188, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.bucket, %struct.bucket* %10, i32 0, i32 8
  store i8 1, i8* %11, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %13 = load i8*, i8** @infile, align 8
  %14 = call i8* @mybasename.189(i8* %13)
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2.190, i64 0, i64 0), i8* %14)
  call void @read_declarations()
  call void @output_ltype()
  call void @output_headers()
  call void @readgram()
  call void @output_trailers()
  %16 = load i32, i32* @yylsp_needed, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.191, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %0
  call void @packsymbols()
  call void @packgram()
  call void @free_symtab()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @mybasename.189(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strrchr(i8* %4, i32 47) #8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %10, %8 ], [ %12, %11 ]
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_declarations() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = call i32 @skip_white_space()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = call i32 @parse_percent_token()
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %23 [
    i32 7, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 12, label %14
    i32 14, label %15
    i32 13, label %16
    i32 23, label %17
    i32 15, label %18
    i32 16, label %19
    i32 17, label %20
    i32 19, label %21
    i32 20, label %22
  ]

10:                                               ; preds = %7
  ret void

11:                                               ; preds = %7
  call void @copy_definition()
  br label %24

12:                                               ; preds = %7
  call void @parse_token_decl(i32 1, i32 2)
  br label %24

13:                                               ; preds = %7
  call void @parse_token_decl(i32 2, i32 1)
  br label %24

14:                                               ; preds = %7
  call void @parse_type_decl()
  br label %24

15:                                               ; preds = %7
  call void @parse_start_decl()
  br label %24

16:                                               ; preds = %7
  call void @parse_union_decl()
  br label %24

17:                                               ; preds = %7
  call void @parse_expect_decl()
  br label %24

18:                                               ; preds = %7
  call void @parse_assoc_decl(i32 2)
  br label %24

19:                                               ; preds = %7
  call void @parse_assoc_decl(i32 1)
  br label %24

20:                                               ; preds = %7
  call void @parse_assoc_decl(i32 3)
  br label %24

21:                                               ; preds = %7
  store i32 1, i32* @semantic_parser, align 4
  call void @open_extra_files()
  br label %24

22:                                               ; preds = %7
  store i32 1, i32* @pure_parser, align 4
  br label %24

23:                                               ; preds = %7
  call void @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4.229, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %1, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.192, i64 0, i64 0))
  br label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  call void @fatals(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6.230, i64 0, i64 0), i32 %30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %31

31:                                               ; preds = %29, %28
  br label %32

32:                                               ; preds = %31, %24
  br label %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_ltype() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.26.221, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %4 = icmp ne %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.26.221, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27.222, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28.223, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29.224, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30.225, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31.226, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32.227, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33.228, i64 0, i64 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %24 = icmp ne %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27.222, i64 0, i64 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28.223, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29.224, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30.225, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31.226, i64 0, i64 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32.227, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33.228, i64 0, i64 0))
  br label %40

40:                                               ; preds = %25, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @readgram() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bucket*, align 8
  %3 = alloca %struct.symbol_list*, align 8
  %4 = alloca %struct.symbol_list*, align 8
  %5 = alloca %struct.bucket*, align 8
  %6 = alloca %struct.symbol_list*, align 8
  %7 = alloca %struct.symbol_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bucket*, align 8
  %12 = alloca %struct.bucket*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bucket*, align 8
  store %struct.symbol_list* null, %struct.symbol_list** %4, align 8
  %15 = call i32 @lex()
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %331, %0
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 7
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %332

24:                                               ; preds = %22
  %25 = load i32, i32* %1, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %294

30:                                               ; preds = %27, %24
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.bucket* null, %struct.bucket** %11, align 8
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %34, %struct.bucket** %2, align 8
  %35 = call i32 @lex()
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0))
  br label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* @nrules, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %1, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i64 0, i64 0))
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* @start_flag, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load %struct.bucket*, %struct.bucket** %2, align 8
  store %struct.bucket* %51, %struct.bucket** @startval, align 8
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* @nrules, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @nrules, align 4
  %56 = load i32, i32* @nitems, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @nitems, align 4
  call void @record_rule_line()
  %58 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 24)
  %59 = bitcast i8* %58 to %struct.symbol_list*
  store %struct.symbol_list* %59, %struct.symbol_list** %3, align 8
  %60 = load %struct.bucket*, %struct.bucket** %2, align 8
  %61 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %62 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %61, i32 0, i32 1
  store %struct.bucket* %60, %struct.bucket** %62, align 8
  %63 = load %struct.symbol_list*, %struct.symbol_list** %4, align 8
  store %struct.symbol_list* %63, %struct.symbol_list** %7, align 8
  %64 = load %struct.symbol_list*, %struct.symbol_list** %4, align 8
  %65 = icmp ne %struct.symbol_list* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %68 = load %struct.symbol_list*, %struct.symbol_list** %4, align 8
  %69 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %68, i32 0, i32 0
  store %struct.symbol_list* %67, %struct.symbol_list** %69, align 8
  br label %72

70:                                               ; preds = %53
  %71 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  store %struct.symbol_list* %71, %struct.symbol_list** @grammar, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  store %struct.symbol_list* %73, %struct.symbol_list** %4, align 8
  %74 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  store %struct.symbol_list* %74, %struct.symbol_list** %6, align 8
  %75 = load %struct.bucket*, %struct.bucket** %2, align 8
  %76 = getelementptr inbounds %struct.bucket, %struct.bucket* %75, i32 0, i32 8
  %77 = load i8, i8* %76, align 8
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load %struct.bucket*, %struct.bucket** %2, align 8
  %82 = getelementptr inbounds %struct.bucket, %struct.bucket* %81, i32 0, i32 8
  store i8 2, i8* %82, align 8
  %83 = load i32, i32* @nvars, align 4
  %84 = trunc i32 %83 to i16
  %85 = load %struct.bucket*, %struct.bucket** %2, align 8
  %86 = getelementptr inbounds %struct.bucket, %struct.bucket* %85, i32 0, i32 4
  store i16 %84, i16* %86, align 8
  %87 = load i32, i32* @nvars, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @nvars, align 4
  br label %101

89:                                               ; preds = %72
  %90 = load %struct.bucket*, %struct.bucket** %2, align 8
  %91 = getelementptr inbounds %struct.bucket, %struct.bucket* %90, i32 0, i32 8
  %92 = load i8, i8* %91, align 8
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.bucket*, %struct.bucket** %2, align 8
  %97 = getelementptr inbounds %struct.bucket, %struct.bucket* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i32
  call void @fatals(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 %99, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %100

100:                                              ; preds = %95, %89
  br label %101

101:                                              ; preds = %100, %80
  br label %102

102:                                              ; preds = %185, %101
  %103 = call i32 @lex()
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %1, align 4
  %108 = icmp eq i32 %107, 6
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  br label %188

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %1, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %180

113:                                              ; preds = %110
  %114 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %114, %struct.bucket** %12, align 8
  %115 = call i32 @lex()
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  call void @unlex(i32 %116)
  %117 = load %struct.bucket*, %struct.bucket** %12, align 8
  store %struct.bucket* %117, %struct.bucket** @symval, align 8
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %188

121:                                              ; preds = %113
  %122 = load %struct.bucket*, %struct.bucket** %11, align 8
  %123 = icmp ne %struct.bucket* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %125, %struct.bucket** %11, align 8
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %168

129:                                              ; preds = %126
  %130 = call %struct.bucket* @gensym()
  store %struct.bucket* %130, %struct.bucket** %14, align 8
  %131 = load i32, i32* @nrules, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @nrules, align 4
  %133 = load i32, i32* @nitems, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @nitems, align 4
  call void @record_rule_line()
  %135 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 24)
  %136 = bitcast i8* %135 to %struct.symbol_list*
  store %struct.symbol_list* %136, %struct.symbol_list** %3, align 8
  %137 = load %struct.symbol_list*, %struct.symbol_list** %7, align 8
  %138 = icmp ne %struct.symbol_list* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %141 = load %struct.symbol_list*, %struct.symbol_list** %7, align 8
  %142 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %141, i32 0, i32 0
  store %struct.symbol_list* %140, %struct.symbol_list** %142, align 8
  br label %145

143:                                              ; preds = %129
  %144 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  store %struct.symbol_list* %144, %struct.symbol_list** @grammar, align 8
  br label %145

145:                                              ; preds = %143, %139
  %146 = load %struct.bucket*, %struct.bucket** %14, align 8
  %147 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %148 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %147, i32 0, i32 1
  store %struct.bucket* %146, %struct.bucket** %148, align 8
  %149 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 24)
  %150 = bitcast i8* %149 to %struct.symbol_list*
  store %struct.symbol_list* %150, %struct.symbol_list** %7, align 8
  %151 = load %struct.symbol_list*, %struct.symbol_list** %7, align 8
  %152 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %153 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %152, i32 0, i32 0
  store %struct.symbol_list* %151, %struct.symbol_list** %153, align 8
  %154 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %155 = load %struct.symbol_list*, %struct.symbol_list** %7, align 8
  %156 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %155, i32 0, i32 0
  store %struct.symbol_list* %154, %struct.symbol_list** %156, align 8
  %157 = load i32, i32* @nitems, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @nitems, align 4
  %159 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 24)
  %160 = bitcast i8* %159 to %struct.symbol_list*
  store %struct.symbol_list* %160, %struct.symbol_list** %3, align 8
  %161 = load %struct.bucket*, %struct.bucket** %14, align 8
  %162 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %163 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %162, i32 0, i32 1
  store %struct.bucket* %161, %struct.bucket** %163, align 8
  %164 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %165 = load %struct.symbol_list*, %struct.symbol_list** %4, align 8
  %166 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %165, i32 0, i32 0
  store %struct.symbol_list* %164, %struct.symbol_list** %166, align 8
  %167 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  store %struct.symbol_list* %167, %struct.symbol_list** %4, align 8
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %145, %126
  %169 = load i32, i32* @nitems, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @nitems, align 4
  %171 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 24)
  %172 = bitcast i8* %171 to %struct.symbol_list*
  store %struct.symbol_list* %172, %struct.symbol_list** %3, align 8
  %173 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %174 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %175 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %174, i32 0, i32 1
  store %struct.bucket* %173, %struct.bucket** %175, align 8
  %176 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %177 = load %struct.symbol_list*, %struct.symbol_list** %4, align 8
  %178 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %177, i32 0, i32 0
  store %struct.symbol_list* %176, %struct.symbol_list** %178, align 8
  %179 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  store %struct.symbol_list* %179, %struct.symbol_list** %4, align 8
  br label %185

180:                                              ; preds = %110
  %181 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %182 = load i32, i32* %9, align 4
  call void @copy_action(%struct.symbol_list* %181, i32 %182)
  store i32 1, i32* %8, align 4
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %180, %168
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %102

188:                                              ; preds = %120, %109
  %189 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 24)
  %190 = bitcast i8* %189 to %struct.symbol_list*
  store %struct.symbol_list* %190, %struct.symbol_list** %3, align 8
  %191 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %192 = load %struct.symbol_list*, %struct.symbol_list** %4, align 8
  %193 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %192, i32 0, i32 0
  store %struct.symbol_list* %191, %struct.symbol_list** %193, align 8
  %194 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  store %struct.symbol_list* %194, %struct.symbol_list** %4, align 8
  %195 = load i32, i32* %1, align 4
  %196 = icmp eq i32 %195, 18
  br i1 %196, label %197, label %203

197:                                              ; preds = %188
  %198 = call i32 @lex()
  store i32 %198, i32* %1, align 4
  %199 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %200 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %201 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %200, i32 0, i32 2
  store %struct.bucket* %199, %struct.bucket** %201, align 8
  %202 = call i32 @lex()
  store i32 %202, i32* %1, align 4
  br label %203

203:                                              ; preds = %197, %188
  %204 = load i32, i32* %1, align 4
  %205 = icmp eq i32 %204, 11
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load i32, i32* @semantic_parser, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  call void @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.53, i64 0, i64 0))
  br label %210

210:                                              ; preds = %209, %206
  %211 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %212 = load i32, i32* %9, align 4
  call void @copy_guard(%struct.symbol_list* %211, i32 %212)
  %213 = call i32 @lex()
  store i32 %213, i32* %1, align 4
  br label %288

214:                                              ; preds = %203
  %215 = load i32, i32* %1, align 4
  %216 = icmp eq i32 %215, 6
  br i1 %216, label %217, label %225

217:                                              ; preds = %214
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  call void @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0))
  br label %221

221:                                              ; preds = %220, %217
  %222 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %223 = load i32, i32* %9, align 4
  call void @copy_action(%struct.symbol_list* %222, i32 %223)
  %224 = call i32 @lex()
  store i32 %224, i32* %1, align 4
  br label %287

225:                                              ; preds = %214
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %286, label %228

228:                                              ; preds = %225
  %229 = load %struct.bucket*, %struct.bucket** %11, align 8
  %230 = icmp ne %struct.bucket* %229, null
  br i1 %230, label %231, label %286

231:                                              ; preds = %228
  %232 = load %struct.bucket*, %struct.bucket** %2, align 8
  %233 = getelementptr inbounds %struct.bucket, %struct.bucket* %232, i32 0, i32 3
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.bucket*, %struct.bucket** %11, align 8
  %236 = getelementptr inbounds %struct.bucket, %struct.bucket* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %234, %237
  br i1 %238, label %239, label %286

239:                                              ; preds = %231
  %240 = load %struct.bucket*, %struct.bucket** %2, align 8
  %241 = getelementptr inbounds %struct.bucket, %struct.bucket* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %258, label %244

244:                                              ; preds = %239
  %245 = load %struct.bucket*, %struct.bucket** %11, align 8
  %246 = getelementptr inbounds %struct.bucket, %struct.bucket* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = icmp eq i8* %247, null
  br i1 %248, label %258, label %249

249:                                              ; preds = %244
  %250 = load %struct.bucket*, %struct.bucket** %2, align 8
  %251 = getelementptr inbounds %struct.bucket, %struct.bucket* %250, i32 0, i32 3
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.bucket*, %struct.bucket** %11, align 8
  %254 = getelementptr inbounds %struct.bucket, %struct.bucket* %253, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @strcmp(i8* %252, i8* %255) #8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %285

258:                                              ; preds = %249, %244, %239
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %260 = load i8*, i8** @infile, align 8
  %261 = load i32, i32* @lineno, align 4
  %262 = load %struct.bucket*, %struct.bucket** %2, align 8
  %263 = getelementptr inbounds %struct.bucket, %struct.bucket* %262, i32 0, i32 3
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %258
  %267 = load %struct.bucket*, %struct.bucket** %2, align 8
  %268 = getelementptr inbounds %struct.bucket, %struct.bucket* %267, i32 0, i32 3
  %269 = load i8*, i8** %268, align 8
  br label %271

270:                                              ; preds = %258
  br label %271

271:                                              ; preds = %270, %266
  %272 = phi i8* [ %269, %266 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.56, i64 0, i64 0), %270 ]
  %273 = load %struct.bucket*, %struct.bucket** %11, align 8
  %274 = getelementptr inbounds %struct.bucket, %struct.bucket* %273, i32 0, i32 3
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = load %struct.bucket*, %struct.bucket** %11, align 8
  %279 = getelementptr inbounds %struct.bucket, %struct.bucket* %278, i32 0, i32 3
  %280 = load i8*, i8** %279, align 8
  br label %282

281:                                              ; preds = %271
  br label %282

282:                                              ; preds = %281, %277
  %283 = phi i8* [ %280, %277 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.56, i64 0, i64 0), %281 ]
  %284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %259, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.55, i64 0, i64 0), i8* %260, i32 %261, i8* %272, i8* %283)
  br label %285

285:                                              ; preds = %282, %249
  br label %286

286:                                              ; preds = %285, %231, %228, %225
  br label %287

287:                                              ; preds = %286, %221
  br label %288

288:                                              ; preds = %287, %210
  %289 = load i32, i32* %1, align 4
  %290 = icmp eq i32 %289, 4
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = call i32 @lex()
  store i32 %292, i32* %1, align 4
  br label %293

293:                                              ; preds = %291, %288
  br label %331

294:                                              ; preds = %27
  %295 = load i32, i32* %1, align 4
  %296 = icmp eq i32 %295, 9
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  call void @parse_token_decl(i32 1, i32 2)
  %298 = call i32 @lex()
  store i32 %298, i32* %1, align 4
  br label %330

299:                                              ; preds = %294
  %300 = load i32, i32* %1, align 4
  %301 = icmp eq i32 %300, 10
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  call void @parse_token_decl(i32 2, i32 1)
  %303 = call i32 @lex()
  store i32 %303, i32* %1, align 4
  br label %329

304:                                              ; preds = %299
  %305 = load i32, i32* %1, align 4
  %306 = icmp eq i32 %305, 12
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = call i32 @get_type()
  store i32 %308, i32* %1, align 4
  br label %328

309:                                              ; preds = %304
  %310 = load i32, i32* %1, align 4
  %311 = icmp eq i32 %310, 13
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  call void @parse_union_decl()
  %313 = call i32 @lex()
  store i32 %313, i32* %1, align 4
  br label %327

314:                                              ; preds = %309
  %315 = load i32, i32* %1, align 4
  %316 = icmp eq i32 %315, 23
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  call void @parse_expect_decl()
  %318 = call i32 @lex()
  store i32 %318, i32* %1, align 4
  br label %326

319:                                              ; preds = %314
  %320 = load i32, i32* %1, align 4
  %321 = icmp eq i32 %320, 14
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  call void @parse_start_decl()
  %323 = call i32 @lex()
  store i32 %323, i32* %1, align 4
  br label %325

324:                                              ; preds = %319
  call void @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0))
  br label %325

325:                                              ; preds = %324, %322
  br label %326

326:                                              ; preds = %325, %317
  br label %327

327:                                              ; preds = %326, %312
  br label %328

328:                                              ; preds = %327, %307
  br label %329

329:                                              ; preds = %328, %302
  br label %330

330:                                              ; preds = %329, %297
  br label %331

331:                                              ; preds = %330, %293
  br label %16

332:                                              ; preds = %22
  %333 = load i32, i32* @nrules, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  call void @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.192, i64 0, i64 0))
  br label %336

336:                                              ; preds = %335, %332
  %337 = load i32, i32* @typed, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %336
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i64 0, i64 0))
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %343 = icmp ne %struct._IO_FILE* %342, null
  br i1 %343, label %344, label %347

344:                                              ; preds = %339
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %346 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %345, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i64 0, i64 0))
  br label %347

347:                                              ; preds = %344, %339
  br label %348

348:                                              ; preds = %347, %336
  %349 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %349, %struct.bucket** %5, align 8
  br label %350

350:                                              ; preds = %373, %348
  %351 = load %struct.bucket*, %struct.bucket** %5, align 8
  %352 = icmp ne %struct.bucket* %351, null
  br i1 %352, label %353, label %377

353:                                              ; preds = %350
  %354 = load %struct.bucket*, %struct.bucket** %5, align 8
  %355 = getelementptr inbounds %struct.bucket, %struct.bucket* %354, i32 0, i32 8
  %356 = load i8, i8* %355, align 8
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %372

359:                                              ; preds = %353
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %361 = load %struct.bucket*, %struct.bucket** %5, align 8
  %362 = getelementptr inbounds %struct.bucket, %struct.bucket* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %360, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i64 0, i64 0), i8* %363)
  store i32 1, i32* @failure, align 4
  %365 = load %struct.bucket*, %struct.bucket** %5, align 8
  %366 = getelementptr inbounds %struct.bucket, %struct.bucket* %365, i32 0, i32 8
  store i8 2, i8* %366, align 8
  %367 = load i32, i32* @nvars, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* @nvars, align 4
  %369 = trunc i32 %367 to i16
  %370 = load %struct.bucket*, %struct.bucket** %5, align 8
  %371 = getelementptr inbounds %struct.bucket, %struct.bucket* %370, i32 0, i32 4
  store i16 %369, i16* %371, align 8
  br label %372

372:                                              ; preds = %359, %353
  br label %373

373:                                              ; preds = %372
  %374 = load %struct.bucket*, %struct.bucket** %5, align 8
  %375 = getelementptr inbounds %struct.bucket, %struct.bucket* %374, i32 0, i32 1
  %376 = load %struct.bucket*, %struct.bucket** %375, align 8
  store %struct.bucket* %376, %struct.bucket** %5, align 8
  br label %350

377:                                              ; preds = %350
  %378 = load i32, i32* @nsyms, align 4
  %379 = load i32, i32* @nvars, align 4
  %380 = sub nsw i32 %378, %379
  store i32 %380, i32* @ntokens, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @packsymbols() #0 {
  %1 = alloca %struct.bucket*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %6 = load i32, i32* @nsyms, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %10)
  %12 = bitcast i8* %11 to i8**
  store i8** %12, i8*** @tags, align 8
  %13 = load i8**, i8*** @tags, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @nsyms, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 2
  %18 = trunc i64 %17 to i32
  %19 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %18)
  %20 = bitcast i8* %19 to i16*
  store i16* %20, i16** @sprec, align 8
  %21 = load i32, i32* @nsyms, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 2
  %24 = trunc i64 %23 to i32
  %25 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %24)
  %26 = bitcast i8* %25 to i16*
  store i16* %26, i16** @sassoc, align 8
  store i32 255, i32* @max_user_token_number, align 4
  store i32 255, i32* %4, align 4
  %27 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %27, %struct.bucket** %1, align 8
  br label %28

28:                                               ; preds = %105, %0
  %29 = load %struct.bucket*, %struct.bucket** %1, align 8
  %30 = icmp ne %struct.bucket* %29, null
  br i1 %30, label %31, label %109

31:                                               ; preds = %28
  %32 = load %struct.bucket*, %struct.bucket** %1, align 8
  %33 = getelementptr inbounds %struct.bucket, %struct.bucket* %32, i32 0, i32 8
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32, i32* @ntokens, align 4
  %39 = load %struct.bucket*, %struct.bucket** %1, align 8
  %40 = getelementptr inbounds %struct.bucket, %struct.bucket* %39, i32 0, i32 4
  %41 = load i16, i16* %40, align 8
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, %38
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %40, align 8
  br label %77

45:                                               ; preds = %31
  %46 = load i32, i32* @translations, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.bucket*, %struct.bucket** %1, align 8
  %50 = getelementptr inbounds %struct.bucket, %struct.bucket* %49, i32 0, i32 7
  %51 = load i16, i16* %50, align 2
  %52 = icmp ne i16 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = trunc i32 %55 to i16
  %57 = load %struct.bucket*, %struct.bucket** %1, align 8
  %58 = getelementptr inbounds %struct.bucket, %struct.bucket* %57, i32 0, i32 7
  store i16 %56, i16* %58, align 2
  br label %59

59:                                               ; preds = %53, %48, %45
  %60 = load %struct.bucket*, %struct.bucket** %1, align 8
  %61 = getelementptr inbounds %struct.bucket, %struct.bucket* %60, i32 0, i32 7
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = load i32, i32* @max_user_token_number, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.bucket*, %struct.bucket** %1, align 8
  %68 = getelementptr inbounds %struct.bucket, %struct.bucket* %67, i32 0, i32 7
  %69 = load i16, i16* %68, align 2
  %70 = sext i16 %69 to i32
  store i32 %70, i32* @max_user_token_number, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  %74 = trunc i32 %72 to i16
  %75 = load %struct.bucket*, %struct.bucket** %1, align 8
  %76 = getelementptr inbounds %struct.bucket, %struct.bucket* %75, i32 0, i32 4
  store i16 %74, i16* %76, align 8
  br label %77

77:                                               ; preds = %71, %37
  %78 = load %struct.bucket*, %struct.bucket** %1, align 8
  %79 = getelementptr inbounds %struct.bucket, %struct.bucket* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** @tags, align 8
  %82 = load %struct.bucket*, %struct.bucket** %1, align 8
  %83 = getelementptr inbounds %struct.bucket, %struct.bucket* %82, i32 0, i32 4
  %84 = load i16, i16* %83, align 8
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %81, i64 %85
  store i8* %80, i8** %86, align 8
  %87 = load %struct.bucket*, %struct.bucket** %1, align 8
  %88 = getelementptr inbounds %struct.bucket, %struct.bucket* %87, i32 0, i32 5
  %89 = load i16, i16* %88, align 2
  %90 = load i16*, i16** @sprec, align 8
  %91 = load %struct.bucket*, %struct.bucket** %1, align 8
  %92 = getelementptr inbounds %struct.bucket, %struct.bucket* %91, i32 0, i32 4
  %93 = load i16, i16* %92, align 8
  %94 = sext i16 %93 to i64
  %95 = getelementptr inbounds i16, i16* %90, i64 %94
  store i16 %89, i16* %95, align 2
  %96 = load %struct.bucket*, %struct.bucket** %1, align 8
  %97 = getelementptr inbounds %struct.bucket, %struct.bucket* %96, i32 0, i32 6
  %98 = load i16, i16* %97, align 4
  %99 = load i16*, i16** @sassoc, align 8
  %100 = load %struct.bucket*, %struct.bucket** %1, align 8
  %101 = getelementptr inbounds %struct.bucket, %struct.bucket* %100, i32 0, i32 4
  %102 = load i16, i16* %101, align 8
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds i16, i16* %99, i64 %103
  store i16 %98, i16* %104, align 2
  br label %105

105:                                              ; preds = %77
  %106 = load %struct.bucket*, %struct.bucket** %1, align 8
  %107 = getelementptr inbounds %struct.bucket, %struct.bucket* %106, i32 0, i32 1
  %108 = load %struct.bucket*, %struct.bucket** %107, align 8
  store %struct.bucket* %108, %struct.bucket** %1, align 8
  br label %28

109:                                              ; preds = %28
  %110 = load i32, i32* @translations, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %109
  %113 = load i32, i32* @max_user_token_number, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 2
  %117 = trunc i64 %116 to i32
  %118 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %117)
  %119 = bitcast i8* %118 to i16*
  store i16* %119, i16** @token_translations, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %129, %112
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @max_user_token_number, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i16*, i16** @token_translations, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, i16* %125, i64 %127
  store i16 2, i16* %128, align 2
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %120

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %109
  %134 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %134, %struct.bucket** %1, align 8
  br label %135

135:                                              ; preds = %191, %133
  %136 = load %struct.bucket*, %struct.bucket** %1, align 8
  %137 = icmp ne %struct.bucket* %136, null
  br i1 %137, label %138, label %195

138:                                              ; preds = %135
  %139 = load %struct.bucket*, %struct.bucket** %1, align 8
  %140 = getelementptr inbounds %struct.bucket, %struct.bucket* %139, i32 0, i32 4
  %141 = load i16, i16* %140, align 8
  %142 = sext i16 %141 to i32
  %143 = load i32, i32* @ntokens, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %191

146:                                              ; preds = %138
  %147 = load i32, i32* @translations, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %190

149:                                              ; preds = %146
  %150 = load i16*, i16** @token_translations, align 8
  %151 = load %struct.bucket*, %struct.bucket** %1, align 8
  %152 = getelementptr inbounds %struct.bucket, %struct.bucket* %151, i32 0, i32 7
  %153 = load i16, i16* %152, align 2
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds i16, i16* %150, i64 %154
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i32
  %158 = icmp ne i32 %157, 2
  br i1 %158, label %159, label %180

159:                                              ; preds = %149
  %160 = load i8**, i8*** @tags, align 8
  %161 = load i16*, i16** @token_translations, align 8
  %162 = load %struct.bucket*, %struct.bucket** %1, align 8
  %163 = getelementptr inbounds %struct.bucket, %struct.bucket* %162, i32 0, i32 7
  %164 = load i16, i16* %163, align 2
  %165 = sext i16 %164 to i64
  %166 = getelementptr inbounds i16, i16* %161, i64 %165
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %160, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.bucket*, %struct.bucket** %1, align 8
  %173 = getelementptr inbounds %struct.bucket, %struct.bucket* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.bucket*, %struct.bucket** %1, align 8
  %177 = getelementptr inbounds %struct.bucket, %struct.bucket* %176, i32 0, i32 7
  %178 = load i16, i16* %177, align 2
  %179 = sext i16 %178 to i32
  call void @fatals(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i64 0, i64 0), i32 %171, i32 %175, i32 %179, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %180

180:                                              ; preds = %159, %149
  %181 = load %struct.bucket*, %struct.bucket** %1, align 8
  %182 = getelementptr inbounds %struct.bucket, %struct.bucket* %181, i32 0, i32 4
  %183 = load i16, i16* %182, align 8
  %184 = load i16*, i16** @token_translations, align 8
  %185 = load %struct.bucket*, %struct.bucket** %1, align 8
  %186 = getelementptr inbounds %struct.bucket, %struct.bucket* %185, i32 0, i32 7
  %187 = load i16, i16* %186, align 2
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds i16, i16* %184, i64 %188
  store i16 %183, i16* %189, align 2
  br label %190

190:                                              ; preds = %180, %146
  br label %191

191:                                              ; preds = %190, %145
  %192 = load %struct.bucket*, %struct.bucket** %1, align 8
  %193 = getelementptr inbounds %struct.bucket, %struct.bucket* %192, i32 0, i32 1
  %194 = load %struct.bucket*, %struct.bucket** %193, align 8
  store %struct.bucket* %194, %struct.bucket** %1, align 8
  br label %135

195:                                              ; preds = %135
  %196 = load %struct.bucket*, %struct.bucket** @errtoken, align 8
  %197 = getelementptr inbounds %struct.bucket, %struct.bucket* %196, i32 0, i32 4
  %198 = load i16, i16* %197, align 8
  %199 = sext i16 %198 to i32
  store i32 %199, i32* @error_token_number, align 4
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  call void @output_token_defines(%struct._IO_FILE* %200)
  %201 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %202 = getelementptr inbounds %struct.bucket, %struct.bucket* %201, i32 0, i32 8
  %203 = load i8, i8* %202, align 8
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %195
  %207 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %208 = getelementptr inbounds %struct.bucket, %struct.bucket* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = ptrtoint i8* %209 to i32
  call void @fatals(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i64 0, i64 0), i32 %210, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %223

211:                                              ; preds = %195
  %212 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %213 = getelementptr inbounds %struct.bucket, %struct.bucket* %212, i32 0, i32 8
  %214 = load i8, i8* %213, align 8
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %219 = getelementptr inbounds %struct.bucket, %struct.bucket* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = ptrtoint i8* %220 to i32
  call void @fatals(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0), i32 %221, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %222

222:                                              ; preds = %217, %211
  br label %223

223:                                              ; preds = %222, %206
  %224 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %225 = getelementptr inbounds %struct.bucket, %struct.bucket* %224, i32 0, i32 4
  %226 = load i16, i16* %225, align 8
  %227 = sext i16 %226 to i32
  store i32 %227, i32* @start_symbol, align 4
  %228 = load i32, i32* @definesflag, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %266

230:                                              ; preds = %223
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  call void @output_token_defines(%struct._IO_FILE* %231)
  %232 = load i32, i32* @semantic_parser, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %263

234:                                              ; preds = %230
  %235 = load i32, i32* @ntokens, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %259, %234
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* @nsyms, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %262

240:                                              ; preds = %236
  %241 = load i8**, i8*** @tags, align 8
  %242 = load i32, i32* %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 64
  br i1 %248, label %249, label %258

249:                                              ; preds = %240
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %251 = load i8**, i8*** @tags, align 8
  %252 = load i32, i32* %3, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* %3, align 4
  %257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* %255, i32 %256)
  br label %258

258:                                              ; preds = %249, %240
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %3, align 4
  br label %236

262:                                              ; preds = %236
  br label %263

263:                                              ; preds = %262, %230
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %265 = call i32 @fclose(%struct._IO_FILE* %264)
  store %struct._IO_FILE* null, %struct._IO_FILE** @fdefines, align 8
  br label %266

266:                                              ; preds = %263, %223
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @packgram() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.symbol_list*, align 8
  %4 = alloca %struct.bucket*, align 8
  %5 = load i32, i32* @nitems, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 2
  %9 = trunc i64 %8 to i32
  %10 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %9)
  %11 = bitcast i8* %10 to i16*
  store i16* %11, i16** @ritem, align 8
  %12 = load i32, i32* @nrules, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 2
  %15 = trunc i64 %14 to i32
  %16 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %15)
  %17 = bitcast i8* %16 to i16*
  %18 = getelementptr inbounds i16, i16* %17, i64 -1
  store i16* %18, i16** @rlhs, align 8
  %19 = load i32, i32* @nrules, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 2
  %22 = trunc i64 %21 to i32
  %23 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %22)
  %24 = bitcast i8* %23 to i16*
  %25 = getelementptr inbounds i16, i16* %24, i64 -1
  store i16* %25, i16** @rrhs, align 8
  %26 = load i32, i32* @nrules, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 2
  %29 = trunc i64 %28 to i32
  %30 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %29)
  %31 = bitcast i8* %30 to i16*
  %32 = getelementptr inbounds i16, i16* %31, i64 -1
  store i16* %32, i16** @rprec, align 8
  %33 = load i32, i32* @nrules, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 2
  %36 = trunc i64 %35 to i32
  %37 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %36)
  %38 = bitcast i8* %37 to i16*
  %39 = getelementptr inbounds i16, i16* %38, i64 -1
  store i16* %39, i16** @rassoc, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %40 = load %struct.symbol_list*, %struct.symbol_list** @grammar, align 8
  store %struct.symbol_list* %40, %struct.symbol_list** %3, align 8
  br label %41

41:                                               ; preds = %156, %0
  %42 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %43 = icmp ne %struct.symbol_list* %42, null
  br i1 %43, label %44, label %157

44:                                               ; preds = %41
  %45 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %46 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %45, i32 0, i32 1
  %47 = load %struct.bucket*, %struct.bucket** %46, align 8
  %48 = getelementptr inbounds %struct.bucket, %struct.bucket* %47, i32 0, i32 4
  %49 = load i16, i16* %48, align 8
  %50 = load i16*, i16** @rlhs, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  store i16 %49, i16* %53, align 2
  %54 = load i32, i32* %1, align 4
  %55 = trunc i32 %54 to i16
  %56 = load i16*, i16** @rrhs, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  store i16 %55, i16* %59, align 2
  %60 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %61 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %60, i32 0, i32 2
  %62 = load %struct.bucket*, %struct.bucket** %61, align 8
  store %struct.bucket* %62, %struct.bucket** %4, align 8
  %63 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %64 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %63, i32 0, i32 0
  %65 = load %struct.symbol_list*, %struct.symbol_list** %64, align 8
  store %struct.symbol_list* %65, %struct.symbol_list** %3, align 8
  br label %66

66:                                               ; preds = %120, %44
  %67 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %68 = icmp ne %struct.symbol_list* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %71 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %70, i32 0, i32 1
  %72 = load %struct.bucket*, %struct.bucket** %71, align 8
  %73 = icmp ne %struct.bucket* %72, null
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i1 [ false, %66 ], [ %73, %69 ]
  br i1 %75, label %76, label %121

76:                                               ; preds = %74
  %77 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %78 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %77, i32 0, i32 1
  %79 = load %struct.bucket*, %struct.bucket** %78, align 8
  %80 = getelementptr inbounds %struct.bucket, %struct.bucket* %79, i32 0, i32 4
  %81 = load i16, i16* %80, align 8
  %82 = load i16*, i16** @ritem, align 8
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i16, i16* %82, i64 %85
  store i16 %81, i16* %86, align 2
  %87 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %88 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %87, i32 0, i32 1
  %89 = load %struct.bucket*, %struct.bucket** %88, align 8
  %90 = getelementptr inbounds %struct.bucket, %struct.bucket* %89, i32 0, i32 8
  %91 = load i8, i8* %90, align 8
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %113

94:                                               ; preds = %76
  %95 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %96 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %95, i32 0, i32 1
  %97 = load %struct.bucket*, %struct.bucket** %96, align 8
  %98 = getelementptr inbounds %struct.bucket, %struct.bucket* %97, i32 0, i32 5
  %99 = load i16, i16* %98, align 2
  %100 = load i16*, i16** @rprec, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, i16* %100, i64 %102
  store i16 %99, i16* %103, align 2
  %104 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %105 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %104, i32 0, i32 1
  %106 = load %struct.bucket*, %struct.bucket** %105, align 8
  %107 = getelementptr inbounds %struct.bucket, %struct.bucket* %106, i32 0, i32 6
  %108 = load i16, i16* %107, align 4
  %109 = load i16*, i16** @rassoc, align 8
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %109, i64 %111
  store i16 %108, i16* %112, align 2
  br label %113

113:                                              ; preds = %94, %76
  %114 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %115 = icmp ne %struct.symbol_list* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %118 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %117, i32 0, i32 0
  %119 = load %struct.symbol_list*, %struct.symbol_list** %118, align 8
  store %struct.symbol_list* %119, %struct.symbol_list** %3, align 8
  br label %120

120:                                              ; preds = %116, %113
  br label %66

121:                                              ; preds = %74
  %122 = load %struct.bucket*, %struct.bucket** %4, align 8
  %123 = icmp ne %struct.bucket* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load %struct.bucket*, %struct.bucket** %4, align 8
  %126 = getelementptr inbounds %struct.bucket, %struct.bucket* %125, i32 0, i32 5
  %127 = load i16, i16* %126, align 2
  %128 = load i16*, i16** @rprec, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i16, i16* %128, i64 %130
  store i16 %127, i16* %131, align 2
  %132 = load %struct.bucket*, %struct.bucket** %4, align 8
  %133 = getelementptr inbounds %struct.bucket, %struct.bucket* %132, i32 0, i32 6
  %134 = load i16, i16* %133, align 4
  %135 = load i16*, i16** @rassoc, align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %135, i64 %137
  store i16 %134, i16* %138, align 2
  br label %139

139:                                              ; preds = %124, %121
  %140 = load i32, i32* %2, align 4
  %141 = sub nsw i32 0, %140
  %142 = trunc i32 %141 to i16
  %143 = load i16*, i16** @ritem, align 8
  %144 = load i32, i32* %1, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %1, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i16, i16* %143, i64 %146
  store i16 %142, i16* %147, align 2
  %148 = load i32, i32* %2, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %2, align 4
  %150 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %151 = icmp ne %struct.symbol_list* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %139
  %153 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %154 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %153, i32 0, i32 0
  %155 = load %struct.symbol_list*, %struct.symbol_list** %154, align 8
  store %struct.symbol_list* %155, %struct.symbol_list** %3, align 8
  br label %156

156:                                              ; preds = %152, %139
  br label %41

157:                                              ; preds = %41
  %158 = load i16*, i16** @ritem, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i16, i16* %158, i64 %160
  store i16 0, i16* %161, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_token_defines(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct.bucket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %6 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %6, %struct.bucket** %3, align 8
  br label %7

7:                                                ; preds = %100, %1
  %8 = load %struct.bucket*, %struct.bucket** %3, align 8
  %9 = icmp ne %struct.bucket* %8, null
  br i1 %9, label %10, label %104

10:                                               ; preds = %7
  %11 = load %struct.bucket*, %struct.bucket** %3, align 8
  %12 = getelementptr inbounds %struct.bucket, %struct.bucket* %11, i32 0, i32 4
  %13 = load i16, i16* %12, align 8
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* @ntokens, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %100

18:                                               ; preds = %10
  %19 = load i8**, i8*** @tags, align 8
  %20 = load %struct.bucket*, %struct.bucket** %3, align 8
  %21 = getelementptr inbounds %struct.bucket, %struct.bucket* %20, i32 0, i32 4
  %22 = load i16, i16* %21, align 8
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %19, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 39, %27
  br i1 %28, label %29, label %99

29:                                               ; preds = %18
  %30 = load %struct.bucket*, %struct.bucket** %3, align 8
  %31 = load %struct.bucket*, %struct.bucket** @errtoken, align 8
  %32 = icmp ne %struct.bucket* %30, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %29
  %34 = load i8**, i8*** @tags, align 8
  %35 = load %struct.bucket*, %struct.bucket** %3, align 8
  %36 = getelementptr inbounds %struct.bucket, %struct.bucket* %35, i32 0, i32 4
  %37 = load i16, i16* %36, align 8
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %34, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %53, %33
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  %44 = load i8, i8* %42, align 1
  store i8 %44, i8* %5, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8, i8* %5, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 46
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i1 [ false, %41 ], [ %50, %47 ]
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %41

54:                                               ; preds = %51
  %55 = load i8, i8* %5, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %98, label %57

57:                                               ; preds = %54
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %59 = load i8**, i8*** @tags, align 8
  %60 = load %struct.bucket*, %struct.bucket** %3, align 8
  %61 = getelementptr inbounds %struct.bucket, %struct.bucket* %60, i32 0, i32 4
  %62 = load i16, i16* %61, align 8
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %59, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @translations, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.bucket*, %struct.bucket** %3, align 8
  %70 = getelementptr inbounds %struct.bucket, %struct.bucket* %69, i32 0, i32 7
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  br label %78

73:                                               ; preds = %57
  %74 = load %struct.bucket*, %struct.bucket** %3, align 8
  %75 = getelementptr inbounds %struct.bucket, %struct.bucket* %74, i32 0, i32 4
  %76 = load i16, i16* %75, align 8
  %77 = sext i16 %76 to i32
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i32 [ %72, %68 ], [ %77, %73 ]
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0), i8* %65, i32 %79)
  %81 = load i32, i32* @semantic_parser, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %85 = load i8**, i8*** @tags, align 8
  %86 = load %struct.bucket*, %struct.bucket** %3, align 8
  %87 = getelementptr inbounds %struct.bucket, %struct.bucket* %86, i32 0, i32 4
  %88 = load i16, i16* %87, align 8
  %89 = sext i16 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %85, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.bucket*, %struct.bucket** %3, align 8
  %93 = getelementptr inbounds %struct.bucket, %struct.bucket* %92, i32 0, i32 4
  %94 = load i16, i16* %93, align 8
  %95 = sext i16 %94 to i32
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i8* %91, i32 %95)
  br label %97

97:                                               ; preds = %83, %78
  br label %98

98:                                               ; preds = %97, %54
  br label %99

99:                                               ; preds = %98, %29, %18
  br label %100

100:                                              ; preds = %99, %17
  %101 = load %struct.bucket*, %struct.bucket** %3, align 8
  %102 = getelementptr inbounds %struct.bucket, %struct.bucket* %101, i32 0, i32 1
  %103 = load %struct.bucket*, %struct.bucket** %102, align 8
  store %struct.bucket* %103, %struct.bucket** %3, align 8
  br label %7

104:                                              ; preds = %7
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %106 = call i32 @putc(i32 10, %struct._IO_FILE* %105)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @record_rule_line() #0 {
  %1 = load i32, i32* @nrules, align 4
  %2 = load i32, i32* @rline_allocated, align 4
  %3 = icmp sge i32 %1, %2
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = load i32, i32* @nrules, align 4
  %6 = mul nsw i32 %5, 2
  store i32 %6, i32* @rline_allocated, align 4
  %7 = load i16*, i16** @rline, align 8
  %8 = bitcast i16* %7 to i8*
  %9 = load i32, i32* @rline_allocated, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 2
  %12 = call i8* @realloc(i8* %8, i64 %11) #7
  %13 = bitcast i8* %12 to i16*
  store i16* %13, i16** @rline, align 8
  %14 = load i16*, i16** @rline, align 8
  %15 = icmp eq i16* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0))
  call void @done(i32 1)
  br label %19

19:                                               ; preds = %16, %4
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i32, i32* @lineno, align 4
  %22 = trunc i32 %21 to i16
  %23 = load i16*, i16** @rline, align 8
  %24 = load i32, i32* @nrules, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  store i16 %22, i16* %26, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bucket* @gensym() #0 {
  %1 = alloca %struct.bucket*, align 8
  %2 = load i32, i32* @gensym_count, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @gensym_count, align 4
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i32 %3) #7
  %5 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (i8*)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0))
  store %struct.bucket* %5, %struct.bucket** %1, align 8
  %6 = load %struct.bucket*, %struct.bucket** %1, align 8
  %7 = getelementptr inbounds %struct.bucket, %struct.bucket* %6, i32 0, i32 8
  store i8 2, i8* %7, align 8
  %8 = load i32, i32* @nvars, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @nvars, align 4
  %10 = trunc i32 %8 to i16
  %11 = load %struct.bucket*, %struct.bucket** %1, align 8
  %12 = getelementptr inbounds %struct.bucket, %struct.bucket* %11, i32 0, i32 4
  store i16 %10, i16* %12, align 8
  %13 = load %struct.bucket*, %struct.bucket** %1, align 8
  ret %struct.bucket* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_action(%struct.symbol_list* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.symbol_list* %0, %struct.symbol_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @semantic_parser, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %17 = load i32, i32* @nrules, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35.205, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @nolinesflag, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %23 = load i32, i32* @lineno, align 4
  %24 = load i8*, i8** @infile, align 8
  %25 = call i8* @mybasename.189(i8* %24)
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.206, i64 0, i64 0), i32 %23, i8* %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %29 = call i32 @putc(i32 123, %struct._IO_FILE* %28)
  store i32 1, i32* %7, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %31 = call i32 @getc(%struct._IO_FILE* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %336, %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %337

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %323, %312, %283, %108, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 125
  br i1 %38, label %39, label %326

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %319 [
    i32 10, label %41
    i32 123, label %47
    i32 39, label %53
    i32 34, label %53
    i32 47, label %100
    i32 36, label %165
    i32 64, label %288
    i32 -1, label %318
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* %5, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %44 = call i32 @putc(i32 %42, %struct._IO_FILE* %43)
  %45 = load i32, i32* @lineno, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @lineno, align 4
  br label %323

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %50 = call i32 @putc(i32 %48, %struct._IO_FILE* %49)
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %323

53:                                               ; preds = %39, %39
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %57 = call i32 @putc(i32 %55, %struct._IO_FILE* %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %59 = call i32 @getc(%struct._IO_FILE* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %93, %53
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %64
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.208, i64 0, i64 0))
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %5, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %74 = call i32 @putc(i32 %72, %struct._IO_FILE* %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %79 = call i32 @getc(%struct._IO_FILE* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.208, i64 0, i64 0))
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* %5, align 4
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %86 = call i32 @putc(i32 %84, %struct._IO_FILE* %85)
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @lineno, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @lineno, align 4
  br label %92

92:                                               ; preds = %89, %83
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %95 = call i32 @getc(%struct._IO_FILE* %94)
  store i32 %95, i32* %5, align 4
  br label %60

96:                                               ; preds = %60
  %97 = load i32, i32* %5, align 4
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %99 = call i32 @putc(i32 %97, %struct._IO_FILE* %98)
  br label %323

100:                                              ; preds = %39
  %101 = load i32, i32* %5, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %103 = call i32 @putc(i32 %101, %struct._IO_FILE* %102)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %105 = call i32 @getc(%struct._IO_FILE* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 42
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %36

109:                                              ; preds = %100
  %110 = load i32, i32* %5, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %112 = call i32 @putc(i32 %110, %struct._IO_FILE* %111)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %114 = call i32 @getc(%struct._IO_FILE* %113)
  store i32 %114, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %163, %109
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br i1 %118, label %119, label %164

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 42
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %126, %122
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 42
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %129 = call i32 @putc(i32 %127, %struct._IO_FILE* %128)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %131 = call i32 @getc(%struct._IO_FILE* %130)
  store i32 %131, i32* %5, align 4
  br label %123

132:                                              ; preds = %123
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %133, 47
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %138 = call i32 @putc(i32 %136, %struct._IO_FILE* %137)
  store i32 1, i32* %9, align 4
  br label %139

139:                                              ; preds = %135, %132
  br label %163

140:                                              ; preds = %119
  %141 = load i32, i32* %5, align 4
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* @lineno, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @lineno, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %148 = call i32 @putc(i32 %146, %struct._IO_FILE* %147)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %150 = call i32 @getc(%struct._IO_FILE* %149)
  store i32 %150, i32* %5, align 4
  br label %162

151:                                              ; preds = %140
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24.199, i64 0, i64 0))
  br label %161

155:                                              ; preds = %151
  %156 = load i32, i32* %5, align 4
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %158 = call i32 @putc(i32 %156, %struct._IO_FILE* %157)
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %160 = call i32 @getc(%struct._IO_FILE* %159)
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %155, %154
  br label %162

162:                                              ; preds = %161, %143
  br label %163

163:                                              ; preds = %162, %139
  br label %115

164:                                              ; preds = %115
  br label %323

165:                                              ; preds = %39
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %167 = call i32 @getc(%struct._IO_FILE* %166)
  store i32 %167, i32* %5, align 4
  store i8* null, i8** %10, align 8
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %168, 60
  br i1 %169, label %170, label %189

170:                                              ; preds = %165
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %11, align 8
  br label %171

171:                                              ; preds = %180, %170
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %173 = call i32 @getc(%struct._IO_FILE* %172)
  store i32 %173, i32* %5, align 4
  %174 = icmp ne i32 %173, 62
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %5, align 4
  %177 = icmp sgt i32 %176, 0
  br label %178

178:                                              ; preds = %175, %171
  %179 = phi i1 [ false, %171 ], [ %177, %175 ]
  br i1 %179, label %180, label %185

180:                                              ; preds = %178
  %181 = load i32, i32* %5, align 4
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %11, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %11, align 8
  store i8 %182, i8* %183, align 1
  br label %171

185:                                              ; preds = %178
  %186 = load i8*, i8** %11, align 8
  store i8 0, i8* %186, align 1
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %10, align 8
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %188 = call i32 @getc(%struct._IO_FILE* %187)
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %165
  %190 = load i32, i32* %5, align 4
  %191 = icmp eq i32 %190, 36
  br i1 %191, label %192, label %224

192:                                              ; preds = %189
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37.209, i64 0, i64 0))
  %195 = load i8*, i8** %10, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  %198 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %199 = call i8* @get_type_name(i32 0, %struct.symbol_list* %198)
  store i8* %199, i8** %10, align 8
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i8*, i8** %10, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38.210, i64 0, i64 0), i8* %205)
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i8*, i8** %10, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %223, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* @typed, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %210
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %215 = load i8*, i8** @infile, align 8
  %216 = load i32, i32* @lineno, align 4
  %217 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %218 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %217, i32 0, i32 1
  %219 = load %struct.bucket*, %struct.bucket** %218, align 8
  %220 = getelementptr inbounds %struct.bucket, %struct.bucket* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39.211, i64 0, i64 0), i8* %215, i32 %216, i8* %221)
  br label %223

223:                                              ; preds = %213, %210, %207
  br label %287

224:                                              ; preds = %189
  %225 = call i16** @__ctype_b_loc() #10
  %226 = load i16*, i16** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i16, i16* %226, i64 %228
  %230 = load i16, i16* %229, align 2
  %231 = zext i16 %230 to i32
  %232 = and i32 %231, 2048
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %224
  %235 = load i32, i32* %5, align 4
  %236 = icmp eq i32 %235, 45
  br i1 %236, label %237, label %284

237:                                              ; preds = %234, %224
  %238 = load i32, i32* %5, align 4
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %240 = call i32 @ungetc(i32 %238, %struct._IO_FILE* %239)
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %242 = call i32 @read_signed_integer(%struct._IO_FILE* %241)
  store i32 %242, i32* %6, align 4
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %244 = call i32 @getc(%struct._IO_FILE* %243)
  store i32 %244, i32* %5, align 4
  %245 = load i8*, i8** %10, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %254, label %247

247:                                              ; preds = %237
  %248 = load i32, i32* %6, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32, i32* %6, align 4
  %252 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %253 = call i8* @get_type_name(i32 %251, %struct.symbol_list* %252)
  store i8* %253, i8** %10, align 8
  br label %254

254:                                              ; preds = %250, %247, %237
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %4, align 4
  %258 = sub nsw i32 %256, %257
  %259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40.212, i64 0, i64 0), i32 %258)
  %260 = load i8*, i8** %10, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %254
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38.210, i64 0, i64 0), i8* %264)
  br label %266

266:                                              ; preds = %262, %254
  %267 = load i8*, i8** %10, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %283, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* @typed, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %274 = load i8*, i8** @infile, align 8
  %275 = load i32, i32* @lineno, align 4
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %278 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %277, i32 0, i32 1
  %279 = load %struct.bucket*, %struct.bucket** %278, align 8
  %280 = getelementptr inbounds %struct.bucket, %struct.bucket* %279, i32 0, i32 2
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41.213, i64 0, i64 0), i8* %274, i32 %275, i32 %276, i8* %281)
  br label %283

283:                                              ; preds = %272, %269, %266
  br label %36

284:                                              ; preds = %234
  %285 = load i32, i32* %5, align 4
  call void @fatals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42.214, i64 0, i64 0), i32 %285, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %286

286:                                              ; preds = %284
  br label %287

287:                                              ; preds = %286, %223
  br label %323

288:                                              ; preds = %39
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %290 = call i32 @getc(%struct._IO_FILE* %289)
  store i32 %290, i32* %5, align 4
  %291 = call i16** @__ctype_b_loc() #10
  %292 = load i16*, i16** %291, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i16, i16* %292, i64 %294
  %296 = load i16, i16* %295, align 2
  %297 = zext i16 %296 to i32
  %298 = and i32 %297, 2048
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %288
  %301 = load i32, i32* %5, align 4
  %302 = icmp eq i32 %301, 45
  br i1 %302, label %303, label %311

303:                                              ; preds = %300, %288
  %304 = load i32, i32* %5, align 4
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %306 = call i32 @ungetc(i32 %304, %struct._IO_FILE* %305)
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %308 = call i32 @read_signed_integer(%struct._IO_FILE* %307)
  store i32 %308, i32* %6, align 4
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %310 = call i32 @getc(%struct._IO_FILE* %309)
  store i32 %310, i32* %5, align 4
  br label %312

311:                                              ; preds = %300
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47.220, i64 0, i64 0))
  br label %312

312:                                              ; preds = %311, %303
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* %4, align 4
  %316 = sub nsw i32 %314, %315
  %317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %313, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44.216, i64 0, i64 0), i32 %316)
  store i32 1, i32* @yylsp_needed, align 4
  br label %36

318:                                              ; preds = %39
  call void @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0))
  br label %319

319:                                              ; preds = %318, %39
  %320 = load i32, i32* %5, align 4
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %322 = call i32 @putc(i32 %320, %struct._IO_FILE* %321)
  br label %323

323:                                              ; preds = %319, %287, %164, %96, %47, %41
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %325 = call i32 @getc(%struct._IO_FILE* %324)
  store i32 %325, i32* %5, align 4
  br label %36

326:                                              ; preds = %36
  %327 = load i32, i32* %7, align 4
  %328 = add nsw i32 %327, -1
  store i32 %328, i32* %7, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %326
  %331 = load i32, i32* %5, align 4
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %333 = call i32 @putc(i32 %331, %struct._IO_FILE* %332)
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %335 = call i32 @getc(%struct._IO_FILE* %334)
  store i32 %335, i32* %5, align 4
  br label %336

336:                                              ; preds = %330, %326
  br label %32

337:                                              ; preds = %32
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46.218, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_guard(%struct.symbol_list* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.symbol_list* %0, %struct.symbol_list** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @semantic_parser, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %18 = load i32, i32* @nrules, align 4
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35.205, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @nolinesflag, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %24 = load i32, i32* @lineno, align 4
  %25 = load i8*, i8** @infile, align 8
  %26 = call i8* @mybasename.189(i8* %25)
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.206, i64 0, i64 0), i32 %24, i8* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %30 = call i32 @putc(i32 123, %struct._IO_FILE* %29)
  store i32 0, i32* %7, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %32 = call i32 @getc(%struct._IO_FILE* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %358, %338, %308, %130, %28
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 59
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %39, %36 ], [ %43, %40 ]
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %359

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %345 [
    i32 10, label %49
    i32 123, label %55
    i32 125, label %61
    i32 39, label %72
    i32 34, label %72
    i32 47, label %122
    i32 36, label %187
    i32 64, label %313
    i32 -1, label %344
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %52 = call i32 @putc(i32 %50, %struct._IO_FILE* %51)
  %53 = load i32, i32* @lineno, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @lineno, align 4
  br label %349

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %58 = call i32 @putc(i32 %56, %struct._IO_FILE* %57)
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %349

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %64 = call i32 @putc(i32 %62, %struct._IO_FILE* %63)
  store i32 1, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  br label %71

70:                                               ; preds = %61
  call void @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36.207, i64 0, i64 0))
  br label %71

71:                                               ; preds = %70, %67
  br label %349

72:                                               ; preds = %47, %47
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %76 = call i32 @putc(i32 %74, %struct._IO_FILE* %75)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %78 = call i32 @getc(%struct._IO_FILE* %77)
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %115, %72
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.208, i64 0, i64 0))
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %5, align 4
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %93 = call i32 @putc(i32 %91, %struct._IO_FILE* %92)
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 92
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %98 = call i32 @getc(%struct._IO_FILE* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %96
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.208, i64 0, i64 0))
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %5, align 4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %108 = call i32 @putc(i32 %106, %struct._IO_FILE* %107)
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @lineno, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @lineno, align 4
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %90
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %117 = call i32 @getc(%struct._IO_FILE* %116)
  store i32 %117, i32* %5, align 4
  br label %79

118:                                              ; preds = %79
  %119 = load i32, i32* %5, align 4
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %121 = call i32 @putc(i32 %119, %struct._IO_FILE* %120)
  br label %349

122:                                              ; preds = %47
  %123 = load i32, i32* %5, align 4
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %125 = call i32 @putc(i32 %123, %struct._IO_FILE* %124)
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %127 = call i32 @getc(%struct._IO_FILE* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 42
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %33

131:                                              ; preds = %122
  %132 = load i32, i32* %5, align 4
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %134 = call i32 @putc(i32 %132, %struct._IO_FILE* %133)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %136 = call i32 @getc(%struct._IO_FILE* %135)
  store i32 %136, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %185, %131
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br i1 %140, label %141, label %186

141:                                              ; preds = %137
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 42
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %148, %144
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, 42
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32, i32* %5, align 4
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %151 = call i32 @putc(i32 %149, %struct._IO_FILE* %150)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %153 = call i32 @getc(%struct._IO_FILE* %152)
  store i32 %153, i32* %5, align 4
  br label %145

154:                                              ; preds = %145
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 47
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %160 = call i32 @putc(i32 %158, %struct._IO_FILE* %159)
  store i32 1, i32* %9, align 4
  br label %161

161:                                              ; preds = %157, %154
  br label %185

162:                                              ; preds = %141
  %163 = load i32, i32* %5, align 4
  %164 = icmp eq i32 %163, 10
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32, i32* @lineno, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @lineno, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %170 = call i32 @putc(i32 %168, %struct._IO_FILE* %169)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %172 = call i32 @getc(%struct._IO_FILE* %171)
  store i32 %172, i32* %5, align 4
  br label %184

173:                                              ; preds = %162
  %174 = load i32, i32* %5, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24.199, i64 0, i64 0))
  br label %183

177:                                              ; preds = %173
  %178 = load i32, i32* %5, align 4
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %180 = call i32 @putc(i32 %178, %struct._IO_FILE* %179)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %182 = call i32 @getc(%struct._IO_FILE* %181)
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %177, %176
  br label %184

184:                                              ; preds = %183, %165
  br label %185

185:                                              ; preds = %184, %161
  br label %137

186:                                              ; preds = %137
  br label %349

187:                                              ; preds = %47
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %189 = call i32 @getc(%struct._IO_FILE* %188)
  store i32 %189, i32* %5, align 4
  store i8* null, i8** %10, align 8
  %190 = load i32, i32* %5, align 4
  %191 = icmp eq i32 %190, 60
  br i1 %191, label %192, label %211

192:                                              ; preds = %187
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %12, align 8
  br label %193

193:                                              ; preds = %202, %192
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %195 = call i32 @getc(%struct._IO_FILE* %194)
  store i32 %195, i32* %5, align 4
  %196 = icmp ne i32 %195, 62
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %5, align 4
  %199 = icmp sgt i32 %198, 0
  br label %200

200:                                              ; preds = %197, %193
  %201 = phi i1 [ false, %193 ], [ %199, %197 ]
  br i1 %201, label %202, label %207

202:                                              ; preds = %200
  %203 = load i32, i32* %5, align 4
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %12, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %12, align 8
  store i8 %204, i8* %205, align 1
  br label %193

207:                                              ; preds = %200
  %208 = load i8*, i8** %12, align 8
  store i8 0, i8* %208, align 1
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0), i8** %10, align 8
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %210 = call i32 @getc(%struct._IO_FILE* %209)
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %207, %187
  %212 = load i32, i32* %5, align 4
  %213 = icmp eq i32 %212, 36
  br i1 %213, label %214, label %249

214:                                              ; preds = %211
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37.209, i64 0, i64 0))
  %217 = load i8*, i8** %10, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %214
  %220 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %221 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %220, i32 0, i32 1
  %222 = load %struct.bucket*, %struct.bucket** %221, align 8
  %223 = getelementptr inbounds %struct.bucket, %struct.bucket* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  store i8* %224, i8** %10, align 8
  br label %225

225:                                              ; preds = %219, %214
  %226 = load i8*, i8** %10, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38.210, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %228, %225
  %233 = load i8*, i8** %10, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %248, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* @typed, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %240 = load i8*, i8** @infile, align 8
  %241 = load i32, i32* @lineno, align 4
  %242 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %243 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %242, i32 0, i32 1
  %244 = load %struct.bucket*, %struct.bucket** %243, align 8
  %245 = getelementptr inbounds %struct.bucket, %struct.bucket* %244, i32 0, i32 2
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39.211, i64 0, i64 0), i8* %240, i32 %241, i8* %246)
  br label %248

248:                                              ; preds = %238, %235, %232
  br label %312

249:                                              ; preds = %211
  %250 = call i16** @__ctype_b_loc() #10
  %251 = load i16*, i16** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i16, i16* %251, i64 %253
  %255 = load i16, i16* %254, align 2
  %256 = zext i16 %255 to i32
  %257 = and i32 %256, 2048
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %249
  %260 = load i32, i32* %5, align 4
  %261 = icmp eq i32 %260, 45
  br i1 %261, label %262, label %309

262:                                              ; preds = %259, %249
  %263 = load i32, i32* %5, align 4
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %265 = call i32 @ungetc(i32 %263, %struct._IO_FILE* %264)
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %267 = call i32 @read_signed_integer(%struct._IO_FILE* %266)
  store i32 %267, i32* %6, align 4
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %269 = call i32 @getc(%struct._IO_FILE* %268)
  store i32 %269, i32* %5, align 4
  %270 = load i8*, i8** %10, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %279, label %272

272:                                              ; preds = %262
  %273 = load i32, i32* %6, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %278 = call i8* @get_type_name(i32 %276, %struct.symbol_list* %277)
  store i8* %278, i8** %10, align 8
  br label %279

279:                                              ; preds = %275, %272, %262
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* %4, align 4
  %283 = sub nsw i32 %281, %282
  %284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40.212, i64 0, i64 0), i32 %283)
  %285 = load i8*, i8** %10, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %279
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %289 = load i8*, i8** %10, align 8
  %290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %288, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38.210, i64 0, i64 0), i8* %289)
  br label %291

291:                                              ; preds = %287, %279
  %292 = load i8*, i8** %10, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %308, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* @typed, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %299 = load i8*, i8** @infile, align 8
  %300 = load i32, i32* @lineno, align 4
  %301 = load i32, i32* %6, align 4
  %302 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %303 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %302, i32 0, i32 1
  %304 = load %struct.bucket*, %struct.bucket** %303, align 8
  %305 = getelementptr inbounds %struct.bucket, %struct.bucket* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %298, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41.213, i64 0, i64 0), i8* %299, i32 %300, i32 %301, i8* %306)
  br label %308

308:                                              ; preds = %297, %294, %291
  br label %33

309:                                              ; preds = %259
  %310 = load i32, i32* %5, align 4
  call void @fatals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42.214, i64 0, i64 0), i32 %310, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %311

311:                                              ; preds = %309
  br label %312

312:                                              ; preds = %311, %248
  br label %349

313:                                              ; preds = %47
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %315 = call i32 @getc(%struct._IO_FILE* %314)
  store i32 %315, i32* %5, align 4
  %316 = call i16** @__ctype_b_loc() #10
  %317 = load i16*, i16** %316, align 8
  %318 = load i32, i32* %5, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i16, i16* %317, i64 %319
  %321 = load i16, i16* %320, align 2
  %322 = zext i16 %321 to i32
  %323 = and i32 %322, 2048
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %313
  %326 = load i32, i32* %5, align 4
  %327 = icmp eq i32 %326, 45
  br i1 %327, label %328, label %336

328:                                              ; preds = %325, %313
  %329 = load i32, i32* %5, align 4
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %331 = call i32 @ungetc(i32 %329, %struct._IO_FILE* %330)
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %333 = call i32 @read_signed_integer(%struct._IO_FILE* %332)
  store i32 %333, i32* %6, align 4
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %335 = call i32 @getc(%struct._IO_FILE* %334)
  store i32 %335, i32* %5, align 4
  br label %338

336:                                              ; preds = %325
  %337 = load i32, i32* %5, align 4
  call void @fatals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43.215, i64 0, i64 0), i32 %337, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %338

338:                                              ; preds = %336, %328
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* %4, align 4
  %342 = sub nsw i32 %340, %341
  %343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44.216, i64 0, i64 0), i32 %342)
  store i32 1, i32* @yylsp_needed, align 4
  br label %33

344:                                              ; preds = %47
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45.217, i64 0, i64 0))
  br label %345

345:                                              ; preds = %344, %47
  %346 = load i32, i32* %5, align 4
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %348 = call i32 @putc(i32 %346, %struct._IO_FILE* %347)
  br label %349

349:                                              ; preds = %345, %312, %186, %118, %71, %55, %49
  %350 = load i32, i32* %5, align 4
  %351 = icmp ne i32 %350, 125
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* %7, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %352, %349
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %357 = call i32 @getc(%struct._IO_FILE* %356)
  store i32 %357, i32* %5, align 4
  br label %358

358:                                              ; preds = %355, %352
  br label %33

359:                                              ; preds = %44
  %360 = call i32 @skip_white_space()
  store i32 %360, i32* %5, align 4
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %362 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %361, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46.218, i64 0, i64 0))
  %363 = load i32, i32* %5, align 4
  %364 = icmp eq i32 %363, 123
  br i1 %364, label %365, label %368

365:                                              ; preds = %359
  %366 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %367 = load i32, i32* %4, align 4
  call void @copy_action(%struct.symbol_list* %366, i32 %367)
  br label %385

368:                                              ; preds = %359
  %369 = load i32, i32* %5, align 4
  %370 = icmp eq i32 %369, 61
  br i1 %370, label %371, label %380

371:                                              ; preds = %368
  %372 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %373 = call i32 @getc(%struct._IO_FILE* %372)
  store i32 %373, i32* %5, align 4
  %374 = load i32, i32* %5, align 4
  %375 = icmp eq i32 %374, 123
  br i1 %375, label %376, label %379

376:                                              ; preds = %371
  %377 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %378 = load i32, i32* %4, align 4
  call void @copy_action(%struct.symbol_list* %377, i32 %378)
  br label %379

379:                                              ; preds = %376, %371
  br label %384

380:                                              ; preds = %368
  %381 = load i32, i32* %5, align 4
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %383 = call i32 @ungetc(i32 %381, %struct._IO_FILE* %382)
  br label %384

384:                                              ; preds = %380, %379
  br label %385

385:                                              ; preds = %384, %365
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_token_decl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %7, align 8
  br label %9

9:                                                ; preds = %101, %20, %2
  %10 = call i32 @skip_white_space()
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %12 = call i32 @ungetc(i32 %10, %struct._IO_FILE* %11)
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  ret void

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  %17 = call i32 @lex()
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %9

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 21
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = call i64 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  call void @free(i8* %30) #7
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strcpy(i8* %38, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #7
  br label %101

40:                                               ; preds = %21
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %87

43:                                               ; preds = %40
  %44 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %45 = getelementptr inbounds %struct.bucket, %struct.bucket* %44, i32 0, i32 8
  %46 = load i8, i8* %45, align 8
  %47 = sext i8 %46 to i32
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %52 = getelementptr inbounds %struct.bucket, %struct.bucket* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i32
  call void @fatals(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11.203, i64 0, i64 0), i32 %54, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i32, i32* %3, align 4
  %57 = trunc i32 %56 to i8
  %58 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %59 = getelementptr inbounds %struct.bucket, %struct.bucket* %58, i32 0, i32 8
  store i8 %57, i8* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @nvars, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @nvars, align 4
  %65 = trunc i32 %63 to i16
  %66 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %67 = getelementptr inbounds %struct.bucket, %struct.bucket* %66, i32 0, i32 4
  store i16 %65, i16* %67, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %73 = getelementptr inbounds %struct.bucket, %struct.bucket* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %79 = getelementptr inbounds %struct.bucket, %struct.bucket* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  br label %85

80:                                               ; preds = %71
  %81 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %82 = getelementptr inbounds %struct.bucket, %struct.bucket* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %83 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12.202, i64 0, i64 0), i32 %84, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85, %68
  br label %100

87:                                               ; preds = %40
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 22
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @numval, align 4
  %95 = trunc i32 %94 to i16
  %96 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %97 = getelementptr inbounds %struct.bucket, %struct.bucket* %96, i32 0, i32 7
  store i16 %95, i16* %97, align 2
  store i32 1, i32* @translations, align 4
  br label %99

98:                                               ; preds = %90, %87
  call void @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13.204, i64 0, i64 0))
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100, %31
  br label %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = call i32 @lex()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 21
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16.201, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %0
  %10 = call i64 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #7
  br label %20

20:                                               ; preds = %43, %9
  %21 = call i32 @lex()
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  switch i32 %22, label %41 [
    i32 4, label %23
    i32 2, label %25
    i32 1, label %26
  ]

23:                                               ; preds = %20
  %24 = call i32 @lex()
  store i32 %24, i32* %1, align 4
  br label %44

25:                                               ; preds = %20
  br label %43

26:                                               ; preds = %20
  %27 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %28 = getelementptr inbounds %struct.bucket, %struct.bucket* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %34 = getelementptr inbounds %struct.bucket, %struct.bucket* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %37 = getelementptr inbounds %struct.bucket, %struct.bucket* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12.202, i64 0, i64 0), i32 %39, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %40

40:                                               ; preds = %35, %31
  br label %43

41:                                               ; preds = %20
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %1, align 4
  br label %44

43:                                               ; preds = %40, %25
  br label %20

44:                                               ; preds = %41, %23
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_union_decl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @typed, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20.195, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %0
  store i32 1, i32* @typed, align 4
  %8 = load i32, i32* @nolinesflag, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %12 = load i32, i32* @lineno, align 4
  %13 = load i8*, i8** @infile, align 8
  %14 = call i8* @mybasename.189(i8* %13)
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21.196, i64 0, i64 0), i32 %12, i8* %14)
  br label %19

16:                                               ; preds = %7
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22.197, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23.198, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %23 = icmp ne %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23.198, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %29 = call i32 @getc(%struct._IO_FILE* %28)
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %135, %27
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %138

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %36 = call i32 @putc(i32 %34, %struct._IO_FILE* %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %38 = icmp ne %struct._IO_FILE* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %1, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %42 = call i32 @putc(i32 %40, %struct._IO_FILE* %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %1, align 4
  switch i32 %44, label %135 [
    i32 10, label %45
    i32 47, label %48
    i32 123, label %109
    i32 125, label %112
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @lineno, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @lineno, align 4
  br label %135

48:                                               ; preds = %43
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %50 = call i32 @getc(%struct._IO_FILE* %49)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 42
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %1, align 4
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %56 = call i32 @ungetc(i32 %54, %struct._IO_FILE* %55)
  br label %108

57:                                               ; preds = %48
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %59 = call i32 @putc(i32 42, %struct._IO_FILE* %58)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %61 = icmp ne %struct._IO_FILE* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %64 = call i32 @putc(i32 42, %struct._IO_FILE* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %67 = call i32 @getc(%struct._IO_FILE* %66)
  store i32 %67, i32* %1, align 4
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %106, %65
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load i32, i32* %1, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24.199, i64 0, i64 0))
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, i32* %1, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %78 = call i32 @putc(i32 %76, %struct._IO_FILE* %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %80 = icmp ne %struct._IO_FILE* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %1, align 4
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %84 = call i32 @putc(i32 %82, %struct._IO_FILE* %83)
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32, i32* %1, align 4
  %87 = icmp eq i32 %86, 42
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %90 = call i32 @getc(%struct._IO_FILE* %89)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = icmp eq i32 %91, 47
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %95 = call i32 @putc(i32 47, %struct._IO_FILE* %94)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %97 = icmp ne %struct._IO_FILE* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %100 = call i32 @putc(i32 47, %struct._IO_FILE* %99)
  br label %101

101:                                              ; preds = %98, %93
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %88
  br label %106

103:                                              ; preds = %85
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %105 = call i32 @getc(%struct._IO_FILE* %104)
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %103, %102
  br label %68

107:                                              ; preds = %68
  br label %108

108:                                              ; preds = %107, %53
  br label %135

109:                                              ; preds = %43
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %135

112:                                              ; preds = %43
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %2, align 4
  %115 = load i32, i32* %2, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25.200, i64 0, i64 0))
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %121 = icmp ne %struct._IO_FILE* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25.200, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = call i32 @skip_white_space()
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = icmp ne i32 %127, 59
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %1, align 4
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %132 = call i32 @ungetc(i32 %130, %struct._IO_FILE* %131)
  br label %133

133:                                              ; preds = %129, %125
  br label %138

134:                                              ; preds = %112
  br label %135

135:                                              ; preds = %134, %109, %108, %45, %43
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %137 = call i32 @getc(%struct._IO_FILE* %136)
  store i32 %137, i32* %1, align 4
  br label %30

138:                                              ; preds = %133, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_expect_decl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 16
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %5 = call i32 @getc(%struct._IO_FILE* %4)
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 9
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %16 = call i32 @getc(%struct._IO_FILE* %15)
  store i32 %16, i32* %1, align 4
  br label %6

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %1, align 4
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 57
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %39

26:                                               ; preds = %24
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 20
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %38 = call i32 @getc(%struct._IO_FILE* %37)
  store i32 %38, i32* %1, align 4
  br label %18

39:                                               ; preds = %24
  %40 = load i32, i32* %1, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %42 = call i32 @ungetc(i32 %40, %struct._IO_FILE* %41)
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %44 = call i32 @atoi(i8* %43) #8
  store i32 %44, i32* @expected_conflicts, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_start_decl() #0 {
  %1 = load i32, i32* @start_flag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14.193, i64 0, i64 0))
  br label %4

4:                                                ; preds = %3, %0
  store i32 1, i32* @start_flag, align 4
  %5 = call i32 @lex()
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15.194, i64 0, i64 0))
  br label %8

8:                                                ; preds = %7, %4
  %9 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %9, %struct.bucket** @startval, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_signed_integer(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %7 = call i32 @getc(%struct._IO_FILE* %6)
  store i32 %7, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 45
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %12 = call i32 @getc(%struct._IO_FILE* %11)
  store i32 %12, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = call i16** @__ctype_b_loc() #10
  %16 = load i16*, i16** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 2048
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 10, %25
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 48
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %31 = call i32 @getc(%struct._IO_FILE* %30)
  store i32 %31, i32* %3, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load i32, i32* %3, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %35 = call i32 @ungetc(i32 %33, %struct._IO_FILE* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %36, %37
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_type_name(i32 %0, %struct.symbol_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol_list*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.symbol_list* %1, %struct.symbol_list** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** @get_type_name.msg, align 8
  call void @fatal(i8* %10)
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.symbol_list*, %struct.symbol_list** %4, align 8
  store %struct.symbol_list* %12, %struct.symbol_list** %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %30, %11
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %19 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %18, i32 0, i32 0
  %20 = load %struct.symbol_list*, %struct.symbol_list** %19, align 8
  store %struct.symbol_list* %20, %struct.symbol_list** %6, align 8
  %21 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %22 = icmp eq %struct.symbol_list* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %25 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %24, i32 0, i32 1
  %26 = load %struct.bucket*, %struct.bucket** %25, align 8
  %27 = icmp eq %struct.bucket* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %17
  %29 = load i8*, i8** @get_type_name.msg, align 8
  call void @fatal(i8* %29)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.symbol_list*, %struct.symbol_list** %6, align 8
  %35 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %34, i32 0, i32 1
  %36 = load %struct.bucket*, %struct.bucket** %35, align 8
  %37 = getelementptr inbounds %struct.bucket, %struct.bucket* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  ret i8* %38
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_definition() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @nolinesflag, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %9 = load i32, i32* @lineno, align 4
  %10 = load i8*, i8** @infile, align 8
  %11 = call i8* @mybasename.189(i8* %10)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.206, i64 0, i64 0), i32 %9, i8* %11)
  br label %13

13:                                               ; preds = %7, %0
  store i32 0, i32* %4, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %15 = call i32 @getc(%struct._IO_FILE* %14)
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %157, %83, %13
  %17 = load i32, i32* %1, align 4
  switch i32 %17, label %141 [
    i32 10, label %18
    i32 37, label %24
    i32 39, label %25
    i32 34, label %25
    i32 47, label %75
    i32 -1, label %140
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %1, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %21 = call i32 @putc(i32 %19, %struct._IO_FILE* %20)
  %22 = load i32, i32* @lineno, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @lineno, align 4
  br label %145

24:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %145

25:                                               ; preds = %16, %16
  %26 = load i32, i32* %1, align 4
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %29 = call i32 @putc(i32 %27, %struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %31 = call i32 @getc(%struct._IO_FILE* %30)
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %68, %25
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load i32, i32* %1, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %1, align 4
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.208, i64 0, i64 0))
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %1, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %46 = call i32 @putc(i32 %44, %struct._IO_FILE* %45)
  %47 = load i32, i32* %1, align 4
  %48 = icmp eq i32 %47, 92
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %51 = call i32 @getc(%struct._IO_FILE* %50)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %1, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %49
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.208, i64 0, i64 0))
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %1, align 4
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %61 = call i32 @putc(i32 %59, %struct._IO_FILE* %60)
  %62 = load i32, i32* %1, align 4
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @lineno, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @lineno, align 4
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %70 = call i32 @getc(%struct._IO_FILE* %69)
  store i32 %70, i32* %1, align 4
  br label %32

71:                                               ; preds = %32
  %72 = load i32, i32* %1, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %74 = call i32 @putc(i32 %72, %struct._IO_FILE* %73)
  br label %145

75:                                               ; preds = %16
  %76 = load i32, i32* %1, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %78 = call i32 @putc(i32 %76, %struct._IO_FILE* %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %80 = call i32 @getc(%struct._IO_FILE* %79)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* %1, align 4
  %82 = icmp ne i32 %81, 42
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %16

84:                                               ; preds = %75
  %85 = load i32, i32* %1, align 4
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %87 = call i32 @putc(i32 %85, %struct._IO_FILE* %86)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %89 = call i32 @getc(%struct._IO_FILE* %88)
  store i32 %89, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %138, %84
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %94, label %139

94:                                               ; preds = %90
  %95 = load i32, i32* %1, align 4
  %96 = icmp eq i32 %95, 42
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %101, %97
  %99 = load i32, i32* %1, align 4
  %100 = icmp eq i32 %99, 42
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %1, align 4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %104 = call i32 @putc(i32 %102, %struct._IO_FILE* %103)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %106 = call i32 @getc(%struct._IO_FILE* %105)
  store i32 %106, i32* %1, align 4
  br label %98

107:                                              ; preds = %98
  %108 = load i32, i32* %1, align 4
  %109 = icmp eq i32 %108, 47
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %1, align 4
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %113 = call i32 @putc(i32 %111, %struct._IO_FILE* %112)
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %107
  br label %138

115:                                              ; preds = %94
  %116 = load i32, i32* %1, align 4
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i32, i32* @lineno, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @lineno, align 4
  %121 = load i32, i32* %1, align 4
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %123 = call i32 @putc(i32 %121, %struct._IO_FILE* %122)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %125 = call i32 @getc(%struct._IO_FILE* %124)
  store i32 %125, i32* %1, align 4
  br label %137

126:                                              ; preds = %115
  %127 = load i32, i32* %1, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  call void @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9.234, i64 0, i64 0))
  br label %136

130:                                              ; preds = %126
  %131 = load i32, i32* %1, align 4
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %133 = call i32 @putc(i32 %131, %struct._IO_FILE* %132)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %135 = call i32 @getc(%struct._IO_FILE* %134)
  store i32 %135, i32* %1, align 4
  br label %136

136:                                              ; preds = %130, %129
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %114
  br label %90

139:                                              ; preds = %90
  br label %145

140:                                              ; preds = %16
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10.235, i64 0, i64 0))
  br label %141

141:                                              ; preds = %140, %16
  %142 = load i32, i32* %1, align 4
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %144 = call i32 @putc(i32 %142, %struct._IO_FILE* %143)
  br label %145

145:                                              ; preds = %141, %139, %71, %24, %18
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %147 = call i32 @getc(%struct._IO_FILE* %146)
  store i32 %147, i32* %1, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i32, i32* %1, align 4
  %152 = icmp eq i32 %151, 125
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  ret void

154:                                              ; preds = %150
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %156 = call i32 @putc(i32 37, %struct._IO_FILE* %155)
  br label %157

157:                                              ; preds = %154, %145
  store i32 0, i32* %4, align 4
  br label %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_type_decl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @lex()
  %5 = icmp ne i32 %4, 21
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16.201, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %0
  %8 = call i64 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %14)
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #7
  br label %18

18:                                               ; preds = %44, %7
  %19 = call i32 @skip_white_space()
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %21 = call i32 @ungetc(i32 %19, %struct._IO_FILE* %20)
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  ret void

24:                                               ; preds = %18
  %25 = call i32 @lex()
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  switch i32 %26, label %43 [
    i32 2, label %27
    i32 1, label %28
  ]

27:                                               ; preds = %24
  br label %44

28:                                               ; preds = %24
  %29 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %30 = getelementptr inbounds %struct.bucket, %struct.bucket* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i8*, i8** %2, align 8
  %35 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %36 = getelementptr inbounds %struct.bucket, %struct.bucket* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %39 = getelementptr inbounds %struct.bucket, %struct.bucket* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12.202, i64 0, i64 0), i32 %41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %42

42:                                               ; preds = %37, %33
  br label %44

43:                                               ; preds = %24
  call void @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17.233, i64 0, i64 0))
  br label %44

44:                                               ; preds = %43, %42, %27
  br label %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_assoc_decl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @lastprec, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @lastprec, align 4
  br label %9

9:                                                ; preds = %82, %1
  %10 = call i32 @skip_white_space()
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %12 = call i32 @ungetc(i32 %10, %struct._IO_FILE* %11)
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %84

15:                                               ; preds = %9
  %16 = call i32 @lex()
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %81 [
    i32 21, label %18
    i32 2, label %29
    i32 1, label %30
    i32 22, label %70
    i32 4, label %80
  ]

18:                                               ; preds = %15
  %19 = call i64 @strlen(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strcpy(i8* %27, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i64 0, i64 0)) #7
  br label %82

29:                                               ; preds = %15
  br label %82

30:                                               ; preds = %15
  %31 = load i32, i32* @lastprec, align 4
  %32 = trunc i32 %31 to i16
  %33 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %34 = getelementptr inbounds %struct.bucket, %struct.bucket* %33, i32 0, i32 5
  store i16 %32, i16* %34, align 2
  %35 = load i32, i32* %2, align 4
  %36 = trunc i32 %35 to i16
  %37 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %38 = getelementptr inbounds %struct.bucket, %struct.bucket* %37, i32 0, i32 6
  store i16 %36, i16* %38, align 4
  %39 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %40 = getelementptr inbounds %struct.bucket, %struct.bucket* %39, i32 0, i32 8
  %41 = load i8, i8* %40, align 8
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %46 = getelementptr inbounds %struct.bucket, %struct.bucket* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i32
  call void @fatals(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11.203, i64 0, i64 0), i32 %48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %49

49:                                               ; preds = %44, %30
  %50 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %51 = getelementptr inbounds %struct.bucket, %struct.bucket* %50, i32 0, i32 8
  store i8 1, i8* %51, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %56 = getelementptr inbounds %struct.bucket, %struct.bucket* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %62 = getelementptr inbounds %struct.bucket, %struct.bucket* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %68

63:                                               ; preds = %54
  %64 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %65 = getelementptr inbounds %struct.bucket, %struct.bucket* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %66 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12.202, i64 0, i64 0), i32 %67, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %68

68:                                               ; preds = %63, %59
  br label %69

69:                                               ; preds = %68, %49
  br label %82

70:                                               ; preds = %15
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* @numval, align 4
  %75 = trunc i32 %74 to i16
  %76 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %77 = getelementptr inbounds %struct.bucket, %struct.bucket* %76, i32 0, i32 7
  store i16 %75, i16* %77, align 2
  store i32 1, i32* @translations, align 4
  br label %79

78:                                               ; preds = %70
  call void @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.231, i64 0, i64 0))
  br label %79

79:                                               ; preds = %78, %73
  br label %82

80:                                               ; preds = %15
  br label %84

81:                                               ; preds = %15
  call void @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19.232, i64 0, i64 0))
  br label %82

82:                                               ; preds = %81, %79, %69, %29, %18
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %5, align 4
  br label %9

84:                                               ; preds = %80, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = and i32 %17, 16383
  store i32 %18, i32* %4, align 4
  br label %6

19:                                               ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = srem i32 %20, 1009
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @copys(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %14, %1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  br label %7

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strcpy(i8* %20, i8* %21)
  %23 = load i8*, i8** %5, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tabinit() #0 {
  %1 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 8072)
  %2 = bitcast i8* %1 to %struct.bucket**
  store %struct.bucket** %2, %struct.bucket*** @symtab, align 8
  store %struct.bucket* null, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* null, %struct.bucket** @lastsymbol, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bucket* @getsym(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bucket*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @hash(i8* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bucket*, %struct.bucket** %8, i64 %10
  %12 = load %struct.bucket*, %struct.bucket** %11, align 8
  store %struct.bucket* %12, %struct.bucket** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load %struct.bucket*, %struct.bucket** %4, align 8
  %15 = icmp ne %struct.bucket* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load i8*, i8** %2, align 8
  %23 = load %struct.bucket*, %struct.bucket** %4, align 8
  %24 = getelementptr inbounds %struct.bucket, %struct.bucket* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %22, i8* %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.bucket*, %struct.bucket** %4, align 8
  %31 = getelementptr inbounds %struct.bucket, %struct.bucket* %30, i32 0, i32 0
  %32 = load %struct.bucket*, %struct.bucket** %31, align 8
  store %struct.bucket* %32, %struct.bucket** %4, align 8
  br label %33

33:                                               ; preds = %29, %28
  br label %13

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load i32, i32* @nsyms, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @nsyms, align 4
  %40 = call i8* (i32, ...) bitcast (i8* (i32)* @mallocate to i8* (i32, ...)*)(i32 48)
  %41 = bitcast i8* %40 to %struct.bucket*
  store %struct.bucket* %41, %struct.bucket** %4, align 8
  %42 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.bucket*, %struct.bucket** %42, i64 %44
  %46 = load %struct.bucket*, %struct.bucket** %45, align 8
  %47 = load %struct.bucket*, %struct.bucket** %4, align 8
  %48 = getelementptr inbounds %struct.bucket, %struct.bucket* %47, i32 0, i32 0
  store %struct.bucket* %46, %struct.bucket** %48, align 8
  %49 = load %struct.bucket*, %struct.bucket** %4, align 8
  %50 = getelementptr inbounds %struct.bucket, %struct.bucket* %49, i32 0, i32 1
  store %struct.bucket* null, %struct.bucket** %50, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = call i8* @copys(i8* %51)
  %53 = load %struct.bucket*, %struct.bucket** %4, align 8
  %54 = getelementptr inbounds %struct.bucket, %struct.bucket* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.bucket*, %struct.bucket** %4, align 8
  %56 = getelementptr inbounds %struct.bucket, %struct.bucket* %55, i32 0, i32 8
  store i8 0, i8* %56, align 8
  %57 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  %58 = icmp eq %struct.bucket* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %37
  %60 = load %struct.bucket*, %struct.bucket** %4, align 8
  store %struct.bucket* %60, %struct.bucket** @firstsymbol, align 8
  %61 = load %struct.bucket*, %struct.bucket** %4, align 8
  store %struct.bucket* %61, %struct.bucket** @lastsymbol, align 8
  br label %67

62:                                               ; preds = %37
  %63 = load %struct.bucket*, %struct.bucket** %4, align 8
  %64 = load %struct.bucket*, %struct.bucket** @lastsymbol, align 8
  %65 = getelementptr inbounds %struct.bucket, %struct.bucket* %64, i32 0, i32 1
  store %struct.bucket* %63, %struct.bucket** %65, align 8
  %66 = load %struct.bucket*, %struct.bucket** %4, align 8
  store %struct.bucket* %66, %struct.bucket** @lastsymbol, align 8
  br label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.bucket*, %struct.bucket** %4, align 8
  %69 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bucket*, %struct.bucket** %69, i64 %71
  store %struct.bucket* %68, %struct.bucket** %72, align 8
  br label %73

73:                                               ; preds = %67, %34
  %74 = load %struct.bucket*, %struct.bucket** %4, align 8
  ret %struct.bucket* %74
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_symtab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bucket*, align 8
  %3 = alloca %struct.bucket*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1009
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bucket*, %struct.bucket** %8, i64 %10
  %12 = load %struct.bucket*, %struct.bucket** %11, align 8
  store %struct.bucket* %12, %struct.bucket** %2, align 8
  br label %13

13:                                               ; preds = %25, %7
  %14 = load %struct.bucket*, %struct.bucket** %2, align 8
  %15 = icmp ne %struct.bucket* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.bucket*, %struct.bucket** %2, align 8
  %18 = getelementptr inbounds %struct.bucket, %struct.bucket* %17, i32 0, i32 0
  %19 = load %struct.bucket*, %struct.bucket** %18, align 8
  store %struct.bucket* %19, %struct.bucket** %3, align 8
  %20 = load %struct.bucket*, %struct.bucket** %2, align 8
  %21 = icmp ne %struct.bucket* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.bucket*, %struct.bucket** %2, align 8
  %24 = bitcast %struct.bucket* %23 to i8*
  call void @free(i8* %24) #7
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.bucket*, %struct.bucket** %3, align 8
  store %struct.bucket* %26, %struct.bucket** %2, align 8
  br label %13

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %4

31:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TC(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 31
  %16 = sdiv i32 %15, 32
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %3, align 8
  store i32* %28, i32** %12, align 8
  store i32 1, i32* %6, align 4
  %29 = load i32*, i32** %3, align 8
  store i32* %29, i32** %13, align 8
  br label %30

30:                                               ; preds = %90, %2
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %30
  %35 = load i32*, i32** %12, align 8
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %3, align 8
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %75, %34
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ult i32* %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load i32*, i32** %13, align 8
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %9, align 8
  br label %55

55:                                               ; preds = %59, %47
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* %60, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = load i32, i32* %63, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %63, align 4
  br label %55

67:                                               ; preds = %55
  br label %75

68:                                               ; preds = %41
  %69 = load i32*, i32** %7, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %7, align 8
  br label %75

75:                                               ; preds = %68, %67
  %76 = load i32*, i32** %10, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %10, align 8
  br label %37

82:                                               ; preds = %37
  %83 = load i32, i32* %6, align 4
  %84 = shl i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %12, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32*, i32** %13, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = bitcast i8* %95 to i32*
  store i32* %96, i32** %13, align 8
  br label %30

97:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RTC(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  call void @TC(i32* %9, i32 %10)
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 31
  %13 = sdiv i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %8, align 8
  store i32 1, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %42, %2
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ult i32* %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32*, i32** %7, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %7, align 8
  br label %26

49:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
