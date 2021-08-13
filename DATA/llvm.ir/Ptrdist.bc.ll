; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.YYSTYPE = type { i8*, i8, i32, %struct.arg_list* }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bc_function = type { i8, [16 x i8*], i32, %struct.bc_label_group*, %struct.arg_list*, %struct.arg_list* }
%struct.bc_label_group = type { [64 x i64], %struct.bc_label_group* }
%struct.bc_var = type { %struct.bc_struct*, %struct.bc_var* }
%struct.bc_struct = type { i32, i32, i32, i32, [1024 x i8] }
%struct.bc_var_array = type { %struct.bc_array*, i8, %struct.bc_var_array* }
%struct.bc_array = type { %struct.bc_array_node*, i16 }
%struct.bc_array_node = type { [16 x %struct.bc_struct*], [16 x %struct.bc_array_node*] }
%struct.estack_rec = type { %struct.bc_struct*, %struct.estack_rec* }
%struct.fstack_rec = type { i32, %struct.fstack_rec* }
%struct.program_counter = type { i32, i32 }
%struct.id_rec = type { i8*, i32, i32, i32, i16, %struct.id_rec*, %struct.id_rec* }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32 }
%struct.stk_rec = type { i64, %struct.stk_rec* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@yyexca = dso_local global [10 x i16] [i16 -1, i16 1, i16 0, i16 -1, i16 257, i16 6, i16 59, i16 6, i16 -2, i16 0], align 16
@yyact = dso_local global [706 x i16] [i16 27, i16 65, i16 149, i16 145, i16 48, i16 25, i16 57, i16 45, i16 58, i16 46, i16 105, i16 135, i16 41, i16 125, i16 86, i16 86, i16 38, i16 66, i16 34, i16 35, i16 141, i16 109, i16 53, i16 54, i16 36, i16 6, i16 134, i16 11, i16 159, i16 88, i16 104, i16 48, i16 150, i16 27, i16 136, i16 62, i16 62, i16 62, i16 25, i16 142, i16 126, i16 63, i16 151, i16 127, i16 125, i16 118, i16 115, i16 162, i16 139, i16 124, i16 8, i16 117, i16 59, i16 60, i16 108, i16 61, i16 40, i16 102, i16 48, i16 84, i16 82, i16 72, i16 71, i16 70, i16 69, i16 68, i16 27, i16 67, i16 51, i16 49, i16 23, i16 25, i16 75, i16 76, i16 77, i16 78, i16 79, i16 81, i16 74, i16 83, i16 87, i16 73, i16 92, i16 21, i16 91, i16 163, i16 140, i16 119, i16 63, i16 153, i16 96, i16 98, i16 152, i16 89, i16 56, i16 99, i16 100, i16 101, i16 27, i16 129, i16 64, i16 106, i16 107, i16 25, i16 52, i16 144, i16 40, i16 128, i16 164, i16 113, i16 110, i16 155, i16 112, i16 137, i16 50, i16 4, i16 21, i16 3, i16 2, i16 95, i16 116, i16 94, i16 148, i16 103, i16 80, i16 1, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 130, i16 131, i16 98, i16 0, i16 21, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 27, i16 0, i16 0, i16 143, i16 0, i16 25, i16 0, i16 0, i16 0, i16 110, i16 27, i16 0, i16 98, i16 0, i16 0, i16 25, i16 0, i16 0, i16 47, i16 0, i16 157, i16 160, i16 0, i16 138, i16 154, i16 21, i16 0, i16 110, i16 0, i16 113, i16 0, i16 0, i16 0, i16 0, i16 146, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 27, i16 156, i16 0, i16 0, i16 0, i16 25, i16 0, i16 147, i16 21, i16 0, i16 85, i16 161, i16 37, i16 165, i16 55, i16 0, i16 0, i16 133, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 158, i16 29, i16 47, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 5, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 7, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 55, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 39, i16 0, i16 0, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 0, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 45, i16 33, i16 46, i16 0, i16 36, i16 24, i16 90, i16 28, i16 26, i16 123, i16 0, i16 45, i16 29, i16 46, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 122, i16 36, i16 45, i16 121, i16 46, i16 45, i16 45, i16 46, i16 46, i16 0, i16 0, i16 120, i16 48, i16 0, i16 111, i16 0, i16 45, i16 0, i16 46, i16 0, i16 45, i16 0, i16 46, i16 48, i16 0, i16 0, i16 24, i16 0, i16 132, i16 26, i16 93, i16 0, i16 45, i16 29, i16 46, i16 0, i16 45, i16 30, i16 46, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 0, i16 36, i16 0, i16 48, i16 0, i16 0, i16 48, i16 48, i16 0, i16 24, i16 0, i16 97, i16 26, i16 0, i16 0, i16 0, i16 29, i16 48, i16 0, i16 0, i16 30, i16 48, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 48, i16 36, i16 0, i16 0, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 42, i16 43, i16 0, i16 47, i16 0, i16 44, i16 47, i16 47, i16 44, i16 44, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 43, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 0, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44], align 16
@yypact = dso_local global [166 x i16] [i16 -1000, i16 -7, i16 -1000, i16 -43, i16 -1000, i16 58, i16 -1000, i16 -250, i16 -1000, i16 -1000, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 29, i16 -1000, i16 28, i16 -1000, i16 26, i16 -1000, i16 -259, i16 162, i16 162, i16 -1000, i16 162, i16 -3, i16 -261, i16 27, i16 25, i16 24, i16 23, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 26, i16 -1000, i16 -1000, i16 21, i16 -1000, i16 -1000, i16 162, i16 162, i16 162, i16 162, i16 162, i16 162, i16 20, i16 162, i16 19, i16 -45, i16 -1000, i16 87, i16 152, i16 -1000, i16 -1000, i16 409, i16 -1000, i16 435, i16 245, i16 162, i16 -1000, i16 -50, i16 -1000, i16 162, i16 162, i16 162, i16 16, i16 -1000, i16 -252, i16 162, i16 162, i16 -36, i16 -90, i16 -90, i16 -63, i16 -63, i16 13, i16 423, i16 162, i16 419, i16 162, i16 26, i16 87, i16 -1000, i16 -1000, i16 2, i16 -1000, i16 423, i16 162, i16 -1000, i16 10, i16 1, i16 423, i16 -4, i16 364, i16 408, i16 405, i16 375, i16 -1000, i16 8, i16 0, i16 -51, i16 409, i16 439, i16 -1000, i16 -16, i16 423, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 152, i16 -36, i16 -1000, i16 212, i16 126, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -97, i16 -251, i16 -59, i16 -1000, i16 87, i16 7, i16 -1000, i16 423, i16 -5, i16 -1000, i16 -237, i16 -52, i16 -1000, i16 162, i16 -274, i16 87, i16 116, i16 -279, i16 -61, i16 -17, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -252, i16 -1000, i16 -1000, i16 87, i16 26, i16 -31, i16 162, i16 -1000, i16 -44, i16 -1000, i16 -1000, i16 6, i16 -40, i16 -1000, i16 -1000, i16 87, i16 -1000], align 16
@yypgo = dso_local global [33 x i16] [i16 0, i16 125, i16 27, i16 124, i16 70, i16 21, i16 123, i16 122, i16 30, i16 121, i16 119, i16 118, i16 117, i16 22, i16 50, i16 115, i16 23, i16 114, i16 113, i16 111, i16 108, i16 107, i16 105, i16 104, i16 99, i16 94, i16 29, i16 93, i16 92, i16 89, i16 82, i16 81, i16 78], align 16
@yyr1 = dso_local global [98 x i16] [i16 0, i16 1, i16 1, i16 11, i16 11, i16 11, i16 12, i16 12, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 16, i16 16, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 17, i16 18, i16 19, i16 20, i16 14, i16 21, i16 14, i16 23, i16 24, i16 14, i16 14, i16 25, i16 14, i16 26, i16 26, i16 27, i16 27, i16 22, i16 28, i16 22, i16 29, i16 15, i16 6, i16 6, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 10, i16 10, i16 5, i16 5, i16 3, i16 3, i16 30, i16 2, i16 31, i16 2, i16 32, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 16
@yyr2 = dso_local global [98 x i16] [i16 0, i16 0, i16 2, i16 2, i16 1, i16 2, i16 0, i16 1, i16 3, i16 2, i16 0, i16 1, i16 2, i16 3, i16 2, i16 3, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 0, i16 0, i16 0, i16 0, i16 13, i16 0, i16 7, i16 0, i16 0, i16 7, i16 3, i16 0, i16 3, i16 1, i16 3, i16 1, i16 1, i16 0, i16 0, i16 3, i16 0, i16 12, i16 0, i16 1, i16 0, i16 3, i16 3, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 0, i16 1, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 2, i16 1, i16 1, i16 3, i16 4, i16 2, i16 2, i16 4, i16 4, i16 4, i16 3, i16 1, i16 4, i16 1, i16 1, i16 1, i16 1], align 16
@yychk = dso_local global [166 x i16] [i16 -1000, i16 -1, i16 -11, i16 -12, i16 -15, i16 256, i16 -16, i16 268, i16 -14, i16 283, i16 288, i16 -2, i16 261, i16 269, i16 286, i16 270, i16 284, i16 272, i16 273, i16 274, i16 275, i16 123, i16 287, i16 -4, i16 260, i16 45, i16 263, i16 40, i16 262, i16 267, i16 271, i16 276, i16 278, i16 282, i16 279, i16 280, i16 285, i16 257, i16 59, i16 257, i16 -14, i16 262, i16 258, i16 259, i16 266, i16 43, i16 45, i16 264, i16 94, i16 40, i16 -17, i16 40, i16 -23, i16 -13, i16 -16, i16 256, i16 -25, i16 265, i16 267, i16 -2, i16 -2, i16 -2, i16 40, i16 91, i16 -4, i16 262, i16 278, i16 40, i16 40, i16 40, i16 40, i16 -16, i16 40, i16 -31, i16 -32, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -3, i16 -2, i16 40, i16 -2, i16 40, i16 257, i16 59, i16 125, i16 -26, i16 -27, i16 261, i16 -2, i16 -30, i16 41, i16 -9, i16 -10, i16 -2, i16 262, i16 -2, i16 -2, i16 -2, i16 -2, i16 41, i16 -6, i16 -8, i16 262, i16 -2, i16 -2, i16 41, i16 -5, i16 -2, i16 41, i16 -2, i16 -16, i16 -14, i16 44, i16 -2, i16 41, i16 44, i16 91, i16 93, i16 41, i16 41, i16 41, i16 41, i16 44, i16 91, i16 59, i16 -21, i16 -24, i16 -26, i16 -2, i16 262, i16 93, i16 123, i16 262, i16 93, i16 -18, i16 -14, i16 41, i16 91, i16 257, i16 91, i16 -5, i16 -22, i16 277, i16 -14, i16 93, i16 -7, i16 281, i16 93, i16 59, i16 -28, i16 -29, i16 -8, i16 -19, i16 -14, i16 -13, i16 257, i16 59, i16 -5, i16 257, i16 41, i16 125, i16 -20, i16 -14], align 16
@yydef = dso_local global [166 x i16] [i16 1, i16 -2, i16 2, i16 0, i16 4, i16 0, i16 7, i16 0, i16 16, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 28, i16 0, i16 35, i16 10, i16 39, i16 82, i16 0, i16 0, i16 83, i16 0, i16 92, i16 0, i16 0, i16 0, i16 96, i16 0, i16 94, i16 95, i16 97, i16 3, i16 9, i16 5, i16 17, i16 0, i16 71, i16 73, i16 0, i16 0, i16 0, i16 0, i16 0, i16 67, i16 0, i16 0, i16 0, i16 0, i16 11, i16 0, i16 0, i16 69, i16 87, i16 75, i16 81, i16 0, i16 59, i16 0, i16 86, i16 92, i16 96, i16 0, i16 0, i16 0, i16 0, i16 8, i16 50, i16 0, i16 0, i16 76, i16 77, i16 78, i16 79, i16 80, i16 0, i16 68, i16 65, i16 0, i16 0, i16 12, i16 14, i16 38, i16 40, i16 41, i16 43, i16 44, i16 0, i16 84, i16 0, i16 60, i16 61, i16 92, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 51, i16 55, i16 72, i16 74, i16 27, i16 0, i16 66, i16 33, i16 36, i16 13, i16 15, i16 0, i16 70, i16 85, i16 0, i16 0, i16 93, i16 88, i16 89, i16 90, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 42, i16 63, i16 92, i16 62, i16 0, i16 57, i16 56, i16 65, i16 45, i16 0, i16 0, i16 52, i16 0, i16 0, i16 34, i16 46, i16 37, i16 64, i16 48, i16 0, i16 58, i16 30, i16 0, i16 10, i16 0, i16 65, i16 47, i16 0, i16 53, i16 54, i16 0, i16 12, i16 31, i16 49, i16 0, i16 32], align 16
@yychar = dso_local global i32 -1, align 4
@yynerrs = dso_local global i32 0, align 4
@yyerrflag = dso_local global i16 0, align 2
@yyv = common dso_local global [150 x %struct.YYSTYPE] zeroinitializer, align 16
@yyval = common dso_local global %struct.YYSTYPE zeroinitializer, align 8
@yylval = common dso_local global %struct.YYSTYPE zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"comparison in expression\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Break outside a for/while\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"J%1d:\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Continue statement\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Continue outside a for\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"0R\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Comparison in first for expression\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"N%1d:\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pN%1d:\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"B%1d:J%1d:\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Comparison in third for expression\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"J%1d:N%1d:\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"pJ%1d:N%1d:\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Z%1d:\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"print statement\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"else clause in if statement\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"J%d:N%1d:\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"F%d,%s.%s[\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"0R]\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"comparison in argument\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"K%d:\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Missing expression in for statement\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"comparison in return expresion\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"DL%d:\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"l%d:\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"comparison in assignment\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"S%d:\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"s%d:\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"&& operator\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"DZ%d:p\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"DZ%d:p1N%d:\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"|| operator\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"B%d:\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"B%d:0J%d:N%d:1N%d:\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"! operator\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"L%d:\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"C%d,%s:\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"C%d:\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"DA%d:L%d:\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"DM%d:L%d:\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"i%d:l%d:\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"d%d:l%d:\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"DL%d:x\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"A%d:\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"M%d:\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"i%d:\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"d%d:\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"cL\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"cR\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"cS\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"read function\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"cI\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"comparison in subscript\00", align 1
@had_sigint = common dso_local global i32 0, align 4
@.str.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [22 x i8] c"interrupted execution\00", align 1
@.str.2.83 = private unnamed_addr constant [25 x i8] c"Function %s not defined.\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3.84 = private unnamed_addr constant [26 x i8] c"Return from main program.\00", align 1
@.str.4.85 = private unnamed_addr constant [33 x i8] c"Square root of a negative number\00", align 1
@.str.5.86 = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1
@.str.6.87 = private unnamed_addr constant [15 x i8] c"Modulo by zero\00", align 1
@.str.7.88 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.8.89 = private unnamed_addr constant [25 x i8] c"bad instruction: inst=%c\00", align 1
@.str.9.90 = private unnamed_addr constant [25 x i8] c"Interruption completed.\0A\00", align 1
@libmath = dso_local constant [2140 x i8] c"@iK20:s2:p@r@iF1,4.5,6,7,8,9,10,11,12[l4:0<Z0:1s10:pl4:ns4:pN0:l2:s12:pK4:l12:+K.44:l4:*+s2:pN1:l4:1>Z2:l8:1+s8:pl4:K2:/s4:pJ1:N2:1l4:+s11:pl4:s5:p1s6:pK2:s9:pN4:1B5:J3:N6:l9:i9:pJ4:N5:l5:l4:*s5:l6:l9:*s6:/s7:pl7:0=Z7:l8:0>Z8:N9:l8:d8:Z10:l11:l11:*s11:pJ9:N10:N8:l12:s2:pl10:Z11:1l11:/RN11:l11:1/RN7:l11:l7:+s11:pJ6:N3:0R]@r@iF2,4.7,8,9,10,13,11,12[l4:0{Z0:1K10:l2:^-RN0:l2:s12:pl2:K4:+s2:pK2:s8:p0s9:pN1:l4:K2:}Z2:l8:K2:*s8:pl4:cRs4:pJ1:N2:N3:l4:K.5:{Z4:l8:K2:*s8:pl4:cRs4:pJ3:N4:l4:1-l4:1+/s13:s11:pl13:l13:*s10:pK3:s9:pN6:1B7:J5:N8:l9:K2:+s9:pJ6:N7:l13:l10:*s13:l9:/s7:pl7:0=Z9:l8:l11:*s11:pl12:s2:pl11:1/RN9:l11:l7:+s11:pJ8:N5:0R]@r@iF3,4.7,9,10,13,14,11,12[l2:s12:pK1.1:l12:*1+s2:p1C4,0:s11:pl4:0<Z0:1s10:pl4:ns4:pN0:0s2:pl4:l11:/K2:+K4:/s13:pl4:K4:l13:*l11:*-s4:pl13:K2:%Z1:l4:ns4:pN1:l12:K2:+s2:pl4:s7:s11:pl4:nl4:*s14:pK3:s9:pN3:1B4:J2:N5:l9:K2:+s9:pJ3:N4:l7:l14:l9:l9:1-*/*s7:pl7:0=Z6:l12:s2:pl10:Z7:l11:n1/RN7:l11:1/RN6:l11:l7:+s11:pJ5:N2:0R]@r@iF5,4.11[l2:1+s2:pl4:1C4,0:K2:*+C3,0:s11:pl2:1-s2:pl11:1/R0R]@r@iF4,4.5,7,8,9,10,13,14,11,12[l4:1=Z0:l2:K25:{Z1:K.7853981633974483096156608:1/RN1:l2:K40:{Z2:K.7853981633974483096156608458198757210492:1/RN2:l2:K60:{Z3:K.785398163397448309615660845819875721049292349843776455243736:1/RN3:N0:l4:K.2:=Z4:l2:K25:{Z5:K.1973955598498807583700497:1/RN5:l2:K40:{Z6:K.1973955598498807583700497651947902934475:1/RN6:l2:K60:{Z7:K.197395559849880758370049765194790293447585103787852101517688:1/RN7:N4:l4:0<Z8:1s10:pl4:ns4:pN8:l2:s12:pl4:K.2:>Z9:l12:K4:+s2:pK.2:C4,0:s5:pN9:l12:K2:+s2:pN10:l4:K.2:>Z11:l8:1+s8:pl4:K.2:-1l4:K.2:*+/s4:pJ10:N11:l4:s13:s11:pl4:nl4:*s14:pK3:s9:pN13:1B14:J12:N15:l9:K2:+s9:pJ13:N14:l13:l14:*s13:l9:/s7:pl7:0=Z16:l12:s2:pl10:Z17:l8:l5:*l11:+1n/RN17:l8:l5:*l11:+1/RN16:l11:l7:+s11:pJ15:N12:0R]@r@iF6,13,4.5,6,7,8,9,10,14,11,12[l2:s12:p0s2:pl13:1/s13:pl13:0<Z0:l13:ns13:pl13:K2:%1=Z1:1s10:pN1:N0:1s8:pK2:s9:pN3:l9:l13:{B4:J2:N5:l9:i9:pJ3:N4:l8:l9:*s8:pJ5:N2:K1.5:l12:*s2:pl4:l13:^K2:l13:^/l8:/s8:p1s7:s11:pl4:nl4:*K4:/s14:pK1.5:l12:*s2:p1s9:pN7:1B8:J6:N9:l9:i9:pJ7:N8:l7:l14:*l9:/l13:l9:+/s7:pl7:0=Z10:l12:s2:pl10:Z11:l8:nl11:*1/RN11:l8:l11:*1/RN10:l11:l7:+s11:pJ9:N6:0R]@r\00", align 16
@break_label = common dso_local global i32 0, align 4
@if_label = common dso_local global i32 0, align 4
@continue_label = common dso_local global i32 0, align 4
@next_label = common dso_local global i32 0, align 4
@genstr = common dso_local global [80 x i8] zeroinitializer, align 16
@out_count = common dso_local global i32 0, align 4
@did_gen = common dso_local global i8 0, align 1
@interactive = common dso_local global i8 0, align 1
@compile_only = common dso_local global i8 0, align 1
@use_math = common dso_local global i8 0, align 1
@warn_not_std = common dso_local global i8 0, align 1
@std_only = common dso_local global i8 0, align 1
@functions = common dso_local global %struct.bc_function* null, align 8
@f_names = common dso_local global i8** null, align 8
@f_count = common dso_local global i32 0, align 4
@variables = common dso_local global %struct.bc_var** null, align 8
@v_names = common dso_local global i8** null, align 8
@v_count = common dso_local global i32 0, align 4
@arrays = common dso_local global %struct.bc_var_array** null, align 8
@a_names = common dso_local global i8** null, align 8
@a_count = common dso_local global i32 0, align 4
@ex_stack = common dso_local global %struct.estack_rec* null, align 8
@fn_stack = common dso_local global %struct.fstack_rec* null, align 8
@i_base = common dso_local global i32 0, align 4
@o_base = common dso_local global i32 0, align 4
@scale = common dso_local global i32 0, align 4
@c_code = common dso_local global i8 0, align 1
@out_col = common dso_local global i32 0, align 4
@runtime_error = common dso_local global i8 0, align 1
@pc = common dso_local global %struct.program_counter zeroinitializer, align 4
@line_no = common dso_local global i32 0, align 4
@had_error = common dso_local global i32 0, align 4
@next_array = common dso_local global i32 0, align 4
@next_func = common dso_local global i32 0, align 4
@next_var = common dso_local global i32 0, align 4
@name_tree = common dso_local global %struct.id_rec* null, align 8
@g_argv = common dso_local global i8** null, align 8
@g_argc = common dso_local global i32 0, align 4
@is_std_in = common dso_local global i8 0, align 1
@load_adr = common dso_local global %struct.program_counter zeroinitializer, align 4
@load_str = common dso_local global i8 0, align 1
@load_const = common dso_local global i8 0, align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"Function too big.\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1.124 = private unnamed_addr constant [18 x i8] c"Program too big.\0A\00", align 1
@first_file = common dso_local global i8 0, align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"lcisvw\00", align 1
@.str.1.126 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.127 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@.str.3.130 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.131 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5.132 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.6.133 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7.134 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8.135 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.9.136 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@optind = external dso_local global i32, align 4
@.str.10.137 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.138 = private unnamed_addr constant [25 x i8] c"File %s is unavailable.\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.12.139 = private unnamed_addr constant [32 x i8] c"\0A(interrupt) use quit to exit.\0A\00", align 1
@_zero_ = common dso_local global %struct.bc_struct* null, align 8
@_one_ = common dso_local global %struct.bc_struct* null, align 8
@_two_ = common dso_local global %struct.bc_struct* null, align 8
@ref_str = dso_local global [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.172 = private unnamed_addr constant [27 x i8] c"non-zero scale in exponent\00", align 1
@.str.1.173 = private unnamed_addr constant [28 x i8] c"exponent too large in raise\00", align 1
@.str.2.176 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@yyin = dso_local global %struct._IO_FILE* null, align 8
@yyout = dso_local global %struct._IO_FILE* null, align 8
@yytext = common dso_local global i8* null, align 8
@yyleng = common dso_local global i32 0, align 4
@yy_init = internal global i32 1, align 4
@yy_start = internal global i32 0, align 4
@yy_current_buffer = internal global %struct.yy_buffer_state* null, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\04\05\01\01\06\07\01\08\09\0A\0B\0C\0D\0E\0F\10\10\10\10\10\10\10\10\10\10\01\11\12\13\14\01\01\15\15\15\15\15\15\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\16\17\18\19\1A\01\1B\1C\1D\1E\1F !\22#$%&'()*+,-./$0$1$234\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal constant [144 x i16] [i16 0, i16 0, i16 0, i16 40, i16 38, i16 33, i16 31, i16 25, i16 38, i16 26, i16 38, i16 22, i16 26, i16 22, i16 22, i16 38, i16 26, i16 37, i16 29, i16 27, i16 29, i16 38, i16 22, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 38, i16 33, i16 29, i16 0, i16 36, i16 27, i16 23, i16 30, i16 37, i16 0, i16 34, i16 37, i16 37, i16 0, i16 28, i16 32, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 7, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 24, i16 37, i16 0, i16 0, i16 37, i16 0, i16 35, i16 35, i16 35, i16 35, i16 35, i16 6, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 13, i16 35, i16 35, i16 35, i16 14, i16 16, i16 35, i16 17, i16 35, i16 35, i16 35, i16 35, i16 3, i16 15, i16 35, i16 35, i16 9, i16 35, i16 35, i16 2, i16 35, i16 35, i16 11, i16 35, i16 35, i16 12, i16 20, i16 35, i16 10, i16 35, i16 8, i16 35, i16 1, i16 4, i16 21, i16 5, i16 35, i16 35, i16 35, i16 19, i16 18, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_base = internal constant [146 x i16] [i16 0, i16 0, i16 0, i16 193, i16 194, i16 190, i16 194, i16 172, i16 185, i16 170, i16 181, i16 194, i16 168, i16 42, i16 41, i16 41, i16 46, i16 52, i16 167, i16 61, i16 166, i16 181, i16 164, i16 135, i16 137, i16 139, i16 148, i16 140, i16 136, i16 0, i16 149, i16 27, i16 50, i16 147, i16 130, i16 126, i16 141, i16 40, i16 36, i16 120, i16 168, i16 194, i16 164, i16 194, i16 194, i16 194, i16 194, i16 66, i16 165, i16 194, i16 72, i16 76, i16 164, i16 194, i16 194, i16 0, i16 120, i16 134, i16 124, i16 131, i16 117, i16 117, i16 122, i16 132, i16 0, i16 113, i16 117, i16 117, i16 128, i16 119, i16 118, i16 52, i16 125, i16 107, i16 106, i16 114, i16 194, i16 80, i16 145, i16 84, i16 88, i16 144, i16 105, i16 118, i16 98, i16 108, i16 111, i16 0, i16 95, i16 95, i16 93, i16 105, i16 102, i16 91, i16 95, i16 88, i16 103, i16 85, i16 93, i16 84, i16 85, i16 90, i16 0, i16 90, i16 91, i16 85, i16 0, i16 0, i16 93, i16 0, i16 77, i16 76, i16 90, i16 74, i16 0, i16 0, i16 75, i16 87, i16 0, i16 90, i16 85, i16 0, i16 75, i16 83, i16 0, i16 76, i16 63, i16 0, i16 0, i16 66, i16 0, i16 62, i16 0, i16 47, i16 0, i16 0, i16 0, i16 0, i16 45, i16 53, i16 29, i16 0, i16 0, i16 194, i16 111, i16 56], align 16
@yy_chk = internal constant [247 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 13, i16 14, i16 31, i16 16, i16 15, i16 145, i16 31, i16 14, i16 13, i16 15, i16 38, i16 15, i16 16, i16 17, i16 19, i16 17, i16 37, i16 38, i16 19, i16 19, i16 17, i16 19, i16 17, i16 19, i16 32, i16 140, i16 71, i16 19, i16 32, i16 47, i16 37, i16 139, i16 32, i16 19, i16 47, i16 50, i16 47, i16 51, i16 138, i16 51, i16 50, i16 133, i16 50, i16 77, i16 51, i16 71, i16 51, i16 79, i16 77, i16 131, i16 77, i16 80, i16 79, i16 129, i16 79, i16 126, i16 80, i16 125, i16 80, i16 144, i16 144, i16 123, i16 122, i16 120, i16 119, i16 117, i16 116, i16 113, i16 112, i16 111, i16 110, i16 108, i16 105, i16 104, i16 103, i16 101, i16 100, i16 99, i16 98, i16 97, i16 96, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 86, i16 85, i16 84, i16 83, i16 82, i16 81, i16 78, i16 75, i16 74, i16 73, i16 72, i16 70, i16 69, i16 68, i16 67, i16 66, i16 65, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 52, i16 48, i16 42, i16 40, i16 39, i16 36, i16 35, i16 34, i16 33, i16 30, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 18, i16 12, i16 10, i16 9, i16 8, i16 7, i16 5, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@yy_def = internal constant [146 x i16] [i16 0, i16 143, i16 1, i16 143, i16 143, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 0, i16 143, i16 143], align 16
@yy_meta = internal constant [53 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01", align 16
@yy_nxt = internal constant [247 x i16] [i16 0, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 11, i16 12, i16 13, i16 11, i16 14, i16 15, i16 16, i16 17, i16 11, i16 18, i16 19, i16 20, i16 17, i16 11, i16 21, i16 11, i16 22, i16 4, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 29, i16 29, i16 32, i16 29, i16 29, i16 33, i16 34, i16 35, i16 36, i16 37, i16 29, i16 29, i16 38, i16 29, i16 11, i16 39, i16 11, i16 46, i16 46, i16 63, i16 49, i16 47, i16 55, i16 64, i16 44, i16 44, i16 47, i16 74, i16 48, i16 44, i16 50, i16 53, i16 51, i16 72, i16 75, i16 53, i16 53, i16 51, i16 53, i16 52, i16 53, i16 65, i16 142, i16 96, i16 41, i16 66, i16 77, i16 73, i16 141, i16 67, i16 53, i16 77, i16 80, i16 78, i16 50, i16 140, i16 51, i16 80, i16 139, i16 81, i16 77, i16 51, i16 97, i16 52, i16 47, i16 77, i16 138, i16 78, i16 80, i16 47, i16 137, i16 48, i16 136, i16 80, i16 135, i16 81, i16 42, i16 42, i16 134, i16 133, i16 132, i16 131, i16 130, i16 129, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 121, i16 120, i16 119, i16 118, i16 117, i16 116, i16 115, i16 114, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 105, i16 104, i16 103, i16 102, i16 80, i16 77, i16 101, i16 100, i16 99, i16 98, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 51, i16 79, i16 43, i16 40, i16 76, i16 71, i16 70, i16 69, i16 68, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 44, i16 54, i16 41, i16 41, i16 44, i16 45, i16 44, i16 43, i16 41, i16 40, i16 143, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@.str.183 = private unnamed_addr constant [31 x i8] c"EOF encountered in a comment.\0A\00", align 1
@.str.1.184 = private unnamed_addr constant [25 x i8] c"NUL character in string.\00", align 1
@.str.2.185 = private unnamed_addr constant [23 x i8] c"illegal character: ^%c\00", align 1
@.str.3.186 = private unnamed_addr constant [24 x i8] c"illegal character: \\%3d\00", align 1
@.str.4.187 = private unnamed_addr constant [22 x i8] c"illegal character: %s\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.5.188 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.7.189 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.8.190 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.9.191 = private unnamed_addr constant [30 x i8] c"read() in flex scanner failed\00", align 1
@.str.10.192 = private unnamed_addr constant [33 x i8] c"unexpected last match in input()\00", align 1
@.str.6.193 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"(main)\00", align 1
@.str.1.211 = private unnamed_addr constant [13 x i8] c"Stack error.\00", align 1
@.str.2.214 = private unnamed_addr constant [25 x i8] c"negative ibase, set to 2\00", align 1
@.str.3.215 = private unnamed_addr constant [25 x i8] c"negative obase, set to 2\00", align 1
@.str.4.216 = private unnamed_addr constant [25 x i8] c"negative scale, set to 0\00", align 1
@.str.5.217 = private unnamed_addr constant [26 x i8] c"ibase too small, set to 2\00", align 1
@.str.6.218 = private unnamed_addr constant [27 x i8] c"ibase too large, set to 16\00", align 1
@.str.7.219 = private unnamed_addr constant [26 x i8] c"obase too small, set to 2\00", align 1
@.str.8.220 = private unnamed_addr constant [27 x i8] c"obase too large, set to %d\00", align 1
@.str.9.221 = private unnamed_addr constant [27 x i8] c"scale too large, set to %d\00", align 1
@.str.10.224 = private unnamed_addr constant [34 x i8] c"Array %s subscript out of bounds.\00", align 1
@.str.11.231 = private unnamed_addr constant [22 x i8] c"ibase too small in --\00", align 1
@.str.12.232 = private unnamed_addr constant [22 x i8] c"obase too small in --\00", align 1
@.str.13.233 = private unnamed_addr constant [33 x i8] c"scale can not be negative in -- \00", align 1
@.str.14.238 = private unnamed_addr constant [20 x i8] c"ibase too big in ++\00", align 1
@.str.15.239 = private unnamed_addr constant [20 x i8] c"obase too big in ++\00", align 1
@.str.16.240 = private unnamed_addr constant [20 x i8] c"Scale too big in ++\00", align 1
@.str.17.249 = private unnamed_addr constant [38 x i8] c"Parameter type mismatch parameter %s.\00", align 1
@.str.18.250 = private unnamed_addr constant [39 x i8] c"Parameter type mismatch, parameter %s.\00", align 1
@.str.19.251 = private unnamed_addr constant [26 x i8] c"Parameter number mismatch\00", align 1
@arglist2 = internal global i8* null, align 8
@arglist1 = internal global i8* null, align 8
@.str.41.258 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.42.259 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.264 = private unnamed_addr constant [26 x i8] c"duplicate parameter names\00", align 1
@.str.1.267 = private unnamed_addr constant [16 x i8] c"Array parameter\00", align 1
@.str.2.270 = private unnamed_addr constant [30 x i8] c"duplicate auto variable names\00", align 1
@.str.3.271 = private unnamed_addr constant [42 x i8] c"variable in both parameter and auto lists\00", align 1
@.str.36.272 = private unnamed_addr constant [14 x i8] c"(standard_in)\00", align 1
@.str.37.273 = private unnamed_addr constant [8 x i8] c"%s %d: \00", align 1
@.str.6.274 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38.275 = private unnamed_addr constant [18 x i8] c"%s %d: (Warning) \00", align 1
@.str.4.278 = private unnamed_addr constant [3 x i8] c"@i\00", align 1
@.str.5.281 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7.284 = private unnamed_addr constant [4 x i8] c"@r\0A\00", align 1
@.str.8.291 = private unnamed_addr constant [26 x i8] c"multiple letter name - %s\00", align 1
@.str.9.292 = private unnamed_addr constant [25 x i8] c"Too many array variables\00", align 1
@.str.10.293 = private unnamed_addr constant [19 x i8] c"Too many functions\00", align 1
@.str.11.294 = private unnamed_addr constant [19 x i8] c"Too many variables\00", align 1
@.str.12.297 = private unnamed_addr constant [52 x i8] c"This is free software with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.13.298 = private unnamed_addr constant [21 x i8] c"For details type . \0A\00", align 1
@.str.14.301 = private unnamed_addr constant [8 x i8] c"\0A%s%s\0A\0A\00", align 1
@.str.15.302 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@.str.16.303 = private unnamed_addr constant [23 x i8] c"%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.17.304 = private unnamed_addr constant [74 x i8] c"    This program is free software; you can redistribute it and/or modify\0A\00", align 1
@.str.18.305 = private unnamed_addr constant [74 x i8] c"    it under the terms of the GNU General Public License as published by\0A\00", align 1
@.str.19.306 = private unnamed_addr constant [72 x i8] c"    the Free Software Foundation; either version 2 of the License , or\0A\00", align 1
@.str.20.307 = private unnamed_addr constant [42 x i8] c"    (at your option) any later version.\0A\0A\00", align 1
@.str.21.308 = private unnamed_addr constant [69 x i8] c"    This program is distributed in the hope that it will be useful,\0A\00", align 1
@.str.22.309 = private unnamed_addr constant [68 x i8] c"    but WITHOUT ANY WARRANTY; without even the implied warranty of\0A\00", align 1
@.str.23.310 = private unnamed_addr constant [67 x i8] c"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A\00", align 1
@.str.24.311 = private unnamed_addr constant [51 x i8] c"    GNU General Public License for more details.\0A\0A\00", align 1
@.str.25.312 = private unnamed_addr constant [71 x i8] c"    You should have received a copy of the GNU General Public License\0A\00", align 1
@.str.26.313 = private unnamed_addr constant [65 x i8] c"    along with this program. If not, write to the Free Software\0A\00", align 1
@.str.27.314 = private unnamed_addr constant [58 x i8] c"    Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.\0A\0A\00", align 1
@.str.28.317 = private unnamed_addr constant [22 x i8] c"BC_BASE_MAX     = %d\0A\00", align 1
@.str.29.318 = private unnamed_addr constant [23 x i8] c"BC_DIM_MAX      = %ld\0A\00", align 1
@.str.30.319 = private unnamed_addr constant [22 x i8] c"BC_SCALE_MAX    = %d\0A\00", align 1
@.str.31.320 = private unnamed_addr constant [22 x i8] c"BC_STRING_MAX   = %d\0A\00", align 1
@.str.32.321 = private unnamed_addr constant [23 x i8] c"MAX Exponent    = %ld\0A\00", align 1
@.str.33.322 = private unnamed_addr constant [23 x i8] c"MAX code        = %ld\0A\00", align 1
@.str.34.323 = private unnamed_addr constant [23 x i8] c"multiply digits = %ld\0A\00", align 1
@.str.35.324 = private unnamed_addr constant [23 x i8] c"Number of vars  = %ld\0A\00", align 1
@.str.39.327 = private unnamed_addr constant [37 x i8] c"Runtime error (func=%s, adr=%d): %s\0A\00", align 1
@.str.40.330 = private unnamed_addr constant [39 x i8] c"Runtime warning (func=%s, adr=%d): %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yyparse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [150 x i16], align 16
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca %struct.YYSTYPE*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.YYSTYPE*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i16 0, i16* %6, align 2
  store i32 -1, i32* @yychar, align 4
  store i32 0, i32* @yynerrs, align 4
  store i16 0, i16* @yyerrflag, align 2
  %13 = getelementptr inbounds [150 x i16], [150 x i16]* %2, i64 0, i64 -1
  store i16* %13, i16** %7, align 8
  store %struct.YYSTYPE* getelementptr inbounds ([150 x %struct.YYSTYPE], [150 x %struct.YYSTYPE]* @yyv, i64 0, i64 -1), %struct.YYSTYPE** %9, align 8
  br label %14

14:                                               ; preds = %1136, %178, %76, %0
  %15 = load i16*, i16** %7, align 8
  %16 = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %16, i16** %7, align 8
  %17 = getelementptr inbounds [150 x i16], [150 x i16]* %2, i64 0, i64 150
  %18 = icmp ugt i16* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %1137

20:                                               ; preds = %14
  %21 = load i16, i16* %6, align 2
  %22 = load i16*, i16** %7, align 8
  store i16 %21, i16* %22, align 2
  %23 = load %struct.YYSTYPE*, %struct.YYSTYPE** %9, align 8
  %24 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %23, i32 1
  store %struct.YYSTYPE* %24, %struct.YYSTYPE** %9, align 8
  %25 = load %struct.YYSTYPE*, %struct.YYSTYPE** %9, align 8
  %26 = bitcast %struct.YYSTYPE* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.YYSTYPE* @yyval to i8*), i64 24, i1 false)
  br label %27

27:                                               ; preds = %199, %20
  %28 = load i16, i16* %6, align 2
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds [166 x i16], [166 x i16]* @yypact, i64 0, i64 %29
  %31 = load i16, i16* %30, align 2
  store i16 %31, i16* %8, align 2
  %32 = load i16, i16* %8, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sle i32 %33, -1000
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %78

36:                                               ; preds = %27
  %37 = load i32, i32* @yychar, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = call i32 @yylex()
  store i32 %40, i32* @yychar, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* @yychar, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* @yychar, align 4
  %46 = load i16, i16* %8, align 2
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %47, %45
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %8, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load i16, i16* %8, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp sge i32 %54, 706
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %44
  br label %78

57:                                               ; preds = %52
  %58 = load i16, i16* %8, align 2
  %59 = sext i16 %58 to i64
  %60 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  store i16 %61, i16* %8, align 2
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds [166 x i16], [166 x i16]* @yychk, i64 0, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  %66 = load i32, i32* @yychar, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  store i32 -1, i32* @yychar, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.YYSTYPE* @yyval to i8*), i8* align 8 bitcast (%struct.YYSTYPE* @yylval to i8*), i64 24, i1 false)
  %69 = load i16, i16* %8, align 2
  store i16 %69, i16* %6, align 2
  %70 = load i16, i16* @yyerrflag, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i16, i16* @yyerrflag, align 2
  %75 = add i16 %74, -1
  store i16 %75, i16* @yyerrflag, align 2
  br label %76

76:                                               ; preds = %73, %68
  br label %14

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %56, %35
  %79 = load i16, i16* %6, align 2
  %80 = sext i16 %79 to i64
  %81 = getelementptr inbounds [166 x i16], [166 x i16]* @yydef, i64 0, i64 %80
  %82 = load i16, i16* %81, align 2
  store i16 %82, i16* %8, align 2
  %83 = sext i16 %82 to i32
  %84 = icmp eq i32 %83, -2
  br i1 %84, label %85, label %136

85:                                               ; preds = %78
  %86 = load i32, i32* @yychar, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = call i32 @yylex()
  store i32 %89, i32* @yychar, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* @yychar, align 4
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %85
  store i16* getelementptr inbounds ([10 x i16], [10 x i16]* @yyexca, i64 0, i64 0), i16** %10, align 8
  br label %94

94:                                               ; preds = %110, %93
  %95 = load i16*, i16** %10, align 8
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %107, label %99

99:                                               ; preds = %94
  %100 = load i16*, i16** %10, align 8
  %101 = getelementptr inbounds i16, i16* %100, i64 1
  %102 = load i16, i16* %101, align 2
  %103 = sext i16 %102 to i32
  %104 = load i16, i16* %6, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp ne i32 %103, %105
  br label %107

107:                                              ; preds = %99, %94
  %108 = phi i1 [ true, %94 ], [ %106, %99 ]
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109
  %111 = load i16*, i16** %10, align 8
  %112 = getelementptr inbounds i16, i16* %111, i64 2
  store i16* %112, i16** %10, align 8
  br label %94

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i16*, i16** %10, align 8
  %116 = getelementptr inbounds i16, i16* %115, i64 2
  store i16* %116, i16** %10, align 8
  %117 = load i16, i16* %116, align 2
  %118 = sext i16 %117 to i32
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load i16*, i16** %10, align 8
  %122 = load i16, i16* %121, align 2
  %123 = sext i16 %122 to i32
  %124 = load i32, i32* @yychar, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %128

127:                                              ; preds = %120
  br label %114

128:                                              ; preds = %126, %114
  %129 = load i16*, i16** %10, align 8
  %130 = getelementptr inbounds i16, i16* %129, i64 1
  %131 = load i16, i16* %130, align 2
  store i16 %131, i16* %8, align 2
  %132 = sext i16 %131 to i32
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* %1, align 4
  br label %1137

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %78
  %137 = load i16, i16* %8, align 2
  %138 = sext i16 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %201

140:                                              ; preds = %136
  %141 = load i16, i16* @yyerrflag, align 2
  %142 = sext i16 %141 to i32
  switch i32 %142, label %200 [
    i32 0, label %143
    i32 1, label %147
    i32 2, label %147
    i32 3, label %195
  ]

143:                                              ; preds = %140
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* @yynerrs, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @yynerrs, align 4
  br label %147

147:                                              ; preds = %144, %140, %140
  store i16 3, i16* @yyerrflag, align 2
  br label %148

148:                                              ; preds = %183, %147
  %149 = load i16*, i16** %7, align 8
  %150 = getelementptr inbounds [150 x i16], [150 x i16]* %2, i64 0, i64 0
  %151 = icmp uge i16* %149, %150
  br i1 %151, label %152, label %193

152:                                              ; preds = %148
  %153 = load i16*, i16** %7, align 8
  %154 = load i16, i16* %153, align 2
  %155 = sext i16 %154 to i64
  %156 = getelementptr inbounds [166 x i16], [166 x i16]* @yypact, i64 0, i64 %155
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = add nsw i32 %158, 256
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %8, align 2
  %161 = load i16, i16* %8, align 2
  %162 = sext i16 %161 to i32
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %152
  %165 = load i16, i16* %8, align 2
  %166 = sext i16 %165 to i32
  %167 = icmp slt i32 %166, 706
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = load i16, i16* %8, align 2
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i64 0, i64 %170
  %172 = load i16, i16* %171, align 2
  %173 = sext i16 %172 to i64
  %174 = getelementptr inbounds [166 x i16], [166 x i16]* @yychk, i64 0, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = sext i16 %175 to i32
  %177 = icmp eq i32 %176, 256
  br i1 %177, label %178, label %183

178:                                              ; preds = %168
  %179 = load i16, i16* %8, align 2
  %180 = sext i16 %179 to i64
  %181 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i64 0, i64 %180
  %182 = load i16, i16* %181, align 2
  store i16 %182, i16* %6, align 2
  br label %14

183:                                              ; preds = %168, %164, %152
  %184 = load i16*, i16** %7, align 8
  %185 = load i16, i16* %184, align 2
  %186 = sext i16 %185 to i64
  %187 = getelementptr inbounds [166 x i16], [166 x i16]* @yypact, i64 0, i64 %186
  %188 = load i16, i16* %187, align 2
  store i16 %188, i16* %8, align 2
  %189 = load i16*, i16** %7, align 8
  %190 = getelementptr inbounds i16, i16* %189, i32 -1
  store i16* %190, i16** %7, align 8
  %191 = load %struct.YYSTYPE*, %struct.YYSTYPE** %9, align 8
  %192 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %191, i32 -1
  store %struct.YYSTYPE* %192, %struct.YYSTYPE** %9, align 8
  br label %148

193:                                              ; preds = %148
  br label %194

194:                                              ; preds = %198, %193
  store i32 1, i32* %1, align 4
  br label %1137

195:                                              ; preds = %140
  %196 = load i32, i32* @yychar, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %194

199:                                              ; preds = %195
  store i32 -1, i32* @yychar, align 4
  br label %27

200:                                              ; preds = %140
  br label %201

201:                                              ; preds = %200, %136
  %202 = load i16, i16* %8, align 2
  %203 = sext i16 %202 to i64
  %204 = getelementptr inbounds [98 x i16], [98 x i16]* @yyr2, i64 0, i64 %203
  %205 = load i16, i16* %204, align 2
  %206 = sext i16 %205 to i32
  %207 = load i16*, i16** %7, align 8
  %208 = sext i32 %206 to i64
  %209 = sub i64 0, %208
  %210 = getelementptr inbounds i16, i16* %207, i64 %209
  store i16* %210, i16** %7, align 8
  %211 = load %struct.YYSTYPE*, %struct.YYSTYPE** %9, align 8
  store %struct.YYSTYPE* %211, %struct.YYSTYPE** %5, align 8
  %212 = load i16, i16* %8, align 2
  %213 = sext i16 %212 to i64
  %214 = getelementptr inbounds [98 x i16], [98 x i16]* @yyr2, i64 0, i64 %213
  %215 = load i16, i16* %214, align 2
  %216 = sext i16 %215 to i32
  %217 = load %struct.YYSTYPE*, %struct.YYSTYPE** %9, align 8
  %218 = sext i32 %216 to i64
  %219 = sub i64 0, %218
  %220 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %217, i64 %219
  store %struct.YYSTYPE* %220, %struct.YYSTYPE** %9, align 8
  %221 = load %struct.YYSTYPE*, %struct.YYSTYPE** %9, align 8
  %222 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %221, i64 1
  %223 = bitcast %struct.YYSTYPE* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.YYSTYPE* @yyval to i8*), i8* align 8 %223, i64 24, i1 false)
  %224 = load i16, i16* %8, align 2
  store i16 %224, i16* %4, align 2
  %225 = load i16, i16* %8, align 2
  %226 = sext i16 %225 to i64
  %227 = getelementptr inbounds [98 x i16], [98 x i16]* @yyr1, i64 0, i64 %226
  %228 = load i16, i16* %227, align 2
  store i16 %228, i16* %8, align 2
  %229 = load i16, i16* %8, align 2
  %230 = sext i16 %229 to i64
  %231 = getelementptr inbounds [33 x i16], [33 x i16]* @yypgo, i64 0, i64 %230
  %232 = load i16, i16* %231, align 2
  %233 = sext i16 %232 to i32
  %234 = load i16*, i16** %7, align 8
  %235 = load i16, i16* %234, align 2
  %236 = sext i16 %235 to i32
  %237 = add nsw i32 %233, %236
  %238 = add nsw i32 %237, 1
  %239 = trunc i32 %238 to i16
  store i16 %239, i16* %3, align 2
  %240 = load i16, i16* %3, align 2
  %241 = sext i16 %240 to i32
  %242 = icmp sge i32 %241, 706
  br i1 %242, label %256, label %243

243:                                              ; preds = %201
  %244 = load i16, i16* %3, align 2
  %245 = sext i16 %244 to i64
  %246 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i64 0, i64 %245
  %247 = load i16, i16* %246, align 2
  store i16 %247, i16* %6, align 2
  %248 = sext i16 %247 to i64
  %249 = getelementptr inbounds [166 x i16], [166 x i16]* @yychk, i64 0, i64 %248
  %250 = load i16, i16* %249, align 2
  %251 = sext i16 %250 to i32
  %252 = load i16, i16* %8, align 2
  %253 = sext i16 %252 to i32
  %254 = sub nsw i32 0, %253
  %255 = icmp ne i32 %251, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %243, %201
  %257 = load i16, i16* %8, align 2
  %258 = sext i16 %257 to i64
  %259 = getelementptr inbounds [33 x i16], [33 x i16]* @yypgo, i64 0, i64 %258
  %260 = load i16, i16* %259, align 2
  %261 = sext i16 %260 to i64
  %262 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i64 0, i64 %261
  %263 = load i16, i16* %262, align 2
  store i16 %263, i16* %6, align 2
  br label %264

264:                                              ; preds = %256, %243
  %265 = load i16, i16* %4, align 2
  %266 = sext i16 %265 to i32
  switch i32 %266, label %1136 [
    i32 1, label %267
    i32 3, label %273
    i32 4, label %274
    i32 5, label %275
    i32 6, label %276
    i32 10, label %277
    i32 17, label %278
    i32 18, label %283
    i32 19, label %284
    i32 20, label %285
    i32 21, label %303
    i32 22, label %312
    i32 23, label %320
    i32 24, label %328
    i32 25, label %329
    i32 26, label %330
    i32 27, label %331
    i32 28, label %332
    i32 29, label %339
    i32 30, label %370
    i32 31, label %394
    i32 32, label %428
    i32 33, label %440
    i32 34, label %449
    i32 35, label %456
    i32 36, label %467
    i32 37, label %476
    i32 38, label %487
    i32 39, label %488
    i32 43, label %489
    i32 44, label %498
    i32 46, label %499
    i32 48, label %515
    i32 49, label %552
    i32 50, label %557
    i32 52, label %558
    i32 53, label %559
    i32 54, label %564
    i32 55, label %569
    i32 56, label %577
    i32 57, label %585
    i32 58, label %597
    i32 59, label %609
    i32 61, label %610
    i32 62, label %619
    i32 63, label %628
    i32 64, label %641
    i32 65, label %654
    i32 67, label %655
    i32 68, label %656
    i32 69, label %664
    i32 70, label %692
    i32 71, label %733
    i32 72, label %744
    i32 73, label %763
    i32 74, label %774
    i32 75, label %797
    i32 76, label %802
    i32 77, label %836
    i32 78, label %846
    i32 79, label %856
    i32 80, label %870
    i32 81, label %880
    i32 82, label %885
    i32 83, label %905
    i32 84, label %946
    i32 85, label %952
    i32 86, label %982
    i32 87, label %1049
    i32 88, label %1109
    i32 89, label %1110
    i32 90, label %1111
    i32 91, label %1112
    i32 92, label %1113
    i32 93, label %1119
    i32 94, label %1132
    i32 95, label %1133
    i32 96, label %1134
    i32 97, label %1135
  ]

267:                                              ; preds = %264
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %268 = load i8, i8* @interactive, align 1
  %269 = icmp ne i8 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  call void @welcome()
  br label %272

272:                                              ; preds = %270, %267
  br label %1136

273:                                              ; preds = %264
  call void @run_code()
  br label %1136

274:                                              ; preds = %264
  call void @run_code()
  br label %1136

275:                                              ; preds = %264
  store i16 0, i16* @yyerrflag, align 2
  call void @init_gen()
  br label %1136

276:                                              ; preds = %264
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

277:                                              ; preds = %264
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

278:                                              ; preds = %264
  %279 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %280 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %279, i64 0
  %281 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

283:                                              ; preds = %264
  call void @warranty(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %1136

284:                                              ; preds = %264
  call void @limits()
  br label %1136

285:                                              ; preds = %264
  %286 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %287 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %286, i64 0
  %288 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 2
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %285
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %293

293:                                              ; preds = %292, %285
  %294 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %295 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %294, i64 0
  %296 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %302

301:                                              ; preds = %293
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %302

302:                                              ; preds = %301, %300
  br label %1136

303:                                              ; preds = %264
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %304 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %305 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %304, i64 0
  %306 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  call void @generate(i8* %307)
  %308 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %309 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %308, i64 0
  %310 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  call void @free(i8* %311) #7
  br label %1136

312:                                              ; preds = %264
  %313 = load i32, i32* @break_label, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %319

316:                                              ; preds = %312
  %317 = load i32, i32* @break_label, align 4
  %318 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %317) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %319

319:                                              ; preds = %316, %315
  br label %1136

320:                                              ; preds = %264
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %321 = load i32, i32* @continue_label, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %327

324:                                              ; preds = %320
  %325 = load i32, i32* @continue_label, align 4
  %326 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %325) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %323
  br label %1136

328:                                              ; preds = %264
  call void @exit(i32 0) #8
  unreachable

329:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %1136

330:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %1136

331:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %1136

332:                                              ; preds = %264
  %333 = load i32, i32* @break_label, align 4
  %334 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %335 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %334, i64 0
  %336 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %335, i32 0, i32 2
  store i32 %333, i32* %336, align 4
  %337 = load i32, i32* @next_label, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* @next_label, align 4
  store i32 %337, i32* @break_label, align 4
  br label %1136

339:                                              ; preds = %264
  %340 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %341 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %340, i64 -1
  %342 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = icmp sgt i32 %343, 1
  br i1 %344, label %345, label %346

345:                                              ; preds = %339
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %346

346:                                              ; preds = %345, %339
  %347 = load i32, i32* @next_label, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* @next_label, align 4
  %349 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %350 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %349, i64 -1
  %351 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %350, i32 0, i32 2
  store i32 %347, i32* %351, align 4
  %352 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %353 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %352, i64 -1
  %354 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %346
  %358 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %359 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %358, i64 -1
  %360 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %361) #7
  br label %369

363:                                              ; preds = %346
  %364 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %365 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %364, i64 -1
  %366 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %367) #7
  br label %369

369:                                              ; preds = %363, %357
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

370:                                              ; preds = %264
  %371 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %372 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %371, i64 -1
  %373 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %370
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %377

377:                                              ; preds = %376, %370
  %378 = load i32, i32* @next_label, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* @next_label, align 4
  %380 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %381 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %380, i64 -1
  %382 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %381, i32 0, i32 2
  store i32 %378, i32* %382, align 4
  %383 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %384 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %383, i64 -1
  %385 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @break_label, align 4
  %388 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %386, i32 %387) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %389 = load i32, i32* @continue_label, align 4
  store i32 %389, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %390 = load i32, i32* @next_label, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* @next_label, align 4
  store i32 %390, i32* @continue_label, align 4
  %392 = load i32, i32* @continue_label, align 4
  %393 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %392) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

394:                                              ; preds = %264
  %395 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %396 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %395, i64 -1
  %397 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 4
  %399 = icmp sgt i32 %398, 1
  br i1 %399, label %400, label %401

400:                                              ; preds = %394
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  br label %401

401:                                              ; preds = %400, %394
  %402 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %403 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %402, i64 -1
  %404 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %417

407:                                              ; preds = %401
  %408 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %409 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %408, i64 -7
  %410 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %413 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %412, i64 -4
  %414 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %411, i32 %415) #7
  br label %427

417:                                              ; preds = %401
  %418 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %419 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %418, i64 -7
  %420 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %423 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %422, i64 -4
  %424 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %421, i32 %425) #7
  br label %427

427:                                              ; preds = %417, %407
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

428:                                              ; preds = %264
  %429 = load i32, i32* @continue_label, align 4
  %430 = load i32, i32* @break_label, align 4
  %431 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %429, i32 %430) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %432 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %433 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %432, i64 -12
  %434 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* @break_label, align 4
  %436 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %437 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %436, i64 -4
  %438 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 4
  store i32 %439, i32* @continue_label, align 4
  br label %1136

440:                                              ; preds = %264
  %441 = load i32, i32* @if_label, align 4
  %442 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %443 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %442, i64 -1
  %444 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %443, i32 0, i32 2
  store i32 %441, i32* %444, align 4
  %445 = load i32, i32* @next_label, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* @next_label, align 4
  store i32 %445, i32* @if_label, align 4
  %447 = load i32, i32* @if_label, align 4
  %448 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %447) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

449:                                              ; preds = %264
  %450 = load i32, i32* @if_label, align 4
  %451 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %450) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %452 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %453 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %452, i64 -4
  %454 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 4
  store i32 %455, i32* @if_label, align 4
  br label %1136

456:                                              ; preds = %264
  %457 = load i32, i32* @next_label, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* @next_label, align 4
  %459 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %460 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %459, i64 0
  %461 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %460, i32 0, i32 2
  store i32 %457, i32* %461, align 4
  %462 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %463 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %462, i64 0
  %464 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %465) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

467:                                              ; preds = %264
  %468 = load i32, i32* @break_label, align 4
  %469 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %470 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %469, i64 0
  %471 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %470, i32 0, i32 2
  store i32 %468, i32* %471, align 4
  %472 = load i32, i32* @next_label, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* @next_label, align 4
  store i32 %472, i32* @break_label, align 4
  %474 = load i32, i32* @break_label, align 4
  %475 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %474) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

476:                                              ; preds = %264
  %477 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %478 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %477, i64 -6
  %479 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @break_label, align 4
  %482 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %480, i32 %481) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %483 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %484 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %483, i64 -3
  %485 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 4
  store i32 %486, i32* @break_label, align 4
  br label %1136

487:                                              ; preds = %264
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

488:                                              ; preds = %264
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  br label %1136

489:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %490 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %491 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %490, i64 0
  %492 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %491, i32 0, i32 0
  %493 = load i8*, i8** %492, align 8
  call void @generate(i8* %493)
  %494 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %495 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %494, i64 0
  %496 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %495, i32 0, i32 0
  %497 = load i8*, i8** %496, align 8
  call void @free(i8* %497) #7
  br label %1136

498:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %1136

499:                                              ; preds = %264
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  %500 = load i32, i32* @next_label, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* @next_label, align 4
  %502 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %503 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %502, i64 0
  %504 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %503, i32 0, i32 2
  store i32 %500, i32* %504, align 4
  %505 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %506 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %505, i64 0
  %507 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* @if_label, align 4
  %510 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 %508, i32 %509) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %511 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %512 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %511, i64 0
  %513 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 4
  store i32 %514, i32* @if_label, align 4
  br label %1136

515:                                              ; preds = %264
  %516 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %517 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %516, i64 -4
  %518 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %517, i32 0, i32 3
  %519 = load %struct.arg_list*, %struct.arg_list** %518, align 8
  %520 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %521 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %520, i64 0
  %522 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %521, i32 0, i32 3
  %523 = load %struct.arg_list*, %struct.arg_list** %522, align 8
  call void @check_params(%struct.arg_list* %519, %struct.arg_list* %523)
  %524 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %525 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %524, i64 -6
  %526 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %525, i32 0, i32 0
  %527 = load i8*, i8** %526, align 8
  %528 = call i32 @lookup(i8* %527, i32 2)
  %529 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %530 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %529, i64 -4
  %531 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %530, i32 0, i32 3
  %532 = load %struct.arg_list*, %struct.arg_list** %531, align 8
  %533 = call i8* @arg_str(%struct.arg_list* %532, i32 1)
  %534 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %535 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %534, i64 0
  %536 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %535, i32 0, i32 3
  %537 = load %struct.arg_list*, %struct.arg_list** %536, align 8
  %538 = call i8* @arg_str(%struct.arg_list* %537, i32 1)
  %539 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 %528, i8* %533, i8* %538) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %540 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %541 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %540, i64 -4
  %542 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %541, i32 0, i32 3
  %543 = load %struct.arg_list*, %struct.arg_list** %542, align 8
  call void @free_args(%struct.arg_list* %543)
  %544 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %545 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %544, i64 0
  %546 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %545, i32 0, i32 3
  %547 = load %struct.arg_list*, %struct.arg_list** %546, align 8
  call void @free_args(%struct.arg_list* %547)
  %548 = load i32, i32* @next_label, align 4
  %549 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %550 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %549, i64 -7
  %551 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %550, i32 0, i32 2
  store i32 %548, i32* %551, align 4
  store i32 0, i32* @next_label, align 4
  br label %1136

552:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %553 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %554 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %553, i64 -11
  %555 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  store i32 %556, i32* @next_label, align 4
  br label %1136

557:                                              ; preds = %264
  store %struct.arg_list* null, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

558:                                              ; preds = %264
  store %struct.arg_list* null, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

559:                                              ; preds = %264
  %560 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %561 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %560, i64 -1
  %562 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %561, i32 0, i32 3
  %563 = load %struct.arg_list*, %struct.arg_list** %562, align 8
  store %struct.arg_list* %563, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

564:                                              ; preds = %264
  %565 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %566 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %565, i64 -1
  %567 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %566, i32 0, i32 3
  %568 = load %struct.arg_list*, %struct.arg_list** %567, align 8
  store %struct.arg_list* %568, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

569:                                              ; preds = %264
  %570 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %571 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %570, i64 0
  %572 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %571, i32 0, i32 0
  %573 = load i8*, i8** %572, align 8
  %574 = call i32 @lookup(i8* %573, i32 0)
  %575 = trunc i32 %574 to i8
  %576 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext %575)
  store %struct.arg_list* %576, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

577:                                              ; preds = %264
  %578 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %579 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %578, i64 -2
  %580 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %579, i32 0, i32 0
  %581 = load i8*, i8** %580, align 8
  %582 = call i32 @lookup(i8* %581, i32 1)
  %583 = trunc i32 %582 to i8
  %584 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext %583)
  store %struct.arg_list* %584, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

585:                                              ; preds = %264
  %586 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %587 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %586, i64 -2
  %588 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %587, i32 0, i32 3
  %589 = load %struct.arg_list*, %struct.arg_list** %588, align 8
  %590 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %591 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %590, i64 0
  %592 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %591, i32 0, i32 0
  %593 = load i8*, i8** %592, align 8
  %594 = call i32 @lookup(i8* %593, i32 0)
  %595 = trunc i32 %594 to i8
  %596 = call %struct.arg_list* @nextarg(%struct.arg_list* %589, i8 signext %595)
  store %struct.arg_list* %596, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

597:                                              ; preds = %264
  %598 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %599 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %598, i64 -4
  %600 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %599, i32 0, i32 3
  %601 = load %struct.arg_list*, %struct.arg_list** %600, align 8
  %602 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %603 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %602, i64 -2
  %604 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %603, i32 0, i32 0
  %605 = load i8*, i8** %604, align 8
  %606 = call i32 @lookup(i8* %605, i32 1)
  %607 = trunc i32 %606 to i8
  %608 = call %struct.arg_list* @nextarg(%struct.arg_list* %601, i8 signext %607)
  store %struct.arg_list* %608, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

609:                                              ; preds = %264
  store %struct.arg_list* null, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

610:                                              ; preds = %264
  %611 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %612 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %611, i64 0
  %613 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %612, i32 0, i32 2
  %614 = load i32, i32* %613, align 4
  %615 = icmp sgt i32 %614, 1
  br i1 %615, label %616, label %617

616:                                              ; preds = %610
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0))
  br label %617

617:                                              ; preds = %616, %610
  %618 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext 0)
  store %struct.arg_list* %618, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

619:                                              ; preds = %264
  %620 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %621 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %620, i64 -2
  %622 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %621, i32 0, i32 0
  %623 = load i8*, i8** %622, align 8
  %624 = call i32 @lookup(i8* %623, i32 1)
  %625 = sub nsw i32 0, %624
  %626 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %625) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %627 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext 1)
  store %struct.arg_list* %627, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

628:                                              ; preds = %264
  %629 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %630 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %629, i64 0
  %631 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %630, i32 0, i32 2
  %632 = load i32, i32* %631, align 4
  %633 = icmp sgt i32 %632, 1
  br i1 %633, label %634, label %635

634:                                              ; preds = %628
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0))
  br label %635

635:                                              ; preds = %634, %628
  %636 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %637 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %636, i64 -2
  %638 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %637, i32 0, i32 3
  %639 = load %struct.arg_list*, %struct.arg_list** %638, align 8
  %640 = call %struct.arg_list* @nextarg(%struct.arg_list* %639, i8 signext 0)
  store %struct.arg_list* %640, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

641:                                              ; preds = %264
  %642 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %643 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %642, i64 -2
  %644 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %643, i32 0, i32 0
  %645 = load i8*, i8** %644, align 8
  %646 = call i32 @lookup(i8* %645, i32 1)
  %647 = sub nsw i32 0, %646
  %648 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %647) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %649 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %650 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %649, i64 -4
  %651 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %650, i32 0, i32 3
  %652 = load %struct.arg_list*, %struct.arg_list** %651, align 8
  %653 = call %struct.arg_list* @nextarg(%struct.arg_list* %652, i8 signext 1)
  store %struct.arg_list* %653, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %1136

654:                                              ; preds = %264
  store i32 -1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0))
  br label %1136

655:                                              ; preds = %264
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %1136

656:                                              ; preds = %264
  %657 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %658 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %657, i64 0
  %659 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %658, i32 0, i32 2
  %660 = load i32, i32* %659, align 4
  %661 = icmp sgt i32 %660, 1
  br i1 %661, label %662, label %663

662:                                              ; preds = %656
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0))
  br label %663

663:                                              ; preds = %662, %656
  br label %1136

664:                                              ; preds = %264
  %665 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %666 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %665, i64 0
  %667 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %666, i32 0, i32 1
  %668 = load i8, i8* %667, align 8
  %669 = sext i8 %668 to i32
  %670 = icmp ne i32 %669, 61
  br i1 %670, label %671, label %691

671:                                              ; preds = %664
  %672 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %673 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %672, i64 -1
  %674 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %673, i32 0, i32 2
  %675 = load i32, i32* %674, align 4
  %676 = icmp slt i32 %675, 0
  br i1 %676, label %677, label %684

677:                                              ; preds = %671
  %678 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %679 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %678, i64 -1
  %680 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %679, i32 0, i32 2
  %681 = load i32, i32* %680, align 4
  %682 = sub nsw i32 0, %681
  %683 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i32 %682) #7
  br label %690

684:                                              ; preds = %671
  %685 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %686 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %685, i64 -1
  %687 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %686, i32 0, i32 2
  %688 = load i32, i32* %687, align 4
  %689 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i32 %688) #7
  br label %690

690:                                              ; preds = %684, %677
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %691

691:                                              ; preds = %690, %664
  br label %1136

692:                                              ; preds = %264
  %693 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %694 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %693, i64 0
  %695 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %694, i32 0, i32 2
  %696 = load i32, i32* %695, align 4
  %697 = icmp sgt i32 %696, 1
  br i1 %697, label %698, label %699

698:                                              ; preds = %692
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0))
  br label %699

699:                                              ; preds = %698, %692
  %700 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %701 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %700, i64 -2
  %702 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %701, i32 0, i32 1
  %703 = load i8, i8* %702, align 8
  %704 = sext i8 %703 to i32
  %705 = icmp ne i32 %704, 61
  br i1 %705, label %706, label %713

706:                                              ; preds = %699
  %707 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %708 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %707, i64 -2
  %709 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %708, i32 0, i32 1
  %710 = load i8, i8* %709, align 8
  %711 = sext i8 %710 to i32
  %712 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32 %711) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %713

713:                                              ; preds = %706, %699
  %714 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %715 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %714, i64 -3
  %716 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %715, i32 0, i32 2
  %717 = load i32, i32* %716, align 4
  %718 = icmp slt i32 %717, 0
  br i1 %718, label %719, label %726

719:                                              ; preds = %713
  %720 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %721 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %720, i64 -3
  %722 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %721, i32 0, i32 2
  %723 = load i32, i32* %722, align 4
  %724 = sub nsw i32 0, %723
  %725 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 %724) #7
  br label %732

726:                                              ; preds = %713
  %727 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %728 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %727, i64 -3
  %729 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %728, i32 0, i32 2
  %730 = load i32, i32* %729, align 4
  %731 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 %730) #7
  br label %732

732:                                              ; preds = %726, %719
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

733:                                              ; preds = %264
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0))
  %734 = load i32, i32* @next_label, align 4
  %735 = add nsw i32 %734, 1
  store i32 %735, i32* @next_label, align 4
  %736 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %737 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %736, i64 0
  %738 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %737, i32 0, i32 2
  store i32 %734, i32* %738, align 4
  %739 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %740 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %739, i64 0
  %741 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %740, i32 0, i32 2
  %742 = load i32, i32* %741, align 4
  %743 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i32 %742) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

744:                                              ; preds = %264
  %745 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %746 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %745, i64 -2
  %747 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %746, i32 0, i32 2
  %748 = load i32, i32* %747, align 4
  %749 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %750 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %749, i64 -2
  %751 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %750, i32 0, i32 2
  %752 = load i32, i32* %751, align 4
  %753 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 %748, i32 %752) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %754 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %755 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %754, i64 -3
  %756 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %755, i32 0, i32 2
  %757 = load i32, i32* %756, align 4
  %758 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %759 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %758, i64 0
  %760 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %759, i32 0, i32 2
  %761 = load i32, i32* %760, align 4
  %762 = or i32 %757, %761
  store i32 %762, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

763:                                              ; preds = %264
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %764 = load i32, i32* @next_label, align 4
  %765 = add nsw i32 %764, 1
  store i32 %765, i32* @next_label, align 4
  %766 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %767 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %766, i64 0
  %768 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %767, i32 0, i32 2
  store i32 %764, i32* %768, align 4
  %769 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %770 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %769, i64 0
  %771 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %770, i32 0, i32 2
  %772 = load i32, i32* %771, align 4
  %773 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 %772) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

774:                                              ; preds = %264
  %775 = load i32, i32* @next_label, align 4
  %776 = add nsw i32 %775, 1
  store i32 %776, i32* @next_label, align 4
  store i32 %775, i32* %11, align 4
  %777 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %778 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %777, i64 -2
  %779 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %778, i32 0, i32 2
  %780 = load i32, i32* %779, align 4
  %781 = load i32, i32* %11, align 4
  %782 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %783 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %782, i64 -2
  %784 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %783, i32 0, i32 2
  %785 = load i32, i32* %784, align 4
  %786 = load i32, i32* %11, align 4
  %787 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i64 0, i64 0), i32 %780, i32 %781, i32 %785, i32 %786) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %788 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %789 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %788, i64 -3
  %790 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %789, i32 0, i32 2
  %791 = load i32, i32* %790, align 4
  %792 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %793 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %792, i64 0
  %794 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %793, i32 0, i32 2
  %795 = load i32, i32* %794, align 4
  %796 = or i32 %791, %795
  store i32 %796, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

797:                                              ; preds = %264
  %798 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %799 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %798, i64 0
  %800 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %799, i32 0, i32 2
  %801 = load i32, i32* %800, align 4
  store i32 %801, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0))
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  br label %1136

802:                                              ; preds = %264
  store i32 3, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %803 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %804 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %803, i64 -1
  %805 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %804, i32 0, i32 0
  %806 = load i8*, i8** %805, align 8
  %807 = load i8, i8* %806, align 1
  %808 = sext i8 %807 to i32
  switch i32 %808, label %835 [
    i32 61, label %809
    i32 33, label %810
    i32 60, label %811
    i32 62, label %823
  ]

809:                                              ; preds = %802
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0))
  br label %835

810:                                              ; preds = %802
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  br label %835

811:                                              ; preds = %802
  %812 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %813 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %812, i64 -1
  %814 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %813, i32 0, i32 0
  %815 = load i8*, i8** %814, align 8
  %816 = getelementptr inbounds i8, i8* %815, i64 1
  %817 = load i8, i8* %816, align 1
  %818 = sext i8 %817 to i32
  %819 = icmp eq i32 %818, 61
  br i1 %819, label %820, label %821

820:                                              ; preds = %811
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  br label %822

821:                                              ; preds = %811
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0))
  br label %822

822:                                              ; preds = %821, %820
  br label %835

823:                                              ; preds = %802
  %824 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %825 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %824, i64 -1
  %826 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %825, i32 0, i32 0
  %827 = load i8*, i8** %826, align 8
  %828 = getelementptr inbounds i8, i8* %827, i64 1
  %829 = load i8, i8* %828, align 1
  %830 = sext i8 %829 to i32
  %831 = icmp eq i32 %830, 61
  br i1 %831, label %832, label %833

832:                                              ; preds = %823
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0))
  br label %834

833:                                              ; preds = %823
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %834

834:                                              ; preds = %833, %832
  br label %835

835:                                              ; preds = %834, %822, %810, %809, %802
  br label %1136

836:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0))
  %837 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %838 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %837, i64 -2
  %839 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %838, i32 0, i32 2
  %840 = load i32, i32* %839, align 4
  %841 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %842 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %841, i64 0
  %843 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %842, i32 0, i32 2
  %844 = load i32, i32* %843, align 4
  %845 = or i32 %840, %844
  store i32 %845, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

846:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %847 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %848 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %847, i64 -2
  %849 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %848, i32 0, i32 2
  %850 = load i32, i32* %849, align 4
  %851 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %852 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %851, i64 0
  %853 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %852, i32 0, i32 2
  %854 = load i32, i32* %853, align 4
  %855 = or i32 %850, %854
  store i32 %855, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

856:                                              ; preds = %264
  %857 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %858 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %857, i64 -1
  %859 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %858, i32 0, i32 1
  %860 = load i8, i8* %859, align 8
  store i8 %860, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 1), align 1
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %861 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %862 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %861, i64 -2
  %863 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %862, i32 0, i32 2
  %864 = load i32, i32* %863, align 4
  %865 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %866 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %865, i64 0
  %867 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %866, i32 0, i32 2
  %868 = load i32, i32* %867, align 4
  %869 = or i32 %864, %868
  store i32 %869, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

870:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0))
  %871 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %872 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %871, i64 -2
  %873 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %872, i32 0, i32 2
  %874 = load i32, i32* %873, align 4
  %875 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %876 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %875, i64 0
  %877 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %876, i32 0, i32 2
  %878 = load i32, i32* %877, align 4
  %879 = or i32 %874, %878
  store i32 %879, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

880:                                              ; preds = %264
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0))
  %881 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %882 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %881, i64 0
  %883 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %882, i32 0, i32 2
  %884 = load i32, i32* %883, align 4
  store i32 %884, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

885:                                              ; preds = %264
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %886 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %887 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %886, i64 0
  %888 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %887, i32 0, i32 2
  %889 = load i32, i32* %888, align 4
  %890 = icmp slt i32 %889, 0
  br i1 %890, label %891, label %898

891:                                              ; preds = %885
  %892 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %893 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %892, i64 0
  %894 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %893, i32 0, i32 2
  %895 = load i32, i32* %894, align 4
  %896 = sub nsw i32 0, %895
  %897 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i32 %896) #7
  br label %904

898:                                              ; preds = %885
  %899 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %900 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %899, i64 0
  %901 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %900, i32 0, i32 2
  %902 = load i32, i32* %901, align 4
  %903 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i32 %902) #7
  br label %904

904:                                              ; preds = %898, %891
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

905:                                              ; preds = %264
  %906 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %907 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %906, i64 0
  %908 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %907, i32 0, i32 0
  %909 = load i8*, i8** %908, align 8
  %910 = call i64 @strlen(i8* %909) #9
  %911 = trunc i64 %910 to i32
  store i32 %911, i32* %12, align 4
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %912 = load i32, i32* %12, align 4
  %913 = icmp eq i32 %912, 1
  br i1 %913, label %914, label %923

914:                                              ; preds = %905
  %915 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %916 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %915, i64 0
  %917 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %916, i32 0, i32 0
  %918 = load i8*, i8** %917, align 8
  %919 = load i8, i8* %918, align 1
  %920 = sext i8 %919 to i32
  %921 = icmp eq i32 %920, 48
  br i1 %921, label %922, label %923

922:                                              ; preds = %914
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %941

923:                                              ; preds = %914, %905
  %924 = load i32, i32* %12, align 4
  %925 = icmp eq i32 %924, 1
  br i1 %925, label %926, label %935

926:                                              ; preds = %923
  %927 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %928 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %927, i64 0
  %929 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %928, i32 0, i32 0
  %930 = load i8*, i8** %929, align 8
  %931 = load i8, i8* %930, align 1
  %932 = sext i8 %931 to i32
  %933 = icmp eq i32 %932, 49
  br i1 %933, label %934, label %935

934:                                              ; preds = %926
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %940

935:                                              ; preds = %926, %923
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0))
  %936 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %937 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %936, i64 0
  %938 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %937, i32 0, i32 0
  %939 = load i8*, i8** %938, align 8
  call void @generate(i8* %939)
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0))
  br label %940

940:                                              ; preds = %935, %934
  br label %941

941:                                              ; preds = %940, %922
  %942 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %943 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %942, i64 0
  %944 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %943, i32 0, i32 0
  %945 = load i8*, i8** %944, align 8
  call void @free(i8* %945) #7
  br label %1136

946:                                              ; preds = %264
  %947 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %948 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %947, i64 -1
  %949 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %948, i32 0, i32 2
  %950 = load i32, i32* %949, align 4
  %951 = or i32 %950, 1
  store i32 %951, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

952:                                              ; preds = %264
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %953 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %954 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %953, i64 -1
  %955 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %954, i32 0, i32 3
  %956 = load %struct.arg_list*, %struct.arg_list** %955, align 8
  %957 = icmp ne %struct.arg_list* %956, null
  br i1 %957, label %958, label %974

958:                                              ; preds = %952
  %959 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %960 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %959, i64 -3
  %961 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %960, i32 0, i32 0
  %962 = load i8*, i8** %961, align 8
  %963 = call i32 @lookup(i8* %962, i32 2)
  %964 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %965 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %964, i64 -1
  %966 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %965, i32 0, i32 3
  %967 = load %struct.arg_list*, %struct.arg_list** %966, align 8
  %968 = call i8* @arg_str(%struct.arg_list* %967, i32 0)
  %969 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i32 %963, i8* %968) #7
  %970 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %971 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %970, i64 -1
  %972 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %971, i32 0, i32 3
  %973 = load %struct.arg_list*, %struct.arg_list** %972, align 8
  call void @free_args(%struct.arg_list* %973)
  br label %981

974:                                              ; preds = %952
  %975 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %976 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %975, i64 -3
  %977 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %976, i32 0, i32 0
  %978 = load i8*, i8** %977, align 8
  %979 = call i32 @lookup(i8* %978, i32 2)
  %980 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 %979) #7
  br label %981

981:                                              ; preds = %974, %958
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

982:                                              ; preds = %264
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %983 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %984 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %983, i64 0
  %985 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %984, i32 0, i32 2
  %986 = load i32, i32* %985, align 4
  %987 = icmp slt i32 %986, 0
  br i1 %987, label %988, label %1020

988:                                              ; preds = %982
  %989 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %990 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %989, i64 -1
  %991 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %990, i32 0, i32 1
  %992 = load i8, i8* %991, align 8
  %993 = sext i8 %992 to i32
  %994 = icmp eq i32 %993, 43
  br i1 %994, label %995, label %1007

995:                                              ; preds = %988
  %996 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %997 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %996, i64 0
  %998 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %997, i32 0, i32 2
  %999 = load i32, i32* %998, align 4
  %1000 = sub nsw i32 0, %999
  %1001 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1002 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1001, i64 0
  %1003 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1002, i32 0, i32 2
  %1004 = load i32, i32* %1003, align 4
  %1005 = sub nsw i32 0, %1004
  %1006 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i32 %1000, i32 %1005) #7
  br label %1019

1007:                                             ; preds = %988
  %1008 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1009 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1008, i64 0
  %1010 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1009, i32 0, i32 2
  %1011 = load i32, i32* %1010, align 4
  %1012 = sub nsw i32 0, %1011
  %1013 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1014 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1013, i64 0
  %1015 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1014, i32 0, i32 2
  %1016 = load i32, i32* %1015, align 4
  %1017 = sub nsw i32 0, %1016
  %1018 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32 %1012, i32 %1017) #7
  br label %1019

1019:                                             ; preds = %1007, %995
  br label %1048

1020:                                             ; preds = %982
  %1021 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1022 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1021, i64 -1
  %1023 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1022, i32 0, i32 1
  %1024 = load i8, i8* %1023, align 8
  %1025 = sext i8 %1024 to i32
  %1026 = icmp eq i32 %1025, 43
  br i1 %1026, label %1027, label %1037

1027:                                             ; preds = %1020
  %1028 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1029 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1028, i64 0
  %1030 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1029, i32 0, i32 2
  %1031 = load i32, i32* %1030, align 4
  %1032 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1033 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1032, i64 0
  %1034 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1033, i32 0, i32 2
  %1035 = load i32, i32* %1034, align 4
  %1036 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32 %1031, i32 %1035) #7
  br label %1047

1037:                                             ; preds = %1020
  %1038 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1039 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1038, i64 0
  %1040 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1039, i32 0, i32 2
  %1041 = load i32, i32* %1040, align 4
  %1042 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1043 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1042, i64 0
  %1044 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1043, i32 0, i32 2
  %1045 = load i32, i32* %1044, align 4
  %1046 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i32 %1041, i32 %1045) #7
  br label %1047

1047:                                             ; preds = %1037, %1027
  br label %1048

1048:                                             ; preds = %1047, %1019
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

1049:                                             ; preds = %264
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %1050 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1051 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1050, i64 -1
  %1052 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1051, i32 0, i32 2
  %1053 = load i32, i32* %1052, align 4
  %1054 = icmp slt i32 %1053, 0
  br i1 %1054, label %1055, label %1083

1055:                                             ; preds = %1049
  %1056 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1057 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1056, i64 -1
  %1058 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1057, i32 0, i32 2
  %1059 = load i32, i32* %1058, align 4
  %1060 = sub nsw i32 0, %1059
  %1061 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 %1060) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %1062 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1063 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1062, i64 0
  %1064 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1063, i32 0, i32 1
  %1065 = load i8, i8* %1064, align 8
  %1066 = sext i8 %1065 to i32
  %1067 = icmp eq i32 %1066, 43
  br i1 %1067, label %1068, label %1075

1068:                                             ; preds = %1055
  %1069 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1070 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1069, i64 -1
  %1071 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1070, i32 0, i32 2
  %1072 = load i32, i32* %1071, align 4
  %1073 = sub nsw i32 0, %1072
  %1074 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), i32 %1073) #7
  br label %1082

1075:                                             ; preds = %1055
  %1076 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1077 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1076, i64 -1
  %1078 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1077, i32 0, i32 2
  %1079 = load i32, i32* %1078, align 4
  %1080 = sub nsw i32 0, %1079
  %1081 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i32 %1080) #7
  br label %1082

1082:                                             ; preds = %1075, %1068
  br label %1108

1083:                                             ; preds = %1049
  %1084 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1085 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1084, i64 -1
  %1086 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1085, i32 0, i32 2
  %1087 = load i32, i32* %1086, align 4
  %1088 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i32 %1087) #7
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  %1089 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1090 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1089, i64 0
  %1091 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1090, i32 0, i32 1
  %1092 = load i8, i8* %1091, align 8
  %1093 = sext i8 %1092 to i32
  %1094 = icmp eq i32 %1093, 43
  br i1 %1094, label %1095, label %1101

1095:                                             ; preds = %1083
  %1096 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1097 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1096, i64 -1
  %1098 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1097, i32 0, i32 2
  %1099 = load i32, i32* %1098, align 4
  %1100 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i32 %1099) #7
  br label %1107

1101:                                             ; preds = %1083
  %1102 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1103 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1102, i64 -1
  %1104 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1103, i32 0, i32 2
  %1105 = load i32, i32* %1104, align 4
  %1106 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i32 %1105) #7
  br label %1107

1107:                                             ; preds = %1101, %1095
  br label %1108

1108:                                             ; preds = %1107, %1082
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i64 0, i64 0))
  br label %1136

1109:                                             ; preds = %264
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1110:                                             ; preds = %264
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1111:                                             ; preds = %264
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1112:                                             ; preds = %264
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0))
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1113:                                             ; preds = %264
  %1114 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1115 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1114, i64 0
  %1116 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1115, i32 0, i32 0
  %1117 = load i8*, i8** %1116, align 8
  %1118 = call i32 @lookup(i8* %1117, i32 0)
  store i32 %1118, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1119:                                             ; preds = %264
  %1120 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1121 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1120, i64 -1
  %1122 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1121, i32 0, i32 2
  %1123 = load i32, i32* %1122, align 4
  %1124 = icmp sgt i32 %1123, 1
  br i1 %1124, label %1125, label %1126

1125:                                             ; preds = %1119
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i64 0, i64 0))
  br label %1126

1126:                                             ; preds = %1125, %1119
  %1127 = load %struct.YYSTYPE*, %struct.YYSTYPE** %5, align 8
  %1128 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1127, i64 -3
  %1129 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %1128, i32 0, i32 0
  %1130 = load i8*, i8** %1129, align 8
  %1131 = call i32 @lookup(i8* %1130, i32 1)
  store i32 %1131, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1132:                                             ; preds = %264
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1133:                                             ; preds = %264
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1134:                                             ; preds = %264
  store i32 2, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1135:                                             ; preds = %264
  store i32 3, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %1136

1136:                                             ; preds = %1135, %1134, %1133, %1132, %1126, %1113, %1112, %1111, %1110, %1109, %1108, %1048, %981, %946, %941, %904, %880, %870, %856, %846, %836, %835, %797, %774, %763, %744, %733, %732, %691, %663, %655, %654, %641, %635, %619, %617, %609, %597, %585, %577, %569, %564, %559, %558, %557, %552, %515, %499, %498, %489, %488, %487, %476, %467, %456, %449, %440, %428, %427, %377, %369, %332, %331, %330, %329, %327, %319, %303, %302, %284, %283, %278, %277, %276, %275, %274, %273, %272, %264
  br label %14

1137:                                             ; preds = %194, %134, %19
  %1138 = load i32, i32* %1, align 4
  ret i32 %1138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop_execution(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @had_sigint, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0))
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.82, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @byte(%struct.program_counter* %0) #0 {
  %2 = alloca %struct.program_counter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.program_counter* %0, %struct.program_counter** %2, align 8
  %5 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %6 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 10
  store i32 %8, i32* %3, align 4
  %9 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %10 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = srem i32 %11, 1024
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %15 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %16 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %14, i64 %18
  %20 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %19, i32 0, i32 1
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i8*], [16 x i8*]* %20, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  ret i8 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @execute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_label_group*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca %struct.arg_list*, align 8
  %12 = alloca %struct.bc_struct*, align 8
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  store i8 0, i8* @runtime_error, align 1
  call void @init_num(%struct.bc_struct** %10)
  %13 = load i8, i8* @interactive, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call void (i32)* @signal(i32 2, void (i32)* @stop_execution) #7
  store i32 0, i32* @had_sigint, align 4
  br label %17

17:                                               ; preds = %15, %0
  br label %18

18:                                               ; preds = %771, %17
  %19 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %20 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %20, i64 %22
  %24 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i8, i8* @runtime_error, align 1
  %29 = icmp ne i8 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i1 [ false, %18 ], [ %30, %27 ]
  br i1 %32, label %33, label %772

33:                                               ; preds = %31
  %34 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %34, i8* %5, align 1
  %35 = load i8, i8* %5, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %768 [
    i32 65, label %37
    i32 66, label %52
    i32 90, label %52
    i32 74, label %61
    i32 67, label %115
    i32 68, label %166
    i32 75, label %170
    i32 76, label %186
    i32 77, label %201
    i32 79, label %217
    i32 82, label %253
    i32 83, label %274
    i32 84, label %289
    i32 87, label %295
    i32 80, label %295
    i32 99, label %311
    i32 100, label %380
    i32 104, label %395
    i32 105, label %396
    i32 108, label %411
    i32 110, label %426
    i32 112, label %433
    i32 115, label %434
    i32 119, label %449
    i32 120, label %463
    i32 48, label %483
    i32 49, label %485
    i32 33, label %487
    i32 38, label %493
    i32 124, label %517
    i32 43, label %541
    i32 45, label %555
    i32 42, label %569
    i32 47, label %584
    i32 37, label %604
    i32 94, label %628
    i32 61, label %660
    i32 35, label %678
    i32 60, label %696
    i32 123, label %714
    i32 62, label %732
    i32 125, label %750
  ]

37:                                               ; preds = %33
  %38 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 8
  %46 = and i32 %45, 127
  %47 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load i32, i32* %8, align 4
  call void @incr_array(i32 %51)
  br label %771

52:                                               ; preds = %33, %33
  %53 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %54 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %53, i32 0, i32 0
  %55 = load %struct.bc_struct*, %struct.bc_struct** %54, align 8
  %56 = call signext i8 @is_zero(%struct.bc_struct* %55)
  %57 = icmp ne i8 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* @c_code, align 1
  call void @pop()
  br label %61

61:                                               ; preds = %52, %33
  %62 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %1, align 4
  %64 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %1, align 4
  %69 = load i8, i8* %5, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 74
  br i1 %71, label %87, label %72

72:                                               ; preds = %61
  %73 = load i8, i8* %5, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 66
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8, i8* @c_code, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %72
  %81 = load i8, i8* %5, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 90
  br i1 %83, label %84, label %114

84:                                               ; preds = %80
  %85 = load i8, i8* @c_code, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %84, %76, %61
  %88 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %88, i64 %90
  %92 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %91, i32 0, i32 3
  %93 = load %struct.bc_label_group*, %struct.bc_label_group** %92, align 8
  store %struct.bc_label_group* %93, %struct.bc_label_group** %4, align 8
  %94 = load i32, i32* %1, align 4
  %95 = ashr i32 %94, 6
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %1, align 4
  %97 = srem i32 %96, 64
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %102, %87
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %2, align 4
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.bc_label_group*, %struct.bc_label_group** %4, align 8
  %104 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %103, i32 0, i32 1
  %105 = load %struct.bc_label_group*, %struct.bc_label_group** %104, align 8
  store %struct.bc_label_group* %105, %struct.bc_label_group** %4, align 8
  br label %98

106:                                              ; preds = %98
  %107 = load %struct.bc_label_group*, %struct.bc_label_group** %4, align 8
  %108 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %107, i32 0, i32 0
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [64 x i64], [64 x i64]* %108, i64 0, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  br label %114

114:                                              ; preds = %106, %84, %80
  br label %771

115:                                              ; preds = %33
  %116 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %117 = zext i8 %116 to i32
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %122, 8
  %124 = and i32 %123, 127
  %125 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %124, %126
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %121, %115
  %129 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %129, i64 %131
  %133 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %132, i32 0, i32 0
  %134 = load i8, i8* %133, align 8
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %128
  %137 = load i8**, i8*** @f_names, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2.83, i64 0, i64 0), i8* %141)
  br label %771

142:                                              ; preds = %128
  %143 = load i32, i32* %7, align 4
  call void @process_params(%struct.program_counter* @pc, i32 %143)
  %144 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %144, i64 %146
  %148 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %147, i32 0, i32 5
  %149 = load %struct.arg_list*, %struct.arg_list** %148, align 8
  store %struct.arg_list* %149, %struct.arg_list** %11, align 8
  br label %150

150:                                              ; preds = %157, %142
  %151 = load %struct.arg_list*, %struct.arg_list** %11, align 8
  %152 = icmp ne %struct.arg_list* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load %struct.arg_list*, %struct.arg_list** %11, align 8
  %155 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  call void @auto_var(i32 %156)
  br label %157

157:                                              ; preds = %153
  %158 = load %struct.arg_list*, %struct.arg_list** %11, align 8
  %159 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %158, i32 0, i32 1
  %160 = load %struct.arg_list*, %struct.arg_list** %159, align 8
  store %struct.arg_list* %160, %struct.arg_list** %11, align 8
  br label %150

161:                                              ; preds = %150
  %162 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  call void @fpush(i32 %162)
  %163 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  call void @fpush(i32 %163)
  %164 = load i32, i32* @i_base, align 4
  call void @fpush(i32 %164)
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  br label %771

166:                                              ; preds = %33
  %167 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %168 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %167, i32 0, i32 0
  %169 = load %struct.bc_struct*, %struct.bc_struct** %168, align 8
  call void @push_copy(%struct.bc_struct* %169)
  br label %771

170:                                              ; preds = %33
  %171 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @i_base, align 4
  store i32 %174, i32* %9, align 4
  br label %179

175:                                              ; preds = %170
  %176 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %177 = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %175, %173
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %180, 10
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  call void @push_b10_const(%struct.program_counter* @pc)
  br label %185

183:                                              ; preds = %179
  %184 = load i32, i32* %9, align 4
  call void @push_constant(i8 ()* @prog_char, i32 %184)
  br label %185

185:                                              ; preds = %183, %182
  br label %771

186:                                              ; preds = %33
  %187 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %188 = zext i8 %187 to i32
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = and i32 %189, 128
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  %194 = shl i32 %193, 8
  %195 = and i32 %194, 127
  %196 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %195, %197
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %192, %186
  %200 = load i32, i32* %8, align 4
  call void @load_array(i32 %200)
  br label %771

201:                                              ; preds = %33
  %202 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %203 = zext i8 %202 to i32
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = and i32 %204, 128
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load i32, i32* %8, align 4
  %209 = shl i32 %208, 8
  %210 = and i32 %209, 127
  %211 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %210, %212
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %207, %201
  %215 = load i32, i32* %8, align 4
  %216 = trunc i32 %215 to i8
  call void @decr_array(i8 signext %216)
  br label %771

217:                                              ; preds = %33
  br label %218

218:                                              ; preds = %245, %217
  %219 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %219, i8* %6, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 34
  br i1 %221, label %222, label %246

222:                                              ; preds = %218
  %223 = load i8, i8* %6, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 92
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load i8, i8* %6, align 1
  call void @out_char(i8 signext %227)
  br label %245

228:                                              ; preds = %222
  %229 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %229, i8* %6, align 1
  %230 = load i8, i8* %6, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 34
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %246

234:                                              ; preds = %228
  %235 = load i8, i8* %6, align 1
  %236 = sext i8 %235 to i32
  switch i32 %236, label %243 [
    i32 110, label %237
    i32 116, label %238
    i32 114, label %239
    i32 98, label %240
    i32 102, label %241
    i32 92, label %242
  ]

237:                                              ; preds = %234
  call void @out_char(i8 signext 10)
  br label %244

238:                                              ; preds = %234
  call void @out_char(i8 signext 9)
  br label %244

239:                                              ; preds = %234
  call void @out_char(i8 signext 13)
  br label %244

240:                                              ; preds = %234
  call void @out_char(i8 signext 7)
  br label %244

241:                                              ; preds = %234
  call void @out_char(i8 signext 12)
  br label %244

242:                                              ; preds = %234
  call void @out_char(i8 signext 92)
  br label %244

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %242, %241, %240, %239, %238, %237
  br label %245

245:                                              ; preds = %244, %226
  br label %218

246:                                              ; preds = %233, %218
  %247 = load i8, i8* @interactive, align 1
  %248 = icmp ne i8 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %251 = call i32 @fflush(%struct._IO_FILE* %250)
  br label %252

252:                                              ; preds = %249, %246
  br label %771

253:                                              ; preds = %33
  %254 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %253
  %257 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %258 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %257, i64 %259
  %261 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %260, i32 0, i32 5
  %262 = load %struct.arg_list*, %struct.arg_list** %261, align 8
  call void @pop_vars(%struct.arg_list* %262)
  %263 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %264 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %263, i64 %265
  %267 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %266, i32 0, i32 4
  %268 = load %struct.arg_list*, %struct.arg_list** %267, align 8
  call void @pop_vars(%struct.arg_list* %268)
  %269 = call i32 @fpop()
  %270 = call i32 @fpop()
  store i32 %270, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %271 = call i32 @fpop()
  store i32 %271, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  br label %273

272:                                              ; preds = %253
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.84, i64 0, i64 0))
  br label %273

273:                                              ; preds = %272, %256
  br label %771

274:                                              ; preds = %33
  %275 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %276 = zext i8 %275 to i32
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %8, align 4
  %278 = and i32 %277, 128
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = load i32, i32* %8, align 4
  %282 = shl i32 %281, 8
  %283 = and i32 %282, 127
  %284 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %285 = zext i8 %284 to i32
  %286 = add nsw i32 %283, %285
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %280, %274
  %288 = load i32, i32* %8, align 4
  call void @store_array(i32 %288)
  br label %771

289:                                              ; preds = %33
  %290 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %291 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %290, i32 0, i32 0
  %292 = load %struct.bc_struct*, %struct.bc_struct** %291, align 8
  %293 = call signext i8 @is_zero(%struct.bc_struct* %292)
  store i8 %293, i8* @c_code, align 1
  %294 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %294)
  br label %771

295:                                              ; preds = %33, %33
  %296 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %297 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %296, i32 0, i32 0
  %298 = load %struct.bc_struct*, %struct.bc_struct** %297, align 8
  %299 = load i32, i32* @o_base, align 4
  call void @out_num(%struct.bc_struct* %298, i32 %299, void (i32)* bitcast (void (i8)* @out_char to void (i32)*))
  %300 = load i8, i8* %5, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 87
  br i1 %302, label %303, label %304

303:                                              ; preds = %295
  call void @out_char(i8 signext 10)
  br label %304

304:                                              ; preds = %303, %295
  call void @store_var(i32 3)
  %305 = load i8, i8* @interactive, align 1
  %306 = icmp ne i8 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %309 = call i32 @fflush(%struct._IO_FILE* %308)
  br label %310

310:                                              ; preds = %307, %304
  br label %771

311:                                              ; preds = %33
  %312 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %313 = zext i8 %312 to i32
  store i32 %313, i32* %7, align 4
  %314 = load i32, i32* %7, align 4
  switch i32 %314, label %379 [
    i32 76, label %315
    i32 83, label %361
    i32 82, label %369
    i32 73, label %377
  ]

315:                                              ; preds = %311
  %316 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %317 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %316, i32 0, i32 0
  %318 = load %struct.bc_struct*, %struct.bc_struct** %317, align 8
  %319 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %346

322:                                              ; preds = %315
  %323 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %324 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %323, i32 0, i32 0
  %325 = load %struct.bc_struct*, %struct.bc_struct** %324, align 8
  %326 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %346

329:                                              ; preds = %322
  %330 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %331 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %330, i32 0, i32 0
  %332 = load %struct.bc_struct*, %struct.bc_struct** %331, align 8
  %333 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %332, i32 0, i32 4
  %334 = getelementptr inbounds [1024 x i8], [1024 x i8]* %333, i64 0, i64 0
  %335 = load i8, i8* %334, align 4
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %329
  %339 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %340 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %339, i32 0, i32 0
  %341 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %342 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %341, i32 0, i32 0
  %343 = load %struct.bc_struct*, %struct.bc_struct** %342, align 8
  %344 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  call void @int2num(%struct.bc_struct** %340, i32 %345)
  br label %360

346:                                              ; preds = %329, %322, %315
  %347 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %348 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %347, i32 0, i32 0
  %349 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %350 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %349, i32 0, i32 0
  %351 = load %struct.bc_struct*, %struct.bc_struct** %350, align 8
  %352 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %355 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %354, i32 0, i32 0
  %356 = load %struct.bc_struct*, %struct.bc_struct** %355, align 8
  %357 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %353, %358
  call void @int2num(%struct.bc_struct** %348, i32 %359)
  br label %360

360:                                              ; preds = %346, %338
  br label %379

361:                                              ; preds = %311
  %362 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %363 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %362, i32 0, i32 0
  %364 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %365 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %364, i32 0, i32 0
  %366 = load %struct.bc_struct*, %struct.bc_struct** %365, align 8
  %367 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  call void @int2num(%struct.bc_struct** %363, i32 %368)
  br label %379

369:                                              ; preds = %311
  %370 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %371 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %370, i32 0, i32 0
  %372 = load i32, i32* @scale, align 4
  %373 = call i32 @bc_sqrt(%struct.bc_struct** %371, i32 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %376, label %375

375:                                              ; preds = %369
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.85, i64 0, i64 0))
  br label %376

376:                                              ; preds = %375, %369
  br label %379

377:                                              ; preds = %311
  %378 = load i32, i32* @i_base, align 4
  call void @push_constant(i8 ()* @input_char, i32 %378)
  br label %379

379:                                              ; preds = %377, %376, %361, %360, %311
  br label %771

380:                                              ; preds = %33
  %381 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %382 = zext i8 %381 to i32
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* %8, align 4
  %384 = and i32 %383, 128
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %380
  %387 = load i32, i32* %8, align 4
  %388 = shl i32 %387, 8
  %389 = and i32 %388, 127
  %390 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %391 = zext i8 %390 to i32
  %392 = add nsw i32 %389, %391
  store i32 %392, i32* %8, align 4
  br label %393

393:                                              ; preds = %386, %380
  %394 = load i32, i32* %8, align 4
  call void @decr_var(i32 %394)
  br label %771

395:                                              ; preds = %33
  call void @exit(i32 0) #8
  unreachable

396:                                              ; preds = %33
  %397 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %398 = zext i8 %397 to i32
  store i32 %398, i32* %8, align 4
  %399 = load i32, i32* %8, align 4
  %400 = and i32 %399, 128
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %396
  %403 = load i32, i32* %8, align 4
  %404 = shl i32 %403, 8
  %405 = and i32 %404, 127
  %406 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %407 = zext i8 %406 to i32
  %408 = add nsw i32 %405, %407
  store i32 %408, i32* %8, align 4
  br label %409

409:                                              ; preds = %402, %396
  %410 = load i32, i32* %8, align 4
  call void @incr_var(i32 %410)
  br label %771

411:                                              ; preds = %33
  %412 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %413 = zext i8 %412 to i32
  store i32 %413, i32* %8, align 4
  %414 = load i32, i32* %8, align 4
  %415 = and i32 %414, 128
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %411
  %418 = load i32, i32* %8, align 4
  %419 = shl i32 %418, 8
  %420 = and i32 %419, 127
  %421 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %422 = zext i8 %421 to i32
  %423 = add nsw i32 %420, %422
  store i32 %423, i32* %8, align 4
  br label %424

424:                                              ; preds = %417, %411
  %425 = load i32, i32* %8, align 4
  call void @load_var(i32 %425)
  br label %771

426:                                              ; preds = %33
  %427 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %428 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %429 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %428, i32 0, i32 0
  %430 = load %struct.bc_struct*, %struct.bc_struct** %429, align 8
  %431 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %432 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %431, i32 0, i32 0
  call void @bc_sub(%struct.bc_struct* %427, %struct.bc_struct* %430, %struct.bc_struct** %432)
  br label %771

433:                                              ; preds = %33
  call void @pop()
  br label %771

434:                                              ; preds = %33
  %435 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %436 = zext i8 %435 to i32
  store i32 %436, i32* %8, align 4
  %437 = load i32, i32* %8, align 4
  %438 = and i32 %437, 128
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %447

440:                                              ; preds = %434
  %441 = load i32, i32* %8, align 4
  %442 = shl i32 %441, 8
  %443 = and i32 %442, 127
  %444 = call zeroext i8 @byte(%struct.program_counter* @pc)
  %445 = zext i8 %444 to i32
  %446 = add nsw i32 %443, %445
  store i32 %446, i32* %8, align 4
  br label %447

447:                                              ; preds = %440, %434
  %448 = load i32, i32* %8, align 4
  call void @store_var(i32 %448)
  br label %771

449:                                              ; preds = %33
  br label %450

450:                                              ; preds = %454, %449
  %451 = call zeroext i8 @byte(%struct.program_counter* @pc)
  store i8 %451, i8* %6, align 1
  %452 = sext i8 %451 to i32
  %453 = icmp ne i32 %452, 34
  br i1 %453, label %454, label %456

454:                                              ; preds = %450
  %455 = load i8, i8* %6, align 1
  call void @out_char(i8 signext %455)
  br label %450

456:                                              ; preds = %450
  %457 = load i8, i8* @interactive, align 1
  %458 = icmp ne i8 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %461 = call i32 @fflush(%struct._IO_FILE* %460)
  br label %462

462:                                              ; preds = %459, %456
  br label %771

463:                                              ; preds = %33
  %464 = call signext i8 @check_stack(i32 2)
  %465 = icmp ne i8 %464, 0
  br i1 %465, label %466, label %482

466:                                              ; preds = %463
  %467 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %468 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %467, i32 0, i32 0
  %469 = load %struct.bc_struct*, %struct.bc_struct** %468, align 8
  store %struct.bc_struct* %469, %struct.bc_struct** %12, align 8
  %470 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %471 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %470, i32 0, i32 1
  %472 = load %struct.estack_rec*, %struct.estack_rec** %471, align 8
  %473 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %472, i32 0, i32 0
  %474 = load %struct.bc_struct*, %struct.bc_struct** %473, align 8
  %475 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %476 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %475, i32 0, i32 0
  store %struct.bc_struct* %474, %struct.bc_struct** %476, align 8
  %477 = load %struct.bc_struct*, %struct.bc_struct** %12, align 8
  %478 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %479 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %478, i32 0, i32 1
  %480 = load %struct.estack_rec*, %struct.estack_rec** %479, align 8
  %481 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %480, i32 0, i32 0
  store %struct.bc_struct* %477, %struct.bc_struct** %481, align 8
  br label %482

482:                                              ; preds = %466, %463
  br label %771

483:                                              ; preds = %33
  %484 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %484)
  br label %771

485:                                              ; preds = %33
  %486 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* %486)
  br label %771

487:                                              ; preds = %33
  %488 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %489 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %488, i32 0, i32 0
  %490 = load %struct.bc_struct*, %struct.bc_struct** %489, align 8
  %491 = call signext i8 @is_zero(%struct.bc_struct* %490)
  store i8 %491, i8* @c_code, align 1
  %492 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %492)
  br label %771

493:                                              ; preds = %33
  %494 = call signext i8 @check_stack(i32 2)
  %495 = icmp ne i8 %494, 0
  br i1 %495, label %496, label %516

496:                                              ; preds = %493
  %497 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %498 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %497, i32 0, i32 1
  %499 = load %struct.estack_rec*, %struct.estack_rec** %498, align 8
  %500 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %499, i32 0, i32 0
  %501 = load %struct.bc_struct*, %struct.bc_struct** %500, align 8
  %502 = call signext i8 @is_zero(%struct.bc_struct* %501)
  %503 = icmp ne i8 %502, 0
  br i1 %503, label %511, label %504

504:                                              ; preds = %496
  %505 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %506 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %505, i32 0, i32 0
  %507 = load %struct.bc_struct*, %struct.bc_struct** %506, align 8
  %508 = call signext i8 @is_zero(%struct.bc_struct* %507)
  %509 = icmp ne i8 %508, 0
  %510 = xor i1 %509, true
  br label %511

511:                                              ; preds = %504, %496
  %512 = phi i1 [ false, %496 ], [ %510, %504 ]
  %513 = zext i1 %512 to i32
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* @c_code, align 1
  call void @pop()
  %515 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %515)
  br label %516

516:                                              ; preds = %511, %493
  br label %771

517:                                              ; preds = %33
  %518 = call signext i8 @check_stack(i32 2)
  %519 = icmp ne i8 %518, 0
  br i1 %519, label %520, label %540

520:                                              ; preds = %517
  %521 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %522 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %521, i32 0, i32 1
  %523 = load %struct.estack_rec*, %struct.estack_rec** %522, align 8
  %524 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %523, i32 0, i32 0
  %525 = load %struct.bc_struct*, %struct.bc_struct** %524, align 8
  %526 = call signext i8 @is_zero(%struct.bc_struct* %525)
  %527 = icmp ne i8 %526, 0
  br i1 %527, label %528, label %535

528:                                              ; preds = %520
  %529 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %530 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %529, i32 0, i32 0
  %531 = load %struct.bc_struct*, %struct.bc_struct** %530, align 8
  %532 = call signext i8 @is_zero(%struct.bc_struct* %531)
  %533 = icmp ne i8 %532, 0
  %534 = xor i1 %533, true
  br label %535

535:                                              ; preds = %528, %520
  %536 = phi i1 [ true, %520 ], [ %534, %528 ]
  %537 = zext i1 %536 to i32
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* @c_code, align 1
  call void @pop()
  %539 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %539)
  br label %540

540:                                              ; preds = %535, %517
  br label %771

541:                                              ; preds = %33
  %542 = call signext i8 @check_stack(i32 2)
  %543 = icmp ne i8 %542, 0
  br i1 %543, label %544, label %554

544:                                              ; preds = %541
  %545 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %546 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %545, i32 0, i32 1
  %547 = load %struct.estack_rec*, %struct.estack_rec** %546, align 8
  %548 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %547, i32 0, i32 0
  %549 = load %struct.bc_struct*, %struct.bc_struct** %548, align 8
  %550 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %551 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %550, i32 0, i32 0
  %552 = load %struct.bc_struct*, %struct.bc_struct** %551, align 8
  call void @bc_add(%struct.bc_struct* %549, %struct.bc_struct* %552, %struct.bc_struct** %10)
  call void @pop()
  call void @pop()
  %553 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* %553)
  call void @init_num(%struct.bc_struct** %10)
  br label %554

554:                                              ; preds = %544, %541
  br label %771

555:                                              ; preds = %33
  %556 = call signext i8 @check_stack(i32 2)
  %557 = icmp ne i8 %556, 0
  br i1 %557, label %558, label %568

558:                                              ; preds = %555
  %559 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %560 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %559, i32 0, i32 1
  %561 = load %struct.estack_rec*, %struct.estack_rec** %560, align 8
  %562 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %561, i32 0, i32 0
  %563 = load %struct.bc_struct*, %struct.bc_struct** %562, align 8
  %564 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %565 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %564, i32 0, i32 0
  %566 = load %struct.bc_struct*, %struct.bc_struct** %565, align 8
  call void @bc_sub(%struct.bc_struct* %563, %struct.bc_struct* %566, %struct.bc_struct** %10)
  call void @pop()
  call void @pop()
  %567 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* %567)
  call void @init_num(%struct.bc_struct** %10)
  br label %568

568:                                              ; preds = %558, %555
  br label %771

569:                                              ; preds = %33
  %570 = call signext i8 @check_stack(i32 2)
  %571 = icmp ne i8 %570, 0
  br i1 %571, label %572, label %583

572:                                              ; preds = %569
  %573 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %574 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %573, i32 0, i32 1
  %575 = load %struct.estack_rec*, %struct.estack_rec** %574, align 8
  %576 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %575, i32 0, i32 0
  %577 = load %struct.bc_struct*, %struct.bc_struct** %576, align 8
  %578 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %579 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %578, i32 0, i32 0
  %580 = load %struct.bc_struct*, %struct.bc_struct** %579, align 8
  %581 = load i32, i32* @scale, align 4
  call void @bc_multiply(%struct.bc_struct* %577, %struct.bc_struct* %580, %struct.bc_struct** %10, i32 %581)
  call void @pop()
  call void @pop()
  %582 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* %582)
  call void @init_num(%struct.bc_struct** %10)
  br label %583

583:                                              ; preds = %572, %569
  br label %771

584:                                              ; preds = %33
  %585 = call signext i8 @check_stack(i32 2)
  %586 = icmp ne i8 %585, 0
  br i1 %586, label %587, label %603

587:                                              ; preds = %584
  %588 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %589 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %588, i32 0, i32 1
  %590 = load %struct.estack_rec*, %struct.estack_rec** %589, align 8
  %591 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %590, i32 0, i32 0
  %592 = load %struct.bc_struct*, %struct.bc_struct** %591, align 8
  %593 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %594 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %593, i32 0, i32 0
  %595 = load %struct.bc_struct*, %struct.bc_struct** %594, align 8
  %596 = load i32, i32* @scale, align 4
  %597 = call i32 @bc_divide(%struct.bc_struct* %592, %struct.bc_struct* %595, %struct.bc_struct** %10, i32 %596)
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %587
  call void @pop()
  call void @pop()
  %600 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* %600)
  call void @init_num(%struct.bc_struct** %10)
  br label %602

601:                                              ; preds = %587
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.86, i64 0, i64 0))
  br label %602

602:                                              ; preds = %601, %599
  br label %603

603:                                              ; preds = %602, %584
  br label %771

604:                                              ; preds = %33
  %605 = call signext i8 @check_stack(i32 2)
  %606 = icmp ne i8 %605, 0
  br i1 %606, label %607, label %627

607:                                              ; preds = %604
  %608 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %609 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %608, i32 0, i32 0
  %610 = load %struct.bc_struct*, %struct.bc_struct** %609, align 8
  %611 = call signext i8 @is_zero(%struct.bc_struct* %610)
  %612 = icmp ne i8 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %607
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.87, i64 0, i64 0))
  br label %626

614:                                              ; preds = %607
  %615 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %616 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %615, i32 0, i32 1
  %617 = load %struct.estack_rec*, %struct.estack_rec** %616, align 8
  %618 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %617, i32 0, i32 0
  %619 = load %struct.bc_struct*, %struct.bc_struct** %618, align 8
  %620 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %621 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %620, i32 0, i32 0
  %622 = load %struct.bc_struct*, %struct.bc_struct** %621, align 8
  %623 = load i32, i32* @scale, align 4
  %624 = call i32 @bc_modulo(%struct.bc_struct* %619, %struct.bc_struct* %622, %struct.bc_struct** %10, i32 %623)
  call void @pop()
  call void @pop()
  %625 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* %625)
  call void @init_num(%struct.bc_struct** %10)
  br label %626

626:                                              ; preds = %614, %613
  br label %627

627:                                              ; preds = %626, %604
  br label %771

628:                                              ; preds = %33
  %629 = call signext i8 @check_stack(i32 2)
  %630 = icmp ne i8 %629, 0
  br i1 %630, label %631, label %659

631:                                              ; preds = %628
  %632 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %633 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %632, i32 0, i32 1
  %634 = load %struct.estack_rec*, %struct.estack_rec** %633, align 8
  %635 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %634, i32 0, i32 0
  %636 = load %struct.bc_struct*, %struct.bc_struct** %635, align 8
  %637 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %638 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %637, i32 0, i32 0
  %639 = load %struct.bc_struct*, %struct.bc_struct** %638, align 8
  %640 = load i32, i32* @scale, align 4
  call void @bc_raise(%struct.bc_struct* %636, %struct.bc_struct* %639, %struct.bc_struct** %10, i32 %640)
  %641 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %642 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %641, i32 0, i32 1
  %643 = load %struct.estack_rec*, %struct.estack_rec** %642, align 8
  %644 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %643, i32 0, i32 0
  %645 = load %struct.bc_struct*, %struct.bc_struct** %644, align 8
  %646 = call signext i8 @is_zero(%struct.bc_struct* %645)
  %647 = sext i8 %646 to i32
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %657

649:                                              ; preds = %631
  %650 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %651 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %650, i32 0, i32 0
  %652 = load %struct.bc_struct*, %struct.bc_struct** %651, align 8
  %653 = call signext i8 @is_neg(%struct.bc_struct* %652)
  %654 = sext i8 %653 to i32
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %649
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.88, i64 0, i64 0))
  br label %657

657:                                              ; preds = %656, %649, %631
  call void @pop()
  call void @pop()
  %658 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* %658)
  call void @init_num(%struct.bc_struct** %10)
  br label %659

659:                                              ; preds = %657, %628
  br label %771

660:                                              ; preds = %33
  %661 = call signext i8 @check_stack(i32 2)
  %662 = icmp ne i8 %661, 0
  br i1 %662, label %663, label %677

663:                                              ; preds = %660
  %664 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %665 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %664, i32 0, i32 1
  %666 = load %struct.estack_rec*, %struct.estack_rec** %665, align 8
  %667 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %666, i32 0, i32 0
  %668 = load %struct.bc_struct*, %struct.bc_struct** %667, align 8
  %669 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %670 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %669, i32 0, i32 0
  %671 = load %struct.bc_struct*, %struct.bc_struct** %670, align 8
  %672 = call i32 @bc_compare(%struct.bc_struct* %668, %struct.bc_struct* %671)
  %673 = icmp eq i32 %672, 0
  %674 = zext i1 %673 to i32
  %675 = trunc i32 %674 to i8
  store i8 %675, i8* @c_code, align 1
  call void @pop()
  %676 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %676)
  br label %677

677:                                              ; preds = %663, %660
  br label %771

678:                                              ; preds = %33
  %679 = call signext i8 @check_stack(i32 2)
  %680 = icmp ne i8 %679, 0
  br i1 %680, label %681, label %695

681:                                              ; preds = %678
  %682 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %683 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %682, i32 0, i32 1
  %684 = load %struct.estack_rec*, %struct.estack_rec** %683, align 8
  %685 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %684, i32 0, i32 0
  %686 = load %struct.bc_struct*, %struct.bc_struct** %685, align 8
  %687 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %688 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %687, i32 0, i32 0
  %689 = load %struct.bc_struct*, %struct.bc_struct** %688, align 8
  %690 = call i32 @bc_compare(%struct.bc_struct* %686, %struct.bc_struct* %689)
  %691 = icmp ne i32 %690, 0
  %692 = zext i1 %691 to i32
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* @c_code, align 1
  call void @pop()
  %694 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %694)
  br label %695

695:                                              ; preds = %681, %678
  br label %771

696:                                              ; preds = %33
  %697 = call signext i8 @check_stack(i32 2)
  %698 = icmp ne i8 %697, 0
  br i1 %698, label %699, label %713

699:                                              ; preds = %696
  %700 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %701 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %700, i32 0, i32 1
  %702 = load %struct.estack_rec*, %struct.estack_rec** %701, align 8
  %703 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %702, i32 0, i32 0
  %704 = load %struct.bc_struct*, %struct.bc_struct** %703, align 8
  %705 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %706 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %705, i32 0, i32 0
  %707 = load %struct.bc_struct*, %struct.bc_struct** %706, align 8
  %708 = call i32 @bc_compare(%struct.bc_struct* %704, %struct.bc_struct* %707)
  %709 = icmp eq i32 %708, -1
  %710 = zext i1 %709 to i32
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* @c_code, align 1
  call void @pop()
  %712 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %712)
  br label %713

713:                                              ; preds = %699, %696
  br label %771

714:                                              ; preds = %33
  %715 = call signext i8 @check_stack(i32 2)
  %716 = icmp ne i8 %715, 0
  br i1 %716, label %717, label %731

717:                                              ; preds = %714
  %718 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %719 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %718, i32 0, i32 1
  %720 = load %struct.estack_rec*, %struct.estack_rec** %719, align 8
  %721 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %720, i32 0, i32 0
  %722 = load %struct.bc_struct*, %struct.bc_struct** %721, align 8
  %723 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %724 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %723, i32 0, i32 0
  %725 = load %struct.bc_struct*, %struct.bc_struct** %724, align 8
  %726 = call i32 @bc_compare(%struct.bc_struct* %722, %struct.bc_struct* %725)
  %727 = icmp sle i32 %726, 0
  %728 = zext i1 %727 to i32
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* @c_code, align 1
  call void @pop()
  %730 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %730)
  br label %731

731:                                              ; preds = %717, %714
  br label %771

732:                                              ; preds = %33
  %733 = call signext i8 @check_stack(i32 2)
  %734 = icmp ne i8 %733, 0
  br i1 %734, label %735, label %749

735:                                              ; preds = %732
  %736 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %737 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %736, i32 0, i32 1
  %738 = load %struct.estack_rec*, %struct.estack_rec** %737, align 8
  %739 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %738, i32 0, i32 0
  %740 = load %struct.bc_struct*, %struct.bc_struct** %739, align 8
  %741 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %742 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %741, i32 0, i32 0
  %743 = load %struct.bc_struct*, %struct.bc_struct** %742, align 8
  %744 = call i32 @bc_compare(%struct.bc_struct* %740, %struct.bc_struct* %743)
  %745 = icmp eq i32 %744, 1
  %746 = zext i1 %745 to i32
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* @c_code, align 1
  call void @pop()
  %748 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %748)
  br label %749

749:                                              ; preds = %735, %732
  br label %771

750:                                              ; preds = %33
  %751 = call signext i8 @check_stack(i32 2)
  %752 = icmp ne i8 %751, 0
  br i1 %752, label %753, label %767

753:                                              ; preds = %750
  %754 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %755 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %754, i32 0, i32 1
  %756 = load %struct.estack_rec*, %struct.estack_rec** %755, align 8
  %757 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %756, i32 0, i32 0
  %758 = load %struct.bc_struct*, %struct.bc_struct** %757, align 8
  %759 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %760 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %759, i32 0, i32 0
  %761 = load %struct.bc_struct*, %struct.bc_struct** %760, align 8
  %762 = call i32 @bc_compare(%struct.bc_struct* %758, %struct.bc_struct* %761)
  %763 = icmp sge i32 %762, 0
  %764 = zext i1 %763 to i32
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* @c_code, align 1
  call void @pop()
  %766 = load i8, i8* @c_code, align 1
  call void @assign(i8 signext %766)
  br label %767

767:                                              ; preds = %753, %750
  br label %771

768:                                              ; preds = %33
  %769 = load i8, i8* %5, align 1
  %770 = sext i8 %769 to i32
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8.89, i64 0, i64 0), i32 %770)
  br label %771

771:                                              ; preds = %768, %767, %749, %731, %713, %695, %677, %659, %627, %603, %583, %568, %554, %540, %516, %487, %485, %483, %482, %462, %447, %433, %426, %424, %409, %393, %379, %310, %289, %287, %273, %252, %214, %199, %185, %166, %161, %136, %114, %50
  br label %18

772:                                              ; preds = %31
  br label %773

773:                                              ; preds = %776, %772
  %774 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %792

776:                                              ; preds = %773
  %777 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %778 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %777, i64 %779
  %781 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %780, i32 0, i32 5
  %782 = load %struct.arg_list*, %struct.arg_list** %781, align 8
  call void @pop_vars(%struct.arg_list* %782)
  %783 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %784 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %783, i64 %785
  %787 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %786, i32 0, i32 4
  %788 = load %struct.arg_list*, %struct.arg_list** %787, align 8
  call void @pop_vars(%struct.arg_list* %788)
  %789 = call i32 @fpop()
  %790 = call i32 @fpop()
  store i32 %790, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %791 = call i32 @fpop()
  store i32 %791, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  br label %773

792:                                              ; preds = %773
  br label %793

793:                                              ; preds = %796, %792
  %794 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %795 = icmp ne %struct.estack_rec* %794, null
  br i1 %795, label %796, label %797

796:                                              ; preds = %793
  call void @pop()
  br label %793

797:                                              ; preds = %793
  %798 = load i8, i8* @interactive, align 1
  %799 = icmp ne i8 %798, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %797
  %801 = call void (i32)* @signal(i32 2, void (i32)* @use_quit) #7
  %802 = load i32, i32* @had_sigint, align 4
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %804, label %806

804:                                              ; preds = %800
  %805 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9.90, i64 0, i64 0))
  br label %806

806:                                              ; preds = %804, %800
  br label %807

807:                                              ; preds = %806, %797
  ret void
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_b10_const(%struct.program_counter* %0) #0 {
  %2 = alloca %struct.program_counter*, align 8
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca %struct.program_counter, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.program_counter* %0, %struct.program_counter** %2, align 8
  %9 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %10 = bitcast %struct.program_counter* %4 to i8*
  %11 = bitcast %struct.program_counter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = call zeroext i8 @byte(%struct.program_counter* %4)
  store i8 %12, i8* %7, align 1
  br label %13

13:                                               ; preds = %23, %1
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 46
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 58
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = call zeroext i8 @byte(%struct.program_counter* %4)
  store i8 %26, i8* %7, align 1
  br label %13

27:                                               ; preds = %21
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = call zeroext i8 @byte(%struct.program_counter* %4)
  store i8 %32, i8* %7, align 1
  br label %33

33:                                               ; preds = %37, %31
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = call zeroext i8 @byte(%struct.program_counter* %4)
  store i8 %40, i8* %7, align 1
  br label %33

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %44 = call zeroext i8 @byte(%struct.program_counter* %43)
  store i8 %44, i8* %7, align 1
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i8, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %55)
  %56 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %57 = call zeroext i8 @byte(%struct.program_counter* %56)
  store i8 %57, i8* %7, align 1
  br label %121

58:                                               ; preds = %50
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* %63)
  %64 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %65 = call zeroext i8 @byte(%struct.program_counter* %64)
  store i8 %65, i8* %7, align 1
  br label %121

66:                                               ; preds = %58
  %67 = load i8, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sgt i32 %68, 9
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  call void @init_num(%struct.bc_struct** %3)
  %71 = load i8, i8* %7, align 1
  %72 = sext i8 %71 to i32
  call void @int2num(%struct.bc_struct** %3, i32 %72)
  %73 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  call void @push_num(%struct.bc_struct* %73)
  %74 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %75 = call zeroext i8 @byte(%struct.program_counter* %74)
  store i8 %75, i8* %7, align 1
  br label %121

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %47, %42
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = call %struct.bc_struct* @new_num(i32 1, i32 %81)
  store %struct.bc_struct* %82, %struct.bc_struct** %3, align 8
  %83 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %84 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %83, i32 0, i32 4
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %84, i64 0, i64 0
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  store i8 0, i8* %86, align 1
  br label %95

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call %struct.bc_struct* @new_num(i32 %89, i32 %90)
  store %struct.bc_struct* %91, %struct.bc_struct** %3, align 8
  %92 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %93 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %92, i32 0, i32 4
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %93, i64 0, i64 0
  store i8* %94, i8** %8, align 8
  br label %95

95:                                               ; preds = %88, %80
  br label %96

96:                                               ; preds = %116, %95
  %97 = load i8, i8* %7, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 58
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i8, i8* %7, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 46
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i8, i8* %7, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sgt i32 %106, 9
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  store i8 9, i8* %109, align 1
  br label %115

111:                                              ; preds = %104
  %112 = load i8, i8* %7, align 1
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %8, align 8
  store i8 %112, i8* %113, align 1
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %100
  %117 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %118 = call zeroext i8 @byte(%struct.program_counter* %117)
  store i8 %118, i8* %7, align 1
  br label %96

119:                                              ; preds = %96
  %120 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  call void @push_num(%struct.bc_struct* %120)
  br label %121

121:                                              ; preds = %119, %70, %62, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @prog_char() #0 {
  %1 = call zeroext i8 @byte(%struct.program_counter* @pc)
  ret i8 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_constant(i8 ()* %0, i32 %1) #0 {
  %3 = alloca i8 ()*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct*, align 8
  %8 = alloca %struct.bc_struct*, align 8
  %9 = alloca %struct.bc_struct*, align 8
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8 ()* %0, i8 ()** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @init_num(%struct.bc_struct** %7)
  call void @init_num(%struct.bc_struct** %8)
  call void @init_num(%struct.bc_struct** %9)
  %14 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %15 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %14)
  store %struct.bc_struct* %15, %struct.bc_struct** %6, align 8
  store i8 0, i8* %13, align 1
  %16 = load i32, i32* %4, align 4
  call void @int2num(%struct.bc_struct** %9, i32 %16)
  %17 = load i8 ()*, i8 ()** %3, align 8
  %18 = call signext i8 %17()
  store i8 %18, i8* %11, align 1
  br label %19

19:                                               ; preds = %23, %2
  %20 = load i8, i8* %11, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8 ()*, i8 ()** %3, align 8
  %25 = call signext i8 %24()
  store i8 %25, i8* %11, align 1
  br label %19

26:                                               ; preds = %19
  %27 = load i8, i8* %11, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 43
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8 ()*, i8 ()** %3, align 8
  %32 = call signext i8 %31()
  store i8 %32, i8* %11, align 1
  br label %41

33:                                               ; preds = %26
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  store i8 1, i8* %13, align 1
  %38 = load i8 ()*, i8 ()** %3, align 8
  %39 = call signext i8 %38()
  store i8 %39, i8* %11, align 1
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i8, i8* %11, align 1
  store i8 %46, i8* %12, align 1
  %47 = load i8 ()*, i8 ()** %3, align 8
  %48 = call signext i8 %47()
  store i8 %48, i8* %11, align 1
  %49 = load i8, i8* %11, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i8, i8* %12, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %12, align 1
  br label %61

61:                                               ; preds = %57, %52, %45
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  call void @int2num(%struct.bc_struct** %6, i32 %63)
  br label %64

64:                                               ; preds = %61, %41
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp slt i32 %67, 16
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i8, i8* %11, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp slt i32 %71, 16
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i8, i8* %11, align 1
  %75 = sext i8 %74 to i32
  %76 = load i32, i32* %4, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 1
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %11, align 1
  br label %82

82:                                               ; preds = %78, %73, %69
  %83 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %84 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  call void @bc_multiply(%struct.bc_struct* %83, %struct.bc_struct* %84, %struct.bc_struct** %8, i32 0)
  %85 = load i8, i8* %11, align 1
  %86 = sext i8 %85 to i32
  call void @int2num(%struct.bc_struct** %7, i32 %86)
  %87 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %88 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  call void @bc_add(%struct.bc_struct* %87, %struct.bc_struct* %88, %struct.bc_struct** %6)
  %89 = load i8 ()*, i8 ()** %3, align 8
  %90 = call signext i8 %89()
  store i8 %90, i8* %11, align 1
  br label %65

91:                                               ; preds = %65
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 46
  br i1 %94, label %95, label %148

95:                                               ; preds = %91
  %96 = load i8 ()*, i8 ()** %3, align 8
  %97 = call signext i8 %96()
  store i8 %97, i8* %11, align 1
  %98 = load i8, i8* %11, align 1
  %99 = sext i8 %98 to i32
  %100 = load i32, i32* %4, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 1
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %11, align 1
  br label %106

106:                                              ; preds = %102, %95
  call void @free_num(%struct.bc_struct** %8)
  call void @free_num(%struct.bc_struct** %7)
  %107 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %108 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %107)
  store %struct.bc_struct* %108, %struct.bc_struct** %10, align 8
  %109 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %110 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %109)
  store %struct.bc_struct* %110, %struct.bc_struct** %8, align 8
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %140, %106
  %112 = load i8, i8* %11, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp slt i32 %113, 16
  br i1 %114, label %115, label %141

115:                                              ; preds = %111
  %116 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %117 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  call void @bc_multiply(%struct.bc_struct* %116, %struct.bc_struct* %117, %struct.bc_struct** %8, i32 0)
  %118 = load i8, i8* %11, align 1
  %119 = sext i8 %118 to i32
  call void @int2num(%struct.bc_struct** %7, i32 %119)
  %120 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %121 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  call void @bc_add(%struct.bc_struct* %120, %struct.bc_struct* %121, %struct.bc_struct** %8)
  %122 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %123 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  call void @bc_multiply(%struct.bc_struct* %122, %struct.bc_struct* %123, %struct.bc_struct** %10, i32 0)
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  %126 = load i8 ()*, i8 ()** %3, align 8
  %127 = call signext i8 %126()
  store i8 %127, i8* %11, align 1
  %128 = load i8, i8* %11, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp slt i32 %129, 16
  br i1 %130, label %131, label %140

131:                                              ; preds = %115
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = load i32, i32* %4, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* %4, align 4
  %138 = sub nsw i32 %137, 1
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %11, align 1
  br label %140

140:                                              ; preds = %136, %131, %115
  br label %111

141:                                              ; preds = %111
  %142 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %143 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @bc_divide(%struct.bc_struct* %142, %struct.bc_struct* %143, %struct.bc_struct** %8, i32 %144)
  %146 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %147 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  call void @bc_add(%struct.bc_struct* %146, %struct.bc_struct* %147, %struct.bc_struct** %6)
  br label %148

148:                                              ; preds = %141, %91
  %149 = load i8, i8* %13, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %153 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  call void @bc_sub(%struct.bc_struct* %152, %struct.bc_struct* %153, %struct.bc_struct** %6)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  call void @push_num(%struct.bc_struct* %155)
  call void @free_num(%struct.bc_struct** %7)
  call void @free_num(%struct.bc_struct** %8)
  call void @free_num(%struct.bc_struct** %9)
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @assign(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %4 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %3, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %4)
  %5 = load i8, i8* %2, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %9 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %8)
  %10 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %11 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %10, i32 0, i32 0
  store %struct.bc_struct* %9, %struct.bc_struct** %11, align 8
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %14 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %13)
  %15 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %16 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %15, i32 0, i32 0
  store %struct.bc_struct* %14, %struct.bc_struct** %16, align 8
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @input_char() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = call i32 @getchar()
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 92
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = call i32 @getchar()
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = call i32 @getchar()
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %2, align 1
  br label %17

17:                                               ; preds = %14, %8
  br label %18

18:                                               ; preds = %17, %0
  %19 = call i16** @__ctype_b_loc() #10
  %20 = load i16*, i16** %19, align 8
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i8, i8* %2, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 48
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %1, align 1
  br label %82

34:                                               ; preds = %18
  %35 = load i8, i8* %2, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 65
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 70
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8, i8* %2, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, 10
  %46 = sub nsw i32 %45, 65
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %1, align 1
  br label %82

48:                                               ; preds = %38, %34
  %49 = load i8, i8* %2, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8, i8* %2, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 102
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8, i8* %2, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, 10
  %60 = sub nsw i32 %59, 97
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %1, align 1
  br label %82

62:                                               ; preds = %52, %48
  %63 = load i8, i8* %2, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %2, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 43
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8, i8* %2, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %66, %62
  %75 = load i8, i8* %2, align 1
  store i8 %75, i8* %1, align 1
  br label %82

76:                                               ; preds = %70
  %77 = load i8, i8* %2, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %78, 32
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i8 32, i8* %1, align 1
  br label %82

81:                                               ; preds = %76
  store i8 58, i8* %1, align 1
  br label %82

82:                                               ; preds = %81, %80, %74, %56, %42, %29
  %83 = load i8, i8* %1, align 1
  ret i8 %83
}

declare dso_local i32 @getchar() #2

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_load() #0 {
  call void @clear_func(i8 signext 0)
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  store i8 0, i8* @load_str, align 1
  store i8 0, i8* @load_const, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addbyte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @had_error, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %11 = ashr i32 %10, 10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %14 = srem i32 %12, 1024
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i64 0, i64 0))
  br label %62

19:                                               ; preds = %9
  %20 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %20, i64 %22
  %24 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %23, i32 0, i32 1
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8*], [16 x i8*]* %24, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = call noalias i8* @malloc(i64 1024) #7
  %32 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %32, i64 %34
  %36 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %35, i32 0, i32 1
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x i8*], [16 x i8*]* %36, i64 0, i64 %38
  store i8* %31, i8** %39, align 8
  br label %40

40:                                               ; preds = %30, %19
  %41 = load i32, i32* %2, align 4
  %42 = trunc i32 %41 to i8
  %43 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %43, i64 %45
  %47 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %46, i32 0, i32 1
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i8*], [16 x i8*]* %47, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %42, i8* %54, align 1
  %55 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %55, i64 %57
  %59 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %40, %18, %8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_label(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bc_label_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = ashr i64 %7, 6
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* %2, align 8
  %11 = srem i64 %10, 64
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %14, i64 %16
  %18 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %17, i32 0, i32 3
  %19 = load %struct.bc_label_group*, %struct.bc_label_group** %18, align 8
  %20 = icmp eq %struct.bc_label_group* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = call noalias i8* @malloc(i64 520) #7
  %23 = bitcast i8* %22 to %struct.bc_label_group*
  %24 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %24, i64 %26
  %28 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %27, i32 0, i32 3
  store %struct.bc_label_group* %23, %struct.bc_label_group** %28, align 8
  %29 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %29, i64 %31
  %33 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %32, i32 0, i32 3
  %34 = load %struct.bc_label_group*, %struct.bc_label_group** %33, align 8
  %35 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %34, i32 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %35, align 8
  br label %36

36:                                               ; preds = %21, %1
  %37 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %37, i64 %39
  %41 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %40, i32 0, i32 3
  %42 = load %struct.bc_label_group*, %struct.bc_label_group** %41, align 8
  store %struct.bc_label_group* %42, %struct.bc_label_group** %3, align 8
  br label %43

43:                                               ; preds = %60, %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %48 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %47, i32 0, i32 1
  %49 = load %struct.bc_label_group*, %struct.bc_label_group** %48, align 8
  %50 = icmp eq %struct.bc_label_group* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = call noalias i8* @malloc(i64 520) #7
  %53 = bitcast i8* %52 to %struct.bc_label_group*
  %54 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %55 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %54, i32 0, i32 1
  store %struct.bc_label_group* %53, %struct.bc_label_group** %55, align 8
  %56 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %57 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %56, i32 0, i32 1
  %58 = load %struct.bc_label_group*, %struct.bc_label_group** %57, align 8
  %59 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %58, i32 0, i32 1
  store %struct.bc_label_group* null, %struct.bc_label_group** %59, align 8
  br label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %62 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %61, i32 0, i32 1
  %63 = load %struct.bc_label_group*, %struct.bc_label_group** %62, align 8
  store %struct.bc_label_group* %63, %struct.bc_label_group** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.bc_label_group*, %struct.bc_label_group** %3, align 8
  %70 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [64 x i64], [64 x i64]* %70, i64 0, i64 %72
  store i64 %68, i64* %73, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @long_val(i8** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  store i8 1, i8* %5, align 1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  br label %15

15:                                               ; preds = %11, %1
  br label %16

16:                                               ; preds = %29, %15
  %17 = call i16** @__ctype_b_loc() #10
  %18 = load i16*, i16** %17, align 8
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %18, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 10
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %31, %36
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* %4, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load i8, i8* %5, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 0, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %2, align 8
  br label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_code(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.program_counter, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %288, %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %289

15:                                               ; preds = %10
  %16 = load i32, i32* @had_error, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %289

19:                                               ; preds = %15
  %20 = load i8, i8* @load_str, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8 0, i8* @load_str, align 1
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  call void @addbyte(i32 %32)
  br label %288

33:                                               ; preds = %19
  %34 = load i8, i8* @load_const, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  br label %85

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 58
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  store i8 0, i8* @load_const, align 1
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  call void @addbyte(i32 %53)
  br label %84

54:                                               ; preds = %44
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  call void @addbyte(i32 %63)
  br label %83

64:                                               ; preds = %54
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 65
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %3, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, 10
  %75 = sub nsw i32 %74, 65
  call void @addbyte(i32 %75)
  br label %82

76:                                               ; preds = %64
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %3, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 48
  call void @addbyte(i32 %81)
  br label %82

82:                                               ; preds = %76, %69
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %49
  br label %85

85:                                               ; preds = %84, %41
  br label %287

86:                                               ; preds = %33
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  switch i32 %89, label %280 [
    i32 34, label %90
    i32 78, label %91
    i32 66, label %96
    i32 74, label %96
    i32 90, label %96
    i32 70, label %116
    i32 93, label %190
    i32 67, label %197
    i32 99, label %238
    i32 75, label %246
    i32 100, label %250
    i32 105, label %250
    i32 108, label %250
    i32 115, label %250
    i32 65, label %250
    i32 77, label %250
    i32 76, label %250
    i32 83, label %250
    i32 64, label %271
    i32 10, label %279
  ]

90:                                               ; preds = %86
  store i8 1, i8* @load_str, align 1
  br label %284

91:                                               ; preds = %86
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %3, align 8
  %94 = call i64 @long_val(i8** %3)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  call void @def_label(i64 %95)
  br label %284

96:                                               ; preds = %86, %86, %86
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %3, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  call void @addbyte(i32 %100)
  %101 = call i64 @long_val(i8** %3)
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  %103 = icmp sgt i64 %102, 65535
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.124, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

107:                                              ; preds = %96
  %108 = load i64, i64* %5, align 8
  %109 = trunc i64 %108 to i8
  %110 = sext i8 %109 to i32
  %111 = and i32 %110, 255
  call void @addbyte(i32 %111)
  %112 = load i64, i64* %5, align 8
  %113 = trunc i64 %112 to i8
  %114 = sext i8 %113 to i32
  %115 = ashr i32 %114, 8
  call void @addbyte(i32 %115)
  br label %284

116:                                              ; preds = %86
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %3, align 8
  %119 = call i64 @long_val(i8** %3)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = trunc i64 %120 to i8
  call void @clear_func(i8 signext %121)
  br label %122

122:                                              ; preds = %136, %116
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  %125 = load i8, i8* %123, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 46
  br i1 %127, label %128, label %154

128:                                              ; preds = %122
  %129 = load i8*, i8** %3, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 46
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  br label %154

136:                                              ; preds = %128
  %137 = call i64 @long_val(i8** %3)
  store i64 %137, i64* %4, align 8
  %138 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %139 = load i64, i64* %7, align 8
  %140 = trunc i64 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %138, i64 %141
  %143 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %142, i32 0, i32 4
  %144 = load %struct.arg_list*, %struct.arg_list** %143, align 8
  %145 = load i64, i64* %4, align 8
  %146 = trunc i64 %145 to i8
  %147 = call %struct.arg_list* @nextarg(%struct.arg_list* %144, i8 signext %146)
  %148 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %149 = load i64, i64* %7, align 8
  %150 = trunc i64 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %148, i64 %151
  %153 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %152, i32 0, i32 4
  store %struct.arg_list* %147, %struct.arg_list** %153, align 8
  br label %122

154:                                              ; preds = %133, %122
  br label %155

155:                                              ; preds = %168, %154
  %156 = load i8*, i8** %3, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 91
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = load i8*, i8** %3, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 44
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %3, align 8
  br label %168

168:                                              ; preds = %165, %160
  %169 = call i64 @long_val(i8** %3)
  store i64 %169, i64* %4, align 8
  %170 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %171 = load i64, i64* %7, align 8
  %172 = trunc i64 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %170, i64 %173
  %175 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %174, i32 0, i32 5
  %176 = load %struct.arg_list*, %struct.arg_list** %175, align 8
  %177 = load i64, i64* %4, align 8
  %178 = trunc i64 %177 to i8
  %179 = call %struct.arg_list* @nextarg(%struct.arg_list* %176, i8 signext %178)
  %180 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %181 = load i64, i64* %7, align 8
  %182 = trunc i64 %181 to i32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %180, i64 %183
  %185 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %184, i32 0, i32 5
  store %struct.arg_list* %179, %struct.arg_list** %185, align 8
  br label %155

186:                                              ; preds = %155
  %187 = bitcast %struct.program_counter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 bitcast (%struct.program_counter* @load_adr to i8*), i64 8, i1 false)
  %188 = load i64, i64* %7, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 1), align 4
  br label %284

190:                                              ; preds = %86
  %191 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @load_adr, i32 0, i32 0), align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %191, i64 %193
  %195 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %194, i32 0, i32 0
  store i8 1, i8* %195, align 8
  %196 = bitcast %struct.program_counter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.program_counter* @load_adr to i8*), i8* align 4 %196, i64 8, i1 false)
  br label %284

197:                                              ; preds = %86
  %198 = load i8*, i8** %3, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %3, align 8
  %200 = load i8, i8* %198, align 1
  %201 = sext i8 %200 to i32
  call void @addbyte(i32 %201)
  %202 = call i64 @long_val(i8** %3)
  store i64 %202, i64* %7, align 8
  %203 = load i64, i64* %7, align 8
  %204 = icmp slt i64 %203, 128
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load i64, i64* %7, align 8
  %207 = trunc i64 %206 to i8
  %208 = sext i8 %207 to i32
  call void @addbyte(i32 %208)
  br label %218

209:                                              ; preds = %197
  %210 = load i64, i64* %7, align 8
  %211 = ashr i64 %210, 8
  %212 = and i64 %211, 255
  %213 = or i64 %212, 128
  %214 = trunc i64 %213 to i32
  call void @addbyte(i32 %214)
  %215 = load i64, i64* %7, align 8
  %216 = and i64 %215, 255
  %217 = trunc i64 %216 to i32
  call void @addbyte(i32 %217)
  br label %218

218:                                              ; preds = %209, %205
  %219 = load i8*, i8** %3, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 44
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i8*, i8** %3, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %3, align 8
  br label %226

226:                                              ; preds = %223, %218
  br label %227

227:                                              ; preds = %232, %226
  %228 = load i8*, i8** %3, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 58
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %3, align 8
  %235 = load i8, i8* %233, align 1
  %236 = sext i8 %235 to i32
  call void @addbyte(i32 %236)
  br label %227

237:                                              ; preds = %227
  call void @addbyte(i32 58)
  br label %284

238:                                              ; preds = %86
  %239 = load i8*, i8** %3, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %3, align 8
  %241 = load i8, i8* %239, align 1
  %242 = sext i8 %241 to i32
  call void @addbyte(i32 %242)
  %243 = load i8*, i8** %3, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  call void @addbyte(i32 %245)
  br label %284

246:                                              ; preds = %86
  %247 = load i8*, i8** %3, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  call void @addbyte(i32 %249)
  store i8 1, i8* @load_const, align 1
  br label %284

250:                                              ; preds = %86, %86, %86, %86, %86, %86, %86, %86
  %251 = load i8*, i8** %3, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %3, align 8
  %253 = load i8, i8* %251, align 1
  %254 = sext i8 %253 to i32
  call void @addbyte(i32 %254)
  %255 = call i64 @long_val(i8** %3)
  store i64 %255, i64* %6, align 8
  %256 = load i64, i64* %6, align 8
  %257 = icmp slt i64 %256, 128
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = load i64, i64* %6, align 8
  %260 = trunc i64 %259 to i32
  call void @addbyte(i32 %260)
  br label %270

261:                                              ; preds = %250
  %262 = load i64, i64* %6, align 8
  %263 = ashr i64 %262, 8
  %264 = and i64 %263, 255
  %265 = or i64 %264, 128
  %266 = trunc i64 %265 to i32
  call void @addbyte(i32 %266)
  %267 = load i64, i64* %6, align 8
  %268 = and i64 %267, 255
  %269 = trunc i64 %268 to i32
  call void @addbyte(i32 %269)
  br label %270

270:                                              ; preds = %261, %258
  br label %284

271:                                              ; preds = %86
  %272 = load i8*, i8** %3, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %3, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  switch i32 %275, label %278 [
    i32 105, label %276
    i32 114, label %277
  ]

276:                                              ; preds = %271
  call void @init_load()
  br label %278

277:                                              ; preds = %271
  call void @execute()
  br label %278

278:                                              ; preds = %277, %276, %271
  br label %284

279:                                              ; preds = %86
  br label %284

280:                                              ; preds = %86
  %281 = load i8*, i8** %3, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  call void @addbyte(i32 %283)
  br label %284

284:                                              ; preds = %280, %279, %278, %270, %246, %238, %237, %190, %186, %107, %91, %90
  %285 = load i8*, i8** %3, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %3, align 8
  br label %287

287:                                              ; preds = %284, %85
  br label %288

288:                                              ; preds = %287, %28
  br label %10

289:                                              ; preds = %18, %10
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* @compile_only, align 1
  store i8 0, i8* @use_math, align 1
  store i8 0, i8* @warn_not_std, align 1
  store i8 0, i8* @std_only, align 1
  %7 = call i32 @isatty(i32 0) #7
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32 @isatty(i32 1) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8 1, i8* @interactive, align 1
  br label %14

13:                                               ; preds = %9, %2
  store i8 0, i8* @interactive, align 1
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0)) #7
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %30, %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %30 [
    i32 99, label %23
    i32 108, label %24
    i32 105, label %25
    i32 119, label %26
    i32 115, label %27
    i32 118, label %28
  ]

23:                                               ; preds = %21
  store i8 1, i8* @compile_only, align 1
  br label %30

24:                                               ; preds = %21
  store i8 1, i8* @use_math, align 1
  br label %30

25:                                               ; preds = %21
  store i8 1, i8* @interactive, align 1
  br label %30

26:                                               ; preds = %21
  store i8 1, i8* @warn_not_std, align 1
  br label %30

27:                                               ; preds = %21
  store i8 1, i8* @std_only, align 1
  br label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.126, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2.127, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %27, %26, %25, %24, %23, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0)) #7
  store i32 %33, i32* %6, align 4
  br label %18

34:                                               ; preds = %18
  call void @init_storage()
  call void @init_load()
  %35 = load i8, i8* @interactive, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call void (i32)* @signal(i32 2, void (i32)* @use_quit) #7
  br label %39

39:                                               ; preds = %37, %34
  call void @init_tree()
  call void @init_gen()
  store i8** null, i8*** @g_argv, align 8
  store i32 0, i32* @g_argc, align 4
  store i8 0, i8* @is_std_in, align 1
  store i8 1, i8* @first_file, align 1
  %40 = call i32 @open_new_file()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @exit(i32 1) #8
  unreachable

43:                                               ; preds = %39
  %44 = call i32 @yyparse()
  %45 = load i8, i8* @compile_only, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @use_quit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12.139, i64 0, i64 0))
  %4 = call void (i32)* @signal(i32 2, void (i32)* @use_quit) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @open_new_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i8, align 1
  store i32 1, i32* @line_no, align 4
  %4 = load i8, i8* @is_std_in, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %57

7:                                                ; preds = %0
  %8 = load i8, i8* @use_math, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load i8, i8* @first_file, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.131, i64 0, i64 0), i32 2)
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %3, align 1
  %18 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.132, i64 0, i64 0), i32 2)
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  %20 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.133, i64 0, i64 0), i32 2)
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %3, align 1
  %22 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.134, i64 0, i64 0), i32 2)
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %3, align 1
  %24 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.135, i64 0, i64 0), i32 2)
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %3, align 1
  %26 = call i32 @lookup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.136, i64 0, i64 0), i32 2)
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  call void @load_code(i8* getelementptr inbounds ([2140 x i8], [2140 x i8]* @libmath, i64 0, i64 0))
  br label %28

28:                                               ; preds = %15, %11, %7
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* @optind, align 4
  %31 = load i32, i32* @g_argc, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i8**, i8*** @g_argv, align 8
  %35 = load i32, i32* @optind, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call %struct._IO_FILE* @fopen(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.137, i64 0, i64 0))
  store %struct._IO_FILE* %39, %struct._IO_FILE** %2, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %41 = icmp ne %struct._IO_FILE* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @new_yy_file(%struct._IO_FILE* %43)
  %44 = load i32, i32* @optind, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @optind, align 4
  store i32 1, i32* %1, align 4
  br label %57

46:                                               ; preds = %33
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i8**, i8*** @g_argv, align 8
  %49 = load i32, i32* @optind, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @optind, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11.138, i64 0, i64 0), i8* %53)
  call void @exit(i32 1) #8
  unreachable

55:                                               ; preds = %29
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @new_yy_file(%struct._IO_FILE* %56)
  store i8 1, i8* @is_std_in, align 1
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %55, %42, %6
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @new_yy_file(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load i8, i8* @first_file, align 1
  %4 = icmp ne i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %7 = call i32 @fclose(%struct._IO_FILE* %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** @yyin, align 8
  store i8 0, i8* @first_file, align 1
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_num(%struct.bc_struct** %0) #0 {
  %2 = alloca %struct.bc_struct**, align 8
  store %struct.bc_struct** %0, %struct.bc_struct*** %2, align 8
  %3 = load %struct.bc_struct**, %struct.bc_struct*** %2, align 8
  %4 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %5 = icmp eq %struct.bc_struct* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.bc_struct**, %struct.bc_struct*** %2, align 8
  %9 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %10 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.bc_struct**, %struct.bc_struct*** %2, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  %15 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = load %struct.bc_struct**, %struct.bc_struct*** %2, align 8
  %20 = load %struct.bc_struct*, %struct.bc_struct** %19, align 8
  %21 = bitcast %struct.bc_struct* %20 to i8*
  call void @free(i8* %21) #7
  br label %22

22:                                               ; preds = %18, %7
  %23 = load %struct.bc_struct**, %struct.bc_struct*** %2, align 8
  store %struct.bc_struct* null, %struct.bc_struct** %23, align 8
  br label %24

24:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bc_struct* @new_num(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bc_struct*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = add i64 1040, %7
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %8, %10
  %12 = call noalias i8* @malloc(i64 %11) #7
  %13 = bitcast i8* %12 to %struct.bc_struct*
  store %struct.bc_struct* %13, %struct.bc_struct** %5, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %15 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %18 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %21 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %23 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 3
  store i32 1, i32* %23, align 4
  %24 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %25 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %24, i32 0, i32 4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %25, i64 0, i64 0
  store i8 0, i8* %26, align 4
  %27 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  ret %struct.bc_struct* %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_numbers() #0 {
  %1 = call %struct.bc_struct* @new_num(i32 1, i32 0)
  store %struct.bc_struct* %1, %struct.bc_struct** @_zero_, align 8
  %2 = call %struct.bc_struct* @new_num(i32 1, i32 0)
  store %struct.bc_struct* %2, %struct.bc_struct** @_one_, align 8
  %3 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %4 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 4
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8 1, i8* %5, align 4
  %6 = call %struct.bc_struct* @new_num(i32 1, i32 0)
  store %struct.bc_struct* %6, %struct.bc_struct** @_two_, align 8
  %7 = load %struct.bc_struct*, %struct.bc_struct** @_two_, align 8
  %8 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %7, i32 0, i32 4
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8 2, i8* %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bc_struct* @copy_num(%struct.bc_struct* %0) #0 {
  %2 = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %2, align 8
  %3 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %4 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  ret %struct.bc_struct* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_num(%struct.bc_struct** %0) #0 {
  %2 = alloca %struct.bc_struct**, align 8
  store %struct.bc_struct** %0, %struct.bc_struct*** %2, align 8
  %3 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %4 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %3)
  %5 = load %struct.bc_struct**, %struct.bc_struct*** %2, align 8
  store %struct.bc_struct* %4, %struct.bc_struct** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @int2num(%struct.bc_struct** %0, i32 %1) #0 {
  %3 = alloca %struct.bc_struct**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [30 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.bc_struct** %0, %struct.bc_struct*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %8, align 4
  store i8 0, i8* %9, align 1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  store i8 1, i8* %9, align 1
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, 10
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  store i8 %19, i8* %20, align 1
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %27, %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = srem i32 %28, 10
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 10
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  call void @free_num(%struct.bc_struct** %38)
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.bc_struct* @new_num(i32 %39, i32 0)
  %41 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  store %struct.bc_struct* %40, %struct.bc_struct** %41, align 8
  %42 = load i8, i8* %9, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %46 = load %struct.bc_struct*, %struct.bc_struct** %45, align 8
  %47 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %50 = load %struct.bc_struct*, %struct.bc_struct** %49, align 8
  %51 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %50, i32 0, i32 4
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %51, i64 0, i64 0
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %57, %48
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  %56 = icmp sgt i32 %54, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  store i8 %60, i8* %61, align 1
  br label %53

63:                                               ; preds = %53
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @num2long(%struct.bc_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %8 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %7, i32 0, i32 4
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8* %9, i8** %5, align 8
  %10 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %11 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = icmp sle i64 %17, 922337203685477580
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = load i64, i64* %4, align 8
  %23 = mul nsw i64 %22, 10
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i64
  %28 = add nsw i64 %23, %27
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  br label %13

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i64, i64* %4, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %39, %36
  %41 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %42 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %50

47:                                               ; preds = %40
  %48 = load i64, i64* %4, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bc_compare(%struct.bc_struct* %0, %struct.bc_struct* %1) #0 {
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %3, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %4, align 8
  %5 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %7 = call i32 @_do_compare(%struct.bc_struct* %5, %struct.bc_struct* %6, i32 1, i32 0)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_do_compare(%struct.bc_struct* %0, %struct.bc_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %6, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %17 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %20 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %25 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %242

29:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %242

30:                                               ; preds = %15, %4
  %31 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %32 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %35 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %30
  %39 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %40 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %43 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %51 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %46
  store i32 1, i32* %5, align 4
  br label %242

55:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %242

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %61 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %56
  store i32 -1, i32* %5, align 4
  br label %242

65:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %242

66:                                               ; preds = %30
  %67 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %68 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %71 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %74 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %79 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  br label %85

81:                                               ; preds = %66
  %82 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %83 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i32 [ %80, %77 ], [ %84, %81 ]
  %87 = add nsw i32 %69, %86
  store i32 %87, i32* %12, align 4
  %88 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %89 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %88, i32 0, i32 4
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %89, i64 0, i64 0
  store i8* %90, i8** %10, align 8
  %91 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %92 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %91, i32 0, i32 4
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %92, i64 0, i64 0
  store i8* %93, i8** %11, align 8
  br label %94

94:                                               ; preds = %107, %85
  %95 = load i32, i32* %12, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8*, i8** %11, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %100, %103
  br label %105

105:                                              ; preds = %97, %94
  %106 = phi i1 [ false, %94 ], [ %104, %97 ]
  br i1 %106, label %107, label %114

107:                                              ; preds = %105
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %12, align 4
  br label %94

114:                                              ; preds = %105
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %122 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %125 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %242

129:                                              ; preds = %120, %117, %114
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load i8*, i8** %10, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8*, i8** %11, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %145 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %140
  store i32 1, i32* %5, align 4
  br label %242

149:                                              ; preds = %143
  store i32 -1, i32* %5, align 4
  br label %242

150:                                              ; preds = %132
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %155 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153, %150
  store i32 -1, i32* %5, align 4
  br label %242

159:                                              ; preds = %153
  store i32 1, i32* %5, align 4
  br label %242

160:                                              ; preds = %129
  %161 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %162 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %165 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %241

168:                                              ; preds = %160
  %169 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %170 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %173 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %171, %174
  br i1 %175, label %176, label %208

176:                                              ; preds = %168
  %177 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %178 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %181 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %179, %182
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %204, %176
  %185 = load i32, i32* %12, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %184
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %10, align 8
  %190 = load i8, i8* %188, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %187
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %198 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196, %193
  store i32 1, i32* %5, align 4
  br label %242

202:                                              ; preds = %196
  store i32 -1, i32* %5, align 4
  br label %242

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %12, align 4
  br label %184

207:                                              ; preds = %184
  br label %240

208:                                              ; preds = %168
  %209 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %210 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %213 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %211, %214
  store i32 %215, i32* %12, align 4
  br label %216

216:                                              ; preds = %236, %208
  %217 = load i32, i32* %12, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %239

219:                                              ; preds = %216
  %220 = load i8*, i8** %11, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %11, align 8
  %222 = load i8, i8* %220, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %219
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %230 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228, %225
  store i32 -1, i32* %5, align 4
  br label %242

234:                                              ; preds = %228
  store i32 1, i32* %5, align 4
  br label %242

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %12, align 4
  br label %216

239:                                              ; preds = %216
  br label %240

240:                                              ; preds = %239, %207
  br label %241

241:                                              ; preds = %240, %160
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %241, %234, %233, %202, %201, %159, %158, %149, %148, %128, %65, %64, %55, %54, %29, %28
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @is_zero(%struct.bc_struct* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %3, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %7 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %8 = icmp eq %struct.bc_struct* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 1, i8* %2, align 1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %12 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %15 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %19 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %18, i32 0, i32 4
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %32, %10
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i1 [ false, %21 ], [ %29, %24 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %21

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8 0, i8* %2, align 1
  br label %40

39:                                               ; preds = %35
  store i8 1, i8* %2, align 1
  br label %40

40:                                               ; preds = %39, %38, %9
  %41 = load i8, i8* %2, align 1
  ret i8 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @is_neg(%struct.bc_struct* %0) #0 {
  %2 = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %2, align 8
  %3 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %4 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bc_add(%struct.bc_struct* %0, %struct.bc_struct* %1, %struct.bc_struct** %2) #0 {
  %4 = alloca %struct.bc_struct*, align 8
  %5 = alloca %struct.bc_struct*, align 8
  %6 = alloca %struct.bc_struct**, align 8
  %7 = alloca %struct.bc_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %4, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %5, align 8
  store %struct.bc_struct** %2, %struct.bc_struct*** %6, align 8
  %9 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %10 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %18 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %19 = call %struct.bc_struct* @_do_add(%struct.bc_struct* %17, %struct.bc_struct* %18)
  store %struct.bc_struct* %19, %struct.bc_struct** %7, align 8
  %20 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %21 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %24 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %27 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %28 = call i32 @_do_compare(%struct.bc_struct* %26, %struct.bc_struct* %27, i32 0, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %51 [
    i32 -1, label %30
    i32 0, label %39
    i32 1, label %42
  ]

30:                                               ; preds = %25
  %31 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %32 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %33 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %31, %struct.bc_struct* %32)
  store %struct.bc_struct* %33, %struct.bc_struct** %7, align 8
  %34 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %35 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %38 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %51

39:                                               ; preds = %25
  %40 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %41 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %40)
  store %struct.bc_struct* %41, %struct.bc_struct** %7, align 8
  br label %51

42:                                               ; preds = %25
  %43 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %44 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %45 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %43, %struct.bc_struct* %44)
  store %struct.bc_struct* %45, %struct.bc_struct** %7, align 8
  %46 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %47 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %50 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %39, %30, %25
  br label %52

52:                                               ; preds = %51, %16
  %53 = load %struct.bc_struct**, %struct.bc_struct*** %6, align 8
  call void @free_num(%struct.bc_struct** %53)
  %54 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %55 = load %struct.bc_struct**, %struct.bc_struct*** %6, align 8
  store %struct.bc_struct* %54, %struct.bc_struct** %55, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.bc_struct* @_do_add(%struct.bc_struct* %0, %struct.bc_struct* %1) #0 {
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca %struct.bc_struct*, align 8
  %5 = alloca %struct.bc_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %3, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %4, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %15 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %18 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %23 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %27 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  store i32 %30, i32* %6, align 4
  %31 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %32 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %35 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %40 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %44 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.bc_struct* @new_num(i32 %49, i32 %50)
  store %struct.bc_struct* %51, %struct.bc_struct** %5, align 8
  %52 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %53 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %56 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %59 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %58, i32 0, i32 4
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %59, i64 0, i64 0
  %61 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %62 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  store i8* %69, i8** %8, align 8
  %70 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %71 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %70, i32 0, i32 4
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %71, i64 0, i64 0
  %73 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %74 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  store i8* %81, i8** %9, align 8
  %82 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %83 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %82, i32 0, i32 4
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %83, i64 0, i64 0
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 -1
  store i8* %91, i8** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %46
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %8, align 8
  %107 = load i8, i8* %105, align 1
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 -1
  store i8* %109, i8** %10, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %12, align 4
  br label %100

112:                                              ; preds = %100
  br label %127

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %120, i8** %9, align 8
  %121 = load i8, i8* %119, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %10, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %13, align 4
  br label %114

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %46
  %129 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %130 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %135 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %172, %128
  %140 = load i32, i32* %12, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = icmp sgt i32 %143, 0
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi i1 [ false, %139 ], [ %144, %142 ]
  br i1 %146, label %147, label %179

147:                                              ; preds = %145
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 -1
  store i8* %149, i8** %8, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 -1
  store i8* %153, i8** %9, align 8
  %154 = load i8, i8* %152, align 1
  %155 = sext i8 %154 to i32
  %156 = add nsw i32 %151, %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %156, %157
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %10, align 8
  store i8 %159, i8* %160, align 1
  %161 = load i8*, i8** %10, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sgt i32 %163, 9
  br i1 %164, label %165, label %171

165:                                              ; preds = %147
  store i32 1, i32* %11, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = sub nsw i32 %168, 10
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %166, align 1
  br label %172

171:                                              ; preds = %147
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %171, %165
  %173 = load i8*, i8** %10, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 -1
  store i8* %174, i8** %10, align 8
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %13, align 4
  br label %139

179:                                              ; preds = %145
  %180 = load i32, i32* %12, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %12, align 4
  %184 = load i8*, i8** %9, align 8
  store i8* %184, i8** %8, align 8
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %210, %185
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %12, align 4
  %189 = icmp sgt i32 %187, 0
  br i1 %189, label %190, label %213

190:                                              ; preds = %186
  %191 = load i8*, i8** %8, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 -1
  store i8* %192, i8** %8, align 8
  %193 = load i8, i8* %191, align 1
  %194 = sext i8 %193 to i32
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %194, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %10, align 8
  store i8 %197, i8* %198, align 1
  %199 = load i8*, i8** %10, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp sgt i32 %201, 9
  br i1 %202, label %203, label %209

203:                                              ; preds = %190
  store i32 1, i32* %11, align 4
  %204 = load i8*, i8** %10, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = sub nsw i32 %206, 10
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %204, align 1
  br label %210

209:                                              ; preds = %190
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %209, %203
  %211 = load i8*, i8** %10, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 -1
  store i8* %212, i8** %10, align 8
  br label %186

213:                                              ; preds = %186
  %214 = load i32, i32* %11, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i8*, i8** %10, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = add nsw i32 %219, 1
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %217, align 1
  br label %222

222:                                              ; preds = %216, %213
  %223 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %223)
  %224 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  ret %struct.bc_struct* %224
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.bc_struct* @_do_sub(%struct.bc_struct* %0, %struct.bc_struct* %1) #0 {
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca %struct.bc_struct*, align 8
  %5 = alloca %struct.bc_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %3, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %4, align 8
  %16 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %17 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %20 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %25 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %29 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  store i32 %32, i32* %7, align 4
  %33 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %34 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %37 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %42 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %46 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %43, %40 ], [ %47, %44 ]
  store i32 %49, i32* %6, align 4
  %50 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %51 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %54 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %59 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  br label %65

61:                                               ; preds = %48
  %62 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %63 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i32 [ %60, %57 ], [ %64, %61 ]
  store i32 %66, i32* %9, align 4
  %67 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %68 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %71 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %76 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  br label %82

78:                                               ; preds = %65
  %79 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %80 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %77, %74 ], [ %81, %78 ]
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call %struct.bc_struct* @new_num(i32 %84, i32 %85)
  store %struct.bc_struct* %86, %struct.bc_struct** %5, align 8
  %87 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %88 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %87, i32 0, i32 4
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %88, i64 0, i64 0
  %90 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %91 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %96 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  store i8* %100, i8** %10, align 8
  %101 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %102 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %101, i32 0, i32 4
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %102, i64 0, i64 0
  %104 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %105 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %110 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 -1
  store i8* %114, i8** %11, align 8
  %115 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %116 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %115, i32 0, i32 4
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %116, i64 0, i64 0
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  store i8* %124, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %125 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %126 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %82
  %131 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %132 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %145, %130
  %137 = load i32, i32* %14, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %141, i8** %10, align 8
  %142 = load i8, i8* %140, align 1
  %143 = load i8*, i8** %12, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %144, i8** %12, align 8
  store i8 %142, i8* %143, align 1
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %14, align 4
  br label %136

148:                                              ; preds = %136
  br label %181

149:                                              ; preds = %82
  %150 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %151 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %177, %149
  %156 = load i32, i32* %14, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %155
  %159 = load i8*, i8** %11, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 -1
  store i8* %160, i8** %11, align 8
  %161 = load i8, i8* %159, align 1
  %162 = sext i8 %161 to i32
  %163 = sub nsw i32 0, %162
  %164 = load i32, i32* %13, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 10
  store i32 %170, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %172

171:                                              ; preds = %158
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, i32* %15, align 4
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %12, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 -1
  store i8* %176, i8** %12, align 8
  store i8 %174, i8* %175, align 1
  br label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %14, align 4
  br label %155

180:                                              ; preds = %155
  br label %181

181:                                              ; preds = %180, %148
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %211, %181
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %184, %185
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %182
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %190, i8** %10, align 8
  %191 = load i8, i8* %189, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8*, i8** %11, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 -1
  store i8* %194, i8** %11, align 8
  %195 = load i8, i8* %193, align 1
  %196 = sext i8 %195 to i32
  %197 = sub nsw i32 %192, %196
  %198 = load i32, i32* %13, align 4
  %199 = sub nsw i32 %197, %198
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %188
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 10
  store i32 %204, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %206

205:                                              ; preds = %188
  store i32 0, i32* %13, align 4
  br label %206

206:                                              ; preds = %205, %202
  %207 = load i32, i32* %15, align 4
  %208 = trunc i32 %207 to i8
  %209 = load i8*, i8** %12, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 -1
  store i8* %210, i8** %12, align 8
  store i8 %208, i8* %209, align 1
  br label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %182

214:                                              ; preds = %182
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %247

218:                                              ; preds = %214
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %9, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* %14, align 4
  br label %222

222:                                              ; preds = %243, %218
  %223 = load i32, i32* %14, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %222
  %226 = load i8*, i8** %10, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 -1
  store i8* %227, i8** %10, align 8
  %228 = load i8, i8* %226, align 1
  %229 = sext i8 %228 to i32
  %230 = load i32, i32* %13, align 4
  %231 = sub nsw i32 %229, %230
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %225
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 10
  store i32 %236, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %238

237:                                              ; preds = %225
  store i32 0, i32* %13, align 4
  br label %238

238:                                              ; preds = %237, %234
  %239 = load i32, i32* %15, align 4
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %12, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 -1
  store i8* %242, i8** %12, align 8
  store i8 %240, i8* %241, align 1
  br label %243

243:                                              ; preds = %238
  %244 = load i32, i32* %14, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %14, align 4
  br label %222

246:                                              ; preds = %222
  br label %247

247:                                              ; preds = %246, %214
  %248 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %248)
  %249 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  ret %struct.bc_struct* %249
}

; Function Attrs: noinline nounwind uwtable
define internal void @_rm_leading_zeros(%struct.bc_struct* %0) #0 {
  %2 = alloca %struct.bc_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %2, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %7 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %10 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %9, i32 0, i32 4
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  br label %12

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %30 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %32 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %37 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %36, i32 0, i32 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %37, i64 0, i64 0
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %43, %27
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %3, align 4
  %42 = icmp sgt i32 %40, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  store i8 %46, i8* %47, align 1
  br label %39

49:                                               ; preds = %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bc_sub(%struct.bc_struct* %0, %struct.bc_struct* %1, %struct.bc_struct** %2) #0 {
  %4 = alloca %struct.bc_struct*, align 8
  %5 = alloca %struct.bc_struct*, align 8
  %6 = alloca %struct.bc_struct**, align 8
  %7 = alloca %struct.bc_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %4, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %5, align 8
  store %struct.bc_struct** %2, %struct.bc_struct*** %6, align 8
  %9 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %10 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %13 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %18 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %19 = call %struct.bc_struct* @_do_add(%struct.bc_struct* %17, %struct.bc_struct* %18)
  store %struct.bc_struct* %19, %struct.bc_struct** %7, align 8
  %20 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %21 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %24 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %55

25:                                               ; preds = %3
  %26 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %27 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %28 = call i32 @_do_compare(%struct.bc_struct* %26, %struct.bc_struct* %27, i32 0, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %54 [
    i32 -1, label %30
    i32 0, label %42
    i32 1, label %45
  ]

30:                                               ; preds = %25
  %31 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %32 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %33 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %31, %struct.bc_struct* %32)
  store %struct.bc_struct* %33, %struct.bc_struct** %7, align 8
  %34 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %35 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %41 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %54

42:                                               ; preds = %25
  %43 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %44 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %43)
  store %struct.bc_struct* %44, %struct.bc_struct** %7, align 8
  br label %54

45:                                               ; preds = %25
  %46 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %47 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %48 = call %struct.bc_struct* @_do_sub(%struct.bc_struct* %46, %struct.bc_struct* %47)
  store %struct.bc_struct* %48, %struct.bc_struct** %7, align 8
  %49 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %50 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %53 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %42, %30, %25
  br label %55

55:                                               ; preds = %54, %16
  %56 = load %struct.bc_struct**, %struct.bc_struct*** %6, align 8
  call void @free_num(%struct.bc_struct** %56)
  %57 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %58 = load %struct.bc_struct**, %struct.bc_struct*** %6, align 8
  store %struct.bc_struct* %57, %struct.bc_struct** %58, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bc_multiply(%struct.bc_struct* %0, %struct.bc_struct* %1, %struct.bc_struct** %2, i32 %3) #0 {
  %5 = alloca %struct.bc_struct*, align 8
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bc_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %5, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %6, align 8
  store %struct.bc_struct** %2, %struct.bc_struct*** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %25 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %28 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %16, align 4
  %31 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %32 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %35 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %18, align 4
  %41 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %42 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %45 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %51 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %54 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %4
  %58 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %59 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  br label %65

61:                                               ; preds = %4
  %62 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %63 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i32 [ %60, %57 ], [ %64, %61 ]
  %67 = icmp sgt i32 %49, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  br label %88

70:                                               ; preds = %65
  %71 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %72 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %75 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %80 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %84 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %81, %78 ], [ %85, %82 ]
  br label %88

88:                                               ; preds = %86, %68
  %89 = phi i32 [ %69, %68 ], [ %87, %86 ]
  %90 = icmp sgt i32 %48, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %94 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %97 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %102 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  br label %108

104:                                              ; preds = %91
  %105 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %106 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i32 [ %103, %100 ], [ %107, %104 ]
  %110 = icmp sgt i32 %92, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  br label %131

113:                                              ; preds = %108
  %114 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %115 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %118 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %123 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  br label %129

125:                                              ; preds = %113
  %126 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %127 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %124, %121 ], [ %128, %125 ]
  br label %131

131:                                              ; preds = %129, %111
  %132 = phi i32 [ %112, %111 ], [ %130, %129 ]
  br label %135

133:                                              ; preds = %88
  %134 = load i32, i32* %20, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %21, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %20, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %21, align 4
  %144 = call %struct.bc_struct* @new_num(i32 %142, i32 %143)
  store %struct.bc_struct* %144, %struct.bc_struct** %9, align 8
  %145 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %146 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %149 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %147, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 0, i32 1
  %154 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  %155 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %157 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %156, i32 0, i32 4
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %157, i64 0, i64 0
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = getelementptr inbounds i8, i8* %161, i64 -1
  store i8* %162, i8** %13, align 8
  %163 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %164 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %163, i32 0, i32 4
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %164, i64 0, i64 0
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = getelementptr inbounds i8, i8* %168, i64 -1
  store i8* %169, i8** %14, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %22, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %23, align 4
  %174 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  %175 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %174, i32 0, i32 4
  %176 = getelementptr inbounds [1024 x i8], [1024 x i8]* %175, i64 0, i64 0
  %177 = load i32, i32* %23, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  store i8* %179, i8** %12, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %15, align 4
  br label %180

180:                                              ; preds = %245, %135
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %22, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %248

184:                                              ; preds = %180
  %185 = load i8*, i8** %13, align 8
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 %186, %187
  %189 = add nsw i32 %188, 1
  %190 = icmp sgt i32 0, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %197

192:                                              ; preds = %184
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %17, align 4
  %195 = sub nsw i32 %193, %194
  %196 = add nsw i32 %195, 1
  br label %197

197:                                              ; preds = %192, %191
  %198 = phi i32 [ 0, %191 ], [ %196, %192 ]
  %199 = sext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i8, i8* %185, i64 %200
  store i8* %201, i8** %10, align 8
  %202 = load i8*, i8** %14, align 8
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %17, align 4
  %205 = sub nsw i32 %204, 1
  %206 = icmp sgt i32 %203, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load i32, i32* %17, align 4
  %209 = sub nsw i32 %208, 1
  br label %212

210:                                              ; preds = %197
  %211 = load i32, i32* %15, align 4
  br label %212

212:                                              ; preds = %210, %207
  %213 = phi i32 [ %209, %207 ], [ %211, %210 ]
  %214 = sext i32 %213 to i64
  %215 = sub i64 0, %214
  %216 = getelementptr inbounds i8, i8* %202, i64 %215
  store i8* %216, i8** %11, align 8
  br label %217

217:                                              ; preds = %229, %212
  %218 = load i8*, i8** %10, align 8
  %219 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %220 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %219, i32 0, i32 4
  %221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %220, i64 0, i64 0
  %222 = icmp uge i8* %218, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = load i8*, i8** %11, align 8
  %225 = load i8*, i8** %14, align 8
  %226 = icmp ule i8* %224, %225
  br label %227

227:                                              ; preds = %223, %217
  %228 = phi i1 [ false, %217 ], [ %226, %223 ]
  br i1 %228, label %229, label %242

229:                                              ; preds = %227
  %230 = load i8*, i8** %10, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 -1
  store i8* %231, i8** %10, align 8
  %232 = load i8, i8* %230, align 1
  %233 = sext i8 %232 to i32
  %234 = load i8*, i8** %11, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %11, align 8
  %236 = load i8, i8* %234, align 1
  %237 = sext i8 %236 to i32
  %238 = mul nsw i32 %233, %237
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %19, align 8
  %241 = add nsw i64 %240, %239
  store i64 %241, i64* %19, align 8
  br label %217

242:                                              ; preds = %227
  %243 = load i64, i64* %19, align 8
  %244 = sdiv i64 %243, 10
  store i64 %244, i64* %19, align 8
  br label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %180

248:                                              ; preds = %180
  br label %249

249:                                              ; preds = %320, %248
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* %18, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %323

254:                                              ; preds = %249
  %255 = load i8*, i8** %13, align 8
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %17, align 4
  %258 = sub nsw i32 %256, %257
  %259 = add nsw i32 %258, 1
  %260 = icmp sgt i32 0, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %267

262:                                              ; preds = %254
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %17, align 4
  %265 = sub nsw i32 %263, %264
  %266 = add nsw i32 %265, 1
  br label %267

267:                                              ; preds = %262, %261
  %268 = phi i32 [ 0, %261 ], [ %266, %262 ]
  %269 = sext i32 %268 to i64
  %270 = sub i64 0, %269
  %271 = getelementptr inbounds i8, i8* %255, i64 %270
  store i8* %271, i8** %10, align 8
  %272 = load i8*, i8** %14, align 8
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* %17, align 4
  %275 = sub nsw i32 %274, 1
  %276 = icmp sgt i32 %273, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %267
  %278 = load i32, i32* %17, align 4
  %279 = sub nsw i32 %278, 1
  br label %282

280:                                              ; preds = %267
  %281 = load i32, i32* %15, align 4
  br label %282

282:                                              ; preds = %280, %277
  %283 = phi i32 [ %279, %277 ], [ %281, %280 ]
  %284 = sext i32 %283 to i64
  %285 = sub i64 0, %284
  %286 = getelementptr inbounds i8, i8* %272, i64 %285
  store i8* %286, i8** %11, align 8
  br label %287

287:                                              ; preds = %299, %282
  %288 = load i8*, i8** %10, align 8
  %289 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %290 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %289, i32 0, i32 4
  %291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %290, i64 0, i64 0
  %292 = icmp uge i8* %288, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i8*, i8** %11, align 8
  %295 = load i8*, i8** %14, align 8
  %296 = icmp ule i8* %294, %295
  br label %297

297:                                              ; preds = %293, %287
  %298 = phi i1 [ false, %287 ], [ %296, %293 ]
  br i1 %298, label %299, label %312

299:                                              ; preds = %297
  %300 = load i8*, i8** %10, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 -1
  store i8* %301, i8** %10, align 8
  %302 = load i8, i8* %300, align 1
  %303 = sext i8 %302 to i32
  %304 = load i8*, i8** %11, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %11, align 8
  %306 = load i8, i8* %304, align 1
  %307 = sext i8 %306 to i32
  %308 = mul nsw i32 %303, %307
  %309 = sext i32 %308 to i64
  %310 = load i64, i64* %19, align 8
  %311 = add nsw i64 %310, %309
  store i64 %311, i64* %19, align 8
  br label %287

312:                                              ; preds = %297
  %313 = load i64, i64* %19, align 8
  %314 = srem i64 %313, 10
  %315 = trunc i64 %314 to i8
  %316 = load i8*, i8** %12, align 8
  %317 = getelementptr inbounds i8, i8* %316, i32 -1
  store i8* %317, i8** %12, align 8
  store i8 %315, i8* %316, align 1
  %318 = load i64, i64* %19, align 8
  %319 = sdiv i64 %318, 10
  store i64 %319, i64* %19, align 8
  br label %320

320:                                              ; preds = %312
  %321 = load i32, i32* %15, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %15, align 4
  br label %249

323:                                              ; preds = %249
  %324 = load i64, i64* %19, align 8
  %325 = trunc i64 %324 to i8
  %326 = load i8*, i8** %12, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 -1
  store i8* %327, i8** %12, align 8
  store i8 %325, i8* %326, align 1
  %328 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  call void @free_num(%struct.bc_struct** %328)
  %329 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  %330 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  store %struct.bc_struct* %329, %struct.bc_struct** %330, align 8
  %331 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  %332 = load %struct.bc_struct*, %struct.bc_struct** %331, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %332)
  %333 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  %334 = load %struct.bc_struct*, %struct.bc_struct** %333, align 8
  %335 = call signext i8 @is_zero(%struct.bc_struct* %334)
  %336 = icmp ne i8 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %323
  %338 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  %339 = load %struct.bc_struct*, %struct.bc_struct** %338, align 8
  %340 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %339, i32 0, i32 0
  store i32 0, i32* %340, align 4
  br label %341

341:                                              ; preds = %337, %323
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bc_divide(%struct.bc_struct* %0, %struct.bc_struct* %1, %struct.bc_struct** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct*, align 8
  %8 = alloca %struct.bc_struct**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
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
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %6, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %7, align 8
  store %struct.bc_struct** %2, %struct.bc_struct*** %8, align 8
  store i32 %3, i32* %9, align 4
  %32 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %33 = call signext i8 @is_zero(%struct.bc_struct* %32)
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %574

36:                                               ; preds = %4
  %37 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %38 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %36
  %42 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %43 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %106

46:                                               ; preds = %41
  %47 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %48 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %47, i32 0, i32 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %48, i64 0, i64 0
  %50 = load i8, i8* %49, align 4
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %106

53:                                               ; preds = %46
  %54 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %55 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.bc_struct* @new_num(i32 %56, i32 %57)
  store %struct.bc_struct* %58, %struct.bc_struct** %10, align 8
  %59 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %60 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %63 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %69 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %71 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %70, i32 0, i32 4
  %72 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %73 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %71, i64 0, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %76, i8 0, i64 %78, i1 false)
  %79 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %80 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %79, i32 0, i32 4
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %80, i64 0, i64 0
  %82 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %83 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %82, i32 0, i32 4
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %83, i64 0, i64 0
  %85 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %86 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %89 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %53
  %94 = load i32, i32* %9, align 4
  br label %99

95:                                               ; preds = %53
  %96 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %97 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %94, %93 ], [ %98, %95 ]
  %101 = add nsw i32 %87, %100
  %102 = sext i32 %101 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %84, i64 %102, i1 false)
  %103 = load %struct.bc_struct**, %struct.bc_struct*** %8, align 8
  call void @free_num(%struct.bc_struct** %103)
  %104 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %105 = load %struct.bc_struct**, %struct.bc_struct*** %8, align 8
  store %struct.bc_struct* %104, %struct.bc_struct** %105, align 8
  br label %106

106:                                              ; preds = %99, %46, %41
  br label %107

107:                                              ; preds = %106, %36
  %108 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %109 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %21, align 4
  %111 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %112 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %111, i32 0, i32 4
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %112, i64 0, i64 0
  %114 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %115 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  %119 = load i32, i32* %21, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  store i8* %122, i8** %15, align 8
  br label %123

123:                                              ; preds = %134, %107
  %124 = load i32, i32* %21, align 4
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %128, i8** %15, align 8
  %129 = load i8, i8* %127, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br label %132

132:                                              ; preds = %126, %123
  %133 = phi i1 [ false, %123 ], [ %131, %126 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i32, i32* %21, align 4
  %136 = add i32 %135, -1
  store i32 %136, i32* %21, align 4
  br label %123

137:                                              ; preds = %132
  %138 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %139 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %21, align 4
  %142 = add i32 %140, %141
  store i32 %142, i32* %19, align 4
  %143 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %144 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %21, align 4
  %147 = sub i32 %145, %146
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %137
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %17, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %23, align 4
  br label %156

155:                                              ; preds = %137
  store i32 0, i32* %23, align 4
  br label %156

156:                                              ; preds = %155, %151
  %157 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %158 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %161 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = load i32, i32* %23, align 4
  %165 = add i32 %163, %164
  %166 = add i32 %165, 2
  %167 = zext i32 %166 to i64
  %168 = call noalias i8* @malloc(i64 %167) #7
  store i8* %168, i8** %11, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %171 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %174 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %172, %175
  %177 = load i32, i32* %23, align 4
  %178 = add i32 %176, %177
  %179 = add i32 %178, 2
  %180 = zext i32 %179 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %169, i8 0, i64 %180, i1 false)
  %181 = load i8*, i8** %11, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %184 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %183, i32 0, i32 4
  %185 = getelementptr inbounds [1024 x i8], [1024 x i8]* %184, i64 0, i64 0
  %186 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %187 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %190 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %188, %191
  %193 = sext i32 %192 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %182, i8* align 4 %185, i64 %193, i1 false)
  %194 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %195 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %21, align 4
  %198 = add i32 %196, %197
  store i32 %198, i32* %20, align 4
  %199 = load i32, i32* %20, align 4
  %200 = add i32 %199, 1
  %201 = zext i32 %200 to i64
  %202 = call noalias i8* @malloc(i64 %201) #7
  store i8* %202, i8** %12, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %205 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %204, i32 0, i32 4
  %206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %205, i64 0, i64 0
  %207 = load i32, i32* %20, align 4
  %208 = zext i32 %207 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %203, i8* align 4 %206, i64 %208, i1 false)
  %209 = load i8*, i8** %12, align 8
  %210 = load i32, i32* %20, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  store i8 0, i8* %212, align 1
  %213 = load i8*, i8** %12, align 8
  store i8* %213, i8** %15, align 8
  br label %214

214:                                              ; preds = %219, %156
  %215 = load i8*, i8** %15, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i8*, i8** %15, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %15, align 8
  %222 = load i32, i32* %20, align 4
  %223 = add i32 %222, -1
  store i32 %223, i32* %20, align 4
  br label %214

224:                                              ; preds = %214
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %19, align 4
  %227 = load i32, i32* %9, align 4
  %228 = add i32 %226, %227
  %229 = icmp ugt i32 %225, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %22, align 4
  store i8 1, i8* %30, align 1
  br label %248

233:                                              ; preds = %224
  store i8 0, i8* %30, align 1
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp ugt i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %22, align 4
  br label %247

240:                                              ; preds = %233
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* %20, align 4
  %243 = sub i32 %241, %242
  %244 = load i32, i32* %9, align 4
  %245 = add i32 %243, %244
  %246 = add i32 %245, 1
  store i32 %246, i32* %22, align 4
  br label %247

247:                                              ; preds = %240, %237
  br label %248

248:                                              ; preds = %247, %230
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %9, align 4
  %251 = sub i32 %249, %250
  %252 = load i32, i32* %9, align 4
  %253 = call %struct.bc_struct* @new_num(i32 %251, i32 %252)
  store %struct.bc_struct* %253, %struct.bc_struct** %10, align 8
  %254 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %255 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %254, i32 0, i32 4
  %256 = getelementptr inbounds [1024 x i8], [1024 x i8]* %255, i64 0, i64 0
  %257 = load i32, i32* %22, align 4
  %258 = zext i32 %257 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %256, i8 0, i64 %258, i1 false)
  %259 = load i32, i32* %20, align 4
  %260 = add i32 %259, 1
  %261 = zext i32 %260 to i64
  %262 = call noalias i8* @malloc(i64 %261) #7
  store i8* %262, i8** %29, align 8
  %263 = load i8, i8* %30, align 1
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %548, label %265

265:                                              ; preds = %248
  %266 = load i8*, i8** %15, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = add nsw i32 %268, 1
  %270 = sdiv i32 10, %269
  store i32 %270, i32* %31, align 4
  %271 = load i32, i32* %31, align 4
  %272 = icmp ne i32 %271, 1
  br i1 %272, label %273, label %287

273:                                              ; preds = %265
  %274 = load i8*, i8** %11, align 8
  %275 = load i32, i32* %19, align 4
  %276 = load i32, i32* %17, align 4
  %277 = add i32 %275, %276
  %278 = load i32, i32* %23, align 4
  %279 = add i32 %277, %278
  %280 = add i32 %279, 1
  %281 = load i32, i32* %31, align 4
  %282 = load i8*, i8** %11, align 8
  call void @_one_mult(i8* %274, i32 %280, i32 %281, i8* %282)
  %283 = load i8*, i8** %15, align 8
  %284 = load i32, i32* %20, align 4
  %285 = load i32, i32* %31, align 4
  %286 = load i8*, i8** %15, align 8
  call void @_one_mult(i8* %283, i32 %284, i32 %285, i8* %286)
  br label %287

287:                                              ; preds = %273, %265
  store i32 0, i32* %25, align 4
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* %19, align 4
  %290 = icmp ugt i32 %288, %289
  br i1 %290, label %291, label %302

291:                                              ; preds = %287
  %292 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %293 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %292, i32 0, i32 4
  %294 = getelementptr inbounds [1024 x i8], [1024 x i8]* %293, i64 0, i64 0
  %295 = load i32, i32* %20, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = load i32, i32* %19, align 4
  %299 = zext i32 %298 to i64
  %300 = sub i64 0, %299
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  store i8* %301, i8** %16, align 8
  br label %306

302:                                              ; preds = %287
  %303 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %304 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %303, i32 0, i32 4
  %305 = getelementptr inbounds [1024 x i8], [1024 x i8]* %304, i64 0, i64 0
  store i8* %305, i8** %16, align 8
  br label %306

306:                                              ; preds = %302, %291
  br label %307

307:                                              ; preds = %540, %306
  %308 = load i32, i32* %25, align 4
  %309 = load i32, i32* %19, align 4
  %310 = load i32, i32* %9, align 4
  %311 = add i32 %309, %310
  %312 = load i32, i32* %20, align 4
  %313 = sub i32 %311, %312
  %314 = icmp ule i32 %308, %313
  br i1 %314, label %315, label %547

315:                                              ; preds = %307
  %316 = load i8*, i8** %15, align 8
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = load i8*, i8** %11, align 8
  %320 = load i32, i32* %25, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %318, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %315
  store i32 9, i32* %26, align 4
  br label %347

327:                                              ; preds = %315
  %328 = load i8*, i8** %11, align 8
  %329 = load i32, i32* %25, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = mul nsw i32 %333, 10
  %335 = load i8*, i8** %11, align 8
  %336 = load i32, i32* %25, align 4
  %337 = add i32 %336, 1
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %335, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = add nsw i32 %334, %341
  %343 = load i8*, i8** %15, align 8
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = sdiv i32 %342, %345
  store i32 %346, i32* %26, align 4
  br label %347

347:                                              ; preds = %327, %326
  %348 = load i8*, i8** %15, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 1
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = load i32, i32* %26, align 4
  %353 = mul i32 %351, %352
  %354 = load i8*, i8** %11, align 8
  %355 = load i32, i32* %25, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = mul nsw i32 %359, 10
  %361 = load i8*, i8** %11, align 8
  %362 = load i32, i32* %25, align 4
  %363 = add i32 %362, 1
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %361, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = add nsw i32 %360, %367
  %369 = load i8*, i8** %15, align 8
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = load i32, i32* %26, align 4
  %373 = mul i32 %371, %372
  %374 = sub i32 %368, %373
  %375 = mul i32 %374, 10
  %376 = load i8*, i8** %11, align 8
  %377 = load i32, i32* %25, align 4
  %378 = add i32 %377, 2
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %376, i64 %379
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = add i32 %375, %382
  %384 = icmp ugt i32 %353, %383
  br i1 %384, label %385, label %429

385:                                              ; preds = %347
  %386 = load i32, i32* %26, align 4
  %387 = add i32 %386, -1
  store i32 %387, i32* %26, align 4
  %388 = load i8*, i8** %15, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 1
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = load i32, i32* %26, align 4
  %393 = mul i32 %391, %392
  %394 = load i8*, i8** %11, align 8
  %395 = load i32, i32* %25, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %394, i64 %396
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = mul nsw i32 %399, 10
  %401 = load i8*, i8** %11, align 8
  %402 = load i32, i32* %25, align 4
  %403 = add i32 %402, 1
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %401, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i32
  %408 = add nsw i32 %400, %407
  %409 = load i8*, i8** %15, align 8
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  %412 = load i32, i32* %26, align 4
  %413 = mul i32 %411, %412
  %414 = sub i32 %408, %413
  %415 = mul i32 %414, 10
  %416 = load i8*, i8** %11, align 8
  %417 = load i32, i32* %25, align 4
  %418 = add i32 %417, 2
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* %416, i64 %419
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = add i32 %415, %422
  %424 = icmp ugt i32 %393, %423
  br i1 %424, label %425, label %428

425:                                              ; preds = %385
  %426 = load i32, i32* %26, align 4
  %427 = add i32 %426, -1
  store i32 %427, i32* %26, align 4
  br label %428

428:                                              ; preds = %425, %385
  br label %429

429:                                              ; preds = %428, %347
  store i32 0, i32* %27, align 4
  %430 = load i32, i32* %26, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %481

432:                                              ; preds = %429
  %433 = load i8*, i8** %29, align 8
  store i8 0, i8* %433, align 1
  %434 = load i8*, i8** %15, align 8
  %435 = load i32, i32* %20, align 4
  %436 = load i32, i32* %26, align 4
  %437 = load i8*, i8** %29, align 8
  %438 = getelementptr inbounds i8, i8* %437, i64 1
  call void @_one_mult(i8* %434, i32 %435, i32 %436, i8* %438)
  %439 = load i8*, i8** %11, align 8
  %440 = load i32, i32* %25, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i32, i32* %20, align 4
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds i8, i8* %442, i64 %444
  store i8* %445, i8** %13, align 8
  %446 = load i8*, i8** %29, align 8
  %447 = load i32, i32* %20, align 4
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %446, i64 %448
  store i8* %449, i8** %14, align 8
  store i32 0, i32* %24, align 4
  br label %450

450:                                              ; preds = %477, %432
  %451 = load i32, i32* %24, align 4
  %452 = load i32, i32* %20, align 4
  %453 = add i32 %452, 1
  %454 = icmp ult i32 %451, %453
  br i1 %454, label %455, label %480

455:                                              ; preds = %450
  %456 = load i8*, i8** %13, align 8
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = load i8*, i8** %14, align 8
  %460 = getelementptr inbounds i8, i8* %459, i32 -1
  store i8* %460, i8** %14, align 8
  %461 = load i8, i8* %459, align 1
  %462 = sext i8 %461 to i32
  %463 = sub nsw i32 %458, %462
  %464 = load i32, i32* %27, align 4
  %465 = sub i32 %463, %464
  store i32 %465, i32* %18, align 4
  %466 = load i32, i32* %18, align 4
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %455
  %469 = load i32, i32* %18, align 4
  %470 = add nsw i32 %469, 10
  store i32 %470, i32* %18, align 4
  store i32 1, i32* %27, align 4
  br label %472

471:                                              ; preds = %455
  store i32 0, i32* %27, align 4
  br label %472

472:                                              ; preds = %471, %468
  %473 = load i32, i32* %18, align 4
  %474 = trunc i32 %473 to i8
  %475 = load i8*, i8** %13, align 8
  %476 = getelementptr inbounds i8, i8* %475, i32 -1
  store i8* %476, i8** %13, align 8
  store i8 %474, i8* %475, align 1
  br label %477

477:                                              ; preds = %472
  %478 = load i32, i32* %24, align 4
  %479 = add i32 %478, 1
  store i32 %479, i32* %24, align 4
  br label %450

480:                                              ; preds = %450
  br label %481

481:                                              ; preds = %480, %429
  %482 = load i32, i32* %27, align 4
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %484, label %540

484:                                              ; preds = %481
  %485 = load i32, i32* %26, align 4
  %486 = add i32 %485, -1
  store i32 %486, i32* %26, align 4
  %487 = load i8*, i8** %11, align 8
  %488 = load i32, i32* %25, align 4
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %487, i64 %489
  %491 = load i32, i32* %20, align 4
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %490, i64 %492
  store i8* %493, i8** %13, align 8
  %494 = load i8*, i8** %15, align 8
  %495 = load i32, i32* %20, align 4
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds i8, i8* %494, i64 %496
  %498 = getelementptr inbounds i8, i8* %497, i64 -1
  store i8* %498, i8** %14, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %24, align 4
  br label %499

499:                                              ; preds = %525, %484
  %500 = load i32, i32* %24, align 4
  %501 = load i32, i32* %20, align 4
  %502 = icmp ult i32 %500, %501
  br i1 %502, label %503, label %528

503:                                              ; preds = %499
  %504 = load i8*, i8** %13, align 8
  %505 = load i8, i8* %504, align 1
  %506 = sext i8 %505 to i32
  %507 = load i8*, i8** %14, align 8
  %508 = getelementptr inbounds i8, i8* %507, i32 -1
  store i8* %508, i8** %14, align 8
  %509 = load i8, i8* %507, align 1
  %510 = sext i8 %509 to i32
  %511 = add nsw i32 %506, %510
  %512 = load i32, i32* %28, align 4
  %513 = add i32 %511, %512
  store i32 %513, i32* %18, align 4
  %514 = load i32, i32* %18, align 4
  %515 = icmp sgt i32 %514, 9
  br i1 %515, label %516, label %519

516:                                              ; preds = %503
  %517 = load i32, i32* %18, align 4
  %518 = sub nsw i32 %517, 10
  store i32 %518, i32* %18, align 4
  store i32 1, i32* %28, align 4
  br label %520

519:                                              ; preds = %503
  store i32 0, i32* %28, align 4
  br label %520

520:                                              ; preds = %519, %516
  %521 = load i32, i32* %18, align 4
  %522 = trunc i32 %521 to i8
  %523 = load i8*, i8** %13, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 -1
  store i8* %524, i8** %13, align 8
  store i8 %522, i8* %523, align 1
  br label %525

525:                                              ; preds = %520
  %526 = load i32, i32* %24, align 4
  %527 = add i32 %526, 1
  store i32 %527, i32* %24, align 4
  br label %499

528:                                              ; preds = %499
  %529 = load i32, i32* %28, align 4
  %530 = icmp eq i32 %529, 1
  br i1 %530, label %531, label %539

531:                                              ; preds = %528
  %532 = load i8*, i8** %13, align 8
  %533 = load i8, i8* %532, align 1
  %534 = sext i8 %533 to i32
  %535 = add nsw i32 %534, 1
  %536 = srem i32 %535, 10
  %537 = trunc i32 %536 to i8
  %538 = load i8*, i8** %13, align 8
  store i8 %537, i8* %538, align 1
  br label %539

539:                                              ; preds = %531, %528
  br label %540

540:                                              ; preds = %539, %481
  %541 = load i32, i32* %26, align 4
  %542 = trunc i32 %541 to i8
  %543 = load i8*, i8** %16, align 8
  %544 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %544, i8** %16, align 8
  store i8 %542, i8* %543, align 1
  %545 = load i32, i32* %25, align 4
  %546 = add i32 %545, 1
  store i32 %546, i32* %25, align 4
  br label %307

547:                                              ; preds = %307
  br label %548

548:                                              ; preds = %547, %248
  %549 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %550 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %553 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = icmp eq i32 %551, %554
  %556 = zext i1 %555 to i64
  %557 = select i1 %555, i32 0, i32 1
  %558 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %559 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %558, i32 0, i32 0
  store i32 %557, i32* %559, align 4
  %560 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %561 = call signext i8 @is_zero(%struct.bc_struct* %560)
  %562 = icmp ne i8 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %548
  %564 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %565 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %564, i32 0, i32 0
  store i32 0, i32* %565, align 4
  br label %566

566:                                              ; preds = %563, %548
  %567 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @_rm_leading_zeros(%struct.bc_struct* %567)
  %568 = load %struct.bc_struct**, %struct.bc_struct*** %8, align 8
  call void @free_num(%struct.bc_struct** %568)
  %569 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %570 = load %struct.bc_struct**, %struct.bc_struct*** %8, align 8
  store %struct.bc_struct* %569, %struct.bc_struct** %570, align 8
  %571 = load i8*, i8** %29, align 8
  call void @free(i8* %571) #7
  %572 = load i8*, i8** %11, align 8
  call void @free(i8* %572) #7
  %573 = load i8*, i8** %12, align 8
  call void @free(i8* %573) #7
  store i32 0, i32* %5, align 4
  br label %574

574:                                              ; preds = %566, %35
  %575 = load i32, i32* %5, align 4
  ret i32 %575
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_one_mult(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %16, i8 0, i64 %18, i1 false)
  br label %67

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %24, i64 %26, i1 false)
  br label %66

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8* %37, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %42, %27
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = icmp sgt i32 %39, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %11, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = srem i32 %51, 10
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %12, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, 10
  store i32 %57, i32* %9, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %12, align 8
  store i8 %63, i8* %64, align 1
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65, %22
  br label %67

67:                                               ; preds = %66, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bc_modulo(%struct.bc_struct* %0, %struct.bc_struct* %1, %struct.bc_struct** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct*, align 8
  %8 = alloca %struct.bc_struct**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.bc_struct* %0, %struct.bc_struct** %6, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %7, align 8
  store %struct.bc_struct** %2, %struct.bc_struct*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %13 = call signext i8 @is_zero(%struct.bc_struct* %12)
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %48

16:                                               ; preds = %4
  %17 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %18 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %21 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp sgt i32 %19, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %28 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  br label %36

30:                                               ; preds = %16
  %31 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %32 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i32 [ %29, %26 ], [ %35, %30 ]
  store i32 %37, i32* %11, align 4
  call void @init_num(%struct.bc_struct** %10)
  %38 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %39 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @bc_divide(%struct.bc_struct* %38, %struct.bc_struct* %39, %struct.bc_struct** %10, i32 %40)
  %42 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %43 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %44 = load i32, i32* %11, align 4
  call void @bc_multiply(%struct.bc_struct* %42, %struct.bc_struct* %43, %struct.bc_struct** %10, i32 %44)
  %45 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %46 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %47 = load %struct.bc_struct**, %struct.bc_struct*** %8, align 8
  call void @bc_sub(%struct.bc_struct* %45, %struct.bc_struct* %46, %struct.bc_struct** %47)
  call void @free_num(%struct.bc_struct** %10)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %36, %15
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bc_raise(%struct.bc_struct* %0, %struct.bc_struct* %1, %struct.bc_struct** %2, i32 %3) #0 {
  %5 = alloca %struct.bc_struct*, align 8
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bc_struct*, align 8
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.bc_struct* %0, %struct.bc_struct** %5, align 8
  store %struct.bc_struct* %1, %struct.bc_struct** %6, align 8
  store %struct.bc_struct** %2, %struct.bc_struct*** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %15 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.172, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %4
  %20 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %21 = call i64 @num2long(%struct.bc_struct* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %26 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %31 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %30, i32 0, i32 4
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %31, i64 0, i64 0
  %33 = load i8, i8* %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %24
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1.173, i64 0, i64 0))
  br label %37

37:                                               ; preds = %36, %29, %19
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  call void @free_num(%struct.bc_struct** %41)
  %42 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %43 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %42)
  %44 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  store %struct.bc_struct* %43, %struct.bc_struct** %44, align 8
  br label %135

45:                                               ; preds = %37
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  store i8 1, i8* %13, align 1
  %49 = load i64, i64* %11, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %12, align 4
  br label %99

52:                                               ; preds = %45
  store i8 0, i8* %13, align 1
  %53 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %54 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %11, align 8
  %58 = mul nsw i64 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %61 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  br label %70

66:                                               ; preds = %52
  %67 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %68 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i32 [ %65, %64 ], [ %69, %66 ]
  %72 = sext i32 %71 to i64
  %73 = icmp sgt i64 %58, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %77 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  br label %86

82:                                               ; preds = %74
  %83 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %84 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ]
  %88 = sext i32 %87 to i64
  br label %96

89:                                               ; preds = %70
  %90 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %91 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %11, align 8
  %95 = mul nsw i64 %93, %94
  br label %96

96:                                               ; preds = %89, %86
  %97 = phi i64 [ %88, %86 ], [ %95, %89 ]
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %48
  %100 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %101 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %100)
  store %struct.bc_struct* %101, %struct.bc_struct** %9, align 8
  %102 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %103 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %102)
  store %struct.bc_struct* %103, %struct.bc_struct** %10, align 8
  br label %104

104:                                              ; preds = %115, %99
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i64, i64* %11, align 8
  %109 = and i64 %108, 1
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  %113 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %114 = load i32, i32* %12, align 4
  call void @bc_multiply(%struct.bc_struct* %112, %struct.bc_struct* %113, %struct.bc_struct** %9, i32 %114)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %117 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %118 = load i32, i32* %12, align 4
  call void @bc_multiply(%struct.bc_struct* %116, %struct.bc_struct* %117, %struct.bc_struct** %10, i32 %118)
  %119 = load i64, i64* %11, align 8
  %120 = ashr i64 %119, 1
  store i64 %120, i64* %11, align 8
  br label %104

121:                                              ; preds = %104
  %122 = load i8, i8* %13, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %126 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  %127 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @bc_divide(%struct.bc_struct* %125, %struct.bc_struct* %126, %struct.bc_struct** %127, i32 %128)
  call void @free_num(%struct.bc_struct** %9)
  br label %134

130:                                              ; preds = %121
  %131 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  call void @free_num(%struct.bc_struct** %131)
  %132 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  %133 = load %struct.bc_struct**, %struct.bc_struct*** %7, align 8
  store %struct.bc_struct* %132, %struct.bc_struct** %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  call void @free_num(%struct.bc_struct** %10)
  br label %135

135:                                              ; preds = %134, %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bc_sqrt(%struct.bc_struct** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_struct**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca %struct.bc_struct*, align 8
  %12 = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct** %0, %struct.bc_struct*** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  %14 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  %15 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %16 = call i32 @bc_compare(%struct.bc_struct* %14, %struct.bc_struct* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  call void @free_num(%struct.bc_struct** %24)
  %25 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %26 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %25)
  %27 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  store %struct.bc_struct* %26, %struct.bc_struct** %27, align 8
  store i32 1, i32* %3, align 4
  br label %113

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  %31 = load %struct.bc_struct*, %struct.bc_struct** %30, align 8
  %32 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %33 = call i32 @bc_compare(%struct.bc_struct* %31, %struct.bc_struct* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  call void @free_num(%struct.bc_struct** %37)
  %38 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %39 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %38)
  %40 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  store %struct.bc_struct* %39, %struct.bc_struct** %40, align 8
  store i32 1, i32* %3, align 4
  br label %113

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  %44 = load %struct.bc_struct*, %struct.bc_struct** %43, align 8
  %45 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  %52 = load %struct.bc_struct*, %struct.bc_struct** %51, align 8
  %53 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %9, align 4
  call void @init_num(%struct.bc_struct** %10)
  call void @init_num(%struct.bc_struct** %11)
  %59 = call %struct.bc_struct* @new_num(i32 1, i32 1)
  store %struct.bc_struct* %59, %struct.bc_struct** %12, align 8
  %60 = load %struct.bc_struct*, %struct.bc_struct** %12, align 8
  %61 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %60, i32 0, i32 4
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %61, i64 0, i64 1
  store i8 5, i8* %62, align 1
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %67 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %66)
  store %struct.bc_struct* %67, %struct.bc_struct** %10, align 8
  br label %81

68:                                               ; preds = %55
  call void @int2num(%struct.bc_struct** %10, i32 10)
  %69 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  %70 = load %struct.bc_struct*, %struct.bc_struct** %69, align 8
  %71 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  call void @int2num(%struct.bc_struct** %11, i32 %72)
  %73 = load %struct.bc_struct*, %struct.bc_struct** %11, align 8
  %74 = load %struct.bc_struct*, %struct.bc_struct** %12, align 8
  %75 = load i32, i32* %6, align 4
  call void @bc_multiply(%struct.bc_struct* %73, %struct.bc_struct* %74, %struct.bc_struct** %11, i32 %75)
  %76 = load %struct.bc_struct*, %struct.bc_struct** %11, align 8
  %77 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %79 = load %struct.bc_struct*, %struct.bc_struct** %11, align 8
  %80 = load i32, i32* %6, align 4
  call void @bc_raise(%struct.bc_struct* %78, %struct.bc_struct* %79, %struct.bc_struct** %10, i32 %80)
  call void @free_num(%struct.bc_struct** %11)
  br label %81

81:                                               ; preds = %68, %65
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %105, %81
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  call void @free_num(%struct.bc_struct** %11)
  %87 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %88 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %87)
  store %struct.bc_struct* %88, %struct.bc_struct** %11, align 8
  %89 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  %90 = load %struct.bc_struct*, %struct.bc_struct** %89, align 8
  %91 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @bc_divide(%struct.bc_struct* %90, %struct.bc_struct* %91, %struct.bc_struct** %10, i32 %92)
  %94 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %95 = load %struct.bc_struct*, %struct.bc_struct** %11, align 8
  call void @bc_add(%struct.bc_struct* %94, %struct.bc_struct* %95, %struct.bc_struct** %10)
  %96 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %97 = load %struct.bc_struct*, %struct.bc_struct** %12, align 8
  %98 = load i32, i32* %9, align 4
  call void @bc_multiply(%struct.bc_struct* %96, %struct.bc_struct* %97, %struct.bc_struct** %10, i32 %98)
  %99 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %100 = load %struct.bc_struct*, %struct.bc_struct** %11, align 8
  %101 = call i32 @_do_compare(%struct.bc_struct* %99, %struct.bc_struct* %100, i32 0, i32 1)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  store i32 1, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %86
  br label %82

106:                                              ; preds = %82
  %107 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  call void @free_num(%struct.bc_struct** %107)
  %108 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %109 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %110 = load %struct.bc_struct**, %struct.bc_struct*** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @bc_divide(%struct.bc_struct* %108, %struct.bc_struct* %109, %struct.bc_struct** %110, i32 %111)
  call void @free_num(%struct.bc_struct** %10)
  call void @free_num(%struct.bc_struct** %11)
  call void @free_num(%struct.bc_struct** %12)
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %106, %36, %23, %19
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @out_long(i64 %0, i32 %1, i32 %2, void (i32)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca void (i32)*, align 8
  %9 = alloca [40 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store void (i32)* %3, void (i32)** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load void (i32)*, void (i32)** %8, align 8
  call void %15(i32 32)
  br label %16

16:                                               ; preds = %14, %4
  %17 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.176, i64 0, i64 0), i64 %18) #7
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %21 = call i64 @strlen(i8* %20) #9
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %27, %16
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load void (i32)*, void (i32)** %8, align 8
  call void %28(i32 48)
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  br label %23

31:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load void (i32)*, void (i32)** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  call void %37(i32 %42)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %32

46:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @out_num(%struct.bc_struct* %0, i32 %1, void (i32)* %2) #0 {
  %4 = alloca %struct.bc_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stk_rec*, align 8
  %12 = alloca %struct.stk_rec*, align 8
  %13 = alloca %struct.bc_struct*, align 8
  %14 = alloca %struct.bc_struct*, align 8
  %15 = alloca %struct.bc_struct*, align 8
  %16 = alloca %struct.bc_struct*, align 8
  %17 = alloca %struct.bc_struct*, align 8
  %18 = alloca %struct.bc_struct*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (i32)* %2, void (i32)** %6, align 8
  %19 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %20 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load void (i32)*, void (i32)** %6, align 8
  call void %24(i32 45)
  br label %25

25:                                               ; preds = %23, %3
  %26 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %27 = call signext i8 @is_zero(%struct.bc_struct* %26)
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load void (i32)*, void (i32)** %6, align 8
  call void %30(i32 48)
  br label %212

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %93

34:                                               ; preds = %31
  %35 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %36 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %35, i32 0, i32 4
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %36, i64 0, i64 0
  store i8* %37, i8** %7, align 8
  %38 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %39 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42, %34
  %48 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %49 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %61, %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load void (i32)*, void (i32)** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, 48
  call void %55(i32 %60)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %51

64:                                               ; preds = %51
  br label %68

65:                                               ; preds = %42
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %65, %64
  %69 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %70 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load void (i32)*, void (i32)** %6, align 8
  call void %74(i32 46)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %88, %73
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %78 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load void (i32)*, void (i32)** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  %87 = add nsw i32 %86, 48
  call void %82(i32 %87)
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %75

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %68
  br label %211

93:                                               ; preds = %31
  store %struct.stk_rec* null, %struct.stk_rec** %11, align 8
  call void @init_num(%struct.bc_struct** %13)
  %94 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %95 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %96 = call i32 @bc_divide(%struct.bc_struct* %94, %struct.bc_struct* %95, %struct.bc_struct** %13, i32 0)
  call void @init_num(%struct.bc_struct** %14)
  call void @init_num(%struct.bc_struct** %16)
  call void @init_num(%struct.bc_struct** %15)
  %97 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %98 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  call void @bc_sub(%struct.bc_struct* %97, %struct.bc_struct* %98, %struct.bc_struct** %14)
  %99 = load i32, i32* %5, align 4
  call void @int2num(%struct.bc_struct** %15, i32 %99)
  call void @init_num(%struct.bc_struct** %18)
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 %100, 1
  call void @int2num(%struct.bc_struct** %18, i32 %101)
  br label %102

102:                                              ; preds = %107, %93
  %103 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  %104 = call signext i8 @is_zero(%struct.bc_struct* %103)
  %105 = icmp ne i8 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %124

107:                                              ; preds = %102
  %108 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  %109 = load %struct.bc_struct*, %struct.bc_struct** %15, align 8
  %110 = call i32 @bc_modulo(%struct.bc_struct* %108, %struct.bc_struct* %109, %struct.bc_struct** %16, i32 0)
  %111 = call noalias i8* @malloc(i64 16) #7
  %112 = bitcast i8* %111 to %struct.stk_rec*
  store %struct.stk_rec* %112, %struct.stk_rec** %12, align 8
  %113 = load %struct.bc_struct*, %struct.bc_struct** %16, align 8
  %114 = call i64 @num2long(%struct.bc_struct* %113)
  %115 = load %struct.stk_rec*, %struct.stk_rec** %12, align 8
  %116 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.stk_rec*, %struct.stk_rec** %11, align 8
  %118 = load %struct.stk_rec*, %struct.stk_rec** %12, align 8
  %119 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %118, i32 0, i32 1
  store %struct.stk_rec* %117, %struct.stk_rec** %119, align 8
  %120 = load %struct.stk_rec*, %struct.stk_rec** %12, align 8
  store %struct.stk_rec* %120, %struct.stk_rec** %11, align 8
  %121 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  %122 = load %struct.bc_struct*, %struct.bc_struct** %15, align 8
  %123 = call i32 @bc_divide(%struct.bc_struct* %121, %struct.bc_struct* %122, %struct.bc_struct** %13, i32 0)
  br label %102

124:                                              ; preds = %102
  %125 = load %struct.stk_rec*, %struct.stk_rec** %11, align 8
  %126 = icmp ne %struct.stk_rec* %125, null
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %156, %127
  %129 = load %struct.stk_rec*, %struct.stk_rec** %11, align 8
  %130 = icmp ne %struct.stk_rec* %129, null
  br i1 %130, label %131, label %159

131:                                              ; preds = %128
  %132 = load %struct.stk_rec*, %struct.stk_rec** %11, align 8
  store %struct.stk_rec* %132, %struct.stk_rec** %12, align 8
  %133 = load %struct.stk_rec*, %struct.stk_rec** %11, align 8
  %134 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %133, i32 0, i32 1
  %135 = load %struct.stk_rec*, %struct.stk_rec** %134, align 8
  store %struct.stk_rec* %135, %struct.stk_rec** %11, align 8
  %136 = load i32, i32* %5, align 4
  %137 = icmp sle i32 %136, 16
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load void (i32)*, void (i32)** %6, align 8
  %140 = load %struct.stk_rec*, %struct.stk_rec** %12, align 8
  %141 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [17 x i8], [17 x i8]* @ref_str, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  call void %139(i32 %147)
  br label %156

148:                                              ; preds = %131
  %149 = load %struct.stk_rec*, %struct.stk_rec** %12, align 8
  %150 = getelementptr inbounds %struct.stk_rec, %struct.stk_rec* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.bc_struct*, %struct.bc_struct** %18, align 8
  %153 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load void (i32)*, void (i32)** %6, align 8
  call void @out_long(i64 %151, i32 %154, i32 1, void (i32)* %155)
  br label %156

156:                                              ; preds = %148, %138
  %157 = load %struct.stk_rec*, %struct.stk_rec** %12, align 8
  %158 = bitcast %struct.stk_rec* %157 to i8*
  call void @free(i8* %158) #7
  br label %128

159:                                              ; preds = %128
  br label %160

160:                                              ; preds = %159, %124
  %161 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %162 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %210

165:                                              ; preds = %160
  %166 = load void (i32)*, void (i32)** %6, align 8
  call void %166(i32 46)
  store i32 0, i32* %10, align 4
  %167 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %168 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %167)
  store %struct.bc_struct* %168, %struct.bc_struct** %17, align 8
  br label %169

169:                                              ; preds = %206, %165
  %170 = load %struct.bc_struct*, %struct.bc_struct** %17, align 8
  %171 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %174 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp sle i32 %172, %175
  br i1 %176, label %177, label %209

177:                                              ; preds = %169
  %178 = load %struct.bc_struct*, %struct.bc_struct** %14, align 8
  %179 = load %struct.bc_struct*, %struct.bc_struct** %15, align 8
  %180 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  %181 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  call void @bc_multiply(%struct.bc_struct* %178, %struct.bc_struct* %179, %struct.bc_struct** %14, i32 %182)
  %183 = load %struct.bc_struct*, %struct.bc_struct** %14, align 8
  %184 = call i64 @num2long(%struct.bc_struct* %183)
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  call void @int2num(%struct.bc_struct** %13, i32 %186)
  %187 = load %struct.bc_struct*, %struct.bc_struct** %14, align 8
  %188 = load %struct.bc_struct*, %struct.bc_struct** %13, align 8
  call void @bc_sub(%struct.bc_struct* %187, %struct.bc_struct* %188, %struct.bc_struct** %14)
  %189 = load i32, i32* %5, align 4
  %190 = icmp sle i32 %189, 16
  br i1 %190, label %191, label %198

191:                                              ; preds = %177
  %192 = load void (i32)*, void (i32)** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [17 x i8], [17 x i8]* @ref_str, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  call void %192(i32 %197)
  br label %206

198:                                              ; preds = %177
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.bc_struct*, %struct.bc_struct** %18, align 8
  %202 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load void (i32)*, void (i32)** %6, align 8
  call void @out_long(i64 %200, i32 %203, i32 %204, void (i32)* %205)
  store i32 1, i32* %10, align 4
  br label %206

206:                                              ; preds = %198, %191
  %207 = load %struct.bc_struct*, %struct.bc_struct** %17, align 8
  %208 = load %struct.bc_struct*, %struct.bc_struct** %15, align 8
  call void @bc_multiply(%struct.bc_struct* %207, %struct.bc_struct* %208, %struct.bc_struct** %17, i32 0)
  br label %169

209:                                              ; preds = %169
  br label %210

210:                                              ; preds = %209, %160
  call void @free_num(%struct.bc_struct** %13)
  call void @free_num(%struct.bc_struct** %14)
  call void @free_num(%struct.bc_struct** %15)
  call void @free_num(%struct.bc_struct** %16)
  br label %211

211:                                              ; preds = %210, %92
  br label %212

212:                                              ; preds = %211, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* @yy_init, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %0
  %18 = load i32, i32* @yy_start, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* @yy_start, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %23 = icmp ne %struct._IO_FILE* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %25, %struct._IO_FILE** @yyin, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %28 = icmp ne %struct._IO_FILE* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %30, %struct._IO_FILE** @yyout, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %33 = icmp ne %struct.yy_buffer_state* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %35, %struct._IO_FILE* %36)
  br label %40

37:                                               ; preds = %31
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %39 = call %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %38, i32 16384)
  store %struct.yy_buffer_state* %39, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %40

40:                                               ; preds = %37, %34
  call void @yy_load_buffer_state()
  store i32 0, i32* @yy_init, align 4
  br label %41

41:                                               ; preds = %40, %0
  br label %42

42:                                               ; preds = %480, %41
  %43 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %43, i8** %3, align 8
  %44 = load i8, i8* @yy_hold_char, align 1
  %45 = load i8*, i8** %3, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %3, align 8
  store i8* %46, i8** %4, align 8
  %47 = load i32, i32* @yy_start, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %451, %423, %42
  br label %49

49:                                               ; preds = %108, %48
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %6, align 1
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = icmp ne i16 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %2, align 4
  store i32 %61, i32* @yy_last_accepting_state, align 4
  %62 = load i8*, i8** %3, align 8
  store i8* %62, i8** @yy_last_accepting_cpos, align 8
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %92, %63
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = load i8, i8* %6, align 1
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %64
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i32
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp sge i32 %85, 144
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i8, i8* %6, align 1
  %89 = sext i8 %88 to i64
  %90 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %6, align 1
  br label %92

92:                                               ; preds = %87, %79
  br label %64

93:                                               ; preds = %64
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = load i8, i8* %6, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = sext i16 %104 to i32
  store i32 %105, i32* %2, align 4
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i32
  %114 = icmp ne i32 %113, 194
  br i1 %114, label %49, label %115

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %460, %427, %135, %115
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  store i32 %121, i32* %5, align 4
  %122 = load i8*, i8** %4, align 8
  store i8* %122, i8** @yytext, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* @yyleng, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* @yy_hold_char, align 1
  %131 = load i8*, i8** %3, align 8
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %3, align 8
  store i8* %132, i8** @yy_c_buf_p, align 8
  br label %133

133:                                              ; preds = %433, %116
  %134 = load i32, i32* %5, align 4
  switch i32 %134, label %473 [
    i32 0, label %135
    i32 1, label %140
    i32 2, label %141
    i32 3, label %142
    i32 4, label %143
    i32 5, label %144
    i32 6, label %145
    i32 7, label %146
    i32 8, label %147
    i32 9, label %148
    i32 10, label %149
    i32 11, label %150
    i32 12, label %151
    i32 13, label %152
    i32 14, label %153
    i32 15, label %154
    i32 16, label %155
    i32 17, label %156
    i32 18, label %157
    i32 19, label %158
    i32 20, label %159
    i32 21, label %160
    i32 22, label %161
    i32 23, label %169
    i32 24, label %170
    i32 25, label %171
    i32 26, label %172
    i32 27, label %176
    i32 28, label %180
    i32 29, label %198
    i32 30, label %201
    i32 31, label %205
    i32 32, label %208
    i32 33, label %211
    i32 34, label %212
    i32 35, label %256
    i32 36, label %259
    i32 37, label %293
    i32 38, label %359
    i32 39, label %386
    i32 41, label %392
    i32 40, label %393
  ]

135:                                              ; preds = %133
  %136 = load i8, i8* @yy_hold_char, align 1
  %137 = load i8*, i8** %3, align 8
  store i8 %136, i8* %137, align 1
  %138 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %138, i8** %3, align 8
  %139 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %139, i32* %2, align 4
  br label %116

140:                                              ; preds = %133
  store i32 268, i32* %1, align 4
  br label %481

141:                                              ; preds = %133
  store i32 269, i32* %1, align 4
  br label %481

142:                                              ; preds = %133
  store i32 270, i32* %1, align 4
  br label %481

143:                                              ; preds = %133
  store i32 271, i32* %1, align 4
  br label %481

144:                                              ; preds = %133
  store i32 272, i32* %1, align 4
  br label %481

145:                                              ; preds = %133
  store i32 273, i32* %1, align 4
  br label %481

146:                                              ; preds = %133
  store i32 274, i32* %1, align 4
  br label %481

147:                                              ; preds = %133
  store i32 275, i32* %1, align 4
  br label %481

148:                                              ; preds = %133
  store i32 276, i32* %1, align 4
  br label %481

149:                                              ; preds = %133
  store i32 278, i32* %1, align 4
  br label %481

150:                                              ; preds = %133
  store i32 279, i32* %1, align 4
  br label %481

151:                                              ; preds = %133
  store i32 280, i32* %1, align 4
  br label %481

152:                                              ; preds = %133
  store i32 281, i32* %1, align 4
  br label %481

153:                                              ; preds = %133
  store i32 277, i32* %1, align 4
  br label %481

154:                                              ; preds = %133
  store i32 282, i32* %1, align 4
  br label %481

155:                                              ; preds = %133
  store i32 284, i32* %1, align 4
  br label %481

156:                                              ; preds = %133
  store i32 285, i32* %1, align 4
  br label %481

157:                                              ; preds = %133
  store i32 283, i32* %1, align 4
  br label %481

158:                                              ; preds = %133
  store i32 286, i32* %1, align 4
  br label %481

159:                                              ; preds = %133
  store i32 287, i32* %1, align 4
  br label %481

160:                                              ; preds = %133
  store i32 288, i32* %1, align 4
  br label %481

161:                                              ; preds = %133
  %162 = load i8*, i8** @yytext, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  store i8 %164, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  %165 = load i8*, i8** @yytext, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  store i32 %168, i32* %1, align 4
  br label %481

169:                                              ; preds = %133
  store i32 258, i32* %1, align 4
  br label %481

170:                                              ; preds = %133
  store i32 259, i32* %1, align 4
  br label %481

171:                                              ; preds = %133
  store i32 260, i32* %1, align 4
  br label %481

172:                                              ; preds = %133
  %173 = load i8*, i8** @yytext, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  store i8 %175, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  store i32 264, i32* %1, align 4
  br label %481

176:                                              ; preds = %133
  %177 = load i8*, i8** @yytext, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  store i8 %179, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  store i32 265, i32* %1, align 4
  br label %481

180:                                              ; preds = %133
  store i8 61, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  br label %181

181:                                              ; preds = %180
  %182 = load i8, i8* @yy_hold_char, align 1
  %183 = load i8*, i8** %3, align 8
  store i8 %182, i8* %183, align 1
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %185, i8** %3, align 8
  store i8* %185, i8** @yy_c_buf_p, align 8
  %186 = load i8*, i8** %4, align 8
  store i8* %186, i8** @yytext, align 8
  %187 = load i8*, i8** %3, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* @yyleng, align 4
  %193 = load i8*, i8** %3, align 8
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* @yy_hold_char, align 1
  %195 = load i8*, i8** %3, align 8
  store i8 0, i8* %195, align 1
  %196 = load i8*, i8** %3, align 8
  store i8* %196, i8** @yy_c_buf_p, align 8
  br label %197

197:                                              ; preds = %181
  store i32 265, i32* %1, align 4
  br label %481

198:                                              ; preds = %133
  %199 = load i8*, i8** @yytext, align 8
  %200 = call i8* @strcopyof(i8* %199)
  store i8* %200, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 266, i32* %1, align 4
  br label %481

201:                                              ; preds = %133
  %202 = load i8*, i8** @yytext, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  store i32 267, i32* %1, align 4
  br label %481

205:                                              ; preds = %133
  %206 = load i32, i32* @line_no, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* @line_no, align 4
  store i32 257, i32* %1, align 4
  br label %481

208:                                              ; preds = %133
  %209 = load i32, i32* @line_no, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @line_no, align 4
  br label %480

211:                                              ; preds = %133
  br label %480

212:                                              ; preds = %133
  br label %213

213:                                              ; preds = %254, %212
  br label %214

214:                                              ; preds = %228, %213
  %215 = call i32 @input()
  store i32 %215, i32* %7, align 4
  %216 = icmp ne i32 %215, 42
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, -1
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi i1 [ false, %214 ], [ %219, %217 ]
  br i1 %221, label %222, label %229

222:                                              ; preds = %220
  %223 = load i32, i32* %7, align 4
  %224 = icmp eq i32 %223, 10
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* @line_no, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* @line_no, align 4
  br label %228

228:                                              ; preds = %225, %222
  br label %214

229:                                              ; preds = %220
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 42
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %236, %232
  %234 = call i32 @input()
  store i32 %234, i32* %7, align 4
  %235 = icmp eq i32 %234, 42
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %233

237:                                              ; preds = %233
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 47
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %255

241:                                              ; preds = %237
  %242 = load i32, i32* %7, align 4
  %243 = icmp eq i32 %242, 10
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* @line_no, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* @line_no, align 4
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %229
  %249 = load i32, i32* %7, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.183, i64 0, i64 0))
  br label %255

254:                                              ; preds = %248
  br label %213

255:                                              ; preds = %251, %240
  br label %480

256:                                              ; preds = %133
  %257 = load i8*, i8** @yytext, align 8
  %258 = call i8* @strcopyof(i8* %257)
  store i8* %258, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 262, i32* %1, align 4
  br label %481

259:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  %260 = load i8*, i8** @yytext, align 8
  %261 = call i8* @strcopyof(i8* %260)
  store i8* %261, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  %262 = load i8*, i8** @yytext, align 8
  store i8* %262, i8** %8, align 8
  br label %263

263:                                              ; preds = %285, %259
  %264 = load i8*, i8** %8, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %288

268:                                              ; preds = %263
  %269 = load i8*, i8** %8, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 10
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load i32, i32* @line_no, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* @line_no, align 4
  br label %276

276:                                              ; preds = %273, %268
  %277 = load i8*, i8** %8, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 34
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load i32, i32* %9, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %284

284:                                              ; preds = %281, %276
  br label %285

285:                                              ; preds = %284
  %286 = load i8*, i8** %8, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %8, align 8
  br label %263

288:                                              ; preds = %263
  %289 = load i32, i32* %9, align 4
  %290 = icmp ne i32 %289, 2
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.184, i64 0, i64 0))
  br label %292

292:                                              ; preds = %291, %288
  store i32 261, i32* %1, align 4
  br label %481

293:                                              ; preds = %133
  %294 = load i8*, i8** @yytext, align 8
  %295 = call i64 @strlen(i8* %294) #9
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %12, align 4
  %297 = load i8*, i8** @yytext, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 46
  br i1 %304, label %305, label %311

305:                                              ; preds = %293
  %306 = load i8*, i8** @yytext, align 8
  %307 = load i32, i32* %12, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %306, i64 %309
  store i8 0, i8* %310, align 1
  br label %311

311:                                              ; preds = %305, %293
  %312 = load i8*, i8** @yytext, align 8
  store i8* %312, i8** %10, align 8
  %313 = load i8*, i8** @yytext, align 8
  store i8* %313, i8** %11, align 8
  br label %314

314:                                              ; preds = %319, %311
  %315 = load i8*, i8** %10, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 48
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load i8*, i8** %10, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %10, align 8
  br label %314

322:                                              ; preds = %314
  %323 = load i8*, i8** %10, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load i8*, i8** %10, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 -1
  store i8* %329, i8** %10, align 8
  br label %330

330:                                              ; preds = %327, %322
  br label %331

331:                                              ; preds = %354, %330
  %332 = load i8*, i8** %10, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %355

336:                                              ; preds = %331
  %337 = load i8*, i8** %10, align 8
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 92
  br i1 %340, label %341, label %348

341:                                              ; preds = %336
  %342 = load i8*, i8** %10, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %10, align 8
  %344 = load i8*, i8** %10, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %10, align 8
  %346 = load i32, i32* @line_no, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* @line_no, align 4
  br label %354

348:                                              ; preds = %336
  %349 = load i8*, i8** %10, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %10, align 8
  %351 = load i8, i8* %349, align 1
  %352 = load i8*, i8** %11, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %11, align 8
  store i8 %351, i8* %352, align 1
  br label %354

354:                                              ; preds = %348, %341
  br label %331

355:                                              ; preds = %331
  %356 = load i8*, i8** %11, align 8
  store i8 0, i8* %356, align 1
  %357 = load i8*, i8** @yytext, align 8
  %358 = call i8* @strcopyof(i8* %357)
  store i8* %358, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 263, i32* %1, align 4
  br label %481

359:                                              ; preds = %133
  %360 = load i8*, i8** @yytext, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 0
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp slt i32 %363, 32
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load i8*, i8** @yytext, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 0
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = add nsw i32 %369, 64
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.185, i64 0, i64 0), i32 %370)
  br label %385

371:                                              ; preds = %359
  %372 = load i8*, i8** @yytext, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 0
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp sgt i32 %375, 126
  br i1 %376, label %377, label %382

377:                                              ; preds = %371
  %378 = load i8*, i8** @yytext, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 0
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.186, i64 0, i64 0), i32 %381)
  br label %384

382:                                              ; preds = %371
  %383 = load i8*, i8** @yytext, align 8
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4.187, i64 0, i64 0), i8* %383)
  br label %384

384:                                              ; preds = %382, %377
  br label %385

385:                                              ; preds = %384, %365
  br label %480

386:                                              ; preds = %133
  %387 = load i8*, i8** @yytext, align 8
  %388 = load i32, i32* @yyleng, align 4
  %389 = sext i32 %388 to i64
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %391 = call i64 @fwrite(i8* %387, i64 %389, i64 1, %struct._IO_FILE* %390)
  br label %480

392:                                              ; preds = %133
  store i32 0, i32* %1, align 4
  br label %481

393:                                              ; preds = %133
  %394 = load i8*, i8** %3, align 8
  %395 = load i8*, i8** @yytext, align 8
  %396 = ptrtoint i8* %394 to i64
  %397 = ptrtoint i8* %395 to i64
  %398 = sub i64 %396, %397
  %399 = sub nsw i64 %398, 1
  %400 = trunc i64 %399 to i32
  store i32 %400, i32* %13, align 4
  %401 = load i8, i8* @yy_hold_char, align 1
  %402 = load i8*, i8** %3, align 8
  store i8 %401, i8* %402, align 1
  %403 = load i8*, i8** @yy_c_buf_p, align 8
  %404 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %405 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = load i32, i32* @yy_n_chars, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = icmp ule i8* %403, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %393
  %412 = load i8*, i8** @yytext, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  store i8* %415, i8** @yy_c_buf_p, align 8
  %416 = call i32 @yy_get_previous_state()
  store i32 %416, i32* %2, align 4
  %417 = load i32, i32* %2, align 4
  %418 = call i32 @yy_try_NUL_trans(i32 %417)
  store i32 %418, i32* %14, align 4
  %419 = load i8*, i8** @yytext, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 0
  store i8* %420, i8** %4, align 8
  %421 = load i32, i32* %14, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %411
  %424 = load i8*, i8** @yy_c_buf_p, align 8
  %425 = getelementptr inbounds i8, i8* %424, i32 1
  store i8* %425, i8** @yy_c_buf_p, align 8
  store i8* %425, i8** %3, align 8
  %426 = load i32, i32* %14, align 4
  store i32 %426, i32* %2, align 4
  br label %48

427:                                              ; preds = %411
  br label %116

428:                                              ; preds = %393
  %429 = call i32 @yy_get_next_buffer()
  switch i32 %429, label %471 [
    i32 1, label %430
    i32 0, label %451
    i32 2, label %460
  ]

430:                                              ; preds = %428
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %431 = call i32 @yywrap()
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %430
  %434 = load i8*, i8** @yytext, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 0
  store i8* %435, i8** @yy_c_buf_p, align 8
  %436 = load i32, i32* @yy_start, align 4
  %437 = sub nsw i32 %436, 1
  %438 = sdiv i32 %437, 2
  %439 = add nsw i32 40, %438
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %5, align 4
  br label %133

441:                                              ; preds = %430
  %442 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %441
  br label %445

445:                                              ; preds = %444
  %446 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %446, %struct._IO_FILE* %447)
  call void @yy_load_buffer_state()
  br label %448

448:                                              ; preds = %445
  br label %449

449:                                              ; preds = %448, %441
  br label %450

450:                                              ; preds = %449
  br label %471

451:                                              ; preds = %428
  %452 = load i8*, i8** @yytext, align 8
  %453 = load i32, i32* %13, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i8, i8* %452, i64 %454
  store i8* %455, i8** @yy_c_buf_p, align 8
  %456 = call i32 @yy_get_previous_state()
  store i32 %456, i32* %2, align 4
  %457 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %457, i8** %3, align 8
  %458 = load i8*, i8** @yytext, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 0
  store i8* %459, i8** %4, align 8
  br label %48

460:                                              ; preds = %428
  %461 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %462 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %461, i32 0, i32 1
  %463 = load i8*, i8** %462, align 8
  %464 = load i32, i32* @yy_n_chars, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %463, i64 %465
  store i8* %466, i8** @yy_c_buf_p, align 8
  %467 = call i32 @yy_get_previous_state()
  store i32 %467, i32* %2, align 4
  %468 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %468, i8** %3, align 8
  %469 = load i8*, i8** @yytext, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 0
  store i8* %470, i8** %4, align 8
  br label %116

471:                                              ; preds = %450, %428
  br label %472

472:                                              ; preds = %471
  br label %480

473:                                              ; preds = %133
  br label %474

474:                                              ; preds = %473
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %476 = call i32 @fputs(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5.188, i64 0, i64 0), %struct._IO_FILE* %475)
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %478 = call i32 @putc(i32 10, %struct._IO_FILE* %477)
  call void @exit(i32 1) #8
  unreachable

479:                                              ; No predecessors!
  br label %480

480:                                              ; preds = %479, %472, %386, %385, %255, %211, %208
  br label %42

481:                                              ; preds = %392, %355, %292, %256, %205, %201, %198, %197, %176, %172, %171, %170, %169, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140
  %482 = load i32, i32* %1, align 4
  ret i32 %482
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_init_buffer(%struct.yy_buffer_state* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca %struct.yy_buffer_state*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %7 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 0
  store %struct._IO_FILE* %5, %struct._IO_FILE** %7, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %9 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 10, i8* %11, align 1
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %12, i32 0, i32 4
  store i32 1, i32* %13, align 4
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %15 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %19 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 0, i8* %21, align 1
  %22 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %23 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %27 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %29 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %28, i32 0, i32 5
  store i32 0, i32* %29, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %0, i32 %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias i8* @malloc(i64 40) #7
  %7 = bitcast i8* %6 to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %5, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %9 = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6.193, i64 0, i64 0), %struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 @putc(i32 10, %struct._IO_FILE* %14)
  call void @exit(i32 1) #8
  unreachable

16:                                               ; No predecessors!
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %20 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %22 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = call noalias i8* @malloc(i64 %25) #7
  %27 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %28 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %30 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6.193, i64 0, i64 0), %struct._IO_FILE* %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 @putc(i32 10, %struct._IO_FILE* %37)
  call void @exit(i32 1) #8
  unreachable

39:                                               ; No predecessors!
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %41, %struct._IO_FILE* %42)
  %43 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  ret %struct.yy_buffer_state* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_load_buffer_state() #0 {
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i32 0, i32 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @yy_n_chars, align 4
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 2
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** @yy_c_buf_p, align 8
  store i8* %6, i8** @yytext, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** @yyin, align 8
  %10 = load i8*, i8** @yy_c_buf_p, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* @yy_hold_char, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @input() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i8, i8* @yy_hold_char, align 1
  %6 = load i8*, i8** %3, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** @yy_c_buf_p, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %0
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @yy_n_chars, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = icmp ult i8* %12, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 0, i8* %21, align 1
  br label %50

22:                                               ; preds = %11
  %23 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %23, i8** @yytext, align 8
  %24 = load i8*, i8** @yy_c_buf_p, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** @yy_c_buf_p, align 8
  %26 = call i32 @yy_get_next_buffer()
  switch i32 %26, label %49 [
    i32 1, label %27
    i32 0, label %39
    i32 2, label %42
  ]

27:                                               ; preds = %22
  %28 = call i32 @yywrap()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** @yytext, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8* %32, i8** @yy_c_buf_p, align 8
  store i32 -1, i32* %1, align 4
  br label %59

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %35, %struct._IO_FILE* %36)
  call void @yy_load_buffer_state()
  br label %37

37:                                               ; preds = %34
  %38 = call i32 @input()
  store i32 %38, i32* %1, align 4
  br label %59

39:                                               ; preds = %22
  %40 = load i8*, i8** @yytext, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8* %41, i8** @yy_c_buf_p, align 8
  br label %49

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10.192, i64 0, i64 0), %struct._IO_FILE* %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 @putc(i32 10, %struct._IO_FILE* %46)
  call void @exit(i32 1) #8
  unreachable

48:                                               ; No predecessors!
  br label %49

49:                                               ; preds = %48, %39, %22
  br label %50

50:                                               ; preds = %49, %20
  br label %51

51:                                               ; preds = %50, %0
  %52 = load i8*, i8** @yy_c_buf_p, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %2, align 4
  %55 = load i8*, i8** @yy_c_buf_p, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** @yy_c_buf_p, align 8
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* @yy_hold_char, align 1
  %58 = load i32, i32* %2, align 4
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %51, %37, %30
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = load i32, i32* @yy_start, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i8*, i8** @yytext, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8* %6, i8** %2, align 8
  br label %7

7:                                                ; preds = %78, %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** @yy_c_buf_p, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %81

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  br label %24

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ %22, %16 ], [ 1, %23 ]
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %3, align 1
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = icmp ne i16 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %1, align 4
  store i32 %33, i32* @yy_last_accepting_state, align 4
  %34 = load i8*, i8** %2, align 8
  store i8* %34, i8** @yy_last_accepting_cpos, align 8
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load i8, i8* %3, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %36
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp sge i32 %57, 144
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i8, i8* %3, align 1
  %61 = sext i8 %60 to i64
  %62 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %3, align 1
  br label %64

64:                                               ; preds = %59, %51
  br label %36

65:                                               ; preds = %36
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = sext i16 %69 to i32
  %71 = load i8, i8* %3, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %65
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %2, align 8
  br label %7

81:                                               ; preds = %7
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_try_NUL_trans(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %6, i8** %4, align 8
  store i8 1, i8* %5, align 1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = icmp ne i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* @yy_last_accepting_state, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** @yy_last_accepting_cpos, align 8
  br label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %16
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp sge i32 %37, 144
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i64
  %42 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %5, align 1
  br label %44

44:                                               ; preds = %39, %31
  br label %16

45:                                               ; preds = %16
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = load i8, i8* %5, align 1
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp eq i32 %62, 194
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  br label %70

68:                                               ; preds = %45
  %69 = load i32, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 0, %67 ], [ %69, %68 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** @yytext, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @yy_n_chars, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = icmp ugt i8* %12, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %0
  br label %22

22:                                               ; preds = %21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7.189, i64 0, i64 0), %struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 @putc(i32 10, %struct._IO_FILE* %25)
  call void @exit(i32 1) #8
  unreachable

27:                                               ; No predecessors!
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i8*, i8** @yy_c_buf_p, align 8
  %30 = load i8*, i8** @yytext, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %45, %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %2, align 8
  %42 = load i8, i8* %40, align 1
  %43 = load i8*, i8** %1, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %1, align 8
  store i8 %42, i8* %43, align 1
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* @yy_n_chars, align 4
  br label %103

54:                                               ; preds = %48
  %55 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %56 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 8192
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 8192, i32* %6, align 4
  br label %75

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8.190, i64 0, i64 0), %struct._IO_FILE* %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 @putc(i32 10, %struct._IO_FILE* %71)
  call void @exit(i32 1) #8
  unreachable

73:                                               ; No predecessors!
  br label %74

74:                                               ; preds = %73, %64
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %101, %75
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %78 = call i32 @fileno(%struct._IO_FILE* %77) #7
  %79 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %80 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = call i64 @read(i32 %78, i8* %84, i64 %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @yy_n_chars, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %76
  %91 = call i32* @__errno_location() #10
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 4
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %97 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9.191, i64 0, i64 0), %struct._IO_FILE* %96)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = call i32 @putc(i32 10, %struct._IO_FILE* %98)
  call void @exit(i32 1) #8
  unreachable

100:                                              ; No predecessors!
  br label %101

101:                                              ; preds = %100, %90
  br label %76

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102, %53
  %104 = load i32, i32* @yy_n_chars, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  %110 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %111 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %110, i32 0, i32 5
  store i32 2, i32* %111, align 8
  br label %115

112:                                              ; preds = %106
  store i32 2, i32* %5, align 4
  %113 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %114 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %113, i32 0, i32 5
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %109
  br label %117

116:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @yy_n_chars, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* @yy_n_chars, align 4
  %121 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %122 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @yy_n_chars, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %128 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* @yy_n_chars, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %135 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** @yytext, align 8
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yywrap() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @open_new_file()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* %1, align 4
  ret i32 %7
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

declare dso_local i32 @putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #3

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyrestart(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %3, %struct._IO_FILE* %4)
  call void @yy_load_buffer_state()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_switch_to_buffer(%struct.yy_buffer_state* %0) #0 {
  %2 = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %5 = icmp eq %struct.yy_buffer_state* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %9 = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i8, i8* @yy_hold_char, align 1
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i8*, i8** @yy_c_buf_p, align 8
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %15 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @yy_n_chars, align 4
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %18 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %10, %7
  %20 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  store %struct.yy_buffer_state* %20, %struct.yy_buffer_state** @yy_current_buffer, align 8
  call void @yy_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %21

21:                                               ; preds = %19, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_delete_buffer(%struct.yy_buffer_state* %0) #0 {
  %2 = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %5 = icmp eq %struct.yy_buffer_state* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %9 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* %10) #7
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %12 = bitcast %struct.yy_buffer_state* %11 to i8*
  call void @free(i8* %12) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_storage() #0 {
  store i32 0, i32* @f_count, align 4
  call void @more_functions()
  %1 = load i8**, i8*** @f_names, align 8
  %2 = getelementptr inbounds i8*, i8** %1, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i64 0, i64 0), i8** %2, align 8
  store i32 0, i32* @v_count, align 4
  call void @more_variables()
  store i32 0, i32* @a_count, align 4
  call void @more_arrays()
  store %struct.estack_rec* null, %struct.estack_rec** @ex_stack, align 8
  store %struct.fstack_rec* null, %struct.fstack_rec** @fn_stack, align 8
  store i32 10, i32* @i_base, align 4
  store i32 10, i32* @o_base, align 4
  store i32 0, i32* @scale, align 4
  store i8 0, i8* @c_code, align 1
  call void @init_numbers()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @more_functions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_function*, align 8
  %5 = alloca %struct.bc_function*, align 8
  %6 = alloca i8**, align 8
  %7 = load i32, i32* @f_count, align 4
  store i32 %7, i32* %1, align 4
  %8 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  store %struct.bc_function* %8, %struct.bc_function** %4, align 8
  %9 = load i8**, i8*** @f_names, align 8
  store i8** %9, i8*** %6, align 8
  %10 = load i32, i32* @f_count, align 4
  %11 = add nsw i32 %10, 32
  store i32 %11, i32* @f_count, align 4
  %12 = load i32, i32* @f_count, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 168
  %15 = call noalias i8* @malloc(i64 %14) #7
  %16 = bitcast i8* %15 to %struct.bc_function*
  store %struct.bc_function* %16, %struct.bc_function** @functions, align 8
  %17 = load i32, i32* @f_count, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = call noalias i8* @malloc(i64 %19) #7
  %21 = bitcast i8* %20 to i8**
  store i8** %21, i8*** @f_names, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %46, %0
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %27, i64 %29
  %31 = load %struct.bc_function*, %struct.bc_function** %4, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %31, i64 %33
  %35 = bitcast %struct.bc_function* %30 to i8*
  %36 = bitcast %struct.bc_function* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 168, i1 false)
  %37 = load i8**, i8*** %6, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** @f_names, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %41, i8** %45, align 8
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %22

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @f_count, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %55, i64 %57
  store %struct.bc_function* %58, %struct.bc_function** %5, align 8
  %59 = load %struct.bc_function*, %struct.bc_function** %5, align 8
  %60 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %59, i32 0, i32 0
  store i8 0, i8* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %70, %54
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.bc_function*, %struct.bc_function** %5, align 8
  %66 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %65, i32 0, i32 1
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i8*], [16 x i8*]* %66, i64 0, i64 %68
  store i8* null, i8** %69, align 8
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %61

73:                                               ; preds = %61
  %74 = load %struct.bc_function*, %struct.bc_function** %5, align 8
  %75 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.bc_function*, %struct.bc_function** %5, align 8
  %77 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %76, i32 0, i32 3
  store %struct.bc_label_group* null, %struct.bc_label_group** %77, align 8
  %78 = load %struct.bc_function*, %struct.bc_function** %5, align 8
  %79 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %78, i32 0, i32 5
  store %struct.arg_list* null, %struct.arg_list** %79, align 8
  %80 = load %struct.bc_function*, %struct.bc_function** %5, align 8
  %81 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %80, i32 0, i32 4
  store %struct.arg_list* null, %struct.arg_list** %81, align 8
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %50

85:                                               ; preds = %50
  %86 = load i32, i32* %1, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.bc_function*, %struct.bc_function** %4, align 8
  %90 = bitcast %struct.bc_function* %89 to i8*
  call void @free(i8* %90) #7
  %91 = load i8**, i8*** %6, align 8
  %92 = bitcast i8** %91 to i8*
  call void @free(i8* %92) #7
  br label %93

93:                                               ; preds = %88, %85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @more_variables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var**, align 8
  %4 = alloca i8**, align 8
  %5 = load i32, i32* @v_count, align 4
  store i32 %5, i32* %2, align 4
  %6 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  store %struct.bc_var** %6, %struct.bc_var*** %3, align 8
  %7 = load i8**, i8*** @v_names, align 8
  store i8** %7, i8*** %4, align 8
  %8 = load i32, i32* @v_count, align 4
  %9 = add nsw i32 %8, 32
  store i32 %9, i32* @v_count, align 4
  %10 = load i32, i32* @v_count, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to %struct.bc_var**
  store %struct.bc_var** %14, %struct.bc_var*** @variables, align 8
  %15 = load i32, i32* @v_count, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 %17) #7
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** @v_names, align 8
  store i32 3, i32* %1, align 4
  br label %20

20:                                               ; preds = %34, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.bc_var**, %struct.bc_var*** %3, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %25, i64 %27
  %29 = load %struct.bc_var*, %struct.bc_var** %28, align 8
  %30 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %30, i64 %32
  store %struct.bc_var* %29, %struct.bc_var** %33, align 8
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %20

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %47, %37
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @v_count, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %43, i64 %45
  store %struct.bc_var* null, %struct.bc_var** %46, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.bc_var**, %struct.bc_var*** %3, align 8
  %55 = bitcast %struct.bc_var** %54 to i8*
  call void @free(i8* %55) #7
  %56 = load i8**, i8*** %4, align 8
  %57 = bitcast i8** %56 to i8*
  call void @free(i8* %57) #7
  br label %58

58:                                               ; preds = %53, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @more_arrays() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var_array**, align 8
  %4 = alloca i8**, align 8
  %5 = load i32, i32* @a_count, align 4
  store i32 %5, i32* %2, align 4
  %6 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  store %struct.bc_var_array** %6, %struct.bc_var_array*** %3, align 8
  %7 = load i8**, i8*** @a_names, align 8
  store i8** %7, i8*** %4, align 8
  %8 = load i32, i32* @a_count, align 4
  %9 = add nsw i32 %8, 32
  store i32 %9, i32* @a_count, align 4
  %10 = load i32, i32* @a_count, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to %struct.bc_var_array**
  store %struct.bc_var_array** %14, %struct.bc_var_array*** @arrays, align 8
  %15 = load i32, i32* @a_count, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 %17) #7
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** @a_names, align 8
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %34, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.bc_var_array**, %struct.bc_var_array*** %3, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %25, i64 %27
  %29 = load %struct.bc_var_array*, %struct.bc_var_array** %28, align 8
  %30 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %30, i64 %32
  store %struct.bc_var_array* %29, %struct.bc_var_array** %33, align 8
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %20

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %47, %37
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @v_count, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %43, i64 %45
  store %struct.bc_var_array* null, %struct.bc_var_array** %46, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.bc_var_array**, %struct.bc_var_array*** %3, align 8
  %55 = bitcast %struct.bc_var_array** %54 to i8*
  call void @free(i8* %55) #7
  %56 = load i8**, i8*** %4, align 8
  %57 = bitcast i8** %56 to i8*
  call void @free(i8* %57) #7
  br label %58

58:                                               ; preds = %53, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clear_func(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.bc_function*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bc_label_group*, align 8
  store i8 %0, i8* %2, align 1
  %6 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i64
  %9 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %6, i64 %8
  store %struct.bc_function* %9, %struct.bc_function** %3, align 8
  %10 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %11 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %10, i32 0, i32 0
  store i8 0, i8* %11, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %17 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %16, i32 0, i32 1
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x i8*], [16 x i8*]* %17, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %25 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %24, i32 0, i32 1
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i8*], [16 x i8*]* %25, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  call void @free(i8* %29) #7
  %30 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %31 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %30, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i8*], [16 x i8*]* %31, i64 0, i64 %33
  store i8* null, i8** %34, align 8
  br label %35

35:                                               ; preds = %23, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %41 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %43 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %42, i32 0, i32 5
  %44 = load %struct.arg_list*, %struct.arg_list** %43, align 8
  %45 = icmp ne %struct.arg_list* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %48 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %47, i32 0, i32 5
  %49 = load %struct.arg_list*, %struct.arg_list** %48, align 8
  call void @free_args(%struct.arg_list* %49)
  %50 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %51 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %50, i32 0, i32 5
  store %struct.arg_list* null, %struct.arg_list** %51, align 8
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %54 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %53, i32 0, i32 4
  %55 = load %struct.arg_list*, %struct.arg_list** %54, align 8
  %56 = icmp ne %struct.arg_list* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %59 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %58, i32 0, i32 4
  %60 = load %struct.arg_list*, %struct.arg_list** %59, align 8
  call void @free_args(%struct.arg_list* %60)
  %61 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %62 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %61, i32 0, i32 4
  store %struct.arg_list* null, %struct.arg_list** %62, align 8
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %69, %63
  %65 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %66 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %65, i32 0, i32 3
  %67 = load %struct.bc_label_group*, %struct.bc_label_group** %66, align 8
  %68 = icmp ne %struct.bc_label_group* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %71 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %70, i32 0, i32 3
  %72 = load %struct.bc_label_group*, %struct.bc_label_group** %71, align 8
  %73 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %72, i32 0, i32 1
  %74 = load %struct.bc_label_group*, %struct.bc_label_group** %73, align 8
  store %struct.bc_label_group* %74, %struct.bc_label_group** %5, align 8
  %75 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %76 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %75, i32 0, i32 3
  %77 = load %struct.bc_label_group*, %struct.bc_label_group** %76, align 8
  %78 = bitcast %struct.bc_label_group* %77 to i8*
  call void @free(i8* %78) #7
  %79 = load %struct.bc_label_group*, %struct.bc_label_group** %5, align 8
  %80 = load %struct.bc_function*, %struct.bc_function** %3, align 8
  %81 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %80, i32 0, i32 3
  store %struct.bc_label_group* %79, %struct.bc_label_group** %81, align 8
  br label %64

82:                                               ; preds = %64
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fpop() #0 {
  %1 = alloca %struct.fstack_rec*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %4 = icmp ne %struct.fstack_rec* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  store %struct.fstack_rec* %6, %struct.fstack_rec** %1, align 8
  %7 = load %struct.fstack_rec*, %struct.fstack_rec** %1, align 8
  %8 = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %7, i32 0, i32 1
  %9 = load %struct.fstack_rec*, %struct.fstack_rec** %8, align 8
  store %struct.fstack_rec* %9, %struct.fstack_rec** @fn_stack, align 8
  %10 = load %struct.fstack_rec*, %struct.fstack_rec** %1, align 8
  %11 = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %2, align 4
  %13 = load %struct.fstack_rec*, %struct.fstack_rec** %1, align 8
  %14 = bitcast %struct.fstack_rec* %13 to i8*
  call void @free(i8* %14) #7
  br label %15

15:                                               ; preds = %5, %0
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fstack_rec*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 16) #7
  %5 = bitcast i8* %4 to %struct.fstack_rec*
  store %struct.fstack_rec* %5, %struct.fstack_rec** %3, align 8
  %6 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %7 = load %struct.fstack_rec*, %struct.fstack_rec** %3, align 8
  %8 = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %7, i32 0, i32 1
  store %struct.fstack_rec* %6, %struct.fstack_rec** %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.fstack_rec*, %struct.fstack_rec** %3, align 8
  %11 = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.fstack_rec*, %struct.fstack_rec** %3, align 8
  store %struct.fstack_rec* %12, %struct.fstack_rec** @fn_stack, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pop() #0 {
  %1 = alloca %struct.estack_rec*, align 8
  %2 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %3 = icmp ne %struct.estack_rec* %2, null
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  store %struct.estack_rec* %5, %struct.estack_rec** %1, align 8
  %6 = load %struct.estack_rec*, %struct.estack_rec** %1, align 8
  %7 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %6, i32 0, i32 1
  %8 = load %struct.estack_rec*, %struct.estack_rec** %7, align 8
  store %struct.estack_rec* %8, %struct.estack_rec** @ex_stack, align 8
  %9 = load %struct.estack_rec*, %struct.estack_rec** %1, align 8
  %10 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %9, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %10)
  %11 = load %struct.estack_rec*, %struct.estack_rec** %1, align 8
  %12 = bitcast %struct.estack_rec* %11 to i8*
  call void @free(i8* %12) #7
  br label %13

13:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_copy(%struct.bc_struct* %0) #0 {
  %2 = alloca %struct.bc_struct*, align 8
  %3 = alloca %struct.estack_rec*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %2, align 8
  %4 = call noalias i8* @malloc(i64 16) #7
  %5 = bitcast i8* %4 to %struct.estack_rec*
  store %struct.estack_rec* %5, %struct.estack_rec** %3, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %7 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %6)
  %8 = load %struct.estack_rec*, %struct.estack_rec** %3, align 8
  %9 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %8, i32 0, i32 0
  store %struct.bc_struct* %7, %struct.bc_struct** %9, align 8
  %10 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %11 = load %struct.estack_rec*, %struct.estack_rec** %3, align 8
  %12 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %11, i32 0, i32 1
  store %struct.estack_rec* %10, %struct.estack_rec** %12, align 8
  %13 = load %struct.estack_rec*, %struct.estack_rec** %3, align 8
  store %struct.estack_rec* %13, %struct.estack_rec** @ex_stack, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_num(%struct.bc_struct* %0) #0 {
  %2 = alloca %struct.bc_struct*, align 8
  %3 = alloca %struct.estack_rec*, align 8
  store %struct.bc_struct* %0, %struct.bc_struct** %2, align 8
  %4 = call noalias i8* @malloc(i64 16) #7
  %5 = bitcast i8* %4 to %struct.estack_rec*
  store %struct.estack_rec* %5, %struct.estack_rec** %3, align 8
  %6 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  %7 = load %struct.estack_rec*, %struct.estack_rec** %3, align 8
  %8 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %7, i32 0, i32 0
  store %struct.bc_struct* %6, %struct.bc_struct** %8, align 8
  %9 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %10 = load %struct.estack_rec*, %struct.estack_rec** %3, align 8
  %11 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %10, i32 0, i32 1
  store %struct.estack_rec* %9, %struct.estack_rec** %11, align 8
  %12 = load %struct.estack_rec*, %struct.estack_rec** %3, align 8
  store %struct.estack_rec* %12, %struct.estack_rec** @ex_stack, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @check_stack(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.estack_rec*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  store %struct.estack_rec* %5, %struct.estack_rec** %4, align 8
  br label %6

6:                                                ; preds = %14, %1
  %7 = load %struct.estack_rec*, %struct.estack_rec** %4, align 8
  %8 = icmp ne %struct.estack_rec* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = load %struct.estack_rec*, %struct.estack_rec** %4, align 8
  %16 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %15, i32 0, i32 1
  %17 = load %struct.estack_rec*, %struct.estack_rec** %16, align 8
  store %struct.estack_rec* %17, %struct.estack_rec** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  br label %6

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.211, i64 0, i64 0))
  store i8 0, i8* %2, align 1
  br label %25

24:                                               ; preds = %20
  store i8 1, i8* %2, align 1
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i8, i8* %2, align 1
  ret i8 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bc_var* @get_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %4, i64 %6
  %8 = load %struct.bc_var*, %struct.bc_var** %7, align 8
  store %struct.bc_var* %8, %struct.bc_var** %3, align 8
  %9 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %10 = icmp eq %struct.bc_var* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = call noalias i8* @malloc(i64 16) #7
  %13 = bitcast i8* %12 to %struct.bc_var*
  %14 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %14, i64 %16
  store %struct.bc_var* %13, %struct.bc_var** %17, align 8
  store %struct.bc_var* %13, %struct.bc_var** %3, align 8
  %18 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %19 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %18, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %19)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  ret %struct.bc_var* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bc_struct** @get_array_num(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.bc_var_array*, align 8
  %6 = alloca %struct.bc_array*, align 8
  %7 = alloca %struct.bc_array_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %12 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %12, i64 %14
  %16 = load %struct.bc_var_array*, %struct.bc_var_array** %15, align 8
  store %struct.bc_var_array* %16, %struct.bc_var_array** %5, align 8
  %17 = load %struct.bc_var_array*, %struct.bc_var_array** %5, align 8
  %18 = icmp eq %struct.bc_var_array* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = call noalias i8* @malloc(i64 24) #7
  %21 = bitcast i8* %20 to %struct.bc_var_array*
  %22 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %22, i64 %24
  store %struct.bc_var_array* %21, %struct.bc_var_array** %25, align 8
  store %struct.bc_var_array* %21, %struct.bc_var_array** %5, align 8
  %26 = load %struct.bc_var_array*, %struct.bc_var_array** %5, align 8
  %27 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %26, i32 0, i32 0
  store %struct.bc_array* null, %struct.bc_array** %27, align 8
  %28 = load %struct.bc_var_array*, %struct.bc_var_array** %5, align 8
  %29 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %28, i32 0, i32 2
  store %struct.bc_var_array* null, %struct.bc_var_array** %29, align 8
  %30 = load %struct.bc_var_array*, %struct.bc_var_array** %5, align 8
  %31 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %30, i32 0, i32 1
  store i8 0, i8* %31, align 8
  br label %32

32:                                               ; preds = %19, %2
  %33 = load %struct.bc_var_array*, %struct.bc_var_array** %5, align 8
  %34 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %33, i32 0, i32 0
  %35 = load %struct.bc_array*, %struct.bc_array** %34, align 8
  store %struct.bc_array* %35, %struct.bc_array** %6, align 8
  %36 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %37 = icmp eq %struct.bc_array* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = call noalias i8* @malloc(i64 16) #7
  %40 = bitcast i8* %39 to %struct.bc_array*
  %41 = load %struct.bc_var_array*, %struct.bc_var_array** %5, align 8
  %42 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %41, i32 0, i32 0
  store %struct.bc_array* %40, %struct.bc_array** %42, align 8
  store %struct.bc_array* %40, %struct.bc_array** %6, align 8
  %43 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %44 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %43, i32 0, i32 0
  store %struct.bc_array_node* null, %struct.bc_array_node** %44, align 8
  %45 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %46 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %45, i32 0, i32 1
  store i16 0, i16* %46, align 8
  br label %47

47:                                               ; preds = %38, %32
  %48 = load i64, i64* %4, align 8
  %49 = and i64 %48, 15
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load i64, i64* %4, align 8
  %53 = ashr i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %67, %47
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %61 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %60, i32 0, i32 1
  %62 = load i16, i16* %61, align 8
  %63 = sext i16 %62 to i32
  %64 = icmp slt i32 %59, %63
  br label %65

65:                                               ; preds = %58, %55
  %66 = phi i1 [ true, %55 ], [ %64, %58 ]
  br i1 %66, label %67, label %77

67:                                               ; preds = %65
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 15
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %55

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %129, %77
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %81 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %80, i32 0, i32 1
  %82 = load i16, i16* %81, align 8
  %83 = sext i16 %82 to i32
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %137

85:                                               ; preds = %78
  %86 = call noalias i8* @malloc(i64 256) #7
  %87 = bitcast i8* %86 to %struct.bc_array_node*
  store %struct.bc_array_node* %87, %struct.bc_array_node** %7, align 8
  %88 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %89 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %88, i32 0, i32 1
  %90 = load i16, i16* %89, align 8
  %91 = sext i16 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %85
  %94 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %95 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %94, i32 0, i32 0
  %96 = load %struct.bc_array_node*, %struct.bc_array_node** %95, align 8
  %97 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %98 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %97, i32 0, i32 1
  %99 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %98, i64 0, i64 0
  store %struct.bc_array_node* %96, %struct.bc_array_node** %99, align 8
  store i32 1, i32* %9, align 4
  br label %100

100:                                              ; preds = %109, %93
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %105 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %104, i32 0, i32 1
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %105, i64 0, i64 %107
  store %struct.bc_array_node* null, %struct.bc_array_node** %108, align 8
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %100

112:                                              ; preds = %100
  br label %129

113:                                              ; preds = %85
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %125, %113
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 16
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %119 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %118)
  %120 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %121 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %120, i32 0, i32 0
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %121, i64 0, i64 %123
  store %struct.bc_struct* %119, %struct.bc_struct** %124, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %114

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128, %112
  %130 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %131 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %132 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %131, i32 0, i32 0
  store %struct.bc_array_node* %130, %struct.bc_array_node** %132, align 8
  %133 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %134 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %133, i32 0, i32 1
  %135 = load i16, i16* %134, align 8
  %136 = add i16 %135, 1
  store i16 %136, i16* %134, align 8
  br label %78

137:                                              ; preds = %78
  %138 = load %struct.bc_array*, %struct.bc_array** %6, align 8
  %139 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %138, i32 0, i32 0
  %140 = load %struct.bc_array_node*, %struct.bc_array_node** %139, align 8
  store %struct.bc_array_node* %140, %struct.bc_array_node** %7, align 8
  br label %141

141:                                              ; preds = %211, %137
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %8, align 4
  %144 = icmp sgt i32 %142, 1
  br i1 %144, label %145, label %212

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %10, align 4
  %150 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %151 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %150, i32 0, i32 1
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %151, i64 0, i64 %153
  %155 = load %struct.bc_array_node*, %struct.bc_array_node** %154, align 8
  %156 = icmp eq %struct.bc_array_node* %155, null
  br i1 %156, label %157, label %204

157:                                              ; preds = %145
  %158 = call noalias i8* @malloc(i64 256) #7
  %159 = bitcast i8* %158 to %struct.bc_array_node*
  %160 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %161 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %160, i32 0, i32 1
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %161, i64 0, i64 %163
  store %struct.bc_array_node* %159, %struct.bc_array_node** %164, align 8
  %165 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %166 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %165, i32 0, i32 1
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %166, i64 0, i64 %168
  %170 = load %struct.bc_array_node*, %struct.bc_array_node** %169, align 8
  store %struct.bc_array_node* %170, %struct.bc_array_node** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %187

173:                                              ; preds = %157
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %183, %173
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %175, 16
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %179 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %178, i32 0, i32 1
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %179, i64 0, i64 %181
  store %struct.bc_array_node* null, %struct.bc_array_node** %182, align 8
  br label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %174

186:                                              ; preds = %174
  br label %203

187:                                              ; preds = %157
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %199, %187
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 16
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %193 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %192)
  %194 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %195 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %194, i32 0, i32 0
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %195, i64 0, i64 %197
  store %struct.bc_struct* %193, %struct.bc_struct** %198, align 8
  br label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %188

202:                                              ; preds = %188
  br label %203

203:                                              ; preds = %202, %186
  br label %211

204:                                              ; preds = %145
  %205 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %206 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %205, i32 0, i32 1
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %206, i64 0, i64 %208
  %210 = load %struct.bc_array_node*, %struct.bc_array_node** %209, align 8
  store %struct.bc_array_node* %210, %struct.bc_array_node** %7, align 8
  br label %211

211:                                              ; preds = %204, %203
  br label %141

212:                                              ; preds = %141
  %213 = load %struct.bc_array_node*, %struct.bc_array_node** %7, align 8
  %214 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %213, i32 0, i32 0
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %216 = load i32, i32* %215, align 16
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %214, i64 0, i64 %217
  ret %struct.bc_struct** %218
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @store_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.bc_var* @get_var(i32 %9)
  store %struct.bc_var* %10, %struct.bc_var** %3, align 8
  %11 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %12 = icmp ne %struct.bc_var* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %15 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %14, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %15)
  %16 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %17 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %16, i32 0, i32 0
  %18 = load %struct.bc_struct*, %struct.bc_struct** %17, align 8
  %19 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %18)
  %20 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %21 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %20, i32 0, i32 0
  store %struct.bc_struct* %19, %struct.bc_struct** %21, align 8
  br label %22

22:                                               ; preds = %13, %8
  br label %105

23:                                               ; preds = %1
  store i8 0, i8* %5, align 1
  %24 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %25 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %24, i32 0, i32 0
  %26 = load %struct.bc_struct*, %struct.bc_struct** %25, align 8
  %27 = call signext i8 @is_neg(%struct.bc_struct* %26)
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  switch i32 %30, label %34 [
    i32 0, label %31
    i32 1, label %32
    i32 2, label %33
  ]

31:                                               ; preds = %29
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2.214, i64 0, i64 0))
  store i64 2, i64* %4, align 8
  br label %34

32:                                               ; preds = %29
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.215, i64 0, i64 0))
  store i64 2, i64* %4, align 8
  br label %34

33:                                               ; preds = %29
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.216, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %29
  br label %50

35:                                               ; preds = %23
  %36 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %37 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %36, i32 0, i32 0
  %38 = load %struct.bc_struct*, %struct.bc_struct** %37, align 8
  %39 = call i64 @num2long(%struct.bc_struct* %38)
  store i64 %39, i64* %4, align 8
  %40 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %41 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %40, i32 0, i32 0
  %42 = load %struct.bc_struct*, %struct.bc_struct** %41, align 8
  %43 = call signext i8 @is_zero(%struct.bc_struct* %42)
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i8 1, i8* %5, align 1
  br label %49

49:                                               ; preds = %48, %45, %35
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, i32* %2, align 4
  switch i32 %51, label %104 [
    i32 0, label %52
    i32 1, label %72
    i32 2, label %92
  ]

52:                                               ; preds = %50
  %53 = load i64, i64* %4, align 8
  %54 = icmp slt i64 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8, i8* %5, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 2, i32* @i_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.217, i64 0, i64 0))
  br label %71

59:                                               ; preds = %55, %52
  %60 = load i64, i64* %4, align 8
  %61 = icmp sgt i64 %60, 16
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i8, i8* %5, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %59
  store i32 16, i32* @i_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6.218, i64 0, i64 0))
  br label %70

67:                                               ; preds = %62
  %68 = load i64, i64* %4, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* @i_base, align 4
  br label %70

70:                                               ; preds = %67, %66
  br label %71

71:                                               ; preds = %70, %58
  br label %104

72:                                               ; preds = %50
  %73 = load i64, i64* %4, align 8
  %74 = icmp slt i64 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8, i8* %5, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 2, i32* @o_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7.219, i64 0, i64 0))
  br label %91

79:                                               ; preds = %75, %72
  %80 = load i64, i64* %4, align 8
  %81 = icmp sgt i64 %80, 99
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i8, i8* %5, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %79
  store i32 99, i32* @o_base, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8.220, i64 0, i64 0), i32 99)
  br label %90

87:                                               ; preds = %82
  %88 = load i64, i64* %4, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* @o_base, align 4
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90, %78
  br label %104

92:                                               ; preds = %50
  %93 = load i64, i64* %4, align 8
  %94 = icmp sgt i64 %93, 99
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i8, i8* %5, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %92
  store i32 99, i32* @scale, align 4
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9.221, i64 0, i64 0), i32 99)
  br label %103

100:                                              ; preds = %95
  %101 = load i64, i64* %4, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* @scale, align 4
  br label %103

103:                                              ; preds = %100, %99
  br label %104

104:                                              ; preds = %103, %91, %71, %50
  br label %105

105:                                              ; preds = %104, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @store_array(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_struct**, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call signext i8 @check_stack(i32 2)
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %64

8:                                                ; preds = %1
  %9 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %10 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %9, i32 0, i32 1
  %11 = load %struct.estack_rec*, %struct.estack_rec** %10, align 8
  %12 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %11, i32 0, i32 0
  %13 = load %struct.bc_struct*, %struct.bc_struct** %12, align 8
  %14 = call i64 @num2long(%struct.bc_struct* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = load i64, i64* %4, align 8
  %19 = icmp sgt i64 %18, 2048
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %25 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %24, i32 0, i32 1
  %26 = load %struct.estack_rec*, %struct.estack_rec** %25, align 8
  %27 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %26, i32 0, i32 0
  %28 = load %struct.bc_struct*, %struct.bc_struct** %27, align 8
  %29 = call signext i8 @is_zero(%struct.bc_struct* %28)
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %23, %17, %8
  %32 = load i8**, i8*** @a_names, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10.224, i64 0, i64 0), i8* %36)
  br label %64

37:                                               ; preds = %23, %20
  %38 = load i32, i32* %2, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call %struct.bc_struct** @get_array_num(i32 %38, i64 %39)
  store %struct.bc_struct** %40, %struct.bc_struct*** %3, align 8
  %41 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %42 = icmp ne %struct.bc_struct** %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  call void @free_num(%struct.bc_struct** %44)
  %45 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %46 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %45, i32 0, i32 0
  %47 = load %struct.bc_struct*, %struct.bc_struct** %46, align 8
  %48 = call %struct.bc_struct* @copy_num(%struct.bc_struct* %47)
  %49 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  store %struct.bc_struct* %48, %struct.bc_struct** %49, align 8
  %50 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %51 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %50, i32 0, i32 1
  %52 = load %struct.estack_rec*, %struct.estack_rec** %51, align 8
  %53 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %52, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %53)
  %54 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %55 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %54, i32 0, i32 0
  %56 = load %struct.bc_struct*, %struct.bc_struct** %55, align 8
  %57 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %58 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %57, i32 0, i32 1
  %59 = load %struct.estack_rec*, %struct.estack_rec** %58, align 8
  %60 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %59, i32 0, i32 0
  store %struct.bc_struct* %56, %struct.bc_struct** %60, align 8
  %61 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %62 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %61, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %62)
  call void @pop()
  br label %63

63:                                               ; preds = %43, %37
  br label %64

64:                                               ; preds = %63, %31, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %20 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %15
  ]

5:                                                ; preds = %1
  %6 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %6)
  %7 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %8 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %7, i32 0, i32 0
  %9 = load i32, i32* @i_base, align 4
  call void @int2num(%struct.bc_struct** %8, i32 %9)
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %11)
  %12 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %13 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %12, i32 0, i32 0
  %14 = load i32, i32* @o_base, align 4
  call void @int2num(%struct.bc_struct** %13, i32 %14)
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %16)
  %17 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %18 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %17, i32 0, i32 0
  %19 = load i32, i32* @scale, align 4
  call void @int2num(%struct.bc_struct** %18, i32 %19)
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %21, i64 %23
  %25 = load %struct.bc_var*, %struct.bc_var** %24, align 8
  store %struct.bc_var* %25, %struct.bc_var** %3, align 8
  %26 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %27 = icmp ne %struct.bc_var* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %30 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %29, i32 0, i32 0
  %31 = load %struct.bc_struct*, %struct.bc_struct** %30, align 8
  call void @push_copy(%struct.bc_struct* %31)
  br label %34

32:                                               ; preds = %20
  %33 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* %33)
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %15, %10, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_array(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_struct**, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call signext i8 @check_stack(i32 1)
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %10 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %9, i32 0, i32 0
  %11 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %12 = call i64 @num2long(%struct.bc_struct* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %16, 2048
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %23 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %22, i32 0, i32 0
  %24 = load %struct.bc_struct*, %struct.bc_struct** %23, align 8
  %25 = call signext i8 @is_zero(%struct.bc_struct* %24)
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21, %15, %8
  %28 = load i8**, i8*** @a_names, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10.224, i64 0, i64 0), i8* %32)
  br label %43

33:                                               ; preds = %21, %18
  %34 = load i32, i32* %2, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call %struct.bc_struct** @get_array_num(i32 %34, i64 %35)
  store %struct.bc_struct** %36, %struct.bc_struct*** %3, align 8
  %37 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %38 = icmp ne %struct.bc_struct** %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  call void @pop()
  %40 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %41 = load %struct.bc_struct*, %struct.bc_struct** %40, align 8
  call void @push_copy(%struct.bc_struct* %41)
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %27, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decr_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %29 [
    i32 0, label %5
    i32 1, label %13
    i32 2, label %21
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @i_base, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @i_base, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @i_base, align 4
  br label %12

11:                                               ; preds = %5
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11.231, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8
  br label %42

13:                                               ; preds = %1
  %14 = load i32, i32* @o_base, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @o_base, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @o_base, align 4
  br label %20

19:                                               ; preds = %13
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12.232, i64 0, i64 0))
  br label %20

20:                                               ; preds = %19, %16
  br label %42

21:                                               ; preds = %1
  %22 = load i32, i32* @scale, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @scale, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @scale, align 4
  br label %28

27:                                               ; preds = %21
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13.233, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %24
  br label %42

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call %struct.bc_var* @get_var(i32 %30)
  store %struct.bc_var* %31, %struct.bc_var** %3, align 8
  %32 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %33 = icmp ne %struct.bc_var* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %36 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %35, i32 0, i32 0
  %37 = load %struct.bc_struct*, %struct.bc_struct** %36, align 8
  %38 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %39 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %40 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %39, i32 0, i32 0
  call void @bc_sub(%struct.bc_struct* %37, %struct.bc_struct* %38, %struct.bc_struct** %40)
  br label %41

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41, %28, %20, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decr_array(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.bc_struct**, align 8
  %4 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  %5 = call signext i8 @check_stack(i32 1)
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %46

8:                                                ; preds = %1
  %9 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %10 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %9, i32 0, i32 0
  %11 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %12 = call i64 @num2long(%struct.bc_struct* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %16, 2048
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %23 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %22, i32 0, i32 0
  %24 = load %struct.bc_struct*, %struct.bc_struct** %23, align 8
  %25 = call signext i8 @is_zero(%struct.bc_struct* %24)
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21, %15, %8
  %28 = load i8**, i8*** @a_names, align 8
  %29 = load i8, i8* %2, align 1
  %30 = sext i8 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10.224, i64 0, i64 0), i8* %32)
  br label %46

33:                                               ; preds = %21, %18
  %34 = load i8, i8* %2, align 1
  %35 = sext i8 %34 to i32
  %36 = load i64, i64* %4, align 8
  %37 = call %struct.bc_struct** @get_array_num(i32 %35, i64 %36)
  store %struct.bc_struct** %37, %struct.bc_struct*** %3, align 8
  %38 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %39 = icmp ne %struct.bc_struct** %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  call void @pop()
  %41 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %42 = load %struct.bc_struct*, %struct.bc_struct** %41, align 8
  %43 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %44 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  call void @bc_sub(%struct.bc_struct* %42, %struct.bc_struct* %43, %struct.bc_struct** %44)
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %27, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @incr_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %29 [
    i32 0, label %5
    i32 1, label %13
    i32 2, label %21
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @i_base, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @i_base, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @i_base, align 4
  br label %12

11:                                               ; preds = %5
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14.238, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8
  br label %42

13:                                               ; preds = %1
  %14 = load i32, i32* @o_base, align 4
  %15 = icmp slt i32 %14, 99
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @o_base, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @o_base, align 4
  br label %20

19:                                               ; preds = %13
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15.239, i64 0, i64 0))
  br label %20

20:                                               ; preds = %19, %16
  br label %42

21:                                               ; preds = %1
  %22 = load i32, i32* @scale, align 4
  %23 = icmp slt i32 %22, 99
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @scale, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @scale, align 4
  br label %28

27:                                               ; preds = %21
  call void (i8*, ...) @rt_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.240, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %24
  br label %42

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call %struct.bc_var* @get_var(i32 %30)
  store %struct.bc_var* %31, %struct.bc_var** %3, align 8
  %32 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %33 = icmp ne %struct.bc_var* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %36 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %35, i32 0, i32 0
  %37 = load %struct.bc_struct*, %struct.bc_struct** %36, align 8
  %38 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %39 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %40 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %39, i32 0, i32 0
  call void @bc_add(%struct.bc_struct* %37, %struct.bc_struct* %38, %struct.bc_struct** %40)
  br label %41

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41, %28, %20, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @incr_array(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_struct**, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call signext i8 @check_stack(i32 1)
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %10 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %9, i32 0, i32 0
  %11 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %12 = call i64 @num2long(%struct.bc_struct* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %16, 2048
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %23 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %22, i32 0, i32 0
  %24 = load %struct.bc_struct*, %struct.bc_struct** %23, align 8
  %25 = call signext i8 @is_zero(%struct.bc_struct* %24)
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21, %15, %8
  %28 = load i8**, i8*** @a_names, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10.224, i64 0, i64 0), i8* %32)
  br label %45

33:                                               ; preds = %21, %18
  %34 = load i32, i32* %2, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call %struct.bc_struct** @get_array_num(i32 %34, i64 %35)
  store %struct.bc_struct** %36, %struct.bc_struct*** %3, align 8
  %37 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %38 = icmp ne %struct.bc_struct** %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  call void @pop()
  %40 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  %41 = load %struct.bc_struct*, %struct.bc_struct** %40, align 8
  %42 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %43 = load %struct.bc_struct**, %struct.bc_struct*** %3, align 8
  call void @bc_add(%struct.bc_struct* %41, %struct.bc_struct* %42, %struct.bc_struct** %43)
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44, %27, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @auto_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_var*, align 8
  %4 = alloca %struct.bc_var_array*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %5, align 4
  %10 = call noalias i8* @malloc(i64 16) #7
  %11 = bitcast i8* %10 to %struct.bc_var*
  store %struct.bc_var* %11, %struct.bc_var** %3, align 8
  %12 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %12, i64 %14
  %16 = load %struct.bc_var*, %struct.bc_var** %15, align 8
  %17 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %18 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %17, i32 0, i32 1
  store %struct.bc_var* %16, %struct.bc_var** %18, align 8
  %19 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %20 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %19, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %20)
  %21 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %22 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %22, i64 %24
  store %struct.bc_var* %21, %struct.bc_var** %25, align 8
  br label %47

26:                                               ; preds = %1
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  %29 = call noalias i8* @malloc(i64 24) #7
  %30 = bitcast i8* %29 to %struct.bc_var_array*
  store %struct.bc_var_array* %30, %struct.bc_var_array** %4, align 8
  %31 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %31, i64 %33
  %35 = load %struct.bc_var_array*, %struct.bc_var_array** %34, align 8
  %36 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %37 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %36, i32 0, i32 2
  store %struct.bc_var_array* %35, %struct.bc_var_array** %37, align 8
  %38 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %39 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %38, i32 0, i32 0
  store %struct.bc_array* null, %struct.bc_array** %39, align 8
  %40 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %41 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %40, i32 0, i32 1
  store i8 0, i8* %41, align 8
  %42 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %43 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %43, i64 %45
  store %struct.bc_var_array* %42, %struct.bc_var_array** %46, align 8
  br label %47

47:                                               ; preds = %26, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_a_tree(%struct.bc_array_node* %0, i32 %1) #0 {
  %3 = alloca %struct.bc_array_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bc_array_node* %0, %struct.bc_array_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bc_array_node*, %struct.bc_array_node** %3, align 8
  %7 = icmp ne %struct.bc_array_node* %6, null
  br i1 %7, label %8, label %45

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.bc_array_node*, %struct.bc_array_node** %3, align 8
  %17 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %16, i32 0, i32 1
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x %struct.bc_array_node*], [16 x %struct.bc_array_node*]* %17, i64 0, i64 %19
  %21 = load %struct.bc_array_node*, %struct.bc_array_node** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  call void @free_a_tree(%struct.bc_array_node* %21, i32 %23)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %12

27:                                               ; preds = %12
  br label %42

28:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %38, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.bc_array_node*, %struct.bc_array_node** %3, align 8
  %34 = getelementptr inbounds %struct.bc_array_node, %struct.bc_array_node* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x %struct.bc_struct*], [16 x %struct.bc_struct*]* %34, i64 0, i64 %36
  call void @free_num(%struct.bc_struct** %37)
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %29

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.bc_array_node*, %struct.bc_array_node** %3, align 8
  %44 = bitcast %struct.bc_array_node* %43 to i8*
  call void @free(i8* %44) #7
  br label %45

45:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pop_vars(%struct.arg_list* %0) #0 {
  %2 = alloca %struct.arg_list*, align 8
  %3 = alloca %struct.bc_var*, align 8
  %4 = alloca %struct.bc_var_array*, align 8
  %5 = alloca i32, align 4
  store %struct.arg_list* %0, %struct.arg_list** %2, align 8
  br label %6

6:                                                ; preds = %83, %1
  %7 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  %8 = icmp ne %struct.arg_list* %7, null
  br i1 %8, label %9, label %87

9:                                                ; preds = %6
  %10 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  %11 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %16, i64 %18
  %20 = load %struct.bc_var*, %struct.bc_var** %19, align 8
  store %struct.bc_var* %20, %struct.bc_var** %3, align 8
  %21 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %22 = icmp ne %struct.bc_var* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %25 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %24, i32 0, i32 1
  %26 = load %struct.bc_var*, %struct.bc_var** %25, align 8
  %27 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %27, i64 %29
  store %struct.bc_var* %26, %struct.bc_var** %30, align 8
  %31 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %32 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %31, i32 0, i32 0
  call void @free_num(%struct.bc_struct** %32)
  %33 = load %struct.bc_var*, %struct.bc_var** %3, align 8
  %34 = bitcast %struct.bc_var* %33 to i8*
  call void @free(i8* %34) #7
  br label %35

35:                                               ; preds = %23, %15
  br label %83

36:                                               ; preds = %9
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %39, i64 %41
  %43 = load %struct.bc_var_array*, %struct.bc_var_array** %42, align 8
  store %struct.bc_var_array* %43, %struct.bc_var_array** %4, align 8
  %44 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %45 = icmp ne %struct.bc_var_array* %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %36
  %47 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %48 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %47, i32 0, i32 2
  %49 = load %struct.bc_var_array*, %struct.bc_var_array** %48, align 8
  %50 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %50, i64 %52
  store %struct.bc_var_array* %49, %struct.bc_var_array** %53, align 8
  %54 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %55 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 8
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %46
  %59 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %60 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %59, i32 0, i32 0
  %61 = load %struct.bc_array*, %struct.bc_array** %60, align 8
  %62 = icmp ne %struct.bc_array* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %65 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %64, i32 0, i32 0
  %66 = load %struct.bc_array*, %struct.bc_array** %65, align 8
  %67 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %66, i32 0, i32 0
  %68 = load %struct.bc_array_node*, %struct.bc_array_node** %67, align 8
  %69 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %70 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %69, i32 0, i32 0
  %71 = load %struct.bc_array*, %struct.bc_array** %70, align 8
  %72 = getelementptr inbounds %struct.bc_array, %struct.bc_array* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 8
  %74 = sext i16 %73 to i32
  call void @free_a_tree(%struct.bc_array_node* %68, i32 %74)
  %75 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %76 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %75, i32 0, i32 0
  %77 = load %struct.bc_array*, %struct.bc_array** %76, align 8
  %78 = bitcast %struct.bc_array* %77 to i8*
  call void @free(i8* %78) #7
  br label %79

79:                                               ; preds = %63, %58, %46
  %80 = load %struct.bc_var_array*, %struct.bc_var_array** %4, align 8
  %81 = bitcast %struct.bc_var_array* %80 to i8*
  call void @free(i8* %81) #7
  br label %82

82:                                               ; preds = %79, %36
  br label %83

83:                                               ; preds = %82, %35
  %84 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  %85 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %84, i32 0, i32 1
  %86 = load %struct.arg_list*, %struct.arg_list** %85, align 8
  store %struct.arg_list* %86, %struct.arg_list** %2, align 8
  br label %6

87:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_params(%struct.program_counter* %0, i32 %1) #0 {
  %3 = alloca %struct.program_counter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.arg_list*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bc_var*, align 8
  %11 = alloca %struct.bc_var_array*, align 8
  %12 = alloca %struct.bc_var_array*, align 8
  %13 = alloca %struct.bc_struct**, align 8
  store %struct.program_counter* %0, %struct.program_counter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %7, align 1
  %14 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %14, i64 %16
  %18 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %17, i32 0, i32 4
  %19 = load %struct.arg_list*, %struct.arg_list** %18, align 8
  store %struct.arg_list* %19, %struct.arg_list** %6, align 8
  br label %20

20:                                               ; preds = %148, %2
  %21 = load %struct.program_counter*, %struct.program_counter** %3, align 8
  %22 = call zeroext i8 @byte(%struct.program_counter* %21)
  store i8 %22, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 58
  br i1 %24, label %25, label %152

25:                                               ; preds = %20
  %26 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %27 = icmp ne %struct.arg_list* %26, null
  br i1 %27, label %28, label %143

28:                                               ; preds = %25
  %29 = load i8, i8* %5, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %34 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %39 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = call noalias i8* @malloc(i64 16) #7
  %42 = bitcast i8* %41 to %struct.bc_var*
  store %struct.bc_var* %42, %struct.bc_var** %10, align 8
  %43 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %43, i64 %45
  %47 = load %struct.bc_var*, %struct.bc_var** %46, align 8
  %48 = load %struct.bc_var*, %struct.bc_var** %10, align 8
  %49 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %48, i32 0, i32 1
  store %struct.bc_var* %47, %struct.bc_var** %49, align 8
  %50 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %51 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %50, i32 0, i32 0
  %52 = load %struct.bc_struct*, %struct.bc_struct** %51, align 8
  %53 = load %struct.bc_var*, %struct.bc_var** %10, align 8
  %54 = getelementptr inbounds %struct.bc_var, %struct.bc_var* %53, i32 0, i32 0
  store %struct.bc_struct* %52, %struct.bc_struct** %54, align 8
  %55 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %56 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %55, i32 0, i32 0
  call void @init_num(%struct.bc_struct** %56)
  %57 = load %struct.bc_var*, %struct.bc_var** %10, align 8
  %58 = load %struct.bc_var**, %struct.bc_var*** @variables, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bc_var*, %struct.bc_var** %58, i64 %60
  store %struct.bc_var* %57, %struct.bc_var** %61, align 8
  br label %142

62:                                               ; preds = %32, %28
  %63 = load i8, i8* %5, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 49
  br i1 %65, label %66, label %116

66:                                               ; preds = %62
  %67 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %68 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %66
  %72 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %73 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %72, i32 0, i32 0
  %74 = load %struct.bc_struct*, %struct.bc_struct** %73, align 8
  %75 = call i64 @num2long(%struct.bc_struct* %74)
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call %struct.bc_struct** @get_array_num(i32 %77, i64 0)
  store %struct.bc_struct** %78, %struct.bc_struct*** %13, align 8
  %79 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %80 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  call void @auto_var(i32 %81)
  %82 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %83 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %71
  %90 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %90, i64 %92
  %94 = load %struct.bc_var_array*, %struct.bc_var_array** %93, align 8
  %95 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %94, i32 0, i32 2
  %96 = load %struct.bc_var_array*, %struct.bc_var_array** %95, align 8
  store %struct.bc_var_array* %96, %struct.bc_var_array** %11, align 8
  br label %103

97:                                               ; preds = %71
  %98 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %98, i64 %100
  %102 = load %struct.bc_var_array*, %struct.bc_var_array** %101, align 8
  store %struct.bc_var_array* %102, %struct.bc_var_array** %11, align 8
  br label %103

103:                                              ; preds = %97, %89
  %104 = load %struct.bc_var_array**, %struct.bc_var_array*** @arrays, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.bc_var_array*, %struct.bc_var_array** %104, i64 %106
  %108 = load %struct.bc_var_array*, %struct.bc_var_array** %107, align 8
  store %struct.bc_var_array* %108, %struct.bc_var_array** %12, align 8
  %109 = load %struct.bc_var_array*, %struct.bc_var_array** %12, align 8
  %110 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %109, i32 0, i32 1
  store i8 1, i8* %110, align 8
  %111 = load %struct.bc_var_array*, %struct.bc_var_array** %11, align 8
  %112 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %111, i32 0, i32 0
  %113 = load %struct.bc_array*, %struct.bc_array** %112, align 8
  %114 = load %struct.bc_var_array*, %struct.bc_var_array** %12, align 8
  %115 = getelementptr inbounds %struct.bc_var_array, %struct.bc_var_array* %114, i32 0, i32 0
  store %struct.bc_array* %113, %struct.bc_array** %115, align 8
  br label %141

116:                                              ; preds = %66, %62
  %117 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %118 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i8**, i8*** @a_names, align 8
  %123 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %124 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 0, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %122, i64 %127
  %129 = load i8*, i8** %128, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17.249, i64 0, i64 0), i8* %129)
  br label %138

130:                                              ; preds = %116
  %131 = load i8**, i8*** @v_names, align 8
  %132 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %133 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %131, i64 %135
  %137 = load i8*, i8** %136, align 8
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.250, i64 0, i64 0), i8* %137)
  br label %138

138:                                              ; preds = %130, %121
  %139 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %140 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %139, i32 1
  store %struct.arg_list* %140, %struct.arg_list** %6, align 8
  br label %141

141:                                              ; preds = %138, %103
  br label %142

142:                                              ; preds = %141, %37
  call void @pop()
  br label %148

143:                                              ; preds = %25
  %144 = load i8, i8* %7, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19.251, i64 0, i64 0))
  store i8 1, i8* %7, align 1
  br label %147

147:                                              ; preds = %146, %143
  br label %148

148:                                              ; preds = %147, %142
  %149 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %150 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %149, i32 0, i32 1
  %151 = load %struct.arg_list*, %struct.arg_list** %150, align 8
  store %struct.arg_list* %151, %struct.arg_list** %6, align 8
  br label %20

152:                                              ; preds = %20
  %153 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %154 = icmp ne %struct.arg_list* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  call void (i8*, ...) @rt_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19.251, i64 0, i64 0))
  br label %156

156:                                              ; preds = %155, %152
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strcopyof(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #9
  %6 = add i64 %5, 1
  %7 = call noalias i8* @malloc(i64 %6) #7
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strcpy(i8* %8, i8* %9) #7
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.arg_list* @nextarg(%struct.arg_list* %0, i8 signext %1) #0 {
  %3 = alloca %struct.arg_list*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %0, %struct.arg_list** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = call noalias i8* @malloc(i64 16) #7
  %7 = bitcast i8* %6 to %struct.arg_list*
  store %struct.arg_list* %7, %struct.arg_list** %5, align 8
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  %10 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %11 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %13 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %14 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %13, i32 0, i32 1
  store %struct.arg_list* %12, %struct.arg_list** %14, align 8
  %15 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  ret %struct.arg_list* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @arg_str(%struct.arg_list* %0, i32 %1) #0 {
  %3 = alloca %struct.arg_list*, align 8
  %4 = alloca i32, align 4
  store %struct.arg_list* %0, %struct.arg_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** @arglist2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i8*, i8** @arglist2, align 8
  call void @free(i8* %8) #7
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i8*, i8** @arglist1, align 8
  store i8* %10, i8** @arglist2, align 8
  %11 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @make_arg_str(%struct.arg_list* %11, i32 1, i32 %12)
  store i8* %13, i8** @arglist1, align 8
  %14 = load i8*, i8** @arglist1, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @make_arg_str(%struct.arg_list* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arg_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [20 x i8], align 16
  store %struct.arg_list* %0, %struct.arg_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %11 = icmp ne %struct.arg_list* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %14 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %13, i32 0, i32 1
  %15 = load %struct.arg_list*, %struct.arg_list** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 11
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @make_arg_str(%struct.arg_list* %15, i32 %17, i32 %18)
  store i8* %19, i8** %8, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = call noalias i8* @malloc(i64 %22) #7
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %4, align 8
  br label %49

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %34 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %35 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41.258, i64 0, i64 0), i32 %36) #7
  br label %44

38:                                               ; preds = %29, %26
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %40 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %41 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42.259, i64 0, i64 0), i32 %42) #7
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %47 = call i8* @strcat(i8* %45, i8* %46) #7
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %44, %20
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_args(%struct.arg_list* %0) #0 {
  %2 = alloca %struct.arg_list*, align 8
  %3 = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %0, %struct.arg_list** %2, align 8
  %4 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  store %struct.arg_list* %4, %struct.arg_list** %3, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %7 = icmp ne %struct.arg_list* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  %10 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %9, i32 0, i32 1
  %11 = load %struct.arg_list*, %struct.arg_list** %10, align 8
  store %struct.arg_list* %11, %struct.arg_list** %2, align 8
  %12 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %13 = bitcast %struct.arg_list* %12 to i8*
  call void @free(i8* %13) #7
  %14 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  store %struct.arg_list* %14, %struct.arg_list** %3, align 8
  br label %5

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_params(%struct.arg_list* %0, %struct.arg_list* %1) #0 {
  %3 = alloca %struct.arg_list*, align 8
  %4 = alloca %struct.arg_list*, align 8
  %5 = alloca %struct.arg_list*, align 8
  %6 = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %0, %struct.arg_list** %3, align 8
  store %struct.arg_list* %1, %struct.arg_list** %4, align 8
  %7 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %8 = icmp ne %struct.arg_list* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  store %struct.arg_list* %10, %struct.arg_list** %5, align 8
  br label %11

11:                                               ; preds = %40, %9
  %12 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %13 = icmp ne %struct.arg_list* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %16 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %15, i32 0, i32 1
  %17 = load %struct.arg_list*, %struct.arg_list** %16, align 8
  store %struct.arg_list* %17, %struct.arg_list** %6, align 8
  br label %18

18:                                               ; preds = %30, %14
  %19 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %20 = icmp ne %struct.arg_list* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %23 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %26 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.264, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %32 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %31, i32 0, i32 1
  %33 = load %struct.arg_list*, %struct.arg_list** %32, align 8
  store %struct.arg_list* %33, %struct.arg_list** %6, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %36 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.267, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %42 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %41, i32 0, i32 1
  %43 = load %struct.arg_list*, %struct.arg_list** %42, align 8
  store %struct.arg_list* %43, %struct.arg_list** %5, align 8
  br label %11

44:                                               ; preds = %11
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  %47 = icmp ne %struct.arg_list* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  store %struct.arg_list* %49, %struct.arg_list** %5, align 8
  br label %50

50:                                               ; preds = %73, %48
  %51 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %52 = icmp ne %struct.arg_list* %51, null
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %55 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %54, i32 0, i32 1
  %56 = load %struct.arg_list*, %struct.arg_list** %55, align 8
  store %struct.arg_list* %56, %struct.arg_list** %6, align 8
  br label %57

57:                                               ; preds = %69, %53
  %58 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %59 = icmp ne %struct.arg_list* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %62 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %65 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.270, i64 0, i64 0))
  br label %69

69:                                               ; preds = %68, %60
  %70 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %71 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %70, i32 0, i32 1
  %72 = load %struct.arg_list*, %struct.arg_list** %71, align 8
  store %struct.arg_list* %72, %struct.arg_list** %6, align 8
  br label %57

73:                                               ; preds = %57
  %74 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %75 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %74, i32 0, i32 1
  %76 = load %struct.arg_list*, %struct.arg_list** %75, align 8
  store %struct.arg_list* %76, %struct.arg_list** %5, align 8
  br label %50

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %45
  %79 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %80 = icmp ne %struct.arg_list* %79, null
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  %83 = icmp ne %struct.arg_list* %82, null
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  store %struct.arg_list* %85, %struct.arg_list** %5, align 8
  br label %86

86:                                               ; preds = %107, %84
  %87 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %88 = icmp ne %struct.arg_list* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  store %struct.arg_list* %90, %struct.arg_list** %6, align 8
  br label %91

91:                                               ; preds = %103, %89
  %92 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %93 = icmp ne %struct.arg_list* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %96 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %99 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.271, i64 0, i64 0))
  br label %103

103:                                              ; preds = %102, %94
  %104 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %105 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %104, i32 0, i32 1
  %106 = load %struct.arg_list*, %struct.arg_list** %105, align 8
  store %struct.arg_list* %106, %struct.arg_list** %6, align 8
  br label %91

107:                                              ; preds = %91
  %108 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %109 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %108, i32 0, i32 1
  %110 = load %struct.arg_list*, %struct.arg_list** %109, align 8
  store %struct.arg_list* %110, %struct.arg_list** %5, align 8
  br label %86

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111, %81, %78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyerror(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i8, i8* @is_std_in, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36.272, i64 0, i64 0), i8** %3, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i8**, i8*** @g_argv, align 8
  %12 = load i32, i32* @optind, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %11, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @line_no, align 4
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37.273, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %25 = call i32 @vfprintf(%struct._IO_FILE* %22, i8* %23, %struct.__va_list_tag* %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.274, i64 0, i64 0))
  store i32 1, i32* @had_error, align 4
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %29 = bitcast %struct.__va_list_tag* %28 to i8*
  call void @llvm.va_end(i8* %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warn(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i8, i8* @std_only, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load i8, i8* @is_std_in, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36.272, i64 0, i64 0), i8** %3, align 8
  br label %20

13:                                               ; preds = %9
  %14 = load i8**, i8*** @g_argv, align 8
  %15 = load i32, i32* @optind, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @line_no, align 4
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37.273, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %28 = call i32 @vfprintf(%struct._IO_FILE* %25, i8* %26, %struct.__va_list_tag* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.274, i64 0, i64 0))
  store i32 1, i32* @had_error, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load i8, i8* @warn_not_std, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i8, i8* @is_std_in, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36.272, i64 0, i64 0), i8** %3, align 8
  br label %45

38:                                               ; preds = %34
  %39 = load i8**, i8*** @g_argv, align 8
  %40 = load i32, i32* @optind, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %38, %37
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @line_no, align 4
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38.275, i64 0, i64 0), i8* %47, i32 %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %53 = call i32 @vfprintf(%struct._IO_FILE* %50, i8* %51, %struct.__va_list_tag* %52)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.274, i64 0, i64 0))
  br label %56

56:                                               ; preds = %45, %31
  br label %57

57:                                               ; preds = %56, %20
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %59 = bitcast %struct.__va_list_tag* %58 to i8*
  call void @llvm.va_end(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_gen() #0 {
  store i32 0, i32* @break_label, align 4
  store i32 0, i32* @continue_label, align 4
  store i32 1, i32* @next_label, align 4
  store i32 2, i32* @out_count, align 4
  %1 = load i8, i8* @compile_only, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.278, i64 0, i64 0))
  br label %6

5:                                                ; preds = %0
  call void @init_load()
  br label %6

6:                                                ; preds = %5, %3
  store i32 0, i32* @had_error, align 4
  store i8 0, i8* @did_gen, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8 1, i8* @did_gen, align 1
  %3 = load i8, i8* @compile_only, align 1
  %4 = icmp ne i8 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.281, i64 0, i64 0), i8* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8) #9
  %10 = load i32, i32* @out_count, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @out_count, align 4
  %14 = load i32, i32* @out_count, align 4
  %15 = icmp sgt i32 %14, 60
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.274, i64 0, i64 0))
  store i32 0, i32* @out_count, align 4
  br label %18

18:                                               ; preds = %16, %5
  br label %21

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  call void @load_code(i8* %20)
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_code() #0 {
  %1 = load i32, i32* @had_error, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = load i8, i8* @did_gen, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i8, i8* @compile_only, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.284, i64 0, i64 0))
  store i32 0, i32* @out_count, align 4
  br label %13

12:                                               ; preds = %7
  call void @execute()
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13, %3, %0
  %15 = load i8, i8* @did_gen, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @init_gen()
  br label %19

18:                                               ; preds = %14
  store i32 0, i32* @had_error, align 4
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @out_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  store i32 0, i32* @out_col, align 4
  %7 = call i32 @putchar(i32 10)
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @out_col, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @out_col, align 4
  %11 = load i32, i32* @out_col, align 4
  %12 = icmp eq i32 %11, 70
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i32 @putchar(i32 92)
  %15 = call i32 @putchar(i32 10)
  store i32 1, i32* @out_col, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i8, i8* %2, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @putchar(i32 %18)
  br label %20

20:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @putchar(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.id_rec* @find_id(%struct.id_rec* %0, i8* %1) #0 {
  %3 = alloca %struct.id_rec*, align 8
  %4 = alloca %struct.id_rec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.id_rec* %0, %struct.id_rec** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %8 = icmp eq %struct.id_rec* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.id_rec* null, %struct.id_rec** %3, align 8
  br label %35

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %13 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %11, i8* %14) #9
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  store %struct.id_rec* %19, %struct.id_rec** %3, align 8
  br label %35

20:                                               ; preds = %10
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %25 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %24, i32 0, i32 5
  %26 = load %struct.id_rec*, %struct.id_rec** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.id_rec* @find_id(%struct.id_rec* %26, i8* %27)
  store %struct.id_rec* %28, %struct.id_rec** %3, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %31 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %30, i32 0, i32 6
  %32 = load %struct.id_rec*, %struct.id_rec** %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call %struct.id_rec* @find_id(%struct.id_rec* %32, i8* %33)
  store %struct.id_rec* %34, %struct.id_rec** %3, align 8
  br label %35

35:                                               ; preds = %29, %23, %18, %9
  %36 = load %struct.id_rec*, %struct.id_rec** %3, align 8
  ret %struct.id_rec* %36
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @insert_id_rec(%struct.id_rec** %0, %struct.id_rec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.id_rec**, align 8
  %5 = alloca %struct.id_rec*, align 8
  %6 = alloca %struct.id_rec*, align 8
  %7 = alloca %struct.id_rec*, align 8
  store %struct.id_rec** %0, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %1, %struct.id_rec** %5, align 8
  %8 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %9 = load %struct.id_rec*, %struct.id_rec** %8, align 8
  %10 = icmp eq %struct.id_rec* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %13 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %12, %struct.id_rec** %13, align 8
  %14 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %15 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %14, i32 0, i32 5
  store %struct.id_rec* null, %struct.id_rec** %15, align 8
  %16 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %17 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %16, i32 0, i32 6
  store %struct.id_rec* null, %struct.id_rec** %17, align 8
  %18 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %19 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %18, i32 0, i32 4
  store i16 0, i16* %19, align 4
  store i32 1, i32* %3, align 4
  br label %229

20:                                               ; preds = %2
  %21 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %22 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %25 = load %struct.id_rec*, %struct.id_rec** %24, align 8
  %26 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %23, i8* %27) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %129

30:                                               ; preds = %20
  %31 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %32 = load %struct.id_rec*, %struct.id_rec** %31, align 8
  %33 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %32, i32 0, i32 5
  %34 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %35 = call i32 @insert_id_rec(%struct.id_rec** %33, %struct.id_rec* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %128

37:                                               ; preds = %30
  %38 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %39 = load %struct.id_rec*, %struct.id_rec** %38, align 8
  %40 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %39, i32 0, i32 4
  %41 = load i16, i16* %40, align 4
  %42 = add i16 %41, -1
  store i16 %42, i16* %40, align 4
  %43 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %44 = load %struct.id_rec*, %struct.id_rec** %43, align 8
  %45 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %44, i32 0, i32 4
  %46 = load i16, i16* %45, align 4
  %47 = sext i16 %46 to i32
  switch i32 %47, label %127 [
    i32 0, label %48
    i32 -1, label %49
    i32 -2, label %50
  ]

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %229

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %229

50:                                               ; preds = %37
  %51 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %52 = load %struct.id_rec*, %struct.id_rec** %51, align 8
  store %struct.id_rec* %52, %struct.id_rec** %6, align 8
  %53 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %54 = load %struct.id_rec*, %struct.id_rec** %53, align 8
  %55 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %54, i32 0, i32 5
  %56 = load %struct.id_rec*, %struct.id_rec** %55, align 8
  store %struct.id_rec* %56, %struct.id_rec** %7, align 8
  %57 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %58 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %57, i32 0, i32 4
  %59 = load i16, i16* %58, align 4
  %60 = sext i16 %59 to i32
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %50
  %63 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %64 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %63, i32 0, i32 6
  %65 = load %struct.id_rec*, %struct.id_rec** %64, align 8
  %66 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %67 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %66, i32 0, i32 5
  store %struct.id_rec* %65, %struct.id_rec** %67, align 8
  %68 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %69 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %70 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %69, i32 0, i32 6
  store %struct.id_rec* %68, %struct.id_rec** %70, align 8
  %71 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %72 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %71, %struct.id_rec** %72, align 8
  %73 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %74 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %73, i32 0, i32 4
  store i16 0, i16* %74, align 4
  %75 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %76 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %75, i32 0, i32 4
  store i16 0, i16* %76, align 4
  br label %126

77:                                               ; preds = %50
  %78 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %79 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %78, i32 0, i32 6
  %80 = load %struct.id_rec*, %struct.id_rec** %79, align 8
  %81 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %80, %struct.id_rec** %81, align 8
  %82 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %83 = load %struct.id_rec*, %struct.id_rec** %82, align 8
  %84 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %83, i32 0, i32 5
  %85 = load %struct.id_rec*, %struct.id_rec** %84, align 8
  %86 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %87 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %86, i32 0, i32 6
  store %struct.id_rec* %85, %struct.id_rec** %87, align 8
  %88 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %89 = load %struct.id_rec*, %struct.id_rec** %88, align 8
  %90 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %89, i32 0, i32 6
  %91 = load %struct.id_rec*, %struct.id_rec** %90, align 8
  %92 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %93 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %92, i32 0, i32 5
  store %struct.id_rec* %91, %struct.id_rec** %93, align 8
  %94 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %95 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %96 = load %struct.id_rec*, %struct.id_rec** %95, align 8
  %97 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %96, i32 0, i32 5
  store %struct.id_rec* %94, %struct.id_rec** %97, align 8
  %98 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %99 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %100 = load %struct.id_rec*, %struct.id_rec** %99, align 8
  %101 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %100, i32 0, i32 6
  store %struct.id_rec* %98, %struct.id_rec** %101, align 8
  %102 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %103 = load %struct.id_rec*, %struct.id_rec** %102, align 8
  %104 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %103, i32 0, i32 4
  %105 = load i16, i16* %104, align 4
  %106 = sext i16 %105 to i32
  switch i32 %106, label %122 [
    i32 -1, label %107
    i32 0, label %112
    i32 1, label %117
  ]

107:                                              ; preds = %77
  %108 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %109 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %108, i32 0, i32 4
  store i16 1, i16* %109, align 4
  %110 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %111 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %110, i32 0, i32 4
  store i16 0, i16* %111, align 4
  br label %122

112:                                              ; preds = %77
  %113 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %114 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %113, i32 0, i32 4
  store i16 0, i16* %114, align 4
  %115 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %116 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %115, i32 0, i32 4
  store i16 0, i16* %116, align 4
  br label %122

117:                                              ; preds = %77
  %118 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %119 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %118, i32 0, i32 4
  store i16 0, i16* %119, align 4
  %120 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %121 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %120, i32 0, i32 4
  store i16 -1, i16* %121, align 4
  br label %122

122:                                              ; preds = %117, %112, %107, %77
  %123 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %124 = load %struct.id_rec*, %struct.id_rec** %123, align 8
  %125 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %124, i32 0, i32 4
  store i16 0, i16* %125, align 4
  br label %126

126:                                              ; preds = %122, %62
  br label %127

127:                                              ; preds = %126, %37
  br label %128

128:                                              ; preds = %127, %30
  br label %228

129:                                              ; preds = %20
  %130 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %131 = load %struct.id_rec*, %struct.id_rec** %130, align 8
  %132 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %131, i32 0, i32 6
  %133 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %134 = call i32 @insert_id_rec(%struct.id_rec** %132, %struct.id_rec* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %227

136:                                              ; preds = %129
  %137 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %138 = load %struct.id_rec*, %struct.id_rec** %137, align 8
  %139 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %138, i32 0, i32 4
  %140 = load i16, i16* %139, align 4
  %141 = add i16 %140, 1
  store i16 %141, i16* %139, align 4
  %142 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %143 = load %struct.id_rec*, %struct.id_rec** %142, align 8
  %144 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %143, i32 0, i32 4
  %145 = load i16, i16* %144, align 4
  %146 = sext i16 %145 to i32
  switch i32 %146, label %226 [
    i32 0, label %147
    i32 1, label %148
    i32 2, label %149
  ]

147:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %229

148:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %229

149:                                              ; preds = %136
  %150 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %151 = load %struct.id_rec*, %struct.id_rec** %150, align 8
  store %struct.id_rec* %151, %struct.id_rec** %6, align 8
  %152 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %153 = load %struct.id_rec*, %struct.id_rec** %152, align 8
  %154 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %153, i32 0, i32 6
  %155 = load %struct.id_rec*, %struct.id_rec** %154, align 8
  store %struct.id_rec* %155, %struct.id_rec** %7, align 8
  %156 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %157 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %156, i32 0, i32 4
  %158 = load i16, i16* %157, align 4
  %159 = sext i16 %158 to i32
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %149
  %162 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %163 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %162, i32 0, i32 5
  %164 = load %struct.id_rec*, %struct.id_rec** %163, align 8
  %165 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %166 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %165, i32 0, i32 6
  store %struct.id_rec* %164, %struct.id_rec** %166, align 8
  %167 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %168 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %169 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %168, i32 0, i32 5
  store %struct.id_rec* %167, %struct.id_rec** %169, align 8
  %170 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %171 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %170, %struct.id_rec** %171, align 8
  %172 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %173 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %172, i32 0, i32 4
  store i16 0, i16* %173, align 4
  %174 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %175 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %174, i32 0, i32 4
  store i16 0, i16* %175, align 4
  br label %225

176:                                              ; preds = %149
  %177 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %178 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %177, i32 0, i32 5
  %179 = load %struct.id_rec*, %struct.id_rec** %178, align 8
  %180 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %179, %struct.id_rec** %180, align 8
  %181 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %182 = load %struct.id_rec*, %struct.id_rec** %181, align 8
  %183 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %182, i32 0, i32 6
  %184 = load %struct.id_rec*, %struct.id_rec** %183, align 8
  %185 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %186 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %185, i32 0, i32 5
  store %struct.id_rec* %184, %struct.id_rec** %186, align 8
  %187 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %188 = load %struct.id_rec*, %struct.id_rec** %187, align 8
  %189 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %188, i32 0, i32 5
  %190 = load %struct.id_rec*, %struct.id_rec** %189, align 8
  %191 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %192 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %191, i32 0, i32 6
  store %struct.id_rec* %190, %struct.id_rec** %192, align 8
  %193 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %194 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %195 = load %struct.id_rec*, %struct.id_rec** %194, align 8
  %196 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %195, i32 0, i32 5
  store %struct.id_rec* %193, %struct.id_rec** %196, align 8
  %197 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %198 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %199 = load %struct.id_rec*, %struct.id_rec** %198, align 8
  %200 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %199, i32 0, i32 6
  store %struct.id_rec* %197, %struct.id_rec** %200, align 8
  %201 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %202 = load %struct.id_rec*, %struct.id_rec** %201, align 8
  %203 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %202, i32 0, i32 4
  %204 = load i16, i16* %203, align 4
  %205 = sext i16 %204 to i32
  switch i32 %205, label %221 [
    i32 -1, label %206
    i32 0, label %211
    i32 1, label %216
  ]

206:                                              ; preds = %176
  %207 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %208 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %207, i32 0, i32 4
  store i16 0, i16* %208, align 4
  %209 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %210 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %209, i32 0, i32 4
  store i16 1, i16* %210, align 4
  br label %221

211:                                              ; preds = %176
  %212 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %213 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %212, i32 0, i32 4
  store i16 0, i16* %213, align 4
  %214 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %215 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %214, i32 0, i32 4
  store i16 0, i16* %215, align 4
  br label %221

216:                                              ; preds = %176
  %217 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %218 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %217, i32 0, i32 4
  store i16 -1, i16* %218, align 4
  %219 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %220 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %219, i32 0, i32 4
  store i16 0, i16* %220, align 4
  br label %221

221:                                              ; preds = %216, %211, %206, %176
  %222 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %223 = load %struct.id_rec*, %struct.id_rec** %222, align 8
  %224 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %223, i32 0, i32 4
  store i16 0, i16* %224, align 4
  br label %225

225:                                              ; preds = %221, %161
  br label %226

226:                                              ; preds = %225, %136
  br label %227

227:                                              ; preds = %226, %129
  br label %228

228:                                              ; preds = %227, %128
  store i32 0, i32* %3, align 4
  br label %229

229:                                              ; preds = %228, %148, %147, %49, %48, %11
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_tree() #0 {
  store %struct.id_rec* null, %struct.id_rec** @name_tree, align 8
  store i32 1, i32* @next_array, align 4
  store i32 1, i32* @next_func, align 4
  store i32 4, i32* @next_var, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lookup(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.id_rec*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7) #9
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8.291, i64 0, i64 0), i8* %11)
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.id_rec*, %struct.id_rec** @name_tree, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.id_rec* @find_id(%struct.id_rec* %13, i8* %14)
  store %struct.id_rec* %15, %struct.id_rec** %6, align 8
  %16 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %17 = icmp eq %struct.id_rec* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = call noalias i8* @malloc(i64 40) #7
  %20 = bitcast i8* %19 to %struct.id_rec*
  store %struct.id_rec* %20, %struct.id_rec** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strcopyof(i8* %21)
  %23 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %24 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %26 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %28 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %27, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %30 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %29, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %32 = call i32 @insert_id_rec(%struct.id_rec** @name_tree, %struct.id_rec* %31)
  br label %33

33:                                               ; preds = %18, %12
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %152 [
    i32 1, label %35
    i32 2, label %75
    i32 0, label %113
  ]

35:                                               ; preds = %33
  %36 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %37 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  call void @free(i8* %41) #7
  %42 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %43 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %152

46:                                               ; preds = %35
  %47 = load i32, i32* @next_array, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @next_array, align 4
  %49 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %50 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8**, i8*** @a_names, align 8
  %53 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %54 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  store i8* %51, i8** %57, align 8
  %58 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %59 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 32767
  br i1 %61, label %62, label %74

62:                                               ; preds = %46
  %63 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %64 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @a_count, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  call void @more_arrays()
  br label %69

69:                                               ; preds = %68, %62
  %70 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %71 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %152

74:                                               ; preds = %46
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9.292, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

75:                                               ; preds = %33
  %76 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %77 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  call void @free(i8* %81) #7
  %82 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %83 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  br label %152

85:                                               ; preds = %75
  %86 = load i32, i32* @next_func, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @next_func, align 4
  %88 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %89 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = load i8**, i8*** @f_names, align 8
  %92 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %93 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %91, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %98 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 32767
  br i1 %100, label %101, label %112

101:                                              ; preds = %85
  %102 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %103 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @f_count, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  call void @more_functions()
  br label %108

108:                                              ; preds = %107, %101
  %109 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %110 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %3, align 4
  br label %152

112:                                              ; preds = %85
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10.293, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

113:                                              ; preds = %33
  %114 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %115 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** %4, align 8
  call void @free(i8* %119) #7
  %120 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %121 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %3, align 4
  br label %152

123:                                              ; preds = %113
  %124 = load i32, i32* @next_var, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @next_var, align 4
  %126 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %127 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = load i8**, i8*** @v_names, align 8
  %130 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %131 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %129, i64 %134
  store i8* %128, i8** %135, align 8
  %136 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %137 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %138, 32767
  br i1 %139, label %140, label %151

140:                                              ; preds = %123
  %141 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %142 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @v_count, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  call void @more_variables()
  br label %147

147:                                              ; preds = %146, %140
  %148 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %149 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %3, align 4
  br label %152

151:                                              ; preds = %123
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11.294, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

152:                                              ; preds = %147, %118, %108, %80, %69, %40, %33
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @welcome() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.297, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13.298, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warranty(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.301, i64 0, i64 0), i8* %3, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15.302, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16.303, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17.304, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.305, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19.306, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20.307, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.21.308, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.22.309, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23.310, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24.311, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25.312, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26.313, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27.314, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @limits() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28.317, i64 0, i64 0), i32 99)
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29.318, i64 0, i64 0), i64 2048)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30.319, i64 0, i64 0), i32 99)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31.320, i64 0, i64 0), i32 1000)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32.321, i64 0, i64 0), i64 9223372036854775807)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33.322, i64 0, i64 0), i64 16384)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34.323, i64 0, i64 0), i64 102481911520608620)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35.324, i64 0, i64 0), i64 32767)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rt_error(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [255 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = call i32 @vsprintf(i8* %7, i8* %8, %struct.__va_list_tag* %9) #7
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8**, i8*** @f_names, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39.327, i64 0, i64 0), i8* %18, i32 %19, i8* %20)
  store i8 1, i8* @runtime_error, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @rt_warn(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [255 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = call i32 @vsprintf(i8* %7, i8* %8, %struct.__va_list_tag* %9) #7
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8**, i8*** @f_names, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40.330, i64 0, i64 0), i8* %18, i32 %19, i8* %20)
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
