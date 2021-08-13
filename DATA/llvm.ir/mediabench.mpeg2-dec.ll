; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.DCTtab = type { i8, i8, i8 }
%struct.VLCtab = type { i8, i8 }
%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@.str = private unnamed_addr constant [52 x i8] c"invalid Huffman code in Decode_MPEG1_Intra_Block()\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (intra)\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (inter)\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"invalid Huffman code in Decode_MPEG2_Intra_Block()\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid escape in Decode_MPEG2_Intra_Block()\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (intra2)\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (inter2)\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"Unexpected next_start_code %08x (ignored)\0A\00", align 1
@Update_Temporal_Reference_Tacking_Data.temporal_reference_old = internal global i32 0, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap = internal global i32 0, align 4
@Temporal_Reference_Base = internal global i32 0, align 4
@Temporal_Reference_GOP_Reset = internal global i32 0, align 4
@True_Framenum_max = internal global i32 -1, align 4
@.str.2.10 = private unnamed_addr constant [37 x i8] c"reserved extension start code ID %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"copyright_extension(), first marker bit\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"copyright_extension(), second marker bit\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"copyright_extension(), third marker bit\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"copyright_extension (byte %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  copyright_flag =%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"  copyright_identifier=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"  original_or_copy = %d (original=1, copy=0)\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"  copyright_number_1=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"  copyright_number_2=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"  copyright_number_3=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"temporal scalability not supported\0A\00", align 1
@.str.9.11 = private unnamed_addr constant [55 x i8] c"picture_spatial_scalable_extension(), first marker bit\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"picture_spatial_scalable_extension(), second marker bit\00", align 1
@.str.7.12 = private unnamed_addr constant [44 x i8] c"picture_display_extension, first marker bit\00", align 1
@.str.8.13 = private unnamed_addr constant [45 x i8] c"picture_display_extension, second marker bit\00", align 1
@.str.5.14 = private unnamed_addr constant [30 x i8] c"sequence_scalable_extension()\00", align 1
@.str.6.15 = private unnamed_addr constant [38 x i8] c"temporal scalability not implemented\0A\00", align 1
@.str.4.16 = private unnamed_addr constant [27 x i8] c"sequence_display_extension\00", align 1
@.str.3.17 = private unnamed_addr constant [19 x i8] c"sequence_extension\00", align 1
@frame_rate_Table = internal global [16 x double] [double 0.000000e+00, double 0x4036FA1E2D85C116, double 2.400000e+01, double 2.500000e+01, double 0x403DF853E2556B28, double 3.000000e+01, double 5.000000e+01, double 0x404DF853E2556B28, double 6.000000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 16
@.str.22 = private unnamed_addr constant [27 x i8] c"group_of_pictures_header()\00", align 1
@.str.1.18 = private unnamed_addr constant [18 x i8] c"sequence_header()\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"odd number of field pictures\0A\00", align 1
@frame_reorder.Newref_progressive_frame = internal global i32 0, align 4
@frame_reorder.Oldref_progressive_frame = internal global i32 0, align 4
@.str.2.24 = private unnamed_addr constant [33 x i8] c"Too many macroblocks in picture\0A\00", align 1
@.str.7.25 = private unnamed_addr constant [31 x i8] c"SNR: Premature end of picture\0A\00", align 1
@.str.8.26 = private unnamed_addr constant [28 x i8] c"Cant't synchronize streams\0A\00", align 1
@macroblock_modes.stwc_table = internal global [3 x [4 x i8]] [[4 x i8] c"\06\03\07\04", [4 x i8] c"\02\01\05\04", [4 x i8] c"\02\05\07\04"], align 1
@macroblock_modes.stwclass_table = internal global [9 x i8] c"\00\01\02\01\01\02\03\03\04", align 1
@.str.6.27 = private unnamed_addr constant [32 x i8] c"D picture end_of_macroblock bit\00", align 1
@.str.3.28 = private unnamed_addr constant [44 x i8] c"start_of_slice(): Premature end of picture\0A\00", align 1
@.str.4.29 = private unnamed_addr constant [30 x i8] c"DP: Premature end of picture\0A\00", align 1
@.str.5.30 = private unnamed_addr constant [39 x i8] c"start_of_slice(): MBAinc unsuccessful\0A\00", align 1
@.str.1.31 = private unnamed_addr constant [35 x i8] c"last frame incomplete, not stored\0A\00", align 1
@DCTtabfirst = dso_local global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }], align 16
@DCTtabnext = dso_local global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }], align 16
@DCTtab0 = dso_local global [60 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 6, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 3, i8 8 }, %struct.DCTtab { i8 0, i8 5, i8 8 }, %struct.DCTtab { i8 10, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }], align 16
@DCTtab0a = dso_local global [252 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 5, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 11, i8 8 }, %struct.DCTtab { i8 0, i8 10, i8 8 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 4, i8 8 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 12, i8 8 }, %struct.DCTtab { i8 0, i8 13, i8 8 }, %struct.DCTtab { i8 2, i8 3, i8 8 }, %struct.DCTtab { i8 4, i8 2, i8 8 }, %struct.DCTtab { i8 0, i8 14, i8 8 }, %struct.DCTtab { i8 0, i8 15, i8 8 }], align 16
@DCTtab1 = dso_local global [8 x %struct.DCTtab] [%struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 5, i8 2, i8 10 }, %struct.DCTtab { i8 0, i8 7, i8 10 }, %struct.DCTtab { i8 2, i8 3, i8 10 }, %struct.DCTtab { i8 1, i8 4, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 10 }, %struct.DCTtab { i8 14, i8 1, i8 10 }, %struct.DCTtab { i8 4, i8 2, i8 10 }], align 16
@DCTtab1a = dso_local global [8 x %struct.DCTtab] [%struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 2, i8 4, i8 10 }, %struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 9 }, %struct.DCTtab { i8 15, i8 1, i8 9 }], align 16
@DCTtab2 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 11, i8 12 }, %struct.DCTtab { i8 8, i8 2, i8 12 }, %struct.DCTtab { i8 4, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 10, i8 12 }, %struct.DCTtab { i8 2, i8 4, i8 12 }, %struct.DCTtab { i8 7, i8 2, i8 12 }, %struct.DCTtab { i8 21, i8 1, i8 12 }, %struct.DCTtab { i8 20, i8 1, i8 12 }, %struct.DCTtab { i8 0, i8 9, i8 12 }, %struct.DCTtab { i8 19, i8 1, i8 12 }, %struct.DCTtab { i8 18, i8 1, i8 12 }, %struct.DCTtab { i8 1, i8 5, i8 12 }, %struct.DCTtab { i8 3, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 8, i8 12 }, %struct.DCTtab { i8 6, i8 2, i8 12 }, %struct.DCTtab { i8 17, i8 1, i8 12 }], align 16
@DCTtab3 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 10, i8 2, i8 13 }, %struct.DCTtab { i8 9, i8 2, i8 13 }, %struct.DCTtab { i8 5, i8 3, i8 13 }, %struct.DCTtab { i8 3, i8 4, i8 13 }, %struct.DCTtab { i8 2, i8 5, i8 13 }, %struct.DCTtab { i8 1, i8 7, i8 13 }, %struct.DCTtab { i8 1, i8 6, i8 13 }, %struct.DCTtab { i8 0, i8 15, i8 13 }, %struct.DCTtab { i8 0, i8 14, i8 13 }, %struct.DCTtab { i8 0, i8 13, i8 13 }, %struct.DCTtab { i8 0, i8 12, i8 13 }, %struct.DCTtab { i8 26, i8 1, i8 13 }, %struct.DCTtab { i8 25, i8 1, i8 13 }, %struct.DCTtab { i8 24, i8 1, i8 13 }, %struct.DCTtab { i8 23, i8 1, i8 13 }, %struct.DCTtab { i8 22, i8 1, i8 13 }], align 16
@DCTtab4 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 31, i8 14 }, %struct.DCTtab { i8 0, i8 30, i8 14 }, %struct.DCTtab { i8 0, i8 29, i8 14 }, %struct.DCTtab { i8 0, i8 28, i8 14 }, %struct.DCTtab { i8 0, i8 27, i8 14 }, %struct.DCTtab { i8 0, i8 26, i8 14 }, %struct.DCTtab { i8 0, i8 25, i8 14 }, %struct.DCTtab { i8 0, i8 24, i8 14 }, %struct.DCTtab { i8 0, i8 23, i8 14 }, %struct.DCTtab { i8 0, i8 22, i8 14 }, %struct.DCTtab { i8 0, i8 21, i8 14 }, %struct.DCTtab { i8 0, i8 20, i8 14 }, %struct.DCTtab { i8 0, i8 19, i8 14 }, %struct.DCTtab { i8 0, i8 18, i8 14 }, %struct.DCTtab { i8 0, i8 17, i8 14 }, %struct.DCTtab { i8 0, i8 16, i8 14 }], align 16
@DCTtab5 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 40, i8 15 }, %struct.DCTtab { i8 0, i8 39, i8 15 }, %struct.DCTtab { i8 0, i8 38, i8 15 }, %struct.DCTtab { i8 0, i8 37, i8 15 }, %struct.DCTtab { i8 0, i8 36, i8 15 }, %struct.DCTtab { i8 0, i8 35, i8 15 }, %struct.DCTtab { i8 0, i8 34, i8 15 }, %struct.DCTtab { i8 0, i8 33, i8 15 }, %struct.DCTtab { i8 0, i8 32, i8 15 }, %struct.DCTtab { i8 1, i8 14, i8 15 }, %struct.DCTtab { i8 1, i8 13, i8 15 }, %struct.DCTtab { i8 1, i8 12, i8 15 }, %struct.DCTtab { i8 1, i8 11, i8 15 }, %struct.DCTtab { i8 1, i8 10, i8 15 }, %struct.DCTtab { i8 1, i8 9, i8 15 }, %struct.DCTtab { i8 1, i8 8, i8 15 }], align 16
@DCTtab6 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 1, i8 18, i8 16 }, %struct.DCTtab { i8 1, i8 17, i8 16 }, %struct.DCTtab { i8 1, i8 16, i8 16 }, %struct.DCTtab { i8 1, i8 15, i8 16 }, %struct.DCTtab { i8 6, i8 3, i8 16 }, %struct.DCTtab { i8 16, i8 2, i8 16 }, %struct.DCTtab { i8 15, i8 2, i8 16 }, %struct.DCTtab { i8 14, i8 2, i8 16 }, %struct.DCTtab { i8 13, i8 2, i8 16 }, %struct.DCTtab { i8 12, i8 2, i8 16 }, %struct.DCTtab { i8 11, i8 2, i8 16 }, %struct.DCTtab { i8 31, i8 1, i8 16 }, %struct.DCTtab { i8 30, i8 1, i8 16 }, %struct.DCTtab { i8 29, i8 1, i8 16 }, %struct.DCTtab { i8 28, i8 1, i8 16 }, %struct.DCTtab { i8 27, i8 1, i8 16 }], align 16
@.str.56 = private unnamed_addr constant [57 x i8] c"Get_macroblock_type(): unrecognized picture coding type\0A\00", align 1
@.str.4.57 = private unnamed_addr constant [30 x i8] c"Invalid macroblock_type code\0A\00", align 1
@BMBtab0 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@BMBtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 22, i8 6 }, %struct.VLCtab { i8 26, i8 6 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@spBMBtab0 = internal global [14 x %struct.VLCtab] [%struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@spBMBtab1 = internal global [12 x %struct.VLCtab] [%struct.VLCtab { i8 26, i8 7 }, %struct.VLCtab { i8 22, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 30, i8 7 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 38, i8 6 }, %struct.VLCtab { i8 38, i8 6 }], align 16
@spBMBtab2 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 9 }, %struct.VLCtab { i8 82, i8 9 }, %struct.VLCtab { i8 64, i8 9 }, %struct.VLCtab { i8 66, i8 9 }], align 16
@PMBtab0 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }], align 16
@PMBtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@spPMBtab0 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 40, i8 4 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }], align 16
@spPMBtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 82, i8 7 }, %struct.VLCtab { i8 64, i8 7 }, %struct.VLCtab { i8 2, i8 7 }, %struct.VLCtab { i8 66, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 34, i8 6 }, %struct.VLCtab { i8 34, i8 6 }], align 16
@spIMBtab = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 64, i8 4 }, %struct.VLCtab { i8 17, i8 4 }, %struct.VLCtab { i8 1, i8 4 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }], align 16
@SNRMBtab = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }], align 16
@MVtab0 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }], align 16
@MVtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 5, i8 6 }, %struct.VLCtab { i8 4, i8 5 }, %struct.VLCtab { i8 4, i8 5 }], align 16
@.str.1.58 = private unnamed_addr constant [45 x i8] c"Invalid motion_vector code (MBA %d, pic %d)\0A\00", align 1
@MVtab2 = internal global [12 x %struct.VLCtab] [%struct.VLCtab { i8 16, i8 9 }, %struct.VLCtab { i8 15, i8 9 }, %struct.VLCtab { i8 14, i8 9 }, %struct.VLCtab { i8 13, i8 9 }, %struct.VLCtab { i8 12, i8 9 }, %struct.VLCtab { i8 11, i8 9 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }], align 16
@CBPtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 62, i8 5 }, %struct.VLCtab { i8 2, i8 5 }, %struct.VLCtab { i8 61, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 56, i8 5 }, %struct.VLCtab { i8 52, i8 5 }, %struct.VLCtab { i8 44, i8 5 }, %struct.VLCtab { i8 28, i8 5 }, %struct.VLCtab { i8 40, i8 5 }, %struct.VLCtab { i8 20, i8 5 }, %struct.VLCtab { i8 48, i8 5 }, %struct.VLCtab { i8 12, i8 5 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }], align 16
@CBPtab1 = internal global [64 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 8 }, %struct.VLCtab { i8 46, i8 8 }, %struct.VLCtab { i8 30, i8 8 }, %struct.VLCtab { i8 57, i8 8 }, %struct.VLCtab { i8 53, i8 8 }, %struct.VLCtab { i8 45, i8 8 }, %struct.VLCtab { i8 29, i8 8 }, %struct.VLCtab { i8 38, i8 8 }, %struct.VLCtab { i8 26, i8 8 }, %struct.VLCtab { i8 37, i8 8 }, %struct.VLCtab { i8 25, i8 8 }, %struct.VLCtab { i8 43, i8 8 }, %struct.VLCtab { i8 23, i8 8 }, %struct.VLCtab { i8 51, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 42, i8 8 }, %struct.VLCtab { i8 22, i8 8 }, %struct.VLCtab { i8 50, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 41, i8 8 }, %struct.VLCtab { i8 21, i8 8 }, %struct.VLCtab { i8 49, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 35, i8 8 }, %struct.VLCtab { i8 19, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 7, i8 8 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }], align 16
@.str.2.61 = private unnamed_addr constant [34 x i8] c"Invalid coded_block_pattern code\0A\00", align 1
@CBPtab2 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 9 }, %struct.VLCtab { i8 39, i8 9 }, %struct.VLCtab { i8 27, i8 9 }, %struct.VLCtab { i8 59, i8 9 }, %struct.VLCtab { i8 55, i8 9 }, %struct.VLCtab { i8 47, i8 9 }, %struct.VLCtab { i8 31, i8 9 }], align 16
@.str.3.64 = private unnamed_addr constant [43 x i8] c"Invalid macroblock_address_increment code\0A\00", align 1
@MBAtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 5 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }], align 16
@MBAtab2 = internal global [104 x %struct.VLCtab] [%struct.VLCtab { i8 33, i8 11 }, %struct.VLCtab { i8 32, i8 11 }, %struct.VLCtab { i8 31, i8 11 }, %struct.VLCtab { i8 30, i8 11 }, %struct.VLCtab { i8 29, i8 11 }, %struct.VLCtab { i8 28, i8 11 }, %struct.VLCtab { i8 27, i8 11 }, %struct.VLCtab { i8 26, i8 11 }, %struct.VLCtab { i8 25, i8 11 }, %struct.VLCtab { i8 24, i8 11 }, %struct.VLCtab { i8 23, i8 11 }, %struct.VLCtab { i8 22, i8 11 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }], align 16
@DClumtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DClumtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 10, i8 9 }, %struct.VLCtab { i8 11, i8 9 }], align 16
@DCchromtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 5, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DCchromtab1 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 10, i8 10 }, %struct.VLCtab { i8 11, i8 10 }], align 16
@iclp = internal global i16* null, align 8
@iclip = internal global [1024 x i16] zeroinitializer, align 16
@c = internal global [8 x [8 x double]] zeroinitializer, align 16
@Version = dso_local global [28 x i8] c"mpeg2decode V1.2a, 96/07/19\00", align 16
@Author = dso_local global [41 x i8] c"(C) 1996, MPEG Software Simulation Group\00", align 16
@scan = dso_local global [2 x [64 x i8]] [[64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", [64 x i8] c"\00\08\10\18\01\09\02\0A\11\19 (0891)!\1A\12\03\0B\04\0C\13\1B\22*2:#+3;\14\1C\05\0D\06\0E\15\1D$,4<%-5=\16\1E\07\0F\17\1F&.6>'/7?"], align 16
@default_intra_quantizer_matrix = dso_local global [64 x i8] c"\08\10\13\16\1A\1B\1D\22\10\10\16\18\1B\1D\22%\13\16\1A\1B\1D\22\22&\16\16\1A\1B\1D\22%(\16\1A\1B\1D #(0\1A\1B\1D #(0:\1A\1B\1D\22&.8E\1B\1D#&.8ES", align 16
@Non_Linear_quantizer_scale = dso_local global [32 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\12\14\16\18\1C $(,048@HPX`hp", align 16
@Inverse_Table_6_9 = dso_local global [8 x [4 x i32]] [[4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104448, i32 132798, i32 24759, i32 53109], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 117579, i32 136230, i32 16907, i32 35559]], align 16
@base = common dso_local global %struct.layer_data zeroinitializer, align 8
@ld = common dso_local global %struct.layer_data* null, align 8
@Main_Bitstream_Filename = common dso_local global i8* null, align 8
@Error_Text = common dso_local global [256 x i8] zeroinitializer, align 16
@System_Stream_Flag = common dso_local global i32 0, align 4
@Two_Streams = common dso_local global i32 0, align 4
@enhan = common dso_local global %struct.layer_data zeroinitializer, align 8
@Enhancement_Layer_Bitstream_Filename = common dso_local global i8* null, align 8
@Output_Type = common dso_local global i32 0, align 4
@hiQdither = common dso_local global i32 0, align 4
@Quiet_Flag = common dso_local global i32 0, align 4
@Trace_Flag = common dso_local global i32 0, align 4
@Fault_Flag = common dso_local global i32 0, align 4
@Verbose_Flag = common dso_local global i32 0, align 4
@Spatial_Flag = common dso_local global i32 0, align 4
@Reference_IDCT_Flag = common dso_local global i32 0, align 4
@Frame_Store_Flag = common dso_local global i32 0, align 4
@Display_Progressive_Flag = common dso_local global i32 0, align 4
@Ersatz_Flag = common dso_local global i32 0, align 4
@Big_Picture_Flag = common dso_local global i32 0, align 4
@Verify_Flag = common dso_local global i32 0, align 4
@Stats_Flag = common dso_local global i32 0, align 4
@User_Data_Flag = common dso_local global i32 0, align 4
@Main_Bitstream_Flag = common dso_local global i32 0, align 4
@Output_Picture_Filename = common dso_local global i8* null, align 8
@Substitute_Picture_Filename = common dso_local global i8* null, align 8
@Clip = common dso_local global i8* null, align 8
@backward_reference_frame = common dso_local global [3 x i8*] zeroinitializer, align 16
@forward_reference_frame = common dso_local global [3 x i8*] zeroinitializer, align 16
@auxframe = common dso_local global [3 x i8*] zeroinitializer, align 16
@current_frame = common dso_local global [3 x i8*] zeroinitializer, align 16
@substitute_frame = common dso_local global [3 x i8*] zeroinitializer, align 16
@llframe0 = common dso_local global [3 x i8*] zeroinitializer, align 16
@llframe1 = common dso_local global [3 x i8*] zeroinitializer, align 16
@lltmp = common dso_local global i16* null, align 8
@Lower_Layer_Picture_Filename = common dso_local global i8* null, align 8
@Coded_Picture_Width = common dso_local global i32 0, align 4
@Coded_Picture_Height = common dso_local global i32 0, align 4
@Chroma_Width = common dso_local global i32 0, align 4
@Chroma_Height = common dso_local global i32 0, align 4
@block_count = common dso_local global i32 0, align 4
@Second_Field = common dso_local global i32 0, align 4
@profile = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@horizontal_size = common dso_local global i32 0, align 4
@vertical_size = common dso_local global i32 0, align 4
@mb_width = common dso_local global i32 0, align 4
@mb_height = common dso_local global i32 0, align 4
@bit_rate = common dso_local global double 0.000000e+00, align 8
@frame_rate = common dso_local global double 0.000000e+00, align 8
@aspect_ratio_information = common dso_local global i32 0, align 4
@frame_rate_code = common dso_local global i32 0, align 4
@bit_rate_value = common dso_local global i32 0, align 4
@vbv_buffer_size = common dso_local global i32 0, align 4
@constrained_parameters_flag = common dso_local global i32 0, align 4
@profile_and_level_indication = common dso_local global i32 0, align 4
@progressive_sequence = common dso_local global i32 0, align 4
@chroma_format = common dso_local global i32 0, align 4
@low_delay = common dso_local global i32 0, align 4
@frame_rate_extension_n = common dso_local global i32 0, align 4
@frame_rate_extension_d = common dso_local global i32 0, align 4
@video_format = common dso_local global i32 0, align 4
@color_description = common dso_local global i32 0, align 4
@color_primaries = common dso_local global i32 0, align 4
@transfer_characteristics = common dso_local global i32 0, align 4
@matrix_coefficients = common dso_local global i32 0, align 4
@display_horizontal_size = common dso_local global i32 0, align 4
@display_vertical_size = common dso_local global i32 0, align 4
@temporal_reference = common dso_local global i32 0, align 4
@picture_coding_type = common dso_local global i32 0, align 4
@vbv_delay = common dso_local global i32 0, align 4
@full_pel_forward_vector = common dso_local global i32 0, align 4
@forward_f_code = common dso_local global i32 0, align 4
@full_pel_backward_vector = common dso_local global i32 0, align 4
@backward_f_code = common dso_local global i32 0, align 4
@f_code = common dso_local global [2 x [2 x i32]] zeroinitializer, align 16
@intra_dc_precision = common dso_local global i32 0, align 4
@picture_structure = common dso_local global i32 0, align 4
@top_field_first = common dso_local global i32 0, align 4
@frame_pred_frame_dct = common dso_local global i32 0, align 4
@concealment_motion_vectors = common dso_local global i32 0, align 4
@intra_vlc_format = common dso_local global i32 0, align 4
@repeat_first_field = common dso_local global i32 0, align 4
@chroma_420_type = common dso_local global i32 0, align 4
@progressive_frame = common dso_local global i32 0, align 4
@composite_display_flag = common dso_local global i32 0, align 4
@v_axis = common dso_local global i32 0, align 4
@field_sequence = common dso_local global i32 0, align 4
@sub_carrier = common dso_local global i32 0, align 4
@burst_amplitude = common dso_local global i32 0, align 4
@sub_carrier_phase = common dso_local global i32 0, align 4
@frame_center_horizontal_offset = common dso_local global [3 x i32] zeroinitializer, align 4
@frame_center_vertical_offset = common dso_local global [3 x i32] zeroinitializer, align 4
@layer_id = common dso_local global i32 0, align 4
@lower_layer_prediction_horizontal_size = common dso_local global i32 0, align 4
@lower_layer_prediction_vertical_size = common dso_local global i32 0, align 4
@horizontal_subsampling_factor_m = common dso_local global i32 0, align 4
@horizontal_subsampling_factor_n = common dso_local global i32 0, align 4
@vertical_subsampling_factor_m = common dso_local global i32 0, align 4
@vertical_subsampling_factor_n = common dso_local global i32 0, align 4
@lower_layer_temporal_reference = common dso_local global i32 0, align 4
@lower_layer_horizontal_offset = common dso_local global i32 0, align 4
@lower_layer_vertical_offset = common dso_local global i32 0, align 4
@spatial_temporal_weight_code_table_index = common dso_local global i32 0, align 4
@lower_layer_progressive_frame = common dso_local global i32 0, align 4
@lower_layer_deinterlaced_field_select = common dso_local global i32 0, align 4
@copyright_flag = common dso_local global i32 0, align 4
@copyright_identifier = common dso_local global i32 0, align 4
@original_or_copy = common dso_local global i32 0, align 4
@copyright_number_1 = common dso_local global i32 0, align 4
@copyright_number_2 = common dso_local global i32 0, align 4
@copyright_number_3 = common dso_local global i32 0, align 4
@drop_flag = common dso_local global i32 0, align 4
@hour = common dso_local global i32 0, align 4
@minute = common dso_local global i32 0, align 4
@sec = common dso_local global i32 0, align 4
@frame = common dso_local global i32 0, align 4
@closed_gop = common dso_local global i32 0, align 4
@broken_link = common dso_local global i32 0, align 4
@Decode_Layer = common dso_local global i32 0, align 4
@global_MBA = common dso_local global i32 0, align 4
@global_pic = common dso_local global i32 0, align 4
@True_Framenum = common dso_local global i32 0, align 4
@.str.281 = private unnamed_addr constant [36 x i8] c"Base layer input file %s not found\0A\00", align 1
@.str.1.282 = private unnamed_addr constant [52 x i8] c"Decoder currently does not parse transport streams\0A\00", align 1
@.str.2.285 = private unnamed_addr constant [33 x i8] c"Unable to recognize stream type\0A\00", align 1
@.str.3.286 = private unnamed_addr constant [46 x i8] c"enhancment layer bitstream file %s not found\0A\00", align 1
@.str.21.287 = private unnamed_addr constant [30 x i8] c"unsupported scalability mode\0A\00", align 1
@Initialize_Sequence.Table_6_20 = internal global [3 x i32] [i32 6, i32 8, i32 12], align 4
@.str.22.288 = private unnamed_addr constant [42 x i8] c"backward_reference_frame[] malloc failed\0A\00", align 1
@.str.23.289 = private unnamed_addr constant [41 x i8] c"forward_reference_frame[] malloc failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"auxframe[] malloc failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"substitute_frame[] malloc failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"llframe0 malloc failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"llframe1 malloc failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"lltmp malloc failed\0A\00", align 1
@.str.20.290 = private unnamed_addr constant [21 x i8] c"streams out of sync\0A\00", align 1
@.str.5.291 = private unnamed_addr constant [22 x i8] c"Clip[] malloc failed\0A\00", align 1
@.str.6.292 = private unnamed_addr constant [9 x i8] c"\0A%s, %s\0A\00", align 1
@.str.7.293 = private unnamed_addr constant [1195 x i8] c"Usage:  mpeg2decode {options}\0AOptions: -b  file  main bitstream (base or spatial enhancement layer)\0A         -cn file  conformance report (n: level)\0A         -e  file  enhancement layer bitstream (SNR or Data Partitioning)\0A         -f        store/display interlaced video in frame format\0A         -g        concatenated file format for substitution method (-x)\0A         -in file  information & statistics report  (n: level)\0A         -l  file  file name pattern for lower layer sequence\0A                   (for spatial scalability)\0A         -on file  output format (0:YUV 1:SIF 2:TGA 3:PPM 4:X11 5:X11HiQ)\0A         -q        disable warnings to stderr\0A         -r        use double precision reference IDCT\0A         -t        enable low level tracing to stdout\0A         -u  file  print user_data to stdio or file\0A         -vn       verbose output (n: level)\0A         -x  file  filename pattern of picture substitution sequence\0A\0AFile patterns:  for sequential filenames, \22printf\22 style, e.g. rec%%d\0A                 or rec%%d%%c for fieldwise storage\0ALevels:        0:none 1:sequence 2:picture 3:slice 4:macroblock 5:block\0A\0AExample:       mpeg2decode -b bitstream.mpg -f -r -o0 rec%%d\0A         \0A\00", align 1
@.str.8.294 = private unnamed_addr constant [56 x i8] c"ERROR: -b must be followed the main bitstream filename\0A\00", align 1
@.str.9.295 = private unnamed_addr constant [50 x i8] c"This program not compiled for Verify_Flag option\0A\00", align 1
@.str.10.296 = private unnamed_addr constant [40 x i8] c"ERROR: -e must be followed by filename\0A\00", align 1
@.str.11.297 = private unnamed_addr constant [50 x i8] c"WARNING: This program not compiled for -i option\0A\00", align 1
@.str.12.298 = private unnamed_addr constant [40 x i8] c"ERROR: -l must be followed by filename\0A\00", align 1
@.str.13.299 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14.300 = private unnamed_addr constant [40 x i8] c"ERROR: -o must be followed by filename\0A\00", align 1
@.str.15.301 = private unnamed_addr constant [50 x i8] c"WARNING: This program not compiled for -t option\0A\00", align 1
@.str.16.302 = private unnamed_addr constant [41 x i8] c"This program not compiled for -v option\0A\00", align 1
@.str.17.303 = private unnamed_addr constant [40 x i8] c"ERROR: -x must be followed by filename\0A\00", align 1
@.str.18.304 = private unnamed_addr constant [47 x i8] c"undefined option -%c ignored. Exiting program\0A\00", align 1
@.str.19.305 = private unnamed_addr constant [56 x i8] c"There must be a main bitstream specified (-b filename)\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4.306 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.309 = private unnamed_addr constant [21 x i8] c"invalid motion_type\0A\00", align 1
@__const.Read_Lower_Layer_Component_Fieldwise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@.str.312 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__const.Read_Lower_Layer_Component_Framewise.ext = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c".Y\00", [3 x i8] c".U\00", [3 x i8] c".V\00"], align 1
@store_ppm_tga.u444 = internal global i8* null, align 8
@store_ppm_tga.v444 = internal global i8* null, align 8
@store_ppm_tga.u422 = internal global i8* null, align 8
@.str.6.315 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@store_ppm_tga.v422 = internal global i8* null, align 8
@.str.8.316 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.9.317 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.3.318 = private unnamed_addr constant [11 x i8] c"saving %s\0A\00", align 1
@outfile = internal global i32 0, align 4
@.str.4.319 = private unnamed_addr constant [20 x i8] c"Couldn't create %s\0A\00", align 1
@obfr = internal global [4096 x i8] zeroinitializer, align 16
@optr = internal global i8* null, align 8
@store_ppm_tga.tga24 = internal global [14 x i8] c"\00\00\02\00\00\00\00\00\00\00\00\00\18 ", align 1
@.str.10.320 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@.str.5.321 = private unnamed_addr constant [35 x i8] c"4:4:4 not supported for SIF format\00", align 1
@store_sif.u422 = internal global i8* null, align 8
@store_sif.v422 = internal global i8* null, align 8
@.str.7.322 = private unnamed_addr constant [5 x i8] c".SIF\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.1.324 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.2.325 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@Substitute_Frame_Buffer.bgate = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_picture_coding_type = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_bitstream_framenum = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_bitstream_framenum = internal global i32 0, align 4
@.str.328 = private unnamed_addr constant [40 x i8] c"ERROR: framenum (%d) is less than zero\0A\00", align 1
@.str.1.329 = private unnamed_addr constant [32 x i8] c"was unable to substitute frame\0A\00", align 1
@.str.5.330 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.6.331 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.7.332 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.8.333 = private unnamed_addr constant [47 x i8] c"ERROR: unable to open reference filename (%s)\0A\00", align 1
@.str.9.334 = private unnamed_addr constant [49 x i8] c"was able to read only %d bytes of %d of file %s\0A\00", align 1
@.str.2.335 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.336 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@.str.4.337 = private unnamed_addr constant [42 x i8] c"ERROR: chroma_format (%d) not recognized\0A\00", align 1
@.str.340 = private unnamed_addr constant [19 x i8] c"MPEG-2 PES packet\0A\00", align 1
@.str.1.341 = private unnamed_addr constant [24 x i8] c"Error in packet header\0A\00", align 1
@.str.2.342 = private unnamed_addr constant [43 x i8] c"Unexpected startcode %08x in system layer\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Buffer() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 6
  store i32 0, i32* %2, align 8
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 1
  %5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %6 = getelementptr inbounds i8, i8* %5, i64 2048
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 4
  store i32 0, i32* %15, align 8
  call void @Flush_Buffer(i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Flush_Buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, %9
  store i32 %13, i32* %11, align 8
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 24
  br i1 %15, label %16, label %119

16:                                               ; preds = %1
  %17 = load i32, i32* @System_Stream_Flag, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 5
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 -4
  %27 = icmp uge i8* %22, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %49, %28
  %30 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %31 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %34 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = icmp uge i8* %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @Next_Packet()
  br label %38

38:                                               ; preds = %37, %29
  %39 = call i32 @Get_Byte()
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 24, %40
  %42 = shl i32 %39, %41
  %43 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %44 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 8
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %3, align 4
  %51 = icmp sle i32 %50, 24
  br i1 %51, label %29, label %52

52:                                               ; preds = %49
  br label %115

53:                                               ; preds = %19, %16
  %54 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %55 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %58 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %58, i64 0, i64 0
  %60 = getelementptr inbounds i8, i8* %59, i64 2044
  %61 = icmp ult i8* %56, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %79, %62
  %64 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %65 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 24, %70
  %72 = shl i32 %69, %71
  %73 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %74 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 8
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %3, align 4
  %81 = icmp sle i32 %80, 24
  br i1 %81, label %63, label %82

82:                                               ; preds = %79
  br label %114

83:                                               ; preds = %53
  br label %84

84:                                               ; preds = %110, %83
  %85 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %86 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %89 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds [2048 x i8], [2048 x i8]* %89, i64 0, i64 0
  %91 = getelementptr inbounds i8, i8* %90, i64 2048
  %92 = icmp uge i8* %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  call void @Fill_Buffer()
  br label %94

94:                                               ; preds = %93, %84
  %95 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %96 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  %99 = load i8, i8* %97, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %3, align 4
  %102 = sub nsw i32 24, %101
  %103 = shl i32 %100, %102
  %104 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %105 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 8
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %3, align 4
  %112 = icmp sle i32 %111, 24
  br i1 %112, label %84, label %113

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113, %82
  br label %115

115:                                              ; preds = %114, %52
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %118 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Byte() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 2
  %4 = load i8*, i8** %3, align 8
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %8 = getelementptr inbounds i8, i8* %7, i64 2048
  %9 = icmp uge i8* %4, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %17 = call i64 @read(i32 %13, i8* %16, i64 2048)
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %19 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -2048
  store i8* %21, i8** %19, align 8
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 5
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -2048
  store i8* %25, i8** %23, align 8
  br label %1

26:                                               ; preds = %1
  %27 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %28 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fill_Buffer() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %8 = call i64 @read(i32 %4, i8* %7, i64 2048)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %14 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @System_Stream_Flag, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %19 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -2048
  store i8* %21, i8** %19, align 8
  br label %22

22:                                               ; preds = %17, %0
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 2048
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %1, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %36 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %35, i32 0, i32 1
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %36, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  br label %30

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %45, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 2048
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %47 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %46, i32 0, i32 1
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %47, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %53 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %52, i32 0, i32 1
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %53, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %59 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %58, i32 0, i32 1
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %59, i64 0, i64 %62
  store i8 1, i8* %63, align 1
  %64 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %65 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %64, i32 0, i32 1
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %65, i64 0, i64 %68
  store i8 -73, i8* %69, align 1
  br label %42

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %22
  ret void
}

declare dso_local i64 @read(i32, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Word() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Byte()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 8
  %5 = call i32 @Get_Byte()
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Show_Bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 32, %6
  %8 = lshr i32 %5, %7
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits1() #0 {
  %1 = call i32 @Get_Bits(i32 1)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @Show_Bits(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  call void @Flush_Buffer(i32 %6)
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG1_Intra_Block(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.DCTtab*, align 8
  %11 = alloca i16*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 24
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %13, i64 0, i64 %15
  %17 = getelementptr inbounds [64 x i16], [64 x i16]* %16, i64 0, i64 0
  store i16* %17, i16** %11, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = call i32 @Get_Luma_DC_dct_diff()
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = shl i32 %25, 3
  %27 = trunc i32 %26 to i16
  %28 = load i16*, i16** %11, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 0
  store i16 %27, i16* %29, align 2
  br label %54

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = call i32 @Get_Chroma_DC_dct_diff()
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = shl i32 %38, 3
  %40 = trunc i32 %39 to i16
  %41 = load i16*, i16** %11, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 0
  store i16 %40, i16* %42, align 2
  br label %53

43:                                               ; preds = %30
  %44 = call i32 @Get_Chroma_DC_dct_diff()
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = shl i32 %48, 3
  %50 = trunc i32 %49 to i16
  %51 = load i16*, i16** %11, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 0
  store i16 %50, i16* %52, align 2
  br label %53

53:                                               ; preds = %43, %33
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* @Fault_Flag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %277

58:                                               ; preds = %54
  %59 = load i32, i32* @picture_coding_type, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %277

62:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %274, %62
  %64 = call i32 @Show_Bits(i32 16)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp uge i32 %65, 16384
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = lshr i32 %68, 12
  %70 = sub i32 %69, 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([12 x %struct.DCTtab]* @DCTtabnext to [0 x %struct.DCTtab]*), i64 0, i64 %71
  store %struct.DCTtab* %72, %struct.DCTtab** %10, align 8
  br label %148

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = icmp uge i32 %74, 1024
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 8
  %79 = sub i32 %78, 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([60 x %struct.DCTtab]* @DCTtab0 to [0 x %struct.DCTtab]*), i64 0, i64 %80
  store %struct.DCTtab* %81, %struct.DCTtab** %10, align 8
  br label %147

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = icmp uge i32 %83, 512
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = lshr i32 %86, 6
  %88 = sub i32 %87, 8
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([8 x %struct.DCTtab]* @DCTtab1 to [0 x %struct.DCTtab]*), i64 0, i64 %89
  store %struct.DCTtab* %90, %struct.DCTtab** %10, align 8
  br label %146

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp uge i32 %92, 256
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = lshr i32 %95, 4
  %97 = sub i32 %96, 16
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab2 to [0 x %struct.DCTtab]*), i64 0, i64 %98
  store %struct.DCTtab* %99, %struct.DCTtab** %10, align 8
  br label %145

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = icmp uge i32 %101, 128
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = lshr i32 %104, 3
  %106 = sub i32 %105, 16
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab3 to [0 x %struct.DCTtab]*), i64 0, i64 %107
  store %struct.DCTtab* %108, %struct.DCTtab** %10, align 8
  br label %144

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp uge i32 %110, 64
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = lshr i32 %113, 2
  %115 = sub i32 %114, 16
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab4 to [0 x %struct.DCTtab]*), i64 0, i64 %116
  store %struct.DCTtab* %117, %struct.DCTtab** %10, align 8
  br label %143

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = icmp uge i32 %119, 32
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = lshr i32 %122, 1
  %124 = sub i32 %123, 16
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab5 to [0 x %struct.DCTtab]*), i64 0, i64 %125
  store %struct.DCTtab* %126, %struct.DCTtab** %10, align 8
  br label %142

127:                                              ; preds = %118
  %128 = load i32, i32* %9, align 4
  %129 = icmp uge i32 %128, 16
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = sub i32 %131, 16
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab6 to [0 x %struct.DCTtab]*), i64 0, i64 %133
  store %struct.DCTtab* %134, %struct.DCTtab** %10, align 8
  br label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @Quiet_Flag, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  store i32 1, i32* @Fault_Flag, align 4
  br label %277

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %121
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %94
  br label %146

146:                                              ; preds = %145, %85
  br label %147

147:                                              ; preds = %146, %76
  br label %148

148:                                              ; preds = %147, %67
  %149 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %150 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %149, i32 0, i32 2
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  call void @Flush_Buffer(i32 %152)
  %153 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %154 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %153, i32 0, i32 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 64
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %277

159:                                              ; preds = %148
  %160 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %161 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 65
  br i1 %164, label %165, label %196

165:                                              ; preds = %159
  %166 = call i32 @Get_Bits(i32 6)
  %167 = load i32, i32* %6, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = call i32 @Get_Bits(i32 8)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = call i32 @Get_Bits(i32 8)
  store i32 %173, i32* %5, align 4
  br label %188

174:                                              ; preds = %165
  %175 = load i32, i32* %5, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = call i32 @Get_Bits(i32 8)
  %179 = sub i32 %178, 256
  store i32 %179, i32* %5, align 4
  br label %187

180:                                              ; preds = %174
  %181 = load i32, i32* %5, align 4
  %182 = icmp sgt i32 %181, 128
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = sub nsw i32 %184, 256
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %177
  br label %188

188:                                              ; preds = %187, %172
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %189, 0
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %8, align 4
  br i1 %190, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* %5, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %192, %188
  br label %208

196:                                              ; preds = %159
  %197 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %198 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %197, i32 0, i32 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %6, align 4
  %203 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %204 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %203, i32 0, i32 1
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  store i32 %206, i32* %5, align 4
  %207 = call i32 @Get_Bits(i32 1)
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %196, %195
  %209 = load i32, i32* %6, align 4
  %210 = icmp sge i32 %209, 64
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* @Quiet_Flag, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %211
  store i32 1, i32* @Fault_Flag, align 4
  br label %277

218:                                              ; preds = %208
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %226 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %225, i32 0, i32 22
  %227 = load i32, i32* %226, align 8
  %228 = mul nsw i32 %224, %227
  %229 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %230 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %229, i32 0, i32 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [64 x i32], [64 x i32]* %230, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %228, %234
  %236 = ashr i32 %235, 3
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %218
  %240 = load i32, i32* %5, align 4
  %241 = sub nsw i32 %240, 1
  %242 = or i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %239, %218
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %5, align 4
  %248 = icmp sgt i32 %247, 2047
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %252

250:                                              ; preds = %246
  %251 = load i32, i32* %5, align 4
  br label %252

252:                                              ; preds = %250, %249
  %253 = phi i32 [ 2047, %249 ], [ %251, %250 ]
  %254 = trunc i32 %253 to i16
  %255 = load i16*, i16** %11, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i16, i16* %255, i64 %257
  store i16 %254, i16* %258, align 2
  br label %273

259:                                              ; preds = %243
  %260 = load i32, i32* %5, align 4
  %261 = icmp sgt i32 %260, 2048
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %266

263:                                              ; preds = %259
  %264 = load i32, i32* %5, align 4
  %265 = sub nsw i32 0, %264
  br label %266

266:                                              ; preds = %263, %262
  %267 = phi i32 [ -2048, %262 ], [ %265, %263 ]
  %268 = trunc i32 %267 to i16
  %269 = load i16*, i16** %11, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i16, i16* %269, i64 %271
  store i16 %268, i16* %272, align 2
  br label %273

273:                                              ; preds = %266, %252
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %63

277:                                              ; preds = %217, %158, %140, %61, %57
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG1_Non_Intra_Block(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.DCTtab*, align 8
  %9 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 24
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %11, i64 0, i64 %13
  %15 = getelementptr inbounds [64 x i16], [64 x i16]* %14, i64 0, i64 0
  store i16* %15, i16** %9, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %239, %1
  %17 = call i32 @Show_Bits(i32 16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp uge i32 %18, 16384
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 12
  %26 = sub i32 %25, 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([12 x %struct.DCTtab]* @DCTtabfirst to [0 x %struct.DCTtab]*), i64 0, i64 %27
  store %struct.DCTtab* %28, %struct.DCTtab** %8, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = lshr i32 %30, 12
  %32 = sub i32 %31, 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([12 x %struct.DCTtab]* @DCTtabnext to [0 x %struct.DCTtab]*), i64 0, i64 %33
  store %struct.DCTtab* %34, %struct.DCTtab** %8, align 8
  br label %35

35:                                               ; preds = %29, %23
  br label %111

36:                                               ; preds = %16
  %37 = load i32, i32* %7, align 4
  %38 = icmp uge i32 %37, 1024
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = lshr i32 %40, 8
  %42 = sub i32 %41, 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([60 x %struct.DCTtab]* @DCTtab0 to [0 x %struct.DCTtab]*), i64 0, i64 %43
  store %struct.DCTtab* %44, %struct.DCTtab** %8, align 8
  br label %110

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = icmp uge i32 %46, 512
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = lshr i32 %49, 6
  %51 = sub i32 %50, 8
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([8 x %struct.DCTtab]* @DCTtab1 to [0 x %struct.DCTtab]*), i64 0, i64 %52
  store %struct.DCTtab* %53, %struct.DCTtab** %8, align 8
  br label %109

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp uge i32 %55, 256
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = lshr i32 %58, 4
  %60 = sub i32 %59, 16
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab2 to [0 x %struct.DCTtab]*), i64 0, i64 %61
  store %struct.DCTtab* %62, %struct.DCTtab** %8, align 8
  br label %108

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = icmp uge i32 %64, 128
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = lshr i32 %67, 3
  %69 = sub i32 %68, 16
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab3 to [0 x %struct.DCTtab]*), i64 0, i64 %70
  store %struct.DCTtab* %71, %struct.DCTtab** %8, align 8
  br label %107

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = icmp uge i32 %73, 64
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = lshr i32 %76, 2
  %78 = sub i32 %77, 16
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab4 to [0 x %struct.DCTtab]*), i64 0, i64 %79
  store %struct.DCTtab* %80, %struct.DCTtab** %8, align 8
  br label %106

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = icmp uge i32 %82, 32
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = lshr i32 %85, 1
  %87 = sub i32 %86, 16
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab5 to [0 x %struct.DCTtab]*), i64 0, i64 %88
  store %struct.DCTtab* %89, %struct.DCTtab** %8, align 8
  br label %105

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = icmp uge i32 %91, 16
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = sub i32 %94, 16
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab6 to [0 x %struct.DCTtab]*), i64 0, i64 %96
  store %struct.DCTtab* %97, %struct.DCTtab** %8, align 8
  br label %104

98:                                               ; preds = %90
  %99 = load i32, i32* @Quiet_Flag, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  store i32 1, i32* @Fault_Flag, align 4
  br label %242

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %66
  br label %108

108:                                              ; preds = %107, %57
  br label %109

109:                                              ; preds = %108, %48
  br label %110

110:                                              ; preds = %109, %39
  br label %111

111:                                              ; preds = %110, %35
  %112 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %113 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %112, i32 0, i32 2
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  call void @Flush_Buffer(i32 %115)
  %116 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %117 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 64
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %242

122:                                              ; preds = %111
  %123 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %124 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 65
  br i1 %127, label %128, label %159

128:                                              ; preds = %122
  %129 = call i32 @Get_Bits(i32 6)
  %130 = load i32, i32* %4, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = call i32 @Get_Bits(i32 8)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 @Get_Bits(i32 8)
  store i32 %136, i32* %3, align 4
  br label %151

137:                                              ; preds = %128
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, 128
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = call i32 @Get_Bits(i32 8)
  %142 = sub i32 %141, 256
  store i32 %142, i32* %3, align 4
  br label %150

143:                                              ; preds = %137
  %144 = load i32, i32* %3, align 4
  %145 = icmp sgt i32 %144, 128
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4
  %148 = sub nsw i32 %147, 256
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %140
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i32, i32* %3, align 4
  %153 = icmp slt i32 %152, 0
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %6, align 4
  br i1 %153, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %3, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %155, %151
  br label %171

159:                                              ; preds = %122
  %160 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %161 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %4, align 4
  %166 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %167 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %166, i32 0, i32 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  store i32 %169, i32* %3, align 4
  %170 = call i32 @Get_Bits(i32 1)
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %159, %158
  %172 = load i32, i32* %4, align 4
  %173 = icmp sge i32 %172, 64
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* @Quiet_Flag, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174
  store i32 1, i32* @Fault_Flag, align 4
  br label %242

181:                                              ; preds = %171
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %3, align 4
  %188 = shl i32 %187, 1
  %189 = add nsw i32 %188, 1
  %190 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %191 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %190, i32 0, i32 22
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %189, %192
  %194 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %195 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %194, i32 0, i32 9
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [64 x i32], [64 x i32]* %195, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %193, %199
  %201 = ashr i32 %200, 4
  store i32 %201, i32* %3, align 4
  %202 = load i32, i32* %3, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %181
  %205 = load i32, i32* %3, align 4
  %206 = sub nsw i32 %205, 1
  %207 = or i32 %206, 1
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %181
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %3, align 4
  %213 = icmp sgt i32 %212, 2047
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %217

215:                                              ; preds = %211
  %216 = load i32, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %214
  %218 = phi i32 [ 2047, %214 ], [ %216, %215 ]
  %219 = trunc i32 %218 to i16
  %220 = load i16*, i16** %9, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i16, i16* %220, i64 %222
  store i16 %219, i16* %223, align 2
  br label %238

224:                                              ; preds = %208
  %225 = load i32, i32* %3, align 4
  %226 = icmp sgt i32 %225, 2048
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %231

228:                                              ; preds = %224
  %229 = load i32, i32* %3, align 4
  %230 = sub nsw i32 0, %229
  br label %231

231:                                              ; preds = %228, %227
  %232 = phi i32 [ -2048, %227 ], [ %230, %228 ]
  %233 = trunc i32 %232 to i16
  %234 = load i16*, i16** %9, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i16, i16* %234, i64 %236
  store i16 %233, i16* %237, align 2
  br label %238

238:                                              ; preds = %231, %217
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %4, align 4
  br label %16

242:                                              ; preds = %180, %121, %103
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG2_Intra_Block(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.DCTtab*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.layer_data*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %18 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %24

22:                                               ; preds = %2
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi %struct.layer_data* [ @base, %21 ], [ %23, %22 ]
  store %struct.layer_data* %25, %struct.layer_data** %16, align 8
  %26 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %27 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i32 0, i32 24
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %27, i64 0, i64 %29
  %31 = getelementptr inbounds [64 x i16], [64 x i16]* %30, i64 0, i64 0
  store i16* %31, i16** %14, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %36 = icmp slt i32 %35, 64
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %39

38:                                               ; preds = %34
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 1
  %47 = add nsw i32 %46, 1
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i32 [ 0, %43 ], [ %47, %44 ]
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @chroma_format, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %48
  %56 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %57 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %56, i32 0, i32 8
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %57, i64 0, i64 0
  br label %63

59:                                               ; preds = %52
  %60 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %61 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %60, i32 0, i32 10
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %61, i64 0, i64 0
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32* [ %58, %55 ], [ %62, %59 ]
  store i32* %64, i32** %15, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = call i32 @Get_Luma_DC_dct_diff()
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  store i32 %72, i32* %5, align 4
  br label %89

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = call i32 @Get_Chroma_DC_dct_diff()
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  store i32 %81, i32* %5, align 4
  br label %88

82:                                               ; preds = %73
  %83 = call i32 @Get_Chroma_DC_dct_diff()
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* @Fault_Flag, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %321

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @intra_dc_precision, align 4
  %96 = sub nsw i32 3, %95
  %97 = shl i32 %94, %96
  %98 = trunc i32 %97 to i16
  %99 = load i16*, i16** %14, align 8
  %100 = getelementptr inbounds i16, i16* %99, i64 0
  store i16 %98, i16* %100, align 2
  store i32 0, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %101

101:                                              ; preds = %318, %93
  %102 = call i32 @Show_Bits(i32 16)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp uge i32 %103, 16384
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* @intra_vlc_format, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = lshr i32 %109, 12
  %111 = sub i32 %110, 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([12 x %struct.DCTtab]* @DCTtabnext to [0 x %struct.DCTtab]*), i64 0, i64 %112
  store %struct.DCTtab* %113, %struct.DCTtab** %13, align 8
  br label %209

114:                                              ; preds = %105, %101
  %115 = load i32, i32* %12, align 4
  %116 = icmp uge i32 %115, 1024
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load i32, i32* @intra_vlc_format, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = lshr i32 %121, 8
  %123 = sub i32 %122, 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([252 x %struct.DCTtab]* @DCTtab0a to [0 x %struct.DCTtab]*), i64 0, i64 %124
  store %struct.DCTtab* %125, %struct.DCTtab** %13, align 8
  br label %132

126:                                              ; preds = %117
  %127 = load i32, i32* %12, align 4
  %128 = lshr i32 %127, 8
  %129 = sub i32 %128, 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([60 x %struct.DCTtab]* @DCTtab0 to [0 x %struct.DCTtab]*), i64 0, i64 %130
  store %struct.DCTtab* %131, %struct.DCTtab** %13, align 8
  br label %132

132:                                              ; preds = %126, %120
  br label %208

133:                                              ; preds = %114
  %134 = load i32, i32* %12, align 4
  %135 = icmp uge i32 %134, 512
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32, i32* @intra_vlc_format, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = lshr i32 %140, 6
  %142 = sub i32 %141, 8
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([8 x %struct.DCTtab]* @DCTtab1a to [0 x %struct.DCTtab]*), i64 0, i64 %143
  store %struct.DCTtab* %144, %struct.DCTtab** %13, align 8
  br label %151

145:                                              ; preds = %136
  %146 = load i32, i32* %12, align 4
  %147 = lshr i32 %146, 6
  %148 = sub i32 %147, 8
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([8 x %struct.DCTtab]* @DCTtab1 to [0 x %struct.DCTtab]*), i64 0, i64 %149
  store %struct.DCTtab* %150, %struct.DCTtab** %13, align 8
  br label %151

151:                                              ; preds = %145, %139
  br label %207

152:                                              ; preds = %133
  %153 = load i32, i32* %12, align 4
  %154 = icmp uge i32 %153, 256
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = lshr i32 %156, 4
  %158 = sub i32 %157, 16
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab2 to [0 x %struct.DCTtab]*), i64 0, i64 %159
  store %struct.DCTtab* %160, %struct.DCTtab** %13, align 8
  br label %206

161:                                              ; preds = %152
  %162 = load i32, i32* %12, align 4
  %163 = icmp uge i32 %162, 128
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = lshr i32 %165, 3
  %167 = sub i32 %166, 16
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab3 to [0 x %struct.DCTtab]*), i64 0, i64 %168
  store %struct.DCTtab* %169, %struct.DCTtab** %13, align 8
  br label %205

170:                                              ; preds = %161
  %171 = load i32, i32* %12, align 4
  %172 = icmp uge i32 %171, 64
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = lshr i32 %174, 2
  %176 = sub i32 %175, 16
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab4 to [0 x %struct.DCTtab]*), i64 0, i64 %177
  store %struct.DCTtab* %178, %struct.DCTtab** %13, align 8
  br label %204

179:                                              ; preds = %170
  %180 = load i32, i32* %12, align 4
  %181 = icmp uge i32 %180, 32
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i32, i32* %12, align 4
  %184 = lshr i32 %183, 1
  %185 = sub i32 %184, 16
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab5 to [0 x %struct.DCTtab]*), i64 0, i64 %186
  store %struct.DCTtab* %187, %struct.DCTtab** %13, align 8
  br label %203

188:                                              ; preds = %179
  %189 = load i32, i32* %12, align 4
  %190 = icmp uge i32 %189, 16
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i32, i32* %12, align 4
  %193 = sub i32 %192, 16
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab6 to [0 x %struct.DCTtab]*), i64 0, i64 %194
  store %struct.DCTtab* %195, %struct.DCTtab** %13, align 8
  br label %202

196:                                              ; preds = %188
  %197 = load i32, i32* @Quiet_Flag, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %196
  store i32 1, i32* @Fault_Flag, align 4
  br label %321

202:                                              ; preds = %191
  br label %203

203:                                              ; preds = %202, %182
  br label %204

204:                                              ; preds = %203, %173
  br label %205

205:                                              ; preds = %204, %164
  br label %206

206:                                              ; preds = %205, %155
  br label %207

207:                                              ; preds = %206, %151
  br label %208

208:                                              ; preds = %207, %132
  br label %209

209:                                              ; preds = %208, %108
  %210 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %211 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %210, i32 0, i32 2
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  call void @Flush_Buffer(i32 %213)
  %214 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %215 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %214, i32 0, i32 0
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 64
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %321

220:                                              ; preds = %209
  %221 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %222 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %221, i32 0, i32 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 65
  br i1 %225, label %226, label %248

226:                                              ; preds = %220
  %227 = call i32 @Get_Bits(i32 6)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %6, align 4
  %230 = call i32 @Get_Bits(i32 12)
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* %5, align 4
  %232 = and i32 %231, 2047
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i32, i32* @Quiet_Flag, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %234
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %234
  store i32 1, i32* @Fault_Flag, align 4
  br label %321

240:                                              ; preds = %226
  %241 = load i32, i32* %5, align 4
  %242 = icmp sge i32 %241, 2048
  %243 = zext i1 %242 to i32
  store i32 %243, i32* %8, align 4
  br i1 %242, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* %5, align 4
  %246 = sub nsw i32 4096, %245
  store i32 %246, i32* %5, align 4
  br label %247

247:                                              ; preds = %244, %240
  br label %260

248:                                              ; preds = %220
  %249 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %250 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %249, i32 0, i32 0
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %6, align 4
  %255 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %256 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %255, i32 0, i32 1
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  store i32 %258, i32* %5, align 4
  %259 = call i32 @Get_Bits(i32 1)
  store i32 %259, i32* %8, align 4
  br label %260

260:                                              ; preds = %248, %247
  %261 = load i32, i32* %6, align 4
  %262 = icmp sge i32 %261, 64
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = load i32, i32* @Quiet_Flag, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %267, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %269

269:                                              ; preds = %266, %263
  store i32 1, i32* @Fault_Flag, align 4
  br label %321

270:                                              ; preds = %260
  %271 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %272 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %271, i32 0, i32 19
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 %274
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %275, i64 0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %5, align 4
  %282 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %283 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %282, i32 0, i32 22
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 %281, %284
  %286 = load i32*, i32** %15, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %285, %290
  %292 = ashr i32 %291, 4
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %270
  %296 = load i32, i32* %5, align 4
  %297 = sub nsw i32 0, %296
  br label %300

298:                                              ; preds = %270
  %299 = load i32, i32* %5, align 4
  br label %300

300:                                              ; preds = %298, %295
  %301 = phi i32 [ %297, %295 ], [ %299, %298 ]
  %302 = trunc i32 %301 to i16
  %303 = load i16*, i16** %14, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i16, i16* %303, i64 %305
  store i16 %302, i16* %306, align 2
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %317

311:                                              ; preds = %300
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %314 = sub nsw i32 %313, 63
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %317

317:                                              ; preds = %316, %311, %300
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %6, align 4
  br label %101

321:                                              ; preds = %269, %239, %219, %201, %92
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG2_Non_Intra_Block(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.DCTtab*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.layer_data*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %21

19:                                               ; preds = %1
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi %struct.layer_data* [ @base, %18 ], [ %20, %19 ]
  store %struct.layer_data* %22, %struct.layer_data** %13, align 8
  %23 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 24
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %24, i64 0, i64 %26
  %28 = getelementptr inbounds [64 x i16], [64 x i16]* %27, i64 0, i64 0
  store i16* %28, i16** %11, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %36

35:                                               ; preds = %31
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @chroma_format, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37
  %44 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %45 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %44, i32 0, i32 9
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %45, i64 0, i64 0
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %49 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %48, i32 0, i32 11
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %49, i64 0, i64 0
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32* [ %46, %43 ], [ %50, %47 ]
  store i32* %52, i32** %12, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %259, %51
  %54 = call i32 @Show_Bits(i32 16)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp uge i32 %55, 16384
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = lshr i32 %61, 12
  %63 = sub i32 %62, 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([12 x %struct.DCTtab]* @DCTtabfirst to [0 x %struct.DCTtab]*), i64 0, i64 %64
  store %struct.DCTtab* %65, %struct.DCTtab** %10, align 8
  br label %72

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = lshr i32 %67, 12
  %69 = sub i32 %68, 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([12 x %struct.DCTtab]* @DCTtabnext to [0 x %struct.DCTtab]*), i64 0, i64 %70
  store %struct.DCTtab* %71, %struct.DCTtab** %10, align 8
  br label %72

72:                                               ; preds = %66, %60
  br label %148

73:                                               ; preds = %53
  %74 = load i32, i32* %9, align 4
  %75 = icmp uge i32 %74, 1024
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 8
  %79 = sub i32 %78, 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([60 x %struct.DCTtab]* @DCTtab0 to [0 x %struct.DCTtab]*), i64 0, i64 %80
  store %struct.DCTtab* %81, %struct.DCTtab** %10, align 8
  br label %147

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = icmp uge i32 %83, 512
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = lshr i32 %86, 6
  %88 = sub i32 %87, 8
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([8 x %struct.DCTtab]* @DCTtab1 to [0 x %struct.DCTtab]*), i64 0, i64 %89
  store %struct.DCTtab* %90, %struct.DCTtab** %10, align 8
  br label %146

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp uge i32 %92, 256
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = lshr i32 %95, 4
  %97 = sub i32 %96, 16
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab2 to [0 x %struct.DCTtab]*), i64 0, i64 %98
  store %struct.DCTtab* %99, %struct.DCTtab** %10, align 8
  br label %145

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = icmp uge i32 %101, 128
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = lshr i32 %104, 3
  %106 = sub i32 %105, 16
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab3 to [0 x %struct.DCTtab]*), i64 0, i64 %107
  store %struct.DCTtab* %108, %struct.DCTtab** %10, align 8
  br label %144

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp uge i32 %110, 64
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = lshr i32 %113, 2
  %115 = sub i32 %114, 16
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab4 to [0 x %struct.DCTtab]*), i64 0, i64 %116
  store %struct.DCTtab* %117, %struct.DCTtab** %10, align 8
  br label %143

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = icmp uge i32 %119, 32
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = lshr i32 %122, 1
  %124 = sub i32 %123, 16
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab5 to [0 x %struct.DCTtab]*), i64 0, i64 %125
  store %struct.DCTtab* %126, %struct.DCTtab** %10, align 8
  br label %142

127:                                              ; preds = %118
  %128 = load i32, i32* %9, align 4
  %129 = icmp uge i32 %128, 16
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = sub i32 %131, 16
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* bitcast ([16 x %struct.DCTtab]* @DCTtab6 to [0 x %struct.DCTtab]*), i64 0, i64 %133
  store %struct.DCTtab* %134, %struct.DCTtab** %10, align 8
  br label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @Quiet_Flag, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  store i32 1, i32* @Fault_Flag, align 4
  br label %262

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %121
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %94
  br label %146

146:                                              ; preds = %145, %85
  br label %147

147:                                              ; preds = %146, %76
  br label %148

148:                                              ; preds = %147, %72
  %149 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %150 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %149, i32 0, i32 2
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  call void @Flush_Buffer(i32 %152)
  %153 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %154 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %153, i32 0, i32 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 64
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %262

159:                                              ; preds = %148
  %160 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %161 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 65
  br i1 %164, label %165, label %187

165:                                              ; preds = %159
  %166 = call i32 @Get_Bits(i32 6)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %4, align 4
  %169 = call i32 @Get_Bits(i32 12)
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* %3, align 4
  %171 = and i32 %170, 2047
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  %174 = load i32, i32* @Quiet_Flag, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %173
  store i32 1, i32* @Fault_Flag, align 4
  br label %262

179:                                              ; preds = %165
  %180 = load i32, i32* %3, align 4
  %181 = icmp sge i32 %180, 2048
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %6, align 4
  br i1 %181, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* %3, align 4
  %185 = sub nsw i32 4096, %184
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %183, %179
  br label %199

187:                                              ; preds = %159
  %188 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %189 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %188, i32 0, i32 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %4, align 4
  %194 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %195 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %194, i32 0, i32 1
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  store i32 %197, i32* %3, align 4
  %198 = call i32 @Get_Bits(i32 1)
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %187, %186
  %200 = load i32, i32* %4, align 4
  %201 = icmp sge i32 %200, 64
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load i32, i32* @Quiet_Flag, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %202
  store i32 1, i32* @Fault_Flag, align 4
  br label %262

209:                                              ; preds = %199
  %210 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %211 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %210, i32 0, i32 19
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 %213
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [64 x i8], [64 x i8]* %214, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %3, align 4
  %221 = shl i32 %220, 1
  %222 = add nsw i32 %221, 1
  %223 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %224 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %223, i32 0, i32 22
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %222, %225
  %227 = load i32*, i32** %12, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %226, %231
  %233 = ashr i32 %232, 5
  store i32 %233, i32* %3, align 4
  %234 = load i32, i32* %6, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %209
  %237 = load i32, i32* %3, align 4
  %238 = sub nsw i32 0, %237
  br label %241

239:                                              ; preds = %209
  %240 = load i32, i32* %3, align 4
  br label %241

241:                                              ; preds = %239, %236
  %242 = phi i32 [ %238, %236 ], [ %240, %239 ]
  %243 = trunc i32 %242 to i16
  %244 = load i16*, i16** %11, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i16, i16* %244, i64 %246
  store i16 %243, i16* %247, align 2
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %258

252:                                              ; preds = %241
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %255 = sub nsw i32 %254, 63
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %258

258:                                              ; preds = %257, %252, %241
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %53

262:                                              ; preds = %208, %178, %158, %140
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Hdr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %18, %0
  call void @next_start_code()
  %4 = call i32 @Get_Bits32()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %10 [
    i32 435, label %6
    i32 440, label %7
    i32 256, label %8
    i32 439, label %9
  ]

6:                                                ; preds = %3
  call void @sequence_header()
  br label %18

7:                                                ; preds = %3
  call void @group_of_pictures_header()
  br label %18

8:                                                ; preds = %3
  call void @picture_header()
  store i32 1, i32* %1, align 4
  br label %19

9:                                                ; preds = %3
  store i32 0, i32* %1, align 4
  br label %19

10:                                               ; preds = %3
  %11 = load i32, i32* @Quiet_Flag, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %10
  br label %18

18:                                               ; preds = %17, %7, %6
  br label %3

19:                                               ; preds = %9, %8
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @next_start_code() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 6
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 7
  call void @Flush_Buffer(i32 %4)
  br label %5

5:                                                ; preds = %9, %0
  %6 = call i32 @Show_Bits(i32 24)
  %7 = zext i32 %6 to i64
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @Flush_Buffer(i32 8)
  br label %5

10:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %2, align 4
  %6 = call i32 @Get_Bits(i32 12)
  store i32 %6, i32* @horizontal_size, align 4
  %7 = call i32 @Get_Bits(i32 12)
  store i32 %7, i32* @vertical_size, align 4
  %8 = call i32 @Get_Bits(i32 4)
  store i32 %8, i32* @aspect_ratio_information, align 4
  %9 = call i32 @Get_Bits(i32 4)
  store i32 %9, i32* @frame_rate_code, align 4
  %10 = call i32 @Get_Bits(i32 18)
  store i32 %10, i32* @bit_rate_value, align 4
  call void @marker_bit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.18, i64 0, i64 0))
  %11 = call i32 @Get_Bits(i32 10)
  store i32 %11, i32* @vbv_buffer_size, align 4
  %12 = call i32 @Get_Bits(i32 1)
  store i32 %12, i32* @constrained_parameters_flag, align 4
  %13 = call i32 @Get_Bits(i32 1)
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 8
  %16 = icmp ne i32 %13, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 64
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = call i32 @Get_Bits(i32 8)
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 %29
  store i32 %22, i32* %30, align 4
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %18

34:                                               ; preds = %18
  br label %54

35:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %1, align 4
  %38 = icmp slt i32 %37, 64
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* @default_intra_quantizer_matrix, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %46 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %45, i32 0, i32 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %46, i64 0, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %36

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %34
  %55 = call i32 @Get_Bits(i32 1)
  %56 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %57 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 4
  %58 = icmp ne i32 %55, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i32, i32* %1, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = call i32 @Get_Bits(i32 8)
  %65 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %66 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %65, i32 0, i32 9
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %66, i64 0, i64 %71
  store i32 %64, i32* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %60

76:                                               ; preds = %60
  br label %91

77:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %87, %77
  %79 = load i32, i32* %1, align 4
  %80 = icmp slt i32 %79, 64
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %83 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %82, i32 0, i32 9
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %83, i64 0, i64 %85
  store i32 16, i32* %86, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %78

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %76
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %118, %91
  %93 = load i32, i32* %1, align 4
  %94 = icmp slt i32 %93, 64
  br i1 %94, label %95, label %121

95:                                               ; preds = %92
  %96 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %97 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %96, i32 0, i32 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %97, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %103 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %102, i32 0, i32 10
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [64 x i32], [64 x i32]* %103, i64 0, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %108 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %107, i32 0, i32 9
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %108, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %114 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %113, i32 0, i32 11
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %114, i64 0, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %95
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %92

121:                                              ; preds = %92
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @group_of_pictures_header() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = icmp eq %struct.layer_data* %2, @base
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @True_Framenum_max, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @Temporal_Reference_Base, align 4
  store i32 1, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %9 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = call i32 @Get_Bits(i32 1)
  store i32 %11, i32* @drop_flag, align 4
  %12 = call i32 @Get_Bits(i32 5)
  store i32 %12, i32* @hour, align 4
  %13 = call i32 @Get_Bits(i32 6)
  store i32 %13, i32* @minute, align 4
  call void @marker_bit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  %14 = call i32 @Get_Bits(i32 6)
  store i32 %14, i32* @sec, align 4
  %15 = call i32 @Get_Bits(i32 6)
  store i32 %15, i32* @frame, align 4
  %16 = call i32 @Get_Bits(i32 1)
  store i32 %16, i32* @closed_gop, align 4
  %17 = call i32 @Get_Bits(i32 1)
  store i32 %17, i32* @broken_link, align 4
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 20
  store i32 0, i32* %4, align 8
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %1, align 4
  %8 = call i32 @Get_Bits(i32 10)
  store i32 %8, i32* @temporal_reference, align 4
  %9 = call i32 @Get_Bits(i32 3)
  store i32 %9, i32* @picture_coding_type, align 4
  %10 = call i32 @Get_Bits(i32 16)
  store i32 %10, i32* @vbv_delay, align 4
  %11 = load i32, i32* @picture_coding_type, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @picture_coding_type, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %0
  %17 = call i32 @Get_Bits(i32 1)
  store i32 %17, i32* @full_pel_forward_vector, align 4
  %18 = call i32 @Get_Bits(i32 3)
  store i32 %18, i32* @forward_f_code, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @picture_coding_type, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 @Get_Bits(i32 1)
  store i32 %23, i32* @full_pel_backward_vector, align 4
  %24 = call i32 @Get_Bits(i32 3)
  store i32 %24, i32* @backward_f_code, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 @extra_bit_information()
  store i32 %26, i32* %2, align 4
  call void @extension_and_user_data()
  call void @Update_Temporal_Reference_Tacking_Data()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @extra_bit_information() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = call i32 @Get_Bits1()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  call void @Flush_Buffer(i32 8)
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %2

8:                                                ; preds = %2
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal void @extension_and_user_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @next_start_code()
  br label %3

3:                                                ; preds = %32, %0
  %4 = call i32 @Show_Bits(i32 32)
  store i32 %4, i32* %1, align 4
  %5 = icmp eq i32 %4, 437
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 434
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i1 [ true, %3 ], [ %8, %6 ]
  br i1 %10, label %11, label %33

11:                                               ; preds = %9
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 437
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  call void @Flush_Buffer32()
  %15 = call i32 @Get_Bits(i32 4)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  switch i32 %16, label %26 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
    i32 5, label %20
    i32 7, label %21
    i32 8, label %22
    i32 9, label %23
    i32 10, label %24
    i32 4, label %25
  ]

17:                                               ; preds = %14
  call void @sequence_extension()
  br label %30

18:                                               ; preds = %14
  call void @sequence_display_extension()
  br label %30

19:                                               ; preds = %14
  call void @quant_matrix_extension()
  br label %30

20:                                               ; preds = %14
  call void @sequence_scalable_extension()
  br label %30

21:                                               ; preds = %14
  call void @picture_display_extension()
  br label %30

22:                                               ; preds = %14
  call void @picture_coding_extension()
  br label %30

23:                                               ; preds = %14
  call void @picture_spatial_scalable_extension()
  br label %30

24:                                               ; preds = %14
  call void @picture_temporal_scalable_extension()
  br label %30

25:                                               ; preds = %14
  call void @copyright_extension()
  br label %30

26:                                               ; preds = %14
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.10, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17
  call void @next_start_code()
  br label %32

31:                                               ; preds = %11
  call void @Flush_Buffer32()
  call void @user_data()
  br label %32

32:                                               ; preds = %31, %30
  br label %3

33:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Update_Temporal_Reference_Tacking_Data() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = icmp eq %struct.layer_data* %1, @base
  br i1 %2, label %3, label %49

3:                                                ; preds = %0
  %4 = load i32, i32* @picture_coding_type, align 4
  %5 = icmp ne i32 %4, 3
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load i32, i32* @temporal_reference, align 4
  %8 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @Temporal_Reference_Base, align 4
  %15 = add nsw i32 %14, 1024
  store i32 %15, i32* @Temporal_Reference_Base, align 4
  store i32 0, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @temporal_reference, align 4
  %18 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @Temporal_Reference_GOP_Reset, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 1, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %24

24:                                               ; preds = %23, %20, %16
  %25 = load i32, i32* @temporal_reference, align 4
  store i32 %25, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  store i32 0, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %26

26:                                               ; preds = %24, %6, %3
  %27 = load i32, i32* @Temporal_Reference_Base, align 4
  %28 = load i32, i32* @temporal_reference, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* @True_Framenum, align 4
  %30 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* @temporal_reference, align 4
  %34 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @True_Framenum, align 4
  %38 = add nsw i32 %37, 1024
  store i32 %38, i32* @True_Framenum, align 4
  br label %39

39:                                               ; preds = %36, %32, %26
  %40 = load i32, i32* @True_Framenum, align 4
  %41 = load i32, i32* @True_Framenum_max, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @True_Framenum, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @True_Framenum_max, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* @True_Framenum_max, align 4
  br label %49

49:                                               ; preds = %47, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %7 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 16
  store i32 1, i32* %7, align 8
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %9 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 17
  store i32 0, i32* %9, align 4
  store i32 0, i32* @layer_id, align 4
  %10 = call i32 @Get_Bits(i32 8)
  store i32 %10, i32* @profile_and_level_indication, align 4
  %11 = call i32 @Get_Bits(i32 1)
  store i32 %11, i32* @progressive_sequence, align 4
  %12 = call i32 @Get_Bits(i32 2)
  store i32 %12, i32* @chroma_format, align 4
  %13 = call i32 @Get_Bits(i32 2)
  store i32 %13, i32* %1, align 4
  %14 = call i32 @Get_Bits(i32 2)
  store i32 %14, i32* %2, align 4
  %15 = call i32 @Get_Bits(i32 12)
  store i32 %15, i32* %3, align 4
  call void @marker_bit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.17, i64 0, i64 0))
  %16 = call i32 @Get_Bits(i32 8)
  store i32 %16, i32* %4, align 4
  %17 = call i32 @Get_Bits(i32 1)
  store i32 %17, i32* @low_delay, align 4
  %18 = call i32 @Get_Bits(i32 2)
  store i32 %18, i32* @frame_rate_extension_n, align 4
  %19 = call i32 @Get_Bits(i32 5)
  store i32 %19, i32* @frame_rate_extension_d, align 4
  %20 = load i32, i32* @frame_rate_code, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x double], [16 x double]* @frame_rate_Table, i64 0, i64 %21
  %23 = load double, double* %22, align 8
  %24 = load i32, i32* @frame_rate_extension_n, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @frame_rate_extension_d, align 4
  %27 = add nsw i32 %26, 1
  %28 = sdiv i32 %25, %27
  %29 = sitofp i32 %28 to double
  %30 = fmul double %23, %29
  store double %30, double* @frame_rate, align 8
  %31 = load i32, i32* @profile_and_level_indication, align 4
  %32 = ashr i32 %31, 7
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %0
  %36 = load i32, i32* @profile_and_level_indication, align 4
  %37 = and i32 %36, 15
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 133, i32* @profile, align 4
  store i32 8, i32* @level, align 4
  br label %40

40:                                               ; preds = %39, %35
  br label %46

41:                                               ; preds = %0
  %42 = load i32, i32* @profile_and_level_indication, align 4
  %43 = ashr i32 %42, 4
  store i32 %43, i32* @profile, align 4
  %44 = load i32, i32* @profile_and_level_indication, align 4
  %45 = and i32 %44, 15
  store i32 %45, i32* @level, align 4
  br label %46

46:                                               ; preds = %41, %40
  %47 = load i32, i32* %1, align 4
  %48 = shl i32 %47, 12
  %49 = load i32, i32* @horizontal_size, align 4
  %50 = and i32 %49, 4095
  %51 = or i32 %48, %50
  store i32 %51, i32* @horizontal_size, align 4
  %52 = load i32, i32* %2, align 4
  %53 = shl i32 %52, 12
  %54 = load i32, i32* @vertical_size, align 4
  %55 = and i32 %54, 4095
  %56 = or i32 %53, %55
  store i32 %56, i32* @vertical_size, align 4
  %57 = load i32, i32* %3, align 4
  %58 = shl i32 %57, 18
  %59 = load i32, i32* @bit_rate_value, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* @bit_rate_value, align 4
  %61 = load i32, i32* @bit_rate_value, align 4
  %62 = sitofp i32 %61 to double
  %63 = fmul double %62, 4.000000e+02
  store double %63, double* @bit_rate, align 8
  %64 = load i32, i32* %4, align 4
  %65 = shl i32 %64, 10
  %66 = load i32, i32* @vbv_buffer_size, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* @vbv_buffer_size, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_display_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 @Get_Bits(i32 3)
  store i32 %5, i32* @video_format, align 4
  %6 = call i32 @Get_Bits(i32 1)
  store i32 %6, i32* @color_description, align 4
  %7 = load i32, i32* @color_description, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32 @Get_Bits(i32 8)
  store i32 %10, i32* @color_primaries, align 4
  %11 = call i32 @Get_Bits(i32 8)
  store i32 %11, i32* @transfer_characteristics, align 4
  %12 = call i32 @Get_Bits(i32 8)
  store i32 %12, i32* @matrix_coefficients, align 4
  br label %13

13:                                               ; preds = %9, %0
  %14 = call i32 @Get_Bits(i32 14)
  store i32 %14, i32* @display_horizontal_size, align 4
  call void @marker_bit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.16, i64 0, i64 0))
  %15 = call i32 @Get_Bits(i32 14)
  store i32 %15, i32* @display_vertical_size, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @quant_matrix_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %2, align 4
  %6 = call i32 @Get_Bits(i32 1)
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 12
  store i32 %6, i32* %8, align 8
  %9 = icmp ne i32 %6, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 64
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = call i32 @Get_Bits(i32 8)
  %16 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %16, i32 0, i32 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %22
  store i32 %15, i32* %23, align 4
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %25 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 10
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 %30
  store i32 %15, i32* %31, align 4
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %11

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35, %0
  %37 = call i32 @Get_Bits(i32 1)
  %38 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %39 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 4
  %40 = icmp ne i32 %37, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 64
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = call i32 @Get_Bits(i32 8)
  %47 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %48 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %47, i32 0, i32 9
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 %53
  store i32 %46, i32* %54, align 4
  %55 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %56 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %55, i32 0, i32 11
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %56, i64 0, i64 %61
  store i32 %46, i32* %62, align 4
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %42

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %36
  %68 = call i32 @Get_Bits(i32 1)
  %69 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %70 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %69, i32 0, i32 14
  store i32 %68, i32* %70, align 8
  %71 = icmp ne i32 %68, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i32, i32* %1, align 4
  %75 = icmp slt i32 %74, 64
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = call i32 @Get_Bits(i32 8)
  %78 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %79 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %78, i32 0, i32 10
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %79, i64 0, i64 %84
  store i32 %77, i32* %85, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %73

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %67
  %91 = call i32 @Get_Bits(i32 1)
  %92 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %93 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %92, i32 0, i32 15
  store i32 %91, i32* %93, align 4
  %94 = icmp ne i32 %91, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %90
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %109, %95
  %97 = load i32, i32* %1, align 4
  %98 = icmp slt i32 %97, 64
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = call i32 @Get_Bits(i32 8)
  %101 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %102 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %101, i32 0, i32 11
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [64 x i32], [64 x i32]* %102, i64 0, i64 %107
  store i32 %100, i32* %108, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %96

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112, %90
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sequence_scalable_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 @Get_Bits(i32 2)
  %6 = add i32 %5, 1
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 17
  store i32 %6, i32* %8, align 4
  %9 = call i32 @Get_Bits(i32 4)
  store i32 %9, i32* @layer_id, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 17
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = call i32 @Get_Bits(i32 14)
  store i32 %15, i32* @lower_layer_prediction_horizontal_size, align 4
  call void @marker_bit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5.14, i64 0, i64 0))
  %16 = call i32 @Get_Bits(i32 14)
  store i32 %16, i32* @lower_layer_prediction_vertical_size, align 4
  %17 = call i32 @Get_Bits(i32 5)
  store i32 %17, i32* @horizontal_subsampling_factor_m, align 4
  %18 = call i32 @Get_Bits(i32 5)
  store i32 %18, i32* @horizontal_subsampling_factor_n, align 4
  %19 = call i32 @Get_Bits(i32 5)
  store i32 %19, i32* @vertical_subsampling_factor_m, align 4
  %20 = call i32 @Get_Bits(i32 5)
  store i32 %20, i32* @vertical_subsampling_factor_n, align 4
  br label %21

21:                                               ; preds = %14, %0
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6.15, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_display_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @progressive_sequence, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %0
  %10 = load i32, i32* @repeat_first_field, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @top_field_first, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 3, i32* %2, align 4
  br label %17

16:                                               ; preds = %12
  store i32 2, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  br label %19

18:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %31

20:                                               ; preds = %0
  %21 = load i32, i32* @picture_structure, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @repeat_first_field, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 3, i32* %2, align 4
  br label %29

28:                                               ; preds = %24
  store i32 2, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  br label %31

31:                                               ; preds = %30, %19
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = call i32 @Get_Bits(i32 16)
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_horizontal_offset, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  call void @marker_bit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7.12, i64 0, i64 0))
  %41 = call i32 @Get_Bits(i32 16)
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_vertical_offset, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  call void @marker_bit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8.13, i64 0, i64 0))
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %32

48:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_coding_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = call i32 @Get_Bits(i32 4)
  store i32 %5, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 0), align 16
  %6 = call i32 @Get_Bits(i32 4)
  store i32 %6, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 1), align 4
  %7 = call i32 @Get_Bits(i32 4)
  store i32 %7, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 0), align 8
  %8 = call i32 @Get_Bits(i32 4)
  store i32 %8, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 1), align 4
  %9 = call i32 @Get_Bits(i32 2)
  store i32 %9, i32* @intra_dc_precision, align 4
  %10 = call i32 @Get_Bits(i32 2)
  store i32 %10, i32* @picture_structure, align 4
  %11 = call i32 @Get_Bits(i32 1)
  store i32 %11, i32* @top_field_first, align 4
  %12 = call i32 @Get_Bits(i32 1)
  store i32 %12, i32* @frame_pred_frame_dct, align 4
  %13 = call i32 @Get_Bits(i32 1)
  store i32 %13, i32* @concealment_motion_vectors, align 4
  %14 = call i32 @Get_Bits(i32 1)
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %16 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 18
  store i32 %14, i32* %16, align 8
  %17 = call i32 @Get_Bits(i32 1)
  store i32 %17, i32* @intra_vlc_format, align 4
  %18 = call i32 @Get_Bits(i32 1)
  %19 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %20 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %19, i32 0, i32 19
  store i32 %18, i32* %20, align 4
  %21 = call i32 @Get_Bits(i32 1)
  store i32 %21, i32* @repeat_first_field, align 4
  %22 = call i32 @Get_Bits(i32 1)
  store i32 %22, i32* @chroma_420_type, align 4
  %23 = call i32 @Get_Bits(i32 1)
  store i32 %23, i32* @progressive_frame, align 4
  %24 = call i32 @Get_Bits(i32 1)
  store i32 %24, i32* @composite_display_flag, align 4
  %25 = load i32, i32* @composite_display_flag, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %0
  %28 = call i32 @Get_Bits(i32 1)
  store i32 %28, i32* @v_axis, align 4
  %29 = call i32 @Get_Bits(i32 3)
  store i32 %29, i32* @field_sequence, align 4
  %30 = call i32 @Get_Bits(i32 1)
  store i32 %30, i32* @sub_carrier, align 4
  %31 = call i32 @Get_Bits(i32 7)
  store i32 %31, i32* @burst_amplitude, align 4
  %32 = call i32 @Get_Bits(i32 8)
  store i32 %32, i32* @sub_carrier_phase, align 4
  br label %33

33:                                               ; preds = %27, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_spatial_scalable_extension() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 20
  store i32 1, i32* %6, align 8
  %7 = call i32 @Get_Bits(i32 10)
  store i32 %7, i32* @lower_layer_temporal_reference, align 4
  call void @marker_bit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9.11, i64 0, i64 0))
  %8 = call i32 @Get_Bits(i32 15)
  store i32 %8, i32* @lower_layer_horizontal_offset, align 4
  %9 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %10 = icmp sge i32 %9, 16384
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %13 = sub nsw i32 %12, 32768
  store i32 %13, i32* @lower_layer_horizontal_offset, align 4
  br label %14

14:                                               ; preds = %11, %0
  call void @marker_bit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 @Get_Bits(i32 15)
  store i32 %15, i32* @lower_layer_vertical_offset, align 4
  %16 = load i32, i32* @lower_layer_vertical_offset, align 4
  %17 = icmp sge i32 %16, 16384
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @lower_layer_vertical_offset, align 4
  %20 = sub nsw i32 %19, 32768
  store i32 %20, i32* @lower_layer_vertical_offset, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = call i32 @Get_Bits(i32 2)
  store i32 %22, i32* @spatial_temporal_weight_code_table_index, align 4
  %23 = call i32 @Get_Bits(i32 1)
  store i32 %23, i32* @lower_layer_progressive_frame, align 4
  %24 = call i32 @Get_Bits(i32 1)
  store i32 %24, i32* @lower_layer_deinterlaced_field_select, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_temporal_scalable_extension() #0 {
  call void @Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @copyright_extension() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %1, align 4
  %6 = call i32 @Get_Bits(i32 1)
  store i32 %6, i32* @copyright_flag, align 4
  %7 = call i32 @Get_Bits(i32 8)
  store i32 %7, i32* @copyright_identifier, align 4
  %8 = call i32 @Get_Bits(i32 1)
  store i32 %8, i32* @original_or_copy, align 4
  %9 = call i32 @Get_Bits(i32 7)
  store i32 %9, i32* %2, align 4
  call void @marker_bit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %10 = call i32 @Get_Bits(i32 20)
  store i32 %10, i32* @copyright_number_1, align 4
  call void @marker_bit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %11 = call i32 @Get_Bits(i32 22)
  store i32 %11, i32* @copyright_number_2, align 4
  call void @marker_bit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %12 = call i32 @Get_Bits(i32 22)
  store i32 %12, i32* @copyright_number_3, align 4
  %13 = load i32, i32* @Verbose_Flag, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = ashr i32 %16, 3
  %18 = sub nsw i32 %17, 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @Verbose_Flag, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load i32, i32* @copyright_flag, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @copyright_identifier, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @original_or_copy, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @copyright_number_1, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @copyright_number_2, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @copyright_number_3, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %22, %15
  br label %36

36:                                               ; preds = %35, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @user_data() #0 {
  call void @next_start_code()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @marker_bit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @Get_Bits(i32 1)
  store i32 %4, i32* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @slice_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 16
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* @vertical_size, align 4
  %16 = icmp sgt i32 %15, 2800
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @Get_Bits(i32 3)
  br label %20

19:                                               ; preds = %14, %0
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %1, align 4
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @Get_Bits(i32 7)
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 21
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = call i32 @Get_Bits(i32 5)
  store i32 %31, i32* %2, align 4
  %32 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %33 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %38 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %37, i32 0, i32 18
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %2, align 4
  %49 = shl i32 %48, 1
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i32 [ %46, %41 ], [ %49, %47 ]
  br label %54

52:                                               ; preds = %30
  %53 = load i32, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %57 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %56, i32 0, i32 22
  store i32 %55, i32* %57, align 8
  %58 = call i32 @Get_Bits(i32 1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = call i32 @Get_Bits(i32 1)
  %62 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %63 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %62, i32 0, i32 23
  store i32 %61, i32* %63, align 4
  %64 = call i32 @Get_Bits(i32 1)
  store i32 %64, i32* %4, align 4
  %65 = call i32 @Get_Bits(i32 6)
  store i32 %65, i32* %5, align 4
  %66 = call i32 @extra_bit_information()
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %54
  %68 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %69 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %68, i32 0, i32 23
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_Picture(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @picture_structure, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* @Second_Field, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* @Second_Field, align 4
  br label %12

12:                                               ; preds = %10, %7, %2
  call void @Update_Picture_Buffers()
  %13 = load i32, i32* @Ersatz_Flag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  call void @Substitute_Frame_Buffer(i32 %16, i32 %17)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 20), align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @Second_Field, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @Spatial_Prediction()
  br label %25

25:                                               ; preds = %24, %21, %18
  %26 = load i32, i32* %3, align 4
  call void @picture_data(i32 %26)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  call void @frame_reorder(i32 %27, i32 %28)
  %29 = load i32, i32* @picture_structure, align 4
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @Second_Field, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* @Second_Field, align 4
  br label %36

36:                                               ; preds = %31, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Update_Picture_Buffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %63, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %66

6:                                                ; preds = %3
  %7 = load i32, i32* @picture_coding_type, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 %15
  store i8* %13, i8** %16, align 8
  br label %44

17:                                               ; preds = %6
  %18 = load i32, i32* @Second_Field, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %30
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %34
  store i8* %32, i8** %35, align 8
  br label %36

36:                                               ; preds = %20, %17
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 %42
  store i8* %40, i8** %43, align 8
  br label %44

44:                                               ; preds = %36, %9
  %45 = load i32, i32* @picture_structure, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @Coded_Picture_Width, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @Chroma_Width, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = sext i32 %55 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %58, align 8
  br label %62

62:                                               ; preds = %54, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %3

66:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @picture_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @mb_width, align 4
  %6 = load i32, i32* @mb_height, align 4
  %7 = mul nsw i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @picture_structure, align 4
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %20, %13
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @slice(i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  ret void

20:                                               ; preds = %14
  br label %14
}

; Function Attrs: noinline nounwind uwtable
define internal void @frame_reorder(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = load i32, i32* @picture_structure, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @Second_Field, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @picture_coding_type, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 0), i32 %18)
  br label %25

19:                                               ; preds = %13
  %20 = load i32, i32* @progressive_frame, align 4
  store i32 %20, i32* @frame_reorder.Newref_progressive_frame, align 4
  %21 = load i32, i32* @frame_reorder.Oldref_progressive_frame, align 4
  store i32 %21, i32* @progressive_frame, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 %23)
  %24 = load i32, i32* @frame_reorder.Newref_progressive_frame, align 4
  store i32 %24, i32* @progressive_frame, align 4
  store i32 %24, i32* @frame_reorder.Oldref_progressive_frame, align 4
  br label %25

25:                                               ; preds = %19, %16
  br label %26

26:                                               ; preds = %25, %10
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @progressive_frame, align 4
  store i32 %28, i32* @frame_reorder.Oldref_progressive_frame, align 4
  br label %29

29:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @slice(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [2 x [2 x [2 x i32]]], align 16
  %13 = alloca [2 x [2 x i32]], align 16
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %22 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %12, i64 0, i64 0
  %23 = call i32 @start_of_slice(i32 %20, i32* %6, i32* %7, i32* %21, [2 x [2 x i32]]* %22)
  store i32 %23, i32* %19, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %19, align 4
  store i32 %26, i32* %3, align 4
  br label %141

27:                                               ; preds = %2
  %28 = load i32, i32* @Two_Streams, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %33, %30, %27
  store i32 0, i32* @Fault_Flag, align 4
  br label %35

35:                                               ; preds = %140, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %141

40:                                               ; preds = %35
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %50

50:                                               ; preds = %49, %46, %43
  %51 = call i32 @Show_Bits(i32 23)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @Fault_Flag, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %97, %69, %56
  store i32 0, i32* @Fault_Flag, align 4
  store i32 0, i32* %3, align 4
  br label %141

58:                                               ; preds = %53
  %59 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %65

65:                                               ; preds = %64, %61, %58
  %66 = call i32 @Get_macroblock_address_increment()
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @Fault_Flag, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %57

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @Quiet_Flag, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.24, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  store i32 -1, i32* %3, align 4
  br label %141

82:                                               ; preds = %72
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %12, i64 0, i64 0
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %88 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %90 = call i32 @decode_macroblock(i32* %8, i32* %15, i32* %16, i32* %9, i32* %10, [2 x [2 x i32]]* %86, i32* %87, [2 x i32]* %88, i32* %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %141

94:                                               ; preds = %85
  %95 = load i32, i32* %19, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %57

98:                                               ; preds = %94
  br label %103

99:                                               ; preds = %82
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %101 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %12, i64 0, i64 0
  %102 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  call void @skipped_macroblock(i32* %100, [2 x [2 x i32]]* %101, i32* %9, [2 x i32]* %102, i32* %15, i32* %8)
  br label %103

103:                                              ; preds = %99, %98
  %104 = load i32, i32* @Two_Streams, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  call void @Decode_SNR_Macroblock(i32* %17, i32* %18, i32 %110, i32 %111, i32* %10)
  br label %112

112:                                              ; preds = %109, %106, %103
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %12, i64 0, i64 0
  %117 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  call void @motion_compensation(i32 %113, i32 %114, i32 %115, [2 x [2 x i32]]* %116, [2 x i32]* %117, i32* %118, i32 %119, i32 %120)
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* @Two_Streams, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %112
  %128 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %130, %127, %112
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 -1, i32* %3, align 4
  br label %141

140:                                              ; preds = %135
  br label %35

141:                                              ; preds = %139, %93, %81, %57, %39, %25
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @start_of_slice(i32 %0, i32* %1, i32* %2, i32* %3, [2 x [2 x i32]]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [2 x [2 x i32]]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store [2 x [2 x i32]]* %4, [2 x [2 x i32]]** %11, align 8
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  store i32 0, i32* @Fault_Flag, align 4
  call void @next_start_code()
  %14 = call i32 @Show_Bits(i32 32)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ult i32 %15, 257
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %12, align 4
  %19 = icmp ugt i32 %18, 431
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %5
  %21 = load i32, i32* @Quiet_Flag, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3.28, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  store i32 -1, i32* %6, align 4
  br label %109

26:                                               ; preds = %17
  call void @Flush_Buffer32()
  %27 = call i32 @slice_header()
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  call void @next_start_code()
  %31 = call i32 @Show_Bits(i32 32)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ult i32 %32, 257
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = icmp ugt i32 %35, 431
  br i1 %36, label %37, label %43

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @Quiet_Flag, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.29, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  store i32 -1, i32* %6, align 4
  br label %109

43:                                               ; preds = %34
  call void @Flush_Buffer32()
  %44 = call i32 @slice_header()
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %48

48:                                               ; preds = %47, %43
  br label %49

49:                                               ; preds = %48, %26
  %50 = call i32 @Get_macroblock_address_increment()
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @Fault_Flag, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5.30, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %109

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 %57, 7
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 255
  %61 = add i32 %58, %60
  %62 = sub i32 %61, 1
  %63 = load i32, i32* @mb_width, align 4
  %64 = mul i32 %62, %63
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %64, %66
  %68 = sub i32 %67, 1
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 1, i32* %70, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %76, align 4
  %77 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %78 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %77, i64 1
  %79 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %78, i64 0, i64 0
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %79, i64 0, i64 1
  store i32 0, i32* %80, align 4
  %81 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %82 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %81, i64 1
  %83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %82, i64 0, i64 0
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 0
  store i32 0, i32* %84, align 4
  %85 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %86 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %85, i64 0
  %87 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %86, i64 0, i64 0
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %87, i64 0, i64 1
  store i32 0, i32* %88, align 4
  %89 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %90 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %89, i64 0
  %91 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %90, i64 0, i64 0
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 0
  store i32 0, i32* %92, align 4
  %93 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %94 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %93, i64 1
  %95 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %94, i64 0, i64 1
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %95, i64 0, i64 1
  store i32 0, i32* %96, align 4
  %97 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %98 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %97, i64 1
  %99 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %98, i64 0, i64 1
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 0
  store i32 0, i32* %100, align 4
  %101 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %102 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %101, i64 0
  %103 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %102, i64 0, i64 1
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 0, i64 1
  store i32 0, i32* %104, align 4
  %105 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %106 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %105, i64 0
  %107 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %106, i64 0, i64 1
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  store i32 0, i32* %108, align 4
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %56, %54, %42, %25
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_macroblock(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, [2 x [2 x i32]]* %5, i32* %6, [2 x i32]* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [2 x [2 x i32]]*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [2 x i32]*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store [2 x [2 x i32]]* %5, [2 x [2 x i32]]** %16, align 8
  store i32* %6, i32** %17, align 8
  store [2 x i32]* %7, [2 x i32]** %18, align 8
  store i32* %8, i32** %19, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %9
  %30 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %31 = icmp sle i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %34

33:                                               ; preds = %29
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %9
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %15, align 8
  call void @macroblock_modes(i32* %36, i32* %37, i32* %38, i32* %39, i32* %22, i32* %23, i32* %24, i32* %25, i32* %40)
  %41 = load i32, i32* @Fault_Flag, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %412

44:                                               ; preds = %35
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 16
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = call i32 @Get_Bits(i32 5)
  store i32 %50, i32* %20, align 4
  %51 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %52 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %57 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %56, i32 0, i32 18
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  br label %69

66:                                               ; preds = %55
  %67 = load i32, i32* %20, align 4
  %68 = shl i32 %67, 1
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i32 [ %65, %60 ], [ %68, %66 ]
  %71 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %72 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %71, i32 0, i32 22
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %49
  %74 = load i32, i32* %20, align 4
  %75 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %76 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %75, i32 0, i32 22
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %82 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %81, i32 0, i32 22
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 22), align 8
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %44
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %90
  %96 = load i32, i32* @concealment_motion_vectors, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %95, %85
  %99 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %100 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %99, i32 0, i32 16
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = load [2 x i32]*, [2 x i32]** %18, align 8
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 0), align 16
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 0, i64 1), align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %25, align 4
  call void @motion_vectors([2 x [2 x i32]]* %104, i32* %105, [2 x i32]* %106, i32 0, i32 %107, i32 %108, i32 %110, i32 %112, i32 %113, i32 %114)
  br label %126

115:                                              ; preds = %98
  %116 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %117 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %116, i64 0
  %118 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %117, i64 0, i64 0
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 0, i64 0
  %120 = load i32*, i32** %19, align 8
  %121 = load i32, i32* @forward_f_code, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* @forward_f_code, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* @full_pel_forward_vector, align 4
  call void @motion_vector(i32* %119, i32* %120, i32 %122, i32 %124, i32 0, i32 0, i32 %125)
  br label %126

126:                                              ; preds = %115, %103
  br label %127

127:                                              ; preds = %126, %95, %90
  %128 = load i32, i32* @Fault_Flag, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %412

131:                                              ; preds = %127
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %131
  %137 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %138 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %137, i32 0, i32 16
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %143 = load i32*, i32** %19, align 8
  %144 = load [2 x i32]*, [2 x i32]** %18, align 8
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 0), align 8
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i64 0, i64 1, i64 1), align 4
  %150 = sub nsw i32 %149, 1
  %151 = load i32, i32* %25, align 4
  call void @motion_vectors([2 x [2 x i32]]* %142, i32* %143, [2 x i32]* %144, i32 1, i32 %145, i32 %146, i32 %148, i32 %150, i32 0, i32 %151)
  br label %163

152:                                              ; preds = %136
  %153 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %154 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %153, i64 0
  %155 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %154, i64 0, i64 1
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %155, i64 0, i64 0
  %157 = load i32*, i32** %19, align 8
  %158 = load i32, i32* @backward_f_code, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load i32, i32* @backward_f_code, align 4
  %161 = sub nsw i32 %160, 1
  %162 = load i32, i32* @full_pel_backward_vector, align 4
  call void @motion_vector(i32* %156, i32* %157, i32 %159, i32 %161, i32 0, i32 0, i32 %162)
  br label %163

163:                                              ; preds = %152, %141
  br label %164

164:                                              ; preds = %163, %131
  %165 = load i32, i32* @Fault_Flag, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 0, i32* %10, align 4
  br label %412

168:                                              ; preds = %164
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @concealment_motion_vectors, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @Flush_Buffer(i32 1)
  br label %177

177:                                              ; preds = %176, %173, %168
  %178 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %182 = icmp eq i32 %181, 3
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %184

184:                                              ; preds = %183, %180, %177
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 2
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %184
  %190 = call i32 @Get_coded_block_pattern()
  store i32 %190, i32* %26, align 4
  %191 = load i32, i32* @chroma_format, align 4
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32, i32* %26, align 4
  %195 = shl i32 %194, 2
  %196 = call i32 @Get_Bits(i32 2)
  %197 = or i32 %195, %196
  store i32 %197, i32* %26, align 4
  br label %207

198:                                              ; preds = %189
  %199 = load i32, i32* @chroma_format, align 4
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32, i32* %26, align 4
  %203 = shl i32 %202, 6
  %204 = call i32 @Get_Bits(i32 6)
  %205 = or i32 %203, %204
  store i32 %205, i32* %26, align 4
  br label %206

206:                                              ; preds = %201, %198
  br label %207

207:                                              ; preds = %206, %193
  br label %220

208:                                              ; preds = %184
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 1
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i32, i32* @block_count, align 4
  %215 = shl i32 1, %214
  %216 = sub nsw i32 %215, 1
  br label %218

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217, %213
  %219 = phi i32 [ %216, %213 ], [ 0, %217 ]
  store i32 %219, i32* %26, align 4
  br label %220

220:                                              ; preds = %218, %207
  %221 = load i32, i32* @Fault_Flag, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 0, i32* %10, align 4
  br label %412

224:                                              ; preds = %220
  store i32 0, i32* %21, align 4
  br label %225

225:                                              ; preds = %276, %224
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* @block_count, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %279

229:                                              ; preds = %225
  %230 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %233

233:                                              ; preds = %232, %229
  %234 = load i32, i32* %21, align 4
  call void @Clear_Block(i32 %234)
  %235 = load i32, i32* %26, align 4
  %236 = load i32, i32* @block_count, align 4
  %237 = sub nsw i32 %236, 1
  %238 = load i32, i32* %21, align 4
  %239 = sub nsw i32 %237, %238
  %240 = shl i32 1, %239
  %241 = and i32 %235, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %233
  %244 = load i32*, i32** %11, align 8
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %243
  %249 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %250 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %249, i32 0, i32 16
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load i32, i32* %21, align 4
  %255 = load i32*, i32** %17, align 8
  call void @Decode_MPEG2_Intra_Block(i32 %254, i32* %255)
  br label %259

256:                                              ; preds = %248
  %257 = load i32, i32* %21, align 4
  %258 = load i32*, i32** %17, align 8
  call void @Decode_MPEG1_Intra_Block(i32 %257, i32* %258)
  br label %259

259:                                              ; preds = %256, %253
  br label %270

260:                                              ; preds = %243
  %261 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %262 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %261, i32 0, i32 16
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i32, i32* %21, align 4
  call void @Decode_MPEG2_Non_Intra_Block(i32 %266)
  br label %269

267:                                              ; preds = %260
  %268 = load i32, i32* %21, align 4
  call void @Decode_MPEG1_Non_Intra_Block(i32 %268)
  br label %269

269:                                              ; preds = %267, %265
  br label %270

270:                                              ; preds = %269, %259
  %271 = load i32, i32* @Fault_Flag, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  store i32 0, i32* %10, align 4
  br label %412

274:                                              ; preds = %270
  br label %275

275:                                              ; preds = %274, %233
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %21, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %21, align 4
  br label %225

279:                                              ; preds = %225
  %280 = load i32, i32* @picture_coding_type, align 4
  %281 = icmp eq i32 %280, 4
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  call void @marker_bit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6.27, i64 0, i64 0))
  br label %283

283:                                              ; preds = %282, %279
  %284 = load i32*, i32** %11, align 8
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, 1
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %283
  %289 = load i32*, i32** %17, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  store i32 0, i32* %290, align 4
  %291 = load i32*, i32** %17, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  store i32 0, i32* %292, align 4
  %293 = load i32*, i32** %17, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  store i32 0, i32* %294, align 4
  br label %295

295:                                              ; preds = %288, %283
  %296 = load i32*, i32** %11, align 8
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %336

300:                                              ; preds = %295
  %301 = load i32, i32* @concealment_motion_vectors, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %336, label %303

303:                                              ; preds = %300
  %304 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %305 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %304, i64 1
  %306 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %305, i64 0, i64 0
  %307 = getelementptr inbounds [2 x i32], [2 x i32]* %306, i64 0, i64 1
  store i32 0, i32* %307, align 4
  %308 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %309 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %308, i64 1
  %310 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %309, i64 0, i64 0
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %310, i64 0, i64 0
  store i32 0, i32* %311, align 4
  %312 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %313 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %312, i64 0
  %314 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %313, i64 0, i64 0
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %314, i64 0, i64 1
  store i32 0, i32* %315, align 4
  %316 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %317 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %316, i64 0
  %318 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %317, i64 0, i64 0
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %318, i64 0, i64 0
  store i32 0, i32* %319, align 4
  %320 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %321 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %320, i64 1
  %322 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %321, i64 0, i64 1
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %322, i64 0, i64 1
  store i32 0, i32* %323, align 4
  %324 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %325 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %324, i64 1
  %326 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %325, i64 0, i64 1
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %326, i64 0, i64 0
  store i32 0, i32* %327, align 4
  %328 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %329 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %328, i64 0
  %330 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %329, i64 0, i64 1
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* %330, i64 0, i64 1
  store i32 0, i32* %331, align 4
  %332 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %333 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %332, i64 0
  %334 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %333, i64 0, i64 1
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %334, i64 0, i64 0
  store i32 0, i32* %335, align 4
  br label %336

336:                                              ; preds = %303, %300, %295
  %337 = load i32, i32* @picture_coding_type, align 4
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %374

339:                                              ; preds = %336
  %340 = load i32*, i32** %11, align 8
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, 9
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %374, label %344

344:                                              ; preds = %339
  %345 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %346 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %345, i64 1
  %347 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %346, i64 0, i64 0
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %347, i64 0, i64 1
  store i32 0, i32* %348, align 4
  %349 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %350 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %349, i64 1
  %351 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %350, i64 0, i64 0
  %352 = getelementptr inbounds [2 x i32], [2 x i32]* %351, i64 0, i64 0
  store i32 0, i32* %352, align 4
  %353 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %354 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %353, i64 0
  %355 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %354, i64 0, i64 0
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %355, i64 0, i64 1
  store i32 0, i32* %356, align 4
  %357 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %358 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %357, i64 0
  %359 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %358, i64 0, i64 0
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %359, i64 0, i64 0
  store i32 0, i32* %360, align 4
  %361 = load i32, i32* @picture_structure, align 4
  %362 = icmp eq i32 %361, 3
  br i1 %362, label %363, label %365

363:                                              ; preds = %344
  %364 = load i32*, i32** %14, align 8
  store i32 2, i32* %364, align 4
  br label %373

365:                                              ; preds = %344
  %366 = load i32*, i32** %14, align 8
  store i32 1, i32* %366, align 4
  %367 = load i32, i32* @picture_structure, align 4
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i32
  %370 = load [2 x i32]*, [2 x i32]** %18, align 8
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %370, i64 0
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %371, i64 0, i64 0
  store i32 %369, i32* %372, align 4
  br label %373

373:                                              ; preds = %365, %363
  br label %374

374:                                              ; preds = %373, %339, %336
  %375 = load i32*, i32** %13, align 8
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 4
  br i1 %377, label %378, label %411

378:                                              ; preds = %374
  %379 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %380 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %379, i64 1
  %381 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %380, i64 0, i64 0
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %381, i64 0, i64 1
  store i32 0, i32* %382, align 4
  %383 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %384 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %383, i64 1
  %385 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %384, i64 0, i64 0
  %386 = getelementptr inbounds [2 x i32], [2 x i32]* %385, i64 0, i64 0
  store i32 0, i32* %386, align 4
  %387 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %388 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %387, i64 0
  %389 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %388, i64 0, i64 0
  %390 = getelementptr inbounds [2 x i32], [2 x i32]* %389, i64 0, i64 1
  store i32 0, i32* %390, align 4
  %391 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %392 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %391, i64 0
  %393 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %392, i64 0, i64 0
  %394 = getelementptr inbounds [2 x i32], [2 x i32]* %393, i64 0, i64 0
  store i32 0, i32* %394, align 4
  %395 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %396 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %395, i64 1
  %397 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %396, i64 0, i64 1
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %397, i64 0, i64 1
  store i32 0, i32* %398, align 4
  %399 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %400 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %399, i64 1
  %401 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %400, i64 0, i64 1
  %402 = getelementptr inbounds [2 x i32], [2 x i32]* %401, i64 0, i64 0
  store i32 0, i32* %402, align 4
  %403 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %404 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %403, i64 0
  %405 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %404, i64 0, i64 1
  %406 = getelementptr inbounds [2 x i32], [2 x i32]* %405, i64 0, i64 1
  store i32 0, i32* %406, align 4
  %407 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %16, align 8
  %408 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %407, i64 0
  %409 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %408, i64 0, i64 1
  %410 = getelementptr inbounds [2 x i32], [2 x i32]* %409, i64 0, i64 0
  store i32 0, i32* %410, align 4
  br label %411

411:                                              ; preds = %378, %374
  store i32 1, i32* %10, align 4
  br label %412

412:                                              ; preds = %411, %273, %223, %167, %130, %43
  %413 = load i32, i32* %10, align 4
  ret i32 %413
}

; Function Attrs: noinline nounwind uwtable
define internal void @skipped_macroblock(i32* %0, [2 x [2 x i32]]* %1, i32* %2, [2 x i32]* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca [2 x [2 x i32]]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32]*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store [2 x [2 x i32]]* %1, [2 x [2 x i32]]** %8, align 8
  store i32* %2, i32** %9, align 8
  store [2 x i32]* %3, [2 x i32]** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %17

17:                                               ; preds = %16, %6
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @block_count, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %13, align 4
  call void @Clear_Block(i32 %23)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  br label %18

27:                                               ; preds = %18
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @picture_coding_type, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %53

36:                                               ; preds = %27
  %37 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %8, align 8
  %38 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %37, i64 1
  %39 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %38, i64 0, i64 0
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 0, i64 1
  store i32 0, i32* %40, align 4
  %41 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %8, align 8
  %42 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %41, i64 1
  %43 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %42, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 0
  store i32 0, i32* %44, align 4
  %45 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %8, align 8
  %46 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %45, i64 0
  %47 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %46, i64 0, i64 0
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 1
  store i32 0, i32* %48, align 4
  %49 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %8, align 8
  %50 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %49, i64 0
  %51 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %50, i64 0, i64 0
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %36, %27
  %54 = load i32, i32* @picture_structure, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  store i32 2, i32* %57, align 4
  br label %69

58:                                               ; preds = %53
  %59 = load i32*, i32** %9, align 8
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @picture_structure, align 4
  %61 = icmp eq i32 %60, 2
  %62 = zext i1 %61 to i32
  %63 = load [2 x i32]*, [2 x i32]** %10, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %63, i64 0
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 1
  store i32 %62, i32* %65, align 4
  %66 = load [2 x i32]*, [2 x i32]** %10, align 8
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %66, i64 0
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %67, i64 0, i64 0
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %58, %56
  %70 = load i32, i32* @picture_coding_type, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 8, i32 0
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -2
  store i32 %77, i32* %75, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Decode_SNR_Macroblock(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %5
  %23 = call i32 @Show_Bits(i32 23)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  call void @next_start_code()
  %26 = call i32 @Show_Bits(i32 32)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp slt i32 %27, 257
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %18, align 4
  %31 = icmp sgt i32 %30, 431
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %25
  %33 = load i32, i32* @Quiet_Flag, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7.25, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  br label %174

38:                                               ; preds = %29
  call void @Flush_Buffer32()
  %39 = call i32 @slice_header()
  store i32 %39, i32* %15, align 4
  %40 = call i32 @Get_macroblock_address_increment()
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %15, align 4
  %43 = shl i32 %42, 7
  %44 = load i32, i32* %18, align 4
  %45 = and i32 %44, 255
  %46 = add nsw i32 %43, %45
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @mb_width, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = sub nsw i32 %52, 1
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 1, i32* %55, align 4
  br label %70

56:                                               ; preds = %22
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @Quiet_Flag, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.24, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  br label %174

67:                                               ; preds = %56
  %68 = call i32 @Get_macroblock_address_increment()
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %38
  br label %71

71:                                               ; preds = %70, %5
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @Quiet_Flag, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.26, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  br label %174

82:                                               ; preds = %71
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %162

86:                                               ; preds = %82
  call void @macroblock_modes(i32* %11, i32* %14, i32* %14, i32* %14, i32* %14, i32* %14, i32* %14, i32* %14, i32* %13)
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, 16
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = call i32 @Get_Bits(i32 5)
  store i32 %98, i32* %16, align 4
  %99 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %100 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %99, i32 0, i32 18
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  br label %112

109:                                              ; preds = %97
  %110 = load i32, i32* %16, align 4
  %111 = shl i32 %110, 1
  br label %112

112:                                              ; preds = %109, %103
  %113 = phi i32 [ %108, %103 ], [ %111, %109 ]
  %114 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %115 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %114, i32 0, i32 22
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %93
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = call i32 @Get_coded_block_pattern()
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* @chroma_format, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* %12, align 4
  %126 = shl i32 %125, 2
  %127 = call i32 @Get_Bits(i32 2)
  %128 = or i32 %126, %127
  store i32 %128, i32* %12, align 4
  br label %138

129:                                              ; preds = %120
  %130 = load i32, i32* @chroma_format, align 4
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = shl i32 %133, 6
  %135 = call i32 @Get_Bits(i32 6)
  %136 = or i32 %134, %135
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %132, %129
  br label %138

138:                                              ; preds = %137, %124
  br label %140

139:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %139, %138
  store i32 0, i32* %17, align 4
  br label %141

141:                                              ; preds = %158, %140
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* @block_count, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load i32, i32* %17, align 4
  call void @Clear_Block(i32 %146)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @block_count, align 4
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %149, %150
  %152 = shl i32 1, %151
  %153 = and i32 %147, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = load i32, i32* %17, align 4
  call void @Decode_MPEG2_Non_Intra_Block(i32 %156)
  br label %157

157:                                              ; preds = %155, %145
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %141

161:                                              ; preds = %141
  br label %173

162:                                              ; preds = %82
  store i32 0, i32* %17, align 4
  br label %163

163:                                              ; preds = %169, %162
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* @block_count, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, i32* %17, align 4
  call void @Clear_Block(i32 %168)
  br label %169

169:                                              ; preds = %167
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %163

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %161
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %174

174:                                              ; preds = %173, %81, %66, %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @motion_compensation(i32 %0, i32 %1, i32 %2, [2 x [2 x i32]]* %3, [2 x i32]* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x [2 x i32]]*, align 8
  %13 = alloca [2 x i32]*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store [2 x [2 x i32]]* %3, [2 x [2 x i32]]** %12, align 8
  store [2 x i32]* %4, [2 x i32]** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @mb_width, align 4
  %22 = srem i32 %20, %21
  %23 = mul nsw i32 16, %22
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @mb_width, align 4
  %26 = sdiv i32 %24, %25
  %27 = mul nsw i32 16, %26
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %12, align 8
  %37 = load [2 x i32]*, [2 x i32]** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %15, align 4
  call void @form_predictions(i32 %32, i32 %33, i32 %34, i32 %35, [2 x [2 x i32]]* %36, [2 x i32]* %37, i32* %38, i32 %39)
  br label %40

40:                                               ; preds = %31, %8
  %41 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %44

44:                                               ; preds = %43, %40
  store i32 0, i32* %19, align 4
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* @block_count, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %45
  %50 = load i32, i32* @Two_Streams, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %19, align 4
  call void @Sum_Block(i32 %56)
  br label %57

57:                                               ; preds = %55, %52, %49
  %58 = load i32, i32* @Two_Streams, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %65 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63, %60
  %69 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %70 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %69, i32 0, i32 24
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %70, i64 0, i64 %72
  %74 = getelementptr inbounds [64 x i16], [64 x i16]* %73, i64 0, i64 0
  call void @Saturate(i16* %74)
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* @Reference_IDCT_Flag, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %80 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %79, i32 0, i32 24
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %80, i64 0, i64 %82
  %84 = getelementptr inbounds [64 x i16], [64 x i16]* %83, i64 0, i64 0
  call void @Reference_IDCT(i16* %84)
  br label %92

85:                                               ; preds = %75
  %86 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %87 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %86, i32 0, i32 24
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %87, i64 0, i64 %89
  %91 = getelementptr inbounds [64 x i16], [64 x i16]* %90, i64 0, i64 0
  call void @Fast_IDCT(i16* %91)
  br label %92

92:                                               ; preds = %85, %78
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  call void @Add_Block(i32 %93, i32 %94, i32 %95, i32 %96, i32 %100)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %19, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %19, align 4
  br label %45

104:                                              ; preds = %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Sum_Block(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 24), i64 0, i64 %7
  %9 = getelementptr inbounds [64 x i16], [64 x i16]* %8, i64 0, i64 0
  store i16* %9, i16** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 24), i64 0, i64 %11
  %13 = getelementptr inbounds [64 x i16], [64 x i16]* %12, i64 0, i64 0
  store i16* %13, i16** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i16*, i16** %4, align 8
  %19 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %19, i16** %4, align 8
  %20 = load i16, i16* %18, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16*, i16** %3, align 8
  %23 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %23, i16** %3, align 8
  %24 = load i16, i16* %22, align 2
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %25, %21
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %22, align 2
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %14

31:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Saturate(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 64
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load i16*, i16** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i16, i16* %10, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 2047
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 2047, i32* %5, align 4
  br label %24

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, -2048
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -2048, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %5, align 4
  %26 = trunc i32 %25 to i16
  %27 = load i16*, i16** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  store i16 %26, i16* %30, align 2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i16*, i16** %2, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 63
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = xor i32 %45, 1
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %43, align 2
  br label %48

48:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Add_Block(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i16*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %24

20:                                               ; preds = %5
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1
  %23 = add nsw i32 %22, 1
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 0, %19 ], [ %23, %20 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %102

28:                                               ; preds = %24
  %29 = load i32, i32* @picture_structure, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %78

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), align 16
  %36 = load i32, i32* @Coded_Picture_Width, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 2
  %40 = ashr i32 %39, 1
  %41 = add nsw i32 %37, %40
  %42 = mul nsw i32 %36, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %35, i64 %43
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 1
  %50 = shl i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8* %52, i8** %15, align 8
  %53 = load i32, i32* @Coded_Picture_Width, align 4
  %54 = shl i32 %53, 1
  %55 = sub nsw i32 %54, 8
  store i32 %55, i32* %14, align 4
  br label %77

56:                                               ; preds = %31
  %57 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), align 16
  %58 = load i32, i32* @Coded_Picture_Width, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 2
  %62 = shl i32 %61, 2
  %63 = add nsw i32 %59, %62
  %64 = mul nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %57, i64 %65
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 1
  %72 = shl i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  store i8* %74, i8** %15, align 8
  %75 = load i32, i32* @Coded_Picture_Width, align 4
  %76 = sub nsw i32 %75, 8
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %56, %34
  br label %101

78:                                               ; preds = %28
  %79 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), align 16
  %80 = load i32, i32* @Coded_Picture_Width, align 4
  %81 = shl i32 %80, 1
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 2
  %85 = shl i32 %84, 2
  %86 = add nsw i32 %82, %85
  %87 = mul nsw i32 %81, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %79, i64 %88
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 1
  %95 = shl i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8* %97, i8** %15, align 8
  %98 = load i32, i32* @Coded_Picture_Width, align 4
  %99 = shl i32 %98, 1
  %100 = sub nsw i32 %99, 8
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %78, %77
  br label %197

102:                                              ; preds = %24
  %103 = load i32, i32* @chroma_format, align 4
  %104 = icmp ne i32 %103, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* @chroma_format, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* @picture_structure, align 4
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %171

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %117
  %121 = load i32, i32* @chroma_format, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @Chroma_Width, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, 2
  %132 = ashr i32 %131, 1
  %133 = add nsw i32 %129, %132
  %134 = mul nsw i32 %128, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %127, i64 %135
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8* %143, i8** %15, align 8
  %144 = load i32, i32* @Chroma_Width, align 4
  %145 = shl i32 %144, 1
  %146 = sub nsw i32 %145, 8
  store i32 %146, i32* %14, align 4
  br label %170

147:                                              ; preds = %120, %117
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @Chroma_Width, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, 2
  %156 = shl i32 %155, 2
  %157 = add nsw i32 %153, %156
  %158 = mul nsw i32 %152, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %151, i64 %159
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32, i32* %6, align 4
  %165 = and i32 %164, 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8* %167, i8** %15, align 8
  %168 = load i32, i32* @Chroma_Width, align 4
  %169 = sub nsw i32 %168, 8
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %147, %123
  br label %196

171:                                              ; preds = %114
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* @Chroma_Width, align 4
  %177 = shl i32 %176, 1
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %6, align 4
  %180 = and i32 %179, 2
  %181 = shl i32 %180, 2
  %182 = add nsw i32 %178, %181
  %183 = mul nsw i32 %177, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %175, i64 %184
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32, i32* %6, align 4
  %190 = and i32 %189, 8
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8* %192, i8** %15, align 8
  %193 = load i32, i32* @Chroma_Width, align 4
  %194 = shl i32 %193, 1
  %195 = sub nsw i32 %194, 8
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %171, %170
  br label %197

197:                                              ; preds = %196, %101
  %198 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %199 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %198, i32 0, i32 24
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %199, i64 0, i64 %201
  %203 = getelementptr inbounds [64 x i16], [64 x i16]* %202, i64 0, i64 0
  store i16* %203, i16** %16, align 8
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %242

206:                                              ; preds = %197
  store i32 0, i32* %12, align 4
  br label %207

207:                                              ; preds = %238, %206
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %208, 8
  br i1 %209, label %210, label %241

210:                                              ; preds = %207
  store i32 0, i32* %13, align 4
  br label %211

211:                                              ; preds = %230, %210
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %212, 8
  br i1 %213, label %214, label %233

214:                                              ; preds = %211
  %215 = load i8*, i8** @Clip, align 8
  %216 = load i16*, i16** %16, align 8
  %217 = getelementptr inbounds i16, i16* %216, i32 1
  store i16* %217, i16** %16, align 8
  %218 = load i16, i16* %216, align 2
  %219 = sext i16 %218 to i32
  %220 = load i8*, i8** %15, align 8
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = add nsw i32 %219, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %215, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = load i8*, i8** %15, align 8
  store i8 %226, i8* %227, align 1
  %228 = load i8*, i8** %15, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %15, align 8
  br label %230

230:                                              ; preds = %214
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %211

233:                                              ; preds = %211
  %234 = load i32, i32* %14, align 4
  %235 = load i8*, i8** %15, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %15, align 8
  br label %238

238:                                              ; preds = %233
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  br label %207

241:                                              ; preds = %207
  br label %274

242:                                              ; preds = %197
  store i32 0, i32* %12, align 4
  br label %243

243:                                              ; preds = %270, %242
  %244 = load i32, i32* %12, align 4
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %246, label %273

246:                                              ; preds = %243
  store i32 0, i32* %13, align 4
  br label %247

247:                                              ; preds = %262, %246
  %248 = load i32, i32* %13, align 4
  %249 = icmp slt i32 %248, 8
  br i1 %249, label %250, label %265

250:                                              ; preds = %247
  %251 = load i8*, i8** @Clip, align 8
  %252 = load i16*, i16** %16, align 8
  %253 = getelementptr inbounds i16, i16* %252, i32 1
  store i16* %253, i16** %16, align 8
  %254 = load i16, i16* %252, align 2
  %255 = sext i16 %254 to i32
  %256 = add nsw i32 %255, 128
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %251, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = load i8*, i8** %15, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %15, align 8
  store i8 %259, i8* %260, align 1
  br label %262

262:                                              ; preds = %250
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %13, align 4
  br label %247

265:                                              ; preds = %247
  %266 = load i32, i32* %14, align 4
  %267 = load i8*, i8** %15, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8* %269, i8** %15, align 8
  br label %270

270:                                              ; preds = %265
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %12, align 4
  br label %243

273:                                              ; preds = %243
  br label %274

274:                                              ; preds = %273, %241
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @macroblock_modes(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
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
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %23, align 4
  %29 = call i32 @Get_macroblock_type()
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* @Fault_Flag, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %9
  br label %161

33:                                               ; preds = %9
  %34 = load i32, i32* %19, align 4
  %35 = and i32 %34, 32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32, i32* @spatial_temporal_weight_code_table_index, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 4, i32* %20, align 4
  br label %52

41:                                               ; preds = %37
  %42 = call i32 @Get_Bits(i32 2)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* @spatial_temporal_weight_code_table_index, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x [4 x i8]], [3 x [4 x i8]]* @macroblock_modes.stwc_table, i64 0, i64 %45
  %47 = load i32, i32* %21, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %46, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %41, %40
  br label %59

53:                                               ; preds = %33
  %54 = load i32, i32* %19, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 8, i32 0
  store i32 %58, i32* %20, align 4
  br label %59

59:                                               ; preds = %53, %52
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* @macroblock_modes.stwclass_table, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %19, align 4
  %66 = and i32 %65, 12
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load i32, i32* @picture_structure, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* @frame_pred_frame_dct, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %77

75:                                               ; preds = %71
  %76 = call i32 @Get_Bits(i32 2)
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 2, %74 ], [ %76, %75 ]
  store i32 %78, i32* %23, align 4
  br label %81

79:                                               ; preds = %68
  %80 = call i32 @Get_Bits(i32 2)
  store i32 %80, i32* %23, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %95

82:                                               ; preds = %59
  %83 = load i32, i32* %19, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32, i32* @concealment_motion_vectors, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @picture_structure, align 4
  %91 = icmp eq i32 %90, 3
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 2, i32 1
  store i32 %93, i32* %23, align 4
  br label %94

94:                                               ; preds = %89, %86, %82
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, i32* @picture_structure, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* %23, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %22, align 4
  %103 = icmp slt i32 %102, 2
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i1 [ false, %98 ], [ %103, %101 ]
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 2, i32 1
  store i32 %107, i32* %24, align 4
  %108 = load i32, i32* %23, align 4
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  store i32 %111, i32* %25, align 4
  br label %117

112:                                              ; preds = %95
  %113 = load i32, i32* %23, align 4
  %114 = icmp eq i32 %113, 2
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 2, i32 1
  store i32 %116, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %117

117:                                              ; preds = %112, %104
  %118 = load i32, i32* %23, align 4
  %119 = icmp eq i32 %118, 3
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %26, align 4
  %121 = load i32, i32* %25, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* @picture_structure, align 4
  %125 = icmp eq i32 %124, 3
  br label %126

126:                                              ; preds = %123, %117
  %127 = phi i1 [ false, %117 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %27, align 4
  %129 = load i32, i32* @picture_structure, align 4
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load i32, i32* @frame_pred_frame_dct, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %19, align 4
  %136 = and i32 %135, 3
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 @Get_Bits(i32 1)
  br label %141

140:                                              ; preds = %134, %131, %126
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  store i32 %142, i32* %28, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32*, i32** %10, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %20, align 4
  %146 = load i32*, i32** %11, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* %22, align 4
  %148 = load i32*, i32** %12, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %23, align 4
  %150 = load i32*, i32** %13, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %24, align 4
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %25, align 4
  %154 = load i32*, i32** %15, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32*, i32** %16, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %27, align 4
  %158 = load i32*, i32** %17, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* %28, align 4
  %160 = load i32*, i32** %18, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %141, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Clear_Block(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 24
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %6, i64 0, i64 %8
  %10 = getelementptr inbounds [64 x i16], [64 x i16]* %9, i64 0, i64 0
  store i16* %10, i16** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %17, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 64
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i16*, i16** %3, align 8
  %16 = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %16, i16** %3, align 8
  store i16 0, i16* %15, align 2
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %11

20:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Output_Last_Frame_of_Sequence(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @Second_Field, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1.31, i64 0, i64 0))
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 %8, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 %9)
  br label %10

10:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_macroblock_type() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 17
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @Get_SNR_macroblock_type()
  store i32 %7, i32* %1, align 4
  br label %48

8:                                                ; preds = %0
  %9 = load i32, i32* @picture_coding_type, align 4
  switch i32 %9, label %45 [
    i32 1, label %10
    i32 2, label %21
    i32 3, label %32
    i32 4, label %43
  ]

10:                                               ; preds = %8
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 20
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @Get_I_Spatial_macroblock_type()
  br label %19

17:                                               ; preds = %10
  %18 = call i32 @Get_I_macroblock_type()
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %1, align 4
  br label %47

21:                                               ; preds = %8
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 20
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @Get_P_Spatial_macroblock_type()
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @Get_P_macroblock_type()
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %1, align 4
  br label %47

32:                                               ; preds = %8
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %34 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i32 0, i32 20
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @Get_B_Spatial_macroblock_type()
  br label %41

39:                                               ; preds = %32
  %40 = call i32 @Get_B_macroblock_type()
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %1, align 4
  br label %47

43:                                               ; preds = %8
  %44 = call i32 @Get_D_macroblock_type()
  store i32 %44, i32* %1, align 4
  br label %47

45:                                               ; preds = %8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.56, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43, %41, %30, %19
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_SNR_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 3)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @Quiet_Flag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %25

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  call void @Flush_Buffer(i32 %18)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 2
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_I_Spatial_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 4)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @Quiet_Flag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %25

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  call void @Flush_Buffer(i32 %18)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 2
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_I_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Bits1()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %15

5:                                                ; preds = %0
  %6 = call i32 @Get_Bits1()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @Quiet_Flag, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  store i32 1, i32* @Fault_Flag, align 4
  br label %14

14:                                               ; preds = %13, %5
  store i32 17, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_P_Spatial_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 7)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @Quiet_Flag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %43

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 16
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 3
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  call void @Flush_Buffer(i32 %23)
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 2
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %1, align 4
  br label %43

30:                                               ; preds = %12
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  call void @Flush_Buffer(i32 %36)
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 2
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %30, %15, %11
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_P_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 6)
  store i32 %3, i32* %2, align 4
  %4 = icmp sge i32 %3, 8
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 3
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  call void @Flush_Buffer(i32 %13)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 2
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %42

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @Quiet_Flag, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  call void @Flush_Buffer(i32 %35)
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 2
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %29, %28, %5
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_B_Spatial_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.VLCtab*, align 8
  %4 = call i32 @Show_Bits(i32 9)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 64
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 5
  %10 = sub nsw i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [14 x %struct.VLCtab], [14 x %struct.VLCtab]* @spBMBtab0, i64 0, i64 %11
  store %struct.VLCtab* %12, %struct.VLCtab** %3, align 8
  br label %38

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 2
  %19 = sub nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @spBMBtab1, i64 0, i64 %20
  store %struct.VLCtab* %21, %struct.VLCtab** %3, align 8
  br label %37

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @spBMBtab2, i64 0, i64 %28
  store %struct.VLCtab* %29, %struct.VLCtab** %3, align 8
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @Quiet_Flag, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %47

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %16
  br label %38

38:                                               ; preds = %37, %7
  %39 = load %struct.VLCtab*, %struct.VLCtab** %3, align 8
  %40 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  call void @Flush_Buffer(i32 %42)
  %43 = load %struct.VLCtab*, %struct.VLCtab** %3, align 8
  %44 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_B_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 6)
  store i32 %3, i32* %2, align 4
  %4 = icmp sge i32 %3, 8
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 2
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  call void @Flush_Buffer(i32 %13)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 2
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %42

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @Quiet_Flag, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  call void @Flush_Buffer(i32 %35)
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 2
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %29, %28, %5
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_D_macroblock_type() #0 {
  %1 = call i32 @Get_Bits1()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @Quiet_Flag, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.57, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %3
  store i32 1, i32* @Fault_Flag, align 4
  br label %9

9:                                                ; preds = %8, %0
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_motion_code() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Get_Bits1()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %106

6:                                                ; preds = %0
  %7 = call i32 @Show_Bits(i32 9)
  store i32 %7, i32* %2, align 4
  %8 = icmp sge i32 %7, 64
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 6
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  call void @Flush_Buffer(i32 %17)
  %18 = call i32 @Get_Bits1()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 2
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 0, %26
  br label %35

28:                                               ; preds = %9
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 2
  %34 = sext i8 %33 to i32
  br label %35

35:                                               ; preds = %28, %20
  %36 = phi i32 [ %27, %20 ], [ %34, %28 ]
  store i32 %36, i32* %1, align 4
  br label %106

37:                                               ; preds = %6
  %38 = load i32, i32* %2, align 4
  %39 = icmp sge i32 %38, 24
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  call void @Flush_Buffer(i32 %48)
  %49 = call i32 @Get_Bits1()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 2
  %57 = sext i8 %56 to i32
  %58 = sub nsw i32 0, %57
  br label %66

59:                                               ; preds = %40
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 2
  %65 = sext i8 %64 to i32
  br label %66

66:                                               ; preds = %59, %51
  %67 = phi i32 [ %58, %51 ], [ %65, %59 ]
  store i32 %67, i32* %1, align 4
  br label %106

68:                                               ; preds = %37
  %69 = load i32, i32* %2, align 4
  %70 = sub nsw i32 %69, 12
  store i32 %70, i32* %2, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* @Quiet_Flag, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @global_MBA, align 4
  %77 = load i32, i32* @global_pic, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.58, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %72
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %106

80:                                               ; preds = %68
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  call void @Flush_Buffer(i32 %86)
  %87 = call i32 @Get_Bits1()
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 2
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 0, %95
  br label %104

97:                                               ; preds = %80
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 2
  %103 = sext i8 %102 to i32
  br label %104

104:                                              ; preds = %97, %89
  %105 = phi i32 [ %96, %89 ], [ %103, %97 ]
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %104, %79, %66, %35, %5
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_dmvector() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Bits(i32 1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 @Get_Bits(i32 1)
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 -1, i32 1
  store i32 %8, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %4
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_coded_block_pattern() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 9)
  store i32 %3, i32* %2, align 4
  %4 = icmp sge i32 %3, 128
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 4
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  call void @Flush_Buffer(i32 %13)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 2
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %60

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %21, 8
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  call void @Flush_Buffer(i32 %31)
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 2
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %1, align 4
  br label %60

38:                                               ; preds = %20
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @Quiet_Flag, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.61, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %60

47:                                               ; preds = %38
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  call void @Flush_Buffer(i32 %53)
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 2
  %59 = sext i8 %58 to i32
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %47, %46, %23, %5
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_macroblock_address_increment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %0
  %5 = call i32 @Show_Bits(i32 11)
  store i32 %5, i32* %2, align 4
  %6 = icmp slt i32 %5, 24
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 15
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 33
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %10
  %17 = load i32, i32* @Quiet_Flag, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3.64, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  store i32 1, i32* @Fault_Flag, align 4
  store i32 1, i32* %1, align 4
  br label %68

22:                                               ; preds = %13
  br label %24

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23, %22
  call void @Flush_Buffer(i32 11)
  br label %4

25:                                               ; preds = %4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 1024
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  call void @Flush_Buffer(i32 1)
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %68

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 128
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = ashr i32 %35, 6
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  call void @Flush_Buffer(i32 %42)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 2
  %49 = sext i8 %48 to i32
  %50 = add nsw i32 %43, %49
  store i32 %50, i32* %1, align 4
  br label %68

51:                                               ; preds = %31
  %52 = load i32, i32* %2, align 4
  %53 = sub nsw i32 %52, 24
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  call void @Flush_Buffer(i32 %59)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 2
  %66 = sext i8 %65 to i32
  %67 = add nsw i32 %60, %66
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %51, %34, %28, %21
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Luma_DC_dct_diff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @Show_Bits(i32 5)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 31
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 2
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  call void @Flush_Buffer(i32 %19)
  br label %35

20:                                               ; preds = %0
  %21 = call i32 @Show_Bits(i32 9)
  %22 = sub i32 %21, 496
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 2
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  call void @Flush_Buffer(i32 %34)
  br label %35

35:                                               ; preds = %20, %7
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @Get_Bits(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Chroma_DC_dct_diff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @Show_Bits(i32 5)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 31
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 2
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  call void @Flush_Buffer(i32 %19)
  br label %35

20:                                               ; preds = %0
  %21 = call i32 @Show_Bits(i32 10)
  %22 = sub i32 %21, 992
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 2
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  call void @Flush_Buffer(i32 %34)
  br label %35

35:                                               ; preds = %20, %7
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @Get_Bits(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fast_IDCT(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i16*, i16** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 8, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %8, i64 %11
  call void @idctrow(i16* %12)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

16:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i16*, i16** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  call void @idctcol(i16* %24)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %17

28:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @idctrow(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %12 = load i16*, i16** %2, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 4
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = shl i32 %15, 11
  store i32 %16, i32* %4, align 4
  %17 = load i16*, i16** %2, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 6
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = or i32 %16, %20
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 2
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = or i32 %21, %25
  %27 = load i16*, i16** %2, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 1
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = or i32 %26, %30
  %32 = load i16*, i16** %2, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 7
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = or i32 %31, %35
  %37 = load i16*, i16** %2, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 5
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = or i32 %36, %40
  %42 = load i16*, i16** %2, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 3
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = or i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %1
  %49 = load i16*, i16** %2, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 0
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = shl i32 %52, 3
  %54 = trunc i32 %53 to i16
  %55 = load i16*, i16** %2, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 7
  store i16 %54, i16* %56, align 2
  %57 = load i16*, i16** %2, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 6
  store i16 %54, i16* %58, align 2
  %59 = load i16*, i16** %2, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 5
  store i16 %54, i16* %60, align 2
  %61 = load i16*, i16** %2, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 4
  store i16 %54, i16* %62, align 2
  %63 = load i16*, i16** %2, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 3
  store i16 %54, i16* %64, align 2
  %65 = load i16*, i16** %2, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 2
  store i16 %54, i16* %66, align 2
  %67 = load i16*, i16** %2, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 1
  store i16 %54, i16* %68, align 2
  %69 = load i16*, i16** %2, align 8
  %70 = getelementptr inbounds i16, i16* %69, i64 0
  store i16 %54, i16* %70, align 2
  br label %212

71:                                               ; preds = %1
  %72 = load i16*, i16** %2, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 0
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = shl i32 %75, 11
  %77 = add nsw i32 %76, 128
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = mul nsw i32 565, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 2276, %83
  %85 = add nsw i32 %82, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 3406, %87
  %89 = sub nsw i32 %86, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = mul nsw i32 2408, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 799, %95
  %97 = sub nsw i32 %94, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 4017, %99
  %101 = sub nsw i32 %98, %100
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %3, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %108, %109
  %111 = mul nsw i32 1108, %110
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = mul nsw i32 3784, %113
  %115 = sub nsw i32 %112, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 1568, %117
  %119 = add nsw i32 %116, %118
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %3, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %144, %145
  %147 = mul nsw i32 181, %146
  %148 = add nsw i32 %147, 128
  %149 = ashr i32 %148, 8
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %150, %151
  %153 = mul nsw i32 181, %152
  %154 = add nsw i32 %153, 128
  %155 = ashr i32 %154, 8
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %156, %157
  %159 = ashr i32 %158, 8
  %160 = trunc i32 %159 to i16
  %161 = load i16*, i16** %2, align 8
  %162 = getelementptr inbounds i16, i16* %161, i64 0
  store i16 %160, i16* %162, align 2
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %163, %164
  %166 = ashr i32 %165, 8
  %167 = trunc i32 %166 to i16
  %168 = load i16*, i16** %2, align 8
  %169 = getelementptr inbounds i16, i16* %168, i64 1
  store i16 %167, i16* %169, align 2
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %170, %171
  %173 = ashr i32 %172, 8
  %174 = trunc i32 %173 to i16
  %175 = load i16*, i16** %2, align 8
  %176 = getelementptr inbounds i16, i16* %175, i64 2
  store i16 %174, i16* %176, align 2
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %177, %178
  %180 = ashr i32 %179, 8
  %181 = trunc i32 %180 to i16
  %182 = load i16*, i16** %2, align 8
  %183 = getelementptr inbounds i16, i16* %182, i64 3
  store i16 %181, i16* %183, align 2
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %184, %185
  %187 = ashr i32 %186, 8
  %188 = trunc i32 %187 to i16
  %189 = load i16*, i16** %2, align 8
  %190 = getelementptr inbounds i16, i16* %189, i64 4
  store i16 %188, i16* %190, align 2
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* %7, align 4
  %193 = sub nsw i32 %191, %192
  %194 = ashr i32 %193, 8
  %195 = trunc i32 %194 to i16
  %196 = load i16*, i16** %2, align 8
  %197 = getelementptr inbounds i16, i16* %196, i64 5
  store i16 %195, i16* %197, align 2
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %5, align 4
  %200 = sub nsw i32 %198, %199
  %201 = ashr i32 %200, 8
  %202 = trunc i32 %201 to i16
  %203 = load i16*, i16** %2, align 8
  %204 = getelementptr inbounds i16, i16* %203, i64 6
  store i16 %202, i16* %204, align 2
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %4, align 4
  %207 = sub nsw i32 %205, %206
  %208 = ashr i32 %207, 8
  %209 = trunc i32 %208 to i16
  %210 = load i16*, i16** %2, align 8
  %211 = getelementptr inbounds i16, i16* %210, i64 7
  store i16 %209, i16* %211, align 2
  br label %212

212:                                              ; preds = %71, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @idctcol(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %12 = load i16*, i16** %2, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 32
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = shl i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load i16*, i16** %2, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 48
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = or i32 %16, %20
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 16
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = or i32 %21, %25
  %27 = load i16*, i16** %2, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 8
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = or i32 %26, %30
  %32 = load i16*, i16** %2, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 56
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = or i32 %31, %35
  %37 = load i16*, i16** %2, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 40
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = or i32 %36, %40
  %42 = load i16*, i16** %2, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 24
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = or i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %1
  %49 = load i16*, i16** @iclp, align 8
  %50 = load i16*, i16** %2, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 0
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = add nsw i32 %53, 32
  %55 = ashr i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %49, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = load i16*, i16** %2, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 56
  store i16 %58, i16* %60, align 2
  %61 = load i16*, i16** %2, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 48
  store i16 %58, i16* %62, align 2
  %63 = load i16*, i16** %2, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 40
  store i16 %58, i16* %64, align 2
  %65 = load i16*, i16** %2, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 32
  store i16 %58, i16* %66, align 2
  %67 = load i16*, i16** %2, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 24
  store i16 %58, i16* %68, align 2
  %69 = load i16*, i16** %2, align 8
  %70 = getelementptr inbounds i16, i16* %69, i64 16
  store i16 %58, i16* %70, align 2
  %71 = load i16*, i16** %2, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 8
  store i16 %58, i16* %72, align 2
  %73 = load i16*, i16** %2, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 0
  store i16 %58, i16* %74, align 2
  br label %249

75:                                               ; preds = %1
  %76 = load i16*, i16** %2, align 8
  %77 = getelementptr inbounds i16, i16* %76, i64 0
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = shl i32 %79, 8
  %81 = add nsw i32 %80, 8192
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = mul nsw i32 565, %84
  %86 = add nsw i32 %85, 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 2276, %88
  %90 = add nsw i32 %87, %89
  %91 = ashr i32 %90, 3
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 3406, %93
  %95 = sub nsw i32 %92, %94
  %96 = ashr i32 %95, 3
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = mul nsw i32 2408, %99
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 799, %103
  %105 = sub nsw i32 %102, %104
  %106 = ashr i32 %105, 3
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 4017, %108
  %110 = sub nsw i32 %107, %109
  %111 = ashr i32 %110, 3
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %3, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %118, %119
  %121 = mul nsw i32 1108, %120
  %122 = add nsw i32 %121, 4
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 3784, %124
  %126 = sub nsw i32 %123, %125
  %127 = ashr i32 %126, 3
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %6, align 4
  %130 = mul nsw i32 1568, %129
  %131 = add nsw i32 %128, %130
  %132 = ashr i32 %131, 3
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %11, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %3, align 4
  %156 = sub nsw i32 %155, %154
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = mul nsw i32 181, %159
  %161 = add nsw i32 %160, 128
  %162 = ashr i32 %161, 8
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %163, %164
  %166 = mul nsw i32 181, %165
  %167 = add nsw i32 %166, 128
  %168 = ashr i32 %167, 8
  store i32 %168, i32* %7, align 4
  %169 = load i16*, i16** @iclp, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %170, %171
  %173 = ashr i32 %172, 14
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i16, i16* %169, i64 %174
  %176 = load i16, i16* %175, align 2
  %177 = load i16*, i16** %2, align 8
  %178 = getelementptr inbounds i16, i16* %177, i64 0
  store i16 %176, i16* %178, align 2
  %179 = load i16*, i16** @iclp, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %180, %181
  %183 = ashr i32 %182, 14
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %179, i64 %184
  %186 = load i16, i16* %185, align 2
  %187 = load i16*, i16** %2, align 8
  %188 = getelementptr inbounds i16, i16* %187, i64 8
  store i16 %186, i16* %188, align 2
  %189 = load i16*, i16** @iclp, align 8
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %190, %191
  %193 = ashr i32 %192, 14
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i16, i16* %189, i64 %194
  %196 = load i16, i16* %195, align 2
  %197 = load i16*, i16** %2, align 8
  %198 = getelementptr inbounds i16, i16* %197, i64 16
  store i16 %196, i16* %198, align 2
  %199 = load i16*, i16** @iclp, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %200, %201
  %203 = ashr i32 %202, 14
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i16, i16* %199, i64 %204
  %206 = load i16, i16* %205, align 2
  %207 = load i16*, i16** %2, align 8
  %208 = getelementptr inbounds i16, i16* %207, i64 24
  store i16 %206, i16* %208, align 2
  %209 = load i16*, i16** @iclp, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %9, align 4
  %212 = sub nsw i32 %210, %211
  %213 = ashr i32 %212, 14
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i16, i16* %209, i64 %214
  %216 = load i16, i16* %215, align 2
  %217 = load i16*, i16** %2, align 8
  %218 = getelementptr inbounds i16, i16* %217, i64 32
  store i16 %216, i16* %218, align 2
  %219 = load i16*, i16** @iclp, align 8
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* %7, align 4
  %222 = sub nsw i32 %220, %221
  %223 = ashr i32 %222, 14
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i16, i16* %219, i64 %224
  %226 = load i16, i16* %225, align 2
  %227 = load i16*, i16** %2, align 8
  %228 = getelementptr inbounds i16, i16* %227, i64 40
  store i16 %226, i16* %228, align 2
  %229 = load i16*, i16** @iclp, align 8
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %5, align 4
  %232 = sub nsw i32 %230, %231
  %233 = ashr i32 %232, 14
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i16, i16* %229, i64 %234
  %236 = load i16, i16* %235, align 2
  %237 = load i16*, i16** %2, align 8
  %238 = getelementptr inbounds i16, i16* %237, i64 48
  store i16 %236, i16* %238, align 2
  %239 = load i16*, i16** @iclp, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %4, align 4
  %242 = sub nsw i32 %240, %241
  %243 = ashr i32 %242, 14
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i16, i16* %239, i64 %244
  %246 = load i16, i16* %245, align 2
  %247 = load i16*, i16** %2, align 8
  %248 = getelementptr inbounds i16, i16* %247, i64 56
  store i16 %246, i16* %248, align 2
  br label %249

249:                                              ; preds = %75, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Fast_IDCT() #0 {
  %1 = alloca i32, align 4
  store i16* getelementptr inbounds ([1024 x i16], [1024 x i16]* @iclip, i64 0, i64 512), i16** @iclp, align 8
  store i32 -512, i32* %1, align 4
  br label %2

2:                                                ; preds = %24, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 512
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, -256
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %17

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 255, %12 ], [ %14, %13 ]
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ -256, %8 ], [ %16, %15 ]
  %19 = trunc i32 %18 to i16
  %20 = load i16*, i16** @iclp, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  store i16 %19, i16* %23, align 2
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %2

27:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Reference_IDCT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %39, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call double @sqrt(double 1.250000e-01) #7
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi double [ %11, %10 ], [ 5.000000e-01, %12 ]
  store double %14, double* %3, align 8
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %35, %13
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load double, double* %3, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double 0x3FD921FB54442D18, %21
  %23 = load i32, i32* %2, align 4
  %24 = sitofp i32 %23 to double
  %25 = fadd double %24, 5.000000e-01
  %26 = fmul double %22, %25
  %27 = call double @cos(double %26) #7
  %28 = fmul double %19, %27
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %30
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x double], [8 x double]* %31, i64 0, i64 %33
  store double %28, double* %34, align 8
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %15

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %4

42:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Reference_IDCT(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca [64 x double], align 16
  store i16* %0, i16** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %59

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %22
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 %25
  %27 = load double, double* %26, align 8
  %28 = load i16*, i16** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 8, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %28, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = sitofp i32 %36 to double
  %38 = fmul double %27, %37
  %39 = load double, double* %7, align 8
  %40 = fadd double %39, %38
  store double %40, double* %7, align 8
  br label %41

41:                                               ; preds = %20
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load double, double* %7, align 8
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 8, %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [64 x double], [64 x double]* %8, i64 0, i64 %50
  store double %45, double* %51, align 8
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %13

55:                                               ; preds = %13
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %9

59:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %122, %59
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %125

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %118, %63
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %121

67:                                               ; preds = %64
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %73
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x double], [8 x double]* %74, i64 0, i64 %76
  %78 = load double, double* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 8, %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [64 x double], [64 x double]* %8, i64 0, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %78, %85
  %87 = load double, double* %7, align 8
  %88 = fadd double %87, %86
  store double %88, double* %7, align 8
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %68

92:                                               ; preds = %68
  %93 = load double, double* %7, align 8
  %94 = fadd double %93, 5.000000e-01
  %95 = call double @llvm.floor.f64(double %94)
  %96 = fptosi double %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, -256
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %108

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = icmp sgt i32 %101, 255
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 255, %103 ], [ %105, %104 ]
  br label %108

108:                                              ; preds = %106, %99
  %109 = phi i32 [ -256, %99 ], [ %107, %106 ]
  %110 = trunc i32 %109 to i16
  %111 = load i16*, i16** %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = mul nsw i32 8, %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i16, i16* %111, i64 %116
  store i16 %110, i16* %117, align 2
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %64

121:                                              ; preds = %64
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %60

125:                                              ; preds = %60
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @motion_vectors([2 x [2 x i32]]* %0, i32* %1, [2 x i32]* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca [2 x [2 x i32]]*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i32]*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store [2 x [2 x i32]]* %0, [2 x [2 x i32]]** %11, align 8
  store i32* %1, i32** %12, align 8
  store [2 x i32]* %2, [2 x i32]** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %79

23:                                               ; preds = %10
  %24 = load i32, i32* %16, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %19, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = call i32 @Get_Bits(i32 1)
  %31 = load [2 x i32]*, [2 x i32]** %13, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %34
  store i32 %30, i32* %35, align 4
  %36 = load [2 x i32]*, [2 x i32]** %13, align 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 1
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 %39
  store i32 %30, i32* %40, align 4
  br label %41

41:                                               ; preds = %29, %26, %23
  %42 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %43 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %42, i64 0
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %43, i64 0, i64 %45
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 0
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %20, align 4
  call void @motion_vector(i32* %47, i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 0)
  %53 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %54 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %53, i64 0
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %54, i64 0, i64 %56
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %57, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %61 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %60, i64 1
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %61, i64 0, i64 %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 0
  store i32 %59, i32* %65, align 4
  %66 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %67 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %66, i64 0
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %67, i64 0, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %73, i64 1
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %74, i64 0, i64 %76
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i64 0, i64 1
  store i32 %72, i32* %78, align 4
  br label %114

79:                                               ; preds = %10
  %80 = call i32 @Get_Bits(i32 1)
  %81 = load [2 x i32]*, [2 x i32]** %13, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 0
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %87 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %86, i64 0
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %87, i64 0, i64 %89
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0, i64 0
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  call void @motion_vector(i32* %91, i32* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 0)
  %97 = call i32 @Get_Bits(i32 1)
  %98 = load [2 x i32]*, [2 x i32]** %13, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 1
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %11, align 8
  %104 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %103, i64 1
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %104, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %20, align 4
  call void @motion_vector(i32* %108, i32* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 0)
  br label %114

114:                                              ; preds = %79, %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @motion_vector(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = call i32 @Get_motion_code()
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @Get_Bits(i32 %24)
  br label %27

26:                                               ; preds = %20, %7
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  store i32 %28, i32* %16, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  call void @decode_motion_vector(i32* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = call i32 @Get_dmvector()
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = call i32 @Get_motion_code()
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @Get_Bits(i32 %49)
  br label %52

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  call void @decode_motion_vector(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = call i32 @Get_dmvector()
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @decode_motion_vector(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 16, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 1
  br label %24

21:                                               ; preds = %5
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %41, %28
  br label %74

48:                                               ; preds = %24
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 0, %52
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %66, %51
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %47
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = shl i32 %78, 1
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %79, %77 ], [ %81, %80 ]
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Dual_Prime_Arithmetic([2 x i32]* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca [2 x i32]*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [2 x i32]* %0, [2 x i32]** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @picture_structure, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %129

11:                                               ; preds = %4
  %12 = load i32, i32* @top_field_first, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %15, %18
  %20 = ashr i32 %19, 1
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load [2 x i32]*, [2 x i32]** %5, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %28, %31
  %33 = ashr i32 %32, 1
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = sub nsw i32 %37, 1
  %39 = load [2 x i32]*, [2 x i32]** %5, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 0
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 3, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %43, %46
  %48 = ashr i32 %47, 1
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load [2 x i32]*, [2 x i32]** %5, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 1
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %54, i64 0, i64 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 3, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = add nsw i32 %57, %60
  %62 = ashr i32 %61, 1
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = add nsw i32 %66, 1
  %68 = load [2 x i32]*, [2 x i32]** %5, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 1
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 1
  store i32 %67, i32* %70, align 4
  br label %128

71:                                               ; preds = %11
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 3, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %73, %76
  %78 = ashr i32 %77, 1
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load [2 x i32]*, [2 x i32]** %5, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %84, i64 0, i64 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 3, %86
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = add nsw i32 %87, %90
  %92 = ashr i32 %91, 1
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = sub nsw i32 %96, 1
  %98 = load [2 x i32]*, [2 x i32]** %5, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp sgt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = add nsw i32 %101, %104
  %106 = ashr i32 %105, 1
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = load [2 x i32]*, [2 x i32]** %5, align 8
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %111, i64 1
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0, i64 0
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = add nsw i32 %114, %117
  %119 = ashr i32 %118, 1
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %119, %122
  %124 = add nsw i32 %123, 1
  %125 = load [2 x i32]*, [2 x i32]** %5, align 8
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i64 1
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 0, i64 1
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %71, %14
  br label %171

129:                                              ; preds = %4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp sgt i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = add nsw i32 %130, %133
  %135 = ashr i32 %134, 1
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = load [2 x i32]*, [2 x i32]** %5, align 8
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %141, i64 0, i64 0
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp sgt i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = add nsw i32 %143, %146
  %148 = ashr i32 %147, 1
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %148, %151
  %153 = load [2 x i32]*, [2 x i32]** %5, align 8
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %153, i64 0
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %154, i64 0, i64 1
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @picture_structure, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %129
  %159 = load [2 x i32]*, [2 x i32]** %5, align 8
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %159, i64 0
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %160, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 4
  br label %170

164:                                              ; preds = %129
  %165 = load [2 x i32]*, [2 x i32]** %5, align 8
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %165, i64 0
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %158
  br label %171

171:                                              ; preds = %170, %128
  ret void
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
  call void @Clear_Options()
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  call void @Process_Options(i32 %8, i8** %9)
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %10 = load i8*, i8** @Main_Bitstream_Filename, align 8
  %11 = call i32 (i8*, i32, ...) @open(i8* %10, i32 0)
  store i32 %11, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** @Main_Bitstream_Filename, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.281, i64 0, i64 0), i8* %15)
  call void @exit(i32 1) #8
  unreachable

17:                                               ; preds = %2
  %18 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  call void @Initialize_Buffer()
  %21 = call i32 @Show_Bits(i32 8)
  %22 = icmp eq i32 %21, 71
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1.282, i64 0, i64 0)) #7
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  call void @next_start_code()
  %26 = call i32 @Show_Bits(i32 32)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %31 [
    i32 435, label %28
    i32 442, label %29
    i32 480, label %30
  ]

28:                                               ; preds = %25
  br label %33

29:                                               ; preds = %25
  store i32 1, i32* @System_Stream_Flag, align 4
  br label %30

30:                                               ; preds = %29, %25
  store i32 1, i32* @System_Stream_Flag, align 4
  br label %33

31:                                               ; preds = %25
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.285, i64 0, i64 0)) #7
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %30, %28
  %34 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %35 = call i64 @lseek(i32 %34, i64 0, i32 0) #7
  call void @Initialize_Buffer()
  br label %36

36:                                               ; preds = %33, %17
  %37 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %41 = call i64 @lseek(i32 %40, i64 0, i32 0) #7
  br label %42

42:                                               ; preds = %39, %36
  call void @Initialize_Buffer()
  %43 = load i32, i32* @Two_Streams, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %46 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  %47 = call i32 (i8*, i32, ...) @open(i8* %46, i32 0)
  store i32 %47, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 0), align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3.286, i64 0, i64 0), i8* %50) #7
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  call void @Initialize_Buffer()
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %53

53:                                               ; preds = %52, %42
  call void @Initialize_Decoder()
  %54 = call i32 @Decode_Bitstream()
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 8
  %56 = call i32 @close(i32 %55)
  %57 = load i32, i32* @Two_Streams, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 0), align 8
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %59, %53
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @Clear_Options() #0 {
  store i32 0, i32* @Verbose_Flag, align 4
  store i32 0, i32* @Output_Type, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  store i32 0, i32* @hiQdither, align 4
  store i32 0, i32* @Output_Type, align 4
  store i32 0, i32* @Frame_Store_Flag, align 4
  store i32 0, i32* @Spatial_Flag, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Lower_Layer_Picture_Filename, align 8
  store i32 0, i32* @Reference_IDCT_Flag, align 4
  store i32 0, i32* @Trace_Flag, align 4
  store i32 0, i32* @Quiet_Flag, align 4
  store i32 0, i32* @Ersatz_Flag, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Substitute_Picture_Filename, align 8
  store i32 0, i32* @Two_Streams, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Enhancement_Layer_Bitstream_Filename, align 8
  store i32 0, i32* @Big_Picture_Flag, align 4
  store i32 0, i32* @Main_Bitstream_Flag, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8** @Main_Bitstream_Filename, align 8
  store i32 0, i32* @Verify_Flag, align 4
  store i32 0, i32* @Stats_Flag, align 4
  store i32 0, i32* @User_Data_Flag, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Process_Options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6.292, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @Version, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @Author, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1195 x i8], [1195 x i8]* @.str.7.293, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

13:                                               ; preds = %2
  store i32 -1, i32* @Output_Type, align 4
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %179, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %182

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %39

38:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i8**, i8*** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %179

49:                                               ; preds = %39
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @toupper(i32 %57) #9
  switch i32 %58, label %167 [
    i32 66, label %59
    i32 67, label %75
    i32 69, label %77
    i32 70, label %93
    i32 71, label %94
    i32 73, label %95
    i32 76, label %97
    i32 79, label %113
    i32 81, label %144
    i32 82, label %145
    i32 84, label %146
    i32 85, label %148
    i32 86, label %149
    i32 88, label %151
  ]

59:                                               ; preds = %49
  store i32 1, i32* @Main_Bitstream_Flag, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %59
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8.294, i64 0, i64 0))
  br label %74

67:                                               ; preds = %62
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** @Main_Bitstream_Filename, align 8
  br label %74

74:                                               ; preds = %67, %65
  br label %178

75:                                               ; preds = %49
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9.295, i64 0, i64 0))
  br label %178

77:                                               ; preds = %49
  store i32 1, i32* @Two_Streams, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %77
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10.296, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

85:                                               ; preds = %80
  %86 = load i8**, i8*** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** @Enhancement_Layer_Bitstream_Filename, align 8
  br label %92

92:                                               ; preds = %85
  br label %178

93:                                               ; preds = %49
  store i32 1, i32* @Frame_Store_Flag, align 4
  br label %178

94:                                               ; preds = %49
  store i32 1, i32* @Big_Picture_Flag, align 4
  br label %178

95:                                               ; preds = %49
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11.297, i64 0, i64 0))
  br label %178

97:                                               ; preds = %49
  store i32 1, i32* @Spatial_Flag, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %97
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.298, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

105:                                              ; preds = %100
  %106 = load i8**, i8*** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** @Lower_Layer_Picture_Filename, align 8
  br label %112

112:                                              ; preds = %105
  br label %178

113:                                              ; preds = %49
  %114 = load i8**, i8*** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = call i32 @atoi(i8* %119) #9
  store i32 %120, i32* @Output_Type, align 4
  %121 = load i32, i32* @Output_Type, align 4
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %126, label %123

123:                                              ; preds = %113
  %124 = load i32, i32* @Output_Type, align 4
  %125 = icmp eq i32 %124, 5
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %113
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13.299, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  br label %143

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130, %127
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14.300, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

135:                                              ; preds = %130
  %136 = load i8**, i8*** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** @Output_Picture_Filename, align 8
  br label %142

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %126
  br label %178

144:                                              ; preds = %49
  store i32 1, i32* @Quiet_Flag, align 4
  br label %178

145:                                              ; preds = %49
  store i32 1, i32* @Reference_IDCT_Flag, align 4
  br label %178

146:                                              ; preds = %49
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15.301, i64 0, i64 0))
  br label %178

148:                                              ; preds = %49
  store i32 1, i32* @User_Data_Flag, align 4
  br label %149

149:                                              ; preds = %148, %49
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16.302, i64 0, i64 0))
  br label %178

151:                                              ; preds = %49
  store i32 1, i32* @Ersatz_Flag, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154, %151
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17.303, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

159:                                              ; preds = %154
  %160 = load i8**, i8*** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** @Substitute_Picture_Filename, align 8
  br label %166

166:                                              ; preds = %159
  br label %178

167:                                              ; preds = %49
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %169 = load i8**, i8*** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18.304, i64 0, i64 0), i32 %176)
  call void @exit(i32 -1) #8
  unreachable

178:                                              ; preds = %166, %149, %146, %145, %144, %143, %112, %95, %94, %93, %92, %75, %74
  br label %179

179:                                              ; preds = %178, %39
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %14

182:                                              ; preds = %14
  %183 = load i32, i32* @Main_Bitstream_Flag, align 4
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19.305, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i32, i32* @Output_Type, align 4
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @Output_Type, align 4
  %192 = icmp eq i32 %191, 5
  br i1 %192, label %193, label %197

193:                                              ; preds = %190, %187
  %194 = load i32, i32* @Frame_Store_Flag, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 1, i32* @Display_Progressive_Flag, align 4
  br label %198

197:                                              ; preds = %193, %190
  store i32 0, i32* @Display_Progressive_Flag, align 4
  br label %198

198:                                              ; preds = %197, %196
  %199 = load i32, i32* @Output_Type, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 9, i32* @Output_Type, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13.299, i64 0, i64 0), i8** @Output_Picture_Filename, align 8
  br label %202

202:                                              ; preds = %201, %198
  ret void
}

declare dso_local i32 @open(i8*, i32, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %4)
  call void @exit(i32 1) #8
  unreachable
}

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Initialize_Decoder() #0 {
  %1 = alloca i32, align 4
  %2 = call noalias i8* @malloc(i64 1024) #7
  store i8* %2, i8** @Clip, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5.291, i64 0, i64 0))
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i8*, i8** @Clip, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 384
  store i8* %7, i8** @Clip, align 8
  store i32 -384, i32* %1, align 4
  br label %8

8:                                                ; preds = %30, %5
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 640
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 255, %18 ], [ %20, %19 ]
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ 0, %14 ], [ %22, %21 ]
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** @Clip, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 %25, i8* %29, align 1
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load i32, i32* @Reference_IDCT_Flag, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @Initialize_Reference_IDCT()
  br label %38

37:                                               ; preds = %33
  call void @Initialize_Fast_IDCT()
  br label %38

38:                                               ; preds = %37, %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Decode_Bitstream() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %11, %0
  %4 = call i32 @Headers()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 @video_sequence(i32* %2)
  store i32 %8, i32* %1, align 4
  br label %11

9:                                                ; preds = %3
  %10 = load i32, i32* %1, align 4
  ret i32 %10

11:                                               ; preds = %7
  br label %3
}

declare dso_local i32 @close(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @Headers() #0 {
  %1 = alloca i32, align 4
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  %2 = call i32 @Get_Hdr()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @Two_Streams, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  %6 = call i32 @Get_Hdr()
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* @Quiet_Flag, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20.290, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %9, %5
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @video_sequence(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  call void @Initialize_Sequence()
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  call void @Decode_Picture(i32 %8, i32 %9)
  %10 = load i32, i32* @Second_Field, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %1
  br label %18

18:                                               ; preds = %31, %17
  %19 = call i32 @Headers()
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  call void @Decode_Picture(i32 %22, i32 %23)
  %24 = load i32, i32* @Second_Field, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21
  br label %18

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  call void @Output_Last_Frame_of_Sequence(i32 %36)
  br label %37

37:                                               ; preds = %35, %32
  call void @Deinitialize_Sequence()
  %38 = load i32, i32* %3, align 4
  %39 = load i32*, i32** %2, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define internal void @Initialize_Sequence() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Two_Streams, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4
  %7 = icmp ne i32 %6, 3
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21.287, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8, %5, %0
  %13 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 1, i32* @progressive_sequence, align 4
  store i32 1, i32* @progressive_frame, align 4
  store i32 3, i32* @picture_structure, align 4
  store i32 1, i32* @frame_pred_frame_dct, align 4
  store i32 1, i32* @chroma_format, align 4
  store i32 5, i32* @matrix_coefficients, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @horizontal_size, align 4
  %18 = add nsw i32 %17, 15
  %19 = sdiv i32 %18, 16
  store i32 %19, i32* @mb_width, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, i32* @progressive_sequence, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @vertical_size, align 4
  %27 = add nsw i32 %26, 31
  %28 = sdiv i32 %27, 32
  %29 = mul nsw i32 2, %28
  br label %34

30:                                               ; preds = %22, %16
  %31 = load i32, i32* @vertical_size, align 4
  %32 = add nsw i32 %31, 15
  %33 = sdiv i32 %32, 16
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %29, %25 ], [ %33, %30 ]
  store i32 %35, i32* @mb_height, align 4
  %36 = load i32, i32* @mb_width, align 4
  %37 = mul nsw i32 16, %36
  store i32 %37, i32* @Coded_Picture_Width, align 4
  %38 = load i32, i32* @mb_height, align 4
  %39 = mul nsw i32 16, %38
  store i32 %39, i32* @Coded_Picture_Height, align 4
  %40 = load i32, i32* @chroma_format, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @Coded_Picture_Width, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @Coded_Picture_Width, align 4
  %46 = ashr i32 %45, 1
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ]
  store i32 %48, i32* @Chroma_Width, align 4
  %49 = load i32, i32* @chroma_format, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @Coded_Picture_Height, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @Coded_Picture_Height, align 4
  %55 = ashr i32 %54, 1
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  store i32 %57, i32* @Chroma_Height, align 4
  %58 = load i32, i32* @chroma_format, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* @Initialize_Sequence.Table_6_20, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @block_count, align 4
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %154, %56
  %64 = load i32, i32* %1, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %157

66:                                               ; preds = %63
  %67 = load i32, i32* %1, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @Coded_Picture_Width, align 4
  %71 = load i32, i32* @Coded_Picture_Height, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @Chroma_Width, align 4
  %75 = load i32, i32* @Chroma_Height, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = call noalias i8* @malloc(i64 %79) #7
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %82
  store i8* %80, i8** %83, align 8
  %84 = icmp ne i8* %80, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  call void @Error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22.288, i64 0, i64 0))
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = call noalias i8* @malloc(i64 %88) #7
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %91
  store i8* %89, i8** %92, align 8
  %93 = icmp ne i8* %89, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  call void @Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23.289, i64 0, i64 0))
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = call noalias i8* @malloc(i64 %97) #7
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 %100
  store i8* %98, i8** %101, align 8
  %102 = icmp ne i8* %98, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  call void @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i32, i32* @Ersatz_Flag, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = call noalias i8* @malloc(i64 %109) #7
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 %112
  store i8* %110, i8** %113, align 8
  %114 = icmp ne i8* %110, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  call void @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  br label %116

116:                                              ; preds = %115, %107
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %153

120:                                              ; preds = %117
  %121 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %122 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %1, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 4, i32 1
  %128 = sdiv i32 %123, %127
  %129 = sext i32 %128 to i64
  %130 = call noalias i8* @malloc(i64 %129) #7
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %132
  store i8* %130, i8** %133, align 8
  %134 = icmp ne i8* %130, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %120
  call void @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %136

136:                                              ; preds = %135, %120
  %137 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %138 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %1, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 4, i32 1
  %144 = sdiv i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = call noalias i8* @malloc(i64 %145) #7
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %148
  store i8* %146, i8** %149, align 8
  %150 = icmp ne i8* %146, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %136
  call void @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  br label %152

152:                                              ; preds = %151, %136
  br label %153

153:                                              ; preds = %152, %117
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %1, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %1, align 4
  br label %63

157:                                              ; preds = %63
  %158 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %162 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %163 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %166 = sdiv i32 %164, %165
  %167 = mul nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 2
  %170 = call noalias i8* @malloc(i64 %169) #7
  %171 = bitcast i8* %170 to i16*
  store i16* %171, i16** @lltmp, align 8
  %172 = icmp ne i16* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %160
  call void @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  br label %174

174:                                              ; preds = %173, %160
  br label %175

175:                                              ; preds = %174, %157
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Deinitialize_Sequence() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 8
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %30, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %33

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* %9) #7
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #7
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* %17) #7
  %18 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  call void @free(i8* %24) #7
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* %28) #7
  br label %29

29:                                               ; preds = %20, %5
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %2

33:                                               ; preds = %2
  %34 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i16*, i16** @lltmp, align 8
  %38 = bitcast i16* %37 to i8*
  call void @free(i8* %38) #7
  br label %39

39:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @Print_Bits(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %15, %16
  %18 = ashr i32 %13, %17
  %19 = and i32 %18, 1
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.306, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @form_predictions(i32 %0, i32 %1, i32 %2, i32 %3, [2 x [2 x i32]]* %4, [2 x i32]* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x [2 x i32]]*, align 8
  %14 = alloca [2 x i32]*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca [2 x [2 x i32]], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [2 x [2 x i32]]* %4, [2 x [2 x i32]]** %13, align 8
  store [2 x i32]* %5, [2 x i32]** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = srem i32 %22, 3
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %16, align 4
  %25 = sdiv i32 %24, 3
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @picture_coding_type, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %414

32:                                               ; preds = %29, %8
  %33 = load i32, i32* @picture_structure, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %233

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %20, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i32, i32* @Coded_Picture_Width, align 4
  %47 = load i32, i32* @Coded_Picture_Width, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %52 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %51, i64 0
  %53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %52, i64 0, i64 0
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %57 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %56, i64 0
  %58 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %57, i64 0, i64 0
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %20, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %46, i32 %48, i32 16, i32 8, i32 %49, i32 %50, i32 %55, i32 %60, i32 %61)
  br label %62

62:                                               ; preds = %45, %42
  %63 = load i32, i32* %21, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i32, i32* @Coded_Picture_Width, align 4
  %67 = load i32, i32* @Coded_Picture_Width, align 4
  %68 = shl i32 %67, 1
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %71, i64 0
  %73 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %72, i64 0, i64 0
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %73, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %77 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %76, i64 0
  %78 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %77, i64 0, i64 0
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %21, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 1, i32 %66, i32 %68, i32 16, i32 8, i32 %69, i32 %70, i32 %75, i32 %80, i32 %81)
  br label %82

82:                                               ; preds = %65, %62
  br label %232

83:                                               ; preds = %38
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %141

86:                                               ; preds = %83
  %87 = load i32, i32* %20, align 4
  %88 = icmp slt i32 %87, 2
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load [2 x i32]*, [2 x i32]** %14, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @Coded_Picture_Width, align 4
  %95 = shl i32 %94, 1
  %96 = load i32, i32* @Coded_Picture_Width, align 4
  %97 = shl i32 %96, 1
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = ashr i32 %99, 1
  %101 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %102 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %101, i64 0
  %103 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %102, i64 0, i64 0
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %107 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %106, i64 0
  %108 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %107, i64 0, i64 0
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 1
  %112 = load i32, i32* %20, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 %93, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %95, i32 %97, i32 16, i32 8, i32 %98, i32 %100, i32 %105, i32 %111, i32 %112)
  br label %113

113:                                              ; preds = %89, %86
  %114 = load i32, i32* %21, align 4
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %116, label %140

116:                                              ; preds = %113
  %117 = load [2 x i32]*, [2 x i32]** %14, align 8
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 1
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @Coded_Picture_Width, align 4
  %122 = shl i32 %121, 1
  %123 = load i32, i32* @Coded_Picture_Width, align 4
  %124 = shl i32 %123, 1
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = ashr i32 %126, 1
  %128 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %129 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %128, i64 1
  %130 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %129, i64 0, i64 0
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %134 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %133, i64 1
  %135 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %134, i64 0, i64 0
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %135, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 1
  %139 = load i32, i32* %21, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 %120, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 1, i32 %122, i32 %124, i32 16, i32 8, i32 %125, i32 %127, i32 %132, i32 %138, i32 %139)
  br label %140

140:                                              ; preds = %116, %113
  br label %231

141:                                              ; preds = %83
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %228

144:                                              ; preds = %141
  %145 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 0
  %146 = load i32*, i32** %15, align 8
  %147 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %148 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %147, i64 0
  %149 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %148, i64 0, i64 0
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %149, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %153 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %152, i64 0
  %154 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %153, i64 0, i64 0
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %154, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 1
  call void @Dual_Prime_Arithmetic([2 x i32]* %145, i32* %146, i32 %151, i32 %157)
  %158 = load i32, i32* %20, align 4
  %159 = icmp slt i32 %158, 2
  br i1 %159, label %160, label %192

160:                                              ; preds = %144
  %161 = load i32, i32* @Coded_Picture_Width, align 4
  %162 = shl i32 %161, 1
  %163 = load i32, i32* @Coded_Picture_Width, align 4
  %164 = shl i32 %163, 1
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = ashr i32 %166, 1
  %168 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %169 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %168, i64 0
  %170 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %169, i64 0, i64 0
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %170, i64 0, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %174 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %173, i64 0
  %175 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %174, i64 0, i64 0
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %175, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 1
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %162, i32 %164, i32 16, i32 8, i32 %165, i32 %167, i32 %172, i32 %178, i32 0)
  %179 = load i32, i32* @Coded_Picture_Width, align 4
  %180 = shl i32 %179, 1
  %181 = load i32, i32* @Coded_Picture_Width, align 4
  %182 = shl i32 %181, 1
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %10, align 4
  %185 = ashr i32 %184, 1
  %186 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 0
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %186, i64 0, i64 0
  %188 = load i32, i32* %187, align 16
  %189 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 0
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %189, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %180, i32 %182, i32 16, i32 8, i32 %183, i32 %185, i32 %188, i32 %191, i32 1)
  br label %192

192:                                              ; preds = %160, %144
  %193 = load i32, i32* %21, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %227

195:                                              ; preds = %192
  %196 = load i32, i32* @Coded_Picture_Width, align 4
  %197 = shl i32 %196, 1
  %198 = load i32, i32* @Coded_Picture_Width, align 4
  %199 = shl i32 %198, 1
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %10, align 4
  %202 = ashr i32 %201, 1
  %203 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %204 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %203, i64 0
  %205 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %204, i64 0, i64 0
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %205, i64 0, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %209 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %208, i64 0
  %210 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %209, i64 0, i64 0
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %210, i64 0, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 1
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 1, i32 %197, i32 %199, i32 16, i32 8, i32 %200, i32 %202, i32 %207, i32 %213, i32 0)
  %214 = load i32, i32* @Coded_Picture_Width, align 4
  %215 = shl i32 %214, 1
  %216 = load i32, i32* @Coded_Picture_Width, align 4
  %217 = shl i32 %216, 1
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = ashr i32 %219, 1
  %221 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 1
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %221, i64 0, i64 0
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 1
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %224, i64 0, i64 1
  %226 = load i32, i32* %225, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 1, i32 %215, i32 %217, i32 16, i32 8, i32 %218, i32 %220, i32 %223, i32 %226, i32 1)
  br label %227

227:                                              ; preds = %195, %192
  br label %230

228:                                              ; preds = %141
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.309, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %227
  br label %231

231:                                              ; preds = %230, %140
  br label %232

232:                                              ; preds = %231, %82
  br label %413

233:                                              ; preds = %32
  %234 = load i32, i32* @picture_structure, align 4
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %17, align 4
  %237 = load i32, i32* @picture_coding_type, align 4
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %250

239:                                              ; preds = %233
  %240 = load i32, i32* @Second_Field, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %239
  %243 = load i32, i32* %17, align 4
  %244 = load [2 x i32]*, [2 x i32]** %14, align 8
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %244, i64 0
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %245, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %243, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i8*** %18, align 8
  br label %251

250:                                              ; preds = %242, %239, %233
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i8*** %18, align 8
  br label %251

251:                                              ; preds = %250, %249
  %252 = load i32, i32* %12, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %258, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %11, align 4
  %256 = and i32 %255, 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %285, label %258

258:                                              ; preds = %254, %251
  %259 = load i32, i32* %20, align 4
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %261, label %284

261:                                              ; preds = %258
  %262 = load i8**, i8*** %18, align 8
  %263 = load [2 x i32]*, [2 x i32]** %14, align 8
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %263, i64 0
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %264, i64 0, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @Coded_Picture_Width, align 4
  %268 = shl i32 %267, 1
  %269 = load i32, i32* @Coded_Picture_Width, align 4
  %270 = shl i32 %269, 1
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %10, align 4
  %273 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %274 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %273, i64 0
  %275 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %274, i64 0, i64 0
  %276 = getelementptr inbounds [2 x i32], [2 x i32]* %275, i64 0, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %279 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %278, i64 0
  %280 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %279, i64 0, i64 0
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %280, i64 0, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %20, align 4
  call void @form_prediction(i8** %262, i32 %266, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %268, i32 %270, i32 16, i32 16, i32 %271, i32 %272, i32 %277, i32 %282, i32 %283)
  br label %284

284:                                              ; preds = %261, %258
  br label %412

285:                                              ; preds = %254
  %286 = load i32, i32* %12, align 4
  %287 = icmp eq i32 %286, 2
  br i1 %287, label %288, label %353

288:                                              ; preds = %285
  %289 = load i32, i32* %20, align 4
  %290 = icmp slt i32 %289, 2
  br i1 %290, label %291, label %352

291:                                              ; preds = %288
  %292 = load i8**, i8*** %18, align 8
  %293 = load [2 x i32]*, [2 x i32]** %14, align 8
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %293, i64 0
  %295 = getelementptr inbounds [2 x i32], [2 x i32]* %294, i64 0, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @Coded_Picture_Width, align 4
  %298 = shl i32 %297, 1
  %299 = load i32, i32* @Coded_Picture_Width, align 4
  %300 = shl i32 %299, 1
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* %10, align 4
  %303 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %304 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %303, i64 0
  %305 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %304, i64 0, i64 0
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %305, i64 0, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %309 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %308, i64 0
  %310 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %309, i64 0, i64 0
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %310, i64 0, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %20, align 4
  call void @form_prediction(i8** %292, i32 %296, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %298, i32 %300, i32 16, i32 8, i32 %301, i32 %302, i32 %307, i32 %312, i32 %313)
  %314 = load i32, i32* @picture_coding_type, align 4
  %315 = icmp eq i32 %314, 2
  br i1 %315, label %316, label %327

316:                                              ; preds = %291
  %317 = load i32, i32* @Second_Field, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %316
  %320 = load i32, i32* %17, align 4
  %321 = load [2 x i32]*, [2 x i32]** %14, align 8
  %322 = getelementptr inbounds [2 x i32], [2 x i32]* %321, i64 1
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %322, i64 0, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %320, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i8*** %18, align 8
  br label %328

327:                                              ; preds = %319, %316, %291
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i8*** %18, align 8
  br label %328

328:                                              ; preds = %327, %326
  %329 = load i8**, i8*** %18, align 8
  %330 = load [2 x i32]*, [2 x i32]** %14, align 8
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* %330, i64 1
  %332 = getelementptr inbounds [2 x i32], [2 x i32]* %331, i64 0, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @Coded_Picture_Width, align 4
  %335 = shl i32 %334, 1
  %336 = load i32, i32* @Coded_Picture_Width, align 4
  %337 = shl i32 %336, 1
  %338 = load i32, i32* %9, align 4
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, 8
  %341 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %342 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %341, i64 1
  %343 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %342, i64 0, i64 0
  %344 = getelementptr inbounds [2 x i32], [2 x i32]* %343, i64 0, i64 0
  %345 = load i32, i32* %344, align 4
  %346 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %347 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %346, i64 1
  %348 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %347, i64 0, i64 0
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* %348, i64 0, i64 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %20, align 4
  call void @form_prediction(i8** %329, i32 %333, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %335, i32 %337, i32 16, i32 8, i32 %338, i32 %340, i32 %345, i32 %350, i32 %351)
  br label %352

352:                                              ; preds = %328, %288
  br label %411

353:                                              ; preds = %285
  %354 = load i32, i32* %12, align 4
  %355 = icmp eq i32 %354, 3
  br i1 %355, label %356, label %408

356:                                              ; preds = %353
  %357 = load i32, i32* @Second_Field, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i8*** %18, align 8
  br label %361

360:                                              ; preds = %356
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i8*** %18, align 8
  br label %361

361:                                              ; preds = %360, %359
  %362 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 0
  %363 = load i32*, i32** %15, align 8
  %364 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %365 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %364, i64 0
  %366 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %365, i64 0, i64 0
  %367 = getelementptr inbounds [2 x i32], [2 x i32]* %366, i64 0, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %370 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %369, i64 0
  %371 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %370, i64 0, i64 0
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %371, i64 0, i64 1
  %373 = load i32, i32* %372, align 4
  call void @Dual_Prime_Arithmetic([2 x i32]* %362, i32* %363, i32 %368, i32 %373)
  %374 = load i32, i32* %17, align 4
  %375 = load i32, i32* @Coded_Picture_Width, align 4
  %376 = shl i32 %375, 1
  %377 = load i32, i32* @Coded_Picture_Width, align 4
  %378 = shl i32 %377, 1
  %379 = load i32, i32* %9, align 4
  %380 = load i32, i32* %10, align 4
  %381 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %382 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %381, i64 0
  %383 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %382, i64 0, i64 0
  %384 = getelementptr inbounds [2 x i32], [2 x i32]* %383, i64 0, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %387 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %386, i64 0
  %388 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %387, i64 0, i64 0
  %389 = getelementptr inbounds [2 x i32], [2 x i32]* %388, i64 0, i64 1
  %390 = load i32, i32* %389, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 %374, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %376, i32 %378, i32 16, i32 16, i32 %379, i32 %380, i32 %385, i32 %390, i32 0)
  %391 = load i8**, i8*** %18, align 8
  %392 = load i32, i32* %17, align 4
  %393 = icmp ne i32 %392, 0
  %394 = xor i1 %393, true
  %395 = zext i1 %394 to i32
  %396 = load i32, i32* @Coded_Picture_Width, align 4
  %397 = shl i32 %396, 1
  %398 = load i32, i32* @Coded_Picture_Width, align 4
  %399 = shl i32 %398, 1
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* %10, align 4
  %402 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 0
  %403 = getelementptr inbounds [2 x i32], [2 x i32]* %402, i64 0, i64 0
  %404 = load i32, i32* %403, align 16
  %405 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0, i64 0
  %406 = getelementptr inbounds [2 x i32], [2 x i32]* %405, i64 0, i64 1
  %407 = load i32, i32* %406, align 4
  call void @form_prediction(i8** %391, i32 %395, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %397, i32 %399, i32 16, i32 16, i32 %400, i32 %401, i32 %404, i32 %407, i32 1)
  br label %410

408:                                              ; preds = %353
  %409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.309, i64 0, i64 0))
  br label %410

410:                                              ; preds = %408, %361
  br label %411

411:                                              ; preds = %410, %352
  br label %412

412:                                              ; preds = %411, %284
  br label %413

413:                                              ; preds = %412, %232
  store i32 1, i32* %21, align 4
  store i32 1, i32* %20, align 4
  br label %414

414:                                              ; preds = %413, %29
  %415 = load i32, i32* %11, align 4
  %416 = and i32 %415, 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %598

418:                                              ; preds = %414
  %419 = load i32, i32* @picture_structure, align 4
  %420 = icmp eq i32 %419, 3
  br i1 %420, label %421, label %521

421:                                              ; preds = %418
  %422 = load i32, i32* %12, align 4
  %423 = icmp eq i32 %422, 2
  br i1 %423, label %424, label %465

424:                                              ; preds = %421
  %425 = load i32, i32* %20, align 4
  %426 = icmp slt i32 %425, 2
  br i1 %426, label %427, label %444

427:                                              ; preds = %424
  %428 = load i32, i32* @Coded_Picture_Width, align 4
  %429 = load i32, i32* @Coded_Picture_Width, align 4
  %430 = shl i32 %429, 1
  %431 = load i32, i32* %9, align 4
  %432 = load i32, i32* %10, align 4
  %433 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %434 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %433, i64 0
  %435 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %434, i64 0, i64 1
  %436 = getelementptr inbounds [2 x i32], [2 x i32]* %435, i64 0, i64 0
  %437 = load i32, i32* %436, align 4
  %438 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %439 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %438, i64 0
  %440 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %439, i64 0, i64 1
  %441 = getelementptr inbounds [2 x i32], [2 x i32]* %440, i64 0, i64 1
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %20, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %428, i32 %430, i32 16, i32 8, i32 %431, i32 %432, i32 %437, i32 %442, i32 %443)
  br label %444

444:                                              ; preds = %427, %424
  %445 = load i32, i32* %21, align 4
  %446 = icmp slt i32 %445, 2
  br i1 %446, label %447, label %464

447:                                              ; preds = %444
  %448 = load i32, i32* @Coded_Picture_Width, align 4
  %449 = load i32, i32* @Coded_Picture_Width, align 4
  %450 = shl i32 %449, 1
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %10, align 4
  %453 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %454 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %453, i64 0
  %455 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %454, i64 0, i64 1
  %456 = getelementptr inbounds [2 x i32], [2 x i32]* %455, i64 0, i64 0
  %457 = load i32, i32* %456, align 4
  %458 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %459 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %458, i64 0
  %460 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %459, i64 0, i64 1
  %461 = getelementptr inbounds [2 x i32], [2 x i32]* %460, i64 0, i64 1
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* %21, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 1, i32 %448, i32 %450, i32 16, i32 8, i32 %451, i32 %452, i32 %457, i32 %462, i32 %463)
  br label %464

464:                                              ; preds = %447, %444
  br label %520

465:                                              ; preds = %421
  %466 = load i32, i32* %20, align 4
  %467 = icmp slt i32 %466, 2
  br i1 %467, label %468, label %492

468:                                              ; preds = %465
  %469 = load [2 x i32]*, [2 x i32]** %14, align 8
  %470 = getelementptr inbounds [2 x i32], [2 x i32]* %469, i64 0
  %471 = getelementptr inbounds [2 x i32], [2 x i32]* %470, i64 0, i64 1
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @Coded_Picture_Width, align 4
  %474 = shl i32 %473, 1
  %475 = load i32, i32* @Coded_Picture_Width, align 4
  %476 = shl i32 %475, 1
  %477 = load i32, i32* %9, align 4
  %478 = load i32, i32* %10, align 4
  %479 = ashr i32 %478, 1
  %480 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %481 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %480, i64 0
  %482 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %481, i64 0, i64 1
  %483 = getelementptr inbounds [2 x i32], [2 x i32]* %482, i64 0, i64 0
  %484 = load i32, i32* %483, align 4
  %485 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %486 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %485, i64 0
  %487 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %486, i64 0, i64 1
  %488 = getelementptr inbounds [2 x i32], [2 x i32]* %487, i64 0, i64 1
  %489 = load i32, i32* %488, align 4
  %490 = ashr i32 %489, 1
  %491 = load i32, i32* %20, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 %472, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %474, i32 %476, i32 16, i32 8, i32 %477, i32 %479, i32 %484, i32 %490, i32 %491)
  br label %492

492:                                              ; preds = %468, %465
  %493 = load i32, i32* %21, align 4
  %494 = icmp slt i32 %493, 2
  br i1 %494, label %495, label %519

495:                                              ; preds = %492
  %496 = load [2 x i32]*, [2 x i32]** %14, align 8
  %497 = getelementptr inbounds [2 x i32], [2 x i32]* %496, i64 1
  %498 = getelementptr inbounds [2 x i32], [2 x i32]* %497, i64 0, i64 1
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @Coded_Picture_Width, align 4
  %501 = shl i32 %500, 1
  %502 = load i32, i32* @Coded_Picture_Width, align 4
  %503 = shl i32 %502, 1
  %504 = load i32, i32* %9, align 4
  %505 = load i32, i32* %10, align 4
  %506 = ashr i32 %505, 1
  %507 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %508 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %507, i64 1
  %509 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %508, i64 0, i64 1
  %510 = getelementptr inbounds [2 x i32], [2 x i32]* %509, i64 0, i64 0
  %511 = load i32, i32* %510, align 4
  %512 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %513 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %512, i64 1
  %514 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %513, i64 0, i64 1
  %515 = getelementptr inbounds [2 x i32], [2 x i32]* %514, i64 0, i64 1
  %516 = load i32, i32* %515, align 4
  %517 = ashr i32 %516, 1
  %518 = load i32, i32* %21, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 %499, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 1, i32 %501, i32 %503, i32 16, i32 8, i32 %504, i32 %506, i32 %511, i32 %517, i32 %518)
  br label %519

519:                                              ; preds = %495, %492
  br label %520

520:                                              ; preds = %519, %464
  br label %597

521:                                              ; preds = %418
  %522 = load i32, i32* %12, align 4
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %524, label %546

524:                                              ; preds = %521
  %525 = load [2 x i32]*, [2 x i32]** %14, align 8
  %526 = getelementptr inbounds [2 x i32], [2 x i32]* %525, i64 0
  %527 = getelementptr inbounds [2 x i32], [2 x i32]* %526, i64 0, i64 1
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* @Coded_Picture_Width, align 4
  %530 = shl i32 %529, 1
  %531 = load i32, i32* @Coded_Picture_Width, align 4
  %532 = shl i32 %531, 1
  %533 = load i32, i32* %9, align 4
  %534 = load i32, i32* %10, align 4
  %535 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %536 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %535, i64 0
  %537 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %536, i64 0, i64 1
  %538 = getelementptr inbounds [2 x i32], [2 x i32]* %537, i64 0, i64 0
  %539 = load i32, i32* %538, align 4
  %540 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %541 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %540, i64 0
  %542 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %541, i64 0, i64 1
  %543 = getelementptr inbounds [2 x i32], [2 x i32]* %542, i64 0, i64 1
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* %20, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 %528, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %530, i32 %532, i32 16, i32 16, i32 %533, i32 %534, i32 %539, i32 %544, i32 %545)
  br label %596

546:                                              ; preds = %521
  %547 = load i32, i32* %12, align 4
  %548 = icmp eq i32 %547, 2
  br i1 %548, label %549, label %593

549:                                              ; preds = %546
  %550 = load [2 x i32]*, [2 x i32]** %14, align 8
  %551 = getelementptr inbounds [2 x i32], [2 x i32]* %550, i64 0
  %552 = getelementptr inbounds [2 x i32], [2 x i32]* %551, i64 0, i64 1
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* @Coded_Picture_Width, align 4
  %555 = shl i32 %554, 1
  %556 = load i32, i32* @Coded_Picture_Width, align 4
  %557 = shl i32 %556, 1
  %558 = load i32, i32* %9, align 4
  %559 = load i32, i32* %10, align 4
  %560 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %561 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %560, i64 0
  %562 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %561, i64 0, i64 1
  %563 = getelementptr inbounds [2 x i32], [2 x i32]* %562, i64 0, i64 0
  %564 = load i32, i32* %563, align 4
  %565 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %566 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %565, i64 0
  %567 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %566, i64 0, i64 1
  %568 = getelementptr inbounds [2 x i32], [2 x i32]* %567, i64 0, i64 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* %20, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 %553, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %555, i32 %557, i32 16, i32 8, i32 %558, i32 %559, i32 %564, i32 %569, i32 %570)
  %571 = load [2 x i32]*, [2 x i32]** %14, align 8
  %572 = getelementptr inbounds [2 x i32], [2 x i32]* %571, i64 1
  %573 = getelementptr inbounds [2 x i32], [2 x i32]* %572, i64 0, i64 1
  %574 = load i32, i32* %573, align 4
  %575 = load i32, i32* @Coded_Picture_Width, align 4
  %576 = shl i32 %575, 1
  %577 = load i32, i32* @Coded_Picture_Width, align 4
  %578 = shl i32 %577, 1
  %579 = load i32, i32* %9, align 4
  %580 = load i32, i32* %10, align 4
  %581 = add nsw i32 %580, 8
  %582 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %583 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %582, i64 1
  %584 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %583, i64 0, i64 1
  %585 = getelementptr inbounds [2 x i32], [2 x i32]* %584, i64 0, i64 0
  %586 = load i32, i32* %585, align 4
  %587 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %13, align 8
  %588 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %587, i64 1
  %589 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %588, i64 0, i64 1
  %590 = getelementptr inbounds [2 x i32], [2 x i32]* %589, i64 0, i64 1
  %591 = load i32, i32* %590, align 4
  %592 = load i32, i32* %20, align 4
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 %574, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 0, i32 %576, i32 %578, i32 16, i32 8, i32 %579, i32 %581, i32 %586, i32 %591, i32 %592)
  br label %595

593:                                              ; preds = %546
  %594 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.309, i64 0, i64 0))
  br label %595

595:                                              ; preds = %593, %549
  br label %596

596:                                              ; preds = %595, %524
  br label %597

597:                                              ; preds = %596, %520
  br label %598

598:                                              ; preds = %597, %414
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @form_prediction(i8** %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
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
  store i8** %0, i8*** %14, align 8
  store i32 %1, i32* %15, align 4
  store i8** %2, i8*** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %27 = load i8**, i8*** %14, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = load i32, i32* %19, align 4
  %34 = ashr i32 %33, 1
  br label %36

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 0, %35 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %29, i64 %38
  %40 = load i8**, i8*** %16, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %19, align 4
  %47 = ashr i32 %46, 1
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 0, %48 ]
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %42, i64 %51
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* %25, align 4
  %61 = load i32, i32* %26, align 4
  call void @form_component_prediction(i8* %39, i8* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %62 = load i32, i32* @chroma_format, align 4
  %63 = icmp ne i32 %62, 3
  br i1 %63, label %64, label %75

64:                                               ; preds = %49
  %65 = load i32, i32* %18, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %22, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %24, align 4
  %74 = sdiv i32 %73, 2
  store i32 %74, i32* %24, align 4
  br label %75

75:                                               ; preds = %64, %49
  %76 = load i32, i32* @chroma_format, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %21, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %23, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %25, align 4
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %25, align 4
  br label %85

85:                                               ; preds = %78, %75
  %86 = load i8**, i8*** %14, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %19, align 4
  %93 = ashr i32 %92, 1
  br label %95

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32 [ %93, %91 ], [ 0, %94 ]
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %88, i64 %97
  %99 = load i8**, i8*** %16, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %19, align 4
  %106 = ashr i32 %105, 1
  br label %108

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 0, %107 ]
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %101, i64 %110
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %24, align 4
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* %26, align 4
  call void @form_component_prediction(i8* %98, i8* %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %121 = load i8**, i8*** %14, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %108
  %127 = load i32, i32* %19, align 4
  %128 = ashr i32 %127, 1
  br label %130

129:                                              ; preds = %108
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi i32 [ %128, %126 ], [ 0, %129 ]
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %123, i64 %132
  %134 = load i8**, i8*** %16, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 2
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* %19, align 4
  %141 = ashr i32 %140, 1
  br label %143

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %139
  %144 = phi i32 [ %141, %139 ], [ 0, %142 ]
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %136, i64 %145
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %26, align 4
  call void @form_component_prediction(i8* %133, i8* %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @form_component_prediction(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %32 = load i32, i32* %20, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %21, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* %20, align 4
  %37 = and i32 %36, 1
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* %21, align 4
  %39 = and i32 %38, 1
  store i32 %39, i32* %26, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %24, align 4
  %44 = add nsw i32 %42, %43
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %40, i64 %46
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %23, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %30, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %19, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %31, align 8
  %63 = load i32, i32* %25, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %160, label %65

65:                                               ; preds = %11
  %66 = load i32, i32* %26, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %160, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %68
  store i32 0, i32* %28, align 4
  br label %72

72:                                               ; preds = %119, %71
  %73 = load i32, i32* %28, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %72
  store i32 0, i32* %27, align 4
  br label %77

77:                                               ; preds = %107, %76
  %78 = load i32, i32* %27, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load i8*, i8** %31, align 8
  %83 = load i32, i32* %27, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8*, i8** %30, align 8
  %89 = load i32, i32* %27, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %87, %93
  store i32 %94, i32* %29, align 4
  %95 = load i32, i32* %29, align 4
  %96 = load i32, i32* %29, align 4
  %97 = icmp sge i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = add nsw i32 %95, %99
  %101 = ashr i32 %100, 1
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %31, align 8
  %104 = load i32, i32* %27, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %102, i8* %106, align 1
  br label %107

107:                                              ; preds = %81
  %108 = load i32, i32* %27, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %27, align 4
  br label %77

110:                                              ; preds = %77
  %111 = load i32, i32* %15, align 4
  %112 = load i8*, i8** %30, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %30, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i8*, i8** %31, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %31, align 8
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %28, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %28, align 4
  br label %72

122:                                              ; preds = %72
  br label %159

123:                                              ; preds = %68
  store i32 0, i32* %28, align 4
  br label %124

124:                                              ; preds = %155, %123
  %125 = load i32, i32* %28, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %124
  store i32 0, i32* %27, align 4
  br label %129

129:                                              ; preds = %143, %128
  %130 = load i32, i32* %27, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i8*, i8** %30, align 8
  %135 = load i32, i32* %27, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %31, align 8
  %140 = load i32, i32* %27, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 %138, i8* %142, align 1
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %27, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %27, align 4
  br label %129

146:                                              ; preds = %129
  %147 = load i32, i32* %15, align 4
  %148 = load i8*, i8** %30, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %30, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i8*, i8** %31, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %31, align 8
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %28, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %28, align 4
  br label %124

158:                                              ; preds = %124
  br label %159

159:                                              ; preds = %158, %122
  br label %556

160:                                              ; preds = %65, %11
  %161 = load i32, i32* %25, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %282, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %26, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %282

166:                                              ; preds = %163
  %167 = load i32, i32* %22, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %232

169:                                              ; preds = %166
  store i32 0, i32* %28, align 4
  br label %170

170:                                              ; preds = %228, %169
  %171 = load i32, i32* %28, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %231

174:                                              ; preds = %170
  store i32 0, i32* %27, align 4
  br label %175

175:                                              ; preds = %216, %174
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %219

179:                                              ; preds = %175
  %180 = load i8*, i8** %31, align 8
  %181 = load i32, i32* %27, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8*, i8** %30, align 8
  %187 = load i32, i32* %27, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8*, i8** %30, align 8
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = add nsw i32 %191, %199
  %201 = add nsw i32 %200, 1
  %202 = lshr i32 %201, 1
  %203 = add i32 %185, %202
  store i32 %203, i32* %29, align 4
  %204 = load i32, i32* %29, align 4
  %205 = load i32, i32* %29, align 4
  %206 = icmp sge i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 1, i32 0
  %209 = add nsw i32 %204, %208
  %210 = ashr i32 %209, 1
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %31, align 8
  %213 = load i32, i32* %27, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  store i8 %211, i8* %215, align 1
  br label %216

216:                                              ; preds = %179
  %217 = load i32, i32* %27, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %27, align 4
  br label %175

219:                                              ; preds = %175
  %220 = load i32, i32* %15, align 4
  %221 = load i8*, i8** %30, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8* %223, i8** %30, align 8
  %224 = load i32, i32* %15, align 4
  %225 = load i8*, i8** %31, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %31, align 8
  br label %228

228:                                              ; preds = %219
  %229 = load i32, i32* %28, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %28, align 4
  br label %170

231:                                              ; preds = %170
  br label %281

232:                                              ; preds = %166
  store i32 0, i32* %28, align 4
  br label %233

233:                                              ; preds = %277, %232
  %234 = load i32, i32* %28, align 4
  %235 = load i32, i32* %17, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %280

237:                                              ; preds = %233
  store i32 0, i32* %27, align 4
  br label %238

238:                                              ; preds = %265, %237
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %268

242:                                              ; preds = %238
  %243 = load i8*, i8** %30, align 8
  %244 = load i32, i32* %27, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = load i8*, i8** %30, align 8
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %249, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = add nsw i32 %248, %256
  %258 = add nsw i32 %257, 1
  %259 = lshr i32 %258, 1
  %260 = trunc i32 %259 to i8
  %261 = load i8*, i8** %31, align 8
  %262 = load i32, i32* %27, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  store i8 %260, i8* %264, align 1
  br label %265

265:                                              ; preds = %242
  %266 = load i32, i32* %27, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %27, align 4
  br label %238

268:                                              ; preds = %238
  %269 = load i32, i32* %15, align 4
  %270 = load i8*, i8** %30, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8* %272, i8** %30, align 8
  %273 = load i32, i32* %15, align 4
  %274 = load i8*, i8** %31, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  store i8* %276, i8** %31, align 8
  br label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %28, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %28, align 4
  br label %233

280:                                              ; preds = %233
  br label %281

281:                                              ; preds = %280, %231
  br label %555

282:                                              ; preds = %163, %160
  %283 = load i32, i32* %25, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %402

285:                                              ; preds = %282
  %286 = load i32, i32* %26, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %402, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %22, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %353

291:                                              ; preds = %288
  store i32 0, i32* %28, align 4
  br label %292

292:                                              ; preds = %349, %291
  %293 = load i32, i32* %28, align 4
  %294 = load i32, i32* %17, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %352

296:                                              ; preds = %292
  store i32 0, i32* %27, align 4
  br label %297

297:                                              ; preds = %337, %296
  %298 = load i32, i32* %27, align 4
  %299 = load i32, i32* %16, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %340

301:                                              ; preds = %297
  %302 = load i8*, i8** %31, align 8
  %303 = load i32, i32* %27, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = load i8*, i8** %30, align 8
  %309 = load i32, i32* %27, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = load i8*, i8** %30, align 8
  %315 = load i32, i32* %27, align 4
  %316 = add nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = add nsw i32 %313, %320
  %322 = add nsw i32 %321, 1
  %323 = lshr i32 %322, 1
  %324 = add i32 %307, %323
  store i32 %324, i32* %29, align 4
  %325 = load i32, i32* %29, align 4
  %326 = load i32, i32* %29, align 4
  %327 = icmp sge i32 %326, 0
  %328 = zext i1 %327 to i64
  %329 = select i1 %327, i32 1, i32 0
  %330 = add nsw i32 %325, %329
  %331 = ashr i32 %330, 1
  %332 = trunc i32 %331 to i8
  %333 = load i8*, i8** %31, align 8
  %334 = load i32, i32* %27, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  store i8 %332, i8* %336, align 1
  br label %337

337:                                              ; preds = %301
  %338 = load i32, i32* %27, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %27, align 4
  br label %297

340:                                              ; preds = %297
  %341 = load i32, i32* %15, align 4
  %342 = load i8*, i8** %30, align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  store i8* %344, i8** %30, align 8
  %345 = load i32, i32* %15, align 4
  %346 = load i8*, i8** %31, align 8
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds i8, i8* %346, i64 %347
  store i8* %348, i8** %31, align 8
  br label %349

349:                                              ; preds = %340
  %350 = load i32, i32* %28, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %28, align 4
  br label %292

352:                                              ; preds = %292
  br label %401

353:                                              ; preds = %288
  store i32 0, i32* %28, align 4
  br label %354

354:                                              ; preds = %397, %353
  %355 = load i32, i32* %28, align 4
  %356 = load i32, i32* %17, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %400

358:                                              ; preds = %354
  store i32 0, i32* %27, align 4
  br label %359

359:                                              ; preds = %385, %358
  %360 = load i32, i32* %27, align 4
  %361 = load i32, i32* %16, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %388

363:                                              ; preds = %359
  %364 = load i8*, i8** %30, align 8
  %365 = load i32, i32* %27, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %364, i64 %366
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i32
  %370 = load i8*, i8** %30, align 8
  %371 = load i32, i32* %27, align 4
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %370, i64 %373
  %375 = load i8, i8* %374, align 1
  %376 = zext i8 %375 to i32
  %377 = add nsw i32 %369, %376
  %378 = add nsw i32 %377, 1
  %379 = lshr i32 %378, 1
  %380 = trunc i32 %379 to i8
  %381 = load i8*, i8** %31, align 8
  %382 = load i32, i32* %27, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  store i8 %380, i8* %384, align 1
  br label %385

385:                                              ; preds = %363
  %386 = load i32, i32* %27, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %27, align 4
  br label %359

388:                                              ; preds = %359
  %389 = load i32, i32* %15, align 4
  %390 = load i8*, i8** %30, align 8
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds i8, i8* %390, i64 %391
  store i8* %392, i8** %30, align 8
  %393 = load i32, i32* %15, align 4
  %394 = load i8*, i8** %31, align 8
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i8, i8* %394, i64 %395
  store i8* %396, i8** %31, align 8
  br label %397

397:                                              ; preds = %388
  %398 = load i32, i32* %28, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %28, align 4
  br label %354

400:                                              ; preds = %354
  br label %401

401:                                              ; preds = %400, %352
  br label %554

402:                                              ; preds = %285, %282
  %403 = load i32, i32* %22, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %486

405:                                              ; preds = %402
  store i32 0, i32* %28, align 4
  br label %406

406:                                              ; preds = %482, %405
  %407 = load i32, i32* %28, align 4
  %408 = load i32, i32* %17, align 4
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %410, label %485

410:                                              ; preds = %406
  store i32 0, i32* %27, align 4
  br label %411

411:                                              ; preds = %470, %410
  %412 = load i32, i32* %27, align 4
  %413 = load i32, i32* %16, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %473

415:                                              ; preds = %411
  %416 = load i8*, i8** %31, align 8
  %417 = load i32, i32* %27, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, i8* %416, i64 %418
  %420 = load i8, i8* %419, align 1
  %421 = zext i8 %420 to i32
  %422 = load i8*, i8** %30, align 8
  %423 = load i32, i32* %27, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %422, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = zext i8 %426 to i32
  %428 = load i8*, i8** %30, align 8
  %429 = load i32, i32* %27, align 4
  %430 = add nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %428, i64 %431
  %433 = load i8, i8* %432, align 1
  %434 = zext i8 %433 to i32
  %435 = add nsw i32 %427, %434
  %436 = load i8*, i8** %30, align 8
  %437 = load i32, i32* %27, align 4
  %438 = load i32, i32* %14, align 4
  %439 = add nsw i32 %437, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %436, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = zext i8 %442 to i32
  %444 = add nsw i32 %435, %443
  %445 = load i8*, i8** %30, align 8
  %446 = load i32, i32* %27, align 4
  %447 = load i32, i32* %14, align 4
  %448 = add nsw i32 %446, %447
  %449 = add nsw i32 %448, 1
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %445, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i32
  %454 = add nsw i32 %444, %453
  %455 = add nsw i32 %454, 2
  %456 = lshr i32 %455, 2
  %457 = add i32 %421, %456
  store i32 %457, i32* %29, align 4
  %458 = load i32, i32* %29, align 4
  %459 = load i32, i32* %29, align 4
  %460 = icmp sge i32 %459, 0
  %461 = zext i1 %460 to i64
  %462 = select i1 %460, i32 1, i32 0
  %463 = add nsw i32 %458, %462
  %464 = ashr i32 %463, 1
  %465 = trunc i32 %464 to i8
  %466 = load i8*, i8** %31, align 8
  %467 = load i32, i32* %27, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %466, i64 %468
  store i8 %465, i8* %469, align 1
  br label %470

470:                                              ; preds = %415
  %471 = load i32, i32* %27, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %27, align 4
  br label %411

473:                                              ; preds = %411
  %474 = load i32, i32* %15, align 4
  %475 = load i8*, i8** %30, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i8, i8* %475, i64 %476
  store i8* %477, i8** %30, align 8
  %478 = load i32, i32* %15, align 4
  %479 = load i8*, i8** %31, align 8
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds i8, i8* %479, i64 %480
  store i8* %481, i8** %31, align 8
  br label %482

482:                                              ; preds = %473
  %483 = load i32, i32* %28, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %28, align 4
  br label %406

485:                                              ; preds = %406
  br label %553

486:                                              ; preds = %402
  store i32 0, i32* %28, align 4
  br label %487

487:                                              ; preds = %549, %486
  %488 = load i32, i32* %28, align 4
  %489 = load i32, i32* %17, align 4
  %490 = icmp slt i32 %488, %489
  br i1 %490, label %491, label %552

491:                                              ; preds = %487
  store i32 0, i32* %27, align 4
  br label %492

492:                                              ; preds = %537, %491
  %493 = load i32, i32* %27, align 4
  %494 = load i32, i32* %16, align 4
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %496, label %540

496:                                              ; preds = %492
  %497 = load i8*, i8** %30, align 8
  %498 = load i32, i32* %27, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, i8* %497, i64 %499
  %501 = load i8, i8* %500, align 1
  %502 = zext i8 %501 to i32
  %503 = load i8*, i8** %30, align 8
  %504 = load i32, i32* %27, align 4
  %505 = add nsw i32 %504, 1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i8, i8* %503, i64 %506
  %508 = load i8, i8* %507, align 1
  %509 = zext i8 %508 to i32
  %510 = add nsw i32 %502, %509
  %511 = load i8*, i8** %30, align 8
  %512 = load i32, i32* %27, align 4
  %513 = load i32, i32* %14, align 4
  %514 = add nsw i32 %512, %513
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8, i8* %511, i64 %515
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = add nsw i32 %510, %518
  %520 = load i8*, i8** %30, align 8
  %521 = load i32, i32* %27, align 4
  %522 = load i32, i32* %14, align 4
  %523 = add nsw i32 %521, %522
  %524 = add nsw i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8, i8* %520, i64 %525
  %527 = load i8, i8* %526, align 1
  %528 = zext i8 %527 to i32
  %529 = add nsw i32 %519, %528
  %530 = add nsw i32 %529, 2
  %531 = lshr i32 %530, 2
  %532 = trunc i32 %531 to i8
  %533 = load i8*, i8** %31, align 8
  %534 = load i32, i32* %27, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i8, i8* %533, i64 %535
  store i8 %532, i8* %536, align 1
  br label %537

537:                                              ; preds = %496
  %538 = load i32, i32* %27, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %27, align 4
  br label %492

540:                                              ; preds = %492
  %541 = load i32, i32* %15, align 4
  %542 = load i8*, i8** %30, align 8
  %543 = sext i32 %541 to i64
  %544 = getelementptr inbounds i8, i8* %542, i64 %543
  store i8* %544, i8** %30, align 8
  %545 = load i32, i32* %15, align 4
  %546 = load i8*, i8** %31, align 8
  %547 = sext i32 %545 to i64
  %548 = getelementptr inbounds i8, i8* %546, i64 %547
  store i8* %548, i8** %31, align 8
  br label %549

549:                                              ; preds = %540
  %550 = load i32, i32* %28, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %28, align 4
  br label %487

552:                                              ; preds = %487
  br label %553

553:                                              ; preds = %552, %485
  br label %554

554:                                              ; preds = %553, %401
  br label %555

555:                                              ; preds = %554, %281
  br label %556

556:                                              ; preds = %555, %159
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Spatial_Prediction() #0 {
  %1 = load i32, i32* @Frame_Store_Flag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %5 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Framewise(i32 0, i32 %4, i32 %5)
  %6 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %7 = ashr i32 %6, 1
  %8 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %9 = ashr i32 %8, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 1, i32 %7, i32 %9)
  %10 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %11 = ashr i32 %10, 1
  %12 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %13 = ashr i32 %12, 1
  call void @Read_Lower_Layer_Component_Framewise(i32 2, i32 %11, i32 %13)
  br label %25

14:                                               ; preds = %0
  %15 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %16 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  call void @Read_Lower_Layer_Component_Fieldwise(i32 0, i32 %15, i32 %16)
  %17 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %18 = ashr i32 %17, 1
  %19 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %20 = ashr i32 %19, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 1, i32 %18, i32 %20)
  %21 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %22 = ashr i32 %21, 1
  %23 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %24 = ashr i32 %23, 1
  call void @Read_Lower_Layer_Component_Fieldwise(i32 2, i32 %22, i32 %24)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load i32, i32* @progressive_frame, align 4
  %27 = load i32, i32* @lower_layer_progressive_frame, align 4
  %28 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 0), align 16
  %29 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 0), align 16
  %30 = load i16*, i16** @lltmp, align 8
  %31 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), align 16
  %32 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %33 = load i32, i32* @lower_layer_vertical_offset, align 4
  %34 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %35 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %36 = load i32, i32* @horizontal_size, align 4
  %37 = load i32, i32* @vertical_size, align 4
  %38 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %39 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %40 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %41 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  %42 = load i32, i32* @picture_structure, align 4
  %43 = icmp ne i32 %42, 3
  %44 = zext i1 %43 to i32
  call void @Make_Spatial_Prediction_Frame(i32 %26, i32 %27, i8* %28, i8* %29, i16* %30, i8* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %44)
  %45 = load i32, i32* @progressive_frame, align 4
  %46 = load i32, i32* @lower_layer_progressive_frame, align 4
  %47 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 1), align 8
  %48 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 1), align 8
  %49 = load i16*, i16** @lltmp, align 8
  %50 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 1), align 8
  %51 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %52 = sdiv i32 %51, 2
  %53 = load i32, i32* @lower_layer_vertical_offset, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %56 = ashr i32 %55, 1
  %57 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %58 = ashr i32 %57, 1
  %59 = load i32, i32* @horizontal_size, align 4
  %60 = ashr i32 %59, 1
  %61 = load i32, i32* @vertical_size, align 4
  %62 = ashr i32 %61, 1
  %63 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %64 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %65 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %66 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 %45, i32 %46, i8* %47, i8* %48, i16* %49, i8* %50, i32 %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 1)
  %67 = load i32, i32* @progressive_frame, align 4
  %68 = load i32, i32* @lower_layer_progressive_frame, align 4
  %69 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 2), align 16
  %70 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 2), align 16
  %71 = load i16*, i16** @lltmp, align 8
  %72 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 2), align 16
  %73 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %74 = sdiv i32 %73, 2
  %75 = load i32, i32* @lower_layer_vertical_offset, align 4
  %76 = sdiv i32 %75, 2
  %77 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4
  %78 = ashr i32 %77, 1
  %79 = load i32, i32* @lower_layer_prediction_vertical_size, align 4
  %80 = ashr i32 %79, 1
  %81 = load i32, i32* @horizontal_size, align 4
  %82 = ashr i32 %81, 1
  %83 = load i32, i32* @vertical_size, align 4
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* @vertical_subsampling_factor_m, align 4
  %86 = load i32, i32* @vertical_subsampling_factor_n, align 4
  %87 = load i32, i32* @horizontal_subsampling_factor_m, align 4
  %88 = load i32, i32* @horizontal_subsampling_factor_n, align 4
  call void @Make_Spatial_Prediction_Frame(i32 %67, i32 %68, i8* %69, i8* %70, i16* %71, i8* %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Lower_Layer_Component_Framewise(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [3 x [3 x i8]], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast [3 x [3 x i8]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @__const.Read_Lower_Layer_Component_Framewise.ext, i32 0, i32 0, i32 0), i64 9, i1 false)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %14 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %15 = load i32, i32* @True_Framenum, align 4
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* %14, i32 %15) #7
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %9, i64 0, i64 %19
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  %22 = call i8* @strcat(i8* %17, i8* %21) #7
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.312, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %7, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  call void @exit(i32 -1) #8
  unreachable

28:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %86, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %40 = call i32 @getc(%struct._IO_FILE* %39)
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %45, i64 %51
  store i8 %41, i8* %52, align 1
  br label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %34

56:                                               ; preds = %34
  %57 = load i32, i32* @lower_layer_progressive_frame, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %81, %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %68 = call i32 @getc(%struct._IO_FILE* %67)
  %69 = trunc i32 %68 to i8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %73, i64 %79
  store i8 %69, i8* %80, align 1
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %62

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %29

89:                                               ; preds = %29
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* %90)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Lower_Layer_Component_Fieldwise(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [3 x [3 x i8]], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast [3 x [3 x i8]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @__const.Read_Lower_Layer_Component_Fieldwise.ext, i32 0, i32 0, i32 0), i64 9, i1 false)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %14 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %15 = load i32, i32* @True_Framenum, align 4
  %16 = load i32, i32* @lower_layer_progressive_frame, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 102, i32 97
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* %14, i32 %15, i32 %19) #7
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %9, i64 0, i64 %23
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %24, i64 0, i64 0
  %26 = call i8* @strcat(i8* %21, i8* %25) #7
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.312, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %7, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %30 = icmp eq %struct._IO_FILE* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  call void @exit(i32 -1) #8
  unreachable

32:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %61, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %44 = call i32 @getc(%struct._IO_FILE* %43)
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %49, i64 %55
  store i8 %45, i8* %56, align 1
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @lower_layer_progressive_frame, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 2
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %70 = call i32 @fclose(%struct._IO_FILE* %69)
  %71 = load i32, i32* @lower_layer_progressive_frame, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %124, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %75 = load i8*, i8** @Lower_Layer_Picture_Filename, align 8
  %76 = load i32, i32* @True_Framenum, align 4
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* %75, i32 %76, i32 98) #7
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %9, i64 0, i64 %80
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %81, i64 0, i64 0
  %83 = call i8* @strcat(i8* %78, i8* %82) #7
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %85 = call %struct._IO_FILE* @fopen(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.312, i64 0, i64 0))
  store %struct._IO_FILE* %85, %struct._IO_FILE** %7, align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %87 = icmp eq %struct._IO_FILE* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  call void @exit(i32 -1) #8
  unreachable

89:                                               ; preds = %73
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %118, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %101 = call i32 @getc(%struct._IO_FILE* %100)
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %11, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %106, i64 %112
  store i8 %102, i8* %113, align 1
  br label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %95

117:                                              ; preds = %95
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %11, align 4
  br label %90

121:                                              ; preds = %90
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %123 = call i32 @fclose(%struct._IO_FILE* %122)
  br label %124

124:                                              ; preds = %121, %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Make_Spatial_Prediction_Frame(i32 %0, i32 %1, i8* %2, i8* %3, i16* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i16*, align 8
  %23 = alloca i8*, align 8
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32 %0, i32* %18, align 4
  store i32 %1, i32* %19, align 4
  store i8* %2, i8** %20, align 8
  store i8* %3, i8** %21, align 8
  store i16* %4, i16** %22, align 8
  store i8* %5, i8** %23, align 8
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  store i32 %16, i32* %34, align 4
  %40 = load i32, i32* %26, align 4
  %41 = load i32, i32* %33, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %32, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %38, align 4
  %45 = load i32, i32* %27, align 4
  %46 = load i32, i32* %31, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %30, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %39, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %17
  %53 = load i8*, i8** %20, align 8
  %54 = load i16*, i16** %22, align 8
  %55 = load i32, i32* %26, align 4
  %56 = load i32, i32* %27, align 4
  %57 = load i32, i32* %39, align 4
  %58 = load i32, i32* %30, align 4
  %59 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* %53, i16* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 0, i32 1)
  br label %119

60:                                               ; preds = %17
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %60
  %64 = load i32, i32* @lower_layer_deinterlaced_field_select, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i8*, i8** %21, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %27, align 4
  %71 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* %67, i8* %68, i32 0, i32 %69, i32 %70, i32 %71)
  %72 = load i8*, i8** %21, align 8
  %73 = load i16*, i16** %22, align 8
  %74 = load i32, i32* %26, align 4
  %75 = load i32, i32* %27, align 4
  %76 = load i32, i32* %39, align 4
  %77 = load i32, i32* %30, align 4
  %78 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* %72, i16* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 0, i32 1)
  br label %92

79:                                               ; preds = %63
  %80 = load i8*, i8** %20, align 8
  %81 = load i8*, i8** %21, align 8
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* %27, align 4
  %84 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* %80, i8* %81, i32 1, i32 %82, i32 %83, i32 %84)
  %85 = load i8*, i8** %20, align 8
  %86 = load i16*, i16** %22, align 8
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %39, align 4
  %90 = load i32, i32* %30, align 4
  %91 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* %85, i16* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 0, i32 1)
  br label %92

92:                                               ; preds = %79, %66
  br label %118

93:                                               ; preds = %60
  %94 = load i8*, i8** %20, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load i32, i32* %26, align 4
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* %94, i8* %95, i32 1, i32 %96, i32 %97, i32 %98)
  %99 = load i8*, i8** %21, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %34, align 4
  call void @Deinterlace(i8* %99, i8* %100, i32 0, i32 %101, i32 %102, i32 %103)
  %104 = load i8*, i8** %20, align 8
  %105 = load i16*, i16** %22, align 8
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* %39, align 4
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* %104, i16* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 0, i32 2)
  %111 = load i8*, i8** %21, align 8
  %112 = load i16*, i16** %22, align 8
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %39, align 4
  %116 = load i32, i32* %30, align 4
  %117 = load i32, i32* %31, align 4
  call void @Subsample_Vertical(i8* %111, i16* %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 1, i32 2)
  br label %118

118:                                              ; preds = %93, %92
  br label %119

119:                                              ; preds = %118, %52
  %120 = load i32, i32* %25, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %25, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i16*, i16** %22, align 8
  %127 = sext i32 %125 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i16, i16* %126, i64 %128
  store i16* %129, i16** %22, align 8
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %39, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %39, align 4
  %133 = load i32, i32* %39, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i32 0, i32* %39, align 4
  br label %136

136:                                              ; preds = %135, %122
  %137 = load i32, i32* %29, align 4
  %138 = load i32, i32* %39, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %29, align 4
  br label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %39, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  store i32 %145, i32* %36, align 4
  br label %162

146:                                              ; preds = %119
  %147 = load i32, i32* %28, align 4
  %148 = load i32, i32* %25, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i8*, i8** %23, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %23, align 8
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* %25, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %36, align 4
  %156 = load i32, i32* %36, align 4
  %157 = load i32, i32* %39, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = load i32, i32* %39, align 4
  store i32 %160, i32* %36, align 4
  br label %161

161:                                              ; preds = %159, %146
  br label %162

162:                                              ; preds = %161, %144
  %163 = load i32, i32* %24, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load i32, i32* %24, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %37, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %38, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %38, align 4
  %171 = load i32, i32* %38, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  store i32 0, i32* %38, align 4
  br label %174

174:                                              ; preds = %173, %165
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %38, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* %28, align 4
  br label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %38, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %35, align 4
  br label %198

184:                                              ; preds = %162
  %185 = load i32, i32* %24, align 4
  %186 = load i8*, i8** %23, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %23, align 8
  store i32 0, i32* %37, align 4
  %189 = load i32, i32* %28, align 4
  %190 = load i32, i32* %24, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* %35, align 4
  %192 = load i32, i32* %35, align 4
  %193 = load i32, i32* %38, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = load i32, i32* %38, align 4
  store i32 %196, i32* %35, align 4
  br label %197

197:                                              ; preds = %195, %184
  br label %198

198:                                              ; preds = %197, %182
  %199 = load i16*, i16** %22, align 8
  %200 = load i8*, i8** %23, align 8
  %201 = load i32, i32* %37, align 4
  %202 = load i32, i32* %35, align 4
  %203 = load i32, i32* %26, align 4
  %204 = load i32, i32* %28, align 4
  %205 = load i32, i32* %36, align 4
  %206 = load i32, i32* %32, align 4
  %207 = load i32, i32* %33, align 4
  call void @Subsample_Horizontal(i16* %199, i8* %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Subsample_Vertical(i8* %0, i16* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i16*, align 8
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
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i16*, align 8
  store i8* %0, i8** %10, align 8
  store i16* %1, i16** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %20, align 4
  br label %28

28:                                               ; preds = %107, %9
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %111

32:                                               ; preds = %28
  %33 = load i16*, i16** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %20, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %33, i64 %37
  store i16* %38, i16** %26, align 8
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %15, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %16, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %23, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %23, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8* %49, i8** %24, align 8
  %50 = load i32, i32* %23, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %32
  %55 = load i8*, i8** %24, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  br label %61

59:                                               ; preds = %32
  %60 = load i8*, i8** %24, align 8
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i8* [ %58, %54 ], [ %60, %59 ]
  store i8* %62, i8** %25, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %15, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %16, align 4
  %67 = srem i32 %65, %66
  %68 = mul nsw i32 16, %67
  %69 = load i32, i32* %16, align 4
  %70 = ashr i32 %69, 1
  %71 = add nsw i32 %68, %70
  %72 = load i32, i32* %16, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %22, align 4
  %75 = sub nsw i32 16, %74
  store i32 %75, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %103, %61
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load i32, i32* %21, align 4
  %82 = load i8*, i8** %24, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %81, %87
  %89 = load i32, i32* %22, align 4
  %90 = load i8*, i8** %25, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = mul nsw i32 %89, %95
  %97 = add nsw i32 %88, %96
  %98 = trunc i32 %97 to i16
  %99 = load i16*, i16** %26, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %99, i64 %101
  store i16 %98, i16* %102, align 2
  br label %103

103:                                              ; preds = %80
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  br label %76

106:                                              ; preds = %76
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %20, align 4
  br label %28

111:                                              ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Deinterlace(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %193, %6
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %196

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %16, align 8
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i8*, i8** %16, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  br label %47

41:                                               ; preds = %27
  %42 = load i8*, i8** %16, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i8* [ %40, %36 ], [ %46, %41 ]
  store i8* %48, i8** %17, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8*, i8** %16, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  br label %64

59:                                               ; preds = %47
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi i8* [ %58, %53 ], [ %63, %59 ]
  store i8* %65, i8** %18, align 8
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %94, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %18, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %79, %85
  %87 = add nsw i32 %86, 1
  %88 = lshr i32 %87, 1
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %16, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 %89, i8* %93, align 1
  br label %94

94:                                               ; preds = %73
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %69

97:                                               ; preds = %69
  br label %192

98:                                               ; preds = %64
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  store i8* %104, i8** %19, align 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i8*, i8** %19, align 8
  br label %116

109:                                              ; preds = %98
  %110 = load i8*, i8** %19, align 8
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 2, %111
  %113 = sext i32 %112 to i64
  %114 = sub i64 0, %113
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  br label %116

116:                                              ; preds = %109, %107
  %117 = phi i8* [ %108, %107 ], [ %115, %109 ]
  store i8* %117, i8** %20, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 2
  %121 = icmp sge i32 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i8*, i8** %19, align 8
  br label %130

124:                                              ; preds = %116
  %125 = load i8*, i8** %19, align 8
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 2, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  br label %130

130:                                              ; preds = %124, %122
  %131 = phi i8* [ %123, %122 ], [ %129, %124 ]
  store i8* %131, i8** %21, align 8
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %188, %130
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %191

136:                                              ; preds = %132
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8*, i8** %18, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %142, %148
  %150 = mul nsw i32 8, %149
  %151 = load i8*, i8** %19, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %150, %157
  %159 = load i8*, i8** %20, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 %158, %164
  %166 = load i8*, i8** %21, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = sub nsw i32 %165, %171
  store i32 %172, i32* %15, align 4
  %173 = load i8*, i8** @Clip, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp sge i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 8, i32 7
  %179 = add nsw i32 %174, %178
  %180 = ashr i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %173, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = load i8*, i8** %16, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 %183, i8* %187, align 1
  br label %188

188:                                              ; preds = %136
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %132

191:                                              ; preds = %132
  br label %192

192:                                              ; preds = %191, %97
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 2
  store i32 %195, i32* %14, align 4
  br label %23

196:                                              ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Subsample_Horizontal(i16* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i16*, align 8
  %11 = alloca i8*, align 8
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
  %26 = alloca i16*, align 8
  %27 = alloca i16*, align 8
  %28 = alloca i8*, align 8
  store i16* %0, i16** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %115, %9
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %118

33:                                               ; preds = %29
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %20, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %28, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %20, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %17, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %18, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %22, align 4
  %46 = load i16*, i16** %10, align 8
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %46, i64 %48
  store i16* %49, i16** %26, align 8
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load i16*, i16** %26, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 1
  br label %59

57:                                               ; preds = %33
  %58 = load i16*, i16** %26, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i16* [ %56, %54 ], [ %58, %57 ]
  store i16* %60, i16** %27, align 8
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %17, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %18, align 4
  %65 = srem i32 %63, %64
  %66 = mul nsw i32 16, %65
  %67 = load i32, i32* %18, align 4
  %68 = ashr i32 %67, 1
  %69 = add nsw i32 %66, %68
  %70 = load i32, i32* %18, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %24, align 4
  %73 = sub nsw i32 16, %72
  store i32 %73, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %111, %59
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %74
  %79 = load i32, i32* %23, align 4
  %80 = load i16*, i16** %26, align 8
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = mul nsw i32 %79, %82
  %84 = load i32, i32* %24, align 4
  %85 = load i16*, i16** %27, align 8
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %83, %88
  store i32 %89, i32* %25, align 4
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %25, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 128, i32 127
  %95 = add nsw i32 %90, %94
  %96 = ashr i32 %95, 8
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %28, align 8
  store i8 %97, i8* %98, align 1
  %99 = load i32, i32* %15, align 4
  %100 = load i8*, i8** %28, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %28, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i16*, i16** %26, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i16, i16* %104, i64 %105
  store i16* %106, i16** %26, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i16*, i16** %27, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i16, i16* %108, i64 %109
  store i16* %110, i16** %27, align 8
  br label %111

111:                                              ; preds = %78
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %21, align 4
  br label %74

114:                                              ; preds = %74
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %20, align 4
  br label %29

118:                                              ; preds = %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @getc(%struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Write_Frame(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @progressive_sequence, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @progressive_frame, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @Frame_Store_Flag, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11, %8, %2
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %16 = load i8*, i8** @Output_Picture_Filename, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* %16, i32 %17, i32 102) #7
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %20 = load i8**, i8*** %3, align 8
  %21 = load i32, i32* @Coded_Picture_Width, align 4
  %22 = load i32, i32* @vertical_size, align 4
  call void @store_one(i8* %19, i8** %20, i32 0, i32 %21, i32 %22)
  br label %45

23:                                               ; preds = %11
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %25 = load i8*, i8** @Output_Picture_Filename, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* %25, i32 %26, i32 97) #7
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = load i8**, i8*** %3, align 8
  %30 = load i32, i32* @Coded_Picture_Width, align 4
  %31 = shl i32 %30, 1
  %32 = load i32, i32* @vertical_size, align 4
  %33 = ashr i32 %32, 1
  call void @store_one(i8* %28, i8** %29, i32 0, i32 %31, i32 %33)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %35 = load i8*, i8** @Output_Picture_Filename, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* %35, i32 %36, i32 98) #7
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %39 = load i8**, i8*** %3, align 8
  %40 = load i32, i32* @Coded_Picture_Width, align 4
  %41 = load i32, i32* @Coded_Picture_Width, align 4
  %42 = shl i32 %41, 1
  %43 = load i32, i32* @vertical_size, align 4
  %44 = ashr i32 %43, 1
  call void @store_one(i8* %38, i8** %39, i32 %40, i32 %42, i32 %44)
  br label %45

45:                                               ; preds = %23, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_one(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @Output_Type, align 4
  switch i32 %11, label %36 [
    i32 0, label %12
    i32 1, label %18
    i32 2, label %24
    i32 3, label %30
  ]

12:                                               ; preds = %5
  %13 = load i8*, i8** %6, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  call void @store_yuv(i8* %13, i8** %14, i32 %15, i32 %16, i32 %17)
  br label %37

18:                                               ; preds = %5
  %19 = load i8*, i8** %6, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  call void @store_sif(i8* %19, i8** %20, i32 %21, i32 %22, i32 %23)
  br label %37

24:                                               ; preds = %5
  %25 = load i8*, i8** %6, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  call void @store_ppm_tga(i8* %25, i8** %26, i32 %27, i32 %28, i32 %29, i32 1)
  br label %37

30:                                               ; preds = %5
  %31 = load i8*, i8** %6, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  call void @store_ppm_tga(i8* %31, i8** %32, i32 %33, i32 %34, i32 %35, i32 0)
  br label %37

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %36, %30, %24, %18, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_yuv(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @horizontal_size, align 4
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.323, i64 0, i64 0), i8* %15) #7
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %17, i8* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %25 = load i32, i32* @chroma_format, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %27, %5
  %35 = load i32, i32* @chroma_format, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.324, i64 0, i64 0), i8* %42) #7
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %45 = load i8**, i8*** %7, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %44, i8* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.325, i64 0, i64 0), i8* %53) #7
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %56 = load i8**, i8*** %7, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %55, i8* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_sif(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @chroma_format, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  call void @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5.321, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i32, i32* @chroma_format, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8**, i8*** %7, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** @store_sif.u422, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** @store_sif.v422, align 8
  br label %60

29:                                               ; preds = %19
  %30 = load i8*, i8** @store_sif.u422, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @Coded_Picture_Width, align 4
  %34 = ashr i32 %33, 1
  %35 = load i32, i32* @Coded_Picture_Height, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = call noalias i8* @malloc(i64 %37) #7
  store i8* %38, i8** @store_sif.u422, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.315, i64 0, i64 0))
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* @Coded_Picture_Width, align 4
  %43 = ashr i32 %42, 1
  %44 = load i32, i32* @Coded_Picture_Height, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = call noalias i8* @malloc(i64 %46) #7
  store i8* %47, i8** @store_sif.v422, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.315, i64 0, i64 0))
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i8**, i8*** %7, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @store_sif.u422, align 8
  call void @conv420to422(i8* %54, i8* %55)
  %56 = load i8**, i8*** %7, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** @store_sif.v422, align 8
  call void @conv420to422(i8* %58, i8* %59)
  br label %60

60:                                               ; preds = %51, %22
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @strcat(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.322, i64 0, i64 0)) #7
  %63 = load i32, i32* @Quiet_Flag, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @mybasename(i8* %67)
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.318, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i8*, i32, ...) @open(i8* %71, i32 577, i32 438)
  store i32 %72, i32* @outfile, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.319, i64 0, i64 0), i8* %75) #7
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %70
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i8** @optr, align 8
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %141, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %144

82:                                               ; preds = %78
  %83 = load i8**, i8*** %7, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** @store_sif.u422, align 8
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i32, i32* %9, align 4
  %100 = ashr i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  store i8* %104, i8** %14, align 8
  %105 = load i8*, i8** @store_sif.v422, align 8
  %106 = load i32, i32* %8, align 4
  %107 = ashr i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i32, i32* %9, align 4
  %111 = ashr i32 %110, 1
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  store i8* %115, i8** %15, align 8
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %137, %82
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @horizontal_size, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %14, align 8
  %123 = load i8, i8* %121, align 1
  %124 = zext i8 %123 to i32
  call void @putbyte(i32 %124)
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %13, align 8
  %127 = load i8, i8* %125, align 1
  %128 = zext i8 %127 to i32
  call void @putbyte(i32 %128)
  %129 = load i8*, i8** %15, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %15, align 8
  %131 = load i8, i8* %129, align 1
  %132 = zext i8 %131 to i32
  call void @putbyte(i32 %132)
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %13, align 8
  %135 = load i8, i8* %133, align 1
  %136 = zext i8 %135 to i32
  call void @putbyte(i32 %136)
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 2
  store i32 %139, i32* %12, align 4
  br label %116

140:                                              ; preds = %116
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %78

144:                                              ; preds = %78
  %145 = load i8*, i8** @optr, align 8
  %146 = icmp ne i8* %145, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0)
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32, i32* @outfile, align 4
  %149 = load i8*, i8** @optr, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = sub i64 %150, ptrtoint ([4096 x i8]* @obfr to i64)
  %152 = call i64 @write(i32 %148, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %147, %144
  %154 = load i32, i32* @outfile, align 4
  %155 = call i32 @close(i32 %154)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_ppm_tga(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
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
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [256 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %29 = load i32, i32* @chroma_format, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %38

31:                                               ; preds = %6
  %32 = load i8**, i8*** %8, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** @store_ppm_tga.u444, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** @store_ppm_tga.v444, align 8
  br label %106

38:                                               ; preds = %6
  %39 = load i8*, i8** @store_ppm_tga.u444, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @chroma_format, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* @Coded_Picture_Width, align 4
  %46 = ashr i32 %45, 1
  %47 = load i32, i32* @Coded_Picture_Height, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = call noalias i8* @malloc(i64 %49) #7
  store i8* %50, i8** @store_ppm_tga.u422, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.315, i64 0, i64 0))
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32, i32* @Coded_Picture_Width, align 4
  %55 = ashr i32 %54, 1
  %56 = load i32, i32* @Coded_Picture_Height, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = call noalias i8* @malloc(i64 %58) #7
  store i8* %59, i8** @store_ppm_tga.v422, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.315, i64 0, i64 0))
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* @Coded_Picture_Width, align 4
  %65 = load i32, i32* @Coded_Picture_Height, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = call noalias i8* @malloc(i64 %67) #7
  store i8* %68, i8** @store_ppm_tga.u444, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.315, i64 0, i64 0))
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* @Coded_Picture_Width, align 4
  %73 = load i32, i32* @Coded_Picture_Height, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = call noalias i8* @malloc(i64 %75) #7
  store i8* %76, i8** @store_ppm_tga.v444, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  call void @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.315, i64 0, i64 0))
  br label %79

79:                                               ; preds = %78, %71
  br label %80

80:                                               ; preds = %79, %38
  %81 = load i32, i32* @chroma_format, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i8**, i8*** %8, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @store_ppm_tga.u422, align 8
  call void @conv420to422(i8* %86, i8* %87)
  %88 = load i8**, i8*** %8, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** @store_ppm_tga.v422, align 8
  call void @conv420to422(i8* %90, i8* %91)
  %92 = load i8*, i8** @store_ppm_tga.u422, align 8
  %93 = load i8*, i8** @store_ppm_tga.u444, align 8
  call void @conv422to444(i8* %92, i8* %93)
  %94 = load i8*, i8** @store_ppm_tga.v422, align 8
  %95 = load i8*, i8** @store_ppm_tga.v444, align 8
  call void @conv422to444(i8* %94, i8* %95)
  br label %105

96:                                               ; preds = %80
  %97 = load i8**, i8*** %8, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** @store_ppm_tga.u444, align 8
  call void @conv422to444(i8* %99, i8* %100)
  %101 = load i8**, i8*** %8, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** @store_ppm_tga.v444, align 8
  call void @conv422to444(i8* %103, i8* %104)
  br label %105

105:                                              ; preds = %96, %83
  br label %106

106:                                              ; preds = %105, %31
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.316, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.317, i64 0, i64 0)
  %112 = call i8* @strcat(i8* %107, i8* %111) #7
  %113 = load i32, i32* @Quiet_Flag, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %106
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = call i8* @mybasename(i8* %117)
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.318, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %115, %106
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 (i8*, i32, ...) @open(i8* %121, i32 577, i32 438)
  store i32 %122, i32* @outfile, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.319, i64 0, i64 0), i8* %125) #7
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %120
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i8** @optr, align 8
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %140, %130
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 12
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [14 x i8], [14 x i8]* @store_ppm_tga.tga24, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  call void @putbyte(i32 %139)
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %131

143:                                              ; preds = %131
  %144 = load i32, i32* @horizontal_size, align 4
  call void @putword(i32 %144)
  %145 = load i32, i32* %11, align 4
  call void @putword(i32 %145)
  %146 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @store_ppm_tga.tga24, i64 0, i64 12), align 1
  %147 = zext i8 %146 to i32
  call void @putbyte(i32 %147)
  %148 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @store_ppm_tga.tga24, i64 0, i64 13), align 1
  %149 = zext i8 %148 to i32
  call void @putbyte(i32 %149)
  br label %172

150:                                              ; preds = %127
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 0, i64 0
  %152 = load i32, i32* @horizontal_size, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10.320, i64 0, i64 0), i32 %152, i32 %153) #7
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %168, %150
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  call void @putbyte(i32 %167)
  br label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %155

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %143
  %173 = load i32, i32* @matrix_coefficients, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i64 0, i64 %174
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %175, i64 0, i64 0
  %177 = load i32, i32* %176, align 16
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* @matrix_coefficients, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i64 0, i64 %179
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %180, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %22, align 4
  %183 = load i32, i32* @matrix_coefficients, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i64 0, i64 %184
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %185, i64 0, i64 2
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %23, align 4
  %188 = load i32, i32* @matrix_coefficients, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @Inverse_Table_6_9, i64 0, i64 %189
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %190, i64 0, i64 3
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %24, align 4
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %303, %172
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %306

197:                                              ; preds = %193
  %198 = load i8**, i8*** %8, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %13, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %203, i64 %207
  store i8* %208, i8** %25, align 8
  %209 = load i8*, i8** @store_ppm_tga.u444, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %13, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  store i8* %217, i8** %26, align 8
  %218 = load i8*, i8** @store_ppm_tga.v444, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %13, align 4
  %224 = mul nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %221, i64 %225
  store i8* %226, i8** %27, align 8
  store i32 0, i32* %14, align 4
  br label %227

227:                                              ; preds = %299, %197
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @horizontal_size, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %302

231:                                              ; preds = %227
  %232 = load i8*, i8** %26, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %26, align 8
  %234 = load i8, i8* %232, align 1
  %235 = zext i8 %234 to i32
  %236 = sub nsw i32 %235, 128
  store i32 %236, i32* %16, align 4
  %237 = load i8*, i8** %27, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %27, align 8
  %239 = load i8, i8* %237, align 1
  %240 = zext i8 %239 to i32
  %241 = sub nsw i32 %240, 128
  store i32 %241, i32* %17, align 4
  %242 = load i8*, i8** %25, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %25, align 8
  %244 = load i8, i8* %242, align 1
  %245 = zext i8 %244 to i32
  %246 = sub nsw i32 %245, 16
  %247 = mul nsw i32 76309, %246
  store i32 %247, i32* %15, align 4
  %248 = load i8*, i8** @Clip, align 8
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %21, align 4
  %251 = load i32, i32* %17, align 4
  %252 = mul nsw i32 %250, %251
  %253 = add nsw i32 %249, %252
  %254 = add nsw i32 %253, 32768
  %255 = ashr i32 %254, 16
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %248, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  store i32 %259, i32* %18, align 4
  %260 = load i8*, i8** @Clip, align 8
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* %23, align 4
  %263 = load i32, i32* %16, align 4
  %264 = mul nsw i32 %262, %263
  %265 = sub nsw i32 %261, %264
  %266 = load i32, i32* %24, align 4
  %267 = load i32, i32* %17, align 4
  %268 = mul nsw i32 %266, %267
  %269 = sub nsw i32 %265, %268
  %270 = add nsw i32 %269, 32768
  %271 = ashr i32 %270, 16
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %260, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  store i32 %275, i32* %19, align 4
  %276 = load i8*, i8** @Clip, align 8
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %16, align 4
  %280 = mul nsw i32 %278, %279
  %281 = add nsw i32 %277, %280
  %282 = add nsw i32 %281, 32786
  %283 = ashr i32 %282, 16
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %276, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* %12, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %231
  %291 = load i32, i32* %20, align 4
  call void @putbyte(i32 %291)
  %292 = load i32, i32* %19, align 4
  call void @putbyte(i32 %292)
  %293 = load i32, i32* %18, align 4
  call void @putbyte(i32 %293)
  br label %298

294:                                              ; preds = %231
  %295 = load i32, i32* %18, align 4
  call void @putbyte(i32 %295)
  %296 = load i32, i32* %19, align 4
  call void @putbyte(i32 %296)
  %297 = load i32, i32* %20, align 4
  call void @putbyte(i32 %297)
  br label %298

298:                                              ; preds = %294, %290
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %14, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %14, align 4
  br label %227

302:                                              ; preds = %227
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %13, align 4
  br label %193

306:                                              ; preds = %193
  %307 = load i8*, i8** @optr, align 8
  %308 = icmp ne i8* %307, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0)
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = load i32, i32* @outfile, align 4
  %311 = load i8*, i8** @optr, align 8
  %312 = ptrtoint i8* %311 to i64
  %313 = sub i64 %312, ptrtoint ([4096 x i8]* @obfr to i64)
  %314 = call i64 @write(i32 %310, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 %313)
  br label %315

315:                                              ; preds = %309, %306
  %316 = load i32, i32* @outfile, align 4
  %317 = call i32 @close(i32 %316)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @conv420to422(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
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
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %23 = load i32, i32* @Coded_Picture_Width, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @Coded_Picture_Height, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @progressive_frame, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %257

29:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %253, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %256

34:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %245, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %248

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 3
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 0, %44 ], [ %47, %45 ]
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 2
  br label %56

56:                                               ; preds = %53, %52
  %57 = phi i32 [ 0, %52 ], [ %55, %53 ]
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 1
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32 [ 0, %60 ], [ %63, %61 ]
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  br label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %72, %70 ], [ %75, %73 ]
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 2
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 2
  br label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 1
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %84, %82 ], [ %87, %85 ]
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 3
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 3
  br label %100

97:                                               ; preds = %88
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i32 [ %96, %94 ], [ %99, %97 ]
  store i32 %101, i32* %18, align 4
  %102 = load i8*, i8** @Clip, align 8
  %103 = load i8*, i8** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 3, %110
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %14, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = mul nsw i32 16, %119
  %121 = sub nsw i32 %111, %120
  %122 = load i8*, i8** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %15, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = mul nsw i32 67, %129
  %131 = add nsw i32 %121, %130
  %132 = load i8*, i8** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = mul nsw i32 227, %139
  %141 = add nsw i32 %131, %140
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %16, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = mul nsw i32 32, %149
  %151 = sub nsw i32 %141, %150
  %152 = load i8*, i8** %3, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %17, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = mul nsw i32 7, %159
  %161 = add nsw i32 %151, %160
  %162 = add nsw i32 %161, 128
  %163 = ashr i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %102, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %9, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  store i8 %166, i8* %172, align 1
  %173 = load i8*, i8** @Clip, align 8
  %174 = load i8*, i8** %3, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %18, align 4
  %177 = mul nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %174, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = mul nsw i32 3, %181
  %183 = load i8*, i8** %3, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %17, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = mul nsw i32 16, %190
  %192 = sub nsw i32 %182, %191
  %193 = load i8*, i8** %3, align 8
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %16, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = mul nsw i32 67, %200
  %202 = add nsw i32 %192, %201
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* %8, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %203, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = mul nsw i32 227, %210
  %212 = add nsw i32 %202, %211
  %213 = load i8*, i8** %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %15, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %213, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = mul nsw i32 32, %220
  %222 = sub nsw i32 %212, %221
  %223 = load i8*, i8** %3, align 8
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* %14, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %223, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = mul nsw i32 7, %230
  %232 = add nsw i32 %222, %231
  %233 = add nsw i32 %232, 128
  %234 = ashr i32 %233, 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %173, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = load i8*, i8** %4, align 8
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  %242 = mul nsw i32 %239, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %238, i64 %243
  store i8 %237, i8* %244, align 1
  br label %245

245:                                              ; preds = %100
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %35

248:                                              ; preds = %35
  %249 = load i8*, i8** %3, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %3, align 8
  %251 = load i8*, i8** %4, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %4, align 8
  br label %253

253:                                              ; preds = %248
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %7, align 4
  br label %30

256:                                              ; preds = %30
  br label %701

257:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  br label %258

258:                                              ; preds = %697, %257
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %700

262:                                              ; preds = %258
  store i32 0, i32* %8, align 4
  br label %263

263:                                              ; preds = %689, %262
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %6, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %692

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = shl i32 %268, 1
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %8, align 4
  %271 = icmp slt i32 %270, 6
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %276

273:                                              ; preds = %267
  %274 = load i32, i32* %8, align 4
  %275 = sub nsw i32 %274, 6
  br label %276

276:                                              ; preds = %273, %272
  %277 = phi i32 [ 0, %272 ], [ %275, %273 ]
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %8, align 4
  %279 = icmp slt i32 %278, 4
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %284

281:                                              ; preds = %276
  %282 = load i32, i32* %8, align 4
  %283 = sub nsw i32 %282, 4
  br label %284

284:                                              ; preds = %281, %280
  %285 = phi i32 [ 0, %280 ], [ %283, %281 ]
  store i32 %285, i32* %12, align 4
  %286 = load i32, i32* %8, align 4
  %287 = icmp slt i32 %286, 2
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %292

289:                                              ; preds = %284
  %290 = load i32, i32* %8, align 4
  %291 = sub nsw i32 %290, 2
  br label %292

292:                                              ; preds = %289, %288
  %293 = phi i32 [ 0, %288 ], [ %291, %289 ]
  store i32 %293, i32* %14, align 4
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* %6, align 4
  %296 = sub nsw i32 %295, 2
  %297 = icmp slt i32 %294, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %292
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 2
  br label %304

301:                                              ; preds = %292
  %302 = load i32, i32* %6, align 4
  %303 = sub nsw i32 %302, 2
  br label %304

304:                                              ; preds = %301, %298
  %305 = phi i32 [ %300, %298 ], [ %303, %301 ]
  store i32 %305, i32* %17, align 4
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %6, align 4
  %308 = sub nsw i32 %307, 4
  %309 = icmp slt i32 %306, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %311, 4
  br label %316

313:                                              ; preds = %304
  %314 = load i32, i32* %6, align 4
  %315 = sub nsw i32 %314, 2
  br label %316

316:                                              ; preds = %313, %310
  %317 = phi i32 [ %312, %310 ], [ %315, %313 ]
  store i32 %317, i32* %19, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %6, align 4
  %320 = sub nsw i32 %319, 6
  %321 = icmp slt i32 %318, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %316
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 6
  br label %328

325:                                              ; preds = %316
  %326 = load i32, i32* %6, align 4
  %327 = sub nsw i32 %326, 2
  br label %328

328:                                              ; preds = %325, %322
  %329 = phi i32 [ %324, %322 ], [ %327, %325 ]
  store i32 %329, i32* %21, align 4
  %330 = load i8*, i8** @Clip, align 8
  %331 = load i8*, i8** %3, align 8
  %332 = load i32, i32* %5, align 4
  %333 = load i32, i32* %10, align 4
  %334 = mul nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %331, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = mul nsw i32 1, %338
  %340 = load i8*, i8** %3, align 8
  %341 = load i32, i32* %5, align 4
  %342 = load i32, i32* %12, align 4
  %343 = mul nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %340, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = mul nsw i32 7, %347
  %349 = sub nsw i32 %339, %348
  %350 = load i8*, i8** %3, align 8
  %351 = load i32, i32* %5, align 4
  %352 = load i32, i32* %14, align 4
  %353 = mul nsw i32 %351, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %350, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = mul nsw i32 30, %357
  %359 = add nsw i32 %349, %358
  %360 = load i8*, i8** %3, align 8
  %361 = load i32, i32* %5, align 4
  %362 = load i32, i32* %8, align 4
  %363 = mul nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %360, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = mul nsw i32 248, %367
  %369 = add nsw i32 %359, %368
  %370 = load i8*, i8** %3, align 8
  %371 = load i32, i32* %5, align 4
  %372 = load i32, i32* %17, align 4
  %373 = mul nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %370, i64 %374
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = mul nsw i32 21, %377
  %379 = sub nsw i32 %369, %378
  %380 = load i8*, i8** %3, align 8
  %381 = load i32, i32* %5, align 4
  %382 = load i32, i32* %19, align 4
  %383 = mul nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %380, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = zext i8 %386 to i32
  %388 = mul nsw i32 5, %387
  %389 = add nsw i32 %379, %388
  %390 = add nsw i32 %389, 128
  %391 = ashr i32 %390, 8
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %330, i64 %392
  %394 = load i8, i8* %393, align 1
  %395 = load i8*, i8** %4, align 8
  %396 = load i32, i32* %5, align 4
  %397 = load i32, i32* %9, align 4
  %398 = mul nsw i32 %396, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %395, i64 %399
  store i8 %394, i8* %400, align 1
  %401 = load i8*, i8** @Clip, align 8
  %402 = load i8*, i8** %3, align 8
  %403 = load i32, i32* %5, align 4
  %404 = load i32, i32* %12, align 4
  %405 = mul nsw i32 %403, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, i8* %402, i64 %406
  %408 = load i8, i8* %407, align 1
  %409 = zext i8 %408 to i32
  %410 = mul nsw i32 7, %409
  %411 = load i8*, i8** %3, align 8
  %412 = load i32, i32* %5, align 4
  %413 = load i32, i32* %14, align 4
  %414 = mul nsw i32 %412, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %411, i64 %415
  %417 = load i8, i8* %416, align 1
  %418 = zext i8 %417 to i32
  %419 = mul nsw i32 35, %418
  %420 = sub nsw i32 %410, %419
  %421 = load i8*, i8** %3, align 8
  %422 = load i32, i32* %5, align 4
  %423 = load i32, i32* %8, align 4
  %424 = mul nsw i32 %422, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %421, i64 %425
  %427 = load i8, i8* %426, align 1
  %428 = zext i8 %427 to i32
  %429 = mul nsw i32 194, %428
  %430 = add nsw i32 %420, %429
  %431 = load i8*, i8** %3, align 8
  %432 = load i32, i32* %5, align 4
  %433 = load i32, i32* %17, align 4
  %434 = mul nsw i32 %432, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %431, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  %439 = mul nsw i32 110, %438
  %440 = add nsw i32 %430, %439
  %441 = load i8*, i8** %3, align 8
  %442 = load i32, i32* %5, align 4
  %443 = load i32, i32* %19, align 4
  %444 = mul nsw i32 %442, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %441, i64 %445
  %447 = load i8, i8* %446, align 1
  %448 = zext i8 %447 to i32
  %449 = mul nsw i32 24, %448
  %450 = sub nsw i32 %440, %449
  %451 = load i8*, i8** %3, align 8
  %452 = load i32, i32* %5, align 4
  %453 = load i32, i32* %21, align 4
  %454 = mul nsw i32 %452, %453
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8, i8* %451, i64 %455
  %457 = load i8, i8* %456, align 1
  %458 = zext i8 %457 to i32
  %459 = mul nsw i32 4, %458
  %460 = add nsw i32 %450, %459
  %461 = add nsw i32 %460, 128
  %462 = ashr i32 %461, 8
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* %401, i64 %463
  %465 = load i8, i8* %464, align 1
  %466 = load i8*, i8** %4, align 8
  %467 = load i32, i32* %5, align 4
  %468 = load i32, i32* %9, align 4
  %469 = add nsw i32 %468, 2
  %470 = mul nsw i32 %467, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* %466, i64 %471
  store i8 %465, i8* %472, align 1
  %473 = load i32, i32* %8, align 4
  %474 = icmp slt i32 %473, 5
  br i1 %474, label %475, label %476

475:                                              ; preds = %328
  br label %479

476:                                              ; preds = %328
  %477 = load i32, i32* %8, align 4
  %478 = sub nsw i32 %477, 5
  br label %479

479:                                              ; preds = %476, %475
  %480 = phi i32 [ 1, %475 ], [ %478, %476 ]
  store i32 %480, i32* %11, align 4
  %481 = load i32, i32* %8, align 4
  %482 = icmp slt i32 %481, 3
  br i1 %482, label %483, label %484

483:                                              ; preds = %479
  br label %487

484:                                              ; preds = %479
  %485 = load i32, i32* %8, align 4
  %486 = sub nsw i32 %485, 3
  br label %487

487:                                              ; preds = %484, %483
  %488 = phi i32 [ 1, %483 ], [ %486, %484 ]
  store i32 %488, i32* %13, align 4
  %489 = load i32, i32* %8, align 4
  %490 = icmp slt i32 %489, 1
  br i1 %490, label %491, label %492

491:                                              ; preds = %487
  br label %495

492:                                              ; preds = %487
  %493 = load i32, i32* %8, align 4
  %494 = sub nsw i32 %493, 1
  br label %495

495:                                              ; preds = %492, %491
  %496 = phi i32 [ 1, %491 ], [ %494, %492 ]
  store i32 %496, i32* %15, align 4
  %497 = load i32, i32* %8, align 4
  %498 = load i32, i32* %6, align 4
  %499 = sub nsw i32 %498, 1
  %500 = icmp slt i32 %497, %499
  br i1 %500, label %501, label %504

501:                                              ; preds = %495
  %502 = load i32, i32* %8, align 4
  %503 = add nsw i32 %502, 1
  br label %507

504:                                              ; preds = %495
  %505 = load i32, i32* %6, align 4
  %506 = sub nsw i32 %505, 1
  br label %507

507:                                              ; preds = %504, %501
  %508 = phi i32 [ %503, %501 ], [ %506, %504 ]
  store i32 %508, i32* %16, align 4
  %509 = load i32, i32* %8, align 4
  %510 = load i32, i32* %6, align 4
  %511 = sub nsw i32 %510, 3
  %512 = icmp slt i32 %509, %511
  br i1 %512, label %513, label %516

513:                                              ; preds = %507
  %514 = load i32, i32* %8, align 4
  %515 = add nsw i32 %514, 3
  br label %519

516:                                              ; preds = %507
  %517 = load i32, i32* %6, align 4
  %518 = sub nsw i32 %517, 1
  br label %519

519:                                              ; preds = %516, %513
  %520 = phi i32 [ %515, %513 ], [ %518, %516 ]
  store i32 %520, i32* %18, align 4
  %521 = load i32, i32* %8, align 4
  %522 = load i32, i32* %6, align 4
  %523 = sub nsw i32 %522, 5
  %524 = icmp slt i32 %521, %523
  br i1 %524, label %525, label %528

525:                                              ; preds = %519
  %526 = load i32, i32* %8, align 4
  %527 = add nsw i32 %526, 5
  br label %531

528:                                              ; preds = %519
  %529 = load i32, i32* %6, align 4
  %530 = sub nsw i32 %529, 1
  br label %531

531:                                              ; preds = %528, %525
  %532 = phi i32 [ %527, %525 ], [ %530, %528 ]
  store i32 %532, i32* %20, align 4
  %533 = load i32, i32* %8, align 4
  %534 = load i32, i32* %6, align 4
  %535 = sub nsw i32 %534, 7
  %536 = icmp slt i32 %533, %535
  br i1 %536, label %537, label %540

537:                                              ; preds = %531
  %538 = load i32, i32* %8, align 4
  %539 = add nsw i32 %538, 7
  br label %543

540:                                              ; preds = %531
  %541 = load i32, i32* %6, align 4
  %542 = sub nsw i32 %541, 1
  br label %543

543:                                              ; preds = %540, %537
  %544 = phi i32 [ %539, %537 ], [ %542, %540 ]
  store i32 %544, i32* %22, align 4
  %545 = load i8*, i8** @Clip, align 8
  %546 = load i8*, i8** %3, align 8
  %547 = load i32, i32* %5, align 4
  %548 = load i32, i32* %20, align 4
  %549 = mul nsw i32 %547, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, i8* %546, i64 %550
  %552 = load i8, i8* %551, align 1
  %553 = zext i8 %552 to i32
  %554 = mul nsw i32 7, %553
  %555 = load i8*, i8** %3, align 8
  %556 = load i32, i32* %5, align 4
  %557 = load i32, i32* %18, align 4
  %558 = mul nsw i32 %556, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, i8* %555, i64 %559
  %561 = load i8, i8* %560, align 1
  %562 = zext i8 %561 to i32
  %563 = mul nsw i32 35, %562
  %564 = sub nsw i32 %554, %563
  %565 = load i8*, i8** %3, align 8
  %566 = load i32, i32* %5, align 4
  %567 = load i32, i32* %16, align 4
  %568 = mul nsw i32 %566, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i8, i8* %565, i64 %569
  %571 = load i8, i8* %570, align 1
  %572 = zext i8 %571 to i32
  %573 = mul nsw i32 194, %572
  %574 = add nsw i32 %564, %573
  %575 = load i8*, i8** %3, align 8
  %576 = load i32, i32* %5, align 4
  %577 = load i32, i32* %15, align 4
  %578 = mul nsw i32 %576, %577
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* %575, i64 %579
  %581 = load i8, i8* %580, align 1
  %582 = zext i8 %581 to i32
  %583 = mul nsw i32 110, %582
  %584 = add nsw i32 %574, %583
  %585 = load i8*, i8** %3, align 8
  %586 = load i32, i32* %5, align 4
  %587 = load i32, i32* %13, align 4
  %588 = mul nsw i32 %586, %587
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i8, i8* %585, i64 %589
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i32
  %593 = mul nsw i32 24, %592
  %594 = sub nsw i32 %584, %593
  %595 = load i8*, i8** %3, align 8
  %596 = load i32, i32* %5, align 4
  %597 = load i32, i32* %11, align 4
  %598 = mul nsw i32 %596, %597
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, i8* %595, i64 %599
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i32
  %603 = mul nsw i32 4, %602
  %604 = add nsw i32 %594, %603
  %605 = add nsw i32 %604, 128
  %606 = ashr i32 %605, 8
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i8, i8* %545, i64 %607
  %609 = load i8, i8* %608, align 1
  %610 = load i8*, i8** %4, align 8
  %611 = load i32, i32* %5, align 4
  %612 = load i32, i32* %9, align 4
  %613 = add nsw i32 %612, 1
  %614 = mul nsw i32 %611, %613
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i8, i8* %610, i64 %615
  store i8 %609, i8* %616, align 1
  %617 = load i8*, i8** @Clip, align 8
  %618 = load i8*, i8** %3, align 8
  %619 = load i32, i32* %5, align 4
  %620 = load i32, i32* %22, align 4
  %621 = mul nsw i32 %619, %620
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i8, i8* %618, i64 %622
  %624 = load i8, i8* %623, align 1
  %625 = zext i8 %624 to i32
  %626 = mul nsw i32 1, %625
  %627 = load i8*, i8** %3, align 8
  %628 = load i32, i32* %5, align 4
  %629 = load i32, i32* %20, align 4
  %630 = mul nsw i32 %628, %629
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i8, i8* %627, i64 %631
  %633 = load i8, i8* %632, align 1
  %634 = zext i8 %633 to i32
  %635 = mul nsw i32 7, %634
  %636 = sub nsw i32 %626, %635
  %637 = load i8*, i8** %3, align 8
  %638 = load i32, i32* %5, align 4
  %639 = load i32, i32* %18, align 4
  %640 = mul nsw i32 %638, %639
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i8, i8* %637, i64 %641
  %643 = load i8, i8* %642, align 1
  %644 = zext i8 %643 to i32
  %645 = mul nsw i32 30, %644
  %646 = add nsw i32 %636, %645
  %647 = load i8*, i8** %3, align 8
  %648 = load i32, i32* %5, align 4
  %649 = load i32, i32* %16, align 4
  %650 = mul nsw i32 %648, %649
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i8, i8* %647, i64 %651
  %653 = load i8, i8* %652, align 1
  %654 = zext i8 %653 to i32
  %655 = mul nsw i32 248, %654
  %656 = add nsw i32 %646, %655
  %657 = load i8*, i8** %3, align 8
  %658 = load i32, i32* %5, align 4
  %659 = load i32, i32* %15, align 4
  %660 = mul nsw i32 %658, %659
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, i8* %657, i64 %661
  %663 = load i8, i8* %662, align 1
  %664 = zext i8 %663 to i32
  %665 = mul nsw i32 21, %664
  %666 = sub nsw i32 %656, %665
  %667 = load i8*, i8** %3, align 8
  %668 = load i32, i32* %5, align 4
  %669 = load i32, i32* %13, align 4
  %670 = mul nsw i32 %668, %669
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, i8* %667, i64 %671
  %673 = load i8, i8* %672, align 1
  %674 = zext i8 %673 to i32
  %675 = mul nsw i32 5, %674
  %676 = add nsw i32 %666, %675
  %677 = add nsw i32 %676, 128
  %678 = ashr i32 %677, 8
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i8, i8* %617, i64 %679
  %681 = load i8, i8* %680, align 1
  %682 = load i8*, i8** %4, align 8
  %683 = load i32, i32* %5, align 4
  %684 = load i32, i32* %9, align 4
  %685 = add nsw i32 %684, 3
  %686 = mul nsw i32 %683, %685
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, i8* %682, i64 %687
  store i8 %681, i8* %688, align 1
  br label %689

689:                                              ; preds = %543
  %690 = load i32, i32* %8, align 4
  %691 = add nsw i32 %690, 2
  store i32 %691, i32* %8, align 4
  br label %263

692:                                              ; preds = %263
  %693 = load i8*, i8** %3, align 8
  %694 = getelementptr inbounds i8, i8* %693, i32 1
  store i8* %694, i8** %3, align 8
  %695 = load i8*, i8** %4, align 8
  %696 = getelementptr inbounds i8, i8* %695, i32 1
  store i8* %696, i8** %4, align 8
  br label %697

697:                                              ; preds = %692
  %698 = load i32, i32* %7, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %7, align 4
  br label %258

700:                                              ; preds = %258
  br label %701

701:                                              ; preds = %700, %256
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @conv422to444(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
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
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i32, i32* @Coded_Picture_Width, align 4
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %164

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %160, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @Coded_Picture_Height, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %163

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %148, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %151

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 2
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i32 [ 0, %34 ], [ %37, %35 ]
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 2
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 2
  br label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ %66, %64 ], [ %69, %67 ]
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 3
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 3
  br label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 1
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %78, %76 ], [ %81, %79 ]
  store i32 %83, i32* %14, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 %88, i8* %92, align 1
  %93 = load i8*, i8** @Clip, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %3, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %99, %105
  %107 = mul nsw i32 21, %106
  %108 = load i8*, i8** %3, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %113, %119
  %121 = mul nsw i32 52, %120
  %122 = sub nsw i32 %107, %121
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8*, i8** %3, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %128, %134
  %136 = mul nsw i32 159, %135
  %137 = add nsw i32 %122, %136
  %138 = add nsw i32 %137, 128
  %139 = ashr i32 %138, 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %93, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8 %142, i8* %147, align 1
  br label %148

148:                                              ; preds = %82
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %25

151:                                              ; preds = %25
  %152 = load i32, i32* %7, align 4
  %153 = load i8*, i8** %3, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %3, align 8
  %156 = load i32, i32* @Coded_Picture_Width, align 4
  %157 = load i8*, i8** %4, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %4, align 8
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %20

163:                                              ; preds = %20
  br label %368

164:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %364, %164
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @Coded_Picture_Height, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %367

169:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %352, %169
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %355

174:                                              ; preds = %170
  %175 = load i32, i32* %5, align 4
  %176 = shl i32 %175, 1
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp slt i32 %177, 3
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %183

180:                                              ; preds = %174
  %181 = load i32, i32* %5, align 4
  %182 = sub nsw i32 %181, 3
  br label %183

183:                                              ; preds = %180, %179
  %184 = phi i32 [ 0, %179 ], [ %182, %180 ]
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %191

188:                                              ; preds = %183
  %189 = load i32, i32* %5, align 4
  %190 = sub nsw i32 %189, 2
  br label %191

191:                                              ; preds = %188, %187
  %192 = phi i32 [ 0, %187 ], [ %190, %188 ]
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %199

196:                                              ; preds = %191
  %197 = load i32, i32* %5, align 4
  %198 = sub nsw i32 %197, 1
  br label %199

199:                                              ; preds = %196, %195
  %200 = phi i32 [ 0, %195 ], [ %198, %196 ]
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* %7, align 4
  %203 = sub nsw i32 %202, 1
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  br label %211

208:                                              ; preds = %199
  %209 = load i32, i32* %7, align 4
  %210 = sub nsw i32 %209, 1
  br label %211

211:                                              ; preds = %208, %205
  %212 = phi i32 [ %207, %205 ], [ %210, %208 ]
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* %7, align 4
  %215 = sub nsw i32 %214, 2
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 2
  br label %223

220:                                              ; preds = %211
  %221 = load i32, i32* %7, align 4
  %222 = sub nsw i32 %221, 1
  br label %223

223:                                              ; preds = %220, %217
  %224 = phi i32 [ %219, %217 ], [ %222, %220 ]
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* %7, align 4
  %227 = sub nsw i32 %226, 3
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 3
  br label %235

232:                                              ; preds = %223
  %233 = load i32, i32* %7, align 4
  %234 = sub nsw i32 %233, 1
  br label %235

235:                                              ; preds = %232, %229
  %236 = phi i32 [ %231, %229 ], [ %234, %232 ]
  store i32 %236, i32* %14, align 4
  %237 = load i8*, i8** @Clip, align 8
  %238 = load i8*, i8** %3, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = mul nsw i32 5, %243
  %245 = load i8*, i8** %3, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = mul nsw i32 21, %250
  %252 = sub nsw i32 %244, %251
  %253 = load i8*, i8** %3, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = mul nsw i32 70, %258
  %260 = add nsw i32 %252, %259
  %261 = load i8*, i8** %3, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = mul nsw i32 228, %266
  %268 = add nsw i32 %260, %267
  %269 = load i8*, i8** %3, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = mul nsw i32 37, %274
  %276 = sub nsw i32 %268, %275
  %277 = load i8*, i8** %3, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = mul nsw i32 11, %282
  %284 = add nsw i32 %276, %283
  %285 = add nsw i32 %284, 128
  %286 = ashr i32 %285, 8
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %237, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = load i8*, i8** %4, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  store i8 %289, i8* %293, align 1
  %294 = load i8*, i8** @Clip, align 8
  %295 = load i8*, i8** %3, align 8
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = mul nsw i32 5, %300
  %302 = load i8*, i8** %3, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = mul nsw i32 21, %307
  %309 = sub nsw i32 %301, %308
  %310 = load i8*, i8** %3, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = mul nsw i32 70, %315
  %317 = add nsw i32 %309, %316
  %318 = load i8*, i8** %3, align 8
  %319 = load i32, i32* %5, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %318, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = mul nsw i32 228, %323
  %325 = add nsw i32 %317, %324
  %326 = load i8*, i8** %3, align 8
  %327 = load i32, i32* %11, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = mul nsw i32 37, %331
  %333 = sub nsw i32 %325, %332
  %334 = load i8*, i8** %3, align 8
  %335 = load i32, i32* %10, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = mul nsw i32 11, %339
  %341 = add nsw i32 %333, %340
  %342 = add nsw i32 %341, 128
  %343 = ashr i32 %342, 8
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %294, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = load i8*, i8** %4, align 8
  %348 = load i32, i32* %6, align 4
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %347, i64 %350
  store i8 %346, i8* %351, align 1
  br label %352

352:                                              ; preds = %235
  %353 = load i32, i32* %5, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %5, align 4
  br label %170

355:                                              ; preds = %170
  %356 = load i32, i32* %7, align 4
  %357 = load i8*, i8** %3, align 8
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  store i8* %359, i8** %3, align 8
  %360 = load i32, i32* @Coded_Picture_Width, align 4
  %361 = load i8*, i8** %4, align 8
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i8, i8* %361, i64 %362
  store i8* %363, i8** %4, align 8
  br label %364

364:                                              ; preds = %355
  %365 = load i32, i32* %8, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %8, align 4
  br label %165

367:                                              ; preds = %165
  br label %368

368:                                              ; preds = %367, %163
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @mybasename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strrchr(i8* %4, i32 47) #9
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
define internal void @putbyte(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i8
  %5 = load i8*, i8** @optr, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** @optr, align 8
  store i8 %4, i8* %5, align 1
  %7 = load i8*, i8** @optr, align 8
  %8 = icmp eq i8* %7, getelementptr inbounds (i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 4096)
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @outfile, align 4
  %11 = call i64 @write(i32 %10, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 4096)
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i8** @optr, align 8
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @putword(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @putbyte(i32 %3)
  %4 = load i32, i32* %2, align 4
  %5 = ashr i32 %4, 8
  call void @putbyte(i32 %5)
  ret void
}

declare dso_local i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal void @store_yuv1(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @Quiet_Flag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @mybasename(i8* %20)
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.318, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %18, %6
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (i8*, i32, ...) @open(i8* %24, i32 577, i32 438)
  store i32 %25, i32* @outfile, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.319, i64 0, i64 0), i8* %28) #7
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i8** @optr, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %15, align 8
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %54, %35
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %15, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  call void @putbyte(i32 %53)
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %45

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %31

61:                                               ; preds = %31
  %62 = load i8*, i8** @optr, align 8
  %63 = icmp ne i8* %62, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0)
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @outfile, align 4
  %66 = load i8*, i8** @optr, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = sub i64 %67, ptrtoint ([4096 x i8]* @obfr to i64)
  %69 = call i64 @write(i32 %65, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* @outfile, align 4
  %72 = call i32 @close(i32 %71)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Substitute_Frame_Buffer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @Second_Field, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @picture_structure, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @Second_Field, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @picture_coding_type, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %24 = load i32, i32* %5, align 4
  call void @Read_Frame(i8* %23, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i64 0, i64 0), i32 %24)
  br label %41

25:                                               ; preds = %17
  %26 = load i32, i32* @picture_coding_type, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @Substitute_Frame_Buffer.bgate, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  %33 = load i32, i32* @temporal_reference, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %39 = load i32, i32* %5, align 4
  call void @Read_Frame(i8* %38, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i64 0, i64 0), i32 %39)
  br label %40

40:                                               ; preds = %31, %28, %25
  br label %41

41:                                               ; preds = %40, %20
  br label %67

42:                                               ; preds = %14
  %43 = load i32, i32* @Second_Field, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* @picture_coding_type, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i32, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @picture_coding_type, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %5, align 4
  br label %63

56:                                               ; preds = %51, %48
  %57 = load i32, i32* @temporal_reference, align 4
  %58 = load i32, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %56, %54
  %64 = load i8*, i8** @Substitute_Picture_Filename, align 8
  %65 = load i32, i32* %5, align 4
  call void @Read_Frame(i8* %64, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i64 0, i64 0), i32 %65)
  br label %66

66:                                               ; preds = %63, %45, %42
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %8
  %69 = load i32, i32* @picture_coding_type, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* @Substitute_Frame_Buffer.bgate, align 4
  br label %73

72:                                               ; preds = %68
  store i32 0, i32* @Substitute_Frame_Buffer.bgate, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* @picture_structure, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @Second_Field, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @temporal_reference, align 4
  store i32 %80, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4
  %81 = load i32, i32* %3, align 4
  store i32 %81, i32* @Substitute_Frame_Buffer.previous_bitstream_framenum, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @picture_coding_type, align 4
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* @picture_structure, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @Second_Field, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @temporal_reference, align 4
  store i32 %92, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4
  %93 = load i32, i32* %3, align 4
  store i32 %93, i32* @Substitute_Frame_Buffer.previous_anchor_bitstream_framenum, align 4
  br label %94

94:                                               ; preds = %91, %88, %82
  %95 = load i32, i32* @picture_coding_type, align 4
  store i32 %95, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Read_Frame(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.328, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @Big_Picture_Flag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @Extract_Components(i8* %19, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %8, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @Read_Components(i8* %23, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.329, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* @Second_Field, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* @picture_coding_type, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* @picture_structure, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @picture_structure, align 4
  %43 = icmp eq i32 %42, 3
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  store i32 %45, i32* %9, align 4
  br label %47

46:                                               ; preds = %34, %31
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 0), align 16
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @Coded_Picture_Width, align 4
  %53 = load i32, i32* @Coded_Picture_Height, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  call void @Copy_Frame(i8* %48, i8* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %56 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 1), align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @Chroma_Width, align 4
  %61 = load i32, i32* @Chroma_Height, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  call void @Copy_Frame(i8* %56, i8* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %64 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i64 0, i64 2), align 16
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @Chroma_Width, align 4
  %69 = load i32, i32* @Chroma_Height, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  call void @Copy_Frame(i8* %64, i8* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Extract_Components(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.335, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %8, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.336, i64 0, i64 0), i8* %16) #7
  store i32 -1, i32* %4, align 4
  br label %118

18:                                               ; preds = %3
  %19 = load i32, i32* @Coded_Picture_Width, align 4
  %20 = load i32, i32* @Coded_Picture_Height, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @chroma_format, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 3
  store i32 %26, i32* %10, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load i32, i32* @chroma_format, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %10, align 4
  br label %44

33:                                               ; preds = %27
  %34 = load i32, i32* @chroma_format, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 3
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @chroma_format, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.337, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @fseek(%struct._IO_FILE* %49, i64 %51, i32 0)
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %70, %45
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @Coded_Picture_Height, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i8**, i8*** %6, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @Coded_Picture_Width, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i32, i32* @Coded_Picture_Width, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %69 = call i64 @fread(i8* %65, i64 1, i64 %67, %struct._IO_FILE* %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %53

73:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @Chroma_Height, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @Chroma_Width, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i32, i32* @Chroma_Width, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %90 = call i64 @fread(i8* %86, i64 1, i64 %88, %struct._IO_FILE* %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %74

94:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @Chroma_Height, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i8**, i8*** %6, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @Chroma_Width, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = load i32, i32* @Chroma_Width, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %111 = call i64 @fread(i8* %107, i64 1, i64 %109, %struct._IO_FILE* %110)
  br label %112

112:                                              ; preds = %99
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %95

115:                                              ; preds = %95
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %117 = call i32 @fclose(%struct._IO_FILE* %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %15
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Read_Components(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* %11, i32 %12) #7
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.330, i64 0, i64 0), i8* %15) #7
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @Coded_Picture_Width, align 4
  %22 = load i32, i32* @Coded_Picture_Height, align 4
  %23 = call i32 @Read_Component(i8* %17, i8* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.331, i64 0, i64 0), i8* %27) #7
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @Chroma_Width, align 4
  %34 = load i32, i32* @Chroma_Height, align 4
  %35 = call i32 @Read_Component(i8* %29, i8* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.332, i64 0, i64 0), i8* %39) #7
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @Chroma_Width, align 4
  %46 = load i32, i32* @Chroma_Height, align 4
  %47 = call i32 @Read_Component(i8* %41, i8* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define internal void @Copy_Frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %6
  store i32 2, i32* %17, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %23, %20
  br label %29

28:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  br label %29

29:                                               ; preds = %28, %27
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 %46, i8* %52, align 1
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %17, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %30

71:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Read_Component(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i32, ...) @open(i8* %16, i32 0)
  store i32 %17, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.333, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %5, align 4
  br label %43

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = call i64 @read(i32 %26, i8* %27, i64 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9.334, i64 0, i64 0), i32 %36, i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %25
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @close(i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %22
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Next_Packet() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %161, %0
  %4 = call i32 @Get_Long()
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %9, %3
  %6 = load i32, i32* %1, align 4
  %7 = and i32 %6, -256
  %8 = icmp ne i32 %7, 256
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = shl i32 %10, 8
  %12 = call i32 @Get_Byte()
  %13 = or i32 %11, %12
  store i32 %13, i32* %1, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  switch i32 %15, label %145 [
    i32 442, label %16
    i32 480, label %21
    i32 441, label %104
  ]

16:                                               ; preds = %14
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %18 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %161

21:                                               ; preds = %14
  %22 = call i32 @Get_Word()
  store i32 %22, i32* %1, align 4
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %30 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = call i32 @Get_Byte()
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = lshr i32 %32, 6
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  %36 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %37 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  %40 = call i32 @Get_Byte()
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %43, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.340, i64 0, i64 0))
  br label %162

48:                                               ; preds = %21
  %49 = load i32, i32* %1, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %55, %51
  %53 = call i32 @Get_Byte()
  store i32 %53, i32* %1, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %52

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %1, align 4
  %60 = icmp uge i32 %59, 64
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %1, align 4
  %63 = icmp uge i32 %62, 128
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.341, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

67:                                               ; preds = %61
  %68 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %69 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = call i32 @Get_Byte()
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %67, %58
  %74 = load i32, i32* %1, align 4
  %75 = icmp uge i32 %74, 48
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %1, align 4
  %78 = icmp uge i32 %77, 64
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.341, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

82:                                               ; preds = %76
  %83 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %84 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 9
  store i8* %86, i8** %84, align 8
  br label %103

87:                                               ; preds = %73
  %88 = load i32, i32* %1, align 4
  %89 = icmp uge i32 %88, 32
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %92 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %92, align 8
  br label %102

95:                                               ; preds = %87
  %96 = load i32, i32* %1, align 4
  %97 = icmp ne i32 %96, 15
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.341, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %82
  br label %162

104:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %108, %104
  %106 = load i32, i32* %2, align 4
  %107 = icmp slt i32 %106, 2048
  br i1 %107, label %108, label %133

108:                                              ; preds = %105
  %109 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %110 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %109, i32 0, i32 1
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %110, i64 0, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %116 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %115, i32 0, i32 1
  %117 = load i32, i32* %2, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %2, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds [2048 x i8], [2048 x i8]* %116, i64 0, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %122 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %121, i32 0, i32 1
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %122, i64 0, i64 %125
  store i8 1, i8* %126, align 1
  %127 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %128 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %127, i32 0, i32 1
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %128, i64 0, i64 %131
  store i8 -73, i8* %132, align 1
  br label %105

133:                                              ; preds = %105
  %134 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %135 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %134, i32 0, i32 1
  %136 = getelementptr inbounds [2048 x i8], [2048 x i8]* %135, i64 0, i64 0
  %137 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %138 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %140 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds [2048 x i8], [2048 x i8]* %140, i64 0, i64 0
  %142 = getelementptr inbounds i8, i8* %141, i64 2048
  %143 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %144 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  br label %162

145:                                              ; preds = %14
  %146 = load i32, i32* %1, align 4
  %147 = icmp uge i32 %146, 443
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = call i32 @Get_Word()
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* %1, align 4
  %151 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %152 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = zext i32 %150 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %152, align 8
  br label %160

156:                                              ; preds = %145
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = load i32, i32* %1, align 4
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2.342, i64 0, i64 0), i32 %158)
  call void @exit(i32 1) #8
  unreachable

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %16
  br label %3

162:                                              ; preds = %133, %103, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Long() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Word()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 16
  %5 = call i32 @Get_Word()
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Flush_Buffer32() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 4
  store i32 0, i32* %3, align 8
  %4 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = sub nsw i32 %7, 32
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @System_Stream_Flag, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %0
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %16 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -4
  %19 = icmp uge i8* %14, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 24
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %26 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = icmp uge i8* %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call void @Next_Packet()
  br label %33

33:                                               ; preds = %32, %24
  %34 = call i32 @Get_Byte()
  %35 = load i32, i32* %1, align 4
  %36 = sub nsw i32 24, %35
  %37 = shl i32 %34, %36
  %38 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %39 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %1, align 4
  br label %21

44:                                               ; preds = %21
  br label %76

45:                                               ; preds = %11, %0
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %1, align 4
  %48 = icmp sle i32 %47, 24
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %51 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %54 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 2048
  %57 = icmp uge i8* %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  call void @Fill_Buffer()
  br label %59

59:                                               ; preds = %58, %49
  %60 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %61 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %61, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %1, align 4
  %67 = sub nsw i32 24, %66
  %68 = shl i32 %65, %67
  %69 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %70 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 8
  store i32 %74, i32* %1, align 4
  br label %46

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75, %44
  %77 = load i32, i32* %1, align 4
  %78 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %79 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits32() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Show_Bits(i32 32)
  store i32 %2, i32* %1, align 4
  call void @Flush_Buffer32()
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
