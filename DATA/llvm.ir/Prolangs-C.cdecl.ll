; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.yywork = type { i8, i8 }
%struct.yysvf = type { %struct.yywork*, %struct.yysvf*, i32* }
%struct.anon.0 = type { i8*, i32 }
%struct.helpstruct = type { i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@cdeclsccsid = dso_local global [24 x i8] c"@(#)cdecl.c\092.4 3/31/88\00", align 16
@modbits = dso_local global i32 0, align 4
@arbdims = dso_local global i32 1, align 4
@savedname = dso_local global i8* null, align 8
@unknown_name = dso_local global [13 x i8] c"unknown_name\00", align 1
@prev = dso_local global i8 0, align 1
@RitchieFlag = dso_local global i32 0, align 4
@MkProgramFlag = dso_local global i32 0, align 4
@PreANSIFlag = dso_local global i32 0, align 4
@CplusplusFlag = dso_local global i32 0, align 4
@OnATty = dso_local global i32 0, align 4
@Interactive = dso_local global i32 0, align 4
@KeywordName = dso_local global i32 0, align 4
@progname = dso_local global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@cdgramsccsid = dso_local global [25 x i8] c"@(#)cdgram.y\092.2 3/30/88\00", align 16
@yyexca = dso_local global [46 x i16] [i16 -1, i16 1, i16 0, i16 -1, i16 -2, i16 0, i16 -1, i16 27, i16 282, i16 81, i16 40, i16 81, i16 42, i16 81, i16 38, i16 81, i16 -2, i16 87, i16 -1, i16 37, i16 260, i16 31, i16 41, i16 31, i16 -2, i16 81, i16 -1, i16 87, i16 282, i16 82, i16 40, i16 82, i16 42, i16 82, i16 38, i16 82, i16 -2, i16 80, i16 -1, i16 92, i16 260, i16 31, i16 41, i16 31, i16 -2, i16 81], align 16
@yyact = dso_local global [322 x i16] [i16 67, i16 79, i16 28, i16 69, i16 72, i16 68, i16 66, i16 76, i16 159, i16 13, i16 77, i16 75, i16 78, i16 73, i16 74, i16 70, i16 79, i16 16, i16 17, i16 18, i16 19, i16 16, i16 17, i16 18, i16 19, i16 67, i16 129, i16 78, i16 69, i16 103, i16 68, i16 66, i16 125, i16 25, i16 76, i16 39, i16 23, i16 77, i16 75, i16 128, i16 70, i16 74, i16 118, i16 22, i16 115, i16 137, i16 117, i16 118, i16 85, i16 115, i16 86, i16 117, i16 83, i16 23, i16 152, i16 25, i16 30, i16 100, i16 23, i16 10, i16 22, i16 56, i16 25, i16 23, i16 47, i16 22, i16 60, i16 59, i16 37, i16 97, i16 22, i16 121, i16 25, i16 40, i16 41, i16 123, i16 58, i16 25, i16 20, i16 34, i16 139, i16 110, i16 25, i16 161, i16 144, i16 93, i16 145, i16 92, i16 94, i16 32, i16 24, i16 57, i16 147, i16 71, i16 126, i16 29, i16 81, i16 21, i16 42, i16 55, i16 8, i16 136, i16 108, i16 150, i16 12, i16 135, i16 33, i16 106, i16 11, i16 114, i16 31, i16 10, i16 62, i16 151, i16 132, i16 134, i16 44, i16 45, i16 48, i16 49, i16 156, i16 43, i16 35, i16 2, i16 63, i16 15, i16 53, i16 1, i16 54, i16 14, i16 50, i16 64, i16 27, i16 65, i16 52, i16 101, i16 26, i16 46, i16 87, i16 82, i16 61, i16 38, i16 0, i16 90, i16 80, i16 88, i16 0, i16 0, i16 89, i16 0, i16 95, i16 96, i16 98, i16 108, i16 91, i16 108, i16 0, i16 0, i16 108, i16 0, i16 11, i16 0, i16 51, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 109, i16 0, i16 111, i16 104, i16 102, i16 0, i16 0, i16 0, i16 105, i16 112, i16 107, i16 0, i16 122, i16 99, i16 0, i16 113, i16 0, i16 119, i16 120, i16 0, i16 0, i16 0, i16 0, i16 127, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 124, i16 131, i16 0, i16 133, i16 0, i16 0, i16 0, i16 0, i16 142, i16 0, i16 0, i16 130, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 138, i16 146, i16 140, i16 141, i16 148, i16 0, i16 149, i16 0, i16 0, i16 0, i16 0, i16 127, i16 0, i16 0, i16 0, i16 153, i16 0, i16 0, i16 25, i16 158, i16 0, i16 0, i16 127, i16 0, i16 128, i16 155, i16 160, i16 16, i16 17, i16 18, i16 19, i16 154, i16 0, i16 0, i16 0, i16 0, i16 157, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 116, i16 0, i16 0, i16 0, i16 0, i16 116, i16 84, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 36, i16 0, i16 0, i16 145, i16 145, i16 92, i16 9, i16 0, i16 0, i16 5, i16 0, i16 4, i16 0, i16 6, i16 0, i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 7], align 16
@yypact = dso_local global [162 x i16] [i16 -1000, i16 49, i16 -1000, i16 101, i16 -273, i16 -204, i16 -38, i16 -226, i16 -1000, i16 101, i16 -1000, i16 -1000, i16 -1000, i16 -169, i16 -194, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -187, i16 101, i16 28, i16 -248, i16 -196, i16 -214, i16 -212, i16 -214, i16 -214, i16 101, i16 -1000, i16 -1000, i16 -269, i16 101, i16 -194, i16 -1000, i16 -194, i16 -221, i16 -191, i16 -1000, i16 -206, i16 -207, i16 -1000, i16 -274, i16 -1000, i16 -1000, i16 10, i16 -214, i16 10, i16 -1000, i16 -1000, i16 -194, i16 -1000, i16 101, i16 -1000, i16 44, i16 -170, i16 -1000, i16 -194, i16 -199, i16 -194, i16 -1000, i16 -249, i16 -1000, i16 -225, i16 -247, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 10, i16 101, i16 67, i16 -214, i16 -181, i16 -214, i16 10, i16 -1000, i16 101, i16 9, i16 101, i16 -1000, i16 -221, i16 -200, i16 -194, i16 -1000, i16 -1000, i16 -192, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 101, i16 -1000, i16 -9, i16 -1000, i16 -67, i16 10, i16 72, i16 10, i16 74, i16 -1000, i16 64, i16 4, i16 -182, i16 9, i16 9, i16 -1000, i16 -173, i16 -194, i16 -1000, i16 -259, i16 -1000, i16 -1000, i16 43, i16 -1000, i16 -1000, i16 -1000, i16 -1, i16 -1000, i16 10, i16 -1000, i16 -1000, i16 -226, i16 -1000, i16 -1000, i16 62, i16 71, i16 11, i16 11, i16 -1000, i16 -228, i16 -1000, i16 -243, i16 9, i16 -1000, i16 -1000, i16 101, i16 80, i16 9, i16 -194, i16 -174, i16 11, i16 -1000, i16 -33, i16 11, i16 -1000, i16 -1000, i16 42, i16 -1000], align 16
@yypgo = dso_local global [26 x i16] [i16 0, i16 99, i16 141, i16 140, i16 109, i16 94, i16 96, i16 139, i16 101, i16 137, i16 93, i16 112, i16 135, i16 133, i16 90, i16 95, i16 129, i16 125, i16 131, i16 124, i16 98, i16 91, i16 127, i16 123, i16 100, i16 121], align 16
@yyr1 = dso_local global [89 x i16] [i16 0, i16 22, i16 22, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 24, i16 24, i16 15, i16 15, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 5, i16 5, i16 5, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 8, i16 8, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 2, i16 2, i16 20, i16 25, i16 3, i16 3, i16 3, i16 3, i16 18, i16 18, i16 18, i16 10, i16 10, i16 19, i16 19, i16 19, i16 19, i16 19, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 14, i16 14, i16 9, i16 17, i16 17, i16 17, i16 17, i16 16, i16 16], align 16
@yyr2 = dso_local global [89 x i16] [i16 0, i16 0, i16 2, i16 2, i16 6, i16 4, i16 5, i16 3, i16 6, i16 5, i16 5, i16 8, i16 3, i16 1, i16 2, i16 1, i16 1, i16 1, i16 0, i16 1, i16 3, i16 4, i16 3, i16 3, i16 4, i16 2, i16 3, i16 1, i16 3, i16 3, i16 1, i16 0, i16 3, i16 1, i16 1, i16 3, i16 0, i16 2, i16 5, i16 6, i16 3, i16 4, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 6, i16 4, i16 4, i16 8, i16 4, i16 2, i16 0, i16 1, i16 2, i16 0, i16 1, i16 1, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 0, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0], align 16
@yychk = dso_local global [162 x i16] [i16 -1000, i16 -22, i16 -23, i16 265, i16 261, i16 259, i16 263, i16 272, i16 -24, i16 256, i16 10, i16 59, i16 -24, i16 282, i16 -16, i16 -17, i16 290, i16 291, i16 292, i16 293, i16 282, i16 -21, i16 264, i16 257, i16 -14, i16 276, i16 -16, i16 -17, i16 40, i16 -15, i16 282, i16 -24, i16 258, i16 -21, i16 266, i16 -24, i16 271, i16 40, i16 -2, i16 283, i16 269, i16 270, i16 -20, i16 -25, i16 -14, i16 -14, i16 -9, i16 276, i16 -14, i16 -14, i16 -24, i16 -16, i16 -24, i16 -21, i16 -21, i16 -1, i16 282, i16 -21, i16 267, i16 273, i16 273, i16 -3, i16 -11, i16 -19, i16 -18, i16 -13, i16 280, i16 274, i16 279, i16 277, i16 289, i16 -10, i16 278, i16 287, i16 288, i16 285, i16 281, i16 284, i16 286, i16 275, i16 -20, i16 -6, i16 -7, i16 42, i16 282, i16 38, i16 40, i16 -14, i16 -6, i16 -20, i16 -21, i16 -24, i16 260, i16 41, i16 258, i16 -21, i16 -21, i16 268, i16 -21, i16 -19, i16 282, i16 -12, i16 -11, i16 276, i16 -6, i16 -24, i16 40, i16 -8, i16 91, i16 -14, i16 262, i16 -14, i16 -6, i16 -24, i16 -4, i16 40, i16 282, i16 42, i16 38, i16 -24, i16 -1, i16 271, i16 -21, i16 267, i16 -24, i16 41, i16 -5, i16 -14, i16 282, i16 93, i16 283, i16 -6, i16 42, i16 -6, i16 41, i16 41, i16 -8, i16 41, i16 -4, i16 262, i16 -4, i16 -4, i16 -21, i16 -10, i16 41, i16 260, i16 -20, i16 93, i16 -6, i16 -15, i16 41, i16 42, i16 282, i16 -5, i16 -4, i16 -24, i16 40, i16 -4, i16 -21, i16 41, i16 -5, i16 41], align 16
@yydef = dso_local global [162 x i16] [i16 1, i16 -2, i16 2, i16 0, i16 88, i16 81, i16 88, i16 18, i16 13, i16 0, i16 15, i16 16, i16 3, i16 0, i16 81, i16 87, i16 83, i16 84, i16 85, i16 86, i16 0, i16 0, i16 0, i16 54, i16 57, i16 81, i16 81, i16 -2, i16 81, i16 0, i16 17, i16 14, i16 88, i16 0, i16 81, i16 7, i16 81, i16 -2, i16 0, i16 55, i16 0, i16 0, i16 53, i16 0, i16 80, i16 57, i16 0, i16 81, i16 0, i16 57, i16 12, i16 81, i16 5, i16 0, i16 47, i16 0, i16 33, i16 34, i16 81, i16 81, i16 81, i16 56, i16 58, i16 59, i16 0, i16 73, i16 67, i16 68, i16 69, i16 70, i16 71, i16 62, i16 63, i16 64, i16 76, i16 77, i16 78, i16 79, i16 65, i16 66, i16 0, i16 0, i16 19, i16 81, i16 27, i16 81, i16 0, i16 -2, i16 0, i16 36, i16 0, i16 6, i16 -2, i16 0, i16 81, i16 49, i16 50, i16 0, i16 52, i16 60, i16 61, i16 72, i16 74, i16 75, i16 0, i16 10, i16 81, i16 25, i16 0, i16 0, i16 0, i16 0, i16 0, i16 9, i16 0, i16 36, i16 0, i16 36, i16 36, i16 4, i16 32, i16 81, i16 35, i16 0, i16 8, i16 23, i16 0, i16 57, i16 30, i16 45, i16 0, i16 20, i16 0, i16 22, i16 26, i16 18, i16 44, i16 37, i16 0, i16 0, i16 42, i16 43, i16 48, i16 0, i16 24, i16 81, i16 36, i16 46, i16 21, i16 0, i16 40, i16 36, i16 81, i16 28, i16 29, i16 11, i16 81, i16 41, i16 51, i16 38, i16 0, i16 39], align 16
@yychar = dso_local global i32 -1, align 4
@yynerrs = dso_local global i32 0, align 4
@yyerrflag = dso_local global i16 0, align 2
@yyv = common dso_local global [150 x %union.YYSTYPE] zeroinitializer, align 16
@yyval = common dso_local global %union.YYSTYPE zeroinitializer, align 8
@yylval = common dso_local global %union.YYSTYPE zeroinitializer, align 8
@yyin = dso_local global %struct._IO_FILE* null, align 8
@yyout = dso_local global %struct._IO_FILE* null, align 8
@cdlexsccsid = dso_local global [24 x i8] c"@(#)cdlex.l\092.2 3/30/88\00", align 16
@yytext = common dso_local global [8192 x i8] zeroinitializer, align 16
@yyvstop = dso_local global [496 x i32] [i32 0, i32 56, i32 0, i32 54, i32 56, i32 0, i32 55, i32 0, i32 53, i32 56, i32 0, i32 55, i32 56, i32 0, i32 25, i32 56, i32 0, i32 52, i32 56, i32 0, i32 56, i32 0, i32 24, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 53, i32 0, i32 52, i32 0, i32 23, i32 0, i32 51, i32 0, i32 51, i32 0, i32 2, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 12, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 21, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 38, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 14, i32 51, i32 0, i32 51, i32 0, i32 17, i32 51, i32 0, i32 51, i32 0, i32 19, i32 51, i32 0, i32 20, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 26, i32 51, i32 0, i32 3, i32 51, i32 0, i32 28, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 34, i32 51, i32 0, i32 5, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 8, i32 51, i32 0, i32 9, i32 51, i32 0, i32 51, i32 0, i32 10, i32 51, i32 0, i32 39, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 15, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 49, i32 51, i32 0, i32 51, i32 0, i32 1, i32 51, i32 0, i32 51, i32 0, i32 29, i32 51, i32 0, i32 31, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 36, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 42, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 47, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 32, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 35, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 11, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 43, i32 51, i32 0, i32 44, i32 51, i32 0, i32 46, i32 51, i32 0, i32 51, i32 0, i32 22, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 4, i32 51, i32 0, i32 51, i32 0, i32 6, i32 51, i32 0, i32 51, i32 0, i32 37, i32 51, i32 0, i32 40, i32 51, i32 0, i32 13, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 30, i32 51, i32 0, i32 51, i32 0, i32 7, i32 51, i32 0, i32 51, i32 0, i32 41, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 48, i32 51, i32 0, i32 50, i32 51, i32 0, i32 27, i32 51, i32 0, i32 51, i32 0, i32 16, i32 51, i32 0, i32 18, i32 51, i32 0, i32 45, i32 51, i32 0, i32 51, i32 0, i32 33, i32 51, i32 0, i32 0], align 16
@yycrank = dso_local global [377 x %struct.yywork] [%struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 3 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 4 }, %struct.yywork { i8 1, i8 5 }, %struct.yywork { i8 31, i8 0 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork { i8 6, i8 0 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 6 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 7 }, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork { i8 1, i8 8 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 9 }, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 10 }, %struct.yywork { i8 10, i8 33 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 11 }, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 12 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 2, i8 10 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 13 }, %struct.yywork { i8 39, i8 69 }, %struct.yywork { i8 1, i8 14 }, %struct.yywork { i8 1, i8 15 }, %struct.yywork { i8 1, i8 16 }, %struct.yywork { i8 1, i8 17 }, %struct.yywork { i8 18, i8 48 }, %struct.yywork { i8 1, i8 18 }, %struct.yywork { i8 1, i8 19 }, %struct.yywork { i8 21, i8 51 }, %struct.yywork { i8 23, i8 53 }, %struct.yywork { i8 1, i8 20 }, %struct.yywork { i8 1, i8 21 }, %struct.yywork { i8 1, i8 22 }, %struct.yywork { i8 1, i8 23 }, %struct.yywork { i8 1, i8 24 }, %struct.yywork { i8 1, i8 25 }, %struct.yywork { i8 1, i8 26 }, %struct.yywork { i8 1, i8 27 }, %struct.yywork { i8 1, i8 28 }, %struct.yywork { i8 1, i8 29 }, %struct.yywork { i8 1, i8 30 }, %struct.yywork { i8 2, i8 13 }, %struct.yywork { i8 17, i8 46 }, %struct.yywork { i8 2, i8 14 }, %struct.yywork { i8 2, i8 15 }, %struct.yywork { i8 2, i8 16 }, %struct.yywork { i8 2, i8 17 }, %struct.yywork { i8 19, i8 49 }, %struct.yywork { i8 2, i8 18 }, %struct.yywork { i8 2, i8 19 }, %struct.yywork { i8 20, i8 50 }, %struct.yywork { i8 17, i8 47 }, %struct.yywork { i8 2, i8 20 }, %struct.yywork { i8 2, i8 21 }, %struct.yywork { i8 2, i8 22 }, %struct.yywork { i8 2, i8 23 }, %struct.yywork { i8 2, i8 24 }, %struct.yywork { i8 2, i8 25 }, %struct.yywork { i8 2, i8 26 }, %struct.yywork { i8 2, i8 27 }, %struct.yywork { i8 2, i8 28 }, %struct.yywork { i8 2, i8 29 }, %struct.yywork { i8 2, i8 30 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 13, i8 35 }, %struct.yywork { i8 13, i8 36 }, %struct.yywork { i8 22, i8 52 }, %struct.yywork { i8 13, i8 37 }, %struct.yywork { i8 25, i8 56 }, %struct.yywork { i8 26, i8 57 }, %struct.yywork { i8 28, i8 62 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 24, i8 54 }, %struct.yywork { i8 29, i8 63 }, %struct.yywork { i8 35, i8 66 }, %struct.yywork { i8 37, i8 67 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 24, i8 55 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 14, i8 38 }, %struct.yywork { i8 27, i8 58 }, %struct.yywork { i8 15, i8 42 }, %struct.yywork { i8 16, i8 44 }, %struct.yywork { i8 27, i8 59 }, %struct.yywork { i8 27, i8 60 }, %struct.yywork { i8 38, i8 68 }, %struct.yywork { i8 14, i8 39 }, %struct.yywork { i8 30, i8 64 }, %struct.yywork { i8 40, i8 70 }, %struct.yywork { i8 41, i8 71 }, %struct.yywork { i8 14, i8 40 }, %struct.yywork { i8 15, i8 43 }, %struct.yywork { i8 16, i8 45 }, %struct.yywork { i8 14, i8 41 }, %struct.yywork { i8 42, i8 72 }, %struct.yywork { i8 27, i8 61 }, %struct.yywork { i8 43, i8 73 }, %struct.yywork { i8 30, i8 65 }, %struct.yywork { i8 44, i8 74 }, %struct.yywork { i8 45, i8 75 }, %struct.yywork { i8 46, i8 78 }, %struct.yywork { i8 47, i8 79 }, %struct.yywork { i8 48, i8 80 }, %struct.yywork { i8 49, i8 81 }, %struct.yywork { i8 50, i8 82 }, %struct.yywork { i8 51, i8 83 }, %struct.yywork { i8 45, i8 76 }, %struct.yywork { i8 52, i8 84 }, %struct.yywork { i8 54, i8 85 }, %struct.yywork { i8 55, i8 86 }, %struct.yywork { i8 45, i8 77 }, %struct.yywork { i8 56, i8 87 }, %struct.yywork { i8 57, i8 88 }, %struct.yywork { i8 57, i8 89 }, %struct.yywork { i8 58, i8 91 }, %struct.yywork { i8 59, i8 92 }, %struct.yywork { i8 60, i8 93 }, %struct.yywork { i8 61, i8 94 }, %struct.yywork { i8 63, i8 96 }, %struct.yywork { i8 64, i8 98 }, %struct.yywork { i8 65, i8 99 }, %struct.yywork { i8 66, i8 101 }, %struct.yywork { i8 67, i8 102 }, %struct.yywork { i8 65, i8 100 }, %struct.yywork { i8 68, i8 103 }, %struct.yywork { i8 69, i8 104 }, %struct.yywork { i8 57, i8 90 }, %struct.yywork { i8 70, i8 105 }, %struct.yywork { i8 63, i8 97 }, %struct.yywork { i8 71, i8 106 }, %struct.yywork { i8 72, i8 107 }, %struct.yywork { i8 73, i8 108 }, %struct.yywork { i8 74, i8 109 }, %struct.yywork { i8 75, i8 110 }, %struct.yywork { i8 61, i8 95 }, %struct.yywork { i8 76, i8 111 }, %struct.yywork { i8 77, i8 112 }, %struct.yywork { i8 78, i8 113 }, %struct.yywork { i8 79, i8 114 }, %struct.yywork { i8 80, i8 115 }, %struct.yywork { i8 81, i8 116 }, %struct.yywork { i8 82, i8 118 }, %struct.yywork { i8 83, i8 119 }, %struct.yywork { i8 84, i8 120 }, %struct.yywork { i8 85, i8 121 }, %struct.yywork { i8 87, i8 122 }, %struct.yywork { i8 88, i8 123 }, %struct.yywork { i8 89, i8 124 }, %struct.yywork { i8 90, i8 125 }, %struct.yywork { i8 92, i8 126 }, %struct.yywork { i8 81, i8 117 }, %struct.yywork { i8 93, i8 127 }, %struct.yywork { i8 94, i8 -128 }, %struct.yywork { i8 95, i8 -127 }, %struct.yywork { i8 96, i8 -126 }, %struct.yywork { i8 97, i8 -125 }, %struct.yywork { i8 98, i8 -124 }, %struct.yywork { i8 99, i8 -123 }, %struct.yywork { i8 100, i8 -122 }, %struct.yywork { i8 101, i8 -121 }, %struct.yywork { i8 104, i8 -120 }, %struct.yywork { i8 105, i8 -119 }, %struct.yywork { i8 106, i8 -118 }, %struct.yywork { i8 107, i8 -117 }, %struct.yywork { i8 108, i8 -116 }, %struct.yywork { i8 109, i8 -115 }, %struct.yywork { i8 111, i8 -114 }, %struct.yywork { i8 112, i8 -113 }, %struct.yywork { i8 113, i8 -112 }, %struct.yywork { i8 114, i8 -111 }, %struct.yywork { i8 116, i8 -110 }, %struct.yywork { i8 119, i8 -109 }, %struct.yywork { i8 120, i8 -108 }, %struct.yywork { i8 121, i8 -107 }, %struct.yywork { i8 123, i8 -106 }, %struct.yywork { i8 124, i8 -105 }, %struct.yywork { i8 125, i8 -104 }, %struct.yywork { i8 126, i8 -103 }, %struct.yywork { i8 127, i8 -102 }, %struct.yywork { i8 -128, i8 -101 }, %struct.yywork { i8 -127, i8 -100 }, %struct.yywork { i8 -126, i8 -99 }, %struct.yywork { i8 -125, i8 -98 }, %struct.yywork { i8 -124, i8 -97 }, %struct.yywork { i8 -122, i8 -96 }, %struct.yywork { i8 -120, i8 -95 }, %struct.yywork { i8 -118, i8 -94 }, %struct.yywork { i8 -117, i8 -93 }, %struct.yywork { i8 -116, i8 -92 }, %struct.yywork { i8 -115, i8 -91 }, %struct.yywork { i8 -114, i8 -90 }, %struct.yywork { i8 -113, i8 -89 }, %struct.yywork { i8 -111, i8 -88 }, %struct.yywork { i8 -110, i8 -87 }, %struct.yywork { i8 -109, i8 -86 }, %struct.yywork { i8 -108, i8 -85 }, %struct.yywork { i8 -107, i8 -84 }, %struct.yywork { i8 -106, i8 -83 }, %struct.yywork { i8 -105, i8 -82 }, %struct.yywork { i8 -104, i8 -81 }, %struct.yywork { i8 -102, i8 -80 }, %struct.yywork { i8 -101, i8 -79 }, %struct.yywork { i8 -100, i8 -78 }, %struct.yywork { i8 -98, i8 -77 }, %struct.yywork { i8 -97, i8 -76 }, %struct.yywork { i8 -96, i8 -75 }, %struct.yywork { i8 -95, i8 -74 }, %struct.yywork { i8 -94, i8 -73 }, %struct.yywork { i8 -93, i8 -72 }, %struct.yywork { i8 -91, i8 -71 }, %struct.yywork { i8 -90, i8 -70 }, %struct.yywork { i8 -88, i8 -69 }, %struct.yywork { i8 -87, i8 -68 }, %struct.yywork { i8 -85, i8 -67 }, %struct.yywork { i8 -84, i8 -66 }, %struct.yywork { i8 -83, i8 -65 }, %struct.yywork { i8 -82, i8 -64 }, %struct.yywork { i8 -81, i8 -63 }, %struct.yywork { i8 -78, i8 -62 }, %struct.yywork { i8 -77, i8 -61 }, %struct.yywork { i8 -75, i8 -60 }, %struct.yywork { i8 -74, i8 -59 }, %struct.yywork { i8 -73, i8 -58 }, %struct.yywork { i8 -71, i8 -57 }, %struct.yywork { i8 -69, i8 -56 }, %struct.yywork { i8 -65, i8 -55 }, %struct.yywork { i8 -64, i8 -54 }, %struct.yywork { i8 -63, i8 -53 }, %struct.yywork { i8 -62, i8 -52 }, %struct.yywork { i8 -61, i8 -51 }, %struct.yywork { i8 -60, i8 -50 }, %struct.yywork { i8 -59, i8 -49 }, %struct.yywork { i8 -57, i8 -48 }, %struct.yywork { i8 -55, i8 -47 }, %struct.yywork { i8 -53, i8 -46 }, %struct.yywork { i8 -52, i8 -45 }, %struct.yywork { i8 -48, i8 -44 }, %struct.yywork { i8 -44, i8 -43 }, %struct.yywork zeroinitializer], align 16
@yysvec = dso_local global [215 x %struct.yysvf] [%struct.yysvf zeroinitializer, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -2) to %struct.yywork*), %struct.yysvf* null, i32* null }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -46) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 24) to %struct.yysvf*), i32* null }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 4) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 12) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 24) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -12) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 32) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 44) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 56) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 68) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 68) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 4) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 80) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 88) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 188) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 100) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 76) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 112) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 240) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 124) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 236) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 136) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 220) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 148) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 26) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 160) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 6) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 172) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 32) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 184) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 36) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 196) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 12) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 208) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 86) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 220) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 12) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 232) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 148) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 244) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 78) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 256) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 112) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 268) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 234) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 280) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 94) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 292) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 152) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 304) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 248) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 316) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -4) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 144) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 328) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 216) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 336) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 344) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 352) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 146) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 360) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 368) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 144) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 380) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 216) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 388) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 4) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 396) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 258) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 404) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 234) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 412) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 266) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 420) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 234) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 428) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 238) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 436) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 264) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 444) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 254) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 452) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 258) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 460) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 264) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 468) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 250) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 476) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 264) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 484) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 268) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 492) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 296) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 500) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 508) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 282) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 520) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 266) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 528) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 288) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 536) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 296) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 544) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 272) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 552) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 284) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 560) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 302) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 568) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 316) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 576) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 584) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 302) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 596) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 316) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 604) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 306) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 612) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 324) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 620) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 298) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 628) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 292) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 636) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 298) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 644) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 300) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 652) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 304) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 660) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 320) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 668) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 342) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 676) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 322) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 684) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 310) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 692) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 330) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 700) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 346) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 708) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 356) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 716) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 354) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 724) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 330) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 732) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 354) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 740) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 352) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 752) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 364) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 760) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 346) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 768) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 344) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 776) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 784) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 334) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 796) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 366) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 804) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 360) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 816) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 338) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 824) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 836) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 346) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 848) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 358) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 856) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 348) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 864) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 348) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 872) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 362) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 880) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 376) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 888) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 356) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 896) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 390) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 904) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 398) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 912) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 352) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 920) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 928) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 940) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 402) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 952) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 368) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 964) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 368) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 972) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 408) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 980) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 388) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 988) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 404) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 996) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1008) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 414) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1020) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 382) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1028) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 380) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1036) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 382) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1044) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1056) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 410) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1068) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1076) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1088) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 416) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1100) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 410) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1108) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 390) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1116) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1124) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 396) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1136) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 396) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1144) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 400) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1152) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 398) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1160) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 430) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1168) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 424) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1176) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 438) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1184) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 418) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1192) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 434) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1200) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 420) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1208) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1216) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 412) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1228) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1236) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 448) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1248) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1256) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 454) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1268) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 422) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1280) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 450) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1288) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 426) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1296) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 446) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1304) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 438) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1312) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1320) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 450) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1332) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 460) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1340) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 436) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1348) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 472) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1356) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 466) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1364) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 468) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1372) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 440) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1380) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 454) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1388) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1396) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1408) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 480) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1416) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 448) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1424) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1432) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 462) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1444) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 456) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1452) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1460) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 456) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1468) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 470) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1476) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 490) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1484) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1492) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1504) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1512) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1520) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1532) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 472) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1540) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1548) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 472) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1560) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1568) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 486) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1576) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 506) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1584) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1592) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1600) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1612) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 478) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1624) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 512) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1636) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1644) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1656) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 516) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1664) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 488) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1672) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1680) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 490) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1692) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1700) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 504) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1712) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1720) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1732) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1744) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 528) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1756) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1764) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 510) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1772) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 504) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1780) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 534) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1788) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 534) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1796) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 510) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1804) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1812) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 530) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1824) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1832) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 540) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1844) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1852) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 538) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1864) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 544) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1872) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1880) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1892) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1904) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 526) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1916) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1924) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1936) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1948) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 530) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1960) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1968) to i32*) }, %struct.yysvf zeroinitializer], align 16
@yytop = dso_local global %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 750) to %struct.yywork*), align 8
@yybgin = dso_local global %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 24) to %struct.yysvf*), align 8
@yymatch = dso_local global [257 x i8] c"\00\01\01\01\01\01\01\01\01\09\0A\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\01\01#\01\01&\01&&&\01,\01\01\010000000000\01&\01\01\01?\01AAAAAAAAAAAAAAAAAAAAAAAAAA&\01&\01A\01AAAAAAAAAAAAAAAAAAAAAAAAAA\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@yyextra = dso_local global [65 x i8] zeroinitializer, align 16
@yylineno = dso_local global i32 1, align 4
@yysbuf = common dso_local global [8192 x i8] zeroinitializer, align 16
@yysptr = dso_local global i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i32 0, i32 0), align 8
@yyprevious = dso_local global i32 10, align 4
@yymorfg = common dso_local global i32 0, align 4
@yyleng = common dso_local global i32 0, align 4
@yylstate = common dso_local global [8192 x %struct.yysvf*] zeroinitializer, align 16
@yyestate = common dso_local global %struct.yysvf* null, align 8
@yytchar = common dso_local global i32 0, align 4
@yyfnd = common dso_local global i32* null, align 8
@yyolsp = common dso_local global %struct.yysvf** null, align 8
@yylsp = common dso_local global %struct.yysvf** null, align 8
@crosscheck = dso_local global <{ [9 x i8], [9 x i8], <{ i8, [8 x i8] }>, [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x i8] }> <{ [9 x i8] zeroinitializer, [9 x i8] zeroinitializer, <{ i8, [8 x i8] }> <{ i8 1, [8 x i8] zeroinitializer }>, [9 x i8] c"\01\01\01\00\00\00\00\00\00", [9 x i8] c"\01\01\01\01\00\00\00\00\00", [9 x i8] c"\02\00\02\02\01\00\00\00\00", [9 x i8] c"\03\03\03\03\01\01\00\00\00", [9 x i8] c"\04\01\01\01\01\01\01\00\00", [9 x i8] c"\03\01\01\01\01\01\01\01\00" }>, align 16
@crosstypes = dso_local global [9 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 2 }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 8 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 1 }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 16 }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 128 }, %struct.anon.0 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 4 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 256 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 32 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 64 }], align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@helptext = dso_local global [24 x %struct.helpstruct] [%struct.helpstruct { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.72, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.82, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.85, i32 0, i32 0) }, %struct.helpstruct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.88, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i32 0, i32 0) }, %struct.helpstruct { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.91, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.92, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.93, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.94, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.95, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.97, i32 0, i32 0) }, %struct.helpstruct zeroinitializer], align 16
@.str.72 = private unnamed_addr constant [66 x i8] c"[] means optional; {} means 1 or more; <> means defined elsewhere\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"  commands are separated by ';' and newlines\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"command:\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"  declare <name> as <english>\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"  cast <name> into <english>\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"  explain <gibberish>\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"  set or set options\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"  help, ?\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"  quit or exit\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"english:\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"  function [( <decl-list> )] returning <english>\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"  array [<number>] of <english>\00", align 1
@.str.84 = private unnamed_addr constant [56 x i8] c"  [{ const | volatile | noalias }] pointer to <english>\00", align 1
@.str.85 = private unnamed_addr constant [79 x i8] c"  [{const|volatile}] {pointer|reference} to [member of class <name>] <english>\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"  <type>\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"type:\00", align 1
@.str.88 = private unnamed_addr constant [48 x i8] c"  {[<storage-class>] [{<modifier>}] [<C-type>]}\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"  { struct | union | enum } <name>\00", align 1
@.str.90 = private unnamed_addr constant [35 x i8] c"  {struct|class|union|enum} <name>\00", align 1
@.str.91 = private unnamed_addr constant [77 x i8] c"decllist: a comma separated list of <name>, <english> or <name> as <english>\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"name: a C identifier\00", align 1
@.str.93 = private unnamed_addr constant [68 x i8] c"gibberish: a C declaration, like 'int *x', or cast, like '(int *)x'\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"storage-class: extern, static, auto, register\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"C-type: int, char, float, double, or void\00", align 1
@.str.96 = private unnamed_addr constant [69 x i8] c"modifier: short, long, signed, unsigned, const, volatile, or noalias\00", align 1
@.str.97 = private unnamed_addr constant [60 x i8] c"modifier: short, long, signed, unsigned, const, or volatile\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" pointer to \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pointer to \00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"pointer to member of class\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"pointer to member of class \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" reference to \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"reference to \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"function returning \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"function (\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c") returning \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"array \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"of \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Function returning function\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"function returning pointer to function\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Function returning array\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"function returning pointer\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Array of function\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"array of pointer to function\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Inner array of unspecified size\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"array of pointer\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Array of void\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"pointer to void\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Pointer to array of unspecified dimension\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"pointer to object\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Reference to void\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Reference to array of unspecified dimension\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"reference to object\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c" (Pre-ANSI Compiler)\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c" (Ritchie Compiler)\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"noalias\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.66 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"Warning: Unsupported in%s C%s -- '%s' with '%s'\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [39 x i8] c"Warning: Unsupported in%s C%s -- '%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c" (ANSI Compiler)\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"%s: Internal error in crosscheck[%d,%d]=%d!\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"\09(maybe you mean \22%s\22)\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"%s: out of malloc space within cat()!\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"%s: malloc() failed!\0A\00", align 1
@prompting = internal global i32 1, align 4
@.str.147 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"nocreate\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"nointeractive\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"ritchie\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"preansi\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"ansi\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"cplusplus\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"Unknown set option: '%s'\0A\00", align 1
@.str.157 = private unnamed_addr constant [55 x i8] c"Valid set options (and command line equivalents) are:\0A\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"\09options\0A\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"\09create (-c), nocreate\0A\00", align 1
@.str.160 = private unnamed_addr constant [34 x i8] c"\09interactive (-i), nointeractive\0A\00", align 1
@.str.161 = private unnamed_addr constant [58 x i8] c"\09ritchie (-r), preansi (-p), ansi (-a) or cplusplus (-+)\0A\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"\0ACurrent set values are:\0A\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"\09%screate\0A\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"\09%sinteractive\0A\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"\09   ritchie\0A\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"\09(noritchie)\0A\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"\09   preansi\0A\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"\09(nopreansi)\0A\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"\09   ansi\0A\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"\09(noansi)\0A\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"\09   cplusplus\0A\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"\09(nocplusplus)\0A\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"array of type void\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"array of type pointer to void\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"reference to type void\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"cast %s into %s\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"Variable of type void\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"variable of type pointer to void\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"Register function\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"Register array\00", align 1
@.str.143 = private unnamed_addr constant [33 x i8] c"Register struct/union/enum/class\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"declare %s as \00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Cast into function\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"cast into pointer to function\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"Cast into array\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"cast into pointer\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"(%s%*s%s)%s\0A\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"Register struct/class\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"%s %s%s%s\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c" { }\0A\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"%s> \00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"bad character '%s'\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"bad switch yylook %d\00", align 1
@visible.buf = internal global [5 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"Input string too long, limit %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [46 x i8] c"Usage: %s [-r|-p|-a|-+] [-ci%s%s] [files...]\0A\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"\09-r Check against Ritchie PDP C Compiler\0A\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"\09-p Check against Pre-ANSI C Compiler\0A\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c" (the default)\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"\09-a Check against ANSI C Compiler%s\0A\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"\09-+ Check against C++ Compiler%s\0A\00", align 1
@.str.106 = private unnamed_addr constant [49 x i8] c"\09-c Create compilable output (include ; and {})\0A\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"\09-i Force interactive mode\0A\00", align 1
@namedkeyword.cmdlist = internal global [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* null], align 16
@.str.109 = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.115 = private unnamed_addr constant [29 x i8] c"Type `help' or `?' for help\0A\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"%s: cannot open temp file\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"%s: error writing to temp file\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.118 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"%s: cannot open %s\0A\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"Version:\0A\09%s\0A\09%s\0A\09%s\0A\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"c++decl\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"cirpa+dDV\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yyparse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [150 x i16], align 16
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca %union.YYSTYPE*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %union.YYSTYPE*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i16 0, i16* %6, align 2
  store i32 -1, i32* @yychar, align 4
  store i32 0, i32* @yynerrs, align 4
  store i16 0, i16* @yyerrflag, align 2
  %20 = getelementptr inbounds [150 x i16], [150 x i16]* %2, i64 0, i64 -1
  store i16* %20, i16** %7, align 8
  store %union.YYSTYPE* getelementptr inbounds ([150 x %union.YYSTYPE], [150 x %union.YYSTYPE]* @yyv, i64 0, i64 -1), %union.YYSTYPE** %9, align 8
  br label %21

21:                                               ; preds = %1356, %185, %83, %0
  %22 = load i16*, i16** %7, align 8
  %23 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %23, i16** %7, align 8
  %24 = getelementptr inbounds [150 x i16], [150 x i16]* %2, i64 0, i64 150
  %25 = icmp uge i16* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %1357

27:                                               ; preds = %21
  %28 = load i16, i16* %6, align 2
  %29 = load i16*, i16** %7, align 8
  store i16 %28, i16* %29, align 2
  %30 = load %union.YYSTYPE*, %union.YYSTYPE** %9, align 8
  %31 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %30, i32 1
  store %union.YYSTYPE* %31, %union.YYSTYPE** %9, align 8
  %32 = load %union.YYSTYPE*, %union.YYSTYPE** %9, align 8
  %33 = bitcast %union.YYSTYPE* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%union.YYSTYPE* @yyval to i8*), i64 24, i1 false)
  br label %34

34:                                               ; preds = %206, %27
  %35 = load i16, i16* %6, align 2
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds [162 x i16], [162 x i16]* @yypact, i64 0, i64 %36
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %8, align 2
  %39 = load i16, i16* %8, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp sle i32 %40, -1000
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %85

43:                                               ; preds = %34
  %44 = load i32, i32* @yychar, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call i32 @yylex()
  store i32 %47, i32* @yychar, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* @yychar, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* @yychar, align 4
  %53 = load i16, i16* %8, align 2
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %54, %52
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %8, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load i16, i16* %8, align 2
  %61 = sext i16 %60 to i32
  %62 = icmp sge i32 %61, 322
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %51
  br label %85

64:                                               ; preds = %59
  %65 = load i16, i16* %8, align 2
  %66 = sext i16 %65 to i64
  %67 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i64 0, i64 %66
  %68 = load i16, i16* %67, align 2
  store i16 %68, i16* %8, align 2
  %69 = sext i16 %68 to i64
  %70 = getelementptr inbounds [162 x i16], [162 x i16]* @yychk, i64 0, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = load i32, i32* @yychar, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  store i32 -1, i32* @yychar, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%union.YYSTYPE* @yyval to i8*), i8* align 8 bitcast (%union.YYSTYPE* @yylval to i8*), i64 24, i1 false)
  %76 = load i16, i16* %8, align 2
  store i16 %76, i16* %6, align 2
  %77 = load i16, i16* @yyerrflag, align 2
  %78 = sext i16 %77 to i32
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i16, i16* @yyerrflag, align 2
  %82 = add i16 %81, -1
  store i16 %82, i16* @yyerrflag, align 2
  br label %83

83:                                               ; preds = %80, %75
  br label %21

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %63, %42
  %86 = load i16, i16* %6, align 2
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds [162 x i16], [162 x i16]* @yydef, i64 0, i64 %87
  %89 = load i16, i16* %88, align 2
  store i16 %89, i16* %8, align 2
  %90 = sext i16 %89 to i32
  %91 = icmp eq i32 %90, -2
  br i1 %91, label %92, label %143

92:                                               ; preds = %85
  %93 = load i32, i32* @yychar, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = call i32 @yylex()
  store i32 %96, i32* @yychar, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* @yychar, align 4
  br label %99

99:                                               ; preds = %98, %95
  br label %100

100:                                              ; preds = %99, %92
  store i16* getelementptr inbounds ([46 x i16], [46 x i16]* @yyexca, i64 0, i64 0), i16** %10, align 8
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i16*, i16** %10, align 8
  %103 = load i16, i16* %102, align 2
  %104 = sext i16 %103 to i32
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %114, label %106

106:                                              ; preds = %101
  %107 = load i16*, i16** %10, align 8
  %108 = getelementptr inbounds i16, i16* %107, i64 1
  %109 = load i16, i16* %108, align 2
  %110 = sext i16 %109 to i32
  %111 = load i16, i16* %6, align 2
  %112 = sext i16 %111 to i32
  %113 = icmp ne i32 %110, %112
  br label %114

114:                                              ; preds = %106, %101
  %115 = phi i1 [ true, %101 ], [ %113, %106 ]
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116
  %118 = load i16*, i16** %10, align 8
  %119 = getelementptr inbounds i16, i16* %118, i64 2
  store i16* %119, i16** %10, align 8
  br label %101

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %134, %120
  %122 = load i16*, i16** %10, align 8
  %123 = getelementptr inbounds i16, i16* %122, i64 2
  store i16* %123, i16** %10, align 8
  %124 = load i16, i16* %123, align 2
  %125 = sext i16 %124 to i32
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load i16*, i16** %10, align 8
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = load i32, i32* @yychar, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %135

134:                                              ; preds = %127
  br label %121

135:                                              ; preds = %133, %121
  %136 = load i16*, i16** %10, align 8
  %137 = getelementptr inbounds i16, i16* %136, i64 1
  %138 = load i16, i16* %137, align 2
  store i16 %138, i16* %8, align 2
  %139 = sext i16 %138 to i32
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 0, i32* %1, align 4
  br label %1357

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %85
  %144 = load i16, i16* %8, align 2
  %145 = sext i16 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %208

147:                                              ; preds = %143
  %148 = load i16, i16* @yyerrflag, align 2
  %149 = sext i16 %148 to i32
  switch i32 %149, label %207 [
    i32 0, label %150
    i32 1, label %154
    i32 2, label %154
    i32 3, label %202
  ]

150:                                              ; preds = %147
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* @yynerrs, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @yynerrs, align 4
  br label %154

154:                                              ; preds = %151, %147, %147
  store i16 3, i16* @yyerrflag, align 2
  br label %155

155:                                              ; preds = %190, %154
  %156 = load i16*, i16** %7, align 8
  %157 = getelementptr inbounds [150 x i16], [150 x i16]* %2, i64 0, i64 0
  %158 = icmp uge i16* %156, %157
  br i1 %158, label %159, label %200

159:                                              ; preds = %155
  %160 = load i16*, i16** %7, align 8
  %161 = load i16, i16* %160, align 2
  %162 = sext i16 %161 to i64
  %163 = getelementptr inbounds [162 x i16], [162 x i16]* @yypact, i64 0, i64 %162
  %164 = load i16, i16* %163, align 2
  %165 = sext i16 %164 to i32
  %166 = add nsw i32 %165, 256
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %8, align 2
  %168 = load i16, i16* %8, align 2
  %169 = sext i16 %168 to i32
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %159
  %172 = load i16, i16* %8, align 2
  %173 = sext i16 %172 to i32
  %174 = icmp slt i32 %173, 322
  br i1 %174, label %175, label %190

175:                                              ; preds = %171
  %176 = load i16, i16* %8, align 2
  %177 = sext i16 %176 to i64
  %178 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i64 0, i64 %177
  %179 = load i16, i16* %178, align 2
  %180 = sext i16 %179 to i64
  %181 = getelementptr inbounds [162 x i16], [162 x i16]* @yychk, i64 0, i64 %180
  %182 = load i16, i16* %181, align 2
  %183 = sext i16 %182 to i32
  %184 = icmp eq i32 %183, 256
  br i1 %184, label %185, label %190

185:                                              ; preds = %175
  %186 = load i16, i16* %8, align 2
  %187 = sext i16 %186 to i64
  %188 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i64 0, i64 %187
  %189 = load i16, i16* %188, align 2
  store i16 %189, i16* %6, align 2
  br label %21

190:                                              ; preds = %175, %171, %159
  %191 = load i16*, i16** %7, align 8
  %192 = load i16, i16* %191, align 2
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds [162 x i16], [162 x i16]* @yypact, i64 0, i64 %193
  %195 = load i16, i16* %194, align 2
  store i16 %195, i16* %8, align 2
  %196 = load i16*, i16** %7, align 8
  %197 = getelementptr inbounds i16, i16* %196, i32 -1
  store i16* %197, i16** %7, align 8
  %198 = load %union.YYSTYPE*, %union.YYSTYPE** %9, align 8
  %199 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %198, i32 -1
  store %union.YYSTYPE* %199, %union.YYSTYPE** %9, align 8
  br label %155

200:                                              ; preds = %155
  br label %201

201:                                              ; preds = %205, %200
  store i32 1, i32* %1, align 4
  br label %1357

202:                                              ; preds = %147
  %203 = load i32, i32* @yychar, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %201

206:                                              ; preds = %202
  store i32 -1, i32* @yychar, align 4
  br label %34

207:                                              ; preds = %147
  br label %208

208:                                              ; preds = %207, %143
  %209 = load i16, i16* %8, align 2
  %210 = sext i16 %209 to i64
  %211 = getelementptr inbounds [89 x i16], [89 x i16]* @yyr2, i64 0, i64 %210
  %212 = load i16, i16* %211, align 2
  %213 = sext i16 %212 to i32
  %214 = load i16*, i16** %7, align 8
  %215 = sext i32 %213 to i64
  %216 = sub i64 0, %215
  %217 = getelementptr inbounds i16, i16* %214, i64 %216
  store i16* %217, i16** %7, align 8
  %218 = load %union.YYSTYPE*, %union.YYSTYPE** %9, align 8
  store %union.YYSTYPE* %218, %union.YYSTYPE** %5, align 8
  %219 = load i16, i16* %8, align 2
  %220 = sext i16 %219 to i64
  %221 = getelementptr inbounds [89 x i16], [89 x i16]* @yyr2, i64 0, i64 %220
  %222 = load i16, i16* %221, align 2
  %223 = sext i16 %222 to i32
  %224 = load %union.YYSTYPE*, %union.YYSTYPE** %9, align 8
  %225 = sext i32 %223 to i64
  %226 = sub i64 0, %225
  %227 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %224, i64 %226
  store %union.YYSTYPE* %227, %union.YYSTYPE** %9, align 8
  %228 = load %union.YYSTYPE*, %union.YYSTYPE** %9, align 8
  %229 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %228, i64 1
  %230 = bitcast %union.YYSTYPE* %229 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%union.YYSTYPE* @yyval to i8*), i8* align 8 %230, i64 24, i1 false)
  %231 = load i16, i16* %8, align 2
  store i16 %231, i16* %4, align 2
  %232 = load i16, i16* %8, align 2
  %233 = sext i16 %232 to i64
  %234 = getelementptr inbounds [89 x i16], [89 x i16]* @yyr1, i64 0, i64 %233
  %235 = load i16, i16* %234, align 2
  store i16 %235, i16* %8, align 2
  %236 = load i16, i16* %8, align 2
  %237 = sext i16 %236 to i64
  %238 = getelementptr inbounds [26 x i16], [26 x i16]* @yypgo, i64 0, i64 %237
  %239 = load i16, i16* %238, align 2
  %240 = sext i16 %239 to i32
  %241 = load i16*, i16** %7, align 8
  %242 = load i16, i16* %241, align 2
  %243 = sext i16 %242 to i32
  %244 = add nsw i32 %240, %243
  %245 = add nsw i32 %244, 1
  %246 = trunc i32 %245 to i16
  store i16 %246, i16* %3, align 2
  %247 = load i16, i16* %3, align 2
  %248 = sext i16 %247 to i32
  %249 = icmp sge i32 %248, 322
  br i1 %249, label %263, label %250

250:                                              ; preds = %208
  %251 = load i16, i16* %3, align 2
  %252 = sext i16 %251 to i64
  %253 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i64 0, i64 %252
  %254 = load i16, i16* %253, align 2
  store i16 %254, i16* %6, align 2
  %255 = sext i16 %254 to i64
  %256 = getelementptr inbounds [162 x i16], [162 x i16]* @yychk, i64 0, i64 %255
  %257 = load i16, i16* %256, align 2
  %258 = sext i16 %257 to i32
  %259 = load i16, i16* %8, align 2
  %260 = sext i16 %259 to i32
  %261 = sub nsw i32 0, %260
  %262 = icmp ne i32 %258, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %250, %208
  %264 = load i16, i16* %8, align 2
  %265 = sext i16 %264 to i64
  %266 = getelementptr inbounds [26 x i16], [26 x i16]* @yypgo, i64 0, i64 %265
  %267 = load i16, i16* %266, align 2
  %268 = sext i16 %267 to i64
  %269 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i64 0, i64 %268
  %270 = load i16, i16* %269, align 2
  store i16 %270, i16* %6, align 2
  br label %271

271:                                              ; preds = %263, %250
  %272 = load i16, i16* %4, align 2
  %273 = sext i16 %272 to i32
  switch i32 %273, label %1356 [
    i32 2, label %274
    i32 3, label %275
    i32 4, label %276
    i32 5, label %300
    i32 6, label %320
    i32 7, label %340
    i32 8, label %356
    i32 9, label %373
    i32 10, label %386
    i32 11, label %399
    i32 12, label %416
    i32 14, label %421
    i32 15, label %422
    i32 16, label %423
    i32 17, label %424
    i32 18, label %429
    i32 20, label %431
    i32 21, label %450
    i32 22, label %466
    i32 23, label %489
    i32 24, label %496
    i32 25, label %508
    i32 26, label %519
    i32 27, label %524
    i32 28, label %530
    i32 29, label %541
    i32 30, label %564
    i32 31, label %569
    i32 32, label %571
    i32 33, label %582
    i32 34, label %587
    i32 35, label %605
    i32 36, label %627
    i32 37, label %629
    i32 38, label %631
    i32 39, label %638
    i32 40, label %650
    i32 41, label %655
    i32 42, label %671
    i32 43, label %678
    i32 44, label %689
    i32 45, label %700
    i32 46, label %702
    i32 47, label %709
    i32 48, label %742
    i32 49, label %780
    i32 50, label %823
    i32 51, label %880
    i32 52, label %945
    i32 53, label %1012
    i32 54, label %1058
    i32 55, label %1060
    i32 56, label %1068
    i32 57, label %1073
    i32 58, label %1074
    i32 59, label %1079
    i32 60, label %1084
    i32 61, label %1095
    i32 64, label %1106
    i32 66, label %1111
    i32 67, label %1116
    i32 68, label %1123
    i32 69, label %1130
    i32 70, label %1137
    i32 71, label %1144
    i32 72, label %1151
    i32 73, label %1162
    i32 74, label %1167
    i32 75, label %1172
    i32 76, label %1210
    i32 77, label %1217
    i32 78, label %1224
    i32 79, label %1231
    i32 80, label %1238
    i32 81, label %1290
    i32 82, label %1292
    i32 86, label %1344
    i32 87, label %1349
    i32 88, label %1354
  ]

274:                                              ; preds = %271
  call void @prompt()
  store i8 0, i8* @prev, align 1
  br label %1356

275:                                              ; preds = %271
  call void @dohelp()
  br label %1356

276:                                              ; preds = %271
  %277 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %278 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %277, i64 -4
  %279 = bitcast %union.YYSTYPE* %278 to i8**
  %280 = load i8*, i8** %279, align 8
  %281 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %282 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %281, i64 -2
  %283 = bitcast %union.YYSTYPE* %282 to i8**
  %284 = load i8*, i8** %283, align 8
  %285 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %286 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %285, i64 -1
  %287 = bitcast %union.YYSTYPE* %286 to %struct.anon*
  %288 = getelementptr inbounds %struct.anon, %struct.anon* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %291 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %290, i64 -1
  %292 = bitcast %union.YYSTYPE* %291 to %struct.anon*
  %293 = getelementptr inbounds %struct.anon, %struct.anon* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %296 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %295, i64 -1
  %297 = bitcast %union.YYSTYPE* %296 to %struct.anon*
  %298 = getelementptr inbounds %struct.anon, %struct.anon* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  call void @dodeclare(i8* %280, i8* %284, i8* %289, i8* %294, i8* %299)
  br label %1356

300:                                              ; preds = %271
  %301 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %302 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %301, i64 -2
  %303 = bitcast %union.YYSTYPE* %302 to i8**
  %304 = load i8*, i8** %303, align 8
  %305 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %306 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %305, i64 -1
  %307 = bitcast %union.YYSTYPE* %306 to %struct.anon*
  %308 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %311 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %310, i64 -1
  %312 = bitcast %union.YYSTYPE* %311 to %struct.anon*
  %313 = getelementptr inbounds %struct.anon, %struct.anon* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %316 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %315, i64 -1
  %317 = bitcast %union.YYSTYPE* %316 to %struct.anon*
  %318 = getelementptr inbounds %struct.anon, %struct.anon* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  call void @dodeclare(i8* null, i8* %304, i8* %309, i8* %314, i8* %319)
  br label %1356

320:                                              ; preds = %271
  %321 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %322 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %321, i64 -3
  %323 = bitcast %union.YYSTYPE* %322 to i8**
  %324 = load i8*, i8** %323, align 8
  %325 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %326 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %325, i64 -1
  %327 = bitcast %union.YYSTYPE* %326 to %struct.anon*
  %328 = getelementptr inbounds %struct.anon, %struct.anon* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %331 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %330, i64 -1
  %332 = bitcast %union.YYSTYPE* %331 to %struct.anon*
  %333 = getelementptr inbounds %struct.anon, %struct.anon* %332, i32 0, i32 1
  %334 = load i8*, i8** %333, align 8
  %335 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %336 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %335, i64 -1
  %337 = bitcast %union.YYSTYPE* %336 to %struct.anon*
  %338 = getelementptr inbounds %struct.anon, %struct.anon* %337, i32 0, i32 2
  %339 = load i8*, i8** %338, align 8
  call void @docast(i8* %324, i8* %329, i8* %334, i8* %339)
  br label %1356

340:                                              ; preds = %271
  %341 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %342 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %341, i64 -1
  %343 = bitcast %union.YYSTYPE* %342 to %struct.anon*
  %344 = getelementptr inbounds %struct.anon, %struct.anon* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %347 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %346, i64 -1
  %348 = bitcast %union.YYSTYPE* %347 to %struct.anon*
  %349 = getelementptr inbounds %struct.anon, %struct.anon* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %352 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %351, i64 -1
  %353 = bitcast %union.YYSTYPE* %352 to %struct.anon*
  %354 = getelementptr inbounds %struct.anon, %struct.anon* %353, i32 0, i32 2
  %355 = load i8*, i8** %354, align 8
  call void @docast(i8* null, i8* %345, i8* %350, i8* %355)
  br label %1356

356:                                              ; preds = %271
  %357 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %358 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %357, i64 -4
  %359 = bitcast %union.YYSTYPE* %358 to i8**
  %360 = load i8*, i8** %359, align 8
  %361 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %362 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %361, i64 -3
  %363 = bitcast %union.YYSTYPE* %362 to i8**
  %364 = load i8*, i8** %363, align 8
  %365 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %366 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %365, i64 -2
  %367 = bitcast %union.YYSTYPE* %366 to i8**
  %368 = load i8*, i8** %367, align 8
  %369 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %370 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %369, i64 -1
  %371 = bitcast %union.YYSTYPE* %370 to i8**
  %372 = load i8*, i8** %371, align 8
  call void @dodexplain(i8* %360, i8* %364, i8* %368, i8* %372)
  br label %1356

373:                                              ; preds = %271
  %374 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %375 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %374, i64 -3
  %376 = bitcast %union.YYSTYPE* %375 to i8**
  %377 = load i8*, i8** %376, align 8
  %378 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %379 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %378, i64 -2
  %380 = bitcast %union.YYSTYPE* %379 to i8**
  %381 = load i8*, i8** %380, align 8
  %382 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %383 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %382, i64 -1
  %384 = bitcast %union.YYSTYPE* %383 to i8**
  %385 = load i8*, i8** %384, align 8
  call void @dodexplain(i8* %377, i8* %381, i8* null, i8* %385)
  br label %1356

386:                                              ; preds = %271
  %387 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %388 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %387, i64 -3
  %389 = bitcast %union.YYSTYPE* %388 to i8**
  %390 = load i8*, i8** %389, align 8
  %391 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %392 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %391, i64 -2
  %393 = bitcast %union.YYSTYPE* %392 to i8**
  %394 = load i8*, i8** %393, align 8
  %395 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %396 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %395, i64 -1
  %397 = bitcast %union.YYSTYPE* %396 to i8**
  %398 = load i8*, i8** %397, align 8
  call void @dodexplain(i8* %390, i8* %394, i8* null, i8* %398)
  br label %1356

399:                                              ; preds = %271
  %400 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %401 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %400, i64 -5
  %402 = bitcast %union.YYSTYPE* %401 to i8**
  %403 = load i8*, i8** %402, align 8
  %404 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %405 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %404, i64 -4
  %406 = bitcast %union.YYSTYPE* %405 to i8**
  %407 = load i8*, i8** %406, align 8
  %408 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %409 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %408, i64 -3
  %410 = bitcast %union.YYSTYPE* %409 to i8**
  %411 = load i8*, i8** %410, align 8
  %412 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %413 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %412, i64 -1
  %414 = bitcast %union.YYSTYPE* %413 to i8**
  %415 = load i8*, i8** %414, align 8
  call void @docexplain(i8* %403, i8* %407, i8* %411, i8* %415)
  br label %1356

416:                                              ; preds = %271
  %417 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %418 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %417, i64 -1
  %419 = bitcast %union.YYSTYPE* %418 to i8**
  %420 = load i8*, i8** %419, align 8
  call void @doset(i8* %420)
  br label %1356

421:                                              ; preds = %271
  store i16 0, i16* @yyerrflag, align 2
  br label %1356

422:                                              ; preds = %271
  call void @doprompt()
  br label %1356

423:                                              ; preds = %271
  call void @noprompt()
  br label %1356

424:                                              ; preds = %271
  %425 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %426 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %425, i64 0
  %427 = bitcast %union.YYSTYPE* %426 to i8**
  %428 = load i8*, i8** %427, align 8
  store i8* %428, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

429:                                              ; preds = %271
  %430 = call i8* @ds(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @unknown_name, i64 0, i64 0))
  store i8* %430, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

431:                                              ; preds = %271
  %432 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %433 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %432, i64 0
  %434 = bitcast %union.YYSTYPE* %433 to i8**
  %435 = load i8*, i8** %434, align 8
  %436 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %437 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %436, i64 -1
  %438 = bitcast %union.YYSTYPE* %437 to i8**
  %439 = load i8*, i8** %438, align 8
  %440 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %441 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %440, i64 -1
  %442 = bitcast %union.YYSTYPE* %441 to i8**
  %443 = load i8*, i8** %442, align 8
  %444 = call i64 @strlen(i8* %443) #8
  %445 = icmp ne i64 %444, 0
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %448 = call i8* @ds(i8* %447)
  %449 = call i8* (i8*, ...) @cat(i8* %435, i8* %439, i8* %448, i8* null)
  store i8* %449, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %1356

450:                                              ; preds = %271
  %451 = load i32, i32* @CplusplusFlag, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %450
  call void @unsupp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %454

454:                                              ; preds = %453, %450
  %455 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %456 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %455, i64 0
  %457 = bitcast %union.YYSTYPE* %456 to i8**
  %458 = load i8*, i8** %457, align 8
  %459 = call i8* @ds(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %460 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %461 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %460, i64 -3
  %462 = bitcast %union.YYSTYPE* %461 to i8**
  %463 = load i8*, i8** %462, align 8
  %464 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %465 = call i8* (i8*, ...) @cat(i8* %458, i8* %459, i8* %463, i8* %464, i8* null)
  store i8* %465, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %1356

466:                                              ; preds = %271
  %467 = load i32, i32* @CplusplusFlag, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %466
  call void @unsupp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* null)
  br label %470

470:                                              ; preds = %469, %466
  %471 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %472 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %471, i64 0
  %473 = bitcast %union.YYSTYPE* %472 to i8**
  %474 = load i8*, i8** %473, align 8
  %475 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %476 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %475, i64 -1
  %477 = bitcast %union.YYSTYPE* %476 to i8**
  %478 = load i8*, i8** %477, align 8
  %479 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %480 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %479, i64 -1
  %481 = bitcast %union.YYSTYPE* %480 to i8**
  %482 = load i8*, i8** %481, align 8
  %483 = call i64 @strlen(i8* %482) #8
  %484 = icmp ne i64 %483, 0
  %485 = zext i1 %484 to i64
  %486 = select i1 %484, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)
  %487 = call i8* @ds(i8* %486)
  %488 = call i8* (i8*, ...) @cat(i8* %474, i8* %478, i8* %487, i8* null)
  store i8* %488, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 114, i8* @prev, align 1
  br label %1356

489:                                              ; preds = %271
  %490 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %491 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %490, i64 -2
  %492 = bitcast %union.YYSTYPE* %491 to i8**
  %493 = load i8*, i8** %492, align 8
  %494 = call i8* @ds(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %495 = call i8* (i8*, ...) @cat(i8* %493, i8* %494, i8* null)
  store i8* %495, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %1356

496:                                              ; preds = %271
  %497 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %498 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %497, i64 -3
  %499 = bitcast %union.YYSTYPE* %498 to i8**
  %500 = load i8*, i8** %499, align 8
  %501 = call i8* @ds(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %502 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %503 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %502, i64 -1
  %504 = bitcast %union.YYSTYPE* %503 to i8**
  %505 = load i8*, i8** %504, align 8
  %506 = call i8* @ds(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %507 = call i8* (i8*, ...) @cat(i8* %500, i8* %501, i8* %505, i8* %506, i8* null)
  store i8* %507, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %1356

508:                                              ; preds = %271
  %509 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %510 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %509, i64 -1
  %511 = bitcast %union.YYSTYPE* %510 to i8**
  %512 = load i8*, i8** %511, align 8
  %513 = call i8* @ds(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %514 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %515 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %514, i64 0
  %516 = bitcast %union.YYSTYPE* %515 to i8**
  %517 = load i8*, i8** %516, align 8
  %518 = call i8* (i8*, ...) @cat(i8* %512, i8* %513, i8* %517, i8* null)
  store i8* %518, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 97, i8* @prev, align 1
  br label %1356

519:                                              ; preds = %271
  %520 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %521 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %520, i64 -1
  %522 = bitcast %union.YYSTYPE* %521 to i8**
  %523 = load i8*, i8** %522, align 8
  store i8* %523, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

524:                                              ; preds = %271
  %525 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %526 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %525, i64 0
  %527 = bitcast %union.YYSTYPE* %526 to i8**
  %528 = load i8*, i8** %527, align 8
  store i8* %528, i8** @savedname, align 8
  %529 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store i8* %529, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 110, i8* @prev, align 1
  br label %1356

530:                                              ; preds = %271
  %531 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %532 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %531, i64 -2
  %533 = bitcast %union.YYSTYPE* %532 to i8**
  %534 = load i8*, i8** %533, align 8
  %535 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %536 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %537 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %536, i64 0
  %538 = bitcast %union.YYSTYPE* %537 to i8**
  %539 = load i8*, i8** %538, align 8
  %540 = call i8* (i8*, ...) @cat(i8* %534, i8* %535, i8* %539, i8* null)
  store i8* %540, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

541:                                              ; preds = %271
  %542 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %543 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %542, i64 0
  %544 = bitcast %union.YYSTYPE* %543 to i8**
  %545 = load i8*, i8** %544, align 8
  %546 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %547 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %546, i64 -2
  %548 = bitcast %union.YYSTYPE* %547 to i8**
  %549 = load i8*, i8** %548, align 8
  %550 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %551 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %550, i64 -2
  %552 = bitcast %union.YYSTYPE* %551 to i8**
  %553 = load i8*, i8** %552, align 8
  %554 = call i64 @strlen(i8* %553) #8
  %555 = icmp ne i64 %554, 0
  %556 = zext i1 %555 to i64
  %557 = select i1 %555, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %558 = call i8* @ds(i8* %557)
  %559 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %560 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %559, i64 -1
  %561 = bitcast %union.YYSTYPE* %560 to i8**
  %562 = load i8*, i8** %561, align 8
  %563 = call i8* (i8*, ...) @cat(i8* %545, i8* %549, i8* %558, i8* %562, i8* null)
  store i8* %563, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

564:                                              ; preds = %271
  %565 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %566 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %565, i64 0
  %567 = bitcast %union.YYSTYPE* %566 to i8**
  %568 = load i8*, i8** %567, align 8
  store i8* %568, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

569:                                              ; preds = %271
  %570 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store i8* %570, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

571:                                              ; preds = %271
  %572 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %573 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %572, i64 -2
  %574 = bitcast %union.YYSTYPE* %573 to i8**
  %575 = load i8*, i8** %574, align 8
  %576 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %577 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %578 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %577, i64 0
  %579 = bitcast %union.YYSTYPE* %578 to i8**
  %580 = load i8*, i8** %579, align 8
  %581 = call i8* (i8*, ...) @cat(i8* %575, i8* %576, i8* %580, i8* null)
  store i8* %581, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

582:                                              ; preds = %271
  %583 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %584 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %583, i64 0
  %585 = bitcast %union.YYSTYPE* %584 to i8**
  %586 = load i8*, i8** %585, align 8
  store i8* %586, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

587:                                              ; preds = %271
  %588 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %589 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %588, i64 0
  %590 = bitcast %union.YYSTYPE* %589 to %struct.anon*
  %591 = getelementptr inbounds %struct.anon, %struct.anon* %590, i32 0, i32 2
  %592 = load i8*, i8** %591, align 8
  %593 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %594 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %595 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %594, i64 0
  %596 = bitcast %union.YYSTYPE* %595 to %struct.anon*
  %597 = getelementptr inbounds %struct.anon, %struct.anon* %596, i32 0, i32 0
  %598 = load i8*, i8** %597, align 8
  %599 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %600 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %599, i64 0
  %601 = bitcast %union.YYSTYPE* %600 to %struct.anon*
  %602 = getelementptr inbounds %struct.anon, %struct.anon* %601, i32 0, i32 1
  %603 = load i8*, i8** %602, align 8
  %604 = call i8* (i8*, ...) @cat(i8* %592, i8* %593, i8* %598, i8* %603, i8* null)
  store i8* %604, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

605:                                              ; preds = %271
  %606 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %607 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %606, i64 0
  %608 = bitcast %union.YYSTYPE* %607 to %struct.anon*
  %609 = getelementptr inbounds %struct.anon, %struct.anon* %608, i32 0, i32 2
  %610 = load i8*, i8** %609, align 8
  %611 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %612 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %613 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %612, i64 0
  %614 = bitcast %union.YYSTYPE* %613 to %struct.anon*
  %615 = getelementptr inbounds %struct.anon, %struct.anon* %614, i32 0, i32 0
  %616 = load i8*, i8** %615, align 8
  %617 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %618 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %617, i64 -2
  %619 = bitcast %union.YYSTYPE* %618 to i8**
  %620 = load i8*, i8** %619, align 8
  %621 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %622 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %621, i64 0
  %623 = bitcast %union.YYSTYPE* %622 to %struct.anon*
  %624 = getelementptr inbounds %struct.anon, %struct.anon* %623, i32 0, i32 1
  %625 = load i8*, i8** %624, align 8
  %626 = call i8* (i8*, ...) @cat(i8* %610, i8* %611, i8* %616, i8* %620, i8* %625, i8* null)
  store i8* %626, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

627:                                              ; preds = %271
  %628 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store i8* %628, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

629:                                              ; preds = %271
  %630 = call i8* @ds(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i8* %630, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %1356

631:                                              ; preds = %271
  %632 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %633 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %632, i64 -3
  %634 = bitcast %union.YYSTYPE* %633 to i8**
  %635 = load i8*, i8** %634, align 8
  %636 = call i8* @ds(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %637 = call i8* (i8*, ...) @cat(i8* %635, i8* %636, i8* null)
  store i8* %637, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %1356

638:                                              ; preds = %271
  %639 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %640 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %639, i64 -4
  %641 = bitcast %union.YYSTYPE* %640 to i8**
  %642 = load i8*, i8** %641, align 8
  %643 = call i8* @ds(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %644 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %645 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %644, i64 -1
  %646 = bitcast %union.YYSTYPE* %645 to i8**
  %647 = load i8*, i8** %646, align 8
  %648 = call i8* @ds(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %649 = call i8* (i8*, ...) @cat(i8* %642, i8* %643, i8* %647, i8* %648, i8* null)
  store i8* %649, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %1356

650:                                              ; preds = %271
  %651 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %652 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %651, i64 -1
  %653 = bitcast %union.YYSTYPE* %652 to i8**
  %654 = load i8*, i8** %653, align 8
  store i8* %654, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

655:                                              ; preds = %271
  %656 = load i32, i32* @CplusplusFlag, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %659, label %658

658:                                              ; preds = %655
  call void @unsupp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %659

659:                                              ; preds = %658, %655
  %660 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %661 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %660, i64 0
  %662 = bitcast %union.YYSTYPE* %661 to i8**
  %663 = load i8*, i8** %662, align 8
  %664 = call i8* @ds(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %665 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %666 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %665, i64 -3
  %667 = bitcast %union.YYSTYPE* %666 to i8**
  %668 = load i8*, i8** %667, align 8
  %669 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %670 = call i8* (i8*, ...) @cat(i8* %663, i8* %664, i8* %668, i8* %669, i8* null)
  store i8* %670, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %1356

671:                                              ; preds = %271
  %672 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %673 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %672, i64 0
  %674 = bitcast %union.YYSTYPE* %673 to i8**
  %675 = load i8*, i8** %674, align 8
  %676 = call i8* @ds(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %677 = call i8* (i8*, ...) @cat(i8* %675, i8* %676, i8* null)
  store i8* %677, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %1356

678:                                              ; preds = %271
  %679 = load i32, i32* @CplusplusFlag, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %682, label %681

681:                                              ; preds = %678
  call void @unsupp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* null)
  br label %682

682:                                              ; preds = %681, %678
  %683 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %684 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %683, i64 0
  %685 = bitcast %union.YYSTYPE* %684 to i8**
  %686 = load i8*, i8** %685, align 8
  %687 = call i8* @ds(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %688 = call i8* (i8*, ...) @cat(i8* %686, i8* %687, i8* null)
  store i8* %688, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 114, i8* @prev, align 1
  br label %1356

689:                                              ; preds = %271
  %690 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %691 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %690, i64 -1
  %692 = bitcast %union.YYSTYPE* %691 to i8**
  %693 = load i8*, i8** %692, align 8
  %694 = call i8* @ds(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %695 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %696 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %695, i64 0
  %697 = bitcast %union.YYSTYPE* %696 to i8**
  %698 = load i8*, i8** %697, align 8
  %699 = call i8* (i8*, ...) @cat(i8* %693, i8* %694, i8* %698, i8* null)
  store i8* %699, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 97, i8* @prev, align 1
  br label %1356

700:                                              ; preds = %271
  %701 = call i8* @ds(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  store i8* %701, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

702:                                              ; preds = %271
  %703 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %704 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %703, i64 -1
  %705 = bitcast %union.YYSTYPE* %704 to i8**
  %706 = load i8*, i8** %705, align 8
  %707 = call i8* @ds(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %708 = call i8* (i8*, ...) @cat(i8* %706, i8* %707, i8* null)
  store i8* %708, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

709:                                              ; preds = %271
  %710 = load i8, i8* @prev, align 1
  %711 = sext i8 %710 to i32
  %712 = icmp eq i32 %711, 102
  br i1 %712, label %713, label %714

713:                                              ; preds = %709
  call void @unsupp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  br label %724

714:                                              ; preds = %709
  %715 = load i8, i8* @prev, align 1
  %716 = sext i8 %715 to i32
  %717 = icmp eq i32 %716, 65
  br i1 %717, label %722, label %718

718:                                              ; preds = %714
  %719 = load i8, i8* @prev, align 1
  %720 = sext i8 %719 to i32
  %721 = icmp eq i32 %720, 97
  br i1 %721, label %722, label %723

722:                                              ; preds = %718, %714
  call void @unsupp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  br label %723

723:                                              ; preds = %722, %718
  br label %724

724:                                              ; preds = %723, %713
  %725 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %726 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %725, i64 0
  %727 = bitcast %union.YYSTYPE* %726 to %struct.anon*
  %728 = getelementptr inbounds %struct.anon, %struct.anon* %727, i32 0, i32 0
  %729 = load i8*, i8** %728, align 8
  store i8* %729, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %730 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %731 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %732 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %731, i64 0
  %733 = bitcast %union.YYSTYPE* %732 to %struct.anon*
  %734 = getelementptr inbounds %struct.anon, %struct.anon* %733, i32 0, i32 1
  %735 = load i8*, i8** %734, align 8
  %736 = call i8* (i8*, ...) @cat(i8* %730, i8* %735, i8* null)
  store i8* %736, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %737 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %738 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %737, i64 0
  %739 = bitcast %union.YYSTYPE* %738 to %struct.anon*
  %740 = getelementptr inbounds %struct.anon, %struct.anon* %739, i32 0, i32 2
  %741 = load i8*, i8** %740, align 8
  store i8* %741, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 102, i8* @prev, align 1
  br label %1356

742:                                              ; preds = %271
  %743 = load i8, i8* @prev, align 1
  %744 = sext i8 %743 to i32
  %745 = icmp eq i32 %744, 102
  br i1 %745, label %746, label %747

746:                                              ; preds = %742
  call void @unsupp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  br label %757

747:                                              ; preds = %742
  %748 = load i8, i8* @prev, align 1
  %749 = sext i8 %748 to i32
  %750 = icmp eq i32 %749, 65
  br i1 %750, label %755, label %751

751:                                              ; preds = %747
  %752 = load i8, i8* @prev, align 1
  %753 = sext i8 %752 to i32
  %754 = icmp eq i32 %753, 97
  br i1 %754, label %755, label %756

755:                                              ; preds = %751, %747
  call void @unsupp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  br label %756

756:                                              ; preds = %755, %751
  br label %757

757:                                              ; preds = %756, %746
  %758 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %759 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %758, i64 0
  %760 = bitcast %union.YYSTYPE* %759 to %struct.anon*
  %761 = getelementptr inbounds %struct.anon, %struct.anon* %760, i32 0, i32 0
  %762 = load i8*, i8** %761, align 8
  store i8* %762, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %763 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %764 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %765 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %764, i64 -3
  %766 = bitcast %union.YYSTYPE* %765 to i8**
  %767 = load i8*, i8** %766, align 8
  %768 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %769 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %770 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %769, i64 0
  %771 = bitcast %union.YYSTYPE* %770 to %struct.anon*
  %772 = getelementptr inbounds %struct.anon, %struct.anon* %771, i32 0, i32 1
  %773 = load i8*, i8** %772, align 8
  %774 = call i8* (i8*, ...) @cat(i8* %763, i8* %767, i8* %768, i8* %773, i8* null)
  store i8* %774, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %775 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %776 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %775, i64 0
  %777 = bitcast %union.YYSTYPE* %776 to %struct.anon*
  %778 = getelementptr inbounds %struct.anon, %struct.anon* %777, i32 0, i32 2
  %779 = load i8*, i8** %778, align 8
  store i8* %779, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 102, i8* @prev, align 1
  br label %1356

780:                                              ; preds = %271
  %781 = load i8, i8* @prev, align 1
  %782 = sext i8 %781 to i32
  %783 = icmp eq i32 %782, 102
  br i1 %783, label %784, label %785

784:                                              ; preds = %780
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  br label %797

785:                                              ; preds = %780
  %786 = load i8, i8* @prev, align 1
  %787 = sext i8 %786 to i32
  %788 = icmp eq i32 %787, 97
  br i1 %788, label %789, label %790

789:                                              ; preds = %785
  call void @unsupp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  br label %796

790:                                              ; preds = %785
  %791 = load i8, i8* @prev, align 1
  %792 = sext i8 %791 to i32
  %793 = icmp eq i32 %792, 118
  br i1 %793, label %794, label %795

794:                                              ; preds = %790
  call void @unsupp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %795

795:                                              ; preds = %794, %790
  br label %796

796:                                              ; preds = %795, %789
  br label %797

797:                                              ; preds = %796, %784
  %798 = load i32, i32* @arbdims, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %801

800:                                              ; preds = %797
  store i8 97, i8* @prev, align 1
  br label %802

801:                                              ; preds = %797
  store i8 65, i8* @prev, align 1
  br label %802

802:                                              ; preds = %801, %800
  %803 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %804 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %803, i64 0
  %805 = bitcast %union.YYSTYPE* %804 to %struct.anon*
  %806 = getelementptr inbounds %struct.anon, %struct.anon* %805, i32 0, i32 0
  %807 = load i8*, i8** %806, align 8
  store i8* %807, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %808 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %809 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %808, i64 -2
  %810 = bitcast %union.YYSTYPE* %809 to i8**
  %811 = load i8*, i8** %810, align 8
  %812 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %813 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %812, i64 0
  %814 = bitcast %union.YYSTYPE* %813 to %struct.anon*
  %815 = getelementptr inbounds %struct.anon, %struct.anon* %814, i32 0, i32 1
  %816 = load i8*, i8** %815, align 8
  %817 = call i8* (i8*, ...) @cat(i8* %811, i8* %816, i8* null)
  store i8* %817, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %818 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %819 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %818, i64 0
  %820 = bitcast %union.YYSTYPE* %819 to %struct.anon*
  %821 = getelementptr inbounds %struct.anon, %struct.anon* %820, i32 0, i32 2
  %822 = load i8*, i8** %821, align 8
  store i8* %822, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  br label %1356

823:                                              ; preds = %271
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 8
  %824 = load i8, i8* @prev, align 1
  %825 = sext i8 %824 to i32
  %826 = icmp eq i32 %825, 97
  br i1 %826, label %827, label %828

827:                                              ; preds = %823
  call void @unsupp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  br label %828

828:                                              ; preds = %827, %823
  %829 = load i8, i8* @prev, align 1
  %830 = sext i8 %829 to i32
  %831 = icmp eq i32 %830, 97
  br i1 %831, label %840, label %832

832:                                              ; preds = %828
  %833 = load i8, i8* @prev, align 1
  %834 = sext i8 %833 to i32
  %835 = icmp eq i32 %834, 65
  br i1 %835, label %840, label %836

836:                                              ; preds = %832
  %837 = load i8, i8* @prev, align 1
  %838 = sext i8 %837 to i32
  %839 = icmp eq i32 %838, 102
  br i1 %839, label %840, label %841

840:                                              ; preds = %836, %832, %828
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8** %12, align 8
  br label %841

841:                                              ; preds = %840, %836
  %842 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %843 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %842, i64 -3
  %844 = bitcast %union.YYSTYPE* %843 to i8**
  %845 = load i8*, i8** %844, align 8
  %846 = call i64 @strlen(i8* %845) #8
  %847 = icmp ne i64 %846, 0
  br i1 %847, label %848, label %849

848:                                              ; preds = %841
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %849

849:                                              ; preds = %848, %841
  %850 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %851 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %850, i64 0
  %852 = bitcast %union.YYSTYPE* %851 to %struct.anon*
  %853 = getelementptr inbounds %struct.anon, %struct.anon* %852, i32 0, i32 0
  %854 = load i8*, i8** %853, align 8
  %855 = load i8*, i8** %11, align 8
  %856 = call i8* @ds(i8* %855)
  %857 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %858 = load i8*, i8** %13, align 8
  %859 = call i8* @ds(i8* %858)
  %860 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %861 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %860, i64 -3
  %862 = bitcast %union.YYSTYPE* %861 to i8**
  %863 = load i8*, i8** %862, align 8
  %864 = load i8*, i8** %13, align 8
  %865 = call i8* @ds(i8* %864)
  %866 = call i8* (i8*, ...) @cat(i8* %854, i8* %856, i8* %857, i8* %859, i8* %863, i8* %865, i8* null)
  store i8* %866, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %867 = load i8*, i8** %12, align 8
  %868 = call i8* @ds(i8* %867)
  %869 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %870 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %869, i64 0
  %871 = bitcast %union.YYSTYPE* %870 to %struct.anon*
  %872 = getelementptr inbounds %struct.anon, %struct.anon* %871, i32 0, i32 1
  %873 = load i8*, i8** %872, align 8
  %874 = call i8* (i8*, ...) @cat(i8* %868, i8* %873, i8* null)
  store i8* %874, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %875 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %876 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %875, i64 0
  %877 = bitcast %union.YYSTYPE* %876 to %struct.anon*
  %878 = getelementptr inbounds %struct.anon, %struct.anon* %877, i32 0, i32 2
  %879 = load i8*, i8** %878, align 8
  store i8* %879, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 112, i8* @prev, align 1
  br label %1356

880:                                              ; preds = %271
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %16, align 8
  %881 = load i32, i32* @CplusplusFlag, align 4
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %884, label %883

883:                                              ; preds = %880
  call void @unsupp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %884

884:                                              ; preds = %883, %880
  %885 = load i8, i8* @prev, align 1
  %886 = sext i8 %885 to i32
  %887 = icmp eq i32 %886, 97
  br i1 %887, label %888, label %889

888:                                              ; preds = %884
  call void @unsupp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  br label %889

889:                                              ; preds = %888, %884
  %890 = load i8, i8* @prev, align 1
  %891 = sext i8 %890 to i32
  %892 = icmp eq i32 %891, 97
  br i1 %892, label %901, label %893

893:                                              ; preds = %889
  %894 = load i8, i8* @prev, align 1
  %895 = sext i8 %894 to i32
  %896 = icmp eq i32 %895, 65
  br i1 %896, label %901, label %897

897:                                              ; preds = %893
  %898 = load i8, i8* @prev, align 1
  %899 = sext i8 %898 to i32
  %900 = icmp eq i32 %899, 102
  br i1 %900, label %901, label %902

901:                                              ; preds = %897, %893, %889
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8** %15, align 8
  br label %902

902:                                              ; preds = %901, %897
  %903 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %904 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %903, i64 -7
  %905 = bitcast %union.YYSTYPE* %904 to i8**
  %906 = load i8*, i8** %905, align 8
  %907 = call i64 @strlen(i8* %906) #8
  %908 = icmp ne i64 %907, 0
  br i1 %908, label %909, label %910

909:                                              ; preds = %902
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  br label %910

910:                                              ; preds = %909, %902
  %911 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %912 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %911, i64 0
  %913 = bitcast %union.YYSTYPE* %912 to %struct.anon*
  %914 = getelementptr inbounds %struct.anon, %struct.anon* %913, i32 0, i32 0
  %915 = load i8*, i8** %914, align 8
  %916 = load i8*, i8** %14, align 8
  %917 = call i8* @ds(i8* %916)
  %918 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %919 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %918, i64 -1
  %920 = bitcast %union.YYSTYPE* %919 to i8**
  %921 = load i8*, i8** %920, align 8
  %922 = call i8* @ds(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  %923 = load i8*, i8** %16, align 8
  %924 = call i8* @ds(i8* %923)
  %925 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %926 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %925, i64 -7
  %927 = bitcast %union.YYSTYPE* %926 to i8**
  %928 = load i8*, i8** %927, align 8
  %929 = load i8*, i8** %16, align 8
  %930 = call i8* @ds(i8* %929)
  %931 = call i8* (i8*, ...) @cat(i8* %915, i8* %917, i8* %921, i8* %922, i8* %924, i8* %928, i8* %930, i8* null)
  store i8* %931, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %932 = load i8*, i8** %15, align 8
  %933 = call i8* @ds(i8* %932)
  %934 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %935 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %934, i64 0
  %936 = bitcast %union.YYSTYPE* %935 to %struct.anon*
  %937 = getelementptr inbounds %struct.anon, %struct.anon* %936, i32 0, i32 1
  %938 = load i8*, i8** %937, align 8
  %939 = call i8* (i8*, ...) @cat(i8* %933, i8* %938, i8* null)
  store i8* %939, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %940 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %941 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %940, i64 0
  %942 = bitcast %union.YYSTYPE* %941 to %struct.anon*
  %943 = getelementptr inbounds %struct.anon, %struct.anon* %942, i32 0, i32 2
  %944 = load i8*, i8** %943, align 8
  store i8* %944, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 112, i8* @prev, align 1
  br label %1356

945:                                              ; preds = %271
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %19, align 8
  %946 = load i32, i32* @CplusplusFlag, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %949, label %948

948:                                              ; preds = %945
  call void @unsupp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* null)
  br label %949

949:                                              ; preds = %948, %945
  %950 = load i8, i8* @prev, align 1
  %951 = sext i8 %950 to i32
  %952 = icmp eq i32 %951, 118
  br i1 %952, label %953, label %954

953:                                              ; preds = %949
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %960

954:                                              ; preds = %949
  %955 = load i8, i8* @prev, align 1
  %956 = sext i8 %955 to i32
  %957 = icmp eq i32 %956, 97
  br i1 %957, label %958, label %959

958:                                              ; preds = %954
  call void @unsupp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  br label %959

959:                                              ; preds = %958, %954
  br label %960

960:                                              ; preds = %959, %953
  %961 = load i8, i8* @prev, align 1
  %962 = sext i8 %961 to i32
  %963 = icmp eq i32 %962, 97
  br i1 %963, label %972, label %964

964:                                              ; preds = %960
  %965 = load i8, i8* @prev, align 1
  %966 = sext i8 %965 to i32
  %967 = icmp eq i32 %966, 65
  br i1 %967, label %972, label %968

968:                                              ; preds = %964
  %969 = load i8, i8* @prev, align 1
  %970 = sext i8 %969 to i32
  %971 = icmp eq i32 %970, 102
  br i1 %971, label %972, label %973

972:                                              ; preds = %968, %964, %960
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8** %18, align 8
  br label %973

973:                                              ; preds = %972, %968
  %974 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %975 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %974, i64 -3
  %976 = bitcast %union.YYSTYPE* %975 to i8**
  %977 = load i8*, i8** %976, align 8
  %978 = call i64 @strlen(i8* %977) #8
  %979 = icmp ne i64 %978, 0
  br i1 %979, label %980, label %981

980:                                              ; preds = %973
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %981

981:                                              ; preds = %980, %973
  %982 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %983 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %982, i64 0
  %984 = bitcast %union.YYSTYPE* %983 to %struct.anon*
  %985 = getelementptr inbounds %struct.anon, %struct.anon* %984, i32 0, i32 0
  %986 = load i8*, i8** %985, align 8
  %987 = load i8*, i8** %17, align 8
  %988 = call i8* @ds(i8* %987)
  %989 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  %990 = load i8*, i8** %19, align 8
  %991 = call i8* @ds(i8* %990)
  %992 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %993 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %992, i64 -3
  %994 = bitcast %union.YYSTYPE* %993 to i8**
  %995 = load i8*, i8** %994, align 8
  %996 = load i8*, i8** %19, align 8
  %997 = call i8* @ds(i8* %996)
  %998 = call i8* (i8*, ...) @cat(i8* %986, i8* %988, i8* %989, i8* %991, i8* %995, i8* %997, i8* null)
  store i8* %998, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %999 = load i8*, i8** %18, align 8
  %1000 = call i8* @ds(i8* %999)
  %1001 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1002 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1001, i64 0
  %1003 = bitcast %union.YYSTYPE* %1002 to %struct.anon*
  %1004 = getelementptr inbounds %struct.anon, %struct.anon* %1003, i32 0, i32 1
  %1005 = load i8*, i8** %1004, align 8
  %1006 = call i8* (i8*, ...) @cat(i8* %1000, i8* %1005, i8* null)
  store i8* %1006, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %1007 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1008 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1007, i64 0
  %1009 = bitcast %union.YYSTYPE* %1008 to %struct.anon*
  %1010 = getelementptr inbounds %struct.anon, %struct.anon* %1009, i32 0, i32 2
  %1011 = load i8*, i8** %1010, align 8
  store i8* %1011, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 114, i8* @prev, align 1
  br label %1356

1012:                                             ; preds = %271
  %1013 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store i8* %1013, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %1014 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store i8* %1014, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %1015 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1016 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1015, i64 0
  %1017 = bitcast %union.YYSTYPE* %1016 to i8**
  %1018 = load i8*, i8** %1017, align 8
  %1019 = call i32 @strcmp(i8* %1018, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #8
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1021, label %1022

1021:                                             ; preds = %1012
  store i8 118, i8* @prev, align 1
  br label %1039

1022:                                             ; preds = %1012
  %1023 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1024 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1023, i64 0
  %1025 = bitcast %union.YYSTYPE* %1024 to i8**
  %1026 = load i8*, i8** %1025, align 8
  %1027 = call i32 @strncmp(i8* %1026, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 6) #8
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1036, label %1029

1029:                                             ; preds = %1022
  %1030 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1031 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1030, i64 0
  %1032 = bitcast %union.YYSTYPE* %1031 to i8**
  %1033 = load i8*, i8** %1032, align 8
  %1034 = call i32 @strncmp(i8* %1033, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i64 5) #8
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1036, label %1037

1036:                                             ; preds = %1029, %1022
  store i8 115, i8* @prev, align 1
  br label %1038

1037:                                             ; preds = %1029
  store i8 116, i8* @prev, align 1
  br label %1038

1038:                                             ; preds = %1037, %1036
  br label %1039

1039:                                             ; preds = %1038, %1021
  %1040 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1041 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1040, i64 -1
  %1042 = bitcast %union.YYSTYPE* %1041 to i8**
  %1043 = load i8*, i8** %1042, align 8
  %1044 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1045 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1044, i64 -1
  %1046 = bitcast %union.YYSTYPE* %1045 to i8**
  %1047 = load i8*, i8** %1046, align 8
  %1048 = call i64 @strlen(i8* %1047) #8
  %1049 = icmp ne i64 %1048, 0
  %1050 = zext i1 %1049 to i64
  %1051 = select i1 %1049, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %1052 = call i8* @ds(i8* %1051)
  %1053 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1054 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1053, i64 0
  %1055 = bitcast %union.YYSTYPE* %1054 to i8**
  %1056 = load i8*, i8** %1055, align 8
  %1057 = call i8* (i8*, ...) @cat(i8* %1043, i8* %1052, i8* %1056, i8* null)
  store i8* %1057, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  br label %1356

1058:                                             ; preds = %271
  store i32 1, i32* @arbdims, align 4
  %1059 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  store i8* %1059, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1060:                                             ; preds = %271
  store i32 0, i32* @arbdims, align 4
  %1061 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  %1062 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1063 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1062, i64 0
  %1064 = bitcast %union.YYSTYPE* %1063 to i8**
  %1065 = load i8*, i8** %1064, align 8
  %1066 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0))
  %1067 = call i8* (i8*, ...) @cat(i8* %1061, i8* %1065, i8* %1066, i8* null)
  store i8* %1067, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1068:                                             ; preds = %271
  call void @mbcheck()
  %1069 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1070 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1069, i64 0
  %1071 = bitcast %union.YYSTYPE* %1070 to i8**
  %1072 = load i8*, i8** %1071, align 8
  store i8* %1072, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1073:                                             ; preds = %271
  store i32 0, i32* @modbits, align 4
  br label %1356

1074:                                             ; preds = %271
  %1075 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1076 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1075, i64 0
  %1077 = bitcast %union.YYSTYPE* %1076 to i8**
  %1078 = load i8*, i8** %1077, align 8
  store i8* %1078, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1079:                                             ; preds = %271
  %1080 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1081 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1080, i64 0
  %1082 = bitcast %union.YYSTYPE* %1081 to i8**
  %1083 = load i8*, i8** %1082, align 8
  store i8* %1083, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1084:                                             ; preds = %271
  %1085 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1086 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1085, i64 -1
  %1087 = bitcast %union.YYSTYPE* %1086 to i8**
  %1088 = load i8*, i8** %1087, align 8
  %1089 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %1090 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1091 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1090, i64 0
  %1092 = bitcast %union.YYSTYPE* %1091 to i8**
  %1093 = load i8*, i8** %1092, align 8
  %1094 = call i8* (i8*, ...) @cat(i8* %1088, i8* %1089, i8* %1093, i8* null)
  store i8* %1094, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1095:                                             ; preds = %271
  %1096 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1097 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1096, i64 -1
  %1098 = bitcast %union.YYSTYPE* %1097 to i8**
  %1099 = load i8*, i8** %1098, align 8
  %1100 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %1101 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1102 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1101, i64 0
  %1103 = bitcast %union.YYSTYPE* %1102 to i8**
  %1104 = load i8*, i8** %1103, align 8
  %1105 = call i8* (i8*, ...) @cat(i8* %1099, i8* %1100, i8* %1104, i8* null)
  store i8* %1105, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1106:                                             ; preds = %271
  %1107 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1108 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1107, i64 0
  %1109 = bitcast %union.YYSTYPE* %1108 to i8**
  %1110 = load i8*, i8** %1109, align 8
  store i8* %1110, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1111:                                             ; preds = %271
  %1112 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1113 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1112, i64 0
  %1114 = bitcast %union.YYSTYPE* %1113 to i8**
  %1115 = load i8*, i8** %1114, align 8
  store i8* %1115, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1116:                                             ; preds = %271
  %1117 = load i32, i32* @modbits, align 4
  %1118 = or i32 %1117, 8
  store i32 %1118, i32* @modbits, align 4
  %1119 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1120 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1119, i64 0
  %1121 = bitcast %union.YYSTYPE* %1120 to i8**
  %1122 = load i8*, i8** %1121, align 8
  store i8* %1122, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1123:                                             ; preds = %271
  %1124 = load i32, i32* @modbits, align 4
  %1125 = or i32 %1124, 16
  store i32 %1125, i32* @modbits, align 4
  %1126 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1127 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1126, i64 0
  %1128 = bitcast %union.YYSTYPE* %1127 to i8**
  %1129 = load i8*, i8** %1128, align 8
  store i8* %1129, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1130:                                             ; preds = %271
  %1131 = load i32, i32* @modbits, align 4
  %1132 = or i32 %1131, 32
  store i32 %1132, i32* @modbits, align 4
  %1133 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1134 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1133, i64 0
  %1135 = bitcast %union.YYSTYPE* %1134 to i8**
  %1136 = load i8*, i8** %1135, align 8
  store i8* %1136, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1137:                                             ; preds = %271
  %1138 = load i32, i32* @modbits, align 4
  %1139 = or i32 %1138, 64
  store i32 %1139, i32* @modbits, align 4
  %1140 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1141 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1140, i64 0
  %1142 = bitcast %union.YYSTYPE* %1141 to i8**
  %1143 = load i8*, i8** %1142, align 8
  store i8* %1143, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1144:                                             ; preds = %271
  %1145 = load i32, i32* @modbits, align 4
  %1146 = or i32 %1145, 128
  store i32 %1146, i32* @modbits, align 4
  %1147 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1148 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1147, i64 0
  %1149 = bitcast %union.YYSTYPE* %1148 to i8**
  %1150 = load i8*, i8** %1149, align 8
  store i8* %1150, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1151:                                             ; preds = %271
  %1152 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1153 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1152, i64 -1
  %1154 = bitcast %union.YYSTYPE* %1153 to i8**
  %1155 = load i8*, i8** %1154, align 8
  %1156 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %1157 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1158 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1157, i64 0
  %1159 = bitcast %union.YYSTYPE* %1158 to i8**
  %1160 = load i8*, i8** %1159, align 8
  %1161 = call i8* (i8*, ...) @cat(i8* %1155, i8* %1156, i8* %1160, i8* null)
  store i8* %1161, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1162:                                             ; preds = %271
  %1163 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1164 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1163, i64 0
  %1165 = bitcast %union.YYSTYPE* %1164 to i8**
  %1166 = load i8*, i8** %1165, align 8
  store i8* %1166, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1167:                                             ; preds = %271
  %1168 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1169 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1168, i64 0
  %1170 = bitcast %union.YYSTYPE* %1169 to i8**
  %1171 = load i8*, i8** %1170, align 8
  store i8* %1171, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1172:                                             ; preds = %271
  %1173 = load i32, i32* @PreANSIFlag, align 4
  %1174 = icmp ne i32 %1173, 0
  br i1 %1174, label %1175, label %1180

1175:                                             ; preds = %1172
  %1176 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1177 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1176, i64 0
  %1178 = bitcast %union.YYSTYPE* %1177 to i8**
  %1179 = load i8*, i8** %1178, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8* %1179, i8* null)
  br label %1205

1180:                                             ; preds = %1172
  %1181 = load i32, i32* @RitchieFlag, align 4
  %1182 = icmp ne i32 %1181, 0
  br i1 %1182, label %1183, label %1188

1183:                                             ; preds = %1180
  %1184 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1185 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1184, i64 0
  %1186 = bitcast %union.YYSTYPE* %1185 to i8**
  %1187 = load i8*, i8** %1186, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i8* %1187, i8* null)
  br label %1204

1188:                                             ; preds = %1180
  %1189 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1190 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1189, i64 0
  %1191 = bitcast %union.YYSTYPE* %1190 to i8**
  %1192 = load i8*, i8** %1191, align 8
  %1193 = call i32 @strcmp(i8* %1192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0)) #8
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1195, label %1203

1195:                                             ; preds = %1188
  %1196 = load i32, i32* @CplusplusFlag, align 4
  %1197 = icmp ne i32 %1196, 0
  br i1 %1197, label %1198, label %1203

1198:                                             ; preds = %1195
  %1199 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1200 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1199, i64 0
  %1201 = bitcast %union.YYSTYPE* %1200 to i8**
  %1202 = load i8*, i8** %1201, align 8
  call void @unsupp(i8* %1202, i8* null)
  br label %1203

1203:                                             ; preds = %1198, %1195, %1188
  br label %1204

1204:                                             ; preds = %1203, %1183
  br label %1205

1205:                                             ; preds = %1204, %1175
  %1206 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1207 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1206, i64 0
  %1208 = bitcast %union.YYSTYPE* %1207 to i8**
  %1209 = load i8*, i8** %1208, align 8
  store i8* %1209, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1210:                                             ; preds = %271
  %1211 = load i32, i32* @modbits, align 4
  %1212 = or i32 %1211, 4
  store i32 %1212, i32* @modbits, align 4
  %1213 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1214 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1213, i64 0
  %1215 = bitcast %union.YYSTYPE* %1214 to i8**
  %1216 = load i8*, i8** %1215, align 8
  store i8* %1216, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1217:                                             ; preds = %271
  %1218 = load i32, i32* @modbits, align 4
  %1219 = or i32 %1218, 256
  store i32 %1219, i32* @modbits, align 4
  %1220 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1221 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1220, i64 0
  %1222 = bitcast %union.YYSTYPE* %1221 to i8**
  %1223 = load i8*, i8** %1222, align 8
  store i8* %1223, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1224:                                             ; preds = %271
  %1225 = load i32, i32* @modbits, align 4
  %1226 = or i32 %1225, 2
  store i32 %1226, i32* @modbits, align 4
  %1227 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1228 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1227, i64 0
  %1229 = bitcast %union.YYSTYPE* %1228 to i8**
  %1230 = load i8*, i8** %1229, align 8
  store i8* %1230, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1231:                                             ; preds = %271
  %1232 = load i32, i32* @modbits, align 4
  %1233 = or i32 %1232, 1
  store i32 %1233, i32* @modbits, align 4
  %1234 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1235 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1234, i64 0
  %1236 = bitcast %union.YYSTYPE* %1235 to i8**
  %1237 = load i8*, i8** %1236, align 8
  store i8* %1237, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1238:                                             ; preds = %271
  %1239 = load i32, i32* @PreANSIFlag, align 4
  %1240 = icmp ne i32 %1239, 0
  br i1 %1240, label %1241, label %1246

1241:                                             ; preds = %1238
  %1242 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1243 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1242, i64 -1
  %1244 = bitcast %union.YYSTYPE* %1243 to i8**
  %1245 = load i8*, i8** %1244, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8* %1245, i8* null)
  br label %1271

1246:                                             ; preds = %1238
  %1247 = load i32, i32* @RitchieFlag, align 4
  %1248 = icmp ne i32 %1247, 0
  br i1 %1248, label %1249, label %1254

1249:                                             ; preds = %1246
  %1250 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1251 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1250, i64 -1
  %1252 = bitcast %union.YYSTYPE* %1251 to i8**
  %1253 = load i8*, i8** %1252, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i8* %1253, i8* null)
  br label %1270

1254:                                             ; preds = %1246
  %1255 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1256 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1255, i64 -1
  %1257 = bitcast %union.YYSTYPE* %1256 to i8**
  %1258 = load i8*, i8** %1257, align 8
  %1259 = call i32 @strcmp(i8* %1258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0)) #8
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1261, label %1269

1261:                                             ; preds = %1254
  %1262 = load i32, i32* @CplusplusFlag, align 4
  %1263 = icmp ne i32 %1262, 0
  br i1 %1263, label %1264, label %1269

1264:                                             ; preds = %1261
  %1265 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1266 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1265, i64 -1
  %1267 = bitcast %union.YYSTYPE* %1266 to i8**
  %1268 = load i8*, i8** %1267, align 8
  call void @unsupp(i8* %1268, i8* null)
  br label %1269

1269:                                             ; preds = %1264, %1261, %1254
  br label %1270

1270:                                             ; preds = %1269, %1249
  br label %1271

1271:                                             ; preds = %1270, %1241
  %1272 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1273 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1272, i64 -1
  %1274 = bitcast %union.YYSTYPE* %1273 to i8**
  %1275 = load i8*, i8** %1274, align 8
  %1276 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1277 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1276, i64 0
  %1278 = bitcast %union.YYSTYPE* %1277 to i8**
  %1279 = load i8*, i8** %1278, align 8
  %1280 = call i64 @strlen(i8* %1279) #8
  %1281 = icmp ne i64 %1280, 0
  %1282 = zext i1 %1281 to i64
  %1283 = select i1 %1281, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %1284 = call i8* @ds(i8* %1283)
  %1285 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1286 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1285, i64 0
  %1287 = bitcast %union.YYSTYPE* %1286 to i8**
  %1288 = load i8*, i8** %1287, align 8
  %1289 = call i8* (i8*, ...) @cat(i8* %1275, i8* %1284, i8* %1288, i8* null)
  store i8* %1289, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1290:                                             ; preds = %271
  %1291 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store i8* %1291, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1292:                                             ; preds = %271
  %1293 = load i32, i32* @PreANSIFlag, align 4
  %1294 = icmp ne i32 %1293, 0
  br i1 %1294, label %1295, label %1300

1295:                                             ; preds = %1292
  %1296 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1297 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1296, i64 -1
  %1298 = bitcast %union.YYSTYPE* %1297 to i8**
  %1299 = load i8*, i8** %1298, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8* %1299, i8* null)
  br label %1325

1300:                                             ; preds = %1292
  %1301 = load i32, i32* @RitchieFlag, align 4
  %1302 = icmp ne i32 %1301, 0
  br i1 %1302, label %1303, label %1308

1303:                                             ; preds = %1300
  %1304 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1305 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1304, i64 -1
  %1306 = bitcast %union.YYSTYPE* %1305 to i8**
  %1307 = load i8*, i8** %1306, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i8* %1307, i8* null)
  br label %1324

1308:                                             ; preds = %1300
  %1309 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1310 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1309, i64 -1
  %1311 = bitcast %union.YYSTYPE* %1310 to i8**
  %1312 = load i8*, i8** %1311, align 8
  %1313 = call i32 @strcmp(i8* %1312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0)) #8
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1315, label %1323

1315:                                             ; preds = %1308
  %1316 = load i32, i32* @CplusplusFlag, align 4
  %1317 = icmp ne i32 %1316, 0
  br i1 %1317, label %1318, label %1323

1318:                                             ; preds = %1315
  %1319 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1320 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1319, i64 -1
  %1321 = bitcast %union.YYSTYPE* %1320 to i8**
  %1322 = load i8*, i8** %1321, align 8
  call void @unsupp(i8* %1322, i8* null)
  br label %1323

1323:                                             ; preds = %1318, %1315, %1308
  br label %1324

1324:                                             ; preds = %1323, %1303
  br label %1325

1325:                                             ; preds = %1324, %1295
  %1326 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1327 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1326, i64 -1
  %1328 = bitcast %union.YYSTYPE* %1327 to i8**
  %1329 = load i8*, i8** %1328, align 8
  %1330 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1331 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1330, i64 0
  %1332 = bitcast %union.YYSTYPE* %1331 to i8**
  %1333 = load i8*, i8** %1332, align 8
  %1334 = call i64 @strlen(i8* %1333) #8
  %1335 = icmp ne i64 %1334, 0
  %1336 = zext i1 %1335 to i64
  %1337 = select i1 %1335, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %1338 = call i8* @ds(i8* %1337)
  %1339 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1340 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1339, i64 0
  %1341 = bitcast %union.YYSTYPE* %1340 to i8**
  %1342 = load i8*, i8** %1341, align 8
  %1343 = call i8* (i8*, ...) @cat(i8* %1329, i8* %1338, i8* %1342, i8* null)
  store i8* %1343, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1344:                                             ; preds = %271
  %1345 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1346 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1345, i64 0
  %1347 = bitcast %union.YYSTYPE* %1346 to i8**
  %1348 = load i8*, i8** %1347, align 8
  store i8* %1348, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1349:                                             ; preds = %271
  %1350 = load %union.YYSTYPE*, %union.YYSTYPE** %5, align 8
  %1351 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1350, i64 0
  %1352 = bitcast %union.YYSTYPE* %1351 to i8**
  %1353 = load i8*, i8** %1352, align 8
  store i8* %1353, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1354:                                             ; preds = %271
  %1355 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  store i8* %1355, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %1356

1356:                                             ; preds = %1354, %1349, %1344, %1325, %1290, %1271, %1231, %1224, %1217, %1210, %1205, %1167, %1162, %1151, %1144, %1137, %1130, %1123, %1116, %1111, %1106, %1095, %1084, %1079, %1074, %1073, %1068, %1060, %1058, %1039, %981, %910, %849, %802, %757, %724, %702, %700, %689, %682, %671, %659, %650, %638, %631, %629, %627, %605, %587, %582, %571, %569, %564, %541, %530, %524, %519, %508, %496, %489, %470, %454, %431, %429, %424, %423, %422, %421, %416, %399, %386, %373, %356, %340, %320, %300, %276, %275, %274, %271
  br label %21

1357:                                             ; preds = %201, %141, %26
  %1358 = load i32, i32* %1, align 4
  ret i32 %1358
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyerror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** @yyin, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** @yyin, align 8
  br label %8

8:                                                ; preds = %5, %0
  br label %9

9:                                                ; preds = %116, %8
  %10 = call i32 @yylook()
  store i32 %10, i32* %2, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %117

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %112 [
    i32 0, label %15
    i32 1, label %20
    i32 2, label %21
    i32 3, label %22
    i32 4, label %23
    i32 5, label %24
    i32 6, label %25
    i32 7, label %26
    i32 8, label %27
    i32 9, label %28
    i32 10, label %29
    i32 11, label %30
    i32 12, label %31
    i32 13, label %32
    i32 14, label %33
    i32 15, label %34
    i32 16, label %35
    i32 17, label %36
    i32 18, label %37
    i32 19, label %38
    i32 20, label %39
    i32 21, label %40
    i32 22, label %41
    i32 23, label %42
    i32 24, label %43
    i32 25, label %44
    i32 26, label %45
    i32 27, label %47
    i32 28, label %49
    i32 29, label %51
    i32 30, label %53
    i32 31, label %55
    i32 32, label %57
    i32 33, label %59
    i32 34, label %61
    i32 35, label %63
    i32 36, label %65
    i32 37, label %67
    i32 38, label %69
    i32 39, label %71
    i32 40, label %73
    i32 41, label %75
    i32 42, label %77
    i32 43, label %79
    i32 44, label %81
    i32 45, label %83
    i32 46, label %85
    i32 47, label %87
    i32 48, label %89
    i32 49, label %91
    i32 50, label %93
    i32 51, label %95
    i32 52, label %97
    i32 53, label %99
    i32 54, label %100
    i32 55, label %101
    i32 56, label %104
    i32 -1, label %111
  ]

15:                                               ; preds = %13
  %16 = call i32 @yywrap_nasko()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %118

19:                                               ; preds = %15
  br label %116

20:                                               ; preds = %13
  store i32 257, i32* %1, align 4
  br label %118

21:                                               ; preds = %13
  store i32 258, i32* %1, align 4
  br label %118

22:                                               ; preds = %13
  store i32 259, i32* %1, align 4
  br label %118

23:                                               ; preds = %13
  store i32 261, i32* %1, align 4
  br label %118

24:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %118

25:                                               ; preds = %13
  store i32 263, i32* %1, align 4
  br label %118

26:                                               ; preds = %13
  store i32 264, i32* %1, align 4
  br label %118

27:                                               ; preds = %13
  store i32 264, i32* %1, align 4
  br label %118

28:                                               ; preds = %13
  store i32 265, i32* %1, align 4
  br label %118

29:                                               ; preds = %13
  store i32 266, i32* %1, align 4
  br label %118

30:                                               ; preds = %13
  store i32 268, i32* %1, align 4
  br label %118

31:                                               ; preds = %13
  store i32 267, i32* %1, align 4
  br label %118

32:                                               ; preds = %13
  store i32 269, i32* %1, align 4
  br label %118

33:                                               ; preds = %13
  store i32 269, i32* %1, align 4
  br label %118

34:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %118

35:                                               ; preds = %13
  store i32 270, i32* %1, align 4
  br label %118

36:                                               ; preds = %13
  store i32 270, i32* %1, align 4
  br label %118

37:                                               ; preds = %13
  store i32 271, i32* %1, align 4
  br label %118

38:                                               ; preds = %13
  store i32 271, i32* %1, align 4
  br label %118

39:                                               ; preds = %13
  store i32 272, i32* %1, align 4
  br label %118

40:                                               ; preds = %13
  store i32 273, i32* %1, align 4
  br label %118

41:                                               ; preds = %13
  store i32 257, i32* %1, align 4
  br label %118

42:                                               ; preds = %13
  store i32 262, i32* %1, align 4
  br label %118

43:                                               ; preds = %13
  store i32 265, i32* %1, align 4
  br label %118

44:                                               ; preds = %13
  store i32 260, i32* %1, align 4
  br label %118

45:                                               ; preds = %13
  %46 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %46, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 290, i32* %1, align 4
  br label %118

47:                                               ; preds = %13
  %48 = call i8* @ds(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0))
  store i8* %48, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 274, i32* %1, align 4
  br label %118

49:                                               ; preds = %13
  %50 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %50, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 274, i32* %1, align 4
  br label %118

51:                                               ; preds = %13
  %52 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %52, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 275, i32* %1, align 4
  br label %118

53:                                               ; preds = %13
  %54 = call i8* @ds(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0))
  store i8* %54, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %1, align 4
  br label %118

55:                                               ; preds = %13
  %56 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %56, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %1, align 4
  br label %118

57:                                               ; preds = %13
  %58 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %58, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 277, i32* %1, align 4
  br label %118

59:                                               ; preds = %13
  %60 = call i8* @ds(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0))
  store i8* %60, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 278, i32* %1, align 4
  br label %118

61:                                               ; preds = %13
  %62 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %62, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 278, i32* %1, align 4
  br label %118

63:                                               ; preds = %13
  %64 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %64, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 291, i32* %1, align 4
  br label %118

65:                                               ; preds = %13
  %66 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %66, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 279, i32* %1, align 4
  br label %118

67:                                               ; preds = %13
  %68 = call i8* @ds(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0))
  store i8* %68, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 280, i32* %1, align 4
  br label %118

69:                                               ; preds = %13
  %70 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %70, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 280, i32* %1, align 4
  br label %118

71:                                               ; preds = %13
  %72 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %72, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 281, i32* %1, align 4
  br label %118

73:                                               ; preds = %13
  %74 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %74, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %1, align 4
  br label %118

75:                                               ; preds = %13
  %76 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %76, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 292, i32* %1, align 4
  br label %118

77:                                               ; preds = %13
  %78 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %78, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 284, i32* %1, align 4
  br label %118

79:                                               ; preds = %13
  %80 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %80, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 285, i32* %1, align 4
  br label %118

81:                                               ; preds = %13
  %82 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %82, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 293, i32* %1, align 4
  br label %118

83:                                               ; preds = %13
  %84 = call i8* @ds(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  store i8* %84, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 286, i32* %1, align 4
  br label %118

85:                                               ; preds = %13
  %86 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %86, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 286, i32* %1, align 4
  br label %118

87:                                               ; preds = %13
  %88 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %88, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 287, i32* %1, align 4
  br label %118

89:                                               ; preds = %13
  %90 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %90, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 288, i32* %1, align 4
  br label %118

91:                                               ; preds = %13
  %92 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %92, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 289, i32* %1, align 4
  br label %118

93:                                               ; preds = %13
  %94 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %94, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %1, align 4
  br label %118

95:                                               ; preds = %13
  %96 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %96, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 282, i32* %1, align 4
  br label %118

97:                                               ; preds = %13
  %98 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0))
  store i8* %98, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 283, i32* %1, align 4
  br label %118

99:                                               ; preds = %13
  br label %116

100:                                              ; preds = %13
  br label %116

101:                                              ; preds = %13
  %102 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), align 16
  %103 = sext i8 %102 to i32
  store i32 %103, i32* %1, align 4
  br label %118

104:                                              ; preds = %13
  %105 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), align 16
  %106 = sext i8 %105 to i32
  %107 = call i8* @visible(i32 %106)
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), i8* %107)
  %109 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), align 16
  %110 = sext i8 %109 to i32
  store i32 %110, i32* %1, align 4
  br label %118

111:                                              ; preds = %13
  br label %116

112:                                              ; preds = %13
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %114 = load i32, i32* %2, align 4
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %111, %100, %99, %19
  br label %9

117:                                              ; preds = %9
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %117, %104, %101, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %18
  %119 = load i32, i32* %1, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prompt() #0 {
  %1 = load i32, i32* @OnATty, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @Interactive, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @prompting, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i8*, i8** @progname, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i64 0, i64 0), i8* %10)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* %12)
  br label %14

14:                                               ; preds = %9, %6, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dohelp() #0 {
  %1 = alloca %struct.helpstruct*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @CplusplusFlag, align 4
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0)
  store i8* %6, i8** %2, align 8
  store %struct.helpstruct* getelementptr inbounds ([24 x %struct.helpstruct], [24 x %struct.helpstruct]* @helptext, i64 0, i64 0), %struct.helpstruct** %1, align 8
  br label %7

7:                                                ; preds = %33, %0
  %8 = load %struct.helpstruct*, %struct.helpstruct** %1, align 8
  %9 = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load i32, i32* @CplusplusFlag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.helpstruct*, %struct.helpstruct** %1, align 8
  %17 = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = load %struct.helpstruct*, %struct.helpstruct** %1, align 8
  %23 = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* %21, i8* %24)
  br label %32

26:                                               ; preds = %15, %12
  %27 = load i8*, i8** %2, align 8
  %28 = load %struct.helpstruct*, %struct.helpstruct** %1, align 8
  %29 = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* %27, i8* %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.helpstruct*, %struct.helpstruct** %1, align 8
  %35 = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %34, i32 1
  store %struct.helpstruct* %35, %struct.helpstruct** %1, align 8
  br label %7

36:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dodeclare(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8, i8* @prev, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 118
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  call void @unsupp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i64 0, i64 0))
  br label %15

15:                                               ; preds = %14, %5
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 114
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8, i8* @prev, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %26 [
    i32 102, label %23
    i32 65, label %24
    i32 97, label %24
    i32 115, label %25
  ]

23:                                               ; preds = %20
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i64 0, i64 0), i8* null)
  br label %26

24:                                               ; preds = %20, %20
  call void @unsupp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i64 0, i64 0), i8* null)
  br label %26

25:                                               ; preds = %20
  call void @unsupp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i64 0, i64 0), i8* null)
  br label %26

26:                                               ; preds = %25, %24, %23, %20
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  br label %47

41:                                               ; preds = %34
  %42 = load i8, i8* @prev, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 102
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i64 0, i64 0)
  br label %47

47:                                               ; preds = %41, %39
  %48 = phi i8* [ %40, %39 ], [ %46, %41 ]
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0), i8* %35, i8* %36, i8* %48, i8* %49)
  %51 = load i32, i32* @MkProgramFlag, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i8, i8* @prev, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 102
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 101
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i64 0, i64 0))
  br label %66

64:                                               ; preds = %57, %53
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %62
  br label %69

67:                                               ; preds = %47
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %66
  %70 = load i8*, i8** %7, align 8
  call void @free(i8* %70) #5
  %71 = load i8*, i8** %8, align 8
  call void @free(i8* %71) #5
  %72 = load i8*, i8** %9, align 8
  call void @free(i8* %72) #5
  %73 = load i8*, i8** %10, align 8
  call void @free(i8* %73) #5
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i8*, i8** %6, align 8
  call void @free(i8* %77) #5
  br label %78

78:                                               ; preds = %76, %69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @docast(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11) #8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14) #8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i8, i8* @prev, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 102
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  call void @unsupp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.122, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.123, i64 0, i64 0))
  br label %31

21:                                               ; preds = %4
  %22 = load i8, i8* @prev, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 65
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* @prev, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 97
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  call void @unsupp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.125, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i8* [ %48, %47 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i64 0, i64 0), %49 ]
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i64 0, i64 0), i8* %32, i32 %42, i8* %43, i8* %44, i8* %51)
  %53 = load i8*, i8** %6, align 8
  call void @free(i8* %53) #5
  %54 = load i8*, i8** %7, align 8
  call void @free(i8* %54) #5
  %55 = load i8*, i8** %8, align 8
  call void @free(i8* %55) #5
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i8*, i8** %5, align 8
  call void @free(i8* %59) #5
  br label %60

60:                                               ; preds = %58, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dodexplain(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i8, i8* @prev, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 110
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void @unsupp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i64 0, i64 0))
  br label %32

20:                                               ; preds = %15
  %21 = load i8, i8* @prev, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 97
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @unsupp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0))
  br label %31

25:                                               ; preds = %20
  %26 = load i8, i8* @prev, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 114
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @unsupp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %11, %4
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 114
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i8, i8* @prev, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %44 [
    i32 102, label %41
    i32 65, label %42
    i32 97, label %42
    i32 115, label %43
  ]

41:                                               ; preds = %38
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i64 0, i64 0), i8* null)
  br label %44

42:                                               ; preds = %38, %38
  call void @unsupp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i64 0, i64 0), i8* null)
  br label %44

43:                                               ; preds = %38
  call void @unsupp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.143, i64 0, i64 0), i8* null)
  br label %44

44:                                               ; preds = %43, %42, %41, %38
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i8*, i8** @savedname, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  br label %69

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), %68 ]
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* %70)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @docexplain(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load i8, i8* @prev, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 97
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @unsupp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0))
  br label %23

17:                                               ; preds = %12
  %18 = load i8, i8* @prev, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 114
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @unsupp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %16
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.146, i64 0, i64 0), i8* %25, i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28) #8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @doset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i64 0, i64 0)) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* @MkProgramFlag, align 4
  br label %116

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i64 0, i64 0)) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, i32* @MkProgramFlag, align 4
  br label %115

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i64 0, i64 0)) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* @Interactive, align 4
  br label %114

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i64 0, i64 0)) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* @Interactive, align 4
  store i32 0, i32* @OnATty, align 4
  br label %113

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i64 0, i64 0)) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 1, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %112

27:                                               ; preds = %22
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i64 0, i64 0)) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 1, i32* @PreANSIFlag, align 4
  br label %111

32:                                               ; preds = %27
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0)) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %110

37:                                               ; preds = %32
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i64 0, i64 0)) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %109

42:                                               ; preds = %37
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @unknown_name, i64 0, i64 0)) #8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i64 0, i64 0)) #8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.156, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %46, %42
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.157, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.158, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.159, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.160, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.161, i64 0, i64 0))
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.162, i64 0, i64 0))
  %60 = load i32, i32* @MkProgramFlag, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i64 0, i64 0)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @OnATty, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @Interactive, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %53
  %71 = phi i1 [ true, %53 ], [ %69, %67 ]
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i64 0, i64 0)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.166, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @RitchieFlag, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.167, i64 0, i64 0))
  br label %81

79:                                               ; preds = %70
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.168, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i32, i32* @PreANSIFlag, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i64 0, i64 0))
  br label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.170, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i32, i32* @RitchieFlag, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @PreANSIFlag, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @CplusplusFlag, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i64 0, i64 0))
  br label %101

99:                                               ; preds = %94, %91, %88
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.172, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %97
  %102 = load i32, i32* @CplusplusFlag, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i64 0, i64 0))
  br label %108

106:                                              ; preds = %101
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.174, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %104
  br label %109

109:                                              ; preds = %108, %41
  br label %110

110:                                              ; preds = %109, %36
  br label %111

111:                                              ; preds = %110, %31
  br label %112

112:                                              ; preds = %111, %26
  br label %113

113:                                              ; preds = %112, %21
  br label %114

114:                                              ; preds = %113, %16
  br label %115

115:                                              ; preds = %114, %11
  br label %116

116:                                              ; preds = %115, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @doprompt() #0 {
  store i32 1, i32* @prompting, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @noprompt() #0 {
  store i32 0, i32* @prompting, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @ds(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #8
  %6 = add i64 %5, 1
  %7 = trunc i64 %6 to i32
  %8 = zext i32 %7 to i64
  %9 = call noalias i8* @malloc(i64 %8) #5
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @strcpy(i8* %13, i8* %14) #5
  br label %20

16:                                               ; preds = %1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** @progname, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0), i8* %18)
  call void @exit(i32 1) #9
  unreachable

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @cat(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %4, align 4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14) #8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ule i32 %23, 40
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = getelementptr i8, i8* %27, i32 %23
  %29 = bitcast i8* %28 to i8**
  %30 = add i32 %23, 8
  store i32 %30, i32* %22, align 16
  br label %36

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to i8**
  %35 = getelementptr i8, i8* %33, i32 8
  store i8* %35, i8** %32, align 8
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi i8** [ %29, %25 ], [ %34, %31 ]
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %5, align 8
  br label %10

39:                                               ; preds = %10
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %41 = bitcast %struct.__va_list_tag* %40 to i8*
  call void @llvm.va_end(i8* %41)
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = call noalias i8* @malloc(i64 %43) #5
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** @progname, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i64 0, i64 0), i8* %49)
  call void @exit(i32 1) #9
  unreachable

51:                                               ; preds = %39
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %55 = bitcast %struct.__va_list_tag* %54 to i8*
  call void @llvm.va_start(i8* %55)
  %56 = load i8*, i8** %2, align 8
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %81, %51
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i8* @strcat(i8* %61, i8* %62) #5
  %64 = load i8*, i8** %5, align 8
  call void @free(i8* %64) #5
  br label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 16
  %69 = icmp ule i32 %68, 40
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 3
  %72 = load i8*, i8** %71, align 16
  %73 = getelementptr i8, i8* %72, i32 %68
  %74 = bitcast i8* %73 to i8**
  %75 = add i32 %68, 8
  store i32 %75, i32* %67, align 16
  br label %81

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to i8**
  %80 = getelementptr i8, i8* %78, i32 8
  store i8* %80, i8** %77, align 8
  br label %81

81:                                               ; preds = %76, %70
  %82 = phi i8** [ %74, %70 ], [ %79, %76 ]
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %5, align 8
  br label %57

84:                                               ; preds = %57
  %85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %86 = bitcast %struct.__va_list_tag* %85 to i8*
  call void @llvm.va_end(i8* %86)
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unsupp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  call void @notsupported(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %5, i8* null)
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbcheck() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %113, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 9
  br i1 %8, label %9, label %116

9:                                                ; preds = %6
  %10 = load i32, i32* @modbits, align 4
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %112

18:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %108, %18
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  %24 = load i32, i32* @modbits, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %108

33:                                               ; preds = %23
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [9 x [9 x i8]], [9 x [9 x i8]]* bitcast (<{ [9 x i8], [9 x i8], <{ i8, [8 x i8] }>, [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x i8] }>* @crosscheck to [9 x [9 x i8]]*), i64 0, i64 %35
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %36, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %108

45:                                               ; preds = %33
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 16
  store i8* %50, i8** %4, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 16
  store i8* %55, i8** %5, align 8
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %5, align 8
  call void @notsupported(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %59, i8* %60)
  br label %107

61:                                               ; preds = %45
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* @RitchieFlag, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %5, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i8* %68, i8* %69)
  br label %70

70:                                               ; preds = %67, %64
  br label %106

71:                                               ; preds = %61
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32, i32* @PreANSIFlag, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @RitchieFlag, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %74
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** %5, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8* %81, i8* %82)
  br label %83

83:                                               ; preds = %80, %77
  br label %105

84:                                               ; preds = %71
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* @RitchieFlag, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @PreANSIFlag, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %5, align 8
  call void @notsupported(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0), i8* %94, i8* %95)
  br label %96

96:                                               ; preds = %93, %90, %87
  br label %104

97:                                               ; preds = %84
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = load i8*, i8** @progname, align 8
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i8* %99, i32 %100, i32 %101, i32 %102)
  call void @exit(i32 1) #9
  unreachable

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %70
  br label %107

107:                                              ; preds = %106, %58
  br label %108

108:                                              ; preds = %107, %44, %32
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %2, align 4
  br label %19

111:                                              ; preds = %19
  br label %112

112:                                              ; preds = %111, %9
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %1, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %1, align 4
  br label %6

116:                                              ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @notsupported(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @CplusplusFlag, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i64 0, i64 0), i8* %11, i8* %15, i8* %16, i8* %17)
  br label %28

19:                                               ; preds = %3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @CplusplusFlag, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i8* %21, i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #6

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yylook() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.yysvf*, align 8
  %3 = alloca %struct.yysvf**, align 8
  %4 = alloca %struct.yywork*, align 8
  %5 = alloca %struct.yysvf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.yywork*, align 8
  %9 = alloca i8*, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* @yymorfg, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), i8** %9, align 8
  br label %17

13:                                               ; preds = %0
  store i32 0, i32* @yymorfg, align 4
  %14 = load i32, i32* @yyleng, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), i64 %15
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %13, %12
  br label %18

18:                                               ; preds = %433, %17
  store %struct.yysvf** getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 0, i64 0), %struct.yysvf*** %3, align 8
  %19 = load %struct.yysvf*, %struct.yysvf** @yybgin, align 8
  store %struct.yysvf* %19, %struct.yysvf** %2, align 8
  store %struct.yysvf* %19, %struct.yysvf** @yyestate, align 8
  %20 = load i32, i32* @yyprevious, align 4
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %24 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %23, i32 1
  store %struct.yysvf* %24, %struct.yysvf** %2, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %298, %25
  %27 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %28 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %27, i32 0, i32 0
  %29 = load %struct.yywork*, %struct.yywork** %28, align 8
  store %struct.yywork* %29, %struct.yywork** %4, align 8
  %30 = load %struct.yywork*, %struct.yywork** %4, align 8
  %31 = icmp eq %struct.yywork* %30, getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i64 0, i64 0)
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %37 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %36, i32 0, i32 1
  %38 = load %struct.yysvf*, %struct.yysvf** %37, align 8
  store %struct.yysvf* %38, %struct.yysvf** %5, align 8
  %39 = load %struct.yysvf*, %struct.yysvf** %5, align 8
  %40 = icmp eq %struct.yysvf* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %299

42:                                               ; preds = %35
  %43 = load %struct.yysvf*, %struct.yysvf** %5, align 8
  %44 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %43, i32 0, i32 0
  %45 = load %struct.yywork*, %struct.yywork** %44, align 8
  %46 = icmp eq %struct.yywork* %45, getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i64 0, i64 0)
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %299

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %32, %26
  %50 = load i8*, i8** @yysptr, align 8
  %51 = icmp ugt i8* %50, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i64 0, i64 0)
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** @yysptr, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** @yysptr, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  br label %60

57:                                               ; preds = %49
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %59 = call i32 @getc(%struct._IO_FILE* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i32 [ %56, %52 ], [ %59, %57 ]
  store i32 %61, i32* @yytchar, align 4
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @yylineno, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @yylineno, align 4
  %66 = load i32, i32* @yytchar, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @yytchar, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %66, %63 ], [ %68, %67 ]
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @yytchar, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ 0, %72 ], [ %74, %73 ]
  store i32 %76, i32* %6, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ugt i8* %80, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 1, i64 0)
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i32 8192)
  call void @exit(i32 1) #9
  unreachable

85:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %282, %85
  %87 = load %struct.yywork*, %struct.yywork** %4, align 8
  store %struct.yywork* %87, %struct.yywork** %8, align 8
  %88 = load %struct.yywork*, %struct.yywork** %4, align 8
  %89 = ptrtoint %struct.yywork* %88 to i32
  %90 = icmp sgt i32 %89, ptrtoint ([377 x %struct.yywork]* @yycrank to i32)
  br i1 %90, label %91, label %147

91:                                               ; preds = %86
  %92 = load %struct.yywork*, %struct.yywork** %8, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.yywork, %struct.yywork* %92, i64 %94
  store %struct.yywork* %95, %struct.yywork** %4, align 8
  %96 = load %struct.yywork*, %struct.yywork** %4, align 8
  %97 = load %struct.yywork*, %struct.yywork** @yytop, align 8
  %98 = icmp ule %struct.yywork* %96, %97
  br i1 %98, label %99, label %146

99:                                               ; preds = %91
  %100 = load %struct.yywork*, %struct.yywork** %4, align 8
  %101 = getelementptr inbounds %struct.yywork, %struct.yywork* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %104
  %106 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %107 = icmp eq %struct.yysvf* %105, %106
  br i1 %107, label %108, label %146

108:                                              ; preds = %99
  %109 = load %struct.yywork*, %struct.yywork** %4, align 8
  %110 = getelementptr inbounds %struct.yywork, %struct.yywork* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %113
  %115 = icmp eq %struct.yysvf* %114, getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0)
  br i1 %115, label %116, label %131

116:                                              ; preds = %108
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %118, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  store i32 %120, i32* @yytchar, align 4
  %121 = load i32, i32* @yytchar, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* @yylineno, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @yylineno, align 4
  br label %126

126:                                              ; preds = %123, %116
  %127 = load i32, i32* @yytchar, align 4
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** @yysptr, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** @yysptr, align 8
  store i8 %128, i8* %129, align 1
  br label %299

131:                                              ; preds = %108
  %132 = load %struct.yywork*, %struct.yywork** %4, align 8
  %133 = getelementptr inbounds %struct.yywork, %struct.yywork* %132, i32 0, i32 1
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %136
  store %struct.yysvf* %137, %struct.yysvf** %2, align 8
  %138 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %139 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %138, i32 1
  store %struct.yysvf** %139, %struct.yysvf*** %3, align 8
  store %struct.yysvf* %137, %struct.yysvf** %138, align 8
  %140 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %141 = icmp ugt %struct.yysvf** %140, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 1, i64 0)
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i32 8192)
  call void @exit(i32 1) #9
  unreachable

145:                                              ; preds = %131
  br label %298

146:                                              ; preds = %99, %91
  br label %272

147:                                              ; preds = %86
  %148 = load %struct.yywork*, %struct.yywork** %4, align 8
  %149 = ptrtoint %struct.yywork* %148 to i32
  %150 = icmp slt i32 %149, ptrtoint ([377 x %struct.yywork]* @yycrank to i32)
  br i1 %150, label %151, label %271

151:                                              ; preds = %147
  %152 = load %struct.yywork*, %struct.yywork** %4, align 8
  %153 = ptrtoint %struct.yywork* %152 to i64
  %154 = sub i64 ptrtoint ([377 x %struct.yywork]* @yycrank to i64), %153
  %155 = sdiv exact i64 %154, 2
  %156 = getelementptr inbounds %struct.yywork, %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i64 0, i64 0), i64 %155
  store %struct.yywork* %156, %struct.yywork** %8, align 8
  store %struct.yywork* %156, %struct.yywork** %4, align 8
  %157 = load %struct.yywork*, %struct.yywork** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.yywork, %struct.yywork* %157, i64 %159
  store %struct.yywork* %160, %struct.yywork** %4, align 8
  %161 = load %struct.yywork*, %struct.yywork** %4, align 8
  %162 = load %struct.yywork*, %struct.yywork** @yytop, align 8
  %163 = icmp ule %struct.yywork* %161, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %151
  %165 = load %struct.yywork*, %struct.yywork** %4, align 8
  %166 = getelementptr inbounds %struct.yywork, %struct.yywork* %165, i32 0, i32 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %169
  %171 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %172 = icmp eq %struct.yysvf* %170, %171
  br i1 %172, label %173, label %211

173:                                              ; preds = %164
  %174 = load %struct.yywork*, %struct.yywork** %4, align 8
  %175 = getelementptr inbounds %struct.yywork, %struct.yywork* %174, i32 0, i32 1
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %178
  %180 = icmp eq %struct.yysvf* %179, getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0)
  br i1 %180, label %181, label %196

181:                                              ; preds = %173
  %182 = load i8*, i8** %9, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 -1
  store i8* %183, i8** %9, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  store i32 %185, i32* @yytchar, align 4
  %186 = load i32, i32* @yytchar, align 4
  %187 = icmp eq i32 %186, 10
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32, i32* @yylineno, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* @yylineno, align 4
  br label %191

191:                                              ; preds = %188, %181
  %192 = load i32, i32* @yytchar, align 4
  %193 = trunc i32 %192 to i8
  %194 = load i8*, i8** @yysptr, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** @yysptr, align 8
  store i8 %193, i8* %194, align 1
  br label %299

196:                                              ; preds = %173
  %197 = load %struct.yywork*, %struct.yywork** %4, align 8
  %198 = getelementptr inbounds %struct.yywork, %struct.yywork* %197, i32 0, i32 1
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %201
  store %struct.yysvf* %202, %struct.yysvf** %2, align 8
  %203 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %204 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %203, i32 1
  store %struct.yysvf** %204, %struct.yysvf*** %3, align 8
  store %struct.yysvf* %202, %struct.yysvf** %203, align 8
  %205 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %206 = icmp ugt %struct.yysvf** %205, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 1, i64 0)
  br i1 %206, label %207, label %210

207:                                              ; preds = %196
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i32 8192)
  call void @exit(i32 1) #9
  unreachable

210:                                              ; preds = %196
  br label %298

211:                                              ; preds = %164, %151
  %212 = load %struct.yywork*, %struct.yywork** %8, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [257 x i8], [257 x i8]* @yymatch, i64 0, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.yywork, %struct.yywork* %212, i64 %218
  store %struct.yywork* %219, %struct.yywork** %4, align 8
  %220 = load %struct.yywork*, %struct.yywork** %4, align 8
  %221 = load %struct.yywork*, %struct.yywork** @yytop, align 8
  %222 = icmp ule %struct.yywork* %220, %221
  br i1 %222, label %223, label %270

223:                                              ; preds = %211
  %224 = load %struct.yywork*, %struct.yywork** %4, align 8
  %225 = getelementptr inbounds %struct.yywork, %struct.yywork* %224, i32 0, i32 0
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %228
  %230 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %231 = icmp eq %struct.yysvf* %229, %230
  br i1 %231, label %232, label %270

232:                                              ; preds = %223
  %233 = load %struct.yywork*, %struct.yywork** %4, align 8
  %234 = getelementptr inbounds %struct.yywork, %struct.yywork* %233, i32 0, i32 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %237
  %239 = icmp eq %struct.yysvf* %238, getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0)
  br i1 %239, label %240, label %255

240:                                              ; preds = %232
  %241 = load i8*, i8** %9, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 -1
  store i8* %242, i8** %9, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  store i32 %244, i32* @yytchar, align 4
  %245 = load i32, i32* @yytchar, align 4
  %246 = icmp eq i32 %245, 10
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load i32, i32* @yylineno, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* @yylineno, align 4
  br label %250

250:                                              ; preds = %247, %240
  %251 = load i32, i32* @yytchar, align 4
  %252 = trunc i32 %251 to i8
  %253 = load i8*, i8** @yysptr, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** @yysptr, align 8
  store i8 %252, i8* %253, align 1
  br label %299

255:                                              ; preds = %232
  %256 = load %struct.yywork*, %struct.yywork** %4, align 8
  %257 = getelementptr inbounds %struct.yywork, %struct.yywork* %256, i32 0, i32 1
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i64 0, i64 0), i64 %260
  store %struct.yysvf* %261, %struct.yysvf** %2, align 8
  %262 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %263 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %262, i32 1
  store %struct.yysvf** %263, %struct.yysvf*** %3, align 8
  store %struct.yysvf* %261, %struct.yysvf** %262, align 8
  %264 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %265 = icmp ugt %struct.yysvf** %264, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 1, i64 0)
  br i1 %265, label %266, label %269

266:                                              ; preds = %255
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %267, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i32 8192)
  call void @exit(i32 1) #9
  unreachable

269:                                              ; preds = %255
  br label %298

270:                                              ; preds = %223, %211
  br label %271

271:                                              ; preds = %270, %147
  br label %272

272:                                              ; preds = %271, %146
  %273 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %274 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %273, i32 0, i32 1
  %275 = load %struct.yysvf*, %struct.yysvf** %274, align 8
  store %struct.yysvf* %275, %struct.yysvf** %2, align 8
  %276 = icmp ne %struct.yysvf* %275, null
  br i1 %276, label %277, label %283

277:                                              ; preds = %272
  %278 = load %struct.yysvf*, %struct.yysvf** %2, align 8
  %279 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %278, i32 0, i32 0
  %280 = load %struct.yywork*, %struct.yywork** %279, align 8
  store %struct.yywork* %280, %struct.yywork** %4, align 8
  %281 = icmp ne %struct.yywork* %280, getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i64 0, i64 0)
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %86

283:                                              ; preds = %277, %272
  %284 = load i8*, i8** %9, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 -1
  store i8* %285, i8** %9, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  store i32 %287, i32* @yytchar, align 4
  %288 = load i32, i32* @yytchar, align 4
  %289 = icmp eq i32 %288, 10
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = load i32, i32* @yylineno, align 4
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* @yylineno, align 4
  br label %293

293:                                              ; preds = %290, %283
  %294 = load i32, i32* @yytchar, align 4
  %295 = trunc i32 %294 to i8
  %296 = load i8*, i8** @yysptr, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** @yysptr, align 8
  store i8 %295, i8* %296, align 1
  br label %299

298:                                              ; preds = %269, %210, %145
  br label %26

299:                                              ; preds = %293, %250, %191, %126, %47, %41
  br label %300

300:                                              ; preds = %387, %299
  %301 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %302 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %301, i32 -1
  store %struct.yysvf** %302, %struct.yysvf*** %3, align 8
  %303 = icmp ugt %struct.yysvf** %301, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 0, i64 0)
  br i1 %303, label %304, label %392

304:                                              ; preds = %300
  %305 = load i8*, i8** %9, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 -1
  store i8* %306, i8** %9, align 8
  store i8 0, i8* %305, align 1
  %307 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %308 = load %struct.yysvf*, %struct.yysvf** %307, align 8
  %309 = icmp ne %struct.yysvf* %308, null
  br i1 %309, label %310, label %378

310:                                              ; preds = %304
  %311 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %312 = load %struct.yysvf*, %struct.yysvf** %311, align 8
  %313 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  store i32* %314, i32** @yyfnd, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %378

316:                                              ; preds = %310
  %317 = load i32*, i32** @yyfnd, align 8
  %318 = load i32, i32* %317, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %378

320:                                              ; preds = %316
  %321 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  store %struct.yysvf** %321, %struct.yysvf*** @yyolsp, align 8
  %322 = load i32*, i32** @yyfnd, align 8
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [65 x i8], [65 x i8]* @yyextra, i64 0, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = icmp ne i8 %326, 0
  br i1 %327, label %328, label %362

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %356, %328
  %330 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %331 = load %struct.yysvf*, %struct.yysvf** %330, align 8
  %332 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %331, i32 0, i32 2
  %333 = load i32*, i32** %332, align 8
  %334 = load i32*, i32** @yyfnd, align 8
  %335 = load i32, i32* %334, align 4
  %336 = sub nsw i32 0, %335
  %337 = call i32 @yyback(i32* %333, i32 %336)
  %338 = icmp ne i32 %337, 1
  br i1 %338, label %339, label %342

339:                                              ; preds = %329
  %340 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %341 = icmp ugt %struct.yysvf** %340, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 0, i64 0)
  br label %342

342:                                              ; preds = %339, %329
  %343 = phi i1 [ false, %329 ], [ %341, %339 ]
  br i1 %343, label %344, label %361

344:                                              ; preds = %342
  %345 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  %346 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %345, i32 -1
  store %struct.yysvf** %346, %struct.yysvf*** %3, align 8
  %347 = load i8*, i8** %9, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 -1
  store i8* %348, i8** %9, align 8
  %349 = load i8, i8* %347, align 1
  %350 = sext i8 %349 to i32
  store i32 %350, i32* @yytchar, align 4
  %351 = load i32, i32* @yytchar, align 4
  %352 = icmp eq i32 %351, 10
  br i1 %352, label %353, label %356

353:                                              ; preds = %344
  %354 = load i32, i32* @yylineno, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* @yylineno, align 4
  br label %356

356:                                              ; preds = %353, %344
  %357 = load i32, i32* @yytchar, align 4
  %358 = trunc i32 %357 to i8
  %359 = load i8*, i8** @yysptr, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %360, i8** @yysptr, align 8
  store i8 %358, i8* %359, align 1
  br label %329

361:                                              ; preds = %342
  br label %362

362:                                              ; preds = %361, %320
  %363 = load i8*, i8** %9, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  store i32 %365, i32* @yyprevious, align 4
  %366 = load %struct.yysvf**, %struct.yysvf*** %3, align 8
  store %struct.yysvf** %366, %struct.yysvf*** @yylsp, align 8
  %367 = load i8*, i8** %9, align 8
  %368 = ptrtoint i8* %367 to i64
  %369 = sub i64 %368, ptrtoint ([8192 x i8]* @yytext to i64)
  %370 = add nsw i64 %369, 1
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* @yyleng, align 4
  %372 = load i32, i32* @yyleng, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [8192 x i8], [8192 x i8]* @yytext, i64 0, i64 %373
  store i8 0, i8* %374, align 1
  %375 = load i32*, i32** @yyfnd, align 8
  %376 = getelementptr inbounds i32, i32* %375, i32 1
  store i32* %376, i32** @yyfnd, align 8
  %377 = load i32, i32* %375, align 4
  store i32 %377, i32* %1, align 4
  br label %434

378:                                              ; preds = %316, %310, %304
  %379 = load i8*, i8** %9, align 8
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  store i32 %381, i32* @yytchar, align 4
  %382 = load i32, i32* @yytchar, align 4
  %383 = icmp eq i32 %382, 10
  br i1 %383, label %384, label %387

384:                                              ; preds = %378
  %385 = load i32, i32* @yylineno, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* @yylineno, align 4
  br label %387

387:                                              ; preds = %384, %378
  %388 = load i32, i32* @yytchar, align 4
  %389 = trunc i32 %388 to i8
  %390 = load i8*, i8** @yysptr, align 8
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** @yysptr, align 8
  store i8 %389, i8* %390, align 1
  br label %300

392:                                              ; preds = %300
  %393 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), align 16
  %394 = sext i8 %393 to i32
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i64 0, i64 0), i8** @yysptr, align 8
  store i32 0, i32* %1, align 4
  br label %434

397:                                              ; preds = %392
  %398 = load i8*, i8** @yysptr, align 8
  %399 = icmp ugt i8* %398, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i64 0, i64 0)
  br i1 %399, label %400, label %405

400:                                              ; preds = %397
  %401 = load i8*, i8** @yysptr, align 8
  %402 = getelementptr inbounds i8, i8* %401, i32 -1
  store i8* %402, i8** @yysptr, align 8
  %403 = load i8, i8* %402, align 1
  %404 = sext i8 %403 to i32
  br label %408

405:                                              ; preds = %397
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %407 = call i32 @getc(%struct._IO_FILE* %406)
  br label %408

408:                                              ; preds = %405, %400
  %409 = phi i32 [ %404, %400 ], [ %407, %405 ]
  store i32 %409, i32* @yytchar, align 4
  %410 = icmp eq i32 %409, 10
  br i1 %410, label %411, label %415

411:                                              ; preds = %408
  %412 = load i32, i32* @yylineno, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* @yylineno, align 4
  %414 = load i32, i32* @yytchar, align 4
  br label %417

415:                                              ; preds = %408
  %416 = load i32, i32* @yytchar, align 4
  br label %417

417:                                              ; preds = %415, %411
  %418 = phi i32 [ %414, %411 ], [ %416, %415 ]
  %419 = icmp eq i32 %418, -1
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  br label %423

421:                                              ; preds = %417
  %422 = load i32, i32* @yytchar, align 4
  br label %423

423:                                              ; preds = %421, %420
  %424 = phi i32 [ 0, %420 ], [ %422, %421 ]
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), align 16
  %426 = sext i8 %425 to i32
  store i32 %426, i32* @yyprevious, align 4
  %427 = load i32, i32* @yyprevious, align 4
  %428 = icmp sgt i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %423
  %430 = load i32, i32* @yyprevious, align 4
  %431 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %432 = call i32 @putc(i32 %430, %struct._IO_FILE* %431)
  br label %433

433:                                              ; preds = %429, %423
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 0, i64 0), i8** %9, align 8
  br label %18

434:                                              ; preds = %396, %362
  %435 = load i32, i32* %1, align 4
  ret i32 %435
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yywrap_nasko() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @visible(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 255
  store i32 %4, i32* %2, align 4
  %5 = call i16** @__ctype_b_loc() #10
  %6 = load i16*, i16** %5, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, i16* %6, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 16384
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i64 0, i64 1), align 1
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i32 %18) #5
  br label %20

20:                                               ; preds = %17, %14
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i64 0, i64 0)
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #6

declare dso_local i32 @getc(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yyback(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %21, %9
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %23

21:                                               ; preds = %14
  br label %10

22:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %20, %8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yyinput() #0 {
  %1 = load i8*, i8** @yysptr, align 8
  %2 = icmp ugt i8* %1, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i64 0, i64 0)
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i8*, i8** @yysptr, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %5, i8** @yysptr, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  br label %11

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %10 = call i32 @getc(%struct._IO_FILE* %9)
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %7, %3 ], [ %10, %8 ]
  store i32 %12, i32* @yytchar, align 4
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @yylineno, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @yylineno, align 4
  %17 = load i32, i32* @yytchar, align 4
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @yytchar, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %17, %14 ], [ %19, %18 ]
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @yytchar, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 0, %23 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyoutput(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %5 = call i32 @putc(i32 %3, %struct._IO_FILE* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyunput(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @yytchar, align 4
  %4 = load i32, i32* @yytchar, align 4
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @yylineno, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @yylineno, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @yytchar, align 4
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** @yysptr, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** @yysptr, align 8
  store i8 %11, i8* %12, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.100, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i32, i32* @CplusplusFlag, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i64 0, i64 0)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.103, i64 0, i64 0), i8* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* @CplusplusFlag, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.105, i64 0, i64 0), i8* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.106, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.107, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setprogname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @strrchr(i8* %3, i32 47) #8
  store i8* %4, i8** @progname, align 8
  %5 = load i8*, i8** @progname, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** @progname, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** @progname, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** @progname, align 8
  br label %12

12:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @namedkeyword(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @namedkeyword.cmdlist, i64 0, i64 0), i8*** %4, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** @progname, align 8
  %13 = call i32 @strcmp(i8* %11, i8* %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* @KeywordName, align 4
  store i32 1, i32* %2, align 4
  br label %37

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %4, align 8
  br label %5

20:                                               ; preds = %5
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @namedkeyword.cmdlist, i64 0, i64 0), i8*** %4, align 8
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcmp(i8* %27, i8* %28) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %4, align 8
  br label %21

36:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dostdin() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @isatty(i32 0) #5
  store i32 %2, i32* @OnATty, align 4
  %3 = load i32, i32* @OnATty, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @Interactive, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.115, i64 0, i64 0))
  call void @prompt()
  br label %10

10:                                               ; preds = %8, %5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** @yyin, align 8
  %12 = call i32 @yyparse()
  store i32 %12, i32* %1, align 4
  store i32 0, i32* @OnATty, align 4
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dotmpfile(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = call %struct._IO_FILE* @tmpfile()
  store %struct._IO_FILE* %10, %struct._IO_FILE** %7, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = call i32* @__errno_location() #10
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** @progname, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @__errno_location() #10
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** @progname, align 8
  call void @perror(i8* %21)
  store i32 1, i32* %3, align 4
  br label %76

22:                                               ; preds = %2
  %23 = load i32, i32* @KeywordName, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i8*, i8** @progname, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i32 @fputs(i8* %26, %struct._IO_FILE* %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %66, %57, %30
  %32 = call i32* @__errno_location() #10
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8*, i8** @progname, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32* @__errno_location() #10
  store i32 %37, i32* %38, align 4
  %39 = load i8*, i8** @progname, align 8
  call void @perror(i8* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %41 = call i32 @fclose(%struct._IO_FILE* %40)
  store i32 1, i32* %3, align 4
  br label %76

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %22
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* @optind, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0), i8* %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %31

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @optind, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @optind, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %64 = call i32 @putc(i32 10, %struct._IO_FILE* %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %31

67:                                               ; preds = %62
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  call void @rewind(%struct._IO_FILE* %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %69, %struct._IO_FILE** @yyin, align 8
  %70 = call i32 @yyparse()
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %74 = call i32 @fclose(%struct._IO_FILE* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %67, %31, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct._IO_FILE* @tmpfile() #3

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

declare dso_local void @perror(i8*) #3

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

declare dso_local void @rewind(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dofileargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* @optind, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* @optind, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = call i32 @dostdin()
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %58

24:                                               ; preds = %12
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* @optind, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0))
  store %struct._IO_FILE* %30, %struct._IO_FILE** %5, align 8
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = call i32* @__errno_location() #10
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** @progname, align 8
  %37 = load i8**, i8*** %4, align 8
  %38 = load i32, i32* @optind, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.121, i64 0, i64 0), i8* %36, i8* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32* @__errno_location() #10
  store i32 %43, i32* %44, align 4
  %45 = load i8**, i8*** %4, align 8
  %46 = load i32, i32* @optind, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  call void @perror(i8* %49)
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %24
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  store %struct._IO_FILE* %53, %struct._IO_FILE** @yyin, align 8
  %54 = call i32 @yyparse()
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %32
  br label %58

58:                                               ; preds = %57, %20
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @optind, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @optind, align 4
  br label %8

62:                                               ; preds = %8
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @versions() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.175, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @cdeclsccsid, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @cdgramsccsid, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @cdlexsccsid, i64 0, i64 0))
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  call void @setprogname(i8* %10)
  %11 = load i8*, i8** @progname, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i64 0, i64 0)) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* @CplusplusFlag, align 4
  br label %15

15:                                               ; preds = %14, %2
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.177, i64 0, i64 0)) #5
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %31 [
    i32 99, label %23
    i32 105, label %24
    i32 114, label %25
    i32 112, label %26
    i32 97, label %27
    i32 43, label %28
    i32 86, label %29
    i32 63, label %30
  ]

23:                                               ; preds = %21
  store i32 1, i32* @MkProgramFlag, align 4
  br label %31

24:                                               ; preds = %21
  store i32 1, i32* @Interactive, align 4
  br label %31

25:                                               ; preds = %21
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 1, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %31

26:                                               ; preds = %21
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 1, i32* @PreANSIFlag, align 4
  br label %31

27:                                               ; preds = %21
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %31

28:                                               ; preds = %21
  store i32 1, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %31

29:                                               ; preds = %21
  call void @versions()
  br label %31

30:                                               ; preds = %21
  call void @usage()
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %23, %21
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* @optind, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 @dostdin()
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %61

40:                                               ; preds = %32
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* @optind, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @namedkeyword(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = call i32 @dotmpfile(i32 %49, i8** %50)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %60

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = call i32 @dofileargs(i32 %55, i8** %56)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #6

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
