; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.pattern = type { [16 x %struct.patval], i32, i32, i32 }
%struct.patval = type { i32, i32, i32 }
%struct.tnode = type { i32, i32, i32, [8 x i32] }

@.str = private unnamed_addr constant [47 x i8] c"\0ATo count score, we need the following steps:\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"First, I need you to remove all dead pieces on the board.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Second, I need you to fill in neutral territories with \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pieces.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Last, I will fill in all pieces and anounce the winner.\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\0AFirst, you should enter the dead pieces (blank and white) to\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" be removed.  Enter\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" 'stop' when you have finished.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Dead piece? \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Next, you need to fill in pieces (black and white) in all neutral\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" territories.\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Enter your and my pieces alternately and enter 'stop' when finish\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Your piece? \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"My piece? \00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Your total number of pieces %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"My total number of pieces %d\0A\00", align 1
@findpatn.mtype = internal global i32 0, align 4
@findpatn.cnd = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.1.19 = private unnamed_addr constant [10 x i8] c"my move: \00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3.21 = private unnamed_addr constant [5 x i8] c"%1d\0A\00", align 1
@.str.4.22 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.1.26 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.2.27 = private unnamed_addr constant [10 x i8] c"gnugo.dat\00", align 1
@.str.3.28 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.29 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5.30 = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@.str.6.31 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7.32 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.8.33 = private unnamed_addr constant [16 x i8] c"illegal move !\0A\00", align 1
@.str.9.34 = private unnamed_addr constant [12 x i8] c"your move? \00", align 1
@.str.10.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@p = common dso_local global [19 x [19 x i8]] zeroinitializer, align 16
@mymove = common dso_local global i32 0, align 4
@mk = common dso_local global i32 0, align 4
@uk = common dso_local global i32 0, align 4
@opn = common dso_local global [9 x i32] zeroinitializer, align 16
@umove = common dso_local global i32 0, align 4
@play = common dso_local global i32 0, align 4
@pass = common dso_local global i32 0, align 4
@mik = common dso_local global i32 0, align 4
@mjk = common dso_local global i32 0, align 4
@uik = common dso_local global i32 0, align 4
@ujk = common dso_local global i32 0, align 4
@rd = common dso_local global i32 0, align 4
@l = common dso_local global [19 x [19 x i8]] zeroinitializer, align 16
@ma = common dso_local global [19 x [19 x i8]] zeroinitializer, align 16
@ml = common dso_local global [19 x [19 x i8]] zeroinitializer, align 16
@lib = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [10 x i8] c"gnugo.dat\00", align 1
@.str.1.73 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.74 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3.75 = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@.str.4.76 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5.77 = private unnamed_addr constant [41 x i8] c"Number of handicap for black (0 to 17)? \00", align 1
@.str.6.78 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7.79 = private unnamed_addr constant [23 x i8] c"\0AChoose side(b or w)? \00", align 1
@.str.8.80 = private unnamed_addr constant [12 x i8] c"your move? \00", align 1
@.str.9.81 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10.82 = private unnamed_addr constant [38 x i8] c"Do you want to count score (y or n)? \00", align 1
@matchpat.pat = internal global [24 x %struct.pattern] zeroinitializer, align 16
@matchpat.trf = internal global [8 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 1, i32 0]]], align 16
@opening.tree = internal global [21 x %struct.tnode] [%struct.tnode { i32 -1, i32 -1, i32 8, [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 20] }, %struct.tnode { i32 2, i32 3, i32 2, [8 x i32] [i32 8, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 4, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 2, i32 2, [8 x i32] [i32 11, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 3, i32 6, [8 x i32] [i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 0, i32 0] }, %struct.tnode { i32 3, i32 4, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 3, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 2, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 4, i32 3, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 3, i32 2, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 4, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 3, i32 4, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 3, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 5, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 6, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 5, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 5, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 5, i32 3, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 6, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 2, i32 0, [8 x i32] zeroinitializer }], align 16
@.str.97 = private unnamed_addr constant [42 x i8] c"   A B C D E F G H J K L M N O P Q R S T\0A\00", align 1
@.str.1.98 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.2.99 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.3.100 = private unnamed_addr constant [3 x i8] c" O\00", align 1
@.str.4.101 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str.5.102 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6.103 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.7.104 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.8.105 = private unnamed_addr constant [26 x i8] c"     Your color: White O\0A\00", align 1
@.str.9.106 = private unnamed_addr constant [26 x i8] c"     Your color: Black X\0A\00", align 1
@.str.10.107 = private unnamed_addr constant [26 x i8] c"     My color:   White O\0A\00", align 1
@.str.11.108 = private unnamed_addr constant [26 x i8] c"     My color:   Black X\0A\00", align 1
@.str.12.109 = private unnamed_addr constant [34 x i8] c"     You have captured %d pieces\0A\00", align 1
@.str.13.110 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.14.111 = private unnamed_addr constant [32 x i8] c"     I have captured %d pieces\0A\00", align 1
@.str.15.112 = private unnamed_addr constant [3 x i8] c" 4\00", align 1
@.str.16.113 = private unnamed_addr constant [43 x i8] c"   A B C D E F G H J K L M N O P Q R S T\0A\0A\00", align 1
@.str.116 = private unnamed_addr constant [68 x i8] c"XOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOX\00", align 1
@.str.1.117 = private unnamed_addr constant [14 x i8] c"OXOXOXOXOXOX\0A\00", align 1
@.str.2.118 = private unnamed_addr constant [68 x i8] c"O                                                                  \00", align 1
@.str.3.119 = private unnamed_addr constant [14 x i8] c"           O\0A\00", align 1
@.str.4.120 = private unnamed_addr constant [68 x i8] c"X                           GNU GO (Previously Hugo)               \00", align 1
@.str.5.121 = private unnamed_addr constant [14 x i8] c"           X\0A\00", align 1
@.str.6.122 = private unnamed_addr constant [68 x i8] c"O                           the game of Go (Wei-Chi)               \00", align 1
@.str.7.123 = private unnamed_addr constant [68 x i8] c"X                                                                  \00", align 1
@.str.8.124 = private unnamed_addr constant [68 x i8] c"O                            version 1.1    3-1-89                 \00", align 1
@.str.9.125 = private unnamed_addr constant [68 x i8] c"X              Copyright (C) 1989 Free Software Foundation, Inc.   \00", align 1
@.str.10.126 = private unnamed_addr constant [68 x i8] c"O                              Author: Man L. Li                   \00", align 1
@.str.11.127 = private unnamed_addr constant [68 x i8] c"X         GNU GO comes with ABSOLUTELY NO WARRANTY; see COPYING for\00", align 1
@.str.12.128 = private unnamed_addr constant [68 x i8] c"O         detail.   This is free software, and you are welcome to  \00", align 1
@.str.13.129 = private unnamed_addr constant [68 x i8] c"X         redistribute it; see COPYING for copying conditions.     \00", align 1
@.str.14.130 = private unnamed_addr constant [68 x i8] c"X              Please report all bugs, modifications, suggestions  \00", align 1
@.str.15.131 = private unnamed_addr constant [68 x i8] c"O                         to manli@cs.uh.edu  (Internet)           \00", align 1
@.str.16.132 = private unnamed_addr constant [68 x i8] c"OXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXO\00", align 1
@.str.17.133 = private unnamed_addr constant [14 x i8] c"XOXOXOXOXOXO\0A\00", align 1
@.str.18.134 = private unnamed_addr constant [33 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0APress return to continue\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"\0A\0ATo play this game first select number of handicap pieces (0 to\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c" 17) for the\0Ablack side.  Next choose your color (black or white).\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"  To place your piece,\0Aenter your move as coordinate on the board\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c" in column and row.  The column\0Ais from 'A' to 'T'(excluding 'I').\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"  The row is from 1 to 19.\0A\0ATo pass your move enter 'pass' for\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c" your turn.  After both you and the computer\0Apassed the game will\00", align 1
@.str.25.135 = private unnamed_addr constant [63 x i8] c" end.  To save the board and exit enter 'save'.  The game\0Awill\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c" continue the next time you start the program.  To stop the game in\00", align 1
@.str.27 = private unnamed_addr constant [61 x i8] c" the\0Amiddle of play enter 'stop' for your move.  You will be\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c" asked whether you want\0Ato count the result of the game.  If you\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c" answer 'y' then you need to remove the\0Aremaining dead pieces and\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c" fill up neutral turf on the board as instructed.\0AFinally, the\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c" computer will count all pieces for both side and show the result.\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @countlib(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 19
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 19
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %18
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 %21
  store i8 1, i8* %22, align 1
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %13

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  call void @count(i32 %31, i32 %32, i32 %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @count(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [19 x i8], [19 x i8]* %9, i64 0, i64 %11
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %77

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %29
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [19 x i8], [19 x i8]* %30, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load i32, i32* @lib, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @lib, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %42
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x i8], [19 x i8]* %43, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  br label %76

47:                                               ; preds = %26, %15
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %50
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [19 x i8], [19 x i8]* %51, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %62
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [19 x i8], [19 x i8]* %63, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  call void @count(i32 %72, i32 %73, i32 %74)
  br label %75

75:                                               ; preds = %70, %59, %47
  br label %76

76:                                               ; preds = %75, %37
  br label %77

77:                                               ; preds = %76, %3
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 18
  br i1 %79, label %80, label %142

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %83
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [19 x i8], [19 x i8]* %84, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %80
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %94
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [19 x i8], [19 x i8]* %95, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %91
  %103 = load i32, i32* @lib, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @lib, align 4
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %107
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [19 x i8], [19 x i8]* %108, i64 0, i64 %110
  store i8 0, i8* %111, align 1
  br label %141

112:                                              ; preds = %91, %80
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %115
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [19 x i8], [19 x i8]* %116, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %112
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %127
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [19 x i8], [19 x i8]* %128, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  call void @count(i32 %137, i32 %138, i32 %139)
  br label %140

140:                                              ; preds = %135, %124, %112
  br label %141

141:                                              ; preds = %140, %102
  br label %142

142:                                              ; preds = %141, %77
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %207

145:                                              ; preds = %142
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %147
  %149 = load i32, i32* %5, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [19 x i8], [19 x i8]* %148, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %145
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %158
  %160 = load i32, i32* %5, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [19 x i8], [19 x i8]* %159, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %156
  %168 = load i32, i32* @lib, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @lib, align 4
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %171
  %173 = load i32, i32* %5, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [19 x i8], [19 x i8]* %172, i64 0, i64 %175
  store i8 0, i8* %176, align 1
  br label %206

177:                                              ; preds = %156, %145
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %179
  %181 = load i32, i32* %5, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [19 x i8], [19 x i8]* %180, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = load i32, i32* %6, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %177
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %191
  %193 = load i32, i32* %5, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [19 x i8], [19 x i8]* %192, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %189
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %5, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load i32, i32* %6, align 4
  call void @count(i32 %201, i32 %203, i32 %204)
  br label %205

205:                                              ; preds = %200, %189, %177
  br label %206

206:                                              ; preds = %205, %167
  br label %207

207:                                              ; preds = %206, %142
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 18
  br i1 %209, label %210, label %272

210:                                              ; preds = %207
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %212
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [19 x i8], [19 x i8]* %213, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %242

221:                                              ; preds = %210
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %223
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [19 x i8], [19 x i8]* %224, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %221
  %233 = load i32, i32* @lib, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @lib, align 4
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %236
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [19 x i8], [19 x i8]* %237, i64 0, i64 %240
  store i8 0, i8* %241, align 1
  br label %271

242:                                              ; preds = %221, %210
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %244
  %246 = load i32, i32* %5, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [19 x i8], [19 x i8]* %245, i64 0, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = load i32, i32* %6, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %270

254:                                              ; preds = %242
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %256
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [19 x i8], [19 x i8]* %257, i64 0, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %254
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32, i32* %6, align 4
  call void @count(i32 %266, i32 %268, i32 %269)
  br label %270

270:                                              ; preds = %265, %254, %242
  br label %271

271:                                              ; preds = %270, %232
  br label %272

272:                                              ; preds = %271, %207
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @endgame() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %68, %0
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %18 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #5
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %15
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %24 = call i32 @getij(i8* %23, i32* %2, i32* %3)
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %26
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i8], [19 x i8]* %27, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* @mymove, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %37
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [19 x i8], [19 x i8]* %38, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @mk, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @mk, align 4
  br label %65

44:                                               ; preds = %22
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %46
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [19 x i8], [19 x i8]* %47, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* @umove, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %57
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [19 x i8], [19 x i8]* %58, i64 0, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* @uk, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @uk, align 4
  br label %64

64:                                               ; preds = %55, %44
  br label %65

65:                                               ; preds = %64, %35
  call void @showboard()
  br label %67

66:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %15, label %71

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %108, %71
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %78 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #5
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %75
  %83 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %84 = call i32 @getij(i8* %83, i32* %2, i32* %3)
  %85 = load i32, i32* @umove, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %88
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [19 x i8], [19 x i8]* %89, i64 0, i64 %91
  store i8 %86, i8* %92, align 1
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %95 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %94)
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %97 = call i32 @getij(i8* %96, i32* %2, i32* %3)
  %98 = load i32, i32* @mymove, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %101
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [19 x i8], [19 x i8]* %102, i64 0, i64 %104
  store i8 %99, i8* %105, align 1
  call void @showboard()
  br label %107

106:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %82
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %75, label %111

111:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %145, %111
  %113 = load i32, i32* %2, align 4
  %114 = icmp slt i32 %113, 19
  br i1 %114, label %115, label %148

115:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %141, %115
  %117 = load i32, i32* %3, align 4
  %118 = icmp slt i32 %117, 19
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %121
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [19 x i8], [19 x i8]* %122, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @findcolor(i32 %130, i32 %131)
  %133 = trunc i32 %132 to i8
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %135
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [19 x i8], [19 x i8]* %136, i64 0, i64 %138
  store i8 %133, i8* %139, align 1
  br label %140

140:                                              ; preds = %129, %119
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %116

144:                                              ; preds = %116
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %2, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %2, align 4
  br label %112

148:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %190, %148
  %150 = load i32, i32* %2, align 4
  %151 = icmp slt i32 %150, 19
  br i1 %151, label %152, label %193

152:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %186, %152
  %154 = load i32, i32* %3, align 4
  %155 = icmp slt i32 %154, 19
  br i1 %155, label %156, label %189

156:                                              ; preds = %153
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %158
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [19 x i8], [19 x i8]* %159, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* @mymove, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  br label %185

170:                                              ; preds = %156
  %171 = load i32, i32* %2, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %172
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [19 x i8], [19 x i8]* %173, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, i32* @umove, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %181, %170
  br label %185

185:                                              ; preds = %184, %167
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  br label %153

189:                                              ; preds = %153
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %2, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %2, align 4
  br label %149

193:                                              ; preds = %149
  call void @showboard()
  %194 = load i32, i32* %5, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %4, align 4
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %196)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 19
  br i1 %7, label %8, label %43

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 19
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %14
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [19 x i8], [19 x i8]* %15, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %12
  store i32 0, i32* @lib, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %2, align 4
  call void @countlib(i32 %24, i32 %25, i32 %26)
  %27 = load i32, i32* @lib, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %30
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  store i8 %28, i8* %34, align 1
  br label %35

35:                                               ; preds = %23, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %9

39:                                               ; preds = %9
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %5

43:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @examboard(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  call void @eval(i32 %6)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @mymove, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %12

11:                                               ; preds = %1
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %12

12:                                               ; preds = %11, %10
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %69, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 19
  br i1 %15, label %16, label %72

16:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %65, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 19
  br i1 %19, label %20, label %68

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %22
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x i8], [19 x i8]* %23, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %33
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [19 x i8], [19 x i8]* %34, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %43
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [19 x i8], [19 x i8]* %44, i64 0, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @mymove, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* @mik, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* @mjk, align 4
  %54 = load i32, i32* @mk, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @mk, align 4
  br label %61

56:                                               ; preds = %41
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* @uik, align 4
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* @ujk, align 4
  %59 = load i32, i32* @uk, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @uk, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %31, %20
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %17

68:                                               ; preds = %17
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %13

72:                                               ; preds = %13
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @mymove, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %85

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %5, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %79
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findcolor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x i8], [19 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br label %26

26:                                               ; preds = %23, %13
  %27 = phi i1 [ false, %13 ], [ %25, %23 ]
  br i1 %27, label %10, label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %54, %28
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %43
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [19 x i8], [19 x i8]* %44, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 18
  br label %54

54:                                               ; preds = %51, %41
  %55 = phi i1 [ false, %41 ], [ %53, %51 ]
  br i1 %55, label %38, label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %58
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [19 x i8], [19 x i8]* %59, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %157

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %157

77:                                               ; preds = %56
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %157

82:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %100, %82
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [19 x i8], [19 x i8]* %90, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 0
  br label %100

100:                                              ; preds = %97, %87
  %101 = phi i1 [ false, %87 ], [ %99, %97 ]
  br i1 %101, label %84, label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %104
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [19 x i8], [19 x i8]* %105, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %128, %102
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %117
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [19 x i8], [19 x i8]* %118, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 18
  br label %128

128:                                              ; preds = %125, %115
  %129 = phi i1 [ false, %115 ], [ %127, %125 ]
  br i1 %129, label %112, label %130

130:                                              ; preds = %128
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %132
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [19 x i8], [19 x i8]* %133, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %130
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145, %141
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %3, align 4
  br label %157

150:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %157

151:                                              ; preds = %130
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %157

156:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %154, %150, %148, %80, %76, %74
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findnextmove(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 -1, i32* %19, align 4
  %20 = load i32*, i32** %12, align 8
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %22
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x i8], [19 x i8]* %23, i64 0, i64 %25
  store i8 1, i8* %26, align 1
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %32
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [19 x i8], [19 x i8]* %33, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %44, i32 %45, i32 %46)
  %47 = load i32, i32* @lib, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @fval(i32 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %82

50:                                               ; preds = %29
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [19 x i8], [19 x i8]* %54, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* @mymove, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [19 x i8], [19 x i8]* %66, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @findnextmove(i32 %74, i32 %75, i32* %14, i32* %15, i32* %16, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %72
  br label %81

81:                                               ; preds = %80, %62, %50
  br label %82

82:                                               ; preds = %81, %40
  br label %83

83:                                               ; preds = %82, %6
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %12, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1, i32* %7, align 4
  br label %340

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 18
  br i1 %105, label %106, label %160

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %109
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [19 x i8], [19 x i8]* %110, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %106
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %121, i32 %122, i32 %123)
  %124 = load i32, i32* @lib, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @fval(i32 %124, i32 %125)
  store i32 %126, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %159

127:                                              ; preds = %106
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %130
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [19 x i8], [19 x i8]* %131, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* @mymove, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %127
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %142
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [19 x i8], [19 x i8]* %143, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @findnextmove(i32 %151, i32 %152, i32* %14, i32* %15, i32* %16, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 1, i32* %17, align 4
  br label %157

157:                                              ; preds = %156, %149
  br label %158

158:                                              ; preds = %157, %139, %127
  br label %159

159:                                              ; preds = %158, %117
  br label %160

160:                                              ; preds = %159, %103
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %160
  store i32 0, i32* %17, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %164, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* %16, align 4
  %170 = load i32*, i32** %12, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %10, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32*, i32** %11, align 8
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %168, %163
  %176 = load i32, i32* %13, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 1, i32* %7, align 4
  br label %340

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %179, %160
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %237

183:                                              ; preds = %180
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %185
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [19 x i8], [19 x i8]* %186, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %183
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %9, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %198, i32 %199, i32 %200)
  %201 = load i32, i32* @lib, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @fval(i32 %201, i32 %202)
  store i32 %203, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %236

204:                                              ; preds = %183
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %206
  %208 = load i32, i32* %9, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [19 x i8], [19 x i8]* %207, i64 0, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = load i32, i32* @mymove, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %204
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %218
  %220 = load i32, i32* %9, align 4
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [19 x i8], [19 x i8]* %219, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = icmp ne i8 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %9, align 4
  %229 = sub nsw i32 %228, 1
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @findnextmove(i32 %227, i32 %229, i32* %14, i32* %15, i32* %16, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  store i32 1, i32* %17, align 4
  br label %234

234:                                              ; preds = %233, %226
  br label %235

235:                                              ; preds = %234, %216, %204
  br label %236

236:                                              ; preds = %235, %194
  br label %237

237:                                              ; preds = %236, %180
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %237
  store i32 0, i32* %17, align 4
  %241 = load i32, i32* %16, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %241, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load i32, i32* %16, align 4
  %247 = load i32*, i32** %12, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32*, i32** %10, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load i32*, i32** %11, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %245, %240
  %253 = load i32, i32* %13, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 1, i32* %7, align 4
  br label %340

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %256, %237
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 18
  br i1 %259, label %260, label %314

260:                                              ; preds = %257
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %262
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [19 x i8], [19 x i8]* %263, i64 0, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %260
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %15, align 4
  store i32 0, i32* @lib, align 4
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %275, i32 %276, i32 %277)
  %278 = load i32, i32* @lib, align 4
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @fval(i32 %278, i32 %279)
  store i32 %280, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %313

281:                                              ; preds = %260
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %283
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [19 x i8], [19 x i8]* %284, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = load i32, i32* @mymove, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %281
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %295
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [19 x i8], [19 x i8]* %296, i64 0, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = icmp ne i8 %301, 0
  br i1 %302, label %312, label %303

303:                                              ; preds = %293
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 1
  %307 = load i32, i32* %13, align 4
  %308 = call i32 @findnextmove(i32 %304, i32 %306, i32* %14, i32* %15, i32* %16, i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  store i32 1, i32* %17, align 4
  br label %311

311:                                              ; preds = %310, %303
  br label %312

312:                                              ; preds = %311, %293, %281
  br label %313

313:                                              ; preds = %312, %271
  br label %314

314:                                              ; preds = %313, %257
  %315 = load i32, i32* %17, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %334

317:                                              ; preds = %314
  store i32 0, i32* %17, align 4
  %318 = load i32, i32* %16, align 4
  %319 = load i32*, i32** %12, align 8
  %320 = load i32, i32* %319, align 4
  %321 = icmp sgt i32 %318, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load i32, i32* %16, align 4
  %324 = load i32*, i32** %12, align 8
  store i32 %323, i32* %324, align 4
  %325 = load i32, i32* %14, align 4
  %326 = load i32*, i32** %10, align 8
  store i32 %325, i32* %326, align 4
  %327 = load i32, i32* %15, align 4
  %328 = load i32*, i32** %11, align 8
  store i32 %327, i32* %328, align 4
  br label %329

329:                                              ; preds = %322, %317
  %330 = load i32, i32* %13, align 4
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i32 1, i32* %7, align 4
  br label %340

333:                                              ; preds = %329
  br label %334

334:                                              ; preds = %333, %314
  %335 = load i32*, i32** %12, align 8
  %336 = load i32, i32* %335, align 4
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 1, i32* %7, align 4
  br label %340

339:                                              ; preds = %334
  store i32 0, i32* %7, align 4
  br label %340

340:                                              ; preds = %339, %338, %332, %255, %178, %101
  %341 = load i32, i32* %7, align 4
  ret i32 %341
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fval(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = mul nsw i32 %16, 50
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %17, %22
  %24 = add nsw i32 40, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %11, %10
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findopen(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %17
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [19 x i8], [19 x i8]* %18, i64 0, i64 %20
  store i8 1, i8* %21, align 1
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %7
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %27
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x i8], [19 x i8]* %28, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @mik, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @mjk, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %374

66:                                               ; preds = %44
  br label %108

67:                                               ; preds = %40, %24
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %70
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [19 x i8], [19 x i8]* %71, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [19 x i8], [19 x i8]* %83, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @findopen(i32 %91, i32 %92, i32* %93, i32* %94, i32 %95, i32 %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  br label %374

106:                                              ; preds = %100, %89
  br label %107

107:                                              ; preds = %106, %79, %67
  br label %108

108:                                              ; preds = %107, %66
  br label %109

109:                                              ; preds = %108, %7
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 18
  br i1 %111, label %112, label %197

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %115
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [19 x i8], [19 x i8]* %116, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* @mik, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @mjk, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %132
  store i32 1, i32* %8, align 4
  br label %374

154:                                              ; preds = %132
  br label %196

155:                                              ; preds = %128, %112
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %158
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [19 x i8], [19 x i8]* %159, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %195

167:                                              ; preds = %155
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %170
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [19 x i8], [19 x i8]* %171, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = icmp ne i8 %175, 0
  br i1 %176, label %195, label %177

177:                                              ; preds = %167
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %10, align 4
  %181 = load i32*, i32** %11, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32*, i32** %15, align 8
  %186 = call i32 @findopen(i32 %179, i32 %180, i32* %181, i32* %182, i32 %183, i32 %184, i32* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %177
  %189 = load i32*, i32** %15, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 1, i32* %8, align 4
  br label %374

194:                                              ; preds = %188, %177
  br label %195

195:                                              ; preds = %194, %167, %155
  br label %196

196:                                              ; preds = %195, %154
  br label %197

197:                                              ; preds = %196, %109
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %285

200:                                              ; preds = %197
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %202
  %204 = load i32, i32* %10, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [19 x i8], [19 x i8]* %203, i64 0, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %243

211:                                              ; preds = %200
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @mik, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %10, align 4
  %217 = sub nsw i32 %216, 1
  %218 = load i32, i32* @mjk, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %243

220:                                              ; preds = %215, %211
  %221 = load i32, i32* %9, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load i32, i32* %10, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load i32*, i32** %12, align 8
  %230 = load i32*, i32** %15, align 8
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %228, i32* %233, align 4
  %234 = load i32*, i32** %15, align 8
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load i32*, i32** %15, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %220
  store i32 1, i32* %8, align 4
  br label %374

242:                                              ; preds = %220
  br label %284

243:                                              ; preds = %215, %200
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %245
  %247 = load i32, i32* %10, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [19 x i8], [19 x i8]* %246, i64 0, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = load i32, i32* %13, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %283

255:                                              ; preds = %243
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %257
  %259 = load i32, i32* %10, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [19 x i8], [19 x i8]* %258, i64 0, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %283, label %265

265:                                              ; preds = %255
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %10, align 4
  %268 = sub nsw i32 %267, 1
  %269 = load i32*, i32** %11, align 8
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load i32*, i32** %15, align 8
  %274 = call i32 @findopen(i32 %266, i32 %268, i32* %269, i32* %270, i32 %271, i32 %272, i32* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %265
  %277 = load i32*, i32** %15, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %14, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  store i32 1, i32* %8, align 4
  br label %374

282:                                              ; preds = %276, %265
  br label %283

283:                                              ; preds = %282, %255, %243
  br label %284

284:                                              ; preds = %283, %242
  br label %285

285:                                              ; preds = %284, %197
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 18
  br i1 %287, label %288, label %373

288:                                              ; preds = %285
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %290
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [19 x i8], [19 x i8]* %291, i64 0, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %331

299:                                              ; preds = %288
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* @mik, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %308, label %303

303:                                              ; preds = %299
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  %306 = load i32, i32* @mjk, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %331

308:                                              ; preds = %303, %299
  %309 = load i32, i32* %9, align 4
  %310 = load i32*, i32** %11, align 8
  %311 = load i32*, i32** %15, align 8
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  store i32 %309, i32* %314, align 4
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  %317 = load i32*, i32** %12, align 8
  %318 = load i32*, i32** %15, align 8
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  store i32 %316, i32* %321, align 4
  %322 = load i32*, i32** %15, align 8
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 4
  %325 = load i32*, i32** %15, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %14, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %308
  store i32 1, i32* %8, align 4
  br label %374

330:                                              ; preds = %308
  br label %372

331:                                              ; preds = %303, %288
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %333
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [19 x i8], [19 x i8]* %334, i64 0, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = load i32, i32* %13, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %371

343:                                              ; preds = %331
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %345
  %347 = load i32, i32* %10, align 4
  %348 = add nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [19 x i8], [19 x i8]* %346, i64 0, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = icmp ne i8 %351, 0
  br i1 %352, label %371, label %353

353:                                              ; preds = %343
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %10, align 4
  %356 = add nsw i32 %355, 1
  %357 = load i32*, i32** %11, align 8
  %358 = load i32*, i32** %12, align 8
  %359 = load i32, i32* %13, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load i32*, i32** %15, align 8
  %362 = call i32 @findopen(i32 %354, i32 %356, i32* %357, i32* %358, i32 %359, i32 %360, i32* %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %353
  %365 = load i32*, i32** %15, align 8
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %14, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  store i32 1, i32* %8, align 4
  br label %374

370:                                              ; preds = %364, %353
  br label %371

371:                                              ; preds = %370, %343, %331
  br label %372

372:                                              ; preds = %371, %330
  br label %373

373:                                              ; preds = %372, %285
  store i32 0, i32* %8, align 4
  br label %374

374:                                              ; preds = %373, %369, %329, %281, %241, %193, %153, %105, %65
  %375 = load i32, i32* %8, align 4
  ret i32 %375
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findpatn(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @findpatn.mtype, align 4
  %19 = call i32 @opening(i32* %16, i32* %17, i32* @findpatn.cnd, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %25
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i8], [19 x i8]* %26, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32*, i32** %7, align 8
  store i32 80, i32* %35, align 4
  store i32 1, i32* %4, align 4
  br label %215

36:                                               ; preds = %22
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 0), align 16
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 0), align 16
  %42 = call i32 @openregion(i32 0, i32 0, i32 5, i32 5)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 0, i32* @findpatn.mtype, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @findpatn.mtype, align 4
  %48 = call i32 @opening(i32* %45, i32* %46, i32* @findpatn.cnd, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @findpatn.mtype, align 4
  %52 = call i32 @opening(i32* %49, i32* %50, i32* @findpatn.cnd, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32*, i32** %7, align 8
  store i32 80, i32* %56, align 4
  store i32 1, i32* %4, align 4
  br label %215

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 1), align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 1), align 4
  %62 = call i32 @openregion(i32 13, i32 0, i32 18, i32 5)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 1, i32* @findpatn.mtype, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @findpatn.mtype, align 4
  %68 = call i32 @opening(i32* %65, i32* %66, i32* @findpatn.cnd, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @findpatn.mtype, align 4
  %72 = call i32 @opening(i32* %69, i32* %70, i32* @findpatn.cnd, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32*, i32** %7, align 8
  store i32 80, i32* %76, align 4
  store i32 1, i32* %4, align 4
  br label %215

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 2), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 2), align 8
  %82 = call i32 @openregion(i32 0, i32 13, i32 5, i32 18)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 2, i32* @findpatn.mtype, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @findpatn.mtype, align 4
  %88 = call i32 @opening(i32* %85, i32* %86, i32* @findpatn.cnd, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @findpatn.mtype, align 4
  %92 = call i32 @opening(i32* %89, i32* %90, i32* @findpatn.cnd, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32*, i32** %7, align 8
  store i32 80, i32* %96, align 4
  store i32 1, i32* %4, align 4
  br label %215

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 3), align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 3), align 4
  %102 = call i32 @openregion(i32 13, i32 13, i32 18, i32 18)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 3, i32* @findpatn.mtype, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @findpatn.mtype, align 4
  %108 = call i32 @opening(i32* %105, i32* %106, i32* @findpatn.cnd, i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* @findpatn.mtype, align 4
  %112 = call i32 @opening(i32* %109, i32* %110, i32* @findpatn.cnd, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %115

115:                                              ; preds = %114, %104
  %116 = load i32*, i32** %7, align 8
  store i32 80, i32* %116, align 4
  store i32 1, i32* %4, align 4
  br label %215

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 5), align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 5), align 4
  %122 = call i32 @openregion(i32 0, i32 6, i32 4, i32 11)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32*, i32** %5, align 8
  store i32 3, i32* %125, align 4
  %126 = load i32*, i32** %6, align 8
  store i32 9, i32* %126, align 4
  %127 = load i32*, i32** %7, align 8
  store i32 80, i32* %127, align 4
  store i32 1, i32* %4, align 4
  br label %215

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %118
  %130 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 6), align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 6), align 8
  %133 = call i32 @openregion(i32 18, i32 6, i32 14, i32 11)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32*, i32** %5, align 8
  store i32 15, i32* %136, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 9, i32* %137, align 4
  %138 = load i32*, i32** %7, align 8
  store i32 80, i32* %138, align 4
  store i32 1, i32* %4, align 4
  br label %215

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %129
  %141 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 7), align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 7), align 4
  %144 = call i32 @openregion(i32 6, i32 0, i32 11, i32 4)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32*, i32** %5, align 8
  store i32 9, i32* %147, align 4
  %148 = load i32*, i32** %6, align 8
  store i32 3, i32* %148, align 4
  %149 = load i32*, i32** %7, align 8
  store i32 80, i32* %149, align 4
  store i32 1, i32* %4, align 4
  br label %215

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %140
  %152 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 8), align 16
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 8), align 16
  %155 = call i32 @openregion(i32 6, i32 18, i32 11, i32 14)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32*, i32** %5, align 8
  store i32 9, i32* %158, align 4
  %159 = load i32*, i32** %6, align 8
  store i32 15, i32* %159, align 4
  %160 = load i32*, i32** %7, align 8
  store i32 80, i32* %160, align 4
  store i32 1, i32* %4, align 4
  br label %215

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %151
  %163 = load i32*, i32** %5, align 8
  store i32 -1, i32* %163, align 4
  %164 = load i32*, i32** %6, align 8
  store i32 -1, i32* %164, align 4
  %165 = load i32*, i32** %7, align 8
  store i32 -1, i32* %165, align 4
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %206, %162
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 19
  br i1 %168, label %169, label %209

169:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %202, %169
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 19
  br i1 %172, label %173, label %205

173:                                              ; preds = %170
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %175
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [19 x i8], [19 x i8]* %176, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load i32, i32* @mymove, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %173
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @matchpat(i32 %185, i32 %186, i32* %10, i32* %11, i32* %12)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load i32, i32* %12, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %190, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i32, i32* %12, align 4
  %196 = load i32*, i32** %7, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32*, i32** %5, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32*, i32** %6, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %194, %189, %184, %173
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %170

205:                                              ; preds = %170
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %166

209:                                              ; preds = %166
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 1, i32* %4, align 4
  br label %215

214:                                              ; preds = %209
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %213, %157, %146, %135, %124, %115, %95, %75, %55, %34
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findsaver(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 -1, i32* %16, align 4
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %78, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %74, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 19
  br i1 %23, label %24, label %77

24:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %70, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 19
  br i1 %27, label %28, label %73

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* @mymove, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %41
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [19 x i8], [19 x i8]* %42, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  call void @initmark()
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @findnextmove(i32 %51, i32 %52, i32* %11, i32* %12, i32* %13, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %56, %50
  br label %69

69:                                               ; preds = %68, %39, %28
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %25

73:                                               ; preds = %25
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %21

77:                                               ; preds = %21
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %17

81:                                               ; preds = %17
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %87

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findwinner(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %5, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %210, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 19
  br i1 %22, label %23, label %213

23:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %206, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 19
  br i1 %26, label %27, label %209

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [19 x i8], [19 x i8]* %30, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* @umove, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %205

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %40
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [19 x i8], [19 x i8]* %41, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %205

48:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  call void @initmark()
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %53 = load i32, i32* @umove, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %55
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [19 x i8], [19 x i8]* %56, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @findopen(i32 %49, i32 %50, i32* %51, i32* %52, i32 %53, i32 %61, i32* %13)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %204

64:                                               ; preds = %48
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %66
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [19 x i8], [19 x i8]* %67, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 120
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  store i32 120, i32* %79, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %74
  br label %203

87:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %199, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [19 x i8], [19 x i8]* %92, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp slt i32 %89, %97
  br i1 %98, label %99, label %202

99:                                               ; preds = %88
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %195, %99
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %103
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [19 x i8], [19 x i8]* %104, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %101, %109
  br i1 %110, label %111, label %198

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %194

115:                                              ; preds = %111
  store i32 0, i32* @lib, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %119, i32 %123, i32 %124)
  %125 = load i32, i32* @lib, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %115
  %128 = load i32, i32* @lib, align 4
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* @mymove, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %135
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [19 x i8], [19 x i8]* %136, i64 0, i64 %141
  store i8 %130, i8* %142, align 1
  store i32 0, i32* @lib, align 4
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @umove, align 4
  call void @countlib(i32 %146, i32 %150, i32 %151)
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %158

154:                                              ; preds = %127
  %155 = load i32, i32* @lib, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %12, align 4
  br label %162

158:                                              ; preds = %154, %127
  %159 = load i32, i32* @lib, align 4
  %160 = mul nsw i32 20, %159
  %161 = sub nsw i32 120, %160
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %158, %157
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %162
  %168 = load i32, i32* %12, align 4
  %169 = load i32*, i32** %7, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %6, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %167, %162
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %185
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [19 x i8], [19 x i8]* %186, i64 0, i64 %191
  store i8 0, i8* %192, align 1
  br label %193

193:                                              ; preds = %180, %115
  br label %194

194:                                              ; preds = %193, %111
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %100

198:                                              ; preds = %100
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %88

202:                                              ; preds = %88
  br label %203

203:                                              ; preds = %202, %86
  br label %204

204:                                              ; preds = %203, %48
  br label %205

205:                                              ; preds = %204, %38, %27
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %24

209:                                              ; preds = %24
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %20

213:                                              ; preds = %20
  %214 = load i32*, i32** %7, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i32 1, i32* %4, align 4
  br label %219

218:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %217
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fioe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %64

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1, i64 0), align 1
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* @mymove, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 1), align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* @mymove, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %241

22:                                               ; preds = %16, %11, %8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 18
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1, i64 18), align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* @mymove, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 17), align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* @mymove, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %241

36:                                               ; preds = %30, %25, %22
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1), i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* @mymove, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0), i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* @mymove, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0), i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* @mymove, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %241

63:                                               ; preds = %53, %44, %36
  store i32 0, i32* %3, align 4
  br label %241

64:                                               ; preds = %2
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 18
  br i1 %66, label %67, label %123

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17, i64 0), align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* @mymove, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 1), align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* @mymove, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %241

81:                                               ; preds = %75, %70, %67
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 18
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17, i64 18), align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* @mymove, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 17), align 1
  %91 = zext i8 %90 to i32
  %92 = load i32, i32* @mymove, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %241

95:                                               ; preds = %89, %84, %81
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17), i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* @mymove, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %95
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18), i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* @mymove, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18), i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i32, i32* @mymove, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %241

122:                                              ; preds = %112, %103, %95
  store i32 0, i32* %3, align 4
  br label %241

123:                                              ; preds = %64
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %123
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %128
  %130 = getelementptr inbounds [19 x i8], [19 x i8]* %129, i64 0, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i32, i32* @mymove, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %126
  %136 = load i32, i32* %4, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %138
  %140 = getelementptr inbounds [19 x i8], [19 x i8]* %139, i64 0, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* @mymove, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %135
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %148
  %150 = getelementptr inbounds [19 x i8], [19 x i8]* %149, i64 0, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i32, i32* @mymove, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  store i32 1, i32* %3, align 4
  br label %241

156:                                              ; preds = %145, %135, %126
  store i32 0, i32* %3, align 4
  br label %241

157:                                              ; preds = %123
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 18
  br i1 %159, label %160, label %191

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %162
  %164 = getelementptr inbounds [19 x i8], [19 x i8]* %163, i64 0, i64 17
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32, i32* @mymove, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %160
  %170 = load i32, i32* %4, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %172
  %174 = getelementptr inbounds [19 x i8], [19 x i8]* %173, i64 0, i64 18
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i32, i32* @mymove, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %169
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %182
  %184 = getelementptr inbounds [19 x i8], [19 x i8]* %183, i64 0, i64 18
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = load i32, i32* @mymove, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  store i32 1, i32* %3, align 4
  br label %241

190:                                              ; preds = %179, %169, %160
  store i32 0, i32* %3, align 4
  br label %241

191:                                              ; preds = %157
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %193
  %195 = load i32, i32* %5, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [19 x i8], [19 x i8]* %194, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load i32, i32* @mymove, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %240

203:                                              ; preds = %191
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %205
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [19 x i8], [19 x i8]* %206, i64 0, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = load i32, i32* @mymove, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %240

215:                                              ; preds = %203
  %216 = load i32, i32* %4, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %218
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [19 x i8], [19 x i8]* %219, i64 0, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = load i32, i32* @mymove, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %215
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %230
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [19 x i8], [19 x i8]* %231, i64 0, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load i32, i32* @mymove, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %227
  store i32 1, i32* %3, align 4
  br label %241

240:                                              ; preds = %227, %215, %203, %191
  store i32 0, i32* %3, align 4
  br label %241

241:                                              ; preds = %240, %239, %190, %189, %156, %155, %122, %121, %94, %80, %63, %62, %35, %21
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmove(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %10, align 4
  %14 = load i32, i32* @umove, align 4
  call void @eval(i32 %14)
  %15 = call i32 @findwinner(i32* %5, i32* %6, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %17
  br label %28

28:                                               ; preds = %27, %2
  %29 = call i32 @findsaver(i32* %5, i32* %6, i32* %7)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %41, %28
  %43 = call i32 @findpatn(i32* %5, i32* %6, i32* %7)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %3, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %167

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %164, %59
  call void @random_nasko(i32* @rd)
  %61 = load i32, i32* @rd, align 4
  %62 = srem i32 %61, 19
  %63 = load i32*, i32** %3, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %79, label %67

67:                                               ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 16
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 5
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 13
  br i1 %78, label %79, label %95

79:                                               ; preds = %75, %67, %60
  call void @random_nasko(i32* @rd)
  %80 = load i32, i32* @rd, align 4
  %81 = srem i32 %80, 19
  %82 = load i32*, i32** %3, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 16
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %79
  call void @random_nasko(i32* @rd)
  %91 = load i32, i32* @rd, align 4
  %92 = srem i32 %91, 19
  %93 = load i32*, i32** %3, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %75, %71
  call void @random_nasko(i32* @rd)
  %96 = load i32, i32* @rd, align 4
  %97 = srem i32 %96, 19
  %98 = load i32*, i32** %4, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %114, label %102

102:                                              ; preds = %95
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 16
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 5
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 13
  br i1 %113, label %114, label %130

114:                                              ; preds = %110, %102, %95
  call void @random_nasko(i32* @rd)
  %115 = load i32, i32* @rd, align 4
  %116 = srem i32 %115, 19
  %117 = load i32*, i32** %4, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 16
  br i1 %124, label %125, label %129

125:                                              ; preds = %121, %114
  call void @random_nasko(i32* @rd)
  %126 = load i32, i32* @rd, align 4
  %127 = srem i32 %126, 19
  %128 = load i32*, i32** %4, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %121
  br label %130

130:                                              ; preds = %129, %110, %106
  store i32 0, i32* @lib, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %132, i32 %134, i32 %135)
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  %139 = icmp slt i32 %138, 400
  br i1 %139, label %140, label %164

140:                                              ; preds = %136
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %143
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [19 x i8], [19 x i8]* %144, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %140
  %153 = load i32, i32* @lib, align 4
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @fioe(i32 %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br label %162

162:                                              ; preds = %155, %152, %140
  %163 = phi i1 [ true, %152 ], [ true, %140 ], [ %161, %155 ]
  br label %164

164:                                              ; preds = %162, %136
  %165 = phi i1 [ false, %136 ], [ %163, %162 ]
  br i1 %165, label %60, label %166

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166, %56
  %168 = load i32, i32* %11, align 4
  %169 = icmp sge i32 %168, 400
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32, i32* @pass, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @pass, align 4
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %174 = load i32*, i32** %3, align 8
  store i32 -1, i32* %174, align 4
  br label %206

175:                                              ; preds = %167
  store i32 0, i32* @pass, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.19, i64 0, i64 0))
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 65
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %8, align 1
  br label %190

185:                                              ; preds = %175
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 66
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %8, align 1
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i8, i8* %8, align 1
  %192 = sext i8 %191 to i32
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %3, align 8
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 19, %195
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %197, 10
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.21, i64 0, i64 0), i32 %200)
  br label %205

202:                                              ; preds = %190
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.22, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %202, %199
  br label %206

206:                                              ; preds = %205, %170
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getij(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sge i32 %12, 65
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 %18, 72
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 65
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %88

27:                                               ; preds = %14, %3
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 74
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 84
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %43, 66
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %87

46:                                               ; preds = %33, %27
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 104
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 97
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %86

65:                                               ; preds = %52, %46
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %69, 106
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 116
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sub nsw i32 %81, 98
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %85

84:                                               ; preds = %71, %65
  store i32 0, i32* %4, align 4
  br label %120

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %58
  br label %87

87:                                               ; preds = %86, %39
  br label %88

88:                                               ; preds = %87, %20
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 48
  store i32 %93, i32* %8, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %99, 10
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = add nsw i32 %100, %104
  %106 = sub nsw i32 %105, 48
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %98, %88
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 19, %108
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %116, 18
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  br label %120

119:                                              ; preds = %114, %107
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %118, %84
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getmove(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* @play, align 4
  br label %116

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.26, i64 0, i64 0)) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.28, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %42, %18
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 19
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 19
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.29, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %24

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %47 = load i32, i32* @mymove, align 4
  %48 = load i32, i32* @mk, align 4
  %49 = load i32, i32* @uk, align 4
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.30, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %61, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 9
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.31, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %51

64:                                               ; preds = %51
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %66 = call i32 @fclose(%struct._IO_FILE* %65)
  store i32 -1, i32* @play, align 4
  br label %115

67:                                               ; preds = %14
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.32, i64 0, i64 0)) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @pass, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @pass, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 -1, i32* %74, align 4
  br label %114

75:                                               ; preds = %67
  store i32 0, i32* @pass, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @getij(i8* %76, i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %84
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [19 x i8], [19 x i8]* %85, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %81
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @suicide(i32 %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %93, %81, %75
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %102 = call i32 @feof(%struct._IO_FILE* %101) #6
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  call void @exit(i32 0) #7
  unreachable

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8.33, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9.34, i64 0, i64 0))
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10.35, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %6, align 8
  call void @getmove(i8* %110, i32* %111, i32* %112)
  br label %113

113:                                              ; preds = %105, %93
  br label %114

114:                                              ; preds = %113, %71
  br label %115

115:                                              ; preds = %114, %64
  br label %116

116:                                              ; preds = %115, %13
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @initmark() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %21, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 19
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %17, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 19
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %12
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 %15
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %7

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %3

24:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %7, align 4
  call void @showinst()
  %8 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.73, i64 0, i64 0))
  store %struct._IO_FILE* %8, %struct._IO_FILE** %2, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %55

10:                                               ; preds = %0
  store i32 1, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %31, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 19
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %27, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 19
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %21
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [19 x i8], [19 x i8]* %22, i64 0, i64 %24
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.74, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %15

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.75, i64 0, i64 0), i32* @mymove, i32* @mk, i32* @uk)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %46, %34
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 9
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i64 0, i64 %43
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.76, i64 0, i64 0), i32* %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %51 = call i32 @fclose(%struct._IO_FILE* %50)
  %52 = load i32, i32* @mymove, align 4
  %53 = sub nsw i32 3, %52
  store i32 %53, i32* @umove, align 4
  %54 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #6
  br label %89

55:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %63, %55
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 9
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i64 0, i64 %61
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %56

66:                                               ; preds = %56
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 19
  br i1 %69, label %70, label %88

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %81, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 19
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %76
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [19 x i8], [19 x i8]* %77, i64 0, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %71

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %67

88:                                               ; preds = %67
  store i32 0, i32* @mk, align 4
  store i32 0, i32* @uk, align 4
  br label %89

89:                                               ; preds = %88, %49
  store i32 1, i32* @play, align 4
  store i32 0, i32* @pass, align 4
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  call void @seed(i32* @rd)
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %131, label %92

92:                                               ; preds = %89
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5.77, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.78, i64 0, i64 0), i32* %3)
  %95 = call i32 @getchar()
  %96 = load i32, i32* %3, align 4
  call void @sethand(i32 %96)
  call void @showboard()
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.79, i64 0, i64 0))
  %98 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %99 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.74, i64 0, i64 0), i8* %98)
  %100 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 98
  br i1 %103, label %104, label %117

104:                                              ; preds = %92
  store i32 1, i32* @mymove, align 4
  store i32 2, i32* @umove, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  call void @genmove(i32* %3, i32* %4)
  %108 = load i32, i32* @mymove, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %111
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [19 x i8], [19 x i8]* %112, i64 0, i64 %114
  store i8 %109, i8* %115, align 1
  br label %116

116:                                              ; preds = %107, %104
  br label %130

117:                                              ; preds = %92
  store i32 2, i32* @mymove, align 4
  store i32 1, i32* @umove, align 4
  %118 = load i32, i32* %3, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  call void @genmove(i32* %3, i32* %4)
  %121 = load i32, i32* @mymove, align 4
  %122 = trunc i32 %121 to i8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %124
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [19 x i8], [19 x i8]* %125, i64 0, i64 %127
  store i8 %122, i8* %128, align 1
  br label %129

129:                                              ; preds = %120, %117
  br label %130

130:                                              ; preds = %129, %116
  br label %131

131:                                              ; preds = %130, %89
  call void @showboard()
  br label %132

132:                                              ; preds = %177, %131
  %133 = load i32, i32* @play, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %132
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8.80, i64 0, i64 0))
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %138 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.81, i64 0, i64 0), i8* %137)
  %139 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  call void @getmove(i8* %139, i32* %3, i32* %4)
  %140 = load i32, i32* @play, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %173

142:                                              ; preds = %135
  %143 = load i32, i32* %3, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* @umove, align 4
  %147 = trunc i32 %146 to i8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %149
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [19 x i8], [19 x i8]* %150, i64 0, i64 %152
  store i8 %147, i8* %153, align 1
  %154 = load i32, i32* @mymove, align 4
  call void @examboard(i32 %154)
  br label %155

155:                                              ; preds = %145, %142
  %156 = load i32, i32* @pass, align 4
  %157 = icmp ne i32 %156, 2
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  call void @genmove(i32* %3, i32* %4)
  %159 = load i32, i32* %3, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load i32, i32* @mymove, align 4
  %163 = trunc i32 %162 to i8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %165
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [19 x i8], [19 x i8]* %166, i64 0, i64 %168
  store i8 %163, i8* %169, align 1
  %170 = load i32, i32* @umove, align 4
  call void @examboard(i32 %170)
  br label %171

171:                                              ; preds = %161, %158
  br label %172

172:                                              ; preds = %171, %155
  call void @showboard()
  br label %173

173:                                              ; preds = %172, %135
  %174 = load i32, i32* @pass, align 4
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 0, i32* @play, align 4
  br label %177

177:                                              ; preds = %176, %173
  br label %132

178:                                              ; preds = %132
  %179 = load i32, i32* @play, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = call i32 @getchar()
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10.82, i64 0, i64 0))
  %184 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %185 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.74, i64 0, i64 0), i8* %184)
  %186 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 121
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  call void @endgame()
  br label %191

191:                                              ; preds = %190, %181
  br label %192

192:                                              ; preds = %191, %178
  ret i32 0
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #3

declare dso_local i32 @getchar() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @matchpat(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32*, i32** %9, align 8
  store i32 -1, i32* %21, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 -1, i32* %22, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %410, %5
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %25, 24
  br i1 %26, label %27, label %413

27:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %406, %27
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.pattern, %struct.pattern* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %409

36:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  store i32 1, i32* %17, align 4
  br label %37

37:                                               ; preds = %276, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.pattern, %struct.pattern* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi i1 [ false, %37 ], [ %47, %45 ]
  br i1 %49, label %50, label %279

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %53
  %55 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %54, i64 0, i64 0
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.pattern, %struct.pattern* %60, i32 0, i32 0
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.patval, %struct.patval* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %57, %66
  %68 = add nsw i32 %51, %67
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %70
  %72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %71, i64 0, i64 0
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.pattern, %struct.pattern* %77, i32 0, i32 0
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %78, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.patval, %struct.patval* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %74, %83
  %85 = add nsw i32 %68, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %88
  %90 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %89, i64 0, i64 1
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0, i64 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.pattern, %struct.pattern* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %96, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.patval, %struct.patval* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %92, %101
  %103 = add nsw i32 %86, %102
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i64 0, i64 %105
  %107 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %106, i64 0, i64 1
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.pattern, %struct.pattern* %112, i32 0, i32 0
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.patval, %struct.patval* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %109, %118
  %120 = add nsw i32 %103, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %50
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %124, 18
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %14, align 4
  %131 = icmp sgt i32 %130, 18
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %126, %123, %50
  store i32 0, i32* %17, align 4
  br label %279

133:                                              ; preds = %129
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.pattern, %struct.pattern* %136, i32 0, i32 0
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %137, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.patval, %struct.patval* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %276 [
    i32 0, label %143
    i32 1, label %155
    i32 2, label %168
    i32 3, label %181
    i32 4, label %202
    i32 5, label %226
    i32 6, label %251
  ]

143:                                              ; preds = %133
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %145
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [19 x i8], [19 x i8]* %146, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %276

154:                                              ; preds = %143
  store i32 0, i32* %17, align 4
  br label %276

155:                                              ; preds = %133
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %157
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [19 x i8], [19 x i8]* %158, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = load i32, i32* @umove, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  br label %276

167:                                              ; preds = %155
  store i32 0, i32* %17, align 4
  br label %276

168:                                              ; preds = %133
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %170
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [19 x i8], [19 x i8]* %171, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i32, i32* @mymove, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %276

180:                                              ; preds = %168
  store i32 0, i32* %17, align 4
  br label %276

181:                                              ; preds = %133
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %183
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [19 x i8], [19 x i8]* %184, i64 0, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %181
  store i32 0, i32* @lib, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %192, i32 %193, i32 %194)
  %195 = load i32, i32* @lib, align 4
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %14, align 4
  store i32 %199, i32* %19, align 4
  br label %276

200:                                              ; preds = %191
  store i32 0, i32* %17, align 4
  br label %276

201:                                              ; preds = %181
  store i32 0, i32* %17, align 4
  br label %276

202:                                              ; preds = %133
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %204
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [19 x i8], [19 x i8]* %205, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %202
  %213 = load i32, i32* %13, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %13, align 4
  %217 = icmp eq i32 %216, 18
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %14, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %14, align 4
  %223 = icmp eq i32 %222, 18
  br i1 %223, label %224, label %225

224:                                              ; preds = %221, %218, %215, %212
  br label %276

225:                                              ; preds = %221, %202
  store i32 0, i32* %17, align 4
  br label %276

226:                                              ; preds = %133
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %228
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [19 x i8], [19 x i8]* %229, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = load i32, i32* @umove, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %250

237:                                              ; preds = %226
  %238 = load i32, i32* %13, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %13, align 4
  %242 = icmp eq i32 %241, 18
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %14, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %14, align 4
  %248 = icmp eq i32 %247, 18
  br i1 %248, label %249, label %250

249:                                              ; preds = %246, %243, %240, %237
  br label %276

250:                                              ; preds = %246, %226
  store i32 0, i32* %17, align 4
  br label %276

251:                                              ; preds = %133
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %253
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [19 x i8], [19 x i8]* %254, i64 0, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = load i32, i32* @mymove, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %251
  %263 = load i32, i32* %13, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %13, align 4
  %267 = icmp eq i32 %266, 18
  br i1 %267, label %274, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* %14, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %14, align 4
  %273 = icmp eq i32 %272, 18
  br i1 %273, label %274, label %275

274:                                              ; preds = %271, %268, %265, %262
  br label %276

275:                                              ; preds = %271, %251
  store i32 0, i32* %17, align 4
  br label %276

276:                                              ; preds = %275, %274, %250, %249, %225, %224, %201, %200, %197, %180, %179, %167, %166, %154, %153, %133
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %37

279:                                              ; preds = %132, %48
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %405

282:                                              ; preds = %279
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.pattern, %struct.pattern* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* %16, align 4
  %289 = icmp sge i32 %288, 8
  br i1 %289, label %290, label %392

290:                                              ; preds = %282
  %291 = load i32, i32* %16, align 4
  %292 = icmp sle i32 %291, 13
  br i1 %292, label %293, label %392

293:                                              ; preds = %290
  %294 = load i32, i32* %18, align 4
  %295 = sub nsw i32 %294, 9
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i32, i32* %18, align 4
  %299 = sub nsw i32 %298, 9
  %300 = sub nsw i32 0, %299
  br label %304

301:                                              ; preds = %293
  %302 = load i32, i32* %18, align 4
  %303 = sub nsw i32 %302, 9
  br label %304

304:                                              ; preds = %301, %297
  %305 = phi i32 [ %300, %297 ], [ %303, %301 ]
  %306 = icmp sgt i32 %305, 7
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* %20, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %20, align 4
  br label %342

310:                                              ; preds = %304
  %311 = load i32, i32* %18, align 4
  %312 = sub nsw i32 %311, 9
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = load i32, i32* %18, align 4
  %316 = sub nsw i32 %315, 9
  %317 = sub nsw i32 0, %316
  br label %321

318:                                              ; preds = %310
  %319 = load i32, i32* %18, align 4
  %320 = sub nsw i32 %319, 9
  br label %321

321:                                              ; preds = %318, %314
  %322 = phi i32 [ %317, %314 ], [ %320, %318 ]
  %323 = icmp eq i32 %322, 6
  br i1 %323, label %338, label %324

324:                                              ; preds = %321
  %325 = load i32, i32* %18, align 4
  %326 = sub nsw i32 %325, 9
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load i32, i32* %18, align 4
  %330 = sub nsw i32 %329, 9
  %331 = sub nsw i32 0, %330
  br label %335

332:                                              ; preds = %324
  %333 = load i32, i32* %18, align 4
  %334 = sub nsw i32 %333, 9
  br label %335

335:                                              ; preds = %332, %328
  %336 = phi i32 [ %331, %328 ], [ %334, %332 ]
  %337 = icmp eq i32 %336, 7
  br i1 %337, label %338, label %341

338:                                              ; preds = %335, %321
  %339 = load i32, i32* %20, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %20, align 4
  br label %341

341:                                              ; preds = %338, %335
  br label %342

342:                                              ; preds = %341, %307
  %343 = load i32, i32* %19, align 4
  %344 = sub nsw i32 %343, 9
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %342
  %347 = load i32, i32* %19, align 4
  %348 = sub nsw i32 %347, 9
  %349 = sub nsw i32 0, %348
  br label %353

350:                                              ; preds = %342
  %351 = load i32, i32* %19, align 4
  %352 = sub nsw i32 %351, 9
  br label %353

353:                                              ; preds = %350, %346
  %354 = phi i32 [ %349, %346 ], [ %352, %350 ]
  %355 = icmp sgt i32 %354, 7
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load i32, i32* %20, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* %20, align 4
  br label %391

359:                                              ; preds = %353
  %360 = load i32, i32* %19, align 4
  %361 = sub nsw i32 %360, 9
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = load i32, i32* %19, align 4
  %365 = sub nsw i32 %364, 9
  %366 = sub nsw i32 0, %365
  br label %370

367:                                              ; preds = %359
  %368 = load i32, i32* %19, align 4
  %369 = sub nsw i32 %368, 9
  br label %370

370:                                              ; preds = %367, %363
  %371 = phi i32 [ %366, %363 ], [ %369, %367 ]
  %372 = icmp eq i32 %371, 6
  br i1 %372, label %387, label %373

373:                                              ; preds = %370
  %374 = load i32, i32* %19, align 4
  %375 = sub nsw i32 %374, 9
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = load i32, i32* %19, align 4
  %379 = sub nsw i32 %378, 9
  %380 = sub nsw i32 0, %379
  br label %384

381:                                              ; preds = %373
  %382 = load i32, i32* %19, align 4
  %383 = sub nsw i32 %382, 9
  br label %384

384:                                              ; preds = %381, %377
  %385 = phi i32 [ %380, %377 ], [ %383, %381 ]
  %386 = icmp eq i32 %385, 7
  br i1 %386, label %387, label %390

387:                                              ; preds = %384, %370
  %388 = load i32, i32* %20, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %20, align 4
  br label %390

390:                                              ; preds = %387, %384
  br label %391

391:                                              ; preds = %390, %356
  br label %392

392:                                              ; preds = %391, %290, %282
  %393 = load i32, i32* %20, align 4
  %394 = load i32*, i32** %11, align 8
  %395 = load i32, i32* %394, align 4
  %396 = icmp sgt i32 %393, %395
  br i1 %396, label %397, label %404

397:                                              ; preds = %392
  %398 = load i32, i32* %20, align 4
  %399 = load i32*, i32** %11, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i32, i32* %18, align 4
  %401 = load i32*, i32** %9, align 8
  store i32 %400, i32* %401, align 4
  %402 = load i32, i32* %19, align 4
  %403 = load i32*, i32** %10, align 8
  store i32 %402, i32* %403, align 4
  br label %404

404:                                              ; preds = %397, %392
  br label %405

405:                                              ; preds = %404, %279
  br label %406

406:                                              ; preds = %405
  %407 = load i32, i32* %15, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %15, align 4
  br label %28

409:                                              ; preds = %28
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %16, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %16, align 4
  br label %24

413:                                              ; preds = %24
  %414 = load i32*, i32** %11, align 8
  %415 = load i32, i32* %414, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %413
  store i32 1, i32* %6, align 4
  br label %419

418:                                              ; preds = %413
  store i32 0, i32* %6, align 4
  br label %419

419:                                              ; preds = %418, %417
  %420 = load i32, i32* %6, align 4
  ret i32 %420
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opening(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %25

16:                                               ; preds = %13, %4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 18, %22
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %33

25:                                               ; preds = %13
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.tnode, %struct.tnode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %16
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %48

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.tnode, %struct.tnode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 18, %45
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %56

48:                                               ; preds = %36
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.tnode, %struct.tnode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %39
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.tnode, %struct.tnode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %56
  call void @random_nasko(i32* @rd)
  %65 = load i32, i32* @rd, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.tnode, %struct.tnode* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %65, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.tnode, %struct.tnode* %76, i32 0, i32 3
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %77, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  store i32 1, i32* %5, align 4
  br label %84

83:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %64
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @openregion(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %13, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %11, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %63, %35
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %59, %41
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %49
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [19 x i8], [19 x i8]* %50, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %67

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %43

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %37

66:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @random_nasko(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  call void @seed(i32* %7)
  br label %23

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 137
  %12 = srem i32 %11, 3833
  %13 = load i32*, i32** %2, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32*, i32** %2, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %8
  br label %23

23:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @seed(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  store i32 281701264, i32* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sethand(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %72

5:                                                ; preds = %1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %71

8:                                                ; preds = %5
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %70

11:                                               ; preds = %8
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 1
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %69

14:                                               ; preds = %11
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 1
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  br label %68

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 1
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  br label %66

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 7
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 1
  %29 = load i32, i32* %2, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %2, align 4
  %34 = icmp sgt i32 %33, 9
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 2, i64 2), align 2
  %36 = load i32, i32* %2, align 4
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 16, i64 16), align 16
  %39 = load i32, i32* %2, align 4
  %40 = icmp sgt i32 %39, 11
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 2, i64 16), align 2
  %42 = load i32, i32* %2, align 4
  %43 = icmp sgt i32 %42, 12
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 16, i64 2), align 2
  %45 = load i32, i32* %2, align 4
  %46 = icmp sgt i32 %45, 13
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 6, i64 6), align 2
  %48 = load i32, i32* %2, align 4
  %49 = icmp sgt i32 %48, 14
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 12, i64 12), align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp sgt i32 %51, 15
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 6, i64 12), align 2
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 16
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 12, i64 6), align 2
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %25
  br label %66

66:                                               ; preds = %65, %24
  br label %67

67:                                               ; preds = %66, %18
  br label %68

68:                                               ; preds = %67, %17
  br label %69

69:                                               ; preds = %68, %11
  br label %70

70:                                               ; preds = %69, %8
  br label %71

71:                                               ; preds = %70, %5
  br label %72

72:                                               ; preds = %71, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @showboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.97, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %51, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %54

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = sub nsw i32 19, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %11)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %44, %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 19
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %18
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %43

28:                                               ; preds = %16
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %42

40:                                               ; preds = %28
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %5

54:                                               ; preds = %5
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.103, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %81, %54
  %57 = load i32, i32* %2, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %80

68:                                               ; preds = %59
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %79

77:                                               ; preds = %68
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %99

90:                                               ; preds = %84
  %91 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %98

96:                                               ; preds = %90
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %88
  store i32 4, i32* %2, align 4
  br label %100

100:                                              ; preds = %125, %99
  %101 = load i32, i32* %2, align 4
  %102 = icmp slt i32 %101, 9
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %124

112:                                              ; preds = %103
  %113 = load i32, i32* %2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %123

121:                                              ; preds = %112
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %119
  br label %124

124:                                              ; preds = %123, %110
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %2, align 4
  br label %100

128:                                              ; preds = %100
  %129 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %143

134:                                              ; preds = %128
  %135 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %142

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %132
  store i32 10, i32* %2, align 4
  br label %144

144:                                              ; preds = %169, %143
  %145 = load i32, i32* %2, align 4
  %146 = icmp slt i32 %145, 15
  br i1 %146, label %147, label %172

147:                                              ; preds = %144
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %168

156:                                              ; preds = %147
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %167

165:                                              ; preds = %156
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %163
  br label %168

168:                                              ; preds = %167, %154
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %2, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %2, align 4
  br label %144

172:                                              ; preds = %144
  %173 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %187

178:                                              ; preds = %172
  %179 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %186

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %182
  br label %187

187:                                              ; preds = %186, %176
  store i32 16, i32* %2, align 4
  br label %188

188:                                              ; preds = %213, %187
  %189 = load i32, i32* %2, align 4
  %190 = icmp slt i32 %189, 19
  br i1 %190, label %191, label %216

191:                                              ; preds = %188
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %212

200:                                              ; preds = %191
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %211

209:                                              ; preds = %200
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %207
  br label %212

212:                                              ; preds = %211, %198
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %2, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %2, align 4
  br label %188

216:                                              ; preds = %188
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.103, i64 0, i64 0))
  %218 = load i32, i32* @umove, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8.105, i64 0, i64 0))
  br label %230

222:                                              ; preds = %216
  %223 = load i32, i32* @umove, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9.106, i64 0, i64 0))
  br label %229

227:                                              ; preds = %222
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %225
  br label %230

230:                                              ; preds = %229, %220
  store i32 4, i32* %1, align 4
  br label %231

231:                                              ; preds = %302, %230
  %232 = load i32, i32* %1, align 4
  %233 = icmp slt i32 %232, 9
  br i1 %233, label %234, label %305

234:                                              ; preds = %231
  %235 = load i32, i32* %1, align 4
  %236 = sub nsw i32 19, %235
  store i32 %236, i32* %3, align 4
  %237 = load i32, i32* %3, align 4
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %237)
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %270, %234
  %240 = load i32, i32* %2, align 4
  %241 = icmp slt i32 %240, 19
  br i1 %241, label %242, label %273

242:                                              ; preds = %239
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %244
  %246 = load i32, i32* %2, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [19 x i8], [19 x i8]* %245, i64 0, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %242
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %269

254:                                              ; preds = %242
  %255 = load i32, i32* %1, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %256
  %258 = load i32, i32* %2, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [19 x i8], [19 x i8]* %257, i64 0, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %266

264:                                              ; preds = %254
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %268

266:                                              ; preds = %254
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %264
  br label %269

269:                                              ; preds = %268, %252
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %2, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %2, align 4
  br label %239

273:                                              ; preds = %239
  %274 = load i32, i32* %3, align 4
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* %1, align 4
  %277 = icmp eq i32 %276, 4
  br i1 %277, label %278, label %292

278:                                              ; preds = %273
  %279 = load i32, i32* @mymove, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10.107, i64 0, i64 0))
  br label %291

283:                                              ; preds = %278
  %284 = load i32, i32* @mymove, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11.108, i64 0, i64 0))
  br label %290

288:                                              ; preds = %283
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %286
  br label %291

291:                                              ; preds = %290, %281
  br label %301

292:                                              ; preds = %273
  %293 = load i32, i32* %1, align 4
  %294 = icmp ne i32 %293, 8
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0))
  br label %300

297:                                              ; preds = %292
  %298 = load i32, i32* @mk, align 4
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12.109, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %297, %295
  br label %301

301:                                              ; preds = %300, %291
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %1, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %1, align 4
  br label %231

305:                                              ; preds = %231
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.110, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %307

307:                                              ; preds = %332, %305
  %308 = load i32, i32* %2, align 4
  %309 = icmp slt i32 %308, 3
  br i1 %309, label %310, label %335

310:                                              ; preds = %307
  %311 = load i32, i32* %2, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %310
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %331

319:                                              ; preds = %310
  %320 = load i32, i32* %2, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %330

328:                                              ; preds = %319
  %329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %326
  br label %331

331:                                              ; preds = %330, %317
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %2, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %2, align 4
  br label %307

335:                                              ; preds = %307
  %336 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 1
  %337 = zext i8 %336 to i32
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %350

341:                                              ; preds = %335
  %342 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 1
  %343 = zext i8 %342 to i32
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %349

347:                                              ; preds = %341
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %349

349:                                              ; preds = %347, %345
  br label %350

350:                                              ; preds = %349, %339
  store i32 4, i32* %2, align 4
  br label %351

351:                                              ; preds = %376, %350
  %352 = load i32, i32* %2, align 4
  %353 = icmp slt i32 %352, 9
  br i1 %353, label %354, label %379

354:                                              ; preds = %351
  %355 = load i32, i32* %2, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %354
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %375

363:                                              ; preds = %354
  %364 = load i32, i32* %2, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %365
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i32
  %369 = icmp eq i32 %368, 1
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %374

372:                                              ; preds = %363
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372, %370
  br label %375

375:                                              ; preds = %374, %361
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %2, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %2, align 4
  br label %351

379:                                              ; preds = %351
  %380 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  %381 = zext i8 %380 to i32
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %379
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %394

385:                                              ; preds = %379
  %386 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  %387 = zext i8 %386 to i32
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %391

389:                                              ; preds = %385
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %393

391:                                              ; preds = %385
  %392 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %393

393:                                              ; preds = %391, %389
  br label %394

394:                                              ; preds = %393, %383
  store i32 10, i32* %2, align 4
  br label %395

395:                                              ; preds = %420, %394
  %396 = load i32, i32* %2, align 4
  %397 = icmp slt i32 %396, 15
  br i1 %397, label %398, label %423

398:                                              ; preds = %395
  %399 = load i32, i32* %2, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %398
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %419

407:                                              ; preds = %398
  %408 = load i32, i32* %2, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %416

414:                                              ; preds = %407
  %415 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %418

416:                                              ; preds = %407
  %417 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %418

418:                                              ; preds = %416, %414
  br label %419

419:                                              ; preds = %418, %405
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %2, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %2, align 4
  br label %395

423:                                              ; preds = %395
  %424 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 1
  %425 = zext i8 %424 to i32
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %423
  %428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %438

429:                                              ; preds = %423
  %430 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 1
  %431 = zext i8 %430 to i32
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %435

433:                                              ; preds = %429
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %437

435:                                              ; preds = %429
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %437

437:                                              ; preds = %435, %433
  br label %438

438:                                              ; preds = %437, %427
  store i32 16, i32* %2, align 4
  br label %439

439:                                              ; preds = %464, %438
  %440 = load i32, i32* %2, align 4
  %441 = icmp slt i32 %440, 19
  br i1 %441, label %442, label %467

442:                                              ; preds = %439
  %443 = load i32, i32* %2, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %442
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %463

451:                                              ; preds = %442
  %452 = load i32, i32* %2, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %453
  %455 = load i8, i8* %454, align 1
  %456 = zext i8 %455 to i32
  %457 = icmp eq i32 %456, 1
  br i1 %457, label %458, label %460

458:                                              ; preds = %451
  %459 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %462

460:                                              ; preds = %451
  %461 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %462

462:                                              ; preds = %460, %458
  br label %463

463:                                              ; preds = %462, %449
  br label %464

464:                                              ; preds = %463
  %465 = load i32, i32* %2, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %2, align 4
  br label %439

467:                                              ; preds = %439
  %468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.110, i64 0, i64 0))
  %469 = load i32, i32* @uk, align 4
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14.111, i64 0, i64 0), i32 %469)
  store i32 10, i32* %1, align 4
  br label %471

471:                                              ; preds = %517, %467
  %472 = load i32, i32* %1, align 4
  %473 = icmp slt i32 %472, 15
  br i1 %473, label %474, label %520

474:                                              ; preds = %471
  %475 = load i32, i32* %1, align 4
  %476 = sub nsw i32 19, %475
  store i32 %476, i32* %3, align 4
  %477 = load i32, i32* %3, align 4
  %478 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %477)
  store i32 0, i32* %2, align 4
  br label %479

479:                                              ; preds = %510, %474
  %480 = load i32, i32* %2, align 4
  %481 = icmp slt i32 %480, 19
  br i1 %481, label %482, label %513

482:                                              ; preds = %479
  %483 = load i32, i32* %1, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %484
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [19 x i8], [19 x i8]* %485, i64 0, i64 %487
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %482
  %493 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %509

494:                                              ; preds = %482
  %495 = load i32, i32* %1, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %496
  %498 = load i32, i32* %2, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [19 x i8], [19 x i8]* %497, i64 0, i64 %499
  %501 = load i8, i8* %500, align 1
  %502 = zext i8 %501 to i32
  %503 = icmp eq i32 %502, 1
  br i1 %503, label %504, label %506

504:                                              ; preds = %494
  %505 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %508

506:                                              ; preds = %494
  %507 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %508

508:                                              ; preds = %506, %504
  br label %509

509:                                              ; preds = %508, %492
  br label %510

510:                                              ; preds = %509
  %511 = load i32, i32* %2, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %2, align 4
  br label %479

513:                                              ; preds = %479
  %514 = load i32, i32* %3, align 4
  %515 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %514)
  %516 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0))
  br label %517

517:                                              ; preds = %513
  %518 = load i32, i32* %1, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %1, align 4
  br label %471

520:                                              ; preds = %471
  %521 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15.112, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %522

522:                                              ; preds = %547, %520
  %523 = load i32, i32* %2, align 4
  %524 = icmp slt i32 %523, 3
  br i1 %524, label %525, label %550

525:                                              ; preds = %522
  %526 = load i32, i32* %2, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = zext i8 %529 to i32
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %525
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %546

534:                                              ; preds = %525
  %535 = load i32, i32* %2, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %536
  %538 = load i8, i8* %537, align 1
  %539 = zext i8 %538 to i32
  %540 = icmp eq i32 %539, 1
  br i1 %540, label %541, label %543

541:                                              ; preds = %534
  %542 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %545

543:                                              ; preds = %534
  %544 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %545

545:                                              ; preds = %543, %541
  br label %546

546:                                              ; preds = %545, %532
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %2, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %2, align 4
  br label %522

550:                                              ; preds = %522
  %551 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 1
  %552 = zext i8 %551 to i32
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %550
  %555 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %565

556:                                              ; preds = %550
  %557 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 1
  %558 = zext i8 %557 to i32
  %559 = icmp eq i32 %558, 1
  br i1 %559, label %560, label %562

560:                                              ; preds = %556
  %561 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %564

562:                                              ; preds = %556
  %563 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %564

564:                                              ; preds = %562, %560
  br label %565

565:                                              ; preds = %564, %554
  store i32 4, i32* %2, align 4
  br label %566

566:                                              ; preds = %591, %565
  %567 = load i32, i32* %2, align 4
  %568 = icmp slt i32 %567, 9
  br i1 %568, label %569, label %594

569:                                              ; preds = %566
  %570 = load i32, i32* %2, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %571
  %573 = load i8, i8* %572, align 1
  %574 = zext i8 %573 to i32
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %569
  %577 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %590

578:                                              ; preds = %569
  %579 = load i32, i32* %2, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %580
  %582 = load i8, i8* %581, align 1
  %583 = zext i8 %582 to i32
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %587

585:                                              ; preds = %578
  %586 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %589

587:                                              ; preds = %578
  %588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %589

589:                                              ; preds = %587, %585
  br label %590

590:                                              ; preds = %589, %576
  br label %591

591:                                              ; preds = %590
  %592 = load i32, i32* %2, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %2, align 4
  br label %566

594:                                              ; preds = %566
  %595 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 1
  %596 = zext i8 %595 to i32
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %594
  %599 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %609

600:                                              ; preds = %594
  %601 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 1
  %602 = zext i8 %601 to i32
  %603 = icmp eq i32 %602, 1
  br i1 %603, label %604, label %606

604:                                              ; preds = %600
  %605 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %608

606:                                              ; preds = %600
  %607 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %608

608:                                              ; preds = %606, %604
  br label %609

609:                                              ; preds = %608, %598
  store i32 10, i32* %2, align 4
  br label %610

610:                                              ; preds = %635, %609
  %611 = load i32, i32* %2, align 4
  %612 = icmp slt i32 %611, 15
  br i1 %612, label %613, label %638

613:                                              ; preds = %610
  %614 = load i32, i32* %2, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %615
  %617 = load i8, i8* %616, align 1
  %618 = zext i8 %617 to i32
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %622

620:                                              ; preds = %613
  %621 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %634

622:                                              ; preds = %613
  %623 = load i32, i32* %2, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %624
  %626 = load i8, i8* %625, align 1
  %627 = zext i8 %626 to i32
  %628 = icmp eq i32 %627, 1
  br i1 %628, label %629, label %631

629:                                              ; preds = %622
  %630 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %633

631:                                              ; preds = %622
  %632 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %633

633:                                              ; preds = %631, %629
  br label %634

634:                                              ; preds = %633, %620
  br label %635

635:                                              ; preds = %634
  %636 = load i32, i32* %2, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %2, align 4
  br label %610

638:                                              ; preds = %610
  %639 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 1
  %640 = zext i8 %639 to i32
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %644

642:                                              ; preds = %638
  %643 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.104, i64 0, i64 0))
  br label %653

644:                                              ; preds = %638
  %645 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 1
  %646 = zext i8 %645 to i32
  %647 = icmp eq i32 %646, 1
  br i1 %647, label %648, label %650

648:                                              ; preds = %644
  %649 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %652

650:                                              ; preds = %644
  %651 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %652

652:                                              ; preds = %650, %648
  br label %653

653:                                              ; preds = %652, %642
  store i32 16, i32* %2, align 4
  br label %654

654:                                              ; preds = %679, %653
  %655 = load i32, i32* %2, align 4
  %656 = icmp slt i32 %655, 19
  br i1 %656, label %657, label %682

657:                                              ; preds = %654
  %658 = load i32, i32* %2, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %659
  %661 = load i8, i8* %660, align 1
  %662 = zext i8 %661 to i32
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %657
  %665 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %678

666:                                              ; preds = %657
  %667 = load i32, i32* %2, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %668
  %670 = load i8, i8* %669, align 1
  %671 = zext i8 %670 to i32
  %672 = icmp eq i32 %671, 1
  br i1 %672, label %673, label %675

673:                                              ; preds = %666
  %674 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %677

675:                                              ; preds = %666
  %676 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %677

677:                                              ; preds = %675, %673
  br label %678

678:                                              ; preds = %677, %664
  br label %679

679:                                              ; preds = %678
  %680 = load i32, i32* %2, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %2, align 4
  br label %654

682:                                              ; preds = %654
  %683 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15.112, i64 0, i64 0))
  %684 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0))
  store i32 16, i32* %1, align 4
  br label %685

685:                                              ; preds = %731, %682
  %686 = load i32, i32* %1, align 4
  %687 = icmp slt i32 %686, 19
  br i1 %687, label %688, label %734

688:                                              ; preds = %685
  %689 = load i32, i32* %1, align 4
  %690 = sub nsw i32 19, %689
  store i32 %690, i32* %3, align 4
  %691 = load i32, i32* %3, align 4
  %692 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %691)
  store i32 0, i32* %2, align 4
  br label %693

693:                                              ; preds = %724, %688
  %694 = load i32, i32* %2, align 4
  %695 = icmp slt i32 %694, 19
  br i1 %695, label %696, label %727

696:                                              ; preds = %693
  %697 = load i32, i32* %1, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %698
  %700 = load i32, i32* %2, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [19 x i8], [19 x i8]* %699, i64 0, i64 %701
  %703 = load i8, i8* %702, align 1
  %704 = zext i8 %703 to i32
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %708

706:                                              ; preds = %696
  %707 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.99, i64 0, i64 0))
  br label %723

708:                                              ; preds = %696
  %709 = load i32, i32* %1, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %710
  %712 = load i32, i32* %2, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [19 x i8], [19 x i8]* %711, i64 0, i64 %713
  %715 = load i8, i8* %714, align 1
  %716 = zext i8 %715 to i32
  %717 = icmp eq i32 %716, 1
  br i1 %717, label %718, label %720

718:                                              ; preds = %708
  %719 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.100, i64 0, i64 0))
  br label %722

720:                                              ; preds = %708
  %721 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.101, i64 0, i64 0))
  br label %722

722:                                              ; preds = %720, %718
  br label %723

723:                                              ; preds = %722, %706
  br label %724

724:                                              ; preds = %723
  %725 = load i32, i32* %2, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %2, align 4
  br label %693

727:                                              ; preds = %693
  %728 = load i32, i32* %3, align 4
  %729 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i32 %728)
  %730 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0))
  br label %731

731:                                              ; preds = %727
  %732 = load i32, i32* %1, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %1, align 4
  br label %685

734:                                              ; preds = %685
  %735 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16.113, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @showinst() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.116, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.117, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2.118, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.119, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4.120, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.121, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6.122, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.119, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7.123, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.121, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8.124, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.119, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9.125, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.121, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10.126, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.119, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11.127, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.121, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12.128, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.119, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.129, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.121, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2.118, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.119, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14.130, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.121, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15.131, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.119, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7.123, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.121, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16.132, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.133, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18.134, i64 0, i64 0))
  %34 = call i32 @getchar()
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25.135, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.27, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.29, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.30, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @suicide(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* @lib, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @umove, align 4
  call void @countlib(i32 %9, i32 %10, i32 %11)
  %12 = load i32, i32* @lib, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %2
  %15 = load i32, i32* @umove, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 %21
  store i8 %16, i8* %22, align 1
  %23 = load i32, i32* @mymove, align 4
  call void @eval(i32 %23)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %59, %14
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 19
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 19
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %33
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [19 x i8], [19 x i8]* %34, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* @mymove, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [19 x i8], [19 x i8]* %45, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %42, %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %28

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %24

62:                                               ; preds = %24
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @uik, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @ujk, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72, %62
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %78
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [19 x i8], [19 x i8]* %79, i64 0, i64 %81
  store i8 0, i8* %82, align 1
  store i32 1, i32* %3, align 4
  br label %85

83:                                               ; preds = %72, %68, %65
  store i32 0, i32* %3, align 4
  br label %85

84:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %76
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
