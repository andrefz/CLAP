; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.Elm_s = type { i8*, i8, i8, i8, i8, i8*, i8*, i64, [19 x %struct.interp_t] }
%struct.interp_t = type { float, float, i8, i8, i8 }
%struct.resonator_t = type { i8*, float, float, float, float, float }
%struct.trie_s = type { %struct.trie_s*, %struct.trie_s*, i8*, i8 }
%struct.darray_t = type { i8*, i32, i32, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.filter_t = type { float, float, float }
%struct.slope_t = type { float, i32 }

@ASCII_id = dso_local global i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [62 x i8] c"$Id: ASCII.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@ASCII = dso_local global [129 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exclamation mark\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"double quote\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dollar\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ampersand\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"open parenthesis\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"close parenthesis\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"asterisk\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"comma\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"full stop\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"slash\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"semi colon\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"less than\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"equals\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"greater than\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"question mark\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"bee\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"see\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"dee\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"eff\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"gee\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"aych\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"jay\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"kay\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ell\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"em\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"ohe\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"pee\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"kju\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"are\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"vee\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"double you\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"eks\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"zed\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"open bracket\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"back slash\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"close bracket\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"circumflex\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"underscore\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"back quote\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"open brace\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"vertical bar\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"close brace\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"tilde\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@file_write = dso_local global void (i32, i16*)* null, align 8
@file_term = dso_local global void ()* null, align 8
@.str.73 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.74 = private unnamed_addr constant [12 x i8] c"File output\00", align 1
@.str.2.75 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@linear_file = internal global i8* null, align 8
@.str.3.76 = private unnamed_addr constant [27 x i8] c"Raw 16-bit linear pathname\00", align 1
@.str.4.77 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@au_file = internal global i8* null, align 8
@.str.5.78 = private unnamed_addr constant [25 x i8] c"Sun/Next audio file name\00", align 1
@.str.6.79 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@au_fd = internal global i32 -1, align 4
@au_encoding = internal global i32 1, align 4
@au_size = internal global i32 0, align 4
@linear_fd = internal global i32 -1, align 4
@.str.7.80 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.8.81 = private unnamed_addr constant [30 x i8] c"%s : No memory for ulaw data\0A\00", align 1
@darray_id = dso_local global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.82, i32 0, i32 0), align 8
@.str.82 = private unnamed_addr constant [63 x i8] c"$Id: darray.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@def_pars_id = dso_local global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.83, i32 0, i32 0), align 8
@.str.83 = private unnamed_addr constant [65 x i8] c"$Id: def_pars.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@def_pars = dso_local global %struct.klatt_frame_t { i64 1330, i64 60, i64 500, i64 60, i64 1500, i64 90, i64 2800, i64 150, i64 3250, i64 200, i64 3700, i64 200, i64 4990, i64 500, i64 270, i64 100, i64 270, i64 100, i64 0, i64 30, i64 0, i64 10, i64 0, i64 0, i64 0, i64 80, i64 0, i64 200, i64 0, i64 350, i64 0, i64 500, i64 0, i64 600, i64 0, i64 800, i64 0, i64 0, i64 0, i64 62 }, align 8
@klatt_global = common dso_local global %struct.klatt_global_t zeroinitializer, align 8
@.str.1.84 = private unnamed_addr constant [16 x i8] c"Synth paramters\00", align 1
@.str.2.85 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3.86 = private unnamed_addr constant [25 x i8] c"Quiet - minimal messages\00", align 1
@.str.4.87 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5.88 = private unnamed_addr constant [23 x i8] c"Impulse glottal source\00", align 1
@.str.6.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.7.90 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8.91 = private unnamed_addr constant [24 x i8] c"Number cascade formants\00", align 1
@.str.9.92 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.10.93 = private unnamed_addr constant [11 x i8] c"F0 flutter\00", align 1
@.str.11.94 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.12.95 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.13.96 = private unnamed_addr constant [15 x i8] c"mSec per frame\00", align 1
@.str.14.97 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.15.98 = private unnamed_addr constant [8 x i8] c"Tilt dB\00", align 1
@.str.16.99 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.17.100 = private unnamed_addr constant [17 x i8] c"Base F0 in 0.1Hz\00", align 1
@dialect = dso_local global i8** getelementptr inbounds ([85 x i8*], [85 x i8*]* @ph_am, i32 0, i32 0), align 8
@dict = common dso_local global i8* null, align 8
@elements_id = dso_local global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.101, i32 0, i32 0), align 8
@.str.101 = private unnamed_addr constant [65 x i8] c"$Id: elements.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@Elements = dso_local global [69 x %struct.Elm_s] [%struct.Elm_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.102, i32 0, i32 0), i8 31, i8 5, i8 5, i8 0, i8* null, i8* null, i64 0, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.103, i32 0, i32 0), i8 29, i8 6, i8 6, i8 0, i8* null, i8* null, i64 0, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i32 0, i32 0), i8 23, i8 8, i8 8, i8 112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i32 0, i32 0), i64 138412040, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.106, i32 0, i32 0), i8 29, i8 1, i8 1, i8 112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i32 0, i32 0), i64 138412040, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.375000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.107, i32 0, i32 0), i8 23, i8 2, i8 2, i8 112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.105, i32 0, i32 0), i64 138412040, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.108, i32 0, i32 0), i8 23, i8 6, i8 6, i8 116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 0, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 0, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.110, i32 0, i32 0), i8 29, i8 1, i8 1, i8 116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10.111, i32 0, i32 0), i8 23, i8 2, i8 2, i8 116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 1 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 1 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 1 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 1 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.112, i32 0, i32 0), i8 23, i8 8, i8 8, i8 107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i32 0, i32 0), i64 205520896, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.114, i32 0, i32 0), i8 29, i8 1, i8 1, i8 107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i32 0, i32 0), i64 205520896, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14.115, i32 0, i32 0), i8 23, i8 4, i8 4, i8 107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.113, i32 0, i32 0), i64 205520896, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15.116, i32 0, i32 0), i8 26, i8 12, i8 12, i8 98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.117, i32 0, i32 0), i64 37748744, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.118, i32 0, i32 0), i8 29, i8 1, i8 1, i8 98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.117, i32 0, i32 0), i64 37748744, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.119, i32 0, i32 0), i8 26, i8 0, i8 0, i8 98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.117, i32 0, i32 0), i64 37748744, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19.120, i32 0, i32 0), i8 26, i8 8, i8 8, i8 100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21.122, i32 0, i32 0), i8 29, i8 1, i8 1, i8 100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22.123, i32 0, i32 0), i8 26, i8 1, i8 1, i8 100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 0 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23.124, i32 0, i32 0), i8 26, i8 12, i8 12, i8 103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.125, i32 0, i32 0), i64 104857600, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25.126, i32 0, i32 0), i8 29, i8 1, i8 1, i8 103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.125, i32 0, i32 0), i64 104857600, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.127, i32 0, i32 0), i8 26, i8 2, i8 2, i8 103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.125, i32 0, i32 0), i64 104857600, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.400000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27.128, i32 0, i32 0), i8 15, i8 8, i8 8, i8 109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28.129, i32 0, i32 0), i64 65544, [19 x %struct.interp_t] [%struct.interp_t { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 1.000000e+03, float 3.500000e+02, i8 50, i8 3, i8 0 }, %struct.interp_t { float 2.200000e+03, float 0.000000e+00, i8 100, i8 5, i8 0 }, %struct.interp_t { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 1.750000e+02, float 8.700000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 1.200000e+02, float 0.000000e+00, i8 100, i8 5, i8 0 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 2.600000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.300000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29.130, i32 0, i32 0), i8 15, i8 8, i8 8, i8 110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30.131, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30.131, i32 0, i32 0), i64 65537, [19 x %struct.interp_t] [%struct.interp_t { float 4.500000e+02, float 4.500000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 2.680000e+03, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 3.000000e+02, float 1.500000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.600000e+02, float 1.300000e+02, i8 50, i8 3, i8 0 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float 2.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.132, i32 0, i32 0), i8 15, i8 8, i8 8, i8 78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29.130, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29.130, i32 0, i32 0), i64 67174400, [19 x %struct.interp_t] [%struct.interp_t { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0 }, %struct.interp_t { float 8.200000e+02, float 1.550000e+03, i8 50, i8 5, i8 3 }, %struct.interp_t { float 2.800000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.600000e+02, float 8.000000e+01, i8 0, i8 5, i8 0 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 3 }, %struct.interp_t { float 1.000000e+02, float 5.000000e+01, i8 50, i8 3, i8 0 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 3.500000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0 }, %struct.interp_t { float 5.200000e+01, float 2.600000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 5.600000e+01, float 2.800000e+01, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32.133, i32 0, i32 0), i8 18, i8 12, i8 12, i8 102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33.134, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33.134, i32 0, i32 0), i64 134219904, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34.135, i32 0, i32 0), i8 18, i8 15, i8 15, i8 84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.108, i32 0, i32 0), i64 134217888, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.780000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.275000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35.136, i32 0, i32 0), i8 18, i8 12, i8 12, i8 115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36.137, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36.137, i32 0, i32 0), i64 134217857, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.620000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 2.000000e+02, float 1.000000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.600000e+01, float 4.800000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.200000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37.138, i32 0, i32 0), i8 18, i8 12, i8 12, i8 83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35.136, i32 0, i32 0), i64 134480000, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.200000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38.139, i32 0, i32 0), i8 18, i8 12, i8 12, i8 120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.140, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.140, i32 0, i32 0), i64 201326720, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40.141, i32 0, i32 0), i8 9, i8 10, i8 10, i8 104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41.142, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41.142, i32 0, i32 0), i64 258, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 3.500000e+01, float -1.400000e+01, i8 100, i8 0, i8 7 }, %struct.interp_t { float 3.675000e+01, float -1.400000e+01, i8 100, i8 0, i8 7 }, %struct.interp_t { float 2.625000e+01, float -7.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 2.275000e+01, float -3.500000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.143, i32 0, i32 0), i8 20, i8 4, i8 4, i8 118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43.144, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43.144, i32 0, i32 0), i64 33556608, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44.145, i32 0, i32 0), i8 30, i8 0, i8 0, i8 90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45.146, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45.146, i32 0, i32 0), i64 33554560, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.420000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46.147, i32 0, i32 0), i8 20, i8 4, i8 4, i8 84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19.120, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19.120, i32 0, i32 0), i64 33554592, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.600000e+01, float 1.800000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47.148, i32 0, i32 0), i8 20, i8 4, i8 4, i8 84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19.120, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19.120, i32 0, i32 0), i64 33554592, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45.146, i32 0, i32 0), i8 20, i8 4, i8 4, i8 122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48.149, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48.149, i32 0, i32 0), i64 33554561, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+01, float 2.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49.150, i32 0, i32 0), i8 20, i8 4, i8 4, i8 122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48.149, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48.149, i32 0, i32 0), i64 33554561, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50.151, i32 0, i32 0), i8 20, i8 4, i8 4, i8 90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45.146, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45.146, i32 0, i32 0), i64 33816704, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51.152, i32 0, i32 0), i8 23, i8 4, i8 4, i8 116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.109, i32 0, i32 0), i64 138412033, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52.153, i32 0, i32 0), i8 18, i8 8, i8 8, i8 83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35.136, i32 0, i32 0), i64 134480000, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53.154, i32 0, i32 0), i8 26, i8 4, i8 4, i8 100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.121, i32 0, i32 0), i64 37748737, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2 }, %struct.interp_t { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2 }, %struct.interp_t { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54.155, i32 0, i32 0), i8 20, i8 3, i8 3, i8 90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45.146, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45.146, i32 0, i32 0), i64 33816704, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2 }, %struct.interp_t { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2 }, %struct.interp_t { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55.156, i32 0, i32 0), i8 11, i8 8, i8 8, i8 108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56.157, i32 0, i32 0), i64 33555457, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57.158, i32 0, i32 0), i8 11, i8 8, i8 8, i8 108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56.157, i32 0, i32 0), i64 33555457, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 9.400000e+02, float 4.700000e+02, i8 50, i8 6, i8 0 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58.159, i32 0, i32 0), i8 10, i8 10, i8 10, i8 -43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59.160, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60.161, i32 0, i32 0), i64 1048576, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 1.180000e+03, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 1.600000e+03, float 1.600000e+03, i8 0, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 7.000000e+01, float 3.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 5.000000e+01, float 2.500000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59.160, i32 0, i32 0), i8 10, i8 11, i8 11, i8 -88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61.162, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61.162, i32 0, i32 0), i64 3, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 1.180000e+03, float 5.900000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.600000e+03, float 7.400000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62.163, i32 0, i32 0), i8 10, i8 8, i8 8, i8 119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63.164, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63.164, i32 0, i32 0), i64 33558530, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.900000e+02, float 5.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 7.600000e+02, float 3.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.020000e+03, float 9.800000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.100000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64.165, i32 0, i32 0), i8 10, i8 7, i8 7, i8 106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65.166, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65.166, i32 0, i32 0), i64 33685506, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.190000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.980000e+03, float 1.460000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66.167, i32 0, i32 0), i8 2, i8 8, i8 6, i8 73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66.167, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66.167, i32 0, i32 0), i64 287309888, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.000000e+02, float 1.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.080000e+03, float 1.070000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.560000e+03, float 1.340000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67.168, i32 0, i32 0), i8 2, i8 8, i8 4, i8 69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68.169, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67.168, i32 0, i32 0), i64 285220928, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.400000e+02, float 3.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.020000e+03, float 1.070000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69.170, i32 0, i32 0), i8 2, i8 10, i8 5, i8 81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70.171, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70.171, i32 0, i32 0), i64 285229120, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.780000e+03, float 9.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.300000e+02, float 6.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.172, i32 0, i32 0), i8 2, i8 9, i8 6, i8 -61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.143, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.143, i32 0, i32 0), i64 285220868, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.000000e+02, float 3.500000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.360000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.450000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72.173, i32 0, i32 0), i8 2, i8 9, i8 6, i8 -127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73.174, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i64 268976132, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.100000e+02, float 2.900000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.575000e+01, float 7.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8 2, i8 6, i8 4, i8 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.172, i32 0, i32 0), i64 271056900, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i8 2, i8 4, i8 4, i8 -85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i64 285245456, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8 2, i8 11, i8 7, i8 105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i64 285213248, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.320000e+03, float 1.190000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.200000e+03, float 1.580000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8 2, i8 16, i8 16, i8 -50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82.175, i32 0, i32 0), i64 285220880, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 5.800000e+02, float 2.900000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.420000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83.176, i32 0, i32 0), i8 2, i8 15, i8 15, i8 65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i64 285229060, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.900000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i8 2, i8 16, i8 10, i8 -115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72.173, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72.173, i32 0, i32 0), i64 268967940, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.200000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8 2, i8 14, i8 9, i8 117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i64 268960260, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.200000e+03, float 1.100000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.050000e+01, float 3.500000e+00, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8 2, i8 9, i8 6, i8 69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68.169, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67.168, i32 0, i32 0), i64 285220928, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.400000e+02, float 2.900000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.600000e+03, float 8.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8 2, i8 9, i8 6, i8 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i64 285229072, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 8.800000e+02, float 4.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.900000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8 2, i8 9, i8 6, i8 111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i64 277348356, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 8.200000e+02, float 3.500000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8 2, i8 9, i8 6, i8 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i64 285229072, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.300000e+03, float 5.900000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.725000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8 2, i8 8, i8 6, i8 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.172, i32 0, i32 0), i64 271056900, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8 2, i8 9, i8 6, i8 -85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i64 285245456, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8 2, i8 9, i8 6, i8 73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66.167, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66.167, i32 0, i32 0), i64 287309888, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.100000e+02, float 1.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.200000e+03, float 1.070000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.920000e+03, float 1.460000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.675000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8 2, i8 8, i8 6, i8 81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i64 285229120, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8 2, i8 9, i8 6, i8 69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68.169, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67.168, i32 0, i32 0), i64 285220928, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 6.400000e+02, float 3.500000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.020000e+03, float 1.070000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.850000e+01, float 1.750000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i8 2, i8 9, i8 6, i8 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.172, i32 0, i32 0), i64 271056900, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 3.700000e+02, float 1.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.000000e+03, float 4.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 7.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }, %struct.Elm_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8 2, i8 9, i8 6, i8 -115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72.173, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72.173, i32 0, i32 0), i64 268967940, [19 x %struct.interp_t] [%struct.interp_t { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0 }, %struct.interp_t { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 8.200000e+02, float 4.700000e+02, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5 }, %struct.interp_t { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5 }, %struct.interp_t { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0 }, %struct.interp_t { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }, %struct.interp_t { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0 }] }], align 16
@.str.1.102 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.2.103 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3.104 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4.105 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5.106 = private unnamed_addr constant [3 x i8] c"PY\00", align 1
@.str.6.107 = private unnamed_addr constant [3 x i8] c"PZ\00", align 1
@.str.7.108 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8.109 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9.110 = private unnamed_addr constant [3 x i8] c"TY\00", align 1
@.str.10.111 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.11.112 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.12.113 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.13.114 = private unnamed_addr constant [3 x i8] c"KY\00", align 1
@.str.14.115 = private unnamed_addr constant [3 x i8] c"KZ\00", align 1
@.str.15.116 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.16.117 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17.118 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.18.119 = private unnamed_addr constant [3 x i8] c"BZ\00", align 1
@.str.19.120 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.20.121 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21.122 = private unnamed_addr constant [3 x i8] c"DY\00", align 1
@.str.22.123 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.23.124 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.24.125 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.25.126 = private unnamed_addr constant [3 x i8] c"GY\00", align 1
@.str.26.127 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.27.128 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.28.129 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29.130 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.30.131 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.31.132 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.32.133 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.33.134 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.34.135 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.35.136 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.36.137 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.37.138 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.38.139 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.39.140 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.40.141 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.41.142 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.42.143 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.43.144 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.44.145 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.45.146 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.46.147 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.47.148 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.48.149 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.49.150 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@.str.50.151 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.51.152 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.52.153 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.53.154 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.54.155 = private unnamed_addr constant [3 x i8] c"JY\00", align 1
@.str.55.156 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.56.157 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.57.158 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.58.159 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.59.160 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.60.161 = private unnamed_addr constant [6 x i8] c"<rzd>\00", align 1
@.str.61.162 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.62.163 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.63.164 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.64.165 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.65.166 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.66.167 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.67.168 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.68.169 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.69.170 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.70.171 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.71.172 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.72.173 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.73.174 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"A.\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.82.175 = private unnamed_addr constant [3 x i8] c"V\22\00", align 1
@.str.83.176 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@num_Elements = dso_local global i32 69, align 4
@Ep_name = dso_local global [19 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101.177, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0)], align 16
@.str.100 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.101.177 = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"f3\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"b3\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"avc\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"asp\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"af\00", align 1
@english_id = dso_local global i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.178, i32 0, i32 0), align 8
@.str.178 = private unnamed_addr constant [64 x i8] c"$Id: english.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@Rules = dso_local global [27 x [4 x i8*]*] [[4 x i8*]* getelementptr inbounds ([11 x [4 x i8*]], [11 x [4 x i8*]]* @punct_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([35 x [4 x i8*]], [35 x [4 x i8*]]* @A_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([7 x [4 x i8*]], [7 x [4 x i8*]]* @B_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([12 x [4 x i8*]], [12 x [4 x i8*]]* @C_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([11 x [4 x i8*]], [11 x [4 x i8*]]* @D_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([53 x [4 x i8*]], [53 x [4 x i8*]]* @E_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([3 x [4 x i8*]], [3 x [4 x i8*]]* @F_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([11 x [4 x i8*]], [11 x [4 x i8*]]* @G_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([7 x [4 x i8*]], [7 x [4 x i8*]]* @H_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([32 x [4 x i8*]], [32 x [4 x i8*]]* @I_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([2 x [4 x i8*]], [2 x [4 x i8*]]* @J_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([3 x [4 x i8*]], [3 x [4 x i8*]]* @K_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([6 x [4 x i8*]], [6 x [4 x i8*]]* @L_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([4 x [4 x i8*]], [4 x [4 x i8*]]* @M_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([10 x [4 x i8*]], [10 x [4 x i8*]]* @N_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([49 x [4 x i8*]], [49 x [4 x i8*]]* @O_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([6 x [4 x i8*]], [6 x [4 x i8*]]* @P_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([4 x [4 x i8*]], [4 x [4 x i8*]]* @Q_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([3 x [4 x i8*]], [3 x [4 x i8*]]* @R_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([24 x [4 x i8*]], [24 x [4 x i8*]]* @S_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([27 x [4 x i8*]], [27 x [4 x i8*]]* @T_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([36 x [4 x i8*]], [36 x [4 x i8*]]* @U_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([3 x [4 x i8*]], [3 x [4 x i8*]]* @V_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([13 x [4 x i8*]], [13 x [4 x i8*]]* @W_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([2 x [4 x i8*]], [2 x [4 x i8*]]* @X_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([12 x [4 x i8*]], [12 x [4 x i8*]]* @Y_rules, i32 0, i32 0), [4 x i8*]* getelementptr inbounds ([2 x [4 x i8*]], [2 x [4 x i8*]]* @Z_rules, i32 0, i32 0)], align 16
@punct_rules = internal global [11 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.292, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.292, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.293, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.198, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.294, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.199, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.294, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.294, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.201, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.295, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.292, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.198, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.292, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.296, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.292, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.297, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.292, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@A_rules = internal global [35 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.256, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.257, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.258, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.259, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19.260, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.259, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20.218, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22.261, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23.262, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.185, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.256, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25.263, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27.264, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28.265, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29.266, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.219, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32.267, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33.268, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34.269, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35.207, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36.270, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37.271, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38.272, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40.273, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41.183, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.274, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43.275, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.219, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44.203, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.219, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45.276, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19.260, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45.276, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46.277, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.259, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.258, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.259, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.259, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.258, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48.278, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20.218, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49.279, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.219, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50.280, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.219, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51.281, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34.269, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35.207, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52.282, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53.283, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54.284, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55.285, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34.269, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56.286, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57.287, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58.288, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57.287, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59.289, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60.290, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61.206, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62.291, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63.184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.219, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.274, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@B_rules = internal global [7 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64.244, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63.184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65.245, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66.246, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67.247, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68.248, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69.249, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70.250, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71.251, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72.252, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73.253, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74.254, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75.255, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@C_rules = internal global [12 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77.202, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78.236, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76.189, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77.202, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76.189, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79.194, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80.237, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81.238, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82.239, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81.238, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81.238, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81.238, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85.205, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61.206, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87.241, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77.202, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90.243, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85.205, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77.202, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@D_rules = internal global [11 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91.220, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92.221, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93.222, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95.211, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96.223, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97.197, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98.224, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63.184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99.225, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100.226, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101.227, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102.228, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103.229, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104.230, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105.231, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106.232, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107.233, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108.234, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109.235, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95.211, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@E_rules = internal global [53 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110.209, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95.211, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113.212, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114.213, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116.215, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44.203, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117.216, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118.217, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117.216, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20.218, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115.214, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76.189, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.219, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@F_rules = internal global [3 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@G_rules = internal global [11 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178.208, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61.206, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@H_rules = internal global [7 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.186, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.188, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@I_rules = internal global [32 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.199, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.203, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.206, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.207, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.209, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.211, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41.183, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.215, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.215, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63.184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@J_rules = internal global [2 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@K_rules = internal global [3 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77.202, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@L_rules = internal global [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35.207, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.233, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.234, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@M_rules = internal global [4 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.236, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.238, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.238, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@N_rules = internal global [10 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61.206, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.241, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.246, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.248, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.249, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@O_rules = internal global [49 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.251, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.253, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.256, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.257, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.263, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.265, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44.203, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.269, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.271, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.273, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.275, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.275, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.278, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.257, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.281, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.285, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.275, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.287, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.289, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.287, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.257, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.293, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.281, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.204, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.298, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.300, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.302, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85.205, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.306, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.306, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.306, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.309, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.311, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.313, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.315, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.303, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@P_rules = internal global [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.318, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.320, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.322, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@Q_rules = internal global [4 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.326, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.328, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77.202, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@R_rules = internal global [3 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63.184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.331, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.332, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@S_rules = internal global [24 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.336, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.338, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.339, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.340, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.342, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.344, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.346, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.347, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.198, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.199, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.353, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.356, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.201, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.358, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@T_rules = internal global [27 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.360, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.362, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.364, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.366, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.368, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.370, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.372, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.370, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.375, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.377, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.379, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.381, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.383, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.385, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.387, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.389, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.193, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.391, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79.194, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.347, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.395, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.396, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.196, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.398, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.399, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.362, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97.197, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@U_rules = internal global [36 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.401, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.402, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.403, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.404, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76.189, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.406, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.407, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.190, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.409, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.192, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.191, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.412, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.188, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@V_rules = internal global [3 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.414, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.415, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@W_rules = internal global [13 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.416, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.417, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.185, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83.186, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.418, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.185, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.418, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.419, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.420, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.421, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.422, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.424, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.425, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.426, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.427, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.428, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.429, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.430, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.431, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.187, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.417, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.432, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.332, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.412, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@X_rules = internal global [2 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.434, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@Y_rules = internal global [12 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.435, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.436, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.439, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.441, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.180, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @Nothing, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41.183, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63.184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@Z_rules = internal global [2 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.179, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Anything, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Silent, i32 0, i32 0)]], align 16
@Anything = internal global [1 x i8] zeroinitializer, align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.6.179 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@Silent = internal global [1 x i8] zeroinitializer, align 1
@.str.435 = private unnamed_addr constant [6 x i8] c"YOUNG\00", align 1
@.str.436 = private unnamed_addr constant [4 x i8] c"jVN\00", align 1
@Nothing = internal global [2 x i8] c" \00", align 1
@.str.437 = private unnamed_addr constant [4 x i8] c"YOU\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"ju\00", align 1
@.str.438 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.439 = private unnamed_addr constant [4 x i8] c"jes\00", align 1
@.str.440 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.441 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"#:^\00", align 1
@.str.111.180 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.200 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.26.181 = private unnamed_addr constant [3 x i8] c" :\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.8.182 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.41.183 = private unnamed_addr constant [5 x i8] c"^+:#\00", align 1
@.str.63.184 = private unnamed_addr constant [3 x i8] c"^#\00", align 1
@.str.433 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.434 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@.str.416 = private unnamed_addr constant [5 x i8] c"WERE\00", align 1
@.str.417 = private unnamed_addr constant [3 x i8] c"w3\00", align 1
@.str.24.185 = private unnamed_addr constant [3 x i8] c"WA\00", align 1
@.str.83.186 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.418 = private unnamed_addr constant [3 x i8] c"w0\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.420 = private unnamed_addr constant [5 x i8] c"hwer\00", align 1
@.str.421 = private unnamed_addr constant [5 x i8] c"WHAT\00", align 1
@.str.422 = private unnamed_addr constant [5 x i8] c"hw0t\00", align 1
@.str.423 = private unnamed_addr constant [5 x i8] c"WHOL\00", align 1
@.str.424 = private unnamed_addr constant [5 x i8] c"h@Ul\00", align 1
@.str.425 = private unnamed_addr constant [4 x i8] c"WHO\00", align 1
@.str.426 = private unnamed_addr constant [3 x i8] c"hu\00", align 1
@.str.427 = private unnamed_addr constant [3 x i8] c"WH\00", align 1
@.str.428 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.429 = private unnamed_addr constant [4 x i8] c"WAR\00", align 1
@.str.430 = private unnamed_addr constant [4 x i8] c"wOr\00", align 1
@.str.431 = private unnamed_addr constant [4 x i8] c"WOR\00", align 1
@.str.21.187 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.432 = private unnamed_addr constant [3 x i8] c"WR\00", align 1
@.str.332 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.412 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.413 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.414 = private unnamed_addr constant [4 x i8] c"vju\00", align 1
@.str.283 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.415 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.400 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@.str.401 = private unnamed_addr constant [4 x i8] c"jun\00", align 1
@.str.402 = private unnamed_addr constant [3 x i8] c"Vn\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"UPON\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"@pOn\00", align 1
@.str.405 = private unnamed_addr constant [3 x i8] c"UR\00", align 1
@.str.406 = private unnamed_addr constant [3 x i8] c"Ur\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.94.188 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.76.189 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"jUr\00", align 1
@.str.47.190 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.350 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.408 = private unnamed_addr constant [3 x i8] c"^ \00", align 1
@.str.409 = private unnamed_addr constant [3 x i8] c"^^\00", align 1
@.str.410 = private unnamed_addr constant [3 x i8] c"UY\00", align 1
@.str.411 = private unnamed_addr constant [3 x i8] c" G\00", align 1
@.str.3.191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.89.192 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.393 = private unnamed_addr constant [3 x i8] c"#N\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.359 = private unnamed_addr constant [4 x i8] c"THE\00", align 1
@.str.360 = private unnamed_addr constant [3 x i8] c"D@\00", align 1
@.str.361 = private unnamed_addr constant [3 x i8] c"TO\00", align 1
@.str.362 = private unnamed_addr constant [3 x i8] c"tu\00", align 1
@.str.363 = private unnamed_addr constant [5 x i8] c"THAT\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"D&t\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"THIS\00", align 1
@.str.366 = private unnamed_addr constant [4 x i8] c"DIs\00", align 1
@.str.367 = private unnamed_addr constant [5 x i8] c"THEY\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"DeI\00", align 1
@.str.369 = private unnamed_addr constant [6 x i8] c"THERE\00", align 1
@.str.370 = private unnamed_addr constant [4 x i8] c"Der\00", align 1
@.str.371 = private unnamed_addr constant [5 x i8] c"THER\00", align 1
@.str.372 = private unnamed_addr constant [3 x i8] c"D3\00", align 1
@.str.373 = private unnamed_addr constant [6 x i8] c"THEIR\00", align 1
@.str.374 = private unnamed_addr constant [5 x i8] c"THAN\00", align 1
@.str.375 = private unnamed_addr constant [4 x i8] c"D&n\00", align 1
@.str.376 = private unnamed_addr constant [5 x i8] c"THEM\00", align 1
@.str.377 = private unnamed_addr constant [4 x i8] c"Dem\00", align 1
@.str.378 = private unnamed_addr constant [6 x i8] c"THESE\00", align 1
@.str.379 = private unnamed_addr constant [4 x i8] c"Diz\00", align 1
@.str.380 = private unnamed_addr constant [5 x i8] c"THEN\00", align 1
@.str.381 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@.str.382 = private unnamed_addr constant [8 x i8] c"THROUGH\00", align 1
@.str.383 = private unnamed_addr constant [4 x i8] c"Tru\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"THOSE\00", align 1
@.str.385 = private unnamed_addr constant [5 x i8] c"D@Uz\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"THOUGH\00", align 1
@.str.387 = private unnamed_addr constant [4 x i8] c"D@U\00", align 1
@.str.388 = private unnamed_addr constant [5 x i8] c"THUS\00", align 1
@.str.389 = private unnamed_addr constant [4 x i8] c"DVs\00", align 1
@.str.31.193 = private unnamed_addr constant [3 x i8] c"#:\00", align 1
@.str.390 = private unnamed_addr constant [4 x i8] c"TED\00", align 1
@.str.391 = private unnamed_addr constant [4 x i8] c"tId\00", align 1
@.str.392 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@.str.79.194 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.18.195 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.13.196 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.394 = private unnamed_addr constant [5 x i8] c"TIEN\00", align 1
@.str.347 = private unnamed_addr constant [4 x i8] c"S@n\00", align 1
@.str.395 = private unnamed_addr constant [4 x i8] c"TUR\00", align 1
@.str.396 = private unnamed_addr constant [4 x i8] c"tS3\00", align 1
@.str.397 = private unnamed_addr constant [3 x i8] c"TU\00", align 1
@.str.398 = private unnamed_addr constant [4 x i8] c"tSu\00", align 1
@.str.399 = private unnamed_addr constant [4 x i8] c"TWO\00", align 1
@.str.97.197 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"SION\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"Z@n\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"SOME\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c"sVm\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"SUR\00", align 1
@.str.338 = private unnamed_addr constant [3 x i8] c"Z3\00", align 1
@.str.339 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"SU\00", align 1
@.str.340 = private unnamed_addr constant [3 x i8] c"Zu\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"SSU\00", align 1
@.str.342 = private unnamed_addr constant [3 x i8] c"Su\00", align 1
@.str.343 = private unnamed_addr constant [4 x i8] c"SED\00", align 1
@.str.344 = private unnamed_addr constant [3 x i8] c"zd\00", align 1
@.str.345 = private unnamed_addr constant [5 x i8] c"SAID\00", align 1
@.str.346 = private unnamed_addr constant [4 x i8] c"sed\00", align 1
@.str.4.198 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7.199 = private unnamed_addr constant [5 x i8] c"#:.E\00", align 1
@.str.348 = private unnamed_addr constant [6 x i8] c"#:^##\00", align 1
@.str.349 = private unnamed_addr constant [5 x i8] c"#:^#\00", align 1
@.str.86.200 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.351 = private unnamed_addr constant [4 x i8] c" :#\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"SCH\00", align 1
@.str.353 = private unnamed_addr constant [3 x i8] c"sk\00", align 1
@.str.354 = private unnamed_addr constant [3 x i8] c"C+\00", align 1
@.str.355 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.356 = private unnamed_addr constant [3 x i8] c"zm\00", align 1
@.str.357 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.9.201 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.358 = private unnamed_addr constant [4 x i8] c"z@n\00", align 1
@.str.330 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.331 = private unnamed_addr constant [3 x i8] c"ri\00", align 1
@.str.325 = private unnamed_addr constant [5 x i8] c"QUAR\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"kwOr\00", align 1
@.str.327 = private unnamed_addr constant [3 x i8] c"QU\00", align 1
@.str.328 = private unnamed_addr constant [3 x i8] c"kw\00", align 1
@.str.329 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.77.202 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.316 = private unnamed_addr constant [3 x i8] c"PH\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.317 = private unnamed_addr constant [5 x i8] c"PEOP\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"pip\00", align 1
@.str.319 = private unnamed_addr constant [4 x i8] c"POW\00", align 1
@.str.320 = private unnamed_addr constant [4 x i8] c"paU\00", align 1
@.str.321 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"pUt\00", align 1
@.str.323 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.324 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"@v\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"OROUGH\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"3@U\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"ORS\00", align 1
@.str.256 = private unnamed_addr constant [3 x i8] c"3z\00", align 1
@.str.257 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"wVn\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c"OW\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"OVER\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"@Uv3\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"Vv\00", align 1
@.str.44.203 = private unnamed_addr constant [3 x i8] c"^%\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"^EN\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"^I#\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"OL\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"@Ul\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"OUGHT\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c"Ot\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"OUGH\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"Vf\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"S#\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"OUS\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"OUR\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"OULD\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"Ud\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"^L\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"OUP\00", align 1
@.str.285 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"OY\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"OING\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"@UIN\00", align 1
@.str.290 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"OOK\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"Uk\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c"OOD\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.39.204 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"ONLY\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"@Unli\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"ONCE\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"wVns\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"ON'T\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"@Unt\00", align 1
@.str.85.205 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.303 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.240 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c" :^\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.306 = private unnamed_addr constant [3 x i8] c"@n\00", align 1
@.str.307 = private unnamed_addr constant [3 x i8] c"#^\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"ST \00", align 1
@.str.309 = private unnamed_addr constant [3 x i8] c"Of\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"VD3\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"OSS\00", align 1
@.str.313 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"OM\00", align 1
@.str.315 = private unnamed_addr constant [3 x i8] c"Vm\00", align 1
@.str.61.206 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.241 = private unnamed_addr constant [4 x i8] c"ndZ\00", align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"Ng\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"NGL\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"Ng@l\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"NK\00", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"Nk\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"naU\00", align 1
@.str.249 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"MOV\00", align 1
@.str.236 = private unnamed_addr constant [4 x i8] c"muv\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.239 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.229 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"l@U\00", align 1
@.str.35.207 = private unnamed_addr constant [3 x i8] c"@l\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"LEAD\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@.str.234 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"IAIN\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"I@n\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"ING\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"aIn\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"IER\00", align 1
@.str.203 = private unnamed_addr constant [3 x i8] c"i3\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"#:R\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"IED\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"aId\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"IEN\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"ien\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"aIe\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"IR\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"aIr\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"IZ\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"aIz\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"D%\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"+^\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"^+\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"T%\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"IGH\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"ILD\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"aIld\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"IGN\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"IQUE\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"ik\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"HAV\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"h&v\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"HERE\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"hir\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"HOUR\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"aU3\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"HOW\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"haU\00", align 1
@.str.194 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"GIV\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"gIv\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"I^\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"GGES\00", align 1
@.str.178.208 = private unnamed_addr constant [6 x i8] c"gdZes\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"GG\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c" B#\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"GREAT\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"greIt\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"FUL\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"fUl\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.110.209 = private unnamed_addr constant [4 x i8] c"':^\00", align 1
@.str.112.210 = private unnamed_addr constant [3 x i8] c"ED\00", align 1
@.str.95.211 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.113.212 = private unnamed_addr constant [3 x i8] c"D \00", align 1
@.str.114.213 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.115.214 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.116.215 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.117.216 = private unnamed_addr constant [4 x i8] c"ERI\00", align 1
@.str.118.217 = private unnamed_addr constant [4 x i8] c"iri\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"erI\00", align 1
@.str.20.218 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"EVEN\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"iven\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"EW\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"#:S\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"ES\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"Iz\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"#:C\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"#:G\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"#:Z\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"#:X\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"#:J\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"#:CH\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"#:SH\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"S \00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"ELY\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"EMENT\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"ment\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"EFUL\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"EARN\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"3n\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"EAR\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"EAD\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"ed\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"EA\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"i@\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"EIGH\00", align 1
@.str.30.219 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"EI\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"EYE\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"EY\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@.str.91.220 = private unnamed_addr constant [4 x i8] c"DED\00", align 1
@.str.92.221 = private unnamed_addr constant [4 x i8] c"dId\00", align 1
@.str.93.222 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.96.223 = private unnamed_addr constant [5 x i8] c"#:^E\00", align 1
@.str.98.224 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.99.225 = private unnamed_addr constant [3 x i8] c"dI\00", align 1
@.str.100.226 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.101.227 = private unnamed_addr constant [3 x i8] c"du\00", align 1
@.str.102.228 = private unnamed_addr constant [5 x i8] c"DOES\00", align 1
@.str.103.229 = private unnamed_addr constant [4 x i8] c"dVz\00", align 1
@.str.104.230 = private unnamed_addr constant [6 x i8] c"DOING\00", align 1
@.str.105.231 = private unnamed_addr constant [5 x i8] c"duIN\00", align 1
@.str.106.232 = private unnamed_addr constant [4 x i8] c"DOW\00", align 1
@.str.107.233 = private unnamed_addr constant [4 x i8] c"daU\00", align 1
@.str.108.234 = private unnamed_addr constant [3 x i8] c"DU\00", align 1
@.str.109.235 = private unnamed_addr constant [4 x i8] c"dZu\00", align 1
@.str.78.236 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.80.237 = private unnamed_addr constant [3 x i8] c" S\00", align 1
@.str.81.238 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.82.239 = private unnamed_addr constant [4 x i8] c"saI\00", align 1
@.str.84.240 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.87.241 = private unnamed_addr constant [3 x i8] c"CK\00", align 1
@.str.88.242 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@.str.90.243 = private unnamed_addr constant [4 x i8] c"kVm\00", align 1
@.str.64.244 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.65.245 = private unnamed_addr constant [3 x i8] c"bI\00", align 1
@.str.66.246 = private unnamed_addr constant [6 x i8] c"BEING\00", align 1
@.str.67.247 = private unnamed_addr constant [5 x i8] c"biIN\00", align 1
@.str.68.248 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.69.249 = private unnamed_addr constant [5 x i8] c"b@UT\00", align 1
@.str.70.250 = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str.71.251 = private unnamed_addr constant [4 x i8] c"bIz\00", align 1
@.str.72.252 = private unnamed_addr constant [5 x i8] c"BUIL\00", align 1
@.str.73.253 = private unnamed_addr constant [4 x i8] c"bIl\00", align 1
@.str.74.254 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.75.255 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.14.256 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.15.257 = private unnamed_addr constant [4 x i8] c"ARE\00", align 1
@.str.16.258 = private unnamed_addr constant [3 x i8] c"0r\00", align 1
@.str.17.259 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.19.260 = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@.str.22.261 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.23.262 = private unnamed_addr constant [4 x i8] c"eIs\00", align 1
@.str.25.263 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.27.264 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.28.265 = private unnamed_addr constant [4 x i8] c"eni\00", align 1
@.str.29.266 = private unnamed_addr constant [4 x i8] c"^+#\00", align 1
@.str.32.267 = private unnamed_addr constant [5 x i8] c"ALLY\00", align 1
@.str.33.268 = private unnamed_addr constant [4 x i8] c"@li\00", align 1
@.str.34.269 = private unnamed_addr constant [3 x i8] c"AL\00", align 1
@.str.36.270 = private unnamed_addr constant [6 x i8] c"AGAIN\00", align 1
@.str.37.271 = private unnamed_addr constant [5 x i8] c"@gen\00", align 1
@.str.38.272 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str.40.273 = private unnamed_addr constant [4 x i8] c"IdZ\00", align 1
@.str.42.274 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.43.275 = private unnamed_addr constant [4 x i8] c"^+ \00", align 1
@.str.45.276 = private unnamed_addr constant [4 x i8] c"ARR\00", align 1
@.str.46.277 = private unnamed_addr constant [3 x i8] c"&r\00", align 1
@.str.48.278 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.49.279 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.50.280 = private unnamed_addr constant [3 x i8] c"AY\00", align 1
@.str.51.281 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.52.282 = private unnamed_addr constant [4 x i8] c"ALS\00", align 1
@.str.53.283 = private unnamed_addr constant [4 x i8] c"@lz\00", align 1
@.str.54.284 = private unnamed_addr constant [4 x i8] c"ALK\00", align 1
@.str.55.285 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@.str.56.286 = private unnamed_addr constant [3 x i8] c"Ol\00", align 1
@.str.57.287 = private unnamed_addr constant [5 x i8] c"ABLE\00", align 1
@.str.58.288 = private unnamed_addr constant [6 x i8] c"eIb@l\00", align 1
@.str.59.289 = private unnamed_addr constant [5 x i8] c"@b@l\00", align 1
@.str.60.290 = private unnamed_addr constant [4 x i8] c"ANG\00", align 1
@.str.62.291 = private unnamed_addr constant [6 x i8] c"eIndZ\00", align 1
@.str.1.292 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2.293 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5.294 = private unnamed_addr constant [3 x i8] c"'S\00", align 1
@.str.10.295 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11.296 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.12.297 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@getarg_id = dso_local global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.442, i32 0, i32 0), align 8
@.str.442 = private unnamed_addr constant [63 x i8] c"$Id: getarg.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@help_only = dso_local global i32 0, align 4
@.str.1.447 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.2.448 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.3.449 = private unnamed_addr constant [12 x i8] c" -%s <%s> [\00", align 1
@.str.4.450 = private unnamed_addr constant [6 x i8] c"]\09%s\0A\00", align 1
@.str.6.451 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5.452 = private unnamed_addr constant [23 x i8] c" -%s <string> [%s]\09%s\0A\00", align 1
@.str.8.453 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9.454 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.7.455 = private unnamed_addr constant [18 x i8] c" [+|-]%s [%s]\09%s\0A\00", align 1
@.str.10.456 = private unnamed_addr constant [27 x i8] c"%s : %s invalid after -%s\0A\00", align 1
@.str.11.457 = private unnamed_addr constant [28 x i8] c"%s : no argument after -%s\0A\00", align 1
@.str.12.458 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@holmes_id = dso_local global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.459, i32 0, i32 0), align 8
@.str.459 = private unnamed_addr constant [63 x i8] c"$Id: holmes.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@speed = dso_local global i32 1, align 4
@frac = dso_local global double 1.000000e+00, align 8
@par_file = common dso_local global %struct._IO_FILE* null, align 8
@jsru_file = common dso_local global %struct._IO_FILE* null, align 8
@.str.1.460 = private unnamed_addr constant [11 x i8] c"# %s < %s\0A\00", align 1
@.str.2.461 = private unnamed_addr constant [12 x i8] c"# %s >= %s\0A\00", align 1
@.str.3.462 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.4.463 = private unnamed_addr constant [6 x i8] c"%c%6s\00", align 1
@.str.5.464 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6.465 = private unnamed_addr constant [8 x i8] c"%c%6.4g\00", align 1
@.str.7.466 = private unnamed_addr constant [6 x i8] c"%c%6d\00", align 1
@.str.8.467 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9.468 = private unnamed_addr constant [3 x i8] c"f0\00", align 1
@.str.10.469 = private unnamed_addr constant [7 x i8] c" %6.4g\00", align 1
@.str.11.470 = private unnamed_addr constant [7 x i8] c"Holmes\00", align 1
@.str.12.471 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.13.472 = private unnamed_addr constant [24 x i8] c"Parameter file for plot\00", align 1
@.str.14.473 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.15.474 = private unnamed_addr constant [32 x i8] c"Data for alternate synth (JSRU)\00", align 1
@.str.16.475 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17.476 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.18.477 = private unnamed_addr constant [24 x i8] c"Speed (1.0 is 'normal')\00", align 1
@.str.19.478 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.20.479 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.21.480 = private unnamed_addr constant [28 x i8] c"Parameter filter 'fraction'\00", align 1
@.str.22.481 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_u2l = dso_local global [256 x i16] [i16 -32256, i16 -31228, i16 -30200, i16 -29172, i16 -28143, i16 -27115, i16 -26087, i16 -25059, i16 -24031, i16 -23002, i16 -21974, i16 -20946, i16 -19918, i16 -18889, i16 -17861, i16 -16833, i16 -16062, i16 -15548, i16 -15033, i16 -14519, i16 -14005, i16 -13491, i16 -12977, i16 -12463, i16 -11949, i16 -11435, i16 -10920, i16 -10406, i16 -9892, i16 -9378, i16 -8864, i16 -8350, i16 -7964, i16 -7707, i16 -7450, i16 -7193, i16 -6936, i16 -6679, i16 -6422, i16 -6165, i16 -5908, i16 -5651, i16 -5394, i16 -5137, i16 -4880, i16 -4623, i16 -4365, i16 -4108, i16 -3916, i16 -3787, i16 -3659, i16 -3530, i16 -3402, i16 -3273, i16 -3144, i16 -3016, i16 -2887, i16 -2759, i16 -2630, i16 -2502, i16 -2373, i16 -2245, i16 -2116, i16 -1988, i16 -1891, i16 -1827, i16 -1763, i16 -1698, i16 -1634, i16 -1570, i16 -1506, i16 -1441, i16 -1377, i16 -1313, i16 -1249, i16 -1184, i16 -1120, i16 -1056, i16 -992, i16 -927, i16 -879, i16 -847, i16 -815, i16 -783, i16 -751, i16 -718, i16 -686, i16 -654, i16 -622, i16 -590, i16 -558, i16 -526, i16 -494, i16 -461, i16 -429, i16 -397, i16 -373, i16 -357, i16 -341, i16 -325, i16 -309, i16 -293, i16 -277, i16 -261, i16 -245, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32256, i16 31228, i16 30200, i16 29172, i16 28143, i16 27115, i16 26087, i16 25059, i16 24031, i16 23002, i16 21974, i16 20946, i16 19918, i16 18889, i16 17861, i16 16833, i16 16062, i16 15548, i16 15033, i16 14519, i16 14005, i16 13491, i16 12977, i16 12463, i16 11949, i16 11435, i16 10920, i16 10406, i16 9892, i16 9378, i16 8864, i16 8350, i16 7964, i16 7707, i16 7450, i16 7193, i16 6936, i16 6679, i16 6422, i16 6165, i16 5908, i16 5651, i16 5394, i16 5137, i16 4880, i16 4623, i16 4365, i16 4108, i16 3916, i16 3787, i16 3659, i16 3530, i16 3402, i16 3273, i16 3144, i16 3016, i16 2887, i16 2759, i16 2630, i16 2502, i16 2373, i16 2245, i16 2116, i16 1988, i16 1891, i16 1827, i16 1763, i16 1698, i16 1634, i16 1570, i16 1506, i16 1441, i16 1377, i16 1313, i16 1249, i16 1184, i16 1120, i16 1056, i16 992, i16 927, i16 879, i16 847, i16 815, i16 783, i16 751, i16 718, i16 686, i16 654, i16 622, i16 590, i16 558, i16 526, i16 494, i16 461, i16 429, i16 397, i16 373, i16 357, i16 341, i16 325, i16 309, i16 293, i16 277, i16 261, i16 245, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@_l2u = dso_local global i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @_l2u_, i32 0, i64 4096), align 8
@_l2u_ = internal global [8192 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F                                 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22################################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'''''''''''''''''''''''''''''''''(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))********************************++++++++++++++++++++++++++++++++,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--------------------------------................................/////////////////////////////////0000000000000000111111111111111122222222222222223333333333333333444444444444444455555555555555556666666666666666777777777777777788888888888888889999999999999999::::::::::::::::;;;;;;;;;;;;;;;;<<<<<<<<<<<<<<<<=================>>>>>>>>>>>>>>>>????????????????@@@@@@@@AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGGHHHHHHHHIIIIIIIIJJJJJJJJKKKKKKKKLLLLLLLLMMMMMMMMNNNNNNNNOOOOOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ[[[[\\\\\\\\]]]]^^^^____``aabbccddeeffgghhhiijjkkllmmnnoopqrstuvwxyz{|}~\FF\FE\FD\FC\FB\FA\F9\F8\F7\F6\F5\F4\F3\F2\F1\F0\EF\EF\EE\EE\ED\ED\EC\EC\EB\EB\EA\EA\E9\E9\E8\E8\E7\E7\E6\E6\E5\E5\E4\E4\E3\E3\E2\E2\E1\E1\E0\E0\DF\DF\DF\DF\DE\DE\DE\DE\DD\DD\DD\DD\DC\DC\DC\DC\DB\DB\DB\DB\DA\DA\DA\DA\D9\D9\D9\D9\D8\D8\D8\D8\D7\D7\D7\D7\D6\D6\D6\D6\D5\D5\D5\D5\D4\D4\D4\D4\D3\D3\D3\D3\D2\D2\D2\D2\D1\D1\D1\D1\D0\D0\D0\D0\CF\CF\CF\CF\CF\CF\CF\CF\CE\CE\CE\CE\CE\CE\CE\CE\CD\CD\CD\CD\CD\CD\CD\CD\CC\CC\CC\CC\CC\CC\CC\CC\CB\CB\CB\CB\CB\CB\CB\CB\CA\CA\CA\CA\CA\CA\CA\CA\C9\C9\C9\C9\C9\C9\C9\C9\C8\C8\C8\C8\C8\C8\C8\C8\C7\C7\C7\C7\C7\C7\C7\C7\C6\C6\C6\C6\C6\C6\C6\C6\C5\C5\C5\C5\C5\C5\C5\C5\C4\C4\C4\C4\C4\C4\C4\C4\C3\C3\C3\C3\C3\C3\C3\C3\C3\C2\C2\C2\C2\C2\C2\C2\C2\C1\C1\C1\C1\C1\C1\C1\C1\C0\C0\C0\C0\C0\C0\C0\C0\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", align 16
@samp_rate = dso_local global i64 8000, align 8
@dev_file = dso_local global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.486, i32 0, i32 0), align 8
@.str.486 = private unnamed_addr constant [11 x i8] c"/dev/sbdsp\00", align 1
@prog = dso_local global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.487, i32 0, i32 0), align 8
@.str.1.487 = private unnamed_addr constant [6 x i8] c"hplay\00", align 1
@.str.2.488 = private unnamed_addr constant [12 x i8] c"linux Audio\00", align 1
@.str.3.489 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4.490 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5.491 = private unnamed_addr constant [12 x i8] c"Sample rate\00", align 1
@.str.6.492 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7.493 = private unnamed_addr constant [13 x i8] c"Audio enable\00", align 1
@dev_fd = internal global i32 -1, align 4
@.str.8.494 = private unnamed_addr constant [24 x i8] c"Actual sound rate: %ld\0A\00", align 1
@linear_fd.495 = internal global i32 -1, align 4
@.str.9.496 = private unnamed_addr constant [42 x i8] c"Could not allocate memory for conversion\0A\00", align 1
@.str.10.497 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@nsynth_id = dso_local global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.498, i32 0, i32 0), align 8
@.str.498 = private unnamed_addr constant [63 x i8] c"$Id: nsynth.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@time_count = dso_local global i32 0, align 4
@par_name = dso_local global [40 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.499, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.500, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.501, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.502, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.503, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.504, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.505, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.506, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.507, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.508, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11.509, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12.510, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.511, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.512, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15.513, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16.514, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17.515, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18.516, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19.517, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20.518, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21.519, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22.520, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23.521, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24.522, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25.523, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26.524, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27.525, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28.526, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29.527, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.528, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.529, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32.530, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33.531, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34.532, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35.533, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36.534, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37.535, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38.536, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39.537, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40.538, i32 0, i32 0)], align 16
@.str.1.499 = private unnamed_addr constant [7 x i8] c"F0hz10\00", align 1
@.str.2.500 = private unnamed_addr constant [5 x i8] c"AVdb\00", align 1
@.str.3.501 = private unnamed_addr constant [5 x i8] c"F1hz\00", align 1
@.str.4.502 = private unnamed_addr constant [5 x i8] c"B1hz\00", align 1
@.str.5.503 = private unnamed_addr constant [5 x i8] c"F2hz\00", align 1
@.str.6.504 = private unnamed_addr constant [5 x i8] c"B2hz\00", align 1
@.str.7.505 = private unnamed_addr constant [5 x i8] c"F3hz\00", align 1
@.str.8.506 = private unnamed_addr constant [5 x i8] c"B3hz\00", align 1
@.str.9.507 = private unnamed_addr constant [5 x i8] c"F4hz\00", align 1
@.str.10.508 = private unnamed_addr constant [5 x i8] c"B4hz\00", align 1
@.str.11.509 = private unnamed_addr constant [5 x i8] c"F5hz\00", align 1
@.str.12.510 = private unnamed_addr constant [5 x i8] c"B5hz\00", align 1
@.str.13.511 = private unnamed_addr constant [5 x i8] c"F6hz\00", align 1
@.str.14.512 = private unnamed_addr constant [5 x i8] c"B6hz\00", align 1
@.str.15.513 = private unnamed_addr constant [6 x i8] c"FNZhz\00", align 1
@.str.16.514 = private unnamed_addr constant [6 x i8] c"BNZhz\00", align 1
@.str.17.515 = private unnamed_addr constant [6 x i8] c"FNPhz\00", align 1
@.str.18.516 = private unnamed_addr constant [6 x i8] c"BNPhz\00", align 1
@.str.19.517 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.20.518 = private unnamed_addr constant [6 x i8] c"Kopen\00", align 1
@.str.21.519 = private unnamed_addr constant [6 x i8] c"Aturb\00", align 1
@.str.22.520 = private unnamed_addr constant [6 x i8] c"TLTdb\00", align 1
@.str.23.521 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.24.522 = private unnamed_addr constant [6 x i8] c"Kskew\00", align 1
@.str.25.523 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.26.524 = private unnamed_addr constant [6 x i8] c"B1phz\00", align 1
@.str.27.525 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.28.526 = private unnamed_addr constant [6 x i8] c"B2phz\00", align 1
@.str.29.527 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.30.528 = private unnamed_addr constant [6 x i8] c"B3phz\00", align 1
@.str.31.529 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.32.530 = private unnamed_addr constant [6 x i8] c"B4phz\00", align 1
@.str.33.531 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.34.532 = private unnamed_addr constant [6 x i8] c"B5phz\00", align 1
@.str.35.533 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str.36.534 = private unnamed_addr constant [6 x i8] c"B6phz\00", align 1
@.str.37.535 = private unnamed_addr constant [4 x i8] c"ANP\00", align 1
@.str.38.536 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.39.537 = private unnamed_addr constant [6 x i8] c"AVpdb\00", align 1
@.str.40.538 = private unnamed_addr constant [6 x i8] c"Gain0\00", align 1
@show_parms.names = internal global i32 0, align 4
@.str.41.539 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.42.540 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.43.541 = private unnamed_addr constant [5 x i8] c"%*d \00", align 1
@parwave.seed = internal global i64 5, align 8
@nlast = internal global float 0.000000e+00, align 4
@nper = internal global i64 0, align 8
@nmod = internal global i64 0, align 8
@amp_frica = internal global float 0.000000e+00, align 4
@T0 = internal global i64 0, align 8
@rlp = internal global %struct.resonator_t { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49.563, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@onemd = internal global float 0.000000e+00, align 4
@vlast = internal global float 0.000000e+00, align 4
@decay = internal global float 0.000000e+00, align 4
@nopen = internal global i64 0, align 8
@amp_breth = internal global float 0.000000e+00, align 4
@amp_voice = internal global float 0.000000e+00, align 4
@amp_aspir = internal global float 0.000000e+00, align 4
@rnz = internal global %struct.resonator_t { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50.562, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@rnpc = internal global %struct.resonator_t { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51.561, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r8c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52.560, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r7c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53.559, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r6c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54.558, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r5c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55.557, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r4c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56.556, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r3c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57.555, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r2c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58.554, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r1c = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59.553, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r1p = internal global %struct.resonator_t { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60.552, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@glotlast = internal global float 0.000000e+00, align 4
@r6p = internal global %struct.resonator_t { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61.551, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r5p = internal global %struct.resonator_t { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62.550, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r4p = internal global %struct.resonator_t { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63.549, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r3p = internal global %struct.resonator_t { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64.548, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@r2p = internal global %struct.resonator_t { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65.547, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@amp_bypas = internal global float 0.000000e+00, align 4
@rout = internal global %struct.resonator_t { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66.546, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@warnsw = internal global i32 0, align 4
@.str.67.544 = private unnamed_addr constant [17 x i8] c"\0A* * * WARNING: \00", align 1
@.str.68.545 = private unnamed_addr constant [59 x i8] c" Signal at output of synthesizer (+%3.1f dB) exceeds 0 dB\0A\00", align 1
@.str.66.546 = private unnamed_addr constant [16 x i8] c"output low-pass\00", align 1
@.str.65.547 = private unnamed_addr constant [21 x i8] c"parallel 2nd formant\00", align 1
@.str.64.548 = private unnamed_addr constant [21 x i8] c"parallel 3rd formant\00", align 1
@.str.63.549 = private unnamed_addr constant [21 x i8] c"parallel 4th formant\00", align 1
@.str.62.550 = private unnamed_addr constant [21 x i8] c"parallel 5th formant\00", align 1
@.str.61.551 = private unnamed_addr constant [21 x i8] c"parallel 6th formant\00", align 1
@.str.60.552 = private unnamed_addr constant [21 x i8] c"parallel 1st formant\00", align 1
@.str.59.553 = private unnamed_addr constant [20 x i8] c"cascade 1st formant\00", align 1
@.str.58.554 = private unnamed_addr constant [20 x i8] c"cascade 2nd formant\00", align 1
@.str.57.555 = private unnamed_addr constant [20 x i8] c"cascade 3rd formant\00", align 1
@.str.56.556 = private unnamed_addr constant [20 x i8] c"cascade 4th formant\00", align 1
@.str.55.557 = private unnamed_addr constant [20 x i8] c"cascade 5th formant\00", align 1
@.str.54.558 = private unnamed_addr constant [20 x i8] c"cascade 6th formant\00", align 1
@.str.53.559 = private unnamed_addr constant [20 x i8] c"cascade 7th formant\00", align 1
@.str.52.560 = private unnamed_addr constant [20 x i8] c"cascade 8th formant\00", align 1
@.str.51.561 = private unnamed_addr constant [19 x i8] c"cascade nasal pole\00", align 1
@.str.50.562 = private unnamed_addr constant [19 x i8] c"cascade nasal zero\00", align 1
@.str.49.563 = private unnamed_addr constant [25 x i8] c"downsamp low-pass filter\00", align 1
@F0hz10 = internal global i64 0, align 8
@AVdb = internal global i64 0, align 8
@.str.45.564 = private unnamed_addr constant [58 x i8] c"Warning: glottal open period cannot exceed T0, truncated\0A\00", align 1
@.str.46.565 = private unnamed_addr constant [53 x i8] c"Warning: minimum glottal open period is 10 samples.\0A\00", align 1
@.str.47.566 = private unnamed_addr constant [24 x i8] c"truncated, nopen = %ld\0A\00", align 1
@natglot = internal constant [224 x i16] [i16 1200, i16 1142, i16 1088, i16 1038, i16 991, i16 948, i16 907, i16 869, i16 833, i16 799, i16 768, i16 738, i16 710, i16 683, i16 658, i16 634, i16 612, i16 590, i16 570, i16 551, i16 533, i16 515, i16 499, i16 483, i16 468, i16 454, i16 440, i16 427, i16 415, i16 403, i16 391, i16 380, i16 370, i16 360, i16 350, i16 341, i16 332, i16 323, i16 315, i16 307, i16 300, i16 292, i16 285, i16 278, i16 272, i16 265, i16 259, i16 253, i16 247, i16 242, i16 237, i16 231, i16 226, i16 221, i16 217, i16 212, i16 208, i16 204, i16 199, i16 195, i16 192, i16 188, i16 184, i16 180, i16 177, i16 174, i16 170, i16 167, i16 164, i16 161, i16 158, i16 155, i16 153, i16 150, i16 147, i16 145, i16 142, i16 140, i16 137, i16 135, i16 133, i16 131, i16 128, i16 126, i16 124, i16 122, i16 120, i16 119, i16 117, i16 115, i16 113, i16 111, i16 110, i16 108, i16 106, i16 105, i16 103, i16 102, i16 100, i16 99, i16 97, i16 96, i16 95, i16 93, i16 92, i16 91, i16 90, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 80, i16 79, i16 78, i16 77, i16 76, i16 75, i16 75, i16 74, i16 73, i16 72, i16 71, i16 70, i16 69, i16 68, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 61, i16 60, i16 59, i16 59, i16 58, i16 57, i16 57, i16 56, i16 56, i16 55, i16 55, i16 54, i16 54, i16 53, i16 53, i16 52, i16 52, i16 51, i16 51, i16 50, i16 50, i16 49, i16 49, i16 48, i16 48, i16 47, i16 47, i16 46, i16 46, i16 45, i16 45, i16 44, i16 44, i16 43, i16 43, i16 42, i16 42, i16 41, i16 41, i16 41, i16 41, i16 40, i16 40, i16 39, i16 39, i16 38, i16 38, i16 38, i16 38, i16 37, i16 37, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35, i16 35, i16 35, i16 34, i16 34, i16 33, i16 33, i16 33, i16 33, i16 32, i16 32, i16 32, i16 32, i16 31, i16 31, i16 31, i16 31, i16 30, i16 30, i16 30, i16 30, i16 29, i16 29, i16 29, i16 29, i16 28, i16 28, i16 28, i16 28, i16 27, i16 27], align 16
@natglot_b = internal global float 0.000000e+00, align 4
@natglot_a = internal global float 0.000000e+00, align 4
@rgl = internal global %struct.resonator_t { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70.568, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@Kskew = internal global i64 0, align 8
@.str.48.567 = private unnamed_addr constant [58 x i8] c"Kskew duration=%ld > glottal closed period=%ld, truncate\0A\00", align 1
@skew = internal global i64 0, align 8
@minus_pi_t = internal global float 0.000000e+00, align 4
@two_pi_t = internal global float 0.000000e+00, align 4
@.str.70.568 = private unnamed_addr constant [33 x i8] c"crit-damped glot low-pass filter\00", align 1
@.str.44.569 = private unnamed_addr constant [30 x i8] c"Try to compute amptable[%ld]\0A\00", align 1
@amptable = internal constant [88 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.300000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.500000e+01, float 2.800000e+01, float 3.200000e+01, float 3.500000e+01, float 4.000000e+01, float 4.500000e+01, float 5.100000e+01, float 5.700000e+01, float 6.400000e+01, float 7.100000e+01, float 8.000000e+01, float 9.000000e+01, float 1.010000e+02, float 1.140000e+02, float 1.280000e+02, float 1.420000e+02, float 1.590000e+02, float 1.790000e+02, float 2.020000e+02, float 2.270000e+02, float 2.560000e+02, float 2.840000e+02, float 3.180000e+02, float 3.590000e+02, float 4.050000e+02, float 4.550000e+02, float 5.120000e+02, float 5.680000e+02, float 6.380000e+02, float 7.190000e+02, float 8.110000e+02, float 9.110000e+02, float 1.024000e+03, float 1.137000e+03, float 1.276000e+03, float 1.438000e+03, float 1.622000e+03, float 1.823000e+03, float 2.048000e+03, float 2.273000e+03, float 2.552000e+03, float 2.875000e+03, float 3.244000e+03, float 3.645000e+03, float 4.096000e+03, float 4.547000e+03, float 5.104000e+03, float 5.751000e+03, float 6.488000e+03, float 7.291000e+03, float 8.192000e+03, float 9.093000e+03, float 1.020700e+04, float 1.150200e+04, float 1.297600e+04, float 1.458200e+04, float 1.638400e+04, float 1.835000e+04, float 2.064400e+04, float 2.342900e+04, float 2.621400e+04, float 2.949100e+04, float 3.276700e+04], align 16
@vwave = internal global float 0.000000e+00, align 4
@impulsive_source.doublet = internal global [3 x float] [float 0.000000e+00, float 1.300000e+07, float -1.300000e+07], align 4
@par_amp_voice = internal global float 0.000000e+00, align 4
@rnpp = internal global %struct.resonator_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69.570, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 8
@.str.69.570 = private unnamed_addr constant [20 x i8] c"parallel nasal pole\00", align 1
@ph_name = dso_local global [85 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.573, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.574, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.575, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.576, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.577, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.578, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.579, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.580, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.581, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.582, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.583, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.584, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.585, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.586, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.587, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15.588, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.589, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.590, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.591, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19.592, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20.593, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.594, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22.595, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23.596, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.597, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25.598, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.599, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27.600, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28.601, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29.602, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.603, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31.604, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32.605, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33.606, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34.607, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35.608, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36.609, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37.610, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38.611, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39.612, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40.613, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41.614, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42.615, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43.616, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44.617, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45.618, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46.619, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47.620, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48.621, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49.622, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50.623, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51.624, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52.625, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53.626, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54.627, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55.628, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56.629, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57.630, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58.631, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59.632, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60.633, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61.634, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62.635, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63.636, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64.637, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65.638, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66.639, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67.640, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68.641, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69.642, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70.643, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71.644, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72.645, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73.646, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74.647, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75.648, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76.649, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77.650, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78.651, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79.652, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80.653, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81.654, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82.655, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83.656, i32 0, i32 0), i8* null], align 16
@.str.573 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1.574 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2.575 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.3.576 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4.577 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.5.578 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.6.579 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.7.580 = private unnamed_addr constant [3 x i8] c"HH\00", align 1
@.str.8.581 = private unnamed_addr constant [3 x i8] c"JH\00", align 1
@.str.9.582 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.10.583 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11.584 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.12.585 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.13.586 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.14.587 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.15.588 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.16.589 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17.590 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.18.591 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.19.592 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.20.593 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.21.594 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.22.595 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.23.596 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.24.597 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.25.598 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.26.599 = private unnamed_addr constant [3 x i8] c"AX\00", align 1
@.str.27.600 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.28.601 = private unnamed_addr constant [4 x i8] c"AA1\00", align 1
@.str.29.602 = private unnamed_addr constant [4 x i8] c"AA2\00", align 1
@.str.30.603 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.31.604 = private unnamed_addr constant [4 x i8] c"AE1\00", align 1
@.str.32.605 = private unnamed_addr constant [4 x i8] c"AE2\00", align 1
@.str.33.606 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@.str.34.607 = private unnamed_addr constant [4 x i8] c"AH1\00", align 1
@.str.35.608 = private unnamed_addr constant [4 x i8] c"AH2\00", align 1
@.str.36.609 = private unnamed_addr constant [3 x i8] c"AO\00", align 1
@.str.37.610 = private unnamed_addr constant [4 x i8] c"AO1\00", align 1
@.str.38.611 = private unnamed_addr constant [4 x i8] c"AO2\00", align 1
@.str.39.612 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.40.613 = private unnamed_addr constant [4 x i8] c"AW1\00", align 1
@.str.41.614 = private unnamed_addr constant [4 x i8] c"AW2\00", align 1
@.str.42.615 = private unnamed_addr constant [3 x i8] c"AY\00", align 1
@.str.43.616 = private unnamed_addr constant [4 x i8] c"AY1\00", align 1
@.str.44.617 = private unnamed_addr constant [4 x i8] c"AY2\00", align 1
@.str.45.618 = private unnamed_addr constant [3 x i8] c"EA\00", align 1
@.str.46.619 = private unnamed_addr constant [4 x i8] c"EA1\00", align 1
@.str.47.620 = private unnamed_addr constant [4 x i8] c"EA2\00", align 1
@.str.48.621 = private unnamed_addr constant [3 x i8] c"EH\00", align 1
@.str.49.622 = private unnamed_addr constant [4 x i8] c"EH1\00", align 1
@.str.50.623 = private unnamed_addr constant [4 x i8] c"EH2\00", align 1
@.str.51.624 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.52.625 = private unnamed_addr constant [4 x i8] c"ER1\00", align 1
@.str.53.626 = private unnamed_addr constant [4 x i8] c"ER2\00", align 1
@.str.54.627 = private unnamed_addr constant [3 x i8] c"EY\00", align 1
@.str.55.628 = private unnamed_addr constant [4 x i8] c"EY1\00", align 1
@.str.56.629 = private unnamed_addr constant [4 x i8] c"EY2\00", align 1
@.str.57.630 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.58.631 = private unnamed_addr constant [4 x i8] c"IA1\00", align 1
@.str.59.632 = private unnamed_addr constant [4 x i8] c"IA2\00", align 1
@.str.60.633 = private unnamed_addr constant [3 x i8] c"IH\00", align 1
@.str.61.634 = private unnamed_addr constant [4 x i8] c"IH1\00", align 1
@.str.62.635 = private unnamed_addr constant [4 x i8] c"IH2\00", align 1
@.str.63.636 = private unnamed_addr constant [3 x i8] c"IY\00", align 1
@.str.64.637 = private unnamed_addr constant [4 x i8] c"IY1\00", align 1
@.str.65.638 = private unnamed_addr constant [4 x i8] c"IY2\00", align 1
@.str.66.639 = private unnamed_addr constant [3 x i8] c"OH\00", align 1
@.str.67.640 = private unnamed_addr constant [4 x i8] c"OH1\00", align 1
@.str.68.641 = private unnamed_addr constant [4 x i8] c"OH2\00", align 1
@.str.69.642 = private unnamed_addr constant [3 x i8] c"OW\00", align 1
@.str.70.643 = private unnamed_addr constant [4 x i8] c"OW1\00", align 1
@.str.71.644 = private unnamed_addr constant [4 x i8] c"OW2\00", align 1
@.str.72.645 = private unnamed_addr constant [3 x i8] c"OY\00", align 1
@.str.73.646 = private unnamed_addr constant [4 x i8] c"OY1\00", align 1
@.str.74.647 = private unnamed_addr constant [4 x i8] c"OY2\00", align 1
@.str.75.648 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.76.649 = private unnamed_addr constant [4 x i8] c"UA1\00", align 1
@.str.77.650 = private unnamed_addr constant [4 x i8] c"UA2\00", align 1
@.str.78.651 = private unnamed_addr constant [3 x i8] c"UH\00", align 1
@.str.79.652 = private unnamed_addr constant [4 x i8] c"UH1\00", align 1
@.str.80.653 = private unnamed_addr constant [4 x i8] c"UH2\00", align 1
@.str.81.654 = private unnamed_addr constant [3 x i8] c"UW\00", align 1
@.str.82.655 = private unnamed_addr constant [4 x i8] c"UW1\00", align 1
@.str.83.656 = private unnamed_addr constant [4 x i8] c"UW2\00", align 1
@ph_br = dso_local global [85 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.573, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84.657, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85.658, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86.659, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.576, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87.660, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88.661, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.662, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90.663, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91.664, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92.665, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93.666, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.667, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.585, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95.668, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96.669, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97.670, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.589, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98.671, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.591, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99.672, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100.673, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101.674, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102.675, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103.676, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.597, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104.677, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105.678, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105.678, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105.678, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106.679, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107.680, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108.681, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.594, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109.682, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110.683, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.684, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112.685, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113.686, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114.687, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115.688, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116.689, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117.690, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118.691, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119.692, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120.693, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121.694, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122.695, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123.696, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124.697, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125.698, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126.699, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127.700, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128.701, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129.702, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130.703, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131.704, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132.705, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133.706, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134.707, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135.708, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136.709, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137.710, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138.711, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139.712, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140.713, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141.714, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142.715, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143.716, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144.717, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145.718, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146.719, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147.720, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148.721, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149.722, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150.723, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151.724, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.725, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153.726, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154.727, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155.728, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156.729, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.730, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158.731, i32 0, i32 0), i8* null], align 16
@.str.84.657 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.85.658 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.86.659 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.87.660 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.88.661 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.89.662 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.90.663 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.91.664 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.92.665 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.93.666 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.94.667 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.95.668 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.96.669 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.97.670 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.98.671 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.99.672 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.100.673 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.101.674 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.102.675 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.103.676 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.104.677 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.105.678 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.106.679 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.107.680 = private unnamed_addr constant [3 x i8] c"'&\00", align 1
@.str.108.681 = private unnamed_addr constant [3 x i8] c",&\00", align 1
@.str.109.682 = private unnamed_addr constant [3 x i8] c"'V\00", align 1
@.str.110.683 = private unnamed_addr constant [3 x i8] c",V\00", align 1
@.str.111.684 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.112.685 = private unnamed_addr constant [3 x i8] c"'O\00", align 1
@.str.113.686 = private unnamed_addr constant [3 x i8] c",O\00", align 1
@.str.114.687 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.115.688 = private unnamed_addr constant [4 x i8] c"'aU\00", align 1
@.str.116.689 = private unnamed_addr constant [4 x i8] c",aU\00", align 1
@.str.117.690 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.118.691 = private unnamed_addr constant [4 x i8] c"'aI\00", align 1
@.str.119.692 = private unnamed_addr constant [4 x i8] c",aI\00", align 1
@.str.120.693 = private unnamed_addr constant [3 x i8] c"e@\00", align 1
@.str.121.694 = private unnamed_addr constant [4 x i8] c"'e@\00", align 1
@.str.122.695 = private unnamed_addr constant [4 x i8] c",e@\00", align 1
@.str.123.696 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.124.697 = private unnamed_addr constant [3 x i8] c"'e\00", align 1
@.str.125.698 = private unnamed_addr constant [3 x i8] c",e\00", align 1
@.str.126.699 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.127.700 = private unnamed_addr constant [3 x i8] c"'3\00", align 1
@.str.128.701 = private unnamed_addr constant [3 x i8] c",3\00", align 1
@.str.129.702 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.130.703 = private unnamed_addr constant [4 x i8] c"'eI\00", align 1
@.str.131.704 = private unnamed_addr constant [4 x i8] c",eI\00", align 1
@.str.132.705 = private unnamed_addr constant [3 x i8] c"I@\00", align 1
@.str.133.706 = private unnamed_addr constant [4 x i8] c"'I@\00", align 1
@.str.134.707 = private unnamed_addr constant [4 x i8] c",I@\00", align 1
@.str.135.708 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.136.709 = private unnamed_addr constant [3 x i8] c"'I\00", align 1
@.str.137.710 = private unnamed_addr constant [3 x i8] c",I\00", align 1
@.str.138.711 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.139.712 = private unnamed_addr constant [3 x i8] c"'i\00", align 1
@.str.140.713 = private unnamed_addr constant [3 x i8] c",i\00", align 1
@.str.141.714 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.142.715 = private unnamed_addr constant [3 x i8] c"'0\00", align 1
@.str.143.716 = private unnamed_addr constant [3 x i8] c",0\00", align 1
@.str.144.717 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.145.718 = private unnamed_addr constant [4 x i8] c"'@U\00", align 1
@.str.146.719 = private unnamed_addr constant [4 x i8] c",@U\00", align 1
@.str.147.720 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.148.721 = private unnamed_addr constant [4 x i8] c"'oI\00", align 1
@.str.149.722 = private unnamed_addr constant [4 x i8] c",oI\00", align 1
@.str.150.723 = private unnamed_addr constant [3 x i8] c"U@\00", align 1
@.str.151.724 = private unnamed_addr constant [4 x i8] c"'U@\00", align 1
@.str.152.725 = private unnamed_addr constant [4 x i8] c",U@\00", align 1
@.str.153.726 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.154.727 = private unnamed_addr constant [3 x i8] c"'U\00", align 1
@.str.155.728 = private unnamed_addr constant [3 x i8] c",U\00", align 1
@.str.156.729 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.157.730 = private unnamed_addr constant [3 x i8] c"'u\00", align 1
@.str.158.731 = private unnamed_addr constant [3 x i8] c",u\00", align 1
@ph_am = dso_local global [85 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.573, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84.657, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85.658, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86.659, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.576, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87.660, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88.661, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89.662, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90.663, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91.664, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92.665, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93.666, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94.667, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.585, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95.668, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96.669, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97.670, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.589, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98.671, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.591, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99.672, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100.673, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101.674, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102.675, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103.676, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.597, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104.677, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105.678, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105.678, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105.678, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106.679, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107.680, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108.681, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.594, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109.682, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110.683, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111.684, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112.685, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113.686, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114.687, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115.688, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116.689, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117.690, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118.691, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119.692, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120.693, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121.694, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122.695, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123.696, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124.697, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125.698, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159.734, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160.735, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161.736, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129.702, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130.703, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131.704, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132.705, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133.706, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134.707, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135.708, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136.709, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137.710, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138.711, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139.712, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140.713, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141.714, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142.715, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.143.716, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162.737, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163.738, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164.739, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147.720, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148.721, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149.722, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156.729, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.730, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158.731, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153.726, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154.727, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155.728, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156.729, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.730, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158.731, i32 0, i32 0), i8* null], align 16
@.str.159.734 = private unnamed_addr constant [3 x i8] c"3R\00", align 1
@.str.160.735 = private unnamed_addr constant [4 x i8] c"'3R\00", align 1
@.str.161.736 = private unnamed_addr constant [4 x i8] c",3R\00", align 1
@.str.162.737 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.163.738 = private unnamed_addr constant [4 x i8] c"'oU\00", align 1
@.str.164.739 = private unnamed_addr constant [4 x i8] c",oU\00", align 1
@phtoelm_id = dso_local global i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.740, i32 0, i32 0), align 8
@.str.740 = private unnamed_addr constant [64 x i8] c"$Id: phtoelm.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@phtoelm = dso_local global %struct.trie_s* null, align 8
@.str.1.742 = private unnamed_addr constant [23 x i8] c"Ignoring %c in '%.*s'\0A\00", align 1
@.str.2.743 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3.744 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.4.745 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5.746 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.6.747 = private unnamed_addr constant [3 x i8] c"PY\00", align 1
@.str.7.748 = private unnamed_addr constant [3 x i8] c"PZ\00", align 1
@.str.8.749 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9.750 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.10.751 = private unnamed_addr constant [3 x i8] c"TY\00", align 1
@.str.11.752 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.12.753 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.13.754 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.14.755 = private unnamed_addr constant [3 x i8] c"KY\00", align 1
@.str.15.756 = private unnamed_addr constant [3 x i8] c"KZ\00", align 1
@.str.16.757 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17.758 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.18.759 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.19.760 = private unnamed_addr constant [3 x i8] c"BZ\00", align 1
@.str.20.761 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21.762 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.22.763 = private unnamed_addr constant [3 x i8] c"DY\00", align 1
@.str.23.764 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.24.765 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.25.766 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.26.767 = private unnamed_addr constant [3 x i8] c"GY\00", align 1
@.str.27.768 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.28.769 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29.770 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.30.771 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.31.772 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.32.773 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.33.774 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.34.775 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.35.776 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.36.777 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.37.778 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.38.779 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.39.780 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.40.781 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.41.782 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.42.783 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.43.784 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.44.785 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.45.786 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.46.787 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.47.788 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.48.789 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@.str.49.790 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.50.791 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.51.792 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.52.793 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.53.794 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.54.795 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.55.796 = private unnamed_addr constant [3 x i8] c"JY\00", align 1
@.str.56.797 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.57.798 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.58.799 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.59.800 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.60.801 = private unnamed_addr constant [3 x i8] c"rr\00", align 1
@.str.61.802 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.62.803 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.63.804 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.64.805 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.65.806 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.66.807 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.67.808 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.68.809 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.69.810 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.70.811 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.71.812 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.72.813 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.73.814 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.74.815 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.75.816 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.76.817 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.77.818 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.78.819 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.79.820 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.80.821 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.81.822 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.82.823 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.83.824 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.84.825 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.85.826 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.86.827 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.87.828 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@.str.88.829 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.89.830 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.90.831 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.91.832 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.92.833 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.93.834 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.94.835 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.95.836 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.96.837 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.97.838 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.98.839 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.99.840 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.100.841 = private unnamed_addr constant [3 x i8] c"I@\00", align 1
@.str.101.842 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.102.843 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.103.844 = private unnamed_addr constant [3 x i8] c"e@\00", align 1
@.str.104.845 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.105.846 = private unnamed_addr constant [3 x i8] c"U@\00", align 1
@.str.106.847 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.107.848 = private unnamed_addr constant [3 x i8] c"O@\00", align 1
@.str.108.849 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.109.850 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.110.851 = private unnamed_addr constant [16 x i8] c"Cannot find %s\0A\00", align 1
@Revision = dso_local global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.852, i32 0, i32 0), align 8
@.str.852 = private unnamed_addr constant [14 x i8] c"Revision: 2.0\00", align 1
@say_id = dso_local global i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.853, i32 0, i32 0), align 8
@.str.853 = private unnamed_addr constant [60 x i8] c"$Id: say.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@program = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.856, i32 0, i32 0), align 8
@.str.1.856 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@.str.2.857 = private unnamed_addr constant [17 x i8] c"Spelling '%.*s'\0A\00", align 1
@.str.4.858 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@verbose = internal global i32 0, align 4
@.str.3.860 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@once = internal global i32 0, align 4
@.str.15.861 = private unnamed_addr constant [17 x i8] c"Guess %p '%.*s'\0A\00", align 1
@.str.5.862 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.6.863 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.7.864 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.8.865 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9.866 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@.str.10.867 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.11.868 = private unnamed_addr constant [28 x i8] c"Verbose, show phonetic form\00", align 1
@.str.12.869 = private unnamed_addr constant [43 x i8] c"Usage: %s [options as above] words to say\0A\00", align 1
@.str.13.870 = private unnamed_addr constant [44 x i8] c"or     %s [options as above] < file-to-say\0A\00", align 1
@.str.14.871 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@saynum_id = dso_local global i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.872, i32 0, i32 0), align 8
@.str.872 = private unnamed_addr constant [63 x i8] c"$Id: saynum.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@.str.1.875 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.2.876 = private unnamed_addr constant [6 x i8] c"a lot\00", align 1
@.str.3.877 = private unnamed_addr constant [8 x i8] c"billion\00", align 1
@.str.4.878 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5.879 = private unnamed_addr constant [8 x i8] c"million\00", align 1
@.str.6.880 = private unnamed_addr constant [9 x i8] c"thousand\00", align 1
@Cardinals = internal global [20 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12.890, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.891, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.892, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15.893, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16.894, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.895, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18.896, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19.897, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20.898, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21.899, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22.900, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23.901, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24.902, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25.903, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26.904, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27.905, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28.906, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29.907, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30.908, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31.909, i32 0, i32 0)], align 16
@.str.7.881 = private unnamed_addr constant [8 x i8] c"hundred\00", align 1
@Twenties = internal global [8 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.882, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33.883, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34.884, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35.885, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36.886, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37.887, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38.888, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39.889, i32 0, i32 0)], align 16
@.str.32.882 = private unnamed_addr constant [7 x i8] c"twenty\00", align 1
@.str.33.883 = private unnamed_addr constant [7 x i8] c"thirty\00", align 1
@.str.34.884 = private unnamed_addr constant [6 x i8] c"forty\00", align 1
@.str.35.885 = private unnamed_addr constant [6 x i8] c"fifty\00", align 1
@.str.36.886 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@.str.37.887 = private unnamed_addr constant [8 x i8] c"seventy\00", align 1
@.str.38.888 = private unnamed_addr constant [7 x i8] c"eighty\00", align 1
@.str.39.889 = private unnamed_addr constant [7 x i8] c"ninety\00", align 1
@.str.12.890 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.13.891 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.14.892 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.15.893 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.16.894 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.17.895 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.18.896 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.19.897 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.20.898 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.21.899 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.22.900 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.23.901 = private unnamed_addr constant [7 x i8] c"eleven\00", align 1
@.str.24.902 = private unnamed_addr constant [7 x i8] c"twelve\00", align 1
@.str.25.903 = private unnamed_addr constant [9 x i8] c"thirteen\00", align 1
@.str.26.904 = private unnamed_addr constant [9 x i8] c"fourteen\00", align 1
@.str.27.905 = private unnamed_addr constant [8 x i8] c"fifteen\00", align 1
@.str.28.906 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.29.907 = private unnamed_addr constant [10 x i8] c"seventeen\00", align 1
@.str.30.908 = private unnamed_addr constant [9 x i8] c"eighteen\00", align 1
@.str.31.909 = private unnamed_addr constant [9 x i8] c"nineteen\00", align 1
@.str.8.910 = private unnamed_addr constant [10 x i8] c"billionth\00", align 1
@.str.9.911 = private unnamed_addr constant [10 x i8] c"millionth\00", align 1
@.str.10.912 = private unnamed_addr constant [11 x i8] c"thousandth\00", align 1
@.str.11.913 = private unnamed_addr constant [10 x i8] c"hundredth\00", align 1
@Ord_twenties = internal global [8 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40.934, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41.935, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42.936, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43.937, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44.938, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45.939, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46.940, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47.941, i32 0, i32 0)], align 16
@Ordinals = internal global [20 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48.914, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49.915, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50.916, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51.917, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52.918, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53.919, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54.920, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55.921, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56.922, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57.923, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58.924, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59.925, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60.926, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61.927, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62.928, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63.929, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64.930, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65.931, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66.932, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67.933, i32 0, i32 0)], align 16
@.str.48.914 = private unnamed_addr constant [7 x i8] c"zeroth\00", align 1
@.str.49.915 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.50.916 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.51.917 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.52.918 = private unnamed_addr constant [7 x i8] c"fourth\00", align 1
@.str.53.919 = private unnamed_addr constant [6 x i8] c"fifth\00", align 1
@.str.54.920 = private unnamed_addr constant [6 x i8] c"sixth\00", align 1
@.str.55.921 = private unnamed_addr constant [8 x i8] c"seventh\00", align 1
@.str.56.922 = private unnamed_addr constant [7 x i8] c"eighth\00", align 1
@.str.57.923 = private unnamed_addr constant [6 x i8] c"ninth\00", align 1
@.str.58.924 = private unnamed_addr constant [6 x i8] c"tenth\00", align 1
@.str.59.925 = private unnamed_addr constant [9 x i8] c"eleventh\00", align 1
@.str.60.926 = private unnamed_addr constant [8 x i8] c"twelfth\00", align 1
@.str.61.927 = private unnamed_addr constant [11 x i8] c"thirteenth\00", align 1
@.str.62.928 = private unnamed_addr constant [11 x i8] c"fourteenth\00", align 1
@.str.63.929 = private unnamed_addr constant [10 x i8] c"fifteenth\00", align 1
@.str.64.930 = private unnamed_addr constant [10 x i8] c"sixteenth\00", align 1
@.str.65.931 = private unnamed_addr constant [12 x i8] c"seventeenth\00", align 1
@.str.66.932 = private unnamed_addr constant [11 x i8] c"eighteenth\00", align 1
@.str.67.933 = private unnamed_addr constant [11 x i8] c"nineteenth\00", align 1
@.str.40.934 = private unnamed_addr constant [10 x i8] c"twentieth\00", align 1
@.str.41.935 = private unnamed_addr constant [10 x i8] c"thirtieth\00", align 1
@.str.42.936 = private unnamed_addr constant [9 x i8] c"fortieth\00", align 1
@.str.43.937 = private unnamed_addr constant [9 x i8] c"fiftieth\00", align 1
@.str.44.938 = private unnamed_addr constant [9 x i8] c"sixtieth\00", align 1
@.str.45.939 = private unnamed_addr constant [11 x i8] c"seventieth\00", align 1
@.str.46.940 = private unnamed_addr constant [10 x i8] c"eightieth\00", align 1
@.str.47.941 = private unnamed_addr constant [10 x i8] c"ninetieth\00", align 1
@text_id = dso_local global i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.942, i32 0, i32 0), align 8
@.str.942 = private unnamed_addr constant [61 x i8] c"$Id: text.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@.str.1.945 = private unnamed_addr constant [42 x i8] c"Error: Can't find rule for: '%c' in \22%s\22\0A\00", align 1
@.str.3.946 = private unnamed_addr constant [29 x i8] c"Bad char in right rule:'%c'\0A\00", align 1
@.str.2.947 = private unnamed_addr constant [29 x i8] c"Bad char in left rule: '%c'\0A\00", align 1
@trie_id = dso_local global i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.948, i32 0, i32 0), align 8
@.str.948 = private unnamed_addr constant [61 x i8] c"$Id: trie.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @au_header(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.73, i64 0, i64 0), i8** %10, align 8
  br label %14

14:                                               ; preds = %13, %5
  %15 = load i32, i32* %6, align 4
  call void @wblong(i32 %15, i64 779316836)
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = call i64 @strlen(i8* %17) #8
  %19 = add i64 24, %18
  call void @wblong(i32 %16, i64 %19)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  call void @wblong(i32 %20, i64 %22)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  call void @wblong(i32 %23, i64 %25)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  call void @wblong(i32 %26, i64 %28)
  %29 = load i32, i32* %6, align 4
  call void @wblong(i32 %29, i64 1)
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @strlen(i8* %32) #8
  %34 = call i64 @write(i32 %30, i8* %31, i64 %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @wblong(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 24, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = lshr i64 %11, %13
  %15 = and i64 %14, 255
  %16 = trunc i64 %15 to i8
  store i8 %16, i8* %6, align 1
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @write(i32 %17, i8* %6, i64 1)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 8
  store i32 %21, i32* %5, align 4
  br label %7

22:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @file_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  %8 = call i32 (i8*, i32, i8**, ...) @getargs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.74, i64 0, i64 0), i32 %6, i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.75, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.73, i64 0, i64 0), i8** @linear_file, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.77, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.73, i64 0, i64 0), i8** @au_file, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.78, i64 0, i64 0), i8* null)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @help_only, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load i8*, i8** @au_file, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i8*, i8** @au_file, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.79, i64 0, i64 0)) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* @au_fd, align 4
  br label %29

21:                                               ; preds = %16
  %22 = load i8*, i8** @au_file, align 8
  %23 = call i32 (i8*, i32, ...) @open(i8* %22, i32 577, i32 438)
  store i32 %23, i32* @au_fd, align 4
  %24 = load i32, i32* @au_fd, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** @au_file, align 8
  call void @perror(i8* %27)
  br label %28

28:                                               ; preds = %26, %21
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* @au_fd, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i64, i64* @samp_rate, align 8
  %34 = icmp sgt i64 %33, 8000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 3, i32* @au_encoding, align 4
  br label %37

36:                                               ; preds = %32
  store i32 1, i32* @au_encoding, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* @au_fd, align 4
  %39 = load i32, i32* @au_encoding, align 4
  %40 = load i64, i64* @samp_rate, align 8
  %41 = trunc i64 %40 to i32
  call void @au_header(i32 %38, i32 %39, i32 %41, i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.73, i64 0, i64 0))
  store i32 0, i32* @au_size, align 4
  br label %42

42:                                               ; preds = %37, %29
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i8*, i8** @linear_file, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i8*, i8** @linear_file, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.79, i64 0, i64 0)) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* @linear_fd, align 4
  br label %59

51:                                               ; preds = %46
  %52 = load i8*, i8** @linear_file, align 8
  %53 = call i32 (i8*, i32, ...) @open(i8* %52, i32 577, i32 438)
  store i32 %53, i32* @linear_fd, align 4
  %54 = load i32, i32* @linear_fd, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** @linear_file, align 8
  call void @perror(i8* %57)
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* @au_fd, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @linear_fd, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %60
  store void (i32, i16*)* @aufile_write, void (i32, i16*)** @file_write, align 8
  store void ()* @aufile_term, void ()** @file_term, align 8
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local void @perror(i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @aufile_write(i32 %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i16* %1, i16** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %115

12:                                               ; preds = %2
  %13 = load i32, i32* @linear_fd, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 2
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @linear_fd, align 4
  %21 = load i16*, i16** %4, align 8
  %22 = bitcast i16* %21 to i8*
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 2
  %26 = call i64 @write(i32 %20, i8* %22, i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.80, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %15
  br label %32

32:                                               ; preds = %31, %12
  %33 = load i32, i32* @au_fd, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %114

35:                                               ; preds = %32
  %36 = load i32, i32* @au_encoding, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 2
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @au_fd, align 4
  %44 = load i16*, i16** %4, align 8
  %45 = bitcast i16* %44 to i8*
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = call i64 @write(i32 %43, i8* %45, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.80, i64 0, i64 0))
  br label %57

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @au_size, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* @au_size, align 4
  br label %57

57:                                               ; preds = %53, %52
  br label %113

58:                                               ; preds = %35
  %59 = load i32, i32* @au_encoding, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %111

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = call noalias i8* @malloc(i64 %63) #6
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %106

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %77, %67
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i8*, i8** @_l2u, align 8
  %79 = load i16*, i16** %4, align 8
  %80 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %80, i16** %4, align 8
  %81 = load i16, i16* %79, align 2
  %82 = sext i16 %81 to i32
  %83 = ashr i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %78, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  store i8 %86, i8* %87, align 1
  br label %73

89:                                               ; preds = %73
  %90 = load i32, i32* @au_fd, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = call i64 @write(i32 %90, i8* %91, i64 %93)
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i8*, i8** @au_file, align 8
  call void @perror(i8* %99)
  br label %104

100:                                              ; preds = %89
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @au_size, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* @au_size, align 4
  br label %104

104:                                              ; preds = %100, %98
  %105 = load i8*, i8** %7, align 8
  call void @free(i8* %105) #6
  br label %110

106:                                              ; preds = %61
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %108 = load i8*, i8** @program, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8.81, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %104
  br label %112

111:                                              ; preds = %58
  call void @abort() #9
  unreachable

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112, %57
  br label %114

114:                                              ; preds = %113, %32
  br label %115

115:                                              ; preds = %114, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @aufile_term() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @au_fd, align 4
  %3 = icmp sge i32 %2, 0
  br i1 %3, label %4, label %28

4:                                                ; preds = %0
  %5 = load i32, i32* @au_fd, align 4
  %6 = call i64 @lseek(i32 %5, i64 0, i32 1) #6
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load i32, i32* @au_fd, align 4
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ftruncate(i32 %10, i64 %11) #6
  %13 = load i32, i32* @au_fd, align 4
  %14 = call i64 @lseek(i32 %13, i64 8, i32 0) #6
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @au_fd, align 4
  %18 = load i32, i32* @au_size, align 4
  %19 = zext i32 %18 to i64
  call void @wblong(i32 %17, i64 %19)
  br label %20

20:                                               ; preds = %16, %9
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i32, i32* @au_fd, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @au_fd, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  store i32 -1, i32* @au_fd, align 4
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i32, i32* @linear_fd, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* @linear_fd, align 4
  %33 = load i32, i32* @linear_fd, align 4
  %34 = call i64 @lseek(i32 %33, i64 0, i32 1) #6
  %35 = call i32 @ftruncate(i32 %32, i64 %34) #6
  %36 = load i32, i32* @linear_fd, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @linear_fd, align 4
  %40 = call i32 @close(i32 %39)
  br label %41

41:                                               ; preds = %38, %31
  store i32 -1, i32* @linear_fd, align 4
  br label %42

42:                                               ; preds = %41, %28
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @ftruncate(i32, i64) #3

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @darray_free(%struct.darray_t* %0) #0 {
  %2 = alloca %struct.darray_t*, align 8
  store %struct.darray_t* %0, %struct.darray_t** %2, align 8
  %3 = load %struct.darray_t*, %struct.darray_t** %2, align 8
  %4 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.darray_t*, %struct.darray_t** %2, align 8
  %9 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* %10) #6
  %11 = load %struct.darray_t*, %struct.darray_t** %2, align 8
  %12 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %11, i32 0, i32 0
  store i8* null, i8** %12, align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.darray_t*, %struct.darray_t** %2, align 8
  %15 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %14, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = load %struct.darray_t*, %struct.darray_t** %2, align 8
  %17 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @Darray_find(%struct.darray_t* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.darray_t* %0, %struct.darray_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %12 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %18 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %127

21:                                               ; preds = %15, %2
  %22 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %23 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %26 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %25, i32 0, i32 3
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = mul i32 %24, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %31 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %30, i32 0, i32 3
  %32 = load i16, i16* %31, align 8
  %33 = icmp ne i16 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  call void @abort() #9
  unreachable

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %38 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp uge i32 %36, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %35
  %42 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %43 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %42, i32 0, i32 4
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %49 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %48, i32 0, i32 4
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i32 [ %51, %47 ], [ 1, %52 ]
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %55, %56
  %58 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %59 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %58, i32 0, i32 3
  %60 = load i16, i16* %59, align 8
  %61 = zext i16 %60 to i32
  %62 = mul i32 %57, %61
  store i32 %62, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = call noalias i8* @malloc(i64 %63) #6
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %73 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 %74, i64 %76, i1 false)
  br label %77

77:                                               ; preds = %70, %67
  %78 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %79 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %84 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  call void @free(i8* %85) #6
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %89 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %90, %91
  %93 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %94 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %96

95:                                               ; preds = %53
  store i8* null, i8** %3, align 8
  br label %139

96:                                               ; preds = %86
  br label %105

97:                                               ; preds = %35
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, 1
  %100 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %101 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %100, i32 0, i32 3
  %102 = load i16, i16* %101, align 8
  %103 = zext i16 %102 to i32
  %104 = mul i32 %99, %103
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %97, %96
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %108 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp uge i32 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %113 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub i32 %118, %119
  %121 = zext i32 %120 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %117, i8 0, i64 %121, i1 false)
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  %124 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %125 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %111, %105
  br label %127

127:                                              ; preds = %126, %15
  %128 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %129 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %133 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %132, i32 0, i32 3
  %134 = load i16, i16* %133, align 8
  %135 = zext i16 %134 to i32
  %136 = mul i32 %131, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %130, i64 %137
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %127, %95
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @darray_delete(%struct.darray_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.darray_t* %0, %struct.darray_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @darray_find(%struct.darray_t* %7, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %14 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %12
  %18 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %19 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add i32 %20, -1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %29, %17
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %26 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %33 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %32, i32 0, i32 3
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %39 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %38, i32 0, i32 3
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %37, i64 %41, i1 false)
  %42 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %43 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %42, i32 0, i32 3
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = load i8*, i8** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %6, align 8
  br label %22

49:                                               ; preds = %22
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %52 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %51, i32 0, i32 3
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %50, i8 0, i64 %54, i1 false)
  store i32 1, i32* %3, align 4
  br label %57

55:                                               ; preds = %12
  call void @abort() #9
  unreachable

56:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @darray_find(%struct.darray_t* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  store %struct.darray_t* %0, %struct.darray_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %8 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %14 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %19 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %23 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %22, i32 0, i32 3
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = mul i32 %21, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %20, i64 %27
  store i8* %28, i8** %3, align 8
  br label %33

29:                                               ; preds = %11, %2
  %30 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @Darray_find(%struct.darray_t* %30, i32 %31)
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init_synth(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store double 1.000000e+01, double* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* @samp_rate, align 8
  store i64 %8, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 1), align 4
  store i64 2, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 6), align 8
  store i32 0, i32* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 2), align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 (i8*, i32, i8**, ...) @getargs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.84, i64 0, i64 0), i32 %9, i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.85, i64 0, i64 0), i8* null, i32* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 1), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.87, i64 0, i64 0), i8* null, i32* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.89, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.90, i64 0, i64 0), i32* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8.91, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.92, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.90, i64 0, i64 0), i32* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 2), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10.93, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.95, i64 0, i64 0), double* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.90, i64 0, i64 0), i64* getelementptr inbounds (%struct.klatt_frame_t, %struct.klatt_frame_t* @def_pars, i32 0, i32 21), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15.98, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.90, i64 0, i64 0), i64* getelementptr inbounds (%struct.klatt_frame_t, %struct.klatt_frame_t* @def_pars, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17.100, i64 0, i64 0), i8* null)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 0), align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 5), align 8
  br label %18

17:                                               ; preds = %2
  store i32 2, i32* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 0), align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 1, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 6), align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i64, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 4), align 8
  %24 = sitofp i64 %23 to double
  %25 = load double, double* %5, align 8
  %26 = fmul double %24, %25
  %27 = fdiv double %26, 1.000000e+03
  %28 = fptosi double %27 to i64
  store i64 %28, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 7), align 8
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @dict_find(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dict_term() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getargs(i8* %0, i32 %1, i8** %2, ...) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %439, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %440

27:                                               ; preds = %23
  %28 = load i8**, i8*** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %436

41:                                               ; preds = %27
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 43
  br i1 %46, label %47, label %436

47:                                               ; preds = %44, %41
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %403, %47
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %404

52:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  %53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %54 = bitcast %struct.__va_list_tag* %53 to i8*
  call void @llvm.va_start(i8* %54)
  br label %55

55:                                               ; preds = %396, %52
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 16
  %59 = icmp ule i32 %58, 40
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %56, i32 0, i32 3
  %62 = load i8*, i8** %61, align 16
  %63 = getelementptr i8, i8* %62, i32 %58
  %64 = bitcast i8* %63 to i8**
  %65 = add i32 %58, 8
  store i32 %65, i32* %57, align 16
  br label %71

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %56, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i8**
  %70 = getelementptr i8, i8* %68, i32 8
  store i8* %70, i8** %67, align 8
  br label %71

71:                                               ; preds = %66, %60
  %72 = phi i8** [ %64, %60 ], [ %69, %66 ]
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %13, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %397

75:                                               ; preds = %71
  %76 = load i8*, i8** %13, align 8
  %77 = call i64 @strlen(i8* %76) #8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 16
  %82 = icmp ule i32 %81, 40
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 3
  %85 = load i8*, i8** %84, align 16
  %86 = getelementptr i8, i8* %85, i32 %81
  %87 = bitcast i8* %86 to i8**
  %88 = add i32 %81, 8
  store i32 %88, i32* %80, align 16
  br label %94

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = bitcast i8* %91 to i8**
  %93 = getelementptr i8, i8* %91, i32 8
  store i8* %93, i8** %90, align 8
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi i8** [ %87, %83 ], [ %92, %89 ]
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %16, align 8
  %97 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %98 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 16
  %100 = icmp ule i32 %99, 40
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %97, i32 0, i32 3
  %103 = load i8*, i8** %102, align 16
  %104 = getelementptr i8, i8* %103, i32 %99
  %105 = bitcast i8* %104 to i8**
  %106 = add i32 %99, 8
  store i32 %106, i32* %98, align 16
  br label %112

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %97, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = bitcast i8* %109 to i8**
  %111 = getelementptr i8, i8* %109, i32 8
  store i8* %111, i8** %108, align 8
  br label %112

112:                                              ; preds = %107, %101
  %113 = phi i8** [ %105, %101 ], [ %110, %107 ]
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %17, align 8
  %115 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %116 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 16
  %118 = icmp ule i32 %117, 40
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %115, i32 0, i32 3
  %121 = load i8*, i8** %120, align 16
  %122 = getelementptr i8, i8* %121, i32 %117
  %123 = bitcast i8* %122 to i8**
  %124 = add i32 %117, 8
  store i32 %124, i32* %116, align 16
  br label %130

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %115, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = bitcast i8* %127 to i8**
  %129 = getelementptr i8, i8* %127, i32 8
  store i8* %129, i8** %126, align 8
  br label %130

130:                                              ; preds = %125, %119
  %131 = phi i8** [ %123, %119 ], [ %128, %125 ]
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %18, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.447, i64 0, i64 0)) #8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %226, label %136

136:                                              ; preds = %130
  store i32 1, i32* @help_only, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = icmp ne i32 %137, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.448, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %140, %136
  %145 = load i8*, i8** %16, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %214

147:                                              ; preds = %144
  %148 = load i8*, i8** %16, align 8
  %149 = call i8* @strchr(i8* %148, i32 37) #8
  store i8* %149, i8** %19, align 8
  %150 = load i8*, i8** %19, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %197

152:                                              ; preds = %147
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i8*, i8** %19, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.449, i64 0, i64 0), i8* %154, i8* %156)
  %158 = load i8*, i8** %19, align 8
  %159 = load i8*, i8** %19, align 8
  %160 = call i64 @strlen(i8* %159) #8
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = getelementptr inbounds i8, i8* %161, i64 -1
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  switch i32 %164, label %193 [
    i32 101, label %165
    i32 102, label %165
    i32 103, label %165
    i32 117, label %172
    i32 100, label %172
  ]

165:                                              ; preds = %152, %152, %152
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %167 = load i8*, i8** %16, align 8
  %168 = load i8*, i8** %17, align 8
  %169 = bitcast i8* %168 to double*
  %170 = load double, double* %169, align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* %167, double %170)
  br label %193

172:                                              ; preds = %152, %152
  %173 = load i8*, i8** %19, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 108
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = load i8*, i8** %17, align 8
  %182 = bitcast i8* %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* %180, i64 %183)
  br label %192

185:                                              ; preds = %172
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = load i8*, i8** %16, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = bitcast i8* %188 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* %187, i32 %190)
  br label %192

192:                                              ; preds = %185, %178
  br label %193

193:                                              ; preds = %192, %165, %152
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.450, i64 0, i64 0), i8* %195)
  br label %213

197:                                              ; preds = %147
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = load i8*, i8** %17, align 8
  %201 = bitcast i8* %200 to i8**
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load i8*, i8** %17, align 8
  %206 = bitcast i8* %205 to i8**
  %207 = load i8*, i8** %206, align 8
  br label %209

208:                                              ; preds = %197
  br label %209

209:                                              ; preds = %208, %204
  %210 = phi i8* [ %207, %204 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6.451, i64 0, i64 0), %208 ]
  %211 = load i8*, i8** %18, align 8
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.452, i64 0, i64 0), i8* %199, i8* %210, i8* %211)
  br label %213

213:                                              ; preds = %209, %193
  br label %225

214:                                              ; preds = %144
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %216 = load i8*, i8** %13, align 8
  %217 = load i8*, i8** %17, align 8
  %218 = bitcast i8* %217 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.453, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.454, i64 0, i64 0)
  %223 = load i8*, i8** %18, align 8
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7.455, i64 0, i64 0), i8* %216, i8* %222, i8* %223)
  br label %225

225:                                              ; preds = %214, %213
  br label %396

226:                                              ; preds = %130
  %227 = load i32, i32* %15, align 4
  %228 = icmp sgt i32 %227, 1
  br i1 %228, label %229, label %310

229:                                              ; preds = %226
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %309, label %232

232:                                              ; preds = %229
  %233 = load i8*, i8** %10, align 8
  %234 = load i8*, i8** %13, align 8
  %235 = call i32 @strcmp(i8* %233, i8* %234) #8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %309, label %237

237:                                              ; preds = %232
  %238 = load i8*, i8** %16, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %286

240:                                              ; preds = %237
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %5, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %278

246:                                              ; preds = %240
  %247 = load i8**, i8*** %6, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %12, align 4
  %251 = add nsw i32 %248, %249
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %247, i64 %252
  %254 = load i8*, i8** %253, align 8
  store i8* %254, i8** %20, align 8
  %255 = load i8*, i8** %16, align 8
  %256 = call i8* @strchr(i8* %255, i32 37) #8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %273

258:                                              ; preds = %246
  %259 = load i8*, i8** %20, align 8
  %260 = load i8*, i8** %16, align 8
  %261 = load i8*, i8** %17, align 8
  %262 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %259, i8* %260, i8* %261) #6
  %263 = icmp ne i32 %262, 1
  br i1 %263, label %264, label %272

264:                                              ; preds = %258
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %266 = load i8**, i8*** %6, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 0
  %268 = load i8*, i8** %267, align 8
  %269 = load i8*, i8** %20, align 8
  %270 = load i8*, i8** %13, align 8
  %271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %265, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10.456, i64 0, i64 0), i8* %268, i8* %269, i8* %270)
  br label %272

272:                                              ; preds = %264, %258
  br label %277

273:                                              ; preds = %246
  %274 = load i8*, i8** %20, align 8
  %275 = load i8*, i8** %17, align 8
  %276 = bitcast i8* %275 to i8**
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %273, %272
  br label %285

278:                                              ; preds = %240
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %280 = load i8**, i8*** %6, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i8*, i8** %13, align 8
  %284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11.457, i64 0, i64 0), i8* %282, i8* %283)
  br label %285

285:                                              ; preds = %278, %277
  br label %302

286:                                              ; preds = %237
  %287 = load i32, i32* %11, align 4
  %288 = icmp eq i32 %287, 43
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i8*, i8** %17, align 8
  %291 = bitcast i8* %290 to i32*
  store i32 1, i32* %291, align 4
  br label %301

292:                                              ; preds = %286
  %293 = load i8*, i8** %17, align 8
  %294 = bitcast i8* %293 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = load i8*, i8** %17, align 8
  %300 = bitcast i8* %299 to i32*
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %292, %289
  br label %302

302:                                              ; preds = %301, %285
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %14, align 4
  %305 = load i32, i32* %15, align 4
  %306 = load i8*, i8** %10, align 8
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i8, i8* %306, i64 %307
  store i8* %308, i8** %10, align 8
  br label %397

309:                                              ; preds = %232, %229
  br label %395

310:                                              ; preds = %226
  %311 = load i8*, i8** %10, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = load i8*, i8** %13, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %313, %316
  br i1 %317, label %318, label %394

318:                                              ; preds = %310
  %319 = load i8*, i8** %16, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %367

321:                                              ; preds = %318
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %322, %323
  %325 = load i32, i32* %5, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %359

327:                                              ; preds = %321
  %328 = load i8**, i8*** %6, align 8
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* %12, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %12, align 4
  %332 = add nsw i32 %329, %330
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8*, i8** %328, i64 %333
  %335 = load i8*, i8** %334, align 8
  store i8* %335, i8** %21, align 8
  %336 = load i8*, i8** %16, align 8
  %337 = call i8* @strchr(i8* %336, i32 37) #8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %354

339:                                              ; preds = %327
  %340 = load i8*, i8** %21, align 8
  %341 = load i8*, i8** %16, align 8
  %342 = load i8*, i8** %17, align 8
  %343 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %340, i8* %341, i8* %342) #6
  %344 = icmp ne i32 %343, 1
  br i1 %344, label %345, label %353

345:                                              ; preds = %339
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %347 = load i8**, i8*** %6, align 8
  %348 = getelementptr inbounds i8*, i8** %347, i64 0
  %349 = load i8*, i8** %348, align 8
  %350 = load i8*, i8** %21, align 8
  %351 = load i8*, i8** %13, align 8
  %352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10.456, i64 0, i64 0), i8* %349, i8* %350, i8* %351)
  br label %353

353:                                              ; preds = %345, %339
  br label %358

354:                                              ; preds = %327
  %355 = load i8*, i8** %21, align 8
  %356 = load i8*, i8** %17, align 8
  %357 = bitcast i8* %356 to i8**
  store i8* %355, i8** %357, align 8
  br label %358

358:                                              ; preds = %354, %353
  br label %366

359:                                              ; preds = %321
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %361 = load i8**, i8*** %6, align 8
  %362 = getelementptr inbounds i8*, i8** %361, i64 0
  %363 = load i8*, i8** %362, align 8
  %364 = load i8*, i8** %13, align 8
  %365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %360, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11.457, i64 0, i64 0), i8* %363, i8* %364)
  br label %366

366:                                              ; preds = %359, %358
  br label %389

367:                                              ; preds = %318
  %368 = load i8*, i8** %16, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = load i32, i32* %11, align 4
  %372 = icmp eq i32 %371, 43
  br i1 %372, label %373, label %379

373:                                              ; preds = %370, %367
  %374 = load i32, i32* %11, align 4
  %375 = icmp eq i32 %374, 43
  %376 = zext i1 %375 to i32
  %377 = load i8*, i8** %17, align 8
  %378 = bitcast i8* %377 to i32*
  store i32 %376, i32* %378, align 4
  br label %388

379:                                              ; preds = %370
  %380 = load i8*, i8** %17, align 8
  %381 = bitcast i8* %380 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  %384 = xor i1 %383, true
  %385 = zext i1 %384 to i32
  %386 = load i8*, i8** %17, align 8
  %387 = bitcast i8* %386 to i32*
  store i32 %385, i32* %387, align 4
  br label %388

388:                                              ; preds = %379, %373
  br label %389

389:                                              ; preds = %388, %366
  %390 = load i32, i32* %14, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %14, align 4
  %392 = load i8*, i8** %10, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %10, align 8
  br label %397

394:                                              ; preds = %310
  br label %395

395:                                              ; preds = %394, %309
  br label %396

396:                                              ; preds = %395, %225
  br label %55

397:                                              ; preds = %389, %302, %71
  %398 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %399 = bitcast %struct.__va_list_tag* %398 to i8*
  call void @llvm.va_end(i8* %399)
  %400 = load i32, i32* %14, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %403, label %402

402:                                              ; preds = %397
  store i32 0, i32* %12, align 4
  br label %404

403:                                              ; preds = %397
  br label %48

404:                                              ; preds = %402, %48
  %405 = load i32, i32* %12, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %432

407:                                              ; preds = %404
  %408 = load i32, i32* %12, align 4
  %409 = load i32, i32* %5, align 4
  %410 = sub nsw i32 %409, %408
  store i32 %410, i32* %5, align 4
  %411 = load i32, i32* %8, align 4
  store i32 %411, i32* %22, align 4
  br label %412

412:                                              ; preds = %428, %407
  %413 = load i32, i32* %22, align 4
  %414 = load i32, i32* %5, align 4
  %415 = icmp sle i32 %413, %414
  br i1 %415, label %416, label %431

416:                                              ; preds = %412
  %417 = load i8**, i8*** %6, align 8
  %418 = load i32, i32* %22, align 4
  %419 = load i32, i32* %12, align 4
  %420 = add nsw i32 %418, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %417, i64 %421
  %423 = load i8*, i8** %422, align 8
  %424 = load i8**, i8*** %6, align 8
  %425 = load i32, i32* %22, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8*, i8** %424, i64 %426
  store i8* %423, i8** %427, align 8
  br label %428

428:                                              ; preds = %416
  %429 = load i32, i32* %22, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %22, align 4
  br label %412

431:                                              ; preds = %412
  br label %435

432:                                              ; preds = %404
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  br label %435

435:                                              ; preds = %432, %431
  br label %439

436:                                              ; preds = %44, %27
  %437 = load i32, i32* %8, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %8, align 4
  br label %439

439:                                              ; preds = %436, %435
  br label %23

440:                                              ; preds = %23
  %441 = load i32, i32* @help_only, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %440
  %444 = load i32, i32* %9, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %448 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %447, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.458, i64 0, i64 0))
  br label %449

449:                                              ; preds = %446, %443, %440
  %450 = load i32, i32* %5, align 4
  ret i32 %450
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @holmes(i32 %0, i8* %1, i32 %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca [19 x %struct.filter_t], align 16
  %10 = alloca %struct.klatt_frame_t, align 8
  %11 = alloca i16*, align 8
  %12 = alloca %struct.Elm_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.slope_t, align 4
  %17 = alloca %struct.slope_t, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.Elm_s*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.Elm_s*, align 8
  %23 = alloca [19 x %struct.slope_t], align 16
  %24 = alloca [19 x %struct.slope_t], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca [19 x float], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.Elm_s*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i16* %3, i16** %8, align 8
  %36 = load i16*, i16** %8, align 8
  store i16* %36, i16** %11, align 8
  store %struct.Elm_s* getelementptr inbounds ([69 x %struct.Elm_s], [69 x %struct.Elm_s]* @Elements, i64 0, i64 0), %struct.Elm_s** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.klatt_frame_t, %struct.klatt_frame_t* @def_pars, i32 0, i32 0), align 8
  %38 = sitofp i64 %37 to double
  %39 = fmul double 1.100000e+00, %38
  %40 = fptrunc double %39 to float
  store float %40, float* %18, align 4
  %41 = bitcast %struct.klatt_frame_t* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 bitcast (%struct.klatt_frame_t* @def_pars to i8*), i64 320, i1 false)
  %42 = load %struct.Elm_s*, %struct.Elm_s** %12, align 8
  %43 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %42, i32 0, i32 8
  %44 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %43, i64 0, i64 0
  %45 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %44, i32 0, i32 0
  %46 = load float, float* %45, align 8
  %47 = fptosi float %46 to i64
  %48 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 16
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 3
  store i64 60, i64* %49, align 8
  %50 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 25
  store i64 60, i64* %50, align 8
  %51 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 5
  store i64 90, i64* %51, align 8
  %52 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 27
  store i64 90, i64* %52, align 8
  %53 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 7
  store i64 150, i64* %53, align 8
  %54 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 29
  store i64 150, i64* %54, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.klatt_frame_t, %struct.klatt_frame_t* @def_pars, i32 0, i32 31), align 8
  %56 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 31
  store i64 %55, i64* %56, align 8
  call void @parwave_init(%struct.klatt_global_t* @klatt_global)
  %57 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %16, i32 0, i32 1
  store i32 40, i32* %57, align 4
  %58 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %17, i32 0, i32 1
  store i32 40, i32* %58, align 4
  %59 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %17, i32 0, i32 0
  store float 0.000000e+00, float* %59, align 4
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %88, %4
  %61 = load i32, i32* %19, align 4
  %62 = icmp slt i32 %61, 19
  br i1 %62, label %63, label %91

63:                                               ; preds = %60
  %64 = load %struct.Elm_s*, %struct.Elm_s** %12, align 8
  %65 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %64, i32 0, i32 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %65, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [19 x %struct.filter_t], [19 x %struct.filter_t]* %9, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %73, i32 0, i32 2
  store float %70, float* %74, align 4
  %75 = load double, double* @frac, align 8
  %76 = fptrunc double %75 to float
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [19 x %struct.filter_t], [19 x %struct.filter_t]* %9, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %79, i32 0, i32 0
  store float %76, float* %80, align 4
  %81 = load double, double* @frac, align 8
  %82 = fptrunc double %81 to float
  %83 = fsub float 1.000000e+00, %82
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [19 x %struct.filter_t], [19 x %struct.filter_t]* %9, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %86, i32 0, i32 1
  store float %83, float* %87, align 4
  br label %88

88:                                               ; preds = %63
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %19, align 4
  br label %60

91:                                               ; preds = %60
  br label %92

92:                                               ; preds = %650, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %652

96:                                               ; preds = %92
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds [0 x %struct.Elm_s], [0 x %struct.Elm_s]* bitcast ([69 x %struct.Elm_s]* @Elements to [0 x %struct.Elm_s]*), i64 0, i64 %103
  store %struct.Elm_s* %104, %struct.Elm_s** %20, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %13, align 4
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp ugt i32 %114, 0
  br i1 %115, label %116, label %650

116:                                              ; preds = %96
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds [0 x %struct.Elm_s], [0 x %struct.Elm_s]* bitcast ([69 x %struct.Elm_s]* @Elements to [0 x %struct.Elm_s]*), i64 0, i64 %126
  br label %129

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %120
  %130 = phi %struct.Elm_s* [ %127, %120 ], [ getelementptr inbounds ([69 x %struct.Elm_s], [69 x %struct.Elm_s]* @Elements, i64 0, i64 0), %128 ]
  store %struct.Elm_s* %130, %struct.Elm_s** %22, align 8
  %131 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %132 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %131, i32 0, i32 1
  %133 = load i8, i8* %132, align 8
  %134 = sext i8 %133 to i32
  %135 = load %struct.Elm_s*, %struct.Elm_s** %12, align 8
  %136 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %135, i32 0, i32 1
  %137 = load i8, i8* %136, align 8
  %138 = sext i8 %137 to i32
  %139 = icmp sgt i32 %134, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %129
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %142 = icmp ne %struct._IO_FILE* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %145 = load %struct.Elm_s*, %struct.Elm_s** %12, align 8
  %146 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %149 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.460, i64 0, i64 0), i8* %147, i8* %150)
  br label %152

152:                                              ; preds = %143, %140
  %153 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %23, i64 0, i64 0
  %154 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %155 = load %struct.Elm_s*, %struct.Elm_s** %12, align 8
  call void @set_trans(%struct.slope_t* %153, %struct.Elm_s* %154, %struct.Elm_s* %155, i32 0, i32 115)
  br label %172

156:                                              ; preds = %129
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %158 = icmp ne %struct._IO_FILE* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %161 = load %struct.Elm_s*, %struct.Elm_s** %12, align 8
  %162 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %165 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.461, i64 0, i64 0), i8* %163, i8* %166)
  br label %168

168:                                              ; preds = %159, %156
  %169 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %23, i64 0, i64 0
  %170 = load %struct.Elm_s*, %struct.Elm_s** %12, align 8
  %171 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  call void @set_trans(%struct.slope_t* %169, %struct.Elm_s* %170, %struct.Elm_s* %171, i32 1, i32 115)
  br label %172

172:                                              ; preds = %168, %152
  %173 = load %struct.Elm_s*, %struct.Elm_s** %22, align 8
  %174 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %173, i32 0, i32 1
  %175 = load i8, i8* %174, align 8
  %176 = sext i8 %175 to i32
  %177 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %178 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %177, i32 0, i32 1
  %179 = load i8, i8* %178, align 8
  %180 = sext i8 %179 to i32
  %181 = icmp sgt i32 %176, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %172
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %184 = icmp ne %struct._IO_FILE* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %187 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %188 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.Elm_s*, %struct.Elm_s** %22, align 8
  %191 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.460, i64 0, i64 0), i8* %189, i8* %192)
  br label %194

194:                                              ; preds = %185, %182
  %195 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %24, i64 0, i64 0
  %196 = load %struct.Elm_s*, %struct.Elm_s** %22, align 8
  %197 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  call void @set_trans(%struct.slope_t* %195, %struct.Elm_s* %196, %struct.Elm_s* %197, i32 1, i32 101)
  br label %214

198:                                              ; preds = %172
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %200 = icmp ne %struct._IO_FILE* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %203 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %204 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.Elm_s*, %struct.Elm_s** %22, align 8
  %207 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.461, i64 0, i64 0), i8* %205, i8* %208)
  br label %210

210:                                              ; preds = %201, %198
  %211 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %24, i64 0, i64 0
  %212 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %213 = load %struct.Elm_s*, %struct.Elm_s** %22, align 8
  call void @set_trans(%struct.slope_t* %211, %struct.Elm_s* %212, %struct.Elm_s* %213, i32 0, i32 101)
  br label %214

214:                                              ; preds = %210, %194
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %216 = icmp ne %struct._IO_FILE* %215, null
  br i1 %216, label %217, label %286

217:                                              ; preds = %214
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %219 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %220 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.462, i64 0, i64 0), i8* %221)
  store i32 0, i32* %26, align 4
  br label %223

223:                                              ; preds = %237, %217
  %224 = load i32, i32* %26, align 4
  %225 = icmp slt i32 %224, 19
  br i1 %225, label %226, label %240

226:                                              ; preds = %223
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %228 = load i32, i32* %26, align 4
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 32, i32 35
  %232 = load i32, i32* %26, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Ep_name, i64 0, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.463, i64 0, i64 0), i32 %231, i8* %235)
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %26, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %26, align 4
  br label %223

240:                                              ; preds = %223
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.464, i64 0, i64 0))
  store i32 0, i32* %26, align 4
  br label %243

243:                                              ; preds = %259, %240
  %244 = load i32, i32* %26, align 4
  %245 = icmp slt i32 %244, 19
  br i1 %245, label %246, label %262

246:                                              ; preds = %243
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %248 = load i32, i32* %26, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 32, i32 35
  %252 = load i32, i32* %26, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %23, i64 0, i64 %253
  %255 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %254, i32 0, i32 0
  %256 = load float, float* %255, align 8
  %257 = fpext float %256 to double
  %258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.465, i64 0, i64 0), i32 %251, double %257)
  br label %259

259:                                              ; preds = %246
  %260 = load i32, i32* %26, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %26, align 4
  br label %243

262:                                              ; preds = %243
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %264 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.464, i64 0, i64 0))
  store i32 0, i32* %26, align 4
  br label %265

265:                                              ; preds = %280, %262
  %266 = load i32, i32* %26, align 4
  %267 = icmp slt i32 %266, 19
  br i1 %267, label %268, label %283

268:                                              ; preds = %265
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %270 = load i32, i32* %26, align 4
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 32, i32 35
  %274 = load i32, i32* %26, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %23, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.466, i64 0, i64 0), i32 %273, i32 %278)
  br label %280

280:                                              ; preds = %268
  %281 = load i32, i32* %26, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %26, align 4
  br label %265

283:                                              ; preds = %265
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.464, i64 0, i64 0))
  br label %286

286:                                              ; preds = %283, %214
  store i32 0, i32* %25, align 4
  br label %287

287:                                              ; preds = %597, %286
  %288 = load i32, i32* %25, align 4
  %289 = load i32, i32* %21, align 4
  %290 = icmp ult i32 %288, %289
  br i1 %290, label %291, label %602

291:                                              ; preds = %287
  %292 = load float, float* %18, align 4
  %293 = fpext float %292 to double
  %294 = fmul double %293, 8.000000e-01
  %295 = fptrunc double %294 to float
  store float %295, float* %27, align 4
  %296 = load i32, i32* %14, align 4
  %297 = load i32, i32* %15, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %425

299:                                              ; preds = %291
  %300 = load i32, i32* %13, align 4
  store i32 %300, i32* %30, align 4
  %301 = bitcast %struct.slope_t* %16 to i8*
  %302 = bitcast %struct.slope_t* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %301, i8* align 4 %302, i64 8, i1 false)
  store i32 0, i32* %14, align 4
  %303 = load i32, i32* %21, align 4
  store i32 %303, i32* %15, align 4
  br label %304

304:                                              ; preds = %420, %299
  %305 = load i32, i32* %30, align 4
  %306 = load i32, i32* %5, align 4
  %307 = icmp ule i32 %305, %306
  br i1 %307, label %308, label %424

308:                                              ; preds = %304
  %309 = load i32, i32* %30, align 4
  %310 = load i32, i32* %5, align 4
  %311 = icmp ult i32 %309, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %308
  %313 = load i8*, i8** %6, align 8
  %314 = load i32, i32* %30, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %30, align 4
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %313, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds [0 x %struct.Elm_s], [0 x %struct.Elm_s]* bitcast ([69 x %struct.Elm_s]* @Elements to [0 x %struct.Elm_s]*), i64 0, i64 %319
  br label %322

321:                                              ; preds = %308
  br label %322

322:                                              ; preds = %321, %312
  %323 = phi %struct.Elm_s* [ %320, %312 ], [ getelementptr inbounds ([69 x %struct.Elm_s], [69 x %struct.Elm_s]* @Elements, i64 0, i64 0), %321 ]
  store %struct.Elm_s* %323, %struct.Elm_s** %31, align 8
  %324 = load i32, i32* %30, align 4
  %325 = load i32, i32* %5, align 4
  %326 = icmp ult i32 %324, %325
  br i1 %326, label %327, label %335

327:                                              ; preds = %322
  %328 = load i8*, i8** %6, align 8
  %329 = load i32, i32* %30, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %30, align 4
  %331 = zext i32 %329 to i64
  %332 = getelementptr inbounds i8, i8* %328, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  br label %336

335:                                              ; preds = %322
  br label %336

336:                                              ; preds = %335, %327
  %337 = phi i32 [ %334, %327 ], [ 0, %335 ]
  store i32 %337, i32* %32, align 4
  %338 = load i32, i32* %30, align 4
  %339 = load i32, i32* %5, align 4
  %340 = icmp ult i32 %338, %339
  br i1 %340, label %341, label %349

341:                                              ; preds = %336
  %342 = load i8*, i8** %6, align 8
  %343 = load i32, i32* %30, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %30, align 4
  %345 = zext i32 %343 to i64
  %346 = getelementptr inbounds i8, i8* %342, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  br label %350

349:                                              ; preds = %336
  br label %350

350:                                              ; preds = %349, %341
  %351 = phi i32 [ %348, %341 ], [ 3, %349 ]
  store i32 %351, i32* %33, align 4
  %352 = load i32, i32* %33, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %360, label %354

354:                                              ; preds = %350
  %355 = load %struct.Elm_s*, %struct.Elm_s** %31, align 8
  %356 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %355, i32 0, i32 7
  %357 = load i64, i64* %356, align 8
  %358 = and i64 %357, 268435456
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %420

360:                                              ; preds = %354, %350
  store i32 0, i32* %34, align 4
  %361 = load i32, i32* %33, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %360
  %364 = load i32, i32* %33, align 4
  %365 = uitofp i32 %364 to float
  %366 = fdiv float %365, 3.000000e+00
  %367 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %17, i32 0, i32 0
  store float %366, float* %367, align 4
  br label %370

368:                                              ; preds = %360
  %369 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %17, i32 0, i32 0
  store float 0x3FB99999A0000000, float* %369, align 4
  br label %370

370:                                              ; preds = %368, %363
  br label %371

371:                                              ; preds = %413, %370
  %372 = load i32, i32* %32, align 4
  %373 = load i32, i32* %34, align 4
  %374 = add i32 %373, %372
  store i32 %374, i32* %34, align 4
  %375 = load i32, i32* %30, align 4
  %376 = load i32, i32* %5, align 4
  %377 = icmp ult i32 %375, %376
  br i1 %377, label %378, label %387

378:                                              ; preds = %371
  %379 = load i8*, i8** %6, align 8
  %380 = load i32, i32* %30, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %30, align 4
  %382 = zext i32 %380 to i64
  %383 = getelementptr inbounds i8, i8* %379, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i64
  %386 = getelementptr inbounds [0 x %struct.Elm_s], [0 x %struct.Elm_s]* bitcast ([69 x %struct.Elm_s]* @Elements to [0 x %struct.Elm_s]*), i64 0, i64 %385
  br label %388

387:                                              ; preds = %371
  br label %388

388:                                              ; preds = %387, %378
  %389 = phi %struct.Elm_s* [ %386, %378 ], [ getelementptr inbounds ([69 x %struct.Elm_s], [69 x %struct.Elm_s]* @Elements, i64 0, i64 0), %387 ]
  store %struct.Elm_s* %389, %struct.Elm_s** %31, align 8
  %390 = load i8*, i8** %6, align 8
  %391 = load i32, i32* %30, align 4
  %392 = add i32 %391, 1
  store i32 %392, i32* %30, align 4
  %393 = zext i32 %391 to i64
  %394 = getelementptr inbounds i8, i8* %390, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i32
  store i32 %396, i32* %32, align 4
  br label %397

397:                                              ; preds = %388
  %398 = load %struct.Elm_s*, %struct.Elm_s** %31, align 8
  %399 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %398, i32 0, i32 7
  %400 = load i64, i64* %399, align 8
  %401 = and i64 %400, 268435456
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %413

403:                                              ; preds = %397
  %404 = load i8*, i8** %6, align 8
  %405 = load i32, i32* %30, align 4
  %406 = add i32 %405, 1
  store i32 %406, i32* %30, align 4
  %407 = zext i32 %405 to i64
  %408 = getelementptr inbounds i8, i8* %404, i64 %407
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = load i32, i32* %33, align 4
  %412 = icmp eq i32 %410, %411
  br label %413

413:                                              ; preds = %403, %397
  %414 = phi i1 [ false, %397 ], [ %412, %403 ]
  br i1 %414, label %371, label %415

415:                                              ; preds = %413
  %416 = load i32, i32* %34, align 4
  %417 = udiv i32 %416, 2
  %418 = load i32, i32* %15, align 4
  %419 = add i32 %418, %417
  store i32 %419, i32* %15, align 4
  br label %424

420:                                              ; preds = %354
  %421 = load i32, i32* %32, align 4
  %422 = load i32, i32* %15, align 4
  %423 = add i32 %422, %421
  store i32 %423, i32* %15, align 4
  br label %304

424:                                              ; preds = %415, %304
  br label %425

425:                                              ; preds = %424, %291
  store i32 0, i32* %29, align 4
  br label %426

426:                                              ; preds = %461, %425
  %427 = load i32, i32* %29, align 4
  %428 = icmp slt i32 %427, 19
  br i1 %428, label %429, label %464

429:                                              ; preds = %426
  %430 = getelementptr inbounds [19 x %struct.filter_t], [19 x %struct.filter_t]* %9, i64 0, i64 0
  %431 = load i32, i32* %29, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %430, i64 %432
  %434 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %435 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %434, i32 0, i32 0
  %436 = load i8*, i8** %435, align 8
  %437 = load i32, i32* %29, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [19 x i8*], [19 x i8*]* @Ep_name, i64 0, i64 %438
  %440 = load i8*, i8** %439, align 8
  %441 = load i32, i32* %29, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %23, i64 0, i64 %442
  %444 = load i32, i32* %29, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %24, i64 0, i64 %445
  %447 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  %448 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %447, i32 0, i32 8
  %449 = load i32, i32* %29, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %448, i64 0, i64 %450
  %452 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %451, i32 0, i32 0
  %453 = load float, float* %452, align 4
  %454 = load i32, i32* %25, align 4
  %455 = load i32, i32* %21, align 4
  %456 = call float @interpolate(i8* %436, i8* %440, %struct.slope_t* %443, %struct.slope_t* %446, float %453, i32 %454, i32 %455)
  %457 = call float @filter(%struct.filter_t* %433, float %456)
  %458 = load i32, i32* %29, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 %459
  store float %457, float* %460, align 4
  br label %461

461:                                              ; preds = %429
  %462 = load i32, i32* %29, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %29, align 4
  br label %426

464:                                              ; preds = %426
  %465 = load float, float* %27, align 4
  %466 = load float, float* %18, align 4
  %467 = load float, float* %27, align 4
  %468 = fsub float %466, %467
  %469 = load i32, i32* %14, align 4
  %470 = load i32, i32* %15, align 4
  %471 = call float @interpolate(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8.467, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.468, i64 0, i64 0), %struct.slope_t* %16, %struct.slope_t* %17, float 0.000000e+00, i32 %469, i32 %470)
  %472 = fmul float %468, %471
  %473 = fadd float %465, %472
  %474 = fptosi float %473 to i64
  %475 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 0
  store i64 %474, i64* %475, align 8
  %476 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 15
  %477 = load float, float* %476, align 4
  %478 = fptosi float %477 to i64
  %479 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 38
  store i64 %478, i64* %479, align 8
  %480 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 1
  store i64 %478, i64* %480, align 8
  %481 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 18
  %482 = load float, float* %481, align 8
  %483 = fptosi float %482 to i64
  %484 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 22
  store i64 %483, i64* %484, align 8
  %485 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 0
  %486 = load float, float* %485, align 16
  %487 = fptosi float %486 to i64
  %488 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 14
  store i64 %487, i64* %488, align 8
  %489 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 17
  %490 = load float, float* %489, align 4
  %491 = fptosi float %490 to i64
  %492 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 18
  store i64 %491, i64* %492, align 8
  %493 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 16
  %494 = load float, float* %493, align 16
  %495 = fptosi float %494 to i64
  %496 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 20
  store i64 %495, i64* %496, align 8
  %497 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 4
  %498 = load float, float* %497, align 16
  %499 = fptosi float %498 to i64
  %500 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 3
  store i64 %499, i64* %500, align 8
  %501 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 25
  store i64 %499, i64* %501, align 8
  %502 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 5
  %503 = load float, float* %502, align 4
  %504 = fptosi float %503 to i64
  %505 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 5
  store i64 %504, i64* %505, align 8
  %506 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 27
  store i64 %504, i64* %506, align 8
  %507 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 6
  %508 = load float, float* %507, align 8
  %509 = fptosi float %508 to i64
  %510 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 7
  store i64 %509, i64* %510, align 8
  %511 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 29
  store i64 %509, i64* %511, align 8
  %512 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 1
  %513 = load float, float* %512, align 4
  %514 = fptosi float %513 to i64
  %515 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 2
  store i64 %514, i64* %515, align 8
  %516 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 2
  %517 = load float, float* %516, align 8
  %518 = fptosi float %517 to i64
  %519 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 4
  store i64 %518, i64* %519, align 8
  %520 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 3
  %521 = load float, float* %520, align 4
  %522 = fptosi float %521 to i64
  %523 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 6
  store i64 %522, i64* %523, align 8
  %524 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 14
  %525 = load float, float* %524, align 8
  %526 = fadd float 1.400000e+01, %525
  %527 = fptosi float %526 to i64
  %528 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 37
  store i64 %527, i64* %528, align 8
  %529 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 12
  %530 = load float, float* %529, align 16
  %531 = fadd float 1.400000e+01, %530
  %532 = fptosi float %531 to i64
  %533 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 32
  store i64 %532, i64* %533, align 8
  %534 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 13
  %535 = load float, float* %534, align 4
  %536 = fadd float 1.400000e+01, %535
  %537 = fptosi float %536 to i64
  %538 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 34
  store i64 %537, i64* %538, align 8
  %539 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 8
  %540 = load float, float* %539, align 16
  %541 = fadd float 1.400000e+01, %540
  %542 = fptosi float %541 to i64
  %543 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 24
  store i64 %542, i64* %543, align 8
  %544 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 9
  %545 = load float, float* %544, align 4
  %546 = fadd float 1.400000e+01, %545
  %547 = fptosi float %546 to i64
  %548 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 26
  store i64 %547, i64* %548, align 8
  %549 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 10
  %550 = load float, float* %549, align 8
  %551 = fadd float 1.400000e+01, %550
  %552 = fptosi float %551 to i64
  %553 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 28
  store i64 %552, i64* %553, align 8
  %554 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 11
  %555 = load float, float* %554, align 4
  %556 = fadd float 1.400000e+01, %555
  %557 = fptosi float %556 to i64
  %558 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 30
  store i64 %557, i64* %558, align 8
  %559 = load i16*, i16** %11, align 8
  call void @parwave(%struct.klatt_global_t* @klatt_global, %struct.klatt_frame_t* %10, i16* %559)
  %560 = load i64, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 7), align 8
  %561 = load i16*, i16** %11, align 8
  %562 = getelementptr inbounds i16, i16* %561, i64 %560
  store i16* %562, i16** %11, align 8
  %563 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %564 = icmp ne %struct._IO_FILE* %563, null
  br i1 %564, label %565, label %583

565:                                              ; preds = %464
  store i32 0, i32* %29, align 4
  br label %566

566:                                              ; preds = %577, %565
  %567 = load i32, i32* %29, align 4
  %568 = icmp slt i32 %567, 19
  br i1 %568, label %569, label %580

569:                                              ; preds = %566
  %570 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %571 = load i32, i32* %29, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 %572
  %574 = load float, float* %573, align 4
  %575 = fpext float %574 to double
  %576 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %570, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.469, i64 0, i64 0), double %575)
  br label %577

577:                                              ; preds = %569
  %578 = load i32, i32* %29, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %29, align 4
  br label %566

580:                                              ; preds = %566
  %581 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %582 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %581, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.464, i64 0, i64 0))
  br label %583

583:                                              ; preds = %580, %464
  %584 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %585 = icmp ne %struct._IO_FILE* %584, null
  br i1 %585, label %586, label %592

586:                                              ; preds = %583
  %587 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %10, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = sitofp i64 %588 to double
  %590 = fmul double %589, 1.000000e-01
  %591 = getelementptr inbounds [19 x float], [19 x float]* %28, i64 0, i64 0
  call void @jsru_save(double %590, float* %591)
  br label %592

592:                                              ; preds = %586, %583
  %593 = load float, float* %18, align 4
  %594 = fpext float %593 to double
  %595 = fsub double %594, 5.000000e-01
  %596 = fptrunc double %595 to float
  store float %596, float* %18, align 4
  br label %597

597:                                              ; preds = %592
  %598 = load i32, i32* %25, align 4
  %599 = add i32 %598, 1
  store i32 %599, i32* %25, align 4
  %600 = load i32, i32* %14, align 4
  %601 = add i32 %600, 1
  store i32 %601, i32* %14, align 4
  br label %287

602:                                              ; preds = %287
  %603 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %604 = icmp ne %struct._IO_FILE* %603, null
  br i1 %604, label %605, label %649

605:                                              ; preds = %602
  store i32 0, i32* %35, align 4
  br label %606

606:                                              ; preds = %622, %605
  %607 = load i32, i32* %35, align 4
  %608 = icmp slt i32 %607, 19
  br i1 %608, label %609, label %625

609:                                              ; preds = %606
  %610 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %611 = load i32, i32* %35, align 4
  %612 = icmp ne i32 %611, 0
  %613 = zext i1 %612 to i64
  %614 = select i1 %612, i32 32, i32 35
  %615 = load i32, i32* %35, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %24, i64 0, i64 %616
  %618 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %617, i32 0, i32 0
  %619 = load float, float* %618, align 8
  %620 = fpext float %619 to double
  %621 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %610, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.465, i64 0, i64 0), i32 %614, double %620)
  br label %622

622:                                              ; preds = %609
  %623 = load i32, i32* %35, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %35, align 4
  br label %606

625:                                              ; preds = %606
  %626 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %627 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %626, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.464, i64 0, i64 0))
  store i32 0, i32* %35, align 4
  br label %628

628:                                              ; preds = %643, %625
  %629 = load i32, i32* %35, align 4
  %630 = icmp slt i32 %629, 19
  br i1 %630, label %631, label %646

631:                                              ; preds = %628
  %632 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %633 = load i32, i32* %35, align 4
  %634 = icmp ne i32 %633, 0
  %635 = zext i1 %634 to i64
  %636 = select i1 %634, i32 32, i32 35
  %637 = load i32, i32* %35, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [19 x %struct.slope_t], [19 x %struct.slope_t]* %24, i64 0, i64 %638
  %640 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %632, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.466, i64 0, i64 0), i32 %636, i32 %641)
  br label %643

643:                                              ; preds = %631
  %644 = load i32, i32* %35, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %35, align 4
  br label %628

646:                                              ; preds = %628
  %647 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %648 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %647, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.464, i64 0, i64 0))
  br label %649

649:                                              ; preds = %646, %602
  br label %650

650:                                              ; preds = %649, %96
  %651 = load %struct.Elm_s*, %struct.Elm_s** %20, align 8
  store %struct.Elm_s* %651, %struct.Elm_s** %12, align 8
  br label %92

652:                                              ; preds = %92
  %653 = load i16*, i16** %11, align 8
  %654 = load i16*, i16** %8, align 8
  %655 = ptrtoint i16* %653 to i64
  %656 = ptrtoint i16* %654 to i64
  %657 = sub i64 %655, %656
  %658 = sdiv exact i64 %657, 2
  %659 = trunc i64 %658 to i32
  ret i32 %659
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_trans(%struct.slope_t* %0, %struct.Elm_s* %1, %struct.Elm_s* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.slope_t*, align 8
  %7 = alloca %struct.Elm_s*, align 8
  %8 = alloca %struct.Elm_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.slope_t* %0, %struct.slope_t** %6, align 8
  store %struct.Elm_s* %1, %struct.Elm_s** %7, align 8
  store %struct.Elm_s* %2, %struct.Elm_s** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %98, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 19
  br i1 %14, label %15, label %101

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.Elm_s*, %struct.Elm_s** %7, align 8
  %20 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %19, i32 0, i32 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %20, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  br label %36

27:                                               ; preds = %15
  %28 = load %struct.Elm_s*, %struct.Elm_s** %7, align 8
  %29 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %28, i32 0, i32 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %29, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %32, i32 0, i32 4
  %34 = load i8, i8* %33, align 2
  %35 = sext i8 %34 to i32
  br label %36

36:                                               ; preds = %27, %18
  %37 = phi i32 [ %26, %18 ], [ %35, %27 ]
  %38 = load i32, i32* @speed, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load %struct.slope_t*, %struct.slope_t** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %40, i64 %42
  %44 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  %45 = load %struct.slope_t*, %struct.slope_t** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %36
  %53 = load %struct.Elm_s*, %struct.Elm_s** %7, align 8
  %54 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %53, i32 0, i32 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %54, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %57, i32 0, i32 1
  %59 = load float, float* %58, align 4
  %60 = load %struct.Elm_s*, %struct.Elm_s** %7, align 8
  %61 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %60, i32 0, i32 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %64, i32 0, i32 2
  %66 = load i8, i8* %65, align 4
  %67 = sext i8 %66 to i32
  %68 = sitofp i32 %67 to float
  %69 = load %struct.Elm_s*, %struct.Elm_s** %8, align 8
  %70 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %69, i32 0, i32 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %70, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %73, i32 0, i32 0
  %75 = load float, float* %74, align 4
  %76 = fmul float %68, %75
  %77 = fmul float %76, 0x3F847AE140000000
  %78 = fadd float %59, %77
  %79 = load %struct.slope_t*, %struct.slope_t** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %79, i64 %81
  %83 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %82, i32 0, i32 0
  store float %78, float* %83, align 4
  br label %97

84:                                               ; preds = %36
  %85 = load %struct.Elm_s*, %struct.Elm_s** %8, align 8
  %86 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %85, i32 0, i32 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [19 x %struct.interp_t], [19 x %struct.interp_t]* %86, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.interp_t, %struct.interp_t* %89, i32 0, i32 0
  %91 = load float, float* %90, align 4
  %92 = load %struct.slope_t*, %struct.slope_t** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %92, i64 %94
  %96 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %95, i32 0, i32 0
  store float %91, float* %96, align 4
  br label %97

97:                                               ; preds = %84, %52
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %12

101:                                              ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @interpolate(i8* %0, i8* %1, %struct.slope_t* %2, %struct.slope_t* %3, float %4, i32 %5, i32 %6) #0 {
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.slope_t*, align 8
  %12 = alloca %struct.slope_t*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.slope_t* %2, %struct.slope_t** %11, align 8
  store %struct.slope_t* %3, %struct.slope_t** %12, align 8
  store float %4, float* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load %struct.slope_t*, %struct.slope_t** %11, align 8
  %22 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.slope_t*, %struct.slope_t** %12, align 8
  %25 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = sub nsw i32 %20, %27
  %29 = sitofp i32 %28 to float
  store float %29, float* %16, align 4
  %30 = load float, float* %16, align 4
  %31 = fcmp oge float %30, 0.000000e+00
  br i1 %31, label %32, label %74

32:                                               ; preds = %7
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.slope_t*, %struct.slope_t** %11, align 8
  %35 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.slope_t*, %struct.slope_t** %11, align 8
  %40 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = load float, float* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.slope_t*, %struct.slope_t** %11, align 8
  %45 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call float @linear(float %41, float %42, i32 %43, i32 %46)
  store float %47, float* %8, align 4
  br label %109

48:                                               ; preds = %32
  %49 = load %struct.slope_t*, %struct.slope_t** %11, align 8
  %50 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sitofp i32 %54 to float
  %56 = load float, float* %16, align 4
  %57 = fcmp ole float %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load float, float* %13, align 4
  store float %59, float* %8, align 4
  br label %109

60:                                               ; preds = %48
  %61 = load float, float* %13, align 4
  %62 = load %struct.slope_t*, %struct.slope_t** %12, align 8
  %63 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sitofp i32 %65 to float
  %67 = load float, float* %16, align 4
  %68 = fsub float %66, %67
  %69 = fptosi float %68 to i32
  %70 = load %struct.slope_t*, %struct.slope_t** %12, align 8
  %71 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call float @linear(float %61, float %64, i32 %69, i32 %72)
  store float %73, float* %8, align 4
  br label %109

74:                                               ; preds = %7
  %75 = load i32, i32* %14, align 4
  %76 = sitofp i32 %75 to float
  %77 = load i32, i32* %15, align 4
  %78 = sitofp i32 %77 to float
  %79 = fdiv float %76, %78
  %80 = fsub float 1.000000e+00, %79
  store float %80, float* %17, align 4
  %81 = load %struct.slope_t*, %struct.slope_t** %11, align 8
  %82 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %81, i32 0, i32 0
  %83 = load float, float* %82, align 4
  %84 = load float, float* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.slope_t*, %struct.slope_t** %11, align 8
  %87 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call float @linear(float %83, float %84, i32 %85, i32 %88)
  store float %89, float* %18, align 4
  %90 = load %struct.slope_t*, %struct.slope_t** %12, align 8
  %91 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %90, i32 0, i32 0
  %92 = load float, float* %91, align 4
  %93 = load float, float* %13, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.slope_t*, %struct.slope_t** %12, align 8
  %98 = getelementptr inbounds %struct.slope_t, %struct.slope_t* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call float @linear(float %92, float %93, i32 %96, i32 %99)
  store float %100, float* %19, align 4
  %101 = load float, float* %17, align 4
  %102 = load float, float* %18, align 4
  %103 = fmul float %101, %102
  %104 = load float, float* %17, align 4
  %105 = fsub float 1.000000e+00, %104
  %106 = load float, float* %19, align 4
  %107 = fmul float %105, %106
  %108 = fadd float %103, %107
  store float %108, float* %8, align 4
  br label %109

109:                                              ; preds = %74, %60, %58, %38
  %110 = load float, float* %8, align 4
  ret float %110
}

; Function Attrs: noinline nounwind uwtable
define internal float @filter(%struct.filter_t* %0, float %1) #0 {
  %3 = alloca %struct.filter_t*, align 8
  %4 = alloca float, align 4
  store %struct.filter_t* %0, %struct.filter_t** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %struct.filter_t*, %struct.filter_t** %3, align 8
  %6 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %5, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = load float, float* %4, align 4
  %9 = fmul float %7, %8
  %10 = load %struct.filter_t*, %struct.filter_t** %3, align 8
  %11 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %10, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = load %struct.filter_t*, %struct.filter_t** %3, align 8
  %14 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %13, i32 0, i32 2
  %15 = load float, float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %9, %16
  %18 = load %struct.filter_t*, %struct.filter_t** %3, align 8
  %19 = getelementptr inbounds %struct.filter_t, %struct.filter_t* %18, i32 0, i32 2
  store float %17, float* %19, align 4
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal void @jsru_save(double %0, float* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca float*, align 8
  store double %0, double* %3, align 8
  store float* %1, float** %4, align 8
  %5 = load double, double* %3, align 8
  %6 = fdiv double %5, 2.500000e+01
  %7 = call double @log(double %6) #6
  %8 = call double @log(double 2.000000e+00) #6
  %9 = fdiv double %7, %8
  %10 = fmul double 1.600000e+01, %9
  %11 = fsub double %10, 1.000000e+00
  store double %11, double* %3, align 8
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = call i32 @jsru_freq(float %14, float 9.500000e+01, float 5.000000e+00)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %17 = call i32 @fputc(i32 %15, %struct._IO_FILE* %16)
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 7
  %20 = load float, float* %19, align 4
  %21 = call i32 @jsru_amp(float %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %23 = call i32 @fputc(i32 %21, %struct._IO_FILE* %22)
  %24 = load float*, float** %4, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = call i32 @jsru_freq(float %26, float 1.250000e+02, float 2.500000e+01)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %29 = call i32 @fputc(i32 %27, %struct._IO_FILE* %28)
  %30 = load float*, float** %4, align 8
  %31 = getelementptr inbounds float, float* %30, i64 8
  %32 = load float, float* %31, align 4
  %33 = call i32 @jsru_amp(float %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %35 = call i32 @fputc(i32 %33, %struct._IO_FILE* %34)
  %36 = load float*, float** %4, align 8
  %37 = getelementptr inbounds float, float* %36, i64 2
  %38 = load float, float* %37, align 4
  %39 = call i32 @jsru_freq(float %38, float 5.500000e+02, float 5.000000e+01)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %41 = call i32 @fputc(i32 %39, %struct._IO_FILE* %40)
  %42 = load float*, float** %4, align 8
  %43 = getelementptr inbounds float, float* %42, i64 9
  %44 = load float, float* %43, align 4
  %45 = call i32 @jsru_amp(float %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %47 = call i32 @fputc(i32 %45, %struct._IO_FILE* %46)
  %48 = load float*, float** %4, align 8
  %49 = getelementptr inbounds float, float* %48, i64 3
  %50 = load float, float* %49, align 4
  %51 = call i32 @jsru_freq(float %50, float 1.350000e+03, float 5.000000e+01)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %53 = call i32 @fputc(i32 %51, %struct._IO_FILE* %52)
  %54 = load float*, float** %4, align 8
  %55 = getelementptr inbounds float, float* %54, i64 10
  %56 = load float, float* %55, align 4
  %57 = call i32 @jsru_amp(float %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %59 = call i32 @fputc(i32 %57, %struct._IO_FILE* %58)
  %60 = load float*, float** %4, align 8
  %61 = getelementptr inbounds float, float* %60, i64 11
  %62 = load float, float* %61, align 4
  %63 = call i32 @jsru_amp(float %62)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %65 = call i32 @fputc(i32 %63, %struct._IO_FILE* %64)
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 15
  %68 = load float, float* %67, align 4
  %69 = call i32 @jsru_amp(float %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %71 = call i32 @fputc(i32 %69, %struct._IO_FILE* %70)
  %72 = load double, double* %3, align 8
  %73 = fptosi double %72 to i32
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %75 = call i32 @fputc(i32 %73, %struct._IO_FILE* %74)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %77 = call i32 @fputc(i32 32, %struct._IO_FILE* %76)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @jsru_freq(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load float, float* %4, align 4
  %9 = load float, float* %5, align 4
  %10 = fsub float %8, %9
  %11 = load float, float* %6, align 4
  %12 = fdiv float %10, %11
  store float %12, float* %4, align 4
  %13 = load float, float* %4, align 4
  %14 = fptosi float %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 64
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 63, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @jsru_amp(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fptosi float %4 to i32
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 64
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 63, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal float @linear(float %0, float %1, i32 %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load float, float* %6, align 4
  store float %14, float* %5, align 4
  br label %34

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load float, float* %7, align 4
  store float %20, float* %5, align 4
  br label %34

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = sitofp i32 %22 to float
  %24 = load i32, i32* %9, align 4
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %23, %25
  store float %26, float* %10, align 4
  %27 = load float, float* %6, align 4
  %28 = load float, float* %7, align 4
  %29 = load float, float* %6, align 4
  %30 = fsub float %28, %29
  %31 = load float, float* %10, align 4
  %32 = fmul float %30, %31
  %33 = fadd float %27, %32
  store float %33, float* %5, align 4
  br label %34

34:                                               ; preds = %21, %19, %13
  %35 = load float, float* %5, align 4
  ret float %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init_holmes(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 (i8*, i32, i8**, ...) @getargs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.470, i64 0, i64 0), i32 %8, i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.471, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8.467, i64 0, i64 0), i8** %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13.472, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.473, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8.467, i64 0, i64 0), i8** %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15.474, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.475, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.476, i64 0, i64 0), i32* @speed, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18.477, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19.478, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20.479, i64 0, i64 0), double* @frac, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21.480, i64 0, i64 0), i8* null)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @help_only, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22.481, i64 0, i64 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** @par_file, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %22 = icmp ne %struct._IO_FILE* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  call void @perror(i8* %24)
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = call %struct._IO_FILE* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22.481, i64 0, i64 0))
  store %struct._IO_FILE* %31, %struct._IO_FILE** @jsru_file, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %33 = icmp ne %struct._IO_FILE* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  call void @perror(i8* %35)
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @term_holmes() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %2 = icmp ne %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @par_file, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @jsru_file, align 8
  %11 = call i32 @fclose(%struct._IO_FILE* %10)
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @audio_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @prog, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 (i8*, i32, i8**, ...) @getargs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.488, i64 0, i64 0), i32 %11, i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.489, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.490, i64 0, i64 0), i32* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5.491, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.492, i64 0, i64 0), i8* null, i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.493, i64 0, i64 0), i8* null)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @help_only, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @audio_open()
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* @samp_rate, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @dev_fd, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @dev_fd, align 4
  %34 = call i32 (i32, i64, ...) @ioctl(i32 %33, i64 3221508098, i64* @samp_rate) #6
  %35 = load i64, i64* @samp_rate, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8.494, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @audio_open() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @dev_file, align 8
  %3 = call i32 (i8*, i32, ...) @open(i8* %2, i32 2049)
  store i32 %3, i32* @dev_fd, align 4
  %4 = load i32, i32* @dev_fd, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i8*, i8** @dev_file, align 8
  call void @perror(i8* %7)
  store i32 0, i32* %1, align 4
  br label %9

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local i32 @ioctl(i32, i64, ...) #3

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @audio_term() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @dev_fd, align 4
  %3 = icmp sge i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @dev_fd, align 4
  %6 = call i32 (i32, i64, ...) @ioctl(i32 %5, i64 20481, i32* %1) #6
  %7 = load i32, i32* @dev_fd, align 4
  %8 = call i32 @close(i32 %7)
  store i32 -1, i32* @dev_fd, align 4
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i32, i32* @linear_fd.495, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* @linear_fd.495, align 4
  %14 = load i32, i32* @linear_fd.495, align 4
  %15 = call i64 @lseek(i32 %14, i64 0, i32 1) #6
  %16 = call i32 @ftruncate(i32 %13, i64 %15) #6
  %17 = load i32, i32* @linear_fd.495, align 4
  %18 = call i32 @close(i32 %17)
  store i32 -1, i32* @linear_fd.495, align 4
  br label %19

19:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @audio_play(i32 %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i16* %1, i16** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %70

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @malloc(i64 %11) #6
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9.496, i64 0, i64 0))
  call void @exit(i32 3) #9
  unreachable

18:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i16*, i16** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %29, 32768
  %31 = sdiv i32 %30, 256
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %32, i8* %36, align 1
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load i32, i32* @linear_fd.495, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* @linear_fd.495, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = call i64 @write(i32 %44, i8* %45, i64 %47)
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.497, i64 0, i64 0))
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* @dev_fd, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* @dev_fd, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = call i64 @write(i32 %58, i8* %59, i64 %61)
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.497, i64 0, i64 0))
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %54
  %69 = load i8*, i8** %5, align 8
  call void @free(i8* %69) #6
  br label %70

70:                                               ; preds = %68, %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_parms(%struct.klatt_global_t* %0, i32* %1) #0 {
  %3 = alloca %struct.klatt_global_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @show_parms.names, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @show_parms.names, align 4
  %8 = srem i32 %6, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 40
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [40 x i8*], [40 x i8*]* @par_name, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41.539, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %11

23:                                               ; preds = %11
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.540, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 40
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [40 x i8*], [40 x i8*]* @par_name, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strlen(i8* %33) #8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43.541, i64 0, i64 0), i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %26

45:                                               ; preds = %26
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.540, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parwave(%struct.klatt_global_t* %0, %struct.klatt_frame_t* %1, i16* %2) #0 {
  %4 = alloca %struct.klatt_global_t*, align 8
  %5 = alloca %struct.klatt_frame_t*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i64, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %4, align 8
  store %struct.klatt_frame_t* %1, %struct.klatt_frame_t** %5, align 8
  store i16* %2, i16** %6, align 8
  store float 0.000000e+00, float* %8, align 4
  %20 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %21 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %5, align 8
  call void @frame_init(%struct.klatt_global_t* %20, %struct.klatt_frame_t* %21)
  %22 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %23 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @time_count, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @time_count, align 4
  %29 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %30 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %5, align 8
  call void @flutter(%struct.klatt_global_t* %29, %struct.klatt_frame_t* %30)
  br label %31

31:                                               ; preds = %26, %3
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %211, %31
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %35 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %214

38:                                               ; preds = %32
  %39 = load i64, i64* @parwave.seed, align 8
  %40 = mul i64 %39, 1664525
  %41 = add i64 %40, 1
  store i64 %41, i64* @parwave.seed, align 8
  %42 = load i64, i64* @parwave.seed, align 8
  %43 = and i64 %42, 4294967295
  store i64 %43, i64* @parwave.seed, align 8
  %44 = load i64, i64* @parwave.seed, align 8
  %45 = shl i64 %44, 32
  %46 = ashr i64 %45, 50
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = sitofp i64 %47 to double
  %49 = load float, float* @nlast, align 4
  %50 = fpext float %49 to double
  %51 = fmul double 7.500000e-01, %50
  %52 = fadd double %48, %51
  %53 = fptrunc double %52 to float
  store float %53, float* %9, align 4
  %54 = load float, float* %9, align 4
  store float %54, float* @nlast, align 4
  %55 = load i64, i64* @nper, align 8
  %56 = load i64, i64* @nmod, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %38
  %59 = load float, float* %9, align 4
  %60 = fpext float %59 to double
  %61 = fmul double %60, 5.000000e-01
  %62 = fptrunc double %61 to float
  store float %62, float* %9, align 4
  br label %63

63:                                               ; preds = %58, %38
  %64 = load float, float* @amp_frica, align 4
  %65 = load float, float* %9, align 4
  %66 = fmul float %64, %65
  store float %66, float* %15, align 4
  store float %66, float* %11, align 4
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %94, %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %97

70:                                               ; preds = %67
  %71 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %72 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* @nper, align 8
  %77 = call float @impulsive_source(i64 %76)
  store float %77, float* %14, align 4
  br label %81

78:                                               ; preds = %70
  %79 = load i64, i64* @nper, align 8
  %80 = call float @natural_source(i64 %79)
  store float %80, float* %14, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* @nper, align 8
  %83 = load i64, i64* @T0, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  store i64 0, i64* @nper, align 8
  %86 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %87 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %5, align 8
  %88 = load i64, i64* %7, align 8
  call void @pitch_synch_par_reset(%struct.klatt_global_t* %86, %struct.klatt_frame_t* %87, i64 %88)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load float, float* %14, align 4
  %91 = call float @resonator(%struct.resonator_t* @rlp, float %90)
  store float %91, float* %14, align 4
  %92 = load i64, i64* @nper, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* @nper, align 8
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %67

97:                                               ; preds = %67
  %98 = load float, float* %14, align 4
  %99 = load float, float* @onemd, align 4
  %100 = fmul float %98, %99
  %101 = load float, float* @vlast, align 4
  %102 = load float, float* @decay, align 4
  %103 = fmul float %101, %102
  %104 = fadd float %100, %103
  store float %104, float* %14, align 4
  %105 = load float, float* %14, align 4
  store float %105, float* @vlast, align 4
  %106 = load i64, i64* @nper, align 8
  %107 = load i64, i64* @nopen, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = load float, float* @amp_breth, align 4
  %111 = load i64, i64* %17, align 8
  %112 = sitofp i64 %111 to float
  %113 = fmul float %110, %112
  %114 = load float, float* %14, align 4
  %115 = fadd float %114, %113
  store float %115, float* %14, align 4
  br label %116

116:                                              ; preds = %109, %97
  %117 = load float, float* @amp_voice, align 4
  %118 = load float, float* %14, align 4
  %119 = fmul float %117, %118
  store float %119, float* %12, align 4
  %120 = load float, float* @amp_aspir, align 4
  %121 = load float, float* %9, align 4
  %122 = fmul float %120, %121
  store float %122, float* %16, align 4
  %123 = load float, float* %16, align 4
  %124 = load float, float* %12, align 4
  %125 = fadd float %124, %123
  store float %125, float* %12, align 4
  %126 = load float, float* %12, align 4
  store float %126, float* %13, align 4
  %127 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %128 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 2
  br i1 %130, label %131, label %165

131:                                              ; preds = %116
  %132 = load float, float* %12, align 4
  %133 = call float @antiresonator(%struct.resonator_t* @rnz, float %132)
  store float %133, float* %18, align 4
  %134 = load float, float* %18, align 4
  %135 = call float @resonator(%struct.resonator_t* @rnpc, float %134)
  store float %135, float* %19, align 4
  %136 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %137 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  switch i64 %138, label %163 [
    i64 8, label %139
    i64 7, label %142
    i64 6, label %145
    i64 5, label %148
    i64 4, label %151
    i64 3, label %154
    i64 2, label %157
    i64 1, label %160
  ]

139:                                              ; preds = %131
  %140 = load float, float* %19, align 4
  %141 = call float @resonator(%struct.resonator_t* @r8c, float %140)
  store float %141, float* %19, align 4
  br label %142

142:                                              ; preds = %139, %131
  %143 = load float, float* %19, align 4
  %144 = call float @resonator(%struct.resonator_t* @r7c, float %143)
  store float %144, float* %19, align 4
  br label %145

145:                                              ; preds = %142, %131
  %146 = load float, float* %19, align 4
  %147 = call float @resonator(%struct.resonator_t* @r6c, float %146)
  store float %147, float* %19, align 4
  br label %148

148:                                              ; preds = %145, %131
  %149 = load float, float* %19, align 4
  %150 = call float @resonator(%struct.resonator_t* @r5c, float %149)
  store float %150, float* %19, align 4
  br label %151

151:                                              ; preds = %148, %131
  %152 = load float, float* %19, align 4
  %153 = call float @resonator(%struct.resonator_t* @r4c, float %152)
  store float %153, float* %19, align 4
  br label %154

154:                                              ; preds = %151, %131
  %155 = load float, float* %19, align 4
  %156 = call float @resonator(%struct.resonator_t* @r3c, float %155)
  store float %156, float* %19, align 4
  br label %157

157:                                              ; preds = %154, %131
  %158 = load float, float* %19, align 4
  %159 = call float @resonator(%struct.resonator_t* @r2c, float %158)
  store float %159, float* %19, align 4
  br label %160

160:                                              ; preds = %157, %131
  %161 = load float, float* %19, align 4
  %162 = call float @resonator(%struct.resonator_t* @r1c, float %161)
  store float %162, float* %8, align 4
  br label %164

163:                                              ; preds = %131
  store float 0.000000e+00, float* %8, align 4
  br label %164

164:                                              ; preds = %163, %160
  br label %178

165:                                              ; preds = %116
  %166 = load float, float* %13, align 4
  %167 = call float @antiresonator(%struct.resonator_t* @rnz, float %166)
  store float %167, float* %13, align 4
  %168 = load float, float* %13, align 4
  %169 = call float @resonator(%struct.resonator_t* @rnpc, float %168)
  store float %169, float* %13, align 4
  %170 = load float, float* %13, align 4
  %171 = call float @resonator(%struct.resonator_t* @r1p, float %170)
  store float %171, float* %8, align 4
  %172 = load float, float* %13, align 4
  %173 = load float, float* @glotlast, align 4
  %174 = fsub float %172, %173
  %175 = load float, float* %11, align 4
  %176 = fadd float %175, %174
  store float %176, float* %11, align 4
  %177 = load float, float* %13, align 4
  store float %177, float* @glotlast, align 4
  br label %178

178:                                              ; preds = %165, %164
  %179 = load float, float* %11, align 4
  %180 = call float @resonator(%struct.resonator_t* @r6p, float %179)
  %181 = load float, float* %8, align 4
  %182 = fsub float %180, %181
  store float %182, float* %8, align 4
  %183 = load float, float* %11, align 4
  %184 = call float @resonator(%struct.resonator_t* @r5p, float %183)
  %185 = load float, float* %8, align 4
  %186 = fsub float %184, %185
  store float %186, float* %8, align 4
  %187 = load float, float* %11, align 4
  %188 = call float @resonator(%struct.resonator_t* @r4p, float %187)
  %189 = load float, float* %8, align 4
  %190 = fsub float %188, %189
  store float %190, float* %8, align 4
  %191 = load float, float* %11, align 4
  %192 = call float @resonator(%struct.resonator_t* @r3p, float %191)
  %193 = load float, float* %8, align 4
  %194 = fsub float %192, %193
  store float %194, float* %8, align 4
  %195 = load float, float* %11, align 4
  %196 = call float @resonator(%struct.resonator_t* @r2p, float %195)
  %197 = load float, float* %8, align 4
  %198 = fsub float %196, %197
  store float %198, float* %8, align 4
  %199 = load float, float* @amp_bypas, align 4
  %200 = load float, float* %11, align 4
  %201 = fmul float %199, %200
  %202 = load float, float* %8, align 4
  %203 = fsub float %201, %202
  store float %203, float* %8, align 4
  %204 = load float, float* %8, align 4
  %205 = call float @resonator(%struct.resonator_t* @rout, float %204)
  store float %205, float* %8, align 4
  %206 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %207 = load float, float* %8, align 4
  %208 = call signext i16 @clip(%struct.klatt_global_t* %206, float %207)
  %209 = load i16*, i16** %6, align 8
  %210 = getelementptr inbounds i16, i16* %209, i32 1
  store i16* %210, i16** %6, align 8
  store i16 %208, i16* %209, align 2
  br label %211

211:                                              ; preds = %178
  %212 = load i64, i64* %7, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %7, align 8
  br label %32

214:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @frame_init(%struct.klatt_global_t* %0, %struct.klatt_frame_t* %1) #0 {
  %3 = alloca %struct.klatt_global_t*, align 8
  %4 = alloca %struct.klatt_frame_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %3, align 8
  store %struct.klatt_frame_t* %1, %struct.klatt_frame_t** %4, align 8
  %13 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %14 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* @F0hz10, align 8
  %16 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %17 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 7
  store i64 %19, i64* @AVdb, align 8
  %20 = load i64, i64* @AVdb, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 0, i64* @AVdb, align 8
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %25 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %26 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %25, i32 0, i32 18
  %27 = load i64, i64* %26, align 8
  %28 = call float @DBtoLIN(%struct.klatt_global_t* %24, i64 %27)
  %29 = fpext float %28 to double
  %30 = fmul double %29, 5.000000e-02
  %31 = fptrunc double %30 to float
  store float %31, float* @amp_aspir, align 4
  %32 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %33 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %34 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %33, i32 0, i32 22
  %35 = load i64, i64* %34, align 8
  %36 = call float @DBtoLIN(%struct.klatt_global_t* %32, i64 %35)
  %37 = fpext float %36 to double
  %38 = fmul double %37, 2.500000e-01
  %39 = fptrunc double %38 to float
  store float %39, float* @amp_frica, align 4
  %40 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %41 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %40, i32 0, i32 23
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* @Kskew, align 8
  %43 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %44 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %45 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %44, i32 0, i32 38
  %46 = load i64, i64* %45, align 8
  %47 = call float @DBtoLIN(%struct.klatt_global_t* %43, i64 %46)
  store float %47, float* @par_amp_voice, align 4
  %48 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %49 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %50 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %49, i32 0, i32 24
  %51 = load i64, i64* %50, align 8
  %52 = call float @DBtoLIN(%struct.klatt_global_t* %48, i64 %51)
  %53 = fpext float %52 to double
  %54 = fmul double %53, 4.000000e-01
  %55 = fptrunc double %54 to float
  store float %55, float* %6, align 4
  %56 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %57 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %58 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %57, i32 0, i32 26
  %59 = load i64, i64* %58, align 8
  %60 = call float @DBtoLIN(%struct.klatt_global_t* %56, i64 %59)
  %61 = fpext float %60 to double
  %62 = fmul double %61, 1.500000e-01
  %63 = fptrunc double %62 to float
  store float %63, float* %8, align 4
  %64 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %65 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %66 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %65, i32 0, i32 28
  %67 = load i64, i64* %66, align 8
  %68 = call float @DBtoLIN(%struct.klatt_global_t* %64, i64 %67)
  %69 = fpext float %68 to double
  %70 = fmul double %69, 6.000000e-02
  %71 = fptrunc double %70 to float
  store float %71, float* %9, align 4
  %72 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %73 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %74 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %73, i32 0, i32 30
  %75 = load i64, i64* %74, align 8
  %76 = call float @DBtoLIN(%struct.klatt_global_t* %72, i64 %75)
  %77 = fpext float %76 to double
  %78 = fmul double %77, 4.000000e-02
  %79 = fptrunc double %78 to float
  store float %79, float* %10, align 4
  %80 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %81 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %82 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %81, i32 0, i32 32
  %83 = load i64, i64* %82, align 8
  %84 = call float @DBtoLIN(%struct.klatt_global_t* %80, i64 %83)
  %85 = fpext float %84 to double
  %86 = fmul double %85, 2.200000e-02
  %87 = fptrunc double %86 to float
  store float %87, float* %11, align 4
  %88 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %89 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %90 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %89, i32 0, i32 34
  %91 = load i64, i64* %90, align 8
  %92 = call float @DBtoLIN(%struct.klatt_global_t* %88, i64 %91)
  %93 = fpext float %92 to double
  %94 = fmul double %93, 3.000000e-02
  %95 = fptrunc double %94 to float
  store float %95, float* %12, align 4
  %96 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %97 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %98 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %97, i32 0, i32 36
  %99 = load i64, i64* %98, align 8
  %100 = call float @DBtoLIN(%struct.klatt_global_t* %96, i64 %99)
  %101 = fpext float %100 to double
  %102 = fmul double %101, 6.000000e-01
  %103 = fptrunc double %102 to float
  store float %103, float* %7, align 4
  %104 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %105 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %106 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %105, i32 0, i32 37
  %107 = load i64, i64* %106, align 8
  %108 = call float @DBtoLIN(%struct.klatt_global_t* %104, i64 %107)
  %109 = fpext float %108 to double
  %110 = fmul double %109, 5.000000e-02
  %111 = fptrunc double %110 to float
  store float %111, float* @amp_bypas, align 4
  %112 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %113 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %114, 8
  br i1 %115, label %116, label %126

116:                                              ; preds = %23
  %117 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %118 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %119, 16000
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  call void @setabc(i64 7500, i64 600, %struct.resonator_t* @r8c)
  br label %125

122:                                              ; preds = %116
  %123 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %124 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %123, i32 0, i32 5
  store i64 6, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %121
  br label %126

126:                                              ; preds = %125, %23
  %127 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %128 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %129, 7
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %133 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %134, 16000
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  call void @setabc(i64 6500, i64 500, %struct.resonator_t* @r7c)
  br label %140

137:                                              ; preds = %131
  %138 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %139 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %138, i32 0, i32 5
  store i64 6, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %136
  br label %141

141:                                              ; preds = %140, %126
  %142 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %143 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp sge i64 %144, 6
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %148 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %147, i32 0, i32 12
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %151 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %150, i32 0, i32 13
  %152 = load i64, i64* %151, align 8
  call void @setabc(i64 %149, i64 %152, %struct.resonator_t* @r6c)
  br label %153

153:                                              ; preds = %146, %141
  %154 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %155 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %156, 5
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %160 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %159, i32 0, i32 10
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %163 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %162, i32 0, i32 11
  %164 = load i64, i64* %163, align 8
  call void @setabc(i64 %161, i64 %164, %struct.resonator_t* @r5c)
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %167 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %170 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %169, i32 0, i32 9
  %171 = load i64, i64* %170, align 8
  call void @setabc(i64 %168, i64 %171, %struct.resonator_t* @r4c)
  %172 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %173 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %176 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  call void @setabc(i64 %174, i64 %177, %struct.resonator_t* @r3c)
  %178 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %179 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %182 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  call void @setabc(i64 %180, i64 %183, %struct.resonator_t* @r2c)
  %184 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %185 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %188 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  call void @setabc(i64 %186, i64 %189, %struct.resonator_t* @r1c)
  %190 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %191 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %190, i32 0, i32 16
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %194 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %193, i32 0, i32 17
  %195 = load i64, i64* %194, align 8
  call void @setabc(i64 %192, i64 %195, %struct.resonator_t* @rnpc)
  %196 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %197 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %196, i32 0, i32 14
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %200 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %199, i32 0, i32 15
  %201 = load i64, i64* %200, align 8
  call void @setzeroabc(i64 %198, i64 %201, %struct.resonator_t* @rnz)
  %202 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %203 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %206 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %205, i32 0, i32 25
  %207 = load i64, i64* %206, align 8
  %208 = load float, float* %6, align 4
  call void @setabcg(i64 %204, i64 %207, %struct.resonator_t* @r1p, float %208)
  %209 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %210 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %209, i32 0, i32 16
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %213 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %212, i32 0, i32 17
  %214 = load i64, i64* %213, align 8
  %215 = load float, float* %7, align 4
  call void @setabcg(i64 %211, i64 %214, %struct.resonator_t* @rnpp, float %215)
  %216 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %217 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %220 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %219, i32 0, i32 27
  %221 = load i64, i64* %220, align 8
  %222 = load float, float* %8, align 4
  call void @setabcg(i64 %218, i64 %221, %struct.resonator_t* @r2p, float %222)
  %223 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %224 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %227 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %226, i32 0, i32 29
  %228 = load i64, i64* %227, align 8
  %229 = load float, float* %9, align 4
  call void @setabcg(i64 %225, i64 %228, %struct.resonator_t* @r3p, float %229)
  %230 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %231 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %234 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %233, i32 0, i32 31
  %235 = load i64, i64* %234, align 8
  %236 = load float, float* %10, align 4
  call void @setabcg(i64 %232, i64 %235, %struct.resonator_t* @r4p, float %236)
  %237 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %238 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %237, i32 0, i32 10
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %241 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %240, i32 0, i32 33
  %242 = load i64, i64* %241, align 8
  %243 = load float, float* %11, align 4
  call void @setabcg(i64 %239, i64 %242, %struct.resonator_t* @r5p, float %243)
  %244 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %245 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %244, i32 0, i32 12
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %248 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %247, i32 0, i32 35
  %249 = load i64, i64* %248, align 8
  %250 = load float, float* %12, align 4
  call void @setabcg(i64 %246, i64 %249, %struct.resonator_t* @r6p, float %250)
  %251 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %252 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %251, i32 0, i32 39
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %253, 3
  store i64 %254, i64* %5, align 8
  %255 = load i64, i64* %5, align 8
  %256 = icmp sle i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %165
  store i64 57, i64* %5, align 8
  br label %258

258:                                              ; preds = %257, %165
  %259 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %260 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %263 = load i64, i64* %5, align 8
  %264 = call float @DBtoLIN(%struct.klatt_global_t* %262, i64 %263)
  call void @setabcg(i64 0, i64 %261, %struct.resonator_t* @rout, float %264)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @flutter(%struct.klatt_global_t* %0, %struct.klatt_frame_t* %1) #0 {
  %3 = alloca %struct.klatt_global_t*, align 8
  %4 = alloca %struct.klatt_frame_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %3, align 8
  store %struct.klatt_frame_t* %1, %struct.klatt_frame_t** %4, align 8
  %12 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %4, align 8
  %13 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sdiv i64 %14, 10
  store i64 %15, i64* %5, align 8
  %16 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %17 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 5.000000e+01
  store double %20, double* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sitofp i64 %21 to double
  %23 = fdiv double %22, 1.000000e+02
  store double %23, double* %7, align 8
  %24 = load i32, i32* @time_count, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double 0x4053F2F91CA1765C, %25
  %27 = call double @sin(double %26) #6
  store double %27, double* %8, align 8
  %28 = load i32, i32* @time_count, align 4
  %29 = sitofp i32 %28 to double
  %30 = fmul double 0x40464E28AD1D5A02, %29
  %31 = call double @sin(double %30) #6
  store double %31, double* %9, align 8
  %32 = load i32, i32* @time_count, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double 0x403D87EDBD883645, %33
  %35 = call double @sin(double %34) #6
  store double %35, double* %10, align 8
  %36 = load double, double* %6, align 8
  %37 = load double, double* %7, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* %8, align 8
  %40 = load double, double* %9, align 8
  %41 = fadd double %39, %40
  %42 = load double, double* %10, align 8
  %43 = fadd double %41, %42
  %44 = fmul double %38, %43
  %45 = fmul double %44, 1.000000e+01
  store double %45, double* %11, align 8
  %46 = load double, double* %11, align 8
  %47 = fptosi double %46 to i64
  %48 = load i64, i64* @F0hz10, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* @F0hz10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @impulsive_source(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds [3 x float], [3 x float]* @impulsive_source.doublet, i64 0, i64 %6
  %8 = load float, float* %7, align 4
  store float %8, float* @vwave, align 4
  br label %10

9:                                                ; preds = %1
  store float 0.000000e+00, float* @vwave, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = load float, float* @vwave, align 4
  %12 = call float @resonator(%struct.resonator_t* @rgl, float %11)
  ret float %12
}

; Function Attrs: noinline nounwind uwtable
define internal float @natural_source(i64 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i64, align 8
  %4 = alloca float, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @nopen, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load float, float* @natglot_b, align 4
  %10 = load float, float* @natglot_a, align 4
  %11 = fsub float %10, %9
  store float %11, float* @natglot_a, align 4
  %12 = load float, float* @natglot_a, align 4
  %13 = load float, float* @vwave, align 4
  %14 = fadd float %13, %12
  store float %14, float* @vwave, align 4
  %15 = load float, float* @vwave, align 4
  %16 = fpext float %15 to double
  %17 = fmul double %16, 2.800000e-02
  %18 = fptrunc double %17 to float
  store float %18, float* %4, align 4
  %19 = load float, float* %4, align 4
  store float %19, float* %2, align 4
  br label %21

20:                                               ; preds = %1
  store float 0.000000e+00, float* @vwave, align 4
  store float 0.000000e+00, float* %2, align 4
  br label %21

21:                                               ; preds = %20, %8
  %22 = load float, float* %2, align 4
  ret float %22
}

; Function Attrs: noinline nounwind uwtable
define internal void @pitch_synch_par_reset(%struct.klatt_global_t* %0, %struct.klatt_frame_t* %1, i64 %2) #0 {
  %4 = alloca %struct.klatt_global_t*, align 8
  %5 = alloca %struct.klatt_frame_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %4, align 8
  store %struct.klatt_frame_t* %1, %struct.klatt_frame_t** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @F0hz10, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %137

11:                                               ; preds = %3
  %12 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %13 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = mul nsw i64 40, %14
  %16 = load i64, i64* @F0hz10, align 8
  %17 = sdiv i64 %15, %16
  store i64 %17, i64* @T0, align 8
  %18 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %19 = load i64, i64* @AVdb, align 8
  %20 = call float @DBtoLIN(%struct.klatt_global_t* %18, i64 %19)
  store float %20, float* @amp_voice, align 4
  %21 = load i64, i64* @T0, align 8
  store i64 %21, i64* @nmod, align 8
  %22 = load i64, i64* @AVdb, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load i64, i64* @nmod, align 8
  %26 = ashr i64 %25, 1
  store i64 %26, i64* @nmod, align 8
  br label %27

27:                                               ; preds = %24, %11
  %28 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %29 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %5, align 8
  %30 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %29, i32 0, i32 20
  %31 = load i64, i64* %30, align 8
  %32 = call float @DBtoLIN(%struct.klatt_global_t* %28, i64 %31)
  %33 = fpext float %32 to double
  %34 = fmul double %33, 1.000000e-01
  %35 = fptrunc double %34 to float
  store float %35, float* @amp_breth, align 4
  %36 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %5, align 8
  %37 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %36, i32 0, i32 19
  %38 = load i64, i64* %37, align 8
  %39 = mul nsw i64 4, %38
  store i64 %39, i64* @nopen, align 8
  %40 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %41 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load i64, i64* @nopen, align 8
  %46 = icmp sgt i64 %45, 263
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 263, i64* @nopen, align 8
  br label %48

48:                                               ; preds = %47, %44, %27
  %49 = load i64, i64* @nopen, align 8
  %50 = load i64, i64* @T0, align 8
  %51 = sub nsw i64 %50, 1
  %52 = icmp sge i64 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i64, i64* @T0, align 8
  %55 = sub nsw i64 %54, 2
  store i64 %55, i64* @nopen, align 8
  %56 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %57 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.45.564, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %53
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i64, i64* @nopen, align 8
  %65 = icmp slt i64 %64, 40
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  store i64 40, i64* @nopen, align 8
  %67 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %68 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46.565, i64 0, i64 0))
  %73 = load i64, i64* @nopen, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47.566, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i64, i64* @nopen, align 8
  %78 = sub nsw i64 %77, 40
  %79 = getelementptr inbounds [224 x i16], [224 x i16]* @natglot, i64 0, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = sitofp i16 %80 to float
  store float %81, float* @natglot_b, align 4
  %82 = load float, float* @natglot_b, align 4
  %83 = load i64, i64* @nopen, align 8
  %84 = sitofp i64 %83 to float
  %85 = fmul float %82, %84
  %86 = fpext float %85 to double
  %87 = fmul double %86, 3.330000e-01
  %88 = fptrunc double %87 to float
  store float %88, float* @natglot_a, align 4
  %89 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %90 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @nopen, align 8
  %93 = sdiv i64 %91, %92
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  call void @setabc(i64 0, i64 %94, %struct.resonator_t* @rgl)
  %95 = load i64, i64* @nopen, align 8
  %96 = sitofp i64 %95 to double
  %97 = fmul double %96, 8.330000e-03
  %98 = fptrunc double %97 to float
  store float %98, float* %8, align 4
  %99 = load float, float* %8, align 4
  %100 = load float, float* %8, align 4
  %101 = fmul float %99, %100
  %102 = load float, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rgl, i32 0, i32 1), align 8
  %103 = fmul float %102, %101
  store float %103, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rgl, i32 0, i32 1), align 8
  %104 = load i64, i64* @T0, align 8
  %105 = load i64, i64* @nopen, align 8
  %106 = sub nsw i64 %104, %105
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* @Kskew, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %76
  %111 = load %struct.klatt_global_t*, %struct.klatt_global_t** %4, align 8
  %112 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* @Kskew, align 8
  %117 = load i64, i64* @T0, align 8
  %118 = load i64, i64* @nopen, align 8
  %119 = sub nsw i64 %117, %118
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.48.567, i64 0, i64 0), i64 %116, i64 %119)
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i64, i64* %7, align 8
  store i64 %122, i64* @Kskew, align 8
  br label %123

123:                                              ; preds = %121, %76
  %124 = load i64, i64* @skew, align 8
  %125 = icmp sge i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i64, i64* @Kskew, align 8
  store i64 %127, i64* @skew, align 8
  br label %131

128:                                              ; preds = %123
  %129 = load i64, i64* @Kskew, align 8
  %130 = sub nsw i64 0, %129
  store i64 %130, i64* @skew, align 8
  br label %131

131:                                              ; preds = %128, %126
  %132 = load i64, i64* @T0, align 8
  %133 = load i64, i64* @skew, align 8
  %134 = add nsw i64 %132, %133
  store i64 %134, i64* @T0, align 8
  %135 = load i64, i64* @skew, align 8
  %136 = sub nsw i64 0, %135
  store i64 %136, i64* @skew, align 8
  br label %139

137:                                              ; preds = %3
  store i64 4, i64* @T0, align 8
  store float 0.000000e+00, float* @amp_voice, align 4
  %138 = load i64, i64* @T0, align 8
  store i64 %138, i64* @nmod, align 8
  store float 0.000000e+00, float* @amp_breth, align 4
  store float 0.000000e+00, float* @natglot_a, align 4
  store float 0.000000e+00, float* @natglot_b, align 4
  br label %139

139:                                              ; preds = %137, %131
  %140 = load i64, i64* @T0, align 8
  %141 = icmp ne i64 %140, 4
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i64, i64* %6, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %142, %139
  %146 = load %struct.klatt_frame_t*, %struct.klatt_frame_t** %5, align 8
  %147 = getelementptr inbounds %struct.klatt_frame_t, %struct.klatt_frame_t* %146, i32 0, i32 21
  %148 = load i64, i64* %147, align 8
  %149 = sitofp i64 %148 to double
  %150 = fmul double 3.300000e-02, %149
  %151 = fptrunc double %150 to float
  store float %151, float* @decay, align 4
  %152 = load float, float* @decay, align 4
  %153 = fpext float %152 to double
  %154 = fcmp ogt double %153, 0.000000e+00
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load float, float* @decay, align 4
  %157 = fpext float %156 to double
  %158 = fsub double 1.000000e+00, %157
  %159 = fptrunc double %158 to float
  store float %159, float* @onemd, align 4
  br label %161

160:                                              ; preds = %145
  store float 1.000000e+00, float* @onemd, align 4
  br label %161

161:                                              ; preds = %160, %155
  br label %162

162:                                              ; preds = %161, %142
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @resonator(%struct.resonator_t* %0, float %1) #0 {
  %3 = alloca %struct.resonator_t*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store %struct.resonator_t* %0, %struct.resonator_t** %3, align 8
  store float %1, float* %4, align 4
  %6 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %7 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %6, i32 0, i32 1
  %8 = load float, float* %7, align 8
  %9 = load float, float* %4, align 4
  %10 = fmul float %8, %9
  %11 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %12 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %11, i32 0, i32 2
  %13 = load float, float* %12, align 4
  %14 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %15 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %14, i32 0, i32 4
  %16 = load float, float* %15, align 4
  %17 = fmul float %13, %16
  %18 = fadd float %10, %17
  %19 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %20 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %19, i32 0, i32 3
  %21 = load float, float* %20, align 8
  %22 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %23 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %22, i32 0, i32 5
  %24 = load float, float* %23, align 8
  %25 = fmul float %21, %24
  %26 = fadd float %18, %25
  store float %26, float* %5, align 4
  %27 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %28 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %27, i32 0, i32 4
  %29 = load float, float* %28, align 4
  %30 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %31 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %30, i32 0, i32 5
  store float %29, float* %31, align 8
  %32 = load float, float* %5, align 4
  %33 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %34 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %33, i32 0, i32 4
  store float %32, float* %34, align 4
  %35 = load float, float* %5, align 4
  ret float %35
}

; Function Attrs: noinline nounwind uwtable
define internal float @antiresonator(%struct.resonator_t* %0, float %1) #0 {
  %3 = alloca %struct.resonator_t*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store %struct.resonator_t* %0, %struct.resonator_t** %3, align 8
  store float %1, float* %4, align 4
  %6 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %7 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %6, i32 0, i32 1
  %8 = load float, float* %7, align 8
  %9 = load float, float* %4, align 4
  %10 = fmul float %8, %9
  %11 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %12 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %11, i32 0, i32 2
  %13 = load float, float* %12, align 4
  %14 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %15 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %14, i32 0, i32 4
  %16 = load float, float* %15, align 4
  %17 = fmul float %13, %16
  %18 = fadd float %10, %17
  %19 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %20 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %19, i32 0, i32 3
  %21 = load float, float* %20, align 8
  %22 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %23 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %22, i32 0, i32 5
  %24 = load float, float* %23, align 8
  %25 = fmul float %21, %24
  %26 = fadd float %18, %25
  store float %26, float* %5, align 4
  %27 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %28 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %27, i32 0, i32 4
  %29 = load float, float* %28, align 4
  %30 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %31 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %30, i32 0, i32 5
  store float %29, float* %31, align 8
  %32 = load float, float* %4, align 4
  %33 = load %struct.resonator_t*, %struct.resonator_t** %3, align 8
  %34 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %33, i32 0, i32 4
  store float %32, float* %34, align 4
  %35 = load float, float* %5, align 4
  ret float %35
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @clip(%struct.klatt_global_t* %0, float %1) #0 {
  %3 = alloca %struct.klatt_global_t*, align 8
  %4 = alloca float, align 4
  %5 = alloca i64, align 8
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %3, align 8
  store float %1, float* %4, align 4
  %6 = load float, float* %4, align 4
  %7 = fptosi float %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, -32767
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = sub nsw i64 0, %12
  call void @overload_warning(%struct.klatt_global_t* %11, i64 %13)
  store i64 -32767, i64* %5, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp sgt i64 %15, 32767
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %19 = load i64, i64* %5, align 8
  call void @overload_warning(%struct.klatt_global_t* %18, i64 %19)
  store i64 32767, i64* %5, align 8
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i16
  ret i16 %23
}

; Function Attrs: noinline nounwind uwtable
define internal void @overload_warning(%struct.klatt_global_t* %0, i64 %1) #0 {
  %3 = alloca %struct.klatt_global_t*, align 8
  %4 = alloca i64, align 8
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @warnsw, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, i32* @warnsw, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @warnsw, align 4
  %10 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %11 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67.544, i64 0, i64 0))
  %16 = load i64, i64* %4, align 8
  %17 = call float @dBconvert(i64 %16)
  %18 = fpext float %17 to double
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.68.545, i64 0, i64 0), double %18)
  br label %20

20:                                               ; preds = %14, %7
  br label %21

21:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @dBconvert(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double %4, 3.276700e+04
  %6 = call double @log10(double %5) #6
  %7 = fmul double 2.000000e+01, %6
  %8 = fptrunc double %7 to float
  ret float %8
}

; Function Attrs: nounwind
declare dso_local double @log10(double) #3

; Function Attrs: noinline nounwind uwtable
define internal float @DBtoLIN(%struct.klatt_global_t* %0, i64 %1) #0 {
  %3 = alloca %struct.klatt_global_t*, align 8
  %4 = alloca i64, align 8
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i64 0, i64* %4, align 8
  br label %21

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp sge i64 %9, 88
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.klatt_global_t*, %struct.klatt_global_t** %3, align 8
  %13 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44.569, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %16, %11
  store i64 87, i64* %4, align 8
  br label %20

20:                                               ; preds = %19, %8
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds [88 x float], [88 x float]* @amptable, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = fmul double %25, 1.000000e-03
  %27 = fptrunc double %26 to float
  ret float %27
}

; Function Attrs: noinline nounwind uwtable
define internal void @setabc(i64 %0, i64 %1, %struct.resonator_t* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.resonator_t*, align 8
  %7 = alloca double, align 8
  %8 = alloca float, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.resonator_t* %2, %struct.resonator_t** %6, align 8
  %9 = load float, float* @minus_pi_t, align 4
  %10 = load i64, i64* %5, align 8
  %11 = sitofp i64 %10 to float
  %12 = fmul float %9, %11
  %13 = fpext float %12 to double
  store double %13, double* %7, align 8
  %14 = load double, double* %7, align 8
  %15 = call double @exp(double %14) #6
  %16 = fptrunc double %15 to float
  store float %16, float* %8, align 4
  %17 = load float, float* %8, align 4
  %18 = load float, float* %8, align 4
  %19 = fmul float %17, %18
  %20 = fneg float %19
  %21 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %22 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %21, i32 0, i32 3
  store float %20, float* %22, align 8
  %23 = load float, float* @two_pi_t, align 4
  %24 = load i64, i64* %4, align 8
  %25 = sitofp i64 %24 to float
  %26 = fmul float %23, %25
  %27 = fpext float %26 to double
  store double %27, double* %7, align 8
  %28 = load float, float* %8, align 4
  %29 = fpext float %28 to double
  %30 = load double, double* %7, align 8
  %31 = call double @cos(double %30) #6
  %32 = fmul double %29, %31
  %33 = fmul double %32, 2.000000e+00
  %34 = fptrunc double %33 to float
  %35 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %36 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %35, i32 0, i32 2
  store float %34, float* %36, align 4
  %37 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %38 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %37, i32 0, i32 2
  %39 = load float, float* %38, align 4
  %40 = fpext float %39 to double
  %41 = fsub double 1.000000e+00, %40
  %42 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %43 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %42, i32 0, i32 3
  %44 = load float, float* %43, align 8
  %45 = fpext float %44 to double
  %46 = fsub double %41, %45
  %47 = fptrunc double %46 to float
  %48 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %49 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %48, i32 0, i32 1
  store float %47, float* %49, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #3

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sin(double) #3

; Function Attrs: noinline nounwind uwtable
define internal void @setzeroabc(i64 %0, i64 %1, %struct.resonator_t* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.resonator_t*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.resonator_t* %2, %struct.resonator_t** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  call void @setabc(i64 %7, i64 %8, %struct.resonator_t* %9)
  %10 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %11 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %10, i32 0, i32 1
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = fdiv double 1.000000e+00, %13
  %15 = fptrunc double %14 to float
  %16 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %17 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %16, i32 0, i32 1
  store float %15, float* %17, align 8
  %18 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %19 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %18, i32 0, i32 1
  %20 = load float, float* %19, align 8
  %21 = fneg float %20
  %22 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %23 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %22, i32 0, i32 2
  %24 = load float, float* %23, align 4
  %25 = fmul float %24, %21
  store float %25, float* %23, align 4
  %26 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %27 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %26, i32 0, i32 1
  %28 = load float, float* %27, align 8
  %29 = fneg float %28
  %30 = load %struct.resonator_t*, %struct.resonator_t** %6, align 8
  %31 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %30, i32 0, i32 3
  %32 = load float, float* %31, align 8
  %33 = fmul float %32, %29
  store float %33, float* %31, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setabcg(i64 %0, i64 %1, %struct.resonator_t* %2, float %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resonator_t*, align 8
  %8 = alloca float, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.resonator_t* %2, %struct.resonator_t** %7, align 8
  store float %3, float* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.resonator_t*, %struct.resonator_t** %7, align 8
  call void @setabc(i64 %9, i64 %10, %struct.resonator_t* %11)
  %12 = load float, float* %8, align 4
  %13 = load %struct.resonator_t*, %struct.resonator_t** %7, align 8
  %14 = getelementptr inbounds %struct.resonator_t, %struct.resonator_t* %13, i32 0, i32 1
  %15 = load float, float* %14, align 8
  %16 = fmul float %15, %12
  store float %16, float* %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parwave_init(%struct.klatt_global_t* %0) #0 {
  %2 = alloca %struct.klatt_global_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.klatt_global_t* %0, %struct.klatt_global_t** %2, align 8
  %5 = load %struct.klatt_global_t*, %struct.klatt_global_t** %2, align 8
  %6 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = mul nsw i64 950, %7
  %9 = sdiv i64 %8, 10000
  store i64 %9, i64* %3, align 8
  %10 = load %struct.klatt_global_t*, %struct.klatt_global_t** %2, align 8
  %11 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 630, %12
  %14 = sdiv i64 %13, 10000
  store i64 %14, i64* %4, align 8
  %15 = load %struct.klatt_global_t*, %struct.klatt_global_t** %2, align 8
  %16 = getelementptr inbounds %struct.klatt_global_t, %struct.klatt_global_t* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to double
  %19 = fdiv double 0xC00921FB5A7ED197, %18
  %20 = fptrunc double %19 to float
  store float %20, float* @minus_pi_t, align 4
  %21 = load float, float* @minus_pi_t, align 4
  %22 = fpext float %21 to double
  %23 = fmul double -2.000000e+00, %22
  %24 = fptrunc double %23 to float
  store float %24, float* @two_pi_t, align 4
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  call void @setabc(i64 %25, i64 %26, %struct.resonator_t* @rlp)
  store i64 0, i64* @nper, align 8
  store i64 0, i64* @T0, align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rnpp, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rnpp, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r1p, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r1p, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r2p, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r2p, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r3p, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r3p, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r4p, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r4p, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r5p, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r5p, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r6p, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r6p, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r1c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r1c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r2c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r2c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r3c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r3c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r4c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r4c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r5c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r5c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r6c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r6c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r7c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r7c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r8c, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @r8c, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rnpc, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rnpc, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rnz, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rnz, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rgl, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rgl, i32 0, i32 5), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rlp, i32 0, i32 4), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.resonator_t, %struct.resonator_t* @rlp, i32 0, i32 5), align 8
  store float 0.000000e+00, float* @vlast, align 4
  store float 0.000000e+00, float* @nlast, align 4
  store float 0.000000e+00, float* @glotlast, align 4
  store i32 0, i32* @warnsw, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @phone_append(%struct.darray_t* %0, i32 %1) #0 {
  %3 = alloca %struct.darray_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.darray_t* %0, %struct.darray_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.darray_t*, %struct.darray_t** %3, align 8
  %7 = load %struct.darray_t*, %struct.darray_t** %3, align 8
  %8 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @darray_find.741(%struct.darray_t* %6, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %5, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @darray_find.741(%struct.darray_t* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  store %struct.darray_t* %0, %struct.darray_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %8 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %14 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %19 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %23 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %22, i32 0, i32 3
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = mul i32 %21, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %20, i64 %27
  store i8* %28, i8** %3, align 8
  br label %33

29:                                               ; preds = %11, %2
  %30 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @Darray_find(%struct.darray_t* %30, i32 %31)
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @phone_to_elm(i8* %0, i32 %1, %struct.darray_t* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.darray_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.Elm_s*, align 8
  %15 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.darray_t* %2, %struct.darray_t** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load %struct.trie_s*, %struct.trie_s** @phtoelm, align 8
  %22 = icmp ne %struct.trie_s* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  call void @enter_phonemes()
  br label %24

24:                                               ; preds = %23, %3
  br label %25

25:                                               ; preds = %106, %24
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %107

36:                                               ; preds = %34
  %37 = call i8* @trie_lookup(%struct.trie_s** @phtoelm, i8** %8)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %88

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %11, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %66, %40
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %12, align 4
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [0 x %struct.Elm_s], [0 x %struct.Elm_s]* bitcast ([69 x %struct.Elm_s]* @Elements to [0 x %struct.Elm_s]*), i64 0, i64 %55
  store %struct.Elm_s* %56, %struct.Elm_s** %14, align 8
  %57 = load %struct.darray_t*, %struct.darray_t** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @phone_append(%struct.darray_t* %57, i32 %58)
  %60 = load %struct.Elm_s*, %struct.Elm_s** %14, align 8
  %61 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %62, 268435456
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.darray_t*, %struct.darray_t** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.Elm_s*, %struct.Elm_s** %14, align 8
  %70 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load %struct.Elm_s*, %struct.Elm_s** %14, align 8
  %74 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %73, i32 0, i32 3
  %75 = load i8, i8* %74, align 2
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %72, %76
  %78 = sdiv i32 %77, 2
  %79 = load i32, i32* @speed, align 4
  %80 = mul nsw i32 %78, %79
  %81 = call i32 @phone_append(%struct.darray_t* %67, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load %struct.darray_t*, %struct.darray_t** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @phone_append(%struct.darray_t* %84, i32 %85)
  br label %45

87:                                               ; preds = %45
  br label %106

88:                                               ; preds = %36
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  %91 = load i8, i8* %89, align 1
  store i8 %91, i8* %15, align 1
  %92 = load i8, i8* %15, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %98 [
    i32 39, label %94
    i32 44, label %95
    i32 43, label %96
    i32 45, label %97
  ]

94:                                               ; preds = %88
  store i32 3, i32* %7, align 4
  br label %105

95:                                               ; preds = %88
  store i32 2, i32* %7, align 4
  br label %105

96:                                               ; preds = %88
  store i32 1, i32* %7, align 4
  br label %105

97:                                               ; preds = %88
  br label %105

98:                                               ; preds = %88
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = load i8, i8* %15, align 1
  %101 = sext i8 %100 to i32
  %102 = load i32, i32* %5, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.742, i64 0, i64 0), i32 %101, i32 %102, i8* %103)
  br label %105

105:                                              ; preds = %98, %97, %96, %95, %94
  br label %106

106:                                              ; preds = %105, %87
  br label %25

107:                                              ; preds = %34
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

; Function Attrs: noinline nounwind uwtable
define internal void @enter_phonemes() #0 {
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.743, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.744, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.745, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.746, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.747, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.748, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.749, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.750, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10.751, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11.752, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.753, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.754, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14.755, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15.756, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16.757, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17.758, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.759, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19.760, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.761, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.762, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22.763, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23.764, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24.765, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25.766, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.767, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27.768, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28.769, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29.770, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30.771, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31.772, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31.772, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32.773, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33.774, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34.775, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.750, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35.776, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36.777, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37.778, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37.778, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38.779, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39.780, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40.781, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41.782, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.783, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43.784, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.783, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.762, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44.785, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43.784, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45.786, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46.787, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.788, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43.784, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48.789, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47.788, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49.790, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43.784, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49.790, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50.791, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51.792, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52.793, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53.794, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54.795, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55.796, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43.784, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55.796, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56.797, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57.798, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58.799, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59.800, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60.801, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59.800, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43.784, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59.800, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59.800, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61.802, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62.803, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63.804, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64.805, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65.806, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66.807, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43.784, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67.808, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68.809, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69.810, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69.810, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70.811, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71.812, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72.813, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73.814, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42.783, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74.815, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75.816, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76.817, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74.815, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77.818, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78.819, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79.820, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80.821, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81.822, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82.823, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83.824, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79.820, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84.825, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76.817, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85.826, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86.827, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87.828, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88.829, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89.830, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90.831, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91.832, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69.810, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92.833, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93.834, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69.810, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94.835, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89.830, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69.810, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95.836, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96.837, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97.838, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98.839, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99.840, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97.838, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100.841, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101.842, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102.843, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103.844, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104.845, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102.843, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105.846, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106.847, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102.843, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107.848, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108.849, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102.843, i64 0, i64 0), i8* null)
  call void (i8*, ...) @enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109.850, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89.830, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97.838, i64 0, i64 0), i8* null)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @enter(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Elm_s*, align 8
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  br label %12

12:                                               ; preds = %49, %1
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp ule i32 %15, 40
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 3
  %19 = load i8*, i8** %18, align 16
  %20 = getelementptr i8, i8* %19, i32 %15
  %21 = bitcast i8* %20 to i8**
  %22 = add i32 %15, 8
  store i32 %22, i32* %14, align 16
  br label %28

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i8**
  %27 = getelementptr i8, i8* %25, i32 8
  store i8* %27, i8** %24, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i8** [ %21, %17 ], [ %26, %23 ]
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call %struct.Elm_s* @find_elm(i8* %33)
  store %struct.Elm_s* %34, %struct.Elm_s** %7, align 8
  %35 = load %struct.Elm_s*, %struct.Elm_s** %7, align 8
  %36 = icmp ne %struct.Elm_s* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.Elm_s*, %struct.Elm_s** %7, align 8
  %39 = ptrtoint %struct.Elm_s* %38 to i64
  %40 = sub i64 %39, ptrtoint ([69 x %struct.Elm_s]* @Elements to i64)
  %41 = sdiv exact i64 %40, 272
  %42 = trunc i64 %41 to i8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 %42, i8* %43, align 1
  br label %49

45:                                               ; preds = %32
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110.851, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %37
  br label %12

50:                                               ; preds = %28
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %52 = bitcast %struct.__va_list_tag* %51 to i8*
  call void @llvm.va_end(i8* %52)
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sub nsw i64 %57, 1
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  store i8 %59, i8* %60, align 16
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = call noalias i8* @malloc(i64 %65) #6
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %67, i8* align 16 %68, i64 %73, i1 false)
  %74 = load i8*, i8** %2, align 8
  %75 = load i8*, i8** %6, align 8
  call void @trie_insert(%struct.trie_s** @phtoelm, i8* %74, i8* %75)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.Elm_s* @find_elm(i8* %0) #0 {
  %2 = alloca %struct.Elm_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Elm_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.Elm_s* getelementptr inbounds ([69 x %struct.Elm_s], [69 x %struct.Elm_s]* @Elements, i64 0, i64 0), %struct.Elm_s** %4, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load %struct.Elm_s*, %struct.Elm_s** %4, align 8
  %7 = load i32, i32* @num_Elements, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* getelementptr inbounds ([69 x %struct.Elm_s], [69 x %struct.Elm_s]* @Elements, i64 0, i64 0), i64 %8
  %10 = icmp ult %struct.Elm_s* %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.Elm_s*, %struct.Elm_s** %4, align 8
  %14 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %12, i8* %15) #8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = load %struct.Elm_s*, %struct.Elm_s** %4, align 8
  store %struct.Elm_s* %19, %struct.Elm_s** %2, align 8
  br label %24

20:                                               ; preds = %11
  %21 = load %struct.Elm_s*, %struct.Elm_s** %4, align 8
  %22 = getelementptr inbounds %struct.Elm_s, %struct.Elm_s* %21, i32 1
  store %struct.Elm_s* %22, %struct.Elm_s** %4, align 8
  br label %5

23:                                               ; preds = %5
  store %struct.Elm_s* null, %struct.Elm_s** %2, align 8
  br label %24

24:                                               ; preds = %23, %18
  %25 = load %struct.Elm_s*, %struct.Elm_s** %2, align 8
  ret %struct.Elm_s* %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @spell_out(i8* %0, i32 %1, %struct.darray_t* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.darray_t*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.darray_t* %2, %struct.darray_t** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.857, i64 0, i64 0), i32 %9, i8* %10)
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = and i32 %20, 127
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([129 x i8*]* @ASCII to [0 x i8*]*), i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.darray_t*, %struct.darray_t** %6, align 8
  %26 = call i32 @xlate_string(i8* %24, %struct.darray_t* %25)
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xlate_string(i8* %0, %struct.darray_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.darray_t* %1, %struct.darray_t** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %26, %2
  %15 = call i16** @__ctype_b_loc() #10
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %16, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 8192
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  br label %14

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %505, %29
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %7, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %506

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %8, align 8
  %36 = call i16** @__ctype_b_loc() #10
  %37 = load i16*, i16** %36, align 8
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %37, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 1024
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %196

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %88, %46
  %48 = call i16** @__ctype_b_loc() #10
  %49 = load i16*, i16** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %49, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 1024
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %47
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 39
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i8, i8* %7, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8, i8* %7, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  br i1 %70, label %71, label %84

71:                                               ; preds = %67, %63, %59
  %72 = call i16** @__ctype_b_loc() #10
  %73 = load i16*, i16** %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %73, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %81, 1024
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %71, %67
  %85 = phi i1 [ false, %67 ], [ %83, %71 ]
  br label %86

86:                                               ; preds = %84, %47
  %87 = phi i1 [ true, %47 ], [ %85, %84 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  br label %47

91:                                               ; preds = %86
  %92 = load i8, i8* %7, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %137

94:                                               ; preds = %91
  %95 = call i16** @__ctype_b_loc() #10
  %96 = load i16*, i16** %95, align 8
  %97 = load i8, i8* %7, align 1
  %98 = sext i8 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16, i16* %96, i64 %99
  %101 = load i16, i16* %100, align 2
  %102 = zext i16 %101 to i32
  %103 = and i32 %102, 8192
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %137, label %105

105:                                              ; preds = %94
  %106 = call i16** @__ctype_b_loc() #10
  %107 = load i16*, i16** %106, align 8
  %108 = load i8, i8* %7, align 1
  %109 = sext i8 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %107, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %105
  %117 = call i16** @__ctype_b_loc() #10
  %118 = load i16*, i16** %117, align 8
  %119 = load i8, i8* %7, align 1
  %120 = sext i8 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i16, i16* %118, i64 %121
  %123 = load i16, i16* %122, align 2
  %124 = zext i16 %123 to i32
  %125 = and i32 %124, 2048
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %116
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @suspect_word(i8* %128, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %127, %105, %94, %91
  %138 = load i8*, i8** %8, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %146 = call i32 @xlate_word(i8* %138, i32 %144, %struct.darray_t* %145)
  %147 = load i32, i32* %5, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %195

149:                                              ; preds = %127, %116
  br label %150

150:                                              ; preds = %180, %149
  %151 = load i8*, i8** %6, align 8
  %152 = load i8, i8* %151, align 1
  store i8 %152, i8* %7, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %150
  %156 = call i16** @__ctype_b_loc() #10
  %157 = load i16*, i16** %156, align 8
  %158 = load i8, i8* %7, align 1
  %159 = sext i8 %158 to i32
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i16, i16* %157, i64 %160
  %162 = load i16, i16* %161, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, 8192
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %155
  %167 = call i16** @__ctype_b_loc() #10
  %168 = load i16*, i16** %167, align 8
  %169 = load i8, i8* %7, align 1
  %170 = sext i8 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i16, i16* %168, i64 %171
  %173 = load i16, i16* %172, align 2
  %174 = zext i16 %173 to i32
  %175 = and i32 %174, 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %166, %155, %150
  %179 = phi i1 [ false, %155 ], [ false, %150 ], [ %177, %166 ]
  br i1 %179, label %180, label %183

180:                                              ; preds = %178
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %6, align 8
  br label %150

183:                                              ; preds = %178
  %184 = load i8*, i8** %8, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  %191 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %192 = call i32 @spell_out(i8* %184, i32 %190, %struct.darray_t* %191)
  %193 = load i32, i32* %5, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %183, %137
  br label %489

196:                                              ; preds = %34
  %197 = call i16** @__ctype_b_loc() #10
  %198 = load i16*, i16** %197, align 8
  %199 = load i8, i8* %7, align 1
  %200 = sext i8 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i16, i16* %198, i64 %201
  %203 = load i16, i16* %202, align 2
  %204 = zext i16 %203 to i32
  %205 = and i32 %204, 2048
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %224, label %207

207:                                              ; preds = %196
  %208 = load i8, i8* %7, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 45
  br i1 %210, label %211, label %327

211:                                              ; preds = %207
  %212 = call i16** @__ctype_b_loc() #10
  %213 = load i16*, i16** %212, align 8
  %214 = load i8*, i8** %6, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i16, i16* %213, i64 %218
  %220 = load i16, i16* %219, align 2
  %221 = zext i16 %220 to i32
  %222 = and i32 %221, 2048
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %327

224:                                              ; preds = %211, %196
  %225 = load i8, i8* %7, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 45
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 -1, i32 1
  store i32 %229, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %230 = load i32, i32* %9, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %224
  %233 = load i8*, i8** %6, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %6, align 8
  %235 = load i8, i8* %234, align 1
  store i8 %235, i8* %7, align 1
  br label %236

236:                                              ; preds = %232, %224
  br label %237

237:                                              ; preds = %249, %236
  %238 = call i16** @__ctype_b_loc() #10
  %239 = load i16*, i16** %238, align 8
  %240 = load i8*, i8** %6, align 8
  %241 = load i8, i8* %240, align 1
  store i8 %241, i8* %7, align 1
  %242 = sext i8 %241 to i32
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i16, i16* %239, i64 %243
  %245 = load i16, i16* %244, align 2
  %246 = zext i16 %245 to i32
  %247 = and i32 %246, 2048
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %237
  %250 = load i64, i64* %10, align 8
  %251 = mul nsw i64 %250, 10
  %252 = load i8, i8* %7, align 1
  %253 = sext i8 %252 to i64
  %254 = add nsw i64 %251, %253
  %255 = sub nsw i64 %254, 48
  store i64 %255, i64* %10, align 8
  %256 = load i8*, i8** %6, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %6, align 8
  br label %237

258:                                              ; preds = %237
  %259 = load i8, i8* %7, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 46
  br i1 %261, label %262, label %317

262:                                              ; preds = %258
  %263 = call i16** @__ctype_b_loc() #10
  %264 = load i16*, i16** %263, align 8
  %265 = load i8*, i8** %6, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i16, i16* %264, i64 %269
  %271 = load i16, i16* %270, align 2
  %272 = zext i16 %271 to i32
  %273 = and i32 %272, 2048
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %317

275:                                              ; preds = %262
  %276 = load i8*, i8** %6, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %6, align 8
  store i8* %277, i8** %8, align 8
  %278 = load i64, i64* %10, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = mul nsw i64 %278, %280
  %282 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %283 = call i32 @xlate_cardinal(i64 %281, %struct.darray_t* %282)
  %284 = load i32, i32* %5, align 4
  %285 = add i32 %284, %283
  store i32 %285, i32* %5, align 4
  %286 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %287 = call i32 @xlate_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.858, i64 0, i64 0), %struct.darray_t* %286)
  %288 = load i32, i32* %5, align 4
  %289 = add i32 %288, %287
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %302, %275
  %291 = call i16** @__ctype_b_loc() #10
  %292 = load i16*, i16** %291, align 8
  %293 = load i8*, i8** %6, align 8
  %294 = load i8, i8* %293, align 1
  store i8 %294, i8* %7, align 1
  %295 = sext i8 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %292, i64 %296
  %298 = load i16, i16* %297, align 2
  %299 = zext i16 %298 to i32
  %300 = and i32 %299, 2048
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %290
  %303 = load i8*, i8** %6, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %6, align 8
  br label %290

305:                                              ; preds = %290
  %306 = load i8*, i8** %8, align 8
  %307 = load i8*, i8** %6, align 8
  %308 = load i8*, i8** %8, align 8
  %309 = ptrtoint i8* %307 to i64
  %310 = ptrtoint i8* %308 to i64
  %311 = sub i64 %309, %310
  %312 = trunc i64 %311 to i32
  %313 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %314 = call i32 @spell_out(i8* %306, i32 %312, %struct.darray_t* %313)
  %315 = load i32, i32* %5, align 4
  %316 = add i32 %315, %314
  store i32 %316, i32* %5, align 4
  br label %326

317:                                              ; preds = %262, %258
  %318 = load i64, i64* %10, align 8
  %319 = load i32, i32* %9, align 4
  %320 = sext i32 %319 to i64
  %321 = mul nsw i64 %318, %320
  %322 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %323 = call i32 @xlate_cardinal(i64 %321, %struct.darray_t* %322)
  %324 = load i32, i32* %5, align 4
  %325 = add i32 %324, %323
  store i32 %325, i32* %5, align 4
  br label %326

326:                                              ; preds = %317, %305
  br label %488

327:                                              ; preds = %211, %207
  %328 = load i8, i8* %7, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 91
  br i1 %330, label %331, label %363

331:                                              ; preds = %327
  %332 = load i8*, i8** %6, align 8
  %333 = call i8* @strchr(i8* %332, i32 93) #8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %363

335:                                              ; preds = %331
  %336 = load i8*, i8** %6, align 8
  store i8* %336, i8** %11, align 8
  br label %337

337:                                              ; preds = %350, %335
  %338 = load i8*, i8** %6, align 8
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %337
  %343 = load i8*, i8** %6, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %6, align 8
  %345 = load i8, i8* %343, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp ne i32 %346, 93
  br label %348

348:                                              ; preds = %342, %337
  %349 = phi i1 [ false, %337 ], [ %347, %342 ]
  br i1 %349, label %350, label %351

350:                                              ; preds = %348
  br label %337

351:                                              ; preds = %348
  %352 = load i8*, i8** %11, align 8
  %353 = load i8*, i8** %6, align 8
  %354 = load i8*, i8** %11, align 8
  %355 = ptrtoint i8* %353 to i64
  %356 = ptrtoint i8* %354 to i64
  %357 = sub i64 %355, %356
  %358 = trunc i64 %357 to i32
  %359 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %360 = call i32 @xlate_word(i8* %352, i32 %358, %struct.darray_t* %359)
  %361 = load i32, i32* %5, align 4
  %362 = add i32 %361, %360
  store i32 %362, i32* %5, align 4
  br label %487

363:                                              ; preds = %331, %327
  %364 = call i16** @__ctype_b_loc() #10
  %365 = load i16*, i16** %364, align 8
  %366 = load i8, i8* %7, align 1
  %367 = sext i8 %366 to i32
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i16, i16* %365, i64 %368
  %370 = load i16, i16* %369, align 2
  %371 = zext i16 %370 to i32
  %372 = and i32 %371, 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %451

374:                                              ; preds = %363
  %375 = load i8, i8* %7, align 1
  %376 = sext i8 %375 to i32
  switch i32 %376, label %442 [
    i32 33, label %377
    i32 63, label %377
    i32 46, label %377
    i32 34, label %414
    i32 58, label %414
    i32 45, label %414
    i32 59, label %414
    i32 44, label %414
    i32 40, label %414
    i32 41, label %414
    i32 91, label %419
  ]

377:                                              ; preds = %374, %374, %374
  %378 = load i8*, i8** %6, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  %380 = load i8, i8* %379, align 1
  %381 = icmp ne i8 %380, 0
  br i1 %381, label %382, label %395

382:                                              ; preds = %377
  %383 = call i16** @__ctype_b_loc() #10
  %384 = load i16*, i16** %383, align 8
  %385 = load i8*, i8** %6, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 1
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i16, i16* %384, i64 %389
  %391 = load i16, i16* %390, align 2
  %392 = zext i16 %391 to i32
  %393 = and i32 %392, 8192
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %409

395:                                              ; preds = %382, %377
  %396 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %397 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %395
  %401 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %402 = call i8* @darray_find.859(%struct.darray_t* %401, i32 0)
  %403 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %404 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @verbose, align 4
  call void @say_phones(i8* %402, i32 %405, i32 %406)
  %407 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %408 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %407, i32 0, i32 1
  store i32 0, i32* %408, align 8
  br label %409

409:                                              ; preds = %400, %395, %382
  %410 = load i8*, i8** %6, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %6, align 8
  %412 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %413 = call i32 @phone_append(%struct.darray_t* %412, i32 32)
  br label %450

414:                                              ; preds = %374, %374, %374, %374, %374, %374, %374
  %415 = load i8*, i8** %6, align 8
  %416 = getelementptr inbounds i8, i8* %415, i32 1
  store i8* %416, i8** %6, align 8
  %417 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %418 = call i32 @phone_append(%struct.darray_t* %417, i32 32)
  br label %450

419:                                              ; preds = %374
  %420 = load i8*, i8** %6, align 8
  %421 = call i8* @strchr(i8* %420, i32 93) #8
  store i8* %421, i8** %12, align 8
  %422 = load i8*, i8** %12, align 8
  %423 = icmp ne i8* %422, null
  br i1 %423, label %424, label %441

424:                                              ; preds = %419
  %425 = load i8*, i8** %6, align 8
  %426 = getelementptr inbounds i8, i8* %425, i32 1
  store i8* %426, i8** %6, align 8
  br label %427

427:                                              ; preds = %431, %424
  %428 = load i8*, i8** %6, align 8
  %429 = load i8*, i8** %12, align 8
  %430 = icmp ult i8* %428, %429
  br i1 %430, label %431, label %438

431:                                              ; preds = %427
  %432 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %433 = load i8*, i8** %6, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %6, align 8
  %435 = load i8, i8* %433, align 1
  %436 = sext i8 %435 to i32
  %437 = call i32 @phone_append(%struct.darray_t* %432, i32 %436)
  br label %427

438:                                              ; preds = %427
  %439 = load i8*, i8** %12, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 1
  store i8* %440, i8** %6, align 8
  br label %450

441:                                              ; preds = %419
  br label %442

442:                                              ; preds = %441, %374
  %443 = load i8*, i8** %8, align 8
  %444 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %445 = call i32 @spell_out(i8* %443, i32 1, %struct.darray_t* %444)
  %446 = load i32, i32* %5, align 4
  %447 = add i32 %446, %445
  store i32 %447, i32* %5, align 4
  %448 = load i8*, i8** %6, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %6, align 8
  br label %450

450:                                              ; preds = %442, %438, %414, %409
  br label %486

451:                                              ; preds = %363
  br label %452

452:                                              ; preds = %471, %451
  %453 = load i8*, i8** %6, align 8
  %454 = load i8, i8* %453, align 1
  store i8 %454, i8* %7, align 1
  %455 = sext i8 %454 to i32
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %469

457:                                              ; preds = %452
  %458 = call i16** @__ctype_b_loc() #10
  %459 = load i16*, i16** %458, align 8
  %460 = load i8, i8* %7, align 1
  %461 = sext i8 %460 to i32
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i16, i16* %459, i64 %462
  %464 = load i16, i16* %463, align 2
  %465 = zext i16 %464 to i32
  %466 = and i32 %465, 8192
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  br label %469

469:                                              ; preds = %457, %452
  %470 = phi i1 [ false, %452 ], [ %468, %457 ]
  br i1 %470, label %471, label %474

471:                                              ; preds = %469
  %472 = load i8*, i8** %6, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %6, align 8
  br label %452

474:                                              ; preds = %469
  %475 = load i8*, i8** %8, align 8
  %476 = load i8*, i8** %6, align 8
  %477 = load i8*, i8** %8, align 8
  %478 = ptrtoint i8* %476 to i64
  %479 = ptrtoint i8* %477 to i64
  %480 = sub i64 %478, %479
  %481 = trunc i64 %480 to i32
  %482 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %483 = call i32 @spell_out(i8* %475, i32 %481, %struct.darray_t* %482)
  %484 = load i32, i32* %5, align 4
  %485 = add i32 %484, %483
  store i32 %485, i32* %5, align 4
  br label %486

486:                                              ; preds = %474, %450
  br label %487

487:                                              ; preds = %486, %351
  br label %488

488:                                              ; preds = %487, %326
  br label %489

489:                                              ; preds = %488, %195
  br label %490

490:                                              ; preds = %502, %489
  %491 = call i16** @__ctype_b_loc() #10
  %492 = load i16*, i16** %491, align 8
  %493 = load i8*, i8** %6, align 8
  %494 = load i8, i8* %493, align 1
  store i8 %494, i8* %7, align 1
  %495 = sext i8 %494 to i32
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i16, i16* %492, i64 %496
  %498 = load i16, i16* %497, align 2
  %499 = zext i16 %498 to i32
  %500 = and i32 %499, 8192
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %490
  %503 = load i8*, i8** %6, align 8
  %504 = getelementptr inbounds i8, i8* %503, i32 1
  store i8* %504, i8** %6, align 8
  br label %490

505:                                              ; preds = %490
  br label %30

506:                                              ; preds = %30
  %507 = load i32, i32* %5, align 4
  ret i32 %507
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @suspect_word(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %80, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %10, align 1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 45
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = call i16** @__ctype_b_loc() #10
  %26 = load i16*, i16** %25, align 8
  %27 = load i8, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %26, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 256
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %24, %21, %15
  %37 = call i16** @__ctype_b_loc() #10
  %38 = load i16*, i16** %37, align 8
  %39 = load i8, i8* %10, align 1
  %40 = sext i8 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %38, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 512
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 @toupper(i32 %49) #8
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %10, align 1
  br label %52

52:                                               ; preds = %47, %36
  %53 = load i8, i8* %10, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 65
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 69
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 73
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 79
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 85
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i8, i8* %10, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 89
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68, %64, %60, %56, %52
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i8, i8* %10, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %11

83:                                               ; preds = %11
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %92, %89, %83
  %97 = phi i1 [ true, %89 ], [ true, %83 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  ret i32 %98
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xlate_word(i8* %0, i32 %1, %struct.darray_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.darray_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.darray_t* %2, %struct.darray_t** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 91
  br i1 %16, label %17, label %144

17:                                               ; preds = %3
  %18 = load i8*, i8** @dict, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %114

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @dict_find(i8* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %54, %26
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i8**, i8*** @dialect, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %33, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %45, %32
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @phone_append(%struct.darray_t* %46, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %41

54:                                               ; preds = %41
  br label %28

55:                                               ; preds = %28
  %56 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %57 = call i32 @phone_append(%struct.darray_t* %56, i32 32)
  %58 = load i8*, i8** %9, align 8
  call void @free(i8* %58) #6
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %178

61:                                               ; preds = %20
  %62 = load i8*, i8** %5, align 8
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %111, %61
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = icmp ult i8* %64, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %63
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 45
  br i1 %79, label %80, label %108

80:                                               ; preds = %75, %70
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = ptrtoint i8* %82 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %90 = call i32 @xlate_word(i8* %81, i32 %88, %struct.darray_t* %89)
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8*, i8** %12, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %104 = call i32 @xlate_word(i8* %93, i32 %102, %struct.darray_t* %103)
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %178

108:                                              ; preds = %75
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %12, align 8
  br label %111

111:                                              ; preds = %108
  br label %63

112:                                              ; preds = %63
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %17
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @suspect_word(i8* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %123 = call i32 @spell_out(i8* %120, i32 %121, %struct.darray_t* %122)
  store i32 %123, i32* %4, align 4
  br label %178

124:                                              ; preds = %114
  %125 = load i8*, i8** @dict, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @verbose, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127, %124
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %132 = load i8*, i8** @dict, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15.861, i64 0, i64 0), i8* %132, i32 %133, i8* %134)
  br label %136

136:                                              ; preds = %130, %127
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %140 = call i32 @NRL(i8* %137, i32 %138, %struct.darray_t* %139)
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %136
  br label %173

144:                                              ; preds = %3
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %6, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %146, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 93
  br i1 %154, label %155, label %158

155:                                              ; preds = %144
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %155, %144
  br label %159

159:                                              ; preds = %163, %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %6, align 4
  %162 = icmp sgt i32 %160, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %5, align 8
  %167 = load i8, i8* %165, align 1
  %168 = sext i8 %167 to i32
  %169 = call i32 @phone_append(%struct.darray_t* %164, i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %159

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %143
  %174 = load %struct.darray_t*, %struct.darray_t** %7, align 8
  %175 = call i32 @phone_append(%struct.darray_t* %174, i32 32)
  %176 = load i32, i32* %8, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %173, %119, %80, %55
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @darray_find.859(%struct.darray_t* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  store %struct.darray_t* %0, %struct.darray_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %8 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %14 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %19 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %23 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %22, i32 0, i32 3
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = mul i32 %21, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %20, i64 %27
  store i8* %28, i8** %3, align 8
  br label %33

29:                                               ; preds = %11, %2
  %30 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @Darray_find(%struct.darray_t* %30, i32 %31)
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @say_phones(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.darray_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  call void @darray_init(%struct.darray_t* %7, i32 1, i32 %12)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @phone_to_elm(i8* %13, i32 %14, %struct.darray_t* %7)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* getelementptr inbounds (%struct.klatt_global_t, %struct.klatt_global_t* @klatt_global, i32 0, i32 7), align 8
  %21 = mul nsw i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 2, %24
  %26 = call noalias i8* @malloc(i64 %25) #6
  %27 = bitcast i8* %26 to i16*
  store i16* %27, i16** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.860, i64 0, i64 0), i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %17
  %36 = load i16*, i16** %10, align 8
  %37 = icmp ne i16* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @darray_find.859(%struct.darray_t* %7, i32 0)
  %42 = load i32, i32* %9, align 4
  %43 = load i16*, i16** %10, align 8
  %44 = call i32 @holmes(i32 %40, i8* %41, i32 %42, i16* %43)
  store i32 %44, i32* %11, align 4
  %45 = load void (i32, i16*)*, void (i32, i16*)** @file_write, align 8
  %46 = icmp ne void (i32, i16*)* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @once, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load void (i32, i16*)*, void (i32, i16*)** @file_write, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i16*, i16** %10, align 8
  call void %51(i32 %52, i16* %53)
  br label %54

54:                                               ; preds = %50, %47, %38
  %55 = load i16*, i16** %10, align 8
  %56 = bitcast i16* %55 to i8*
  call void @free(i8* %56) #6
  br label %57

57:                                               ; preds = %54, %35
  br label %58

58:                                               ; preds = %57, %3
  call void @darray_free(%struct.darray_t* %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @darray_init(%struct.darray_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.darray_t* %0, %struct.darray_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = trunc i32 %7 to i16
  %9 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %10 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %9, i32 0, i32 3
  store i16 %8, i16* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = trunc i32 %11 to i16
  %13 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %14 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %13, i32 0, i32 4
  store i16 %12, i16* %14, align 2
  %15 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %16 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %18 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %20 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @concat_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i8**, i8*** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19) #8
  %21 = add i64 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = call noalias i8* @malloc(i64 %31) #6
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %8, align 8
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %67, %35
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %52, %41
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  store i8 %55, i8* %56, align 1
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  store i8 32, i8* %63, align 1
  br label %67

65:                                               ; preds = %58
  %66 = load i8*, i8** %8, align 8
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %65, %62
  br label %37

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i8*, i8** %7, align 8
  ret i8* %70
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @say_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.darray_t, align 8
  store i8* %0, i8** %2, align 8
  call void @darray_init(%struct.darray_t* %3, i32 1, i32 128)
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @xlate_string(i8* %4, %struct.darray_t* %3)
  %6 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i8* @darray_find.859(%struct.darray_t* %3, i32 0)
  %11 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @verbose, align 4
  call void @say_phones(i8* %10, i32 %12, i32 %13)
  br label %14

14:                                               ; preds = %9, %1
  call void @darray_free(%struct.darray_t* %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @darray_fget(%struct._IO_FILE* %0, %struct.darray_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.darray_t*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.darray_t* %1, %struct.darray_t** %4, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @fgetc(%struct._IO_FILE* %7)
  store i32 %8, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @phone_append(%struct.darray_t* %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %18

17:                                               ; preds = %10
  br label %6

18:                                               ; preds = %16, %6
  %19 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %20 = call i32 @phone_append(%struct.darray_t* %19, i32 0)
  %21 = load %struct.darray_t*, %struct.darray_t** %4, align 8
  %22 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub i32 %23, 1
  ret i32 %24
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @say_file(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.darray_t, align 8
  %8 = alloca %struct.darray_t, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.862, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.863, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %3, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7.864, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.865, i64 0, i64 0), i64* %5)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = call i32 @fclose(%struct._IO_FILE* %17)
  store i64 0, i64* %6, align 8
  call void @darray_init(%struct.darray_t* %7, i32 1, i32 128)
  call void @darray_init(%struct.darray_t* %8, i32 1, i32 128)
  br label %19

19:                                               ; preds = %28, %14
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %21 = call i32 @darray_fget(%struct._IO_FILE* %20, %struct.darray_t* %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 500
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  %31 = call i8* @darray_find.859(%struct.darray_t* %7, i32 0)
  %32 = call i32 @xlate_string(i8* %31, %struct.darray_t* %8)
  %33 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %7, i32 0, i32 1
  store i32 0, i32* %33, align 8
  br label %19

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %48, %38
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = call i8* @darray_find.859(%struct.darray_t* %8, i32 0)
  %45 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @verbose, align 4
  call void @say_phones(i8* %44, i32 %46, i32 %47)
  store i32 1, i32* @once, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %39

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %34
  call void @darray_free(%struct.darray_t* %8)
  call void @darray_free(%struct.darray_t* %7)
  ret void
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @program, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = call i32 @audio_init(i32 %12, i8** %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = call i32 @init_synth(i32 %15, i8** %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i8**, i8*** %6, align 8
  %20 = call i32 @init_holmes(i32 %18, i8** %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = call i32 @dict_init(i32 %21, i8** %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = call i32 @file_init(i32 %24, i8** %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = call i32 (i8*, i32, i8**, ...) @getargs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.866, i64 0, i64 0), i32 %27, i8** %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.867, i64 0, i64 0), i8* null, i32* @verbose, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11.868, i64 0, i64 0), i8* null)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @help_only, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i8*, i8** @program, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12.869, i64 0, i64 0), i8* %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i8*, i8** @program, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.870, i64 0, i64 0), i8* %37)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i8*, i8** @Revision, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.871, i64 0, i64 0), i8* %40)
  br label %58

42:                                               ; preds = %3
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i8**, i8*** %6, align 8
  %48 = call i8* @concat_args(i32 %46, i8** %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  call void @say_string(i8* %52)
  %53 = load i8*, i8** %8, align 8
  call void @free(i8* %53) #6
  br label %54

54:                                               ; preds = %51, %45
  br label %57

55:                                               ; preds = %42
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @say_file(%struct._IO_FILE* %56)
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57, %32
  %59 = load void ()*, void ()** @file_term, align 8
  %60 = icmp ne void ()* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load void ()*, void ()** @file_term, align 8
  call void %62()
  br label %63

63:                                               ; preds = %61, %58
  call void @audio_term()
  call void @term_holmes()
  %64 = load i8*, i8** @dict, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call void @dict_term()
  br label %67

67:                                               ; preds = %66, %63
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xlate_cardinal(i64 %0, %struct.darray_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.darray_t*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.darray_t* %1, %struct.darray_t** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %11 = call i32 @xlate_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.875, i64 0, i64 0), %struct.darray_t* %10)
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %20 = call i32 @xlate_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.876, i64 0, i64 0), %struct.darray_t* %19)
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %170

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i64, i64* %4, align 8
  %27 = icmp sge i64 %26, 1000000000
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = sdiv i64 %29, 1000000000
  %31 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %32 = call i32 @xlate_cardinal(i64 %30, %struct.darray_t* %31)
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %36 = call i32 @xlate_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.877, i64 0, i64 0), %struct.darray_t* %35)
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i64, i64* %4, align 8
  %40 = srem i64 %39, 1000000000
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %170

45:                                               ; preds = %28
  %46 = load i64, i64* %4, align 8
  %47 = icmp slt i64 %46, 100
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %50 = call i32 @xlate_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.878, i64 0, i64 0), %struct.darray_t* %49)
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i64, i64* %4, align 8
  %56 = icmp sge i64 %55, 1000000
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = sdiv i64 %58, 1000000
  %60 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %61 = call i32 @xlate_cardinal(i64 %59, %struct.darray_t* %60)
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %65 = call i32 @xlate_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.879, i64 0, i64 0), %struct.darray_t* %64)
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i64, i64* %4, align 8
  %69 = srem i64 %68, 1000000
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %170

74:                                               ; preds = %57
  %75 = load i64, i64* %4, align 8
  %76 = icmp slt i64 %75, 100
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %79 = call i32 @xlate_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.878, i64 0, i64 0), %struct.darray_t* %78)
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i64, i64* %4, align 8
  %85 = icmp sge i64 %84, 1000
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %4, align 8
  %88 = icmp sle i64 %87, 1099
  br i1 %88, label %92, label %89

89:                                               ; preds = %86, %83
  %90 = load i64, i64* %4, align 8
  %91 = icmp sge i64 %90, 2000
  br i1 %91, label %92, label %118

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %4, align 8
  %94 = sdiv i64 %93, 1000
  %95 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %96 = call i32 @xlate_cardinal(i64 %94, %struct.darray_t* %95)
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %100 = call i32 @xlate_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6.880, i64 0, i64 0), %struct.darray_t* %99)
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i64, i64* %4, align 8
  %104 = srem i64 %103, 1000
  store i64 %104, i64* %4, align 8
  %105 = load i64, i64* %4, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %92
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %170

109:                                              ; preds = %92
  %110 = load i64, i64* %4, align 8
  %111 = icmp slt i64 %110, 100
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %114 = call i32 @xlate_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.878, i64 0, i64 0), %struct.darray_t* %113)
  %115 = load i32, i32* %6, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %112, %109
  br label %118

118:                                              ; preds = %117, %89
  %119 = load i64, i64* %4, align 8
  %120 = icmp sge i64 %119, 100
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = load i64, i64* %4, align 8
  %123 = sdiv i64 %122, 100
  %124 = getelementptr inbounds [20 x i8*], [20 x i8*]* @Cardinals, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %127 = call i32 @xlate_string(i8* %125, %struct.darray_t* %126)
  %128 = load i32, i32* %6, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %131 = call i32 @xlate_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.881, i64 0, i64 0), %struct.darray_t* %130)
  %132 = load i32, i32* %6, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i64, i64* %4, align 8
  %135 = srem i64 %134, 100
  store i64 %135, i64* %4, align 8
  %136 = load i64, i64* %4, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %121
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %170

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140, %118
  %142 = load i64, i64* %4, align 8
  %143 = icmp sge i64 %142, 20
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load i64, i64* %4, align 8
  %146 = sub nsw i64 %145, 20
  %147 = sdiv i64 %146, 10
  %148 = getelementptr inbounds [8 x i8*], [8 x i8*]* @Twenties, i64 0, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %151 = call i32 @xlate_string(i8* %149, %struct.darray_t* %150)
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load i64, i64* %4, align 8
  %155 = srem i64 %154, 10
  store i64 %155, i64* %4, align 8
  %156 = load i64, i64* %4, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %144
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %170

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %160, %141
  %162 = load i64, i64* %4, align 8
  %163 = getelementptr inbounds [20 x i8*], [20 x i8*]* @Cardinals, i64 0, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %166 = call i32 @xlate_string(i8* %164, %struct.darray_t* %165)
  %167 = load i32, i32* %6, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %161, %158, %138, %107, %72, %43, %18
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xlate_ordinal(i64 %0, %struct.darray_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.darray_t*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.darray_t* %1, %struct.darray_t** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %11 = call i32 @xlate_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.875, i64 0, i64 0), %struct.darray_t* %10)
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %20 = call i32 @xlate_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.876, i64 0, i64 0), %struct.darray_t* %19)
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %196

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i64, i64* %4, align 8
  %27 = icmp sge i64 %26, 1000000000
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = sdiv i64 %29, 1000000000
  %31 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %32 = call i32 @xlate_cardinal(i64 %30, %struct.darray_t* %31)
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i64, i64* %4, align 8
  %36 = srem i64 %35, 1000000000
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %41 = call i32 @xlate_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.910, i64 0, i64 0), %struct.darray_t* %40)
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %196

45:                                               ; preds = %28
  %46 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %47 = call i32 @xlate_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.877, i64 0, i64 0), %struct.darray_t* %46)
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* %4, align 8
  %51 = icmp slt i64 %50, 100
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %54 = call i32 @xlate_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.878, i64 0, i64 0), %struct.darray_t* %53)
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i64, i64* %4, align 8
  %60 = icmp sge i64 %59, 1000000
  br i1 %60, label %61, label %91

61:                                               ; preds = %58
  %62 = load i64, i64* %4, align 8
  %63 = sdiv i64 %62, 1000000
  %64 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %65 = call i32 @xlate_cardinal(i64 %63, %struct.darray_t* %64)
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i64, i64* %4, align 8
  %69 = srem i64 %68, 1000000
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %74 = call i32 @xlate_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9.911, i64 0, i64 0), %struct.darray_t* %73)
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %196

78:                                               ; preds = %61
  %79 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %80 = call i32 @xlate_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.879, i64 0, i64 0), %struct.darray_t* %79)
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i64, i64* %4, align 8
  %84 = icmp slt i64 %83, 100
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %87 = call i32 @xlate_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.878, i64 0, i64 0), %struct.darray_t* %86)
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %78
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i64, i64* %4, align 8
  %93 = icmp sge i64 %92, 1000
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %4, align 8
  %96 = icmp sle i64 %95, 1099
  br i1 %96, label %100, label %97

97:                                               ; preds = %94, %91
  %98 = load i64, i64* %4, align 8
  %99 = icmp sge i64 %98, 2000
  br i1 %99, label %100, label %130

100:                                              ; preds = %97, %94
  %101 = load i64, i64* %4, align 8
  %102 = sdiv i64 %101, 1000
  %103 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %104 = call i32 @xlate_cardinal(i64 %102, %struct.darray_t* %103)
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i64, i64* %4, align 8
  %108 = srem i64 %107, 1000
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %113 = call i32 @xlate_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10.912, i64 0, i64 0), %struct.darray_t* %112)
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %196

117:                                              ; preds = %100
  %118 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %119 = call i32 @xlate_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6.880, i64 0, i64 0), %struct.darray_t* %118)
  %120 = load i32, i32* %6, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load i64, i64* %4, align 8
  %123 = icmp slt i64 %122, 100
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %126 = call i32 @xlate_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.878, i64 0, i64 0), %struct.darray_t* %125)
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %124, %117
  br label %130

130:                                              ; preds = %129, %97
  %131 = load i64, i64* %4, align 8
  %132 = icmp sge i64 %131, 100
  br i1 %132, label %133, label %157

133:                                              ; preds = %130
  %134 = load i64, i64* %4, align 8
  %135 = sdiv i64 %134, 100
  %136 = getelementptr inbounds [20 x i8*], [20 x i8*]* @Cardinals, i64 0, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %139 = call i32 @xlate_string(i8* %137, %struct.darray_t* %138)
  %140 = load i32, i32* %6, align 4
  %141 = add i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i64, i64* %4, align 8
  %143 = srem i64 %142, 100
  store i64 %143, i64* %4, align 8
  %144 = load i64, i64* %4, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %133
  %147 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %148 = call i32 @xlate_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.913, i64 0, i64 0), %struct.darray_t* %147)
  %149 = load i32, i32* %6, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %3, align 4
  br label %196

152:                                              ; preds = %133
  %153 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %154 = call i32 @xlate_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.881, i64 0, i64 0), %struct.darray_t* %153)
  %155 = load i32, i32* %6, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %152, %130
  %158 = load i64, i64* %4, align 8
  %159 = icmp sge i64 %158, 20
  br i1 %159, label %160, label %187

160:                                              ; preds = %157
  %161 = load i64, i64* %4, align 8
  %162 = srem i64 %161, 10
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = load i64, i64* %4, align 8
  %166 = sub nsw i64 %165, 20
  %167 = sdiv i64 %166, 10
  %168 = getelementptr inbounds [8 x i8*], [8 x i8*]* @Ord_twenties, i64 0, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %171 = call i32 @xlate_string(i8* %169, %struct.darray_t* %170)
  %172 = load i32, i32* %6, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %196

175:                                              ; preds = %160
  %176 = load i64, i64* %4, align 8
  %177 = sub nsw i64 %176, 20
  %178 = sdiv i64 %177, 10
  %179 = getelementptr inbounds [8 x i8*], [8 x i8*]* @Twenties, i64 0, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %182 = call i32 @xlate_string(i8* %180, %struct.darray_t* %181)
  %183 = load i32, i32* %6, align 4
  %184 = add i32 %183, %182
  store i32 %184, i32* %6, align 4
  %185 = load i64, i64* %4, align 8
  %186 = srem i64 %185, 10
  store i64 %186, i64* %4, align 8
  br label %187

187:                                              ; preds = %175, %157
  %188 = load i64, i64* %4, align 8
  %189 = getelementptr inbounds [20 x i8*], [20 x i8*]* @Ordinals, i64 0, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %192 = call i32 @xlate_string(i8* %190, %struct.darray_t* %191)
  %193 = load i32, i32* %6, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %187, %164, %146, %111, %72, %39, %18
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isvowel(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 65
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 69
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 73
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 79
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 85
  br label %17

17:                                               ; preds = %14, %11, %8, %5, %1
  %18 = phi i1 [ true, %11 ], [ true, %8 ], [ true, %5 ], [ true, %1 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isconsonant(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i16** @__ctype_b_loc() #10
  %4 = load i16*, i16** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i16, i16* %4, i64 %6
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 256
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @isvowel(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ false, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NRL(i8* %0, i32 %1, %struct.darray_t* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.darray_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.darray_t* %2, %struct.darray_t** %6, align 8
  %11 = load %struct.darray_t*, %struct.darray_t** %6, align 8
  %12 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %14, 3
  %16 = zext i32 %15 to i64
  %17 = call noalias i8* @malloc(i64 %16) #6
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %9, align 8
  store i8 32, i8* %19, align 1
  br label %21

21:                                               ; preds = %44, %3
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = icmp ugt i32 %22, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %10, align 1
  %29 = call i16** @__ctype_b_loc() #10
  %30 = load i16*, i16** %29, align 8
  %31 = load i8, i8* %10, align 1
  %32 = sext i8 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %30, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 512
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load i8, i8* %10, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @toupper(i32 %41) #8
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %10, align 1
  br label %44

44:                                               ; preds = %39, %25
  %45 = load i8, i8* %10, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  store i8 %45, i8* %46, align 1
  br label %21

48:                                               ; preds = %21
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  store i8 32, i8* %49, align 1
  %51 = load i8*, i8** %9, align 8
  store i8 0, i8* %51, align 1
  %52 = load %struct.darray_t*, %struct.darray_t** %6, align 8
  %53 = bitcast %struct.darray_t* %52 to i8*
  %54 = load i8*, i8** %8, align 8
  call void @guess_word(i8* %53, void (i8*, i8*)* @phone_cat, i8* %54)
  %55 = load i8*, i8** %8, align 8
  call void @free(i8* %55) #6
  %56 = load %struct.darray_t*, %struct.darray_t** %6, align 8
  %57 = getelementptr inbounds %struct.darray_t, %struct.darray_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %58, %59
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define internal void @phone_cat(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.darray_t*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.darray_t*
  store %struct.darray_t* %8, %struct.darray_t** %5, align 8
  br label %9

9:                                                ; preds = %14, %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %4, align 8
  %12 = load i8, i8* %10, align 1
  store i8 %12, i8* %6, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.darray_t*, %struct.darray_t** %5, align 8
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @phone_append(%struct.darray_t* %15, i32 %17)
  br label %9

19:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @guess_word(i8* %0, void (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %44, %3
  %10 = call i16** @__ctype_b_loc() #10
  %11 = load i16*, i16** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %11, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 256
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %9
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 65
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %34

33:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i8*, i8** %4, align 8
  %36 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [0 x [4 x i8*]*], [0 x [4 x i8*]*]* bitcast ([27 x [4 x i8*]*]* @Rules to [0 x [4 x i8*]*]*), i64 0, i64 %40
  %42 = load [4 x i8*]*, [4 x i8*]** %41, align 8
  %43 = call i32 @find_rule(i8* %35, void (i8*, i8*)* %36, i8* %37, i32 %38, [4 x i8*]* %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %9, label %52

52:                                               ; preds = %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @find_rule(i8* %0, void (i8*, i8*)* %1, i8* %2, i32 %3, [4 x i8*]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca void (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8*]*, align 8
  %12 = alloca [4 x i8*]*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store void (i8*, i8*)* %1, void (i8*, i8*)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store [4 x i8*]* %4, [4 x i8*]** %11, align 8
  br label %18

18:                                               ; preds = %93, %84, %68, %5
  %19 = load [4 x i8*]*, [4 x i8*]** %11, align 8
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i32 1
  store [4 x i8*]* %20, [4 x i8*]** %11, align 8
  store [4 x i8*]* %19, [4 x i8*]** %12, align 8
  %21 = load [4 x i8*]*, [4 x i8*]** %12, align 8
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %21, i64 0, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1.945, i64 0, i64 0), i32 %33, i8* %34)
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %102

38:                                               ; preds = %18
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %17, align 4
  br label %40

40:                                               ; preds = %58, %38
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %63

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %14, align 8
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %40

63:                                               ; preds = %56, %40
  %64 = load i8*, i8** %14, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %18

69:                                               ; preds = %63
  %70 = load [4 x i8*]*, [4 x i8*]** %12, align 8
  %71 = getelementptr inbounds [4 x i8*], [4 x i8*]* %70, i64 0, i64 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = load [4 x i8*]*, [4 x i8*]** %12, align 8
  %74 = getelementptr inbounds [4 x i8*], [4 x i8*]* %73, i64 0, i64 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = call i32 @leftmatch(i8* %76, i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %69
  br label %18

85:                                               ; preds = %69
  %86 = load i8*, i8** %15, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 @rightmatch(i8* %86, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %18

94:                                               ; preds = %85
  %95 = load [4 x i8*]*, [4 x i8*]** %12, align 8
  %96 = getelementptr inbounds [4 x i8*], [4 x i8*]* %95, i64 0, i64 3
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %16, align 8
  %98 = load void (i8*, i8*)*, void (i8*, i8*)** %8, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %16, align 8
  call void %98(i8* %99, i8* %100)
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %94, %26
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @leftmatch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %198

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* %15) #8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %192, %14
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %197

27:                                               ; preds = %24
  %28 = call i16** @__ctype_b_loc() #10
  %29 = load i16*, i16** %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %29, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 1024
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 39
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %61

49:                                               ; preds = %44, %39, %27
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %198

58:                                               ; preds = %49
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %7, align 8
  br label %192

61:                                               ; preds = %44
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %185 [
    i32 35, label %65
    i32 58, label %85
    i32 94, label %96
    i32 46, label %106
    i32 43, label %165
    i32 37, label %184
  ]

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @isvowel(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %198

72:                                               ; preds = %65
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %81, %72
  %76 = load i8*, i8** %7, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 @isvowel(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %7, align 8
  br label %75

84:                                               ; preds = %75
  br label %191

85:                                               ; preds = %61
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 @isconsonant(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %7, align 8
  br label %86

95:                                               ; preds = %86
  br label %191

96:                                               ; preds = %61
  %97 = load i8*, i8** %7, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 @isconsonant(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %198

103:                                              ; preds = %96
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 -1
  store i8* %105, i8** %7, align 8
  br label %191

106:                                              ; preds = %61
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 66
  br i1 %110, label %111, label %162

111:                                              ; preds = %106
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 68
  br i1 %115, label %116, label %162

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 86
  br i1 %120, label %121, label %162

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 71
  br i1 %125, label %126, label %162

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 74
  br i1 %130, label %131, label %162

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 76
  br i1 %135, label %136, label %162

136:                                              ; preds = %131
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 77
  br i1 %140, label %141, label %162

141:                                              ; preds = %136
  %142 = load i8*, i8** %7, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 78
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load i8*, i8** %7, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 82
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load i8*, i8** %7, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 87
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i8*, i8** %7, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 90
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %198

162:                                              ; preds = %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %164, i8** %7, align 8
  br label %191

165:                                              ; preds = %61
  %166 = load i8*, i8** %7, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 69
  br i1 %169, label %170, label %181

170:                                              ; preds = %165
  %171 = load i8*, i8** %7, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 73
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i8*, i8** %7, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 89
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %198

181:                                              ; preds = %175, %170, %165
  %182 = load i8*, i8** %7, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 -1
  store i8* %183, i8** %7, align 8
  br label %191

184:                                              ; preds = %61
  br label %185

185:                                              ; preds = %184, %61
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = load i8*, i8** %6, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.947, i64 0, i64 0), i32 %189)
  store i32 0, i32* %3, align 4
  br label %198

191:                                              ; preds = %181, %162, %103, %95, %84
  br label %192

192:                                              ; preds = %191, %58
  %193 = load i8*, i8** %6, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 -1
  store i8* %194, i8** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %8, align 4
  br label %24

197:                                              ; preds = %24
  store i32 1, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %185, %180, %161, %102, %71, %57, %13
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rightmatch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %260

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %256, %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %259

22:                                               ; preds = %17
  %23 = call i16** @__ctype_b_loc() #10
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 1024
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %56

44:                                               ; preds = %39, %34, %22
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %260

53:                                               ; preds = %44
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  br label %256

56:                                               ; preds = %39
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %249 [
    i32 35, label %60
    i32 58, label %80
    i32 94, label %91
    i32 46, label %101
    i32 43, label %160
    i32 37, label %179
  ]

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 @isvowel(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %260

67:                                               ; preds = %60
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %76, %67
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = call i32 @isvowel(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  br label %70

79:                                               ; preds = %70
  br label %255

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %87, %80
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 @isconsonant(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  br label %81

90:                                               ; preds = %81
  br label %255

91:                                               ; preds = %56
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 @isconsonant(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %260

98:                                               ; preds = %91
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  br label %255

101:                                              ; preds = %56
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 66
  br i1 %105, label %106, label %157

106:                                              ; preds = %101
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 68
  br i1 %110, label %111, label %157

111:                                              ; preds = %106
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 86
  br i1 %115, label %116, label %157

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 71
  br i1 %120, label %121, label %157

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 74
  br i1 %125, label %126, label %157

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 76
  br i1 %130, label %131, label %157

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 77
  br i1 %135, label %136, label %157

136:                                              ; preds = %131
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 78
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = load i8*, i8** %7, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 82
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load i8*, i8** %7, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 87
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i8*, i8** %7, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 90
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %260

157:                                              ; preds = %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %7, align 8
  br label %255

160:                                              ; preds = %56
  %161 = load i8*, i8** %7, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 69
  br i1 %164, label %165, label %176

165:                                              ; preds = %160
  %166 = load i8*, i8** %7, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 73
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load i8*, i8** %7, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 89
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %260

176:                                              ; preds = %170, %165, %160
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %7, align 8
  br label %255

179:                                              ; preds = %56
  %180 = load i8*, i8** %7, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 69
  br i1 %183, label %184, label %224

184:                                              ; preds = %179
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %7, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 76
  br i1 %190, label %191, label %204

191:                                              ; preds = %184
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %7, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 89
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i8*, i8** %7, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %7, align 8
  br label %255

201:                                              ; preds = %191
  %202 = load i8*, i8** %7, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 -1
  store i8* %203, i8** %7, align 8
  br label %255

204:                                              ; preds = %184
  %205 = load i8*, i8** %7, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 82
  br i1 %208, label %219, label %209

209:                                              ; preds = %204
  %210 = load i8*, i8** %7, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 83
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = load i8*, i8** %7, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 68
  br i1 %218, label %219, label %222

219:                                              ; preds = %214, %209, %204
  %220 = load i8*, i8** %7, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %7, align 8
  br label %222

222:                                              ; preds = %219, %214
  br label %223

223:                                              ; preds = %222
  br label %255

224:                                              ; preds = %179
  %225 = load i8*, i8** %7, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 73
  br i1 %228, label %229, label %248

229:                                              ; preds = %224
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %7, align 8
  %232 = load i8*, i8** %7, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 78
  br i1 %235, label %236, label %247

236:                                              ; preds = %229
  %237 = load i8*, i8** %7, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %7, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 71
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load i8*, i8** %7, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %7, align 8
  br label %255

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246, %229
  store i32 0, i32* %3, align 4
  br label %260

248:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %260

249:                                              ; preds = %56
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.946, i64 0, i64 0), i32 %253)
  store i32 0, i32* %3, align 4
  br label %260

255:                                              ; preds = %243, %223, %201, %198, %176, %157, %98, %90, %79
  br label %256

256:                                              ; preds = %255, %53
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %6, align 8
  br label %17

259:                                              ; preds = %17
  store i32 1, i32* %3, align 4
  br label %260

260:                                              ; preds = %259, %249, %248, %247, %175, %156, %97, %66, %52, %12
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @trie_insert(%struct.trie_s** %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.trie_s**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trie_s*, align 8
  %8 = alloca i8, align 1
  store %struct.trie_s** %0, %struct.trie_s*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.trie_s* null, %struct.trie_s** %7, align 8
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %5, align 8
  %12 = load i8, i8* %10, align 1
  store i8 %12, i8* %8, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %31, %14
  %16 = load %struct.trie_s**, %struct.trie_s*** %4, align 8
  %17 = load %struct.trie_s*, %struct.trie_s** %16, align 8
  store %struct.trie_s* %17, %struct.trie_s** %7, align 8
  %18 = icmp ne %struct.trie_s* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %21 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %20, i32 0, i32 3
  %22 = load i8, i8* %21, align 8
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %8, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %30 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %29, i32 0, i32 0
  store %struct.trie_s** %30, %struct.trie_s*** %4, align 8
  br label %31

31:                                               ; preds = %28
  br label %15

32:                                               ; preds = %27, %15
  %33 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %34 = icmp ne %struct.trie_s* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = call noalias i8* @malloc(i64 32) #6
  %37 = bitcast i8* %36 to %struct.trie_s*
  store %struct.trie_s* %37, %struct.trie_s** %7, align 8
  %38 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %39 = bitcast %struct.trie_s* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 32, i1 false)
  %40 = load i8, i8* %8, align 1
  %41 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %42 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %41, i32 0, i32 3
  store i8 %40, i8* %42, align 8
  %43 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %44 = load %struct.trie_s**, %struct.trie_s*** %4, align 8
  store %struct.trie_s* %43, %struct.trie_s** %44, align 8
  br label %45

45:                                               ; preds = %35, %32
  %46 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %47 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %46, i32 0, i32 1
  store %struct.trie_s** %47, %struct.trie_s*** %4, align 8
  br label %9

48:                                               ; preds = %9
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.trie_s*, %struct.trie_s** %7, align 8
  %51 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @trie_lookup(%struct.trie_s** %0, i8** %1) #0 {
  %3 = alloca %struct.trie_s**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.trie_s**, align 8
  %9 = alloca %struct.trie_s*, align 8
  store %struct.trie_s** %0, %struct.trie_s*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %12

12:                                               ; preds = %57, %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %7, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %12
  %17 = load %struct.trie_s**, %struct.trie_s*** %3, align 8
  store %struct.trie_s** %17, %struct.trie_s*** %8, align 8
  br label %18

18:                                               ; preds = %34, %16
  %19 = load %struct.trie_s**, %struct.trie_s*** %8, align 8
  %20 = load %struct.trie_s*, %struct.trie_s** %19, align 8
  store %struct.trie_s* %20, %struct.trie_s** %9, align 8
  %21 = icmp ne %struct.trie_s* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %24 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %33 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %32, i32 0, i32 0
  store %struct.trie_s** %33, %struct.trie_s*** %8, align 8
  br label %34

34:                                               ; preds = %31
  br label %18

35:                                               ; preds = %30, %18
  %36 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %37 = icmp ne %struct.trie_s* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %40 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %39, i32 0, i32 0
  %41 = load %struct.trie_s*, %struct.trie_s** %40, align 8
  %42 = load %struct.trie_s**, %struct.trie_s*** %8, align 8
  store %struct.trie_s* %41, %struct.trie_s** %42, align 8
  %43 = load %struct.trie_s**, %struct.trie_s*** %3, align 8
  %44 = load %struct.trie_s*, %struct.trie_s** %43, align 8
  %45 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %46 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %45, i32 0, i32 0
  store %struct.trie_s* %44, %struct.trie_s** %46, align 8
  %47 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %48 = load %struct.trie_s**, %struct.trie_s*** %3, align 8
  store %struct.trie_s* %47, %struct.trie_s** %48, align 8
  %49 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %50 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %49, i32 0, i32 1
  store %struct.trie_s** %50, %struct.trie_s*** %3, align 8
  %51 = load %struct.trie_s*, %struct.trie_s** %9, align 8
  %52 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  br label %57

56:                                               ; preds = %35
  br label %58

57:                                               ; preds = %38
  br label %12

58:                                               ; preds = %56, %12
  %59 = load i8*, i8** %5, align 8
  %60 = load i8**, i8*** %4, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  ret i8* %61
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
