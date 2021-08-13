; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VLCtabI = type { i32, i32 }
%struct.ld = type { i32, [2051 x i8], i8*, [16 x i8], i32, i32, [12 x [64 x i16]] }
%struct.RunCoef = type { i32, i32, i32 }

@msk = internal global [33 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647, i32 -1], align 16
@codtab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@mcbpctab = dso_local global [21 x i32] [i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 255], align 16
@mcbpc_intratab = dso_local global [9 x i32] [i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 255], align 16
@modb_tab = dso_local global [3 x i32] [i32 0, i32 1, i32 2], align 4
@ycbpb_tab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@uvcbpb_tab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@cbpytab = dso_local global [16 x i32] [i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@cbpy_intratab = dso_local global [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@dquanttab = dso_local global [4 x i32] [i32 1, i32 0, i32 3, i32 4], align 16
@mvdtab = dso_local global [64 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 16
@intradctab = dso_local global [254 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127, i32 255, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254], align 16
@tcoeftab = dso_local global [103 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 33, i32 34, i32 35, i32 36, i32 49, i32 50, i32 51, i32 65, i32 66, i32 67, i32 81, i32 82, i32 83, i32 97, i32 98, i32 99, i32 113, i32 114, i32 129, i32 130, i32 145, i32 146, i32 161, i32 162, i32 177, i32 193, i32 209, i32 225, i32 241, i32 257, i32 273, i32 289, i32 305, i32 321, i32 337, i32 353, i32 369, i32 385, i32 401, i32 417, i32 4097, i32 4098, i32 4099, i32 4113, i32 4114, i32 4129, i32 4145, i32 4161, i32 4177, i32 4193, i32 4209, i32 4225, i32 4241, i32 4257, i32 4273, i32 4289, i32 4305, i32 4321, i32 4337, i32 4353, i32 4369, i32 4385, i32 4401, i32 4417, i32 4433, i32 4449, i32 4465, i32 4481, i32 4497, i32 4513, i32 4529, i32 4545, i32 4561, i32 4577, i32 4593, i32 4609, i32 4625, i32 4641, i32 4657, i32 4673, i32 4689, i32 4705, i32 4721, i32 4737, i32 7167], align 16
@signtab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@lasttab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@last_intratab = dso_local global [2 x i32] [i32 0, i32 1], align 4
@runtab = dso_local global [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63], align 16
@leveltab = dso_local global [254 x i32] [i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254, i32 255, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127], align 16
@cumf_COD = dso_local global [3 x i32] [i32 16383, i32 6849, i32 0], align 4
@cumf_MCBPC = dso_local global [22 x i32] [i32 16383, i32 4105, i32 3088, i32 2367, i32 1988, i32 1621, i32 1612, i32 1609, i32 1608, i32 496, i32 353, i32 195, i32 77, i32 22, i32 17, i32 12, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@cumf_MCBPC_intra = dso_local global [10 x i32] [i32 16383, i32 7410, i32 6549, i32 5188, i32 442, i32 182, i32 181, i32 141, i32 1, i32 0], align 16
@cumf_MODB = dso_local global [4 x i32] [i32 16383, i32 6062, i32 2130, i32 0], align 16
@cumf_YCBPB = dso_local global [3 x i32] [i32 16383, i32 6062, i32 0], align 4
@cumf_UVCBPB = dso_local global [3 x i32] [i32 16383, i32 491, i32 0], align 4
@cumf_CBPY = dso_local global [17 x i32] [i32 16383, i32 14481, i32 13869, i32 13196, i32 12568, i32 11931, i32 11185, i32 10814, i32 9796, i32 9150, i32 8781, i32 7933, i32 6860, i32 6116, i32 4873, i32 3538, i32 0], align 16
@cumf_CBPY_intra = dso_local global [17 x i32] [i32 16383, i32 13619, i32 13211, i32 12933, i32 12562, i32 12395, i32 11913, i32 11783, i32 11004, i32 10782, i32 10689, i32 9928, i32 9353, i32 8945, i32 8407, i32 7795, i32 0], align 16
@cumf_DQUANT = dso_local global [5 x i32] [i32 16383, i32 12287, i32 8192, i32 4095, i32 0], align 16
@cumf_MVD = dso_local global [65 x i32] [i32 16383, i32 16380, i32 16369, i32 16365, i32 16361, i32 16357, i32 16350, i32 16343, i32 16339, i32 16333, i32 16326, i32 16318, i32 16311, i32 16306, i32 16298, i32 16291, i32 16283, i32 16272, i32 16261, i32 16249, i32 16235, i32 16222, i32 16207, i32 16175, i32 16141, i32 16094, i32 16044, i32 15936, i32 15764, i32 15463, i32 14956, i32 13924, i32 11491, i32 4621, i32 2264, i32 1315, i32 854, i32 583, i32 420, i32 326, i32 273, i32 229, i32 196, i32 166, i32 148, i32 137, i32 123, i32 114, i32 101, i32 91, i32 82, i32 76, i32 66, i32 59, i32 53, i32 46, i32 36, i32 30, i32 26, i32 24, i32 18, i32 14, i32 10, i32 5, i32 0], align 16
@cumf_INTRADC = dso_local global [255 x i32] [i32 16383, i32 16380, i32 16379, i32 16378, i32 16377, i32 16376, i32 16370, i32 16361, i32 16360, i32 16359, i32 16358, i32 16357, i32 16356, i32 16355, i32 16343, i32 16238, i32 16237, i32 16236, i32 16230, i32 16221, i32 16220, i32 16205, i32 16190, i32 16169, i32 16151, i32 16130, i32 16109, i32 16094, i32 16070, i32 16037, i32 16007, i32 15962, i32 15938, i32 15899, i32 15854, i32 15815, i32 15788, i32 15743, i32 15689, i32 15656, i32 15617, i32 15560, i32 15473, i32 15404, i32 15296, i32 15178, i32 15106, i32 14992, i32 14868, i32 14738, i32 14593, i32 14438, i32 14283, i32 14169, i32 14064, i32 14004, i32 13914, i32 13824, i32 13752, i32 13671, i32 13590, i32 13515, i32 13458, i32 13380, i32 13305, i32 13230, i32 13143, i32 13025, i32 12935, i32 12878, i32 12794, i32 12743, i32 12656, i32 12596, i32 12521, i32 12443, i32 12359, i32 12278, i32 12200, i32 12131, i32 12047, i32 12002, i32 11948, i32 11891, i32 11828, i32 11744, i32 11663, i32 11588, i32 11495, i32 11402, i32 11288, i32 11204, i32 11126, i32 11039, i32 10961, i32 10883, i32 10787, i32 10679, i32 10583, i32 10481, i32 10360, i32 10227, i32 10113, i32 9961, i32 9828, i32 9717, i32 9584, i32 9485, i32 9324, i32 9112, i32 9019, i32 8908, i32 8766, i32 8584, i32 8426, i32 8211, i32 7920, i32 7663, i32 7406, i32 7152, i32 6904, i32 6677, i32 6453, i32 6265, i32 6101, i32 5904, i32 5716, i32 5489, i32 5307, i32 5056, i32 4850, i32 4569, i32 4284, i32 3966, i32 3712, i32 3518, i32 3342, i32 3206, i32 3048, i32 2909, i32 2773, i32 2668, i32 2596, i32 2512, i32 2370, i32 2295, i32 2232, i32 2166, i32 2103, i32 2022, i32 1956, i32 1887, i32 1830, i32 1803, i32 1770, i32 1728, i32 1674, i32 1635, i32 1599, i32 1557, i32 1500, i32 1482, i32 1434, i32 1389, i32 1356, i32 1317, i32 1284, i32 1245, i32 1200, i32 1179, i32 1140, i32 1110, i32 1092, i32 1062, i32 1044, i32 1035, i32 1014, i32 1008, i32 993, i32 981, i32 954, i32 936, i32 912, i32 894, i32 876, i32 864, i32 849, i32 828, i32 816, i32 801, i32 792, i32 777, i32 756, i32 732, i32 690, i32 660, i32 642, i32 615, i32 597, i32 576, i32 555, i32 522, i32 489, i32 459, i32 435, i32 411, i32 405, i32 396, i32 387, i32 375, i32 360, i32 354, i32 345, i32 344, i32 329, i32 314, i32 293, i32 278, i32 251, i32 236, i32 230, i32 224, i32 215, i32 214, i32 208, i32 199, i32 193, i32 184, i32 178, i32 169, i32 154, i32 127, i32 100, i32 94, i32 73, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 9, i32 0], align 16
@cumf_TCOEF1 = dso_local global [104 x i32] [i32 16383, i32 13455, i32 12458, i32 12079, i32 11885, i32 11800, i32 11738, i32 11700, i32 11681, i32 11661, i32 11651, i32 11645, i32 11641, i32 10572, i32 10403, i32 10361, i32 10346, i32 10339, i32 10335, i32 9554, i32 9445, i32 9427, i32 9419, i32 9006, i32 8968, i32 8964, i32 8643, i32 8627, i32 8624, i32 8369, i32 8354, i32 8352, i32 8200, i32 8192, i32 8191, i32 8039, i32 8036, i32 7920, i32 7917, i32 7800, i32 7793, i32 7730, i32 7727, i32 7674, i32 7613, i32 7564, i32 7513, i32 7484, i32 7466, i32 7439, i32 7411, i32 7389, i32 7373, i32 7369, i32 7359, i32 7348, i32 7321, i32 7302, i32 7294, i32 5013, i32 4819, i32 4789, i32 4096, i32 4073, i32 3373, i32 3064, i32 2674, i32 2357, i32 2177, i32 1975, i32 1798, i32 1618, i32 1517, i32 1421, i32 1303, i32 1194, i32 1087, i32 1027, i32 960, i32 890, i32 819, i32 758, i32 707, i32 680, i32 656, i32 613, i32 566, i32 534, i32 505, i32 475, i32 465, i32 449, i32 430, i32 395, i32 358, i32 335, i32 324, i32 303, i32 295, i32 286, i32 272, i32 233, i32 215, i32 0], align 16
@cumf_TCOEF2 = dso_local global [104 x i32] [i32 16383, i32 13582, i32 12709, i32 12402, i32 12262, i32 12188, i32 12150, i32 12131, i32 12125, i32 12117, i32 12113, i32 12108, i32 12104, i32 10567, i32 10180, i32 10070, i32 10019, i32 9998, i32 9987, i32 9158, i32 9037, i32 9010, i32 9005, i32 8404, i32 8323, i32 8312, i32 7813, i32 7743, i32 7726, i32 7394, i32 7366, i32 7364, i32 7076, i32 7062, i32 7060, i32 6810, i32 6797, i32 6614, i32 6602, i32 6459, i32 6454, i32 6304, i32 6303, i32 6200, i32 6121, i32 6059, i32 6012, i32 5973, i32 5928, i32 5893, i32 5871, i32 5847, i32 5823, i32 5809, i32 5796, i32 5781, i32 5771, i32 5763, i32 5752, i32 4754, i32 4654, i32 4631, i32 3934, i32 3873, i32 3477, i32 3095, i32 2758, i32 2502, i32 2257, i32 2054, i32 1869, i32 1715, i32 1599, i32 1431, i32 1305, i32 1174, i32 1059, i32 983, i32 901, i32 839, i32 777, i32 733, i32 683, i32 658, i32 606, i32 565, i32 526, i32 488, i32 456, i32 434, i32 408, i32 380, i32 361, i32 327, i32 310, i32 296, i32 267, i32 259, i32 249, i32 239, i32 230, i32 221, i32 214, i32 0], align 16
@cumf_TCOEF3 = dso_local global [104 x i32] [i32 16383, i32 13532, i32 12677, i32 12342, i32 12195, i32 12112, i32 12059, i32 12034, i32 12020, i32 12008, i32 12003, i32 12002, i32 12001, i32 10586, i32 10297, i32 10224, i32 10202, i32 10195, i32 10191, i32 9223, i32 9046, i32 8999, i32 8987, i32 8275, i32 8148, i32 8113, i32 7552, i32 7483, i32 7468, i32 7066, i32 7003, i32 6989, i32 6671, i32 6642, i32 6631, i32 6359, i32 6327, i32 6114, i32 6103, i32 5929, i32 5918, i32 5792, i32 5785, i32 5672, i32 5580, i32 5507, i32 5461, i32 5414, i32 5382, i32 5354, i32 5330, i32 5312, i32 5288, i32 5273, i32 5261, i32 5247, i32 5235, i32 5227, i32 5219, i32 4357, i32 4277, i32 4272, i32 3847, i32 3819, i32 3455, i32 3119, i32 2829, i32 2550, i32 2313, i32 2104, i32 1881, i32 1711, i32 1565, i32 1366, i32 1219, i32 1068, i32 932, i32 866, i32 799, i32 750, i32 701, i32 662, i32 605, i32 559, i32 513, i32 471, i32 432, i32 403, i32 365, i32 336, i32 312, i32 290, i32 276, i32 266, i32 254, i32 240, i32 228, i32 223, i32 216, i32 206, i32 199, i32 192, i32 189, i32 0], align 16
@cumf_TCOEFr = dso_local global [104 x i32] [i32 16383, i32 13216, i32 12233, i32 11931, i32 11822, i32 11776, i32 11758, i32 11748, i32 11743, i32 11742, i32 11741, i32 11740, i32 11739, i32 10203, i32 9822, i32 9725, i32 9691, i32 9677, i32 9674, i32 8759, i32 8609, i32 8576, i32 8566, i32 7901, i32 7787, i32 7770, i32 7257, i32 7185, i32 7168, i32 6716, i32 6653, i32 6639, i32 6276, i32 6229, i32 6220, i32 5888, i32 5845, i32 5600, i32 5567, i32 5348, i32 5327, i32 5160, i32 5142, i32 5004, i32 4900, i32 4798, i32 4743, i32 4708, i32 4685, i32 4658, i32 4641, i32 4622, i32 4610, i32 4598, i32 4589, i32 4582, i32 4578, i32 4570, i32 4566, i32 3824, i32 3757, i32 3748, i32 3360, i32 3338, i32 3068, i32 2835, i32 2592, i32 2359, i32 2179, i32 1984, i32 1804, i32 1614, i32 1445, i32 1234, i32 1068, i32 870, i32 739, i32 668, i32 616, i32 566, i32 532, i32 489, i32 453, i32 426, i32 385, i32 357, i32 335, i32 316, i32 297, i32 283, i32 274, i32 266, i32 259, i32 251, i32 241, i32 233, i32 226, i32 222, i32 217, i32 214, i32 211, i32 209, i32 208, i32 0], align 16
@cumf_TCOEF1_intra = dso_local global [104 x i32] [i32 16383, i32 13383, i32 11498, i32 10201, i32 9207, i32 8528, i32 8099, i32 7768, i32 7546, i32 7368, i32 7167, i32 6994, i32 6869, i32 6005, i32 5474, i32 5220, i32 5084, i32 4964, i32 4862, i32 4672, i32 4591, i32 4570, i32 4543, i32 4397, i32 4337, i32 4326, i32 4272, i32 4240, i32 4239, i32 4212, i32 4196, i32 4185, i32 4158, i32 4157, i32 4156, i32 4140, i32 4139, i32 4138, i32 4137, i32 4136, i32 4125, i32 4124, i32 4123, i32 4112, i32 4111, i32 4110, i32 4109, i32 4108, i32 4107, i32 4106, i32 4105, i32 4104, i32 4103, i32 4102, i32 4101, i32 4100, i32 4099, i32 4098, i32 4097, i32 3043, i32 2897, i32 2843, i32 1974, i32 1790, i32 1677, i32 1552, i32 1416, i32 1379, i32 1331, i32 1288, i32 1251, i32 1250, i32 1249, i32 1248, i32 1247, i32 1236, i32 1225, i32 1224, i32 1223, i32 1212, i32 1201, i32 1200, i32 1199, i32 1198, i32 1197, i32 1196, i32 1195, i32 1194, i32 1193, i32 1192, i32 1191, i32 1190, i32 1189, i32 1188, i32 1187, i32 1186, i32 1185, i32 1184, i32 1183, i32 1182, i32 1181, i32 1180, i32 1179, i32 0], align 16
@cumf_TCOEF2_intra = dso_local global [104 x i32] [i32 16383, i32 13242, i32 11417, i32 10134, i32 9254, i32 8507, i32 8012, i32 7556, i32 7273, i32 7062, i32 6924, i32 6839, i32 6741, i32 6108, i32 5851, i32 5785, i32 5719, i32 5687, i32 5655, i32 5028, i32 4917, i32 4864, i32 4845, i32 4416, i32 4159, i32 4074, i32 3903, i32 3871, i32 3870, i32 3765, i32 3752, i32 3751, i32 3659, i32 3606, i32 3580, i32 3541, i32 3540, i32 3514, i32 3495, i32 3494, i32 3493, i32 3474, i32 3473, i32 3441, i32 3440, i32 3439, i32 3438, i32 3425, i32 3424, i32 3423, i32 3422, i32 3421, i32 3420, i32 3401, i32 3400, i32 3399, i32 3398, i32 3397, i32 3396, i32 2530, i32 2419, i32 2360, i32 2241, i32 2228, i32 2017, i32 1687, i32 1576, i32 1478, i32 1320, i32 1281, i32 1242, i32 1229, i32 1197, i32 1178, i32 1152, i32 1133, i32 1114, i32 1101, i32 1088, i32 1087, i32 1086, i32 1085, i32 1072, i32 1071, i32 1070, i32 1069, i32 1068, i32 1067, i32 1066, i32 1065, i32 1064, i32 1063, i32 1062, i32 1061, i32 1060, i32 1059, i32 1058, i32 1057, i32 1056, i32 1055, i32 1054, i32 1053, i32 1052, i32 0], align 16
@cumf_TCOEF3_intra = dso_local global [104 x i32] [i32 16383, i32 12741, i32 10950, i32 10071, i32 9493, i32 9008, i32 8685, i32 8516, i32 8385, i32 8239, i32 8209, i32 8179, i32 8141, i32 6628, i32 5980, i32 5634, i32 5503, i32 5396, i32 5327, i32 4857, i32 4642, i32 4550, i32 4481, i32 4235, i32 4166, i32 4151, i32 3967, i32 3922, i32 3907, i32 3676, i32 3500, i32 3324, i32 3247, i32 3246, i32 3245, i32 3183, i32 3168, i32 3084, i32 3069, i32 3031, i32 3030, i32 3029, i32 3014, i32 3013, i32 2990, i32 2975, i32 2974, i32 2973, i32 2958, i32 2943, i32 2928, i32 2927, i32 2926, i32 2925, i32 2924, i32 2923, i32 2922, i32 2921, i32 2920, i32 2397, i32 2298, i32 2283, i32 1891, i32 1799, i32 1591, i32 1445, i32 1338, i32 1145, i32 1068, i32 1006, i32 791, i32 768, i32 661, i32 631, i32 630, i32 615, i32 592, i32 577, i32 576, i32 561, i32 546, i32 523, i32 508, i32 493, i32 492, i32 491, i32 476, i32 475, i32 474, i32 473, i32 472, i32 471, i32 470, i32 469, i32 468, i32 453, i32 452, i32 451, i32 450, i32 449, i32 448, i32 447, i32 446, i32 0], align 16
@cumf_TCOEFr_intra = dso_local global [104 x i32] [i32 16383, i32 12514, i32 10776, i32 9969, i32 9579, i32 9306, i32 9168, i32 9082, i32 9032, i32 9000, i32 8981, i32 8962, i32 8952, i32 7630, i32 7212, i32 7053, i32 6992, i32 6961, i32 6940, i32 6195, i32 5988, i32 5948, i32 5923, i32 5370, i32 5244, i32 5210, i32 4854, i32 4762, i32 4740, i32 4384, i32 4300, i32 4288, i32 4020, i32 3968, i32 3964, i32 3752, i32 3668, i32 3511, i32 3483, i32 3354, i32 3322, i32 3205, i32 3183, i32 3108, i32 3046, i32 2999, i32 2981, i32 2974, i32 2968, i32 2961, i32 2955, i32 2949, i32 2943, i32 2942, i32 2939, i32 2935, i32 2934, i32 2933, i32 2929, i32 2270, i32 2178, i32 2162, i32 1959, i32 1946, i32 1780, i32 1651, i32 1524, i32 1400, i32 1289, i32 1133, i32 1037, i32 942, i32 849, i32 763, i32 711, i32 591, i32 521, i32 503, i32 496, i32 474, i32 461, i32 449, i32 442, i32 436, i32 426, i32 417, i32 407, i32 394, i32 387, i32 377, i32 373, i32 370, i32 367, i32 366, i32 365, i32 364, i32 363, i32 362, i32 358, i32 355, i32 352, i32 351, i32 350, i32 0], align 16
@cumf_SIGN = dso_local global [3 x i32] [i32 16383, i32 8416, i32 0], align 4
@cumf_LAST = dso_local global [3 x i32] [i32 16383, i32 9469, i32 0], align 4
@cumf_LAST_intra = dso_local global [3 x i32] [i32 16383, i32 2820, i32 0], align 4
@cumf_RUN = dso_local global [65 x i32] [i32 16383, i32 15310, i32 14702, i32 13022, i32 11883, i32 11234, i32 10612, i32 10192, i32 9516, i32 9016, i32 8623, i32 8366, i32 7595, i32 7068, i32 6730, i32 6487, i32 6379, i32 6285, i32 6177, i32 6150, i32 6083, i32 5989, i32 5949, i32 5922, i32 5895, i32 5828, i32 5774, i32 5773, i32 5394, i32 5164, i32 5016, i32 4569, i32 4366, i32 4136, i32 4015, i32 3867, i32 3773, i32 3692, i32 3611, i32 3476, i32 3341, i32 3301, i32 2787, i32 2503, i32 2219, i32 1989, i32 1515, i32 1095, i32 934, i32 799, i32 691, i32 583, i32 435, i32 300, i32 246, i32 206, i32 125, i32 124, i32 97, i32 57, i32 30, i32 3, i32 2, i32 1, i32 0], align 16
@cumf_RUN_intra = dso_local global [65 x i32] [i32 16383, i32 10884, i32 8242, i32 7124, i32 5173, i32 4745, i32 4246, i32 3984, i32 3034, i32 2749, i32 2607, i32 2298, i32 966, i32 681, i32 396, i32 349, i32 302, i32 255, i32 254, i32 253, i32 206, i32 159, i32 158, i32 157, i32 156, i32 155, i32 154, i32 153, i32 106, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@cumf_LEVEL = dso_local global [255 x i32] [i32 16383, i32 16382, i32 16381, i32 16380, i32 16379, i32 16378, i32 16377, i32 16376, i32 16375, i32 16374, i32 16373, i32 16372, i32 16371, i32 16370, i32 16369, i32 16368, i32 16367, i32 16366, i32 16365, i32 16364, i32 16363, i32 16362, i32 16361, i32 16360, i32 16359, i32 16358, i32 16357, i32 16356, i32 16355, i32 16354, i32 16353, i32 16352, i32 16351, i32 16350, i32 16349, i32 16348, i32 16347, i32 16346, i32 16345, i32 16344, i32 16343, i32 16342, i32 16341, i32 16340, i32 16339, i32 16338, i32 16337, i32 16336, i32 16335, i32 16334, i32 16333, i32 16332, i32 16331, i32 16330, i32 16329, i32 16328, i32 16327, i32 16326, i32 16325, i32 16324, i32 16323, i32 16322, i32 16321, i32 16320, i32 16319, i32 16318, i32 16317, i32 16316, i32 16315, i32 16314, i32 16313, i32 16312, i32 16311, i32 16310, i32 16309, i32 16308, i32 16307, i32 16306, i32 16305, i32 16304, i32 16303, i32 16302, i32 16301, i32 16300, i32 16299, i32 16298, i32 16297, i32 16296, i32 16295, i32 16294, i32 16293, i32 16292, i32 16291, i32 16290, i32 16289, i32 16288, i32 16287, i32 16286, i32 16285, i32 16284, i32 16283, i32 16282, i32 16281, i32 16280, i32 16279, i32 16278, i32 16277, i32 16250, i32 16223, i32 16222, i32 16195, i32 16154, i32 16153, i32 16071, i32 15989, i32 15880, i32 15879, i32 15878, i32 15824, i32 15756, i32 15674, i32 15606, i32 15538, i32 15184, i32 14572, i32 13960, i32 10718, i32 7994, i32 5379, i32 2123, i32 1537, i32 992, i32 693, i32 611, i32 516, i32 448, i32 421, i32 380, i32 353, i32 352, i32 284, i32 257, i32 230, i32 203, i32 162, i32 161, i32 160, i32 133, i32 132, i32 105, i32 104, i32 103, i32 102, i32 101, i32 100, i32 99, i32 98, i32 97, i32 96, i32 95, i32 94, i32 93, i32 92, i32 91, i32 90, i32 89, i32 88, i32 87, i32 86, i32 85, i32 84, i32 83, i32 82, i32 81, i32 80, i32 79, i32 78, i32 77, i32 76, i32 75, i32 74, i32 73, i32 72, i32 71, i32 70, i32 69, i32 68, i32 67, i32 66, i32 65, i32 64, i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@cumf_LEVEL_intra = dso_local global [255 x i32] [i32 16383, i32 16379, i32 16378, i32 16377, i32 16376, i32 16375, i32 16374, i32 16373, i32 16372, i32 16371, i32 16370, i32 16369, i32 16368, i32 16367, i32 16366, i32 16365, i32 16364, i32 16363, i32 16362, i32 16361, i32 16360, i32 16359, i32 16358, i32 16357, i32 16356, i32 16355, i32 16354, i32 16353, i32 16352, i32 16351, i32 16350, i32 16349, i32 16348, i32 16347, i32 16346, i32 16345, i32 16344, i32 16343, i32 16342, i32 16341, i32 16340, i32 16339, i32 16338, i32 16337, i32 16336, i32 16335, i32 16334, i32 16333, i32 16332, i32 16331, i32 16330, i32 16329, i32 16328, i32 16327, i32 16326, i32 16325, i32 16324, i32 16323, i32 16322, i32 16321, i32 16320, i32 16319, i32 16318, i32 16317, i32 16316, i32 16315, i32 16314, i32 16313, i32 16312, i32 16311, i32 16268, i32 16267, i32 16224, i32 16223, i32 16180, i32 16179, i32 16136, i32 16135, i32 16134, i32 16133, i32 16132, i32 16131, i32 16130, i32 16129, i32 16128, i32 16127, i32 16126, i32 16061, i32 16018, i32 16017, i32 16016, i32 16015, i32 16014, i32 15971, i32 15970, i32 15969, i32 15968, i32 15925, i32 15837, i32 15794, i32 15751, i32 15750, i32 15749, i32 15661, i32 15618, i32 15508, i32 15376, i32 15288, i32 15045, i32 14913, i32 14781, i32 14384, i32 13965, i32 13502, i32 13083, i32 12509, i32 12289, i32 12135, i32 11892, i32 11738, i32 11429, i32 11010, i32 10812, i32 10371, i32 9664, i32 9113, i32 8117, i32 8116, i32 8028, i32 6855, i32 5883, i32 4710, i32 4401, i32 4203, i32 3740, i32 3453, i32 3343, i32 3189, i32 2946, i32 2881, i32 2661, i32 2352, i32 2132, i32 1867, i32 1558, i32 1382, i32 1250, i32 1162, i32 1097, i32 1032, i32 967, i32 835, i32 681, i32 549, i32 439, i32 351, i32 350, i32 307, i32 306, i32 305, i32 304, i32 303, i32 302, i32 301, i32 300, i32 299, i32 298, i32 255, i32 212, i32 211, i32 210, i32 167, i32 166, i32 165, i32 164, i32 163, i32 162, i32 161, i32 160, i32 159, i32 158, i32 115, i32 114, i32 113, i32 112, i32 111, i32 68, i32 67, i32 66, i32 65, i32 64, i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"invalid Huffman code in getblock()\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"DCT coeff index (i) out of bounds\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"): %d/%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"last\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ESC: \00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"val: %d, run: %d, sign: %d, last: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"level_idx: %d \00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"warning: spare in picture header should be \221\22\0A\00", align 1
@.str.1.10 = private unnamed_addr constant [46 x i8] c"warning: H.261 distinction bit should be \220\22\0A\00", align 1
@.str.2.11 = private unnamed_addr constant [51 x i8] c"error: split-screen not supported in this version\0A\00", align 1
@.str.3.12 = private unnamed_addr constant [66 x i8] c"warning: document camera indicator not supported in this version\0A\00", align 1
@.str.4.13 = private unnamed_addr constant [55 x i8] c"warning: frozen picture not supported in this version\0A\00", align 1
@.str.5.14 = private unnamed_addr constant [42 x i8] c"error: CPM not supported in this version\0A\00", align 1
@.str.6.15 = private unnamed_addr constant [15 x i8] c"  temp_ref=%d\0A\00", align 1
@.str.7.16 = private unnamed_addr constant [10 x i8] c"  trb=%d\0A\00", align 1
@__const.getMBs.DQ_tab = private unnamed_addr constant [4 x i32] [i32 -1, i32 -2, i32 1, i32 2], align 16
@.str.17 = private unnamed_addr constant [17 x i8] c"frame %d, MB %d\0A\00", align 1
@.str.1.18 = private unnamed_addr constant [54 x i8] c"Warning: A Fault Condition Has Occurred - Resyncing \0A\00", align 1
@.str.2.19 = private unnamed_addr constant [17 x i8] c"GN out of range\0A\00", align 1
@.str.3.20 = private unnamed_addr constant [12 x i8] c"GQUANT: %d\0A\00", align 1
@.str.4.21 = private unnamed_addr constant [28 x i8] c"Arithmetic Decoding Debug \0A\00", align 1
@.str.5.22 = private unnamed_addr constant [24 x i8] c"COD Index: %d COD: %d \0A\00", align 1
@.str.6.23 = private unnamed_addr constant [28 x i8] c"MCBPC Index: %d MCBPC: %d \0A\00", align 1
@.str.7.24 = private unnamed_addr constant [10 x i8] c"MODB: %d\0A\00", align 1
@.str.8.25 = private unnamed_addr constant [11 x i8] c"CBPB = %d\0A\00", align 1
@.str.9.26 = private unnamed_addr constant [25 x i8] c"CBPY Index: %d CBPY %d \0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"8x8 vectors not allowed in normal prediction mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"DQUANT Index: %d DQUANT %d \0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"DQUANT (\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"): %d = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Quantizer out of range: clipping\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"mvx_index: %d mvy_index: %d \0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"mvx: %d\0A\00", align 1
@.str.17.27 = private unnamed_addr constant [9 x i8] c"mvy: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"mvx out of range: searching for sync\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"mvy out of range: searching for sync\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"MVDB x: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"MVDB y: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"INTRADC Index: %d INTRADC: %d \0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"DC[%d]: (\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"): %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Illegal DC-coeff: 1000000\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [45 x i8] c"Illegal block number in find_pmv (getpic.c)\0A\00", align 1
@DCT3Dtab0 = dso_local global [112 x %struct.VLCtabI] [%struct.VLCtabI { i32 4225, i32 7 }, %struct.VLCtabI { i32 4209, i32 7 }, %struct.VLCtabI { i32 4193, i32 7 }, %struct.VLCtabI { i32 4177, i32 7 }, %struct.VLCtabI { i32 193, i32 7 }, %struct.VLCtabI { i32 177, i32 7 }, %struct.VLCtabI { i32 161, i32 7 }, %struct.VLCtabI { i32 4, i32 7 }, %struct.VLCtabI { i32 4161, i32 6 }, %struct.VLCtabI { i32 4161, i32 6 }, %struct.VLCtabI { i32 4145, i32 6 }, %struct.VLCtabI { i32 4145, i32 6 }, %struct.VLCtabI { i32 4129, i32 6 }, %struct.VLCtabI { i32 4129, i32 6 }, %struct.VLCtabI { i32 4113, i32 6 }, %struct.VLCtabI { i32 4113, i32 6 }, %struct.VLCtabI { i32 145, i32 6 }, %struct.VLCtabI { i32 145, i32 6 }, %struct.VLCtabI { i32 129, i32 6 }, %struct.VLCtabI { i32 129, i32 6 }, %struct.VLCtabI { i32 113, i32 6 }, %struct.VLCtabI { i32 113, i32 6 }, %struct.VLCtabI { i32 97, i32 6 }, %struct.VLCtabI { i32 97, i32 6 }, %struct.VLCtabI { i32 18, i32 6 }, %struct.VLCtabI { i32 18, i32 6 }, %struct.VLCtabI { i32 3, i32 6 }, %struct.VLCtabI { i32 3, i32 6 }, %struct.VLCtabI { i32 81, i32 5 }, %struct.VLCtabI { i32 81, i32 5 }, %struct.VLCtabI { i32 81, i32 5 }, %struct.VLCtabI { i32 81, i32 5 }, %struct.VLCtabI { i32 65, i32 5 }, %struct.VLCtabI { i32 65, i32 5 }, %struct.VLCtabI { i32 65, i32 5 }, %struct.VLCtabI { i32 65, i32 5 }, %struct.VLCtabI { i32 49, i32 5 }, %struct.VLCtabI { i32 49, i32 5 }, %struct.VLCtabI { i32 49, i32 5 }, %struct.VLCtabI { i32 49, i32 5 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 4097, i32 4 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 17, i32 3 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 33, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }], align 16
@DCT3Dtab1 = dso_local global [96 x %struct.VLCtabI] [%struct.VLCtabI { i32 9, i32 10 }, %struct.VLCtabI { i32 8, i32 10 }, %struct.VLCtabI { i32 4481, i32 9 }, %struct.VLCtabI { i32 4481, i32 9 }, %struct.VLCtabI { i32 4465, i32 9 }, %struct.VLCtabI { i32 4465, i32 9 }, %struct.VLCtabI { i32 4449, i32 9 }, %struct.VLCtabI { i32 4449, i32 9 }, %struct.VLCtabI { i32 4433, i32 9 }, %struct.VLCtabI { i32 4433, i32 9 }, %struct.VLCtabI { i32 4417, i32 9 }, %struct.VLCtabI { i32 4417, i32 9 }, %struct.VLCtabI { i32 4401, i32 9 }, %struct.VLCtabI { i32 4401, i32 9 }, %struct.VLCtabI { i32 4385, i32 9 }, %struct.VLCtabI { i32 4385, i32 9 }, %struct.VLCtabI { i32 4369, i32 9 }, %struct.VLCtabI { i32 4369, i32 9 }, %struct.VLCtabI { i32 4098, i32 9 }, %struct.VLCtabI { i32 4098, i32 9 }, %struct.VLCtabI { i32 353, i32 9 }, %struct.VLCtabI { i32 353, i32 9 }, %struct.VLCtabI { i32 337, i32 9 }, %struct.VLCtabI { i32 337, i32 9 }, %struct.VLCtabI { i32 321, i32 9 }, %struct.VLCtabI { i32 321, i32 9 }, %struct.VLCtabI { i32 305, i32 9 }, %struct.VLCtabI { i32 305, i32 9 }, %struct.VLCtabI { i32 289, i32 9 }, %struct.VLCtabI { i32 289, i32 9 }, %struct.VLCtabI { i32 273, i32 9 }, %struct.VLCtabI { i32 273, i32 9 }, %struct.VLCtabI { i32 257, i32 9 }, %struct.VLCtabI { i32 257, i32 9 }, %struct.VLCtabI { i32 241, i32 9 }, %struct.VLCtabI { i32 241, i32 9 }, %struct.VLCtabI { i32 66, i32 9 }, %struct.VLCtabI { i32 66, i32 9 }, %struct.VLCtabI { i32 50, i32 9 }, %struct.VLCtabI { i32 50, i32 9 }, %struct.VLCtabI { i32 7, i32 9 }, %struct.VLCtabI { i32 7, i32 9 }, %struct.VLCtabI { i32 6, i32 9 }, %struct.VLCtabI { i32 6, i32 9 }, %struct.VLCtabI { i32 4353, i32 8 }, %struct.VLCtabI { i32 4353, i32 8 }, %struct.VLCtabI { i32 4353, i32 8 }, %struct.VLCtabI { i32 4353, i32 8 }, %struct.VLCtabI { i32 4337, i32 8 }, %struct.VLCtabI { i32 4337, i32 8 }, %struct.VLCtabI { i32 4337, i32 8 }, %struct.VLCtabI { i32 4337, i32 8 }, %struct.VLCtabI { i32 4321, i32 8 }, %struct.VLCtabI { i32 4321, i32 8 }, %struct.VLCtabI { i32 4321, i32 8 }, %struct.VLCtabI { i32 4321, i32 8 }, %struct.VLCtabI { i32 4305, i32 8 }, %struct.VLCtabI { i32 4305, i32 8 }, %struct.VLCtabI { i32 4305, i32 8 }, %struct.VLCtabI { i32 4305, i32 8 }, %struct.VLCtabI { i32 4289, i32 8 }, %struct.VLCtabI { i32 4289, i32 8 }, %struct.VLCtabI { i32 4289, i32 8 }, %struct.VLCtabI { i32 4289, i32 8 }, %struct.VLCtabI { i32 4273, i32 8 }, %struct.VLCtabI { i32 4273, i32 8 }, %struct.VLCtabI { i32 4273, i32 8 }, %struct.VLCtabI { i32 4273, i32 8 }, %struct.VLCtabI { i32 4257, i32 8 }, %struct.VLCtabI { i32 4257, i32 8 }, %struct.VLCtabI { i32 4257, i32 8 }, %struct.VLCtabI { i32 4257, i32 8 }, %struct.VLCtabI { i32 4241, i32 8 }, %struct.VLCtabI { i32 4241, i32 8 }, %struct.VLCtabI { i32 4241, i32 8 }, %struct.VLCtabI { i32 4241, i32 8 }, %struct.VLCtabI { i32 225, i32 8 }, %struct.VLCtabI { i32 225, i32 8 }, %struct.VLCtabI { i32 225, i32 8 }, %struct.VLCtabI { i32 225, i32 8 }, %struct.VLCtabI { i32 209, i32 8 }, %struct.VLCtabI { i32 209, i32 8 }, %struct.VLCtabI { i32 209, i32 8 }, %struct.VLCtabI { i32 209, i32 8 }, %struct.VLCtabI { i32 34, i32 8 }, %struct.VLCtabI { i32 34, i32 8 }, %struct.VLCtabI { i32 34, i32 8 }, %struct.VLCtabI { i32 34, i32 8 }, %struct.VLCtabI { i32 19, i32 8 }, %struct.VLCtabI { i32 19, i32 8 }, %struct.VLCtabI { i32 19, i32 8 }, %struct.VLCtabI { i32 19, i32 8 }, %struct.VLCtabI { i32 5, i32 8 }, %struct.VLCtabI { i32 5, i32 8 }, %struct.VLCtabI { i32 5, i32 8 }, %struct.VLCtabI { i32 5, i32 8 }], align 16
@DCT3Dtab2 = dso_local global [120 x %struct.VLCtabI] [%struct.VLCtabI { i32 4114, i32 11 }, %struct.VLCtabI { i32 4114, i32 11 }, %struct.VLCtabI { i32 4099, i32 11 }, %struct.VLCtabI { i32 4099, i32 11 }, %struct.VLCtabI { i32 11, i32 11 }, %struct.VLCtabI { i32 11, i32 11 }, %struct.VLCtabI { i32 10, i32 11 }, %struct.VLCtabI { i32 10, i32 11 }, %struct.VLCtabI { i32 4545, i32 10 }, %struct.VLCtabI { i32 4545, i32 10 }, %struct.VLCtabI { i32 4545, i32 10 }, %struct.VLCtabI { i32 4545, i32 10 }, %struct.VLCtabI { i32 4529, i32 10 }, %struct.VLCtabI { i32 4529, i32 10 }, %struct.VLCtabI { i32 4529, i32 10 }, %struct.VLCtabI { i32 4529, i32 10 }, %struct.VLCtabI { i32 4513, i32 10 }, %struct.VLCtabI { i32 4513, i32 10 }, %struct.VLCtabI { i32 4513, i32 10 }, %struct.VLCtabI { i32 4513, i32 10 }, %struct.VLCtabI { i32 4497, i32 10 }, %struct.VLCtabI { i32 4497, i32 10 }, %struct.VLCtabI { i32 4497, i32 10 }, %struct.VLCtabI { i32 4497, i32 10 }, %struct.VLCtabI { i32 146, i32 10 }, %struct.VLCtabI { i32 146, i32 10 }, %struct.VLCtabI { i32 146, i32 10 }, %struct.VLCtabI { i32 146, i32 10 }, %struct.VLCtabI { i32 130, i32 10 }, %struct.VLCtabI { i32 130, i32 10 }, %struct.VLCtabI { i32 130, i32 10 }, %struct.VLCtabI { i32 130, i32 10 }, %struct.VLCtabI { i32 114, i32 10 }, %struct.VLCtabI { i32 114, i32 10 }, %struct.VLCtabI { i32 114, i32 10 }, %struct.VLCtabI { i32 114, i32 10 }, %struct.VLCtabI { i32 98, i32 10 }, %struct.VLCtabI { i32 98, i32 10 }, %struct.VLCtabI { i32 98, i32 10 }, %struct.VLCtabI { i32 98, i32 10 }, %struct.VLCtabI { i32 82, i32 10 }, %struct.VLCtabI { i32 82, i32 10 }, %struct.VLCtabI { i32 82, i32 10 }, %struct.VLCtabI { i32 82, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }, %struct.VLCtabI { i32 35, i32 10 }, %struct.VLCtabI { i32 35, i32 10 }, %struct.VLCtabI { i32 35, i32 10 }, %struct.VLCtabI { i32 35, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 12, i32 11 }, %struct.VLCtabI { i32 12, i32 11 }, %struct.VLCtabI { i32 21, i32 11 }, %struct.VLCtabI { i32 21, i32 11 }, %struct.VLCtabI { i32 369, i32 11 }, %struct.VLCtabI { i32 369, i32 11 }, %struct.VLCtabI { i32 385, i32 11 }, %struct.VLCtabI { i32 385, i32 11 }, %struct.VLCtabI { i32 4561, i32 11 }, %struct.VLCtabI { i32 4561, i32 11 }, %struct.VLCtabI { i32 4577, i32 11 }, %struct.VLCtabI { i32 4577, i32 11 }, %struct.VLCtabI { i32 4593, i32 11 }, %struct.VLCtabI { i32 4593, i32 11 }, %struct.VLCtabI { i32 4609, i32 11 }, %struct.VLCtabI { i32 4609, i32 11 }, %struct.VLCtabI { i32 22, i32 12 }, %struct.VLCtabI { i32 36, i32 12 }, %struct.VLCtabI { i32 67, i32 12 }, %struct.VLCtabI { i32 83, i32 12 }, %struct.VLCtabI { i32 99, i32 12 }, %struct.VLCtabI { i32 162, i32 12 }, %struct.VLCtabI { i32 401, i32 12 }, %struct.VLCtabI { i32 417, i32 12 }, %struct.VLCtabI { i32 4625, i32 12 }, %struct.VLCtabI { i32 4641, i32 12 }, %struct.VLCtabI { i32 4657, i32 12 }, %struct.VLCtabI { i32 4673, i32 12 }, %struct.VLCtabI { i32 4689, i32 12 }, %struct.VLCtabI { i32 4705, i32 12 }, %struct.VLCtabI { i32 4721, i32 12 }, %struct.VLCtabI { i32 4737, i32 12 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }, %struct.VLCtabI { i32 7167, i32 7 }], align 16
@.str.36 = private unnamed_addr constant [14 x i8] c"motion_code (\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"1): 0\0A\00", align 1
@TMNMVtab0 = internal global [14 x %struct.VLCtabI] [%struct.VLCtabI { i32 3, i32 4 }, %struct.VLCtabI { i32 61, i32 4 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 62, i32 3 }, %struct.VLCtabI { i32 62, i32 3 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 1, i32 2 }, %struct.VLCtabI { i32 63, i32 2 }, %struct.VLCtabI { i32 63, i32 2 }, %struct.VLCtabI { i32 63, i32 2 }, %struct.VLCtabI { i32 63, i32 2 }], align 16
@.str.2.38 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3.39 = private unnamed_addr constant [7 x i8] c"): %d\0A\00", align 1
@TMNMVtab1 = internal global [96 x %struct.VLCtabI] [%struct.VLCtabI { i32 12, i32 10 }, %struct.VLCtabI { i32 52, i32 10 }, %struct.VLCtabI { i32 11, i32 10 }, %struct.VLCtabI { i32 53, i32 10 }, %struct.VLCtabI { i32 10, i32 9 }, %struct.VLCtabI { i32 10, i32 9 }, %struct.VLCtabI { i32 54, i32 9 }, %struct.VLCtabI { i32 54, i32 9 }, %struct.VLCtabI { i32 9, i32 9 }, %struct.VLCtabI { i32 9, i32 9 }, %struct.VLCtabI { i32 55, i32 9 }, %struct.VLCtabI { i32 55, i32 9 }, %struct.VLCtabI { i32 8, i32 9 }, %struct.VLCtabI { i32 8, i32 9 }, %struct.VLCtabI { i32 56, i32 9 }, %struct.VLCtabI { i32 56, i32 9 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 7, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 57, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 6, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 58, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 5, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 59, i32 7 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }, %struct.VLCtabI { i32 60, i32 6 }], align 16
@.str.4.40 = private unnamed_addr constant [28 x i8] c"Invalid motion_vector code\0A\00", align 1
@TMNMVtab2 = internal global [123 x %struct.VLCtabI] [%struct.VLCtabI { i32 32, i32 12 }, %struct.VLCtabI { i32 31, i32 12 }, %struct.VLCtabI { i32 33, i32 12 }, %struct.VLCtabI { i32 30, i32 11 }, %struct.VLCtabI { i32 30, i32 11 }, %struct.VLCtabI { i32 34, i32 11 }, %struct.VLCtabI { i32 34, i32 11 }, %struct.VLCtabI { i32 29, i32 11 }, %struct.VLCtabI { i32 29, i32 11 }, %struct.VLCtabI { i32 35, i32 11 }, %struct.VLCtabI { i32 35, i32 11 }, %struct.VLCtabI { i32 28, i32 11 }, %struct.VLCtabI { i32 28, i32 11 }, %struct.VLCtabI { i32 36, i32 11 }, %struct.VLCtabI { i32 36, i32 11 }, %struct.VLCtabI { i32 27, i32 11 }, %struct.VLCtabI { i32 27, i32 11 }, %struct.VLCtabI { i32 37, i32 11 }, %struct.VLCtabI { i32 37, i32 11 }, %struct.VLCtabI { i32 26, i32 11 }, %struct.VLCtabI { i32 26, i32 11 }, %struct.VLCtabI { i32 38, i32 11 }, %struct.VLCtabI { i32 38, i32 11 }, %struct.VLCtabI { i32 25, i32 11 }, %struct.VLCtabI { i32 25, i32 11 }, %struct.VLCtabI { i32 39, i32 11 }, %struct.VLCtabI { i32 39, i32 11 }, %struct.VLCtabI { i32 24, i32 10 }, %struct.VLCtabI { i32 24, i32 10 }, %struct.VLCtabI { i32 24, i32 10 }, %struct.VLCtabI { i32 24, i32 10 }, %struct.VLCtabI { i32 40, i32 10 }, %struct.VLCtabI { i32 40, i32 10 }, %struct.VLCtabI { i32 40, i32 10 }, %struct.VLCtabI { i32 40, i32 10 }, %struct.VLCtabI { i32 23, i32 10 }, %struct.VLCtabI { i32 23, i32 10 }, %struct.VLCtabI { i32 23, i32 10 }, %struct.VLCtabI { i32 23, i32 10 }, %struct.VLCtabI { i32 41, i32 10 }, %struct.VLCtabI { i32 41, i32 10 }, %struct.VLCtabI { i32 41, i32 10 }, %struct.VLCtabI { i32 41, i32 10 }, %struct.VLCtabI { i32 22, i32 10 }, %struct.VLCtabI { i32 22, i32 10 }, %struct.VLCtabI { i32 22, i32 10 }, %struct.VLCtabI { i32 22, i32 10 }, %struct.VLCtabI { i32 42, i32 10 }, %struct.VLCtabI { i32 42, i32 10 }, %struct.VLCtabI { i32 42, i32 10 }, %struct.VLCtabI { i32 42, i32 10 }, %struct.VLCtabI { i32 21, i32 10 }, %struct.VLCtabI { i32 21, i32 10 }, %struct.VLCtabI { i32 21, i32 10 }, %struct.VLCtabI { i32 21, i32 10 }, %struct.VLCtabI { i32 43, i32 10 }, %struct.VLCtabI { i32 43, i32 10 }, %struct.VLCtabI { i32 43, i32 10 }, %struct.VLCtabI { i32 43, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 20, i32 10 }, %struct.VLCtabI { i32 44, i32 10 }, %struct.VLCtabI { i32 44, i32 10 }, %struct.VLCtabI { i32 44, i32 10 }, %struct.VLCtabI { i32 44, i32 10 }, %struct.VLCtabI { i32 19, i32 10 }, %struct.VLCtabI { i32 19, i32 10 }, %struct.VLCtabI { i32 19, i32 10 }, %struct.VLCtabI { i32 19, i32 10 }, %struct.VLCtabI { i32 45, i32 10 }, %struct.VLCtabI { i32 45, i32 10 }, %struct.VLCtabI { i32 45, i32 10 }, %struct.VLCtabI { i32 45, i32 10 }, %struct.VLCtabI { i32 18, i32 10 }, %struct.VLCtabI { i32 18, i32 10 }, %struct.VLCtabI { i32 18, i32 10 }, %struct.VLCtabI { i32 18, i32 10 }, %struct.VLCtabI { i32 46, i32 10 }, %struct.VLCtabI { i32 46, i32 10 }, %struct.VLCtabI { i32 46, i32 10 }, %struct.VLCtabI { i32 46, i32 10 }, %struct.VLCtabI { i32 17, i32 10 }, %struct.VLCtabI { i32 17, i32 10 }, %struct.VLCtabI { i32 17, i32 10 }, %struct.VLCtabI { i32 17, i32 10 }, %struct.VLCtabI { i32 47, i32 10 }, %struct.VLCtabI { i32 47, i32 10 }, %struct.VLCtabI { i32 47, i32 10 }, %struct.VLCtabI { i32 47, i32 10 }, %struct.VLCtabI { i32 16, i32 10 }, %struct.VLCtabI { i32 16, i32 10 }, %struct.VLCtabI { i32 16, i32 10 }, %struct.VLCtabI { i32 16, i32 10 }, %struct.VLCtabI { i32 48, i32 10 }, %struct.VLCtabI { i32 48, i32 10 }, %struct.VLCtabI { i32 48, i32 10 }, %struct.VLCtabI { i32 48, i32 10 }, %struct.VLCtabI { i32 15, i32 10 }, %struct.VLCtabI { i32 15, i32 10 }, %struct.VLCtabI { i32 15, i32 10 }, %struct.VLCtabI { i32 15, i32 10 }, %struct.VLCtabI { i32 49, i32 10 }, %struct.VLCtabI { i32 49, i32 10 }, %struct.VLCtabI { i32 49, i32 10 }, %struct.VLCtabI { i32 49, i32 10 }, %struct.VLCtabI { i32 14, i32 10 }, %struct.VLCtabI { i32 14, i32 10 }, %struct.VLCtabI { i32 14, i32 10 }, %struct.VLCtabI { i32 14, i32 10 }, %struct.VLCtabI { i32 50, i32 10 }, %struct.VLCtabI { i32 50, i32 10 }, %struct.VLCtabI { i32 50, i32 10 }, %struct.VLCtabI { i32 50, i32 10 }, %struct.VLCtabI { i32 13, i32 10 }, %struct.VLCtabI { i32 13, i32 10 }, %struct.VLCtabI { i32 13, i32 10 }, %struct.VLCtabI { i32 13, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }, %struct.VLCtabI { i32 51, i32 10 }], align 16
@.str.5.43 = private unnamed_addr constant [8 x i8] c"MCBPC (\00", align 1
@.str.6.44 = private unnamed_addr constant [22 x i8] c"000000001): stuffing\0A\00", align 1
@.str.7.45 = private unnamed_addr constant [20 x i8] c"Invalid MCBPC code\0A\00", align 1
@.str.8.46 = private unnamed_addr constant [8 x i8] c"1): %d\0A\00", align 1
@MCBPCtab = internal global [256 x %struct.VLCtabI] [%struct.VLCtabI { i32 -1, i32 0 }, %struct.VLCtabI { i32 255, i32 9 }, %struct.VLCtabI { i32 52, i32 9 }, %struct.VLCtabI { i32 36, i32 9 }, %struct.VLCtabI { i32 20, i32 9 }, %struct.VLCtabI { i32 49, i32 9 }, %struct.VLCtabI { i32 35, i32 8 }, %struct.VLCtabI { i32 35, i32 8 }, %struct.VLCtabI { i32 19, i32 8 }, %struct.VLCtabI { i32 19, i32 8 }, %struct.VLCtabI { i32 50, i32 8 }, %struct.VLCtabI { i32 50, i32 8 }, %struct.VLCtabI { i32 51, i32 7 }, %struct.VLCtabI { i32 51, i32 7 }, %struct.VLCtabI { i32 51, i32 7 }, %struct.VLCtabI { i32 51, i32 7 }, %struct.VLCtabI { i32 34, i32 7 }, %struct.VLCtabI { i32 34, i32 7 }, %struct.VLCtabI { i32 34, i32 7 }, %struct.VLCtabI { i32 34, i32 7 }, %struct.VLCtabI { i32 18, i32 7 }, %struct.VLCtabI { i32 18, i32 7 }, %struct.VLCtabI { i32 18, i32 7 }, %struct.VLCtabI { i32 18, i32 7 }, %struct.VLCtabI { i32 33, i32 7 }, %struct.VLCtabI { i32 33, i32 7 }, %struct.VLCtabI { i32 33, i32 7 }, %struct.VLCtabI { i32 33, i32 7 }, %struct.VLCtabI { i32 17, i32 7 }, %struct.VLCtabI { i32 17, i32 7 }, %struct.VLCtabI { i32 17, i32 7 }, %struct.VLCtabI { i32 17, i32 7 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 4, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 48, i32 6 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 3, i32 5 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 32, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 16, i32 4 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 2, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }, %struct.VLCtabI { i32 1, i32 3 }], align 16
@.str.9.49 = private unnamed_addr constant [7 x i8] c"MODB (\00", align 1
@.str.10.50 = private unnamed_addr constant [14 x i8] c"0): MODB = 0\0A\00", align 1
@.str.11.51 = private unnamed_addr constant [15 x i8] c"10): MODB = 1\0A\00", align 1
@.str.12.52 = private unnamed_addr constant [15 x i8] c"11): MODB = 2\0A\00", align 1
@.str.13.55 = private unnamed_addr constant [13 x i8] c"MCBPCintra (\00", align 1
@.str.14.56 = private unnamed_addr constant [25 x i8] c"Invalid MCBPCintra code\0A\00", align 1
@MCBPCtabintra = internal global [32 x %struct.VLCtabI] [%struct.VLCtabI { i32 -1, i32 0 }, %struct.VLCtabI { i32 20, i32 6 }, %struct.VLCtabI { i32 36, i32 6 }, %struct.VLCtabI { i32 52, i32 6 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 19, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 35, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }, %struct.VLCtabI { i32 51, i32 3 }], align 16
@.str.15.59 = private unnamed_addr constant [7 x i8] c"CBPY (\00", align 1
@.str.16.60 = private unnamed_addr constant [19 x i8] c"Invalid CBPY code\0A\00", align 1
@.str.17.61 = private unnamed_addr constant [9 x i8] c"11): %d\0A\00", align 1
@CBPYtab = internal global [48 x %struct.VLCtabI] [%struct.VLCtabI { i32 -1, i32 0 }, %struct.VLCtabI { i32 -1, i32 0 }, %struct.VLCtabI { i32 9, i32 6 }, %struct.VLCtabI { i32 6, i32 6 }, %struct.VLCtabI { i32 7, i32 5 }, %struct.VLCtabI { i32 7, i32 5 }, %struct.VLCtabI { i32 11, i32 5 }, %struct.VLCtabI { i32 11, i32 5 }, %struct.VLCtabI { i32 13, i32 5 }, %struct.VLCtabI { i32 13, i32 5 }, %struct.VLCtabI { i32 14, i32 5 }, %struct.VLCtabI { i32 14, i32 5 }, %struct.VLCtabI { i32 15, i32 4 }, %struct.VLCtabI { i32 15, i32 4 }, %struct.VLCtabI { i32 15, i32 4 }, %struct.VLCtabI { i32 15, i32 4 }, %struct.VLCtabI { i32 3, i32 4 }, %struct.VLCtabI { i32 3, i32 4 }, %struct.VLCtabI { i32 3, i32 4 }, %struct.VLCtabI { i32 3, i32 4 }, %struct.VLCtabI { i32 5, i32 4 }, %struct.VLCtabI { i32 5, i32 4 }, %struct.VLCtabI { i32 5, i32 4 }, %struct.VLCtabI { i32 5, i32 4 }, %struct.VLCtabI { i32 1, i32 4 }, %struct.VLCtabI { i32 1, i32 4 }, %struct.VLCtabI { i32 1, i32 4 }, %struct.VLCtabI { i32 1, i32 4 }, %struct.VLCtabI { i32 10, i32 4 }, %struct.VLCtabI { i32 10, i32 4 }, %struct.VLCtabI { i32 10, i32 4 }, %struct.VLCtabI { i32 10, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 2, i32 4 }, %struct.VLCtabI { i32 12, i32 4 }, %struct.VLCtabI { i32 12, i32 4 }, %struct.VLCtabI { i32 12, i32 4 }, %struct.VLCtabI { i32 12, i32 4 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 4, i32 4 }, %struct.VLCtabI { i32 8, i32 4 }, %struct.VLCtabI { i32 8, i32 4 }, %struct.VLCtabI { i32 8, i32 4 }, %struct.VLCtabI { i32 8, i32 4 }], align 16
@iclp = internal global i16* null, align 8
@iclip = internal global [1024 x i16] zeroinitializer, align 16
@c = internal global [8 x [8 x double]] zeroinitializer, align 16
@.str.68 = private unnamed_addr constant [51 x i8] c"Illegal block number in recon_comp_obmc (recon.c)\0A\00", align 1
@high = internal global i64 0, align 8
@low = internal global i64 0, align 8
@length = internal global i64 0, align 8
@code_value = internal global i64 0, align 8
@cum = internal global i64 0, align 8
@sacindex = internal global i64 0, align 8
@bit = internal global i64 0, align 8
@zerorun = internal global i64 0, align 8
@.str.1.71 = private unnamed_addr constant [49 x i8] c"PSC/GBSC, Header Data, or Encoded Stream Error \0A\00", align 1
@.str.2.72 = private unnamed_addr constant [46 x i8] c"Removing Startcode Emulation Prevention bit \0A\00", align 1
@.str.3.73 = private unnamed_addr constant [68 x i8] c"Startcode Found:Finishing Arithmetic Decoding using 'Garbage bits'\0A\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Arithmetic Decoder Reset \0A\00", align 1
@store_ppm_tga.u444 = internal global i8* null, align 8
@store_ppm_tga.u422 = internal global i8* null, align 8
@.str.6.79 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@store_ppm_tga.v422 = internal global i8* null, align 8
@store_ppm_tga.v444 = internal global i8* null, align 8
@.str.8.80 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.9.81 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.5.82 = private unnamed_addr constant [11 x i8] c"saving %s\0A\00", align 1
@outfile = internal global i32 0, align 4
@.str.4.83 = private unnamed_addr constant [20 x i8] c"Couldn't create %s\0A\00", align 1
@obfr = internal global [4096 x i8] zeroinitializer, align 16
@optr = internal global i8* null, align 8
@store_ppm_tga.tga24 = internal global [14 x i8] c"\00\00\02\00\00\00\00\00\00\00\00\00\18 ", align 1
@.str.10.84 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@store_sif.u422 = internal global i8* null, align 8
@store_sif.v422 = internal global i8* null, align 8
@.str.7.85 = private unnamed_addr constant [5 x i8] c".SIF\00", align 1
@.str.3.86 = private unnamed_addr constant [23 x i8] c"Couldn't append to %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.1.88 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.2.89 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@version = dso_local global [43 x i8] c"tmndecode v1.7\0A(C) 1995, 1996 Telenor R&D\0A\00", align 16
@zig_zag_scan = dso_local global [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@convmat = dso_local global [8 x [4 x i32]] [[4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104448, i32 132798, i32 24759, i32 53109], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 117579, i32 136230, i32 16907, i32 35559]], align 16
@bscan_tab = dso_local global [4 x i32] [i32 2, i32 4, i32 6, i32 8], align 16
@bquant_tab = dso_local global [4 x i32] [i32 5, i32 6, i32 7, i32 8], align 16
@OM = dso_local global [5 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4], [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5], [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [8 x i32] [i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4]], [8 x [8 x i32]] [[8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [8 x i32] [i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer], [8 x [8 x i32]] [[8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], [8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2]], [8 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2]], [8 x [8 x i32]] [[8 x i32] [i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0]]], align 16
@roundtab = dso_local global [16 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2], align 16
@outputname = common dso_local global i8* null, align 8
@base = common dso_local global %struct.ld zeroinitializer, align 8
@ld = common dso_local global %struct.ld* null, align 8
@errortext = common dso_local global [256 x i8] zeroinitializer, align 16
@temp_ref = common dso_local global i32 0, align 4
@prev_temp_ref = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@refframe = common dso_local global [3 x i8*] zeroinitializer, align 16
@oldrefframe = common dso_local global [3 x i8*] zeroinitializer, align 16
@bframe = common dso_local global [3 x i8*] zeroinitializer, align 16
@newframe = common dso_local global [3 x i8*] zeroinitializer, align 16
@edgeframe = common dso_local global [3 x i8*] zeroinitializer, align 16
@edgeframeorig = common dso_local global [3 x i8*] zeroinitializer, align 16
@exnewframe = common dso_local global [3 x i8*] zeroinitializer, align 16
@MV = common dso_local global [2 x [5 x [73 x [90 x i32]]]] zeroinitializer, align 16
@modemap = common dso_local global [73 x [90 x i32]] zeroinitializer, align 16
@clp = common dso_local global i8* null, align 8
@horizontal_size = common dso_local global i32 0, align 4
@vertical_size = common dso_local global i32 0, align 4
@mb_width = common dso_local global i32 0, align 4
@mb_height = common dso_local global i32 0, align 4
@coded_picture_width = common dso_local global i32 0, align 4
@coded_picture_height = common dso_local global i32 0, align 4
@chrom_width = common dso_local global i32 0, align 4
@chrom_height = common dso_local global i32 0, align 4
@blk_cnt = common dso_local global i32 0, align 4
@pict_type = common dso_local global i32 0, align 4
@newgob = common dso_local global i32 0, align 4
@mv_outside_frame = common dso_local global i32 0, align 4
@syntax_arith_coding = common dso_local global i32 0, align 4
@adv_pred_mode = common dso_local global i32 0, align 4
@pb_frame = common dso_local global i32 0, align 4
@long_vectors = common dso_local global i32 0, align 4
@fault = common dso_local global i32 0, align 4
@expand = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@refidct = common dso_local global i32 0, align 4
@matrix_coefficients = common dso_local global i32 0, align 4
@quant = common dso_local global i32 0, align 4
@source_format = common dso_local global i32 0, align 4
@trd = common dso_local global i32 0, align 4
@trb = common dso_local global i32 0, align 4
@bscan = common dso_local global i32 0, align 4
@bquant = common dso_local global i32 0, align 4
@outtype = common dso_local global i32 0, align 4
@.str.186 = private unnamed_addr constant [25 x i8] c"Input file %s not found\0A\00", align 1
@loopflag = internal global i32 0, align 4
@.str.2.189 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str.3.190 = private unnamed_addr constant [29 x i8] c"ERROR: Illegal input format\0A\00", align 1
@.str.4.191 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5.192 = private unnamed_addr constant [27 x i8] c"couldn't clear outputfile\0A\00", align 1
@.str.6.193 = private unnamed_addr constant [30 x i8] c"undefined option -%c ignored\0A\00", align 1
@.str.7.194 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.8.195 = private unnamed_addr constant [225 x i8] c"Usage:   tmndecode {options} bitstream {outputfilename%%d}\0AOptions: -vn  verbose output (n: level)\0A         -on  output format \0A              n=0 : YUV\0A              n=1 : SIF\0A              n=2 : TGA\0A              n=3 : PPM\0A\00", align 1
@.str.9.196 = private unnamed_addr constant [38 x i8] c"              n=5 : YUV concatenated\0A\00", align 1
@.str.10.197 = private unnamed_addr constant [183 x i8] c"              You have to choose one output format!\0A         -q   disable warnings to stderr\0A         -r   use double precision reference IDCT\0A         -t   enable low level tracing\0A\00", align 1
@.str.1.198 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initbits() #0 {
  %1 = load %struct.ld*, %struct.ld** @ld, align 8
  %2 = getelementptr inbounds %struct.ld, %struct.ld* %1, i32 0, i32 4
  store i32 0, i32* %2, align 8
  %3 = load %struct.ld*, %struct.ld** @ld, align 8
  %4 = getelementptr inbounds %struct.ld, %struct.ld* %3, i32 0, i32 1
  %5 = getelementptr inbounds [2051 x i8], [2051 x i8]* %4, i64 0, i64 0
  %6 = getelementptr inbounds i8, i8* %5, i64 2048
  %7 = load %struct.ld*, %struct.ld** @ld, align 8
  %8 = getelementptr inbounds %struct.ld, %struct.ld* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.ld*, %struct.ld** @ld, align 8
  %10 = getelementptr inbounds %struct.ld, %struct.ld* %9, i32 0, i32 5
  store i32 0, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillbfr() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.ld*, %struct.ld** @ld, align 8
  %3 = getelementptr inbounds %struct.ld, %struct.ld* %2, i32 0, i32 3
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 8
  %5 = load i8, i8* %4, align 8
  %6 = load %struct.ld*, %struct.ld** @ld, align 8
  %7 = getelementptr inbounds %struct.ld, %struct.ld* %6, i32 0, i32 3
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  store i8 %5, i8* %8, align 8
  %9 = load %struct.ld*, %struct.ld** @ld, align 8
  %10 = getelementptr inbounds %struct.ld, %struct.ld* %9, i32 0, i32 3
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 9
  %12 = load i8, i8* %11, align 1
  %13 = load %struct.ld*, %struct.ld** @ld, align 8
  %14 = getelementptr inbounds %struct.ld, %struct.ld* %13, i32 0, i32 3
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 1
  store i8 %12, i8* %15, align 1
  %16 = load %struct.ld*, %struct.ld** @ld, align 8
  %17 = getelementptr inbounds %struct.ld, %struct.ld* %16, i32 0, i32 3
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 10
  %19 = load i8, i8* %18, align 2
  %20 = load %struct.ld*, %struct.ld** @ld, align 8
  %21 = getelementptr inbounds %struct.ld, %struct.ld* %20, i32 0, i32 3
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 2
  store i8 %19, i8* %22, align 2
  %23 = load %struct.ld*, %struct.ld** @ld, align 8
  %24 = getelementptr inbounds %struct.ld, %struct.ld* %23, i32 0, i32 3
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 11
  %26 = load i8, i8* %25, align 1
  %27 = load %struct.ld*, %struct.ld** @ld, align 8
  %28 = getelementptr inbounds %struct.ld, %struct.ld* %27, i32 0, i32 3
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 3
  store i8 %26, i8* %29, align 1
  %30 = load %struct.ld*, %struct.ld** @ld, align 8
  %31 = getelementptr inbounds %struct.ld, %struct.ld* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.ld*, %struct.ld** @ld, align 8
  %34 = getelementptr inbounds %struct.ld, %struct.ld* %33, i32 0, i32 1
  %35 = getelementptr inbounds [2051 x i8], [2051 x i8]* %34, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 2048
  %37 = icmp uge i8* %32, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %0
  %39 = load %struct.ld*, %struct.ld** @ld, align 8
  %40 = getelementptr inbounds %struct.ld, %struct.ld* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ld*, %struct.ld** @ld, align 8
  %43 = getelementptr inbounds %struct.ld, %struct.ld* %42, i32 0, i32 1
  %44 = getelementptr inbounds [2051 x i8], [2051 x i8]* %43, i64 0, i64 0
  %45 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i32, ...)*)(i32 %41, i8* %44, i32 2048)
  store i32 %45, i32* %1, align 4
  %46 = load %struct.ld*, %struct.ld** @ld, align 8
  %47 = getelementptr inbounds %struct.ld, %struct.ld* %46, i32 0, i32 1
  %48 = getelementptr inbounds [2051 x i8], [2051 x i8]* %47, i64 0, i64 0
  %49 = load %struct.ld*, %struct.ld** @ld, align 8
  %50 = getelementptr inbounds %struct.ld, %struct.ld* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %1, align 4
  %52 = icmp slt i32 %51, 2048
  br i1 %52, label %53, label %81

53:                                               ; preds = %38
  %54 = load i32, i32* %1, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %61, %57
  %59 = load i32, i32* %1, align 4
  %60 = icmp slt i32 %59, 2048
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load %struct.ld*, %struct.ld** @ld, align 8
  %63 = getelementptr inbounds %struct.ld, %struct.ld* %62, i32 0, i32 1
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [2051 x i8], [2051 x i8]* %63, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.ld*, %struct.ld** @ld, align 8
  %69 = getelementptr inbounds %struct.ld, %struct.ld* %68, i32 0, i32 1
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [2051 x i8], [2051 x i8]* %69, i64 0, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load %struct.ld*, %struct.ld** @ld, align 8
  %75 = getelementptr inbounds %struct.ld, %struct.ld* %74, i32 0, i32 1
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [2051 x i8], [2051 x i8]* %75, i64 0, i64 %78
  store i8 -4, i8* %79, align 1
  br label %58

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %38
  br label %82

82:                                               ; preds = %81, %0
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %100, %82
  %84 = load i32, i32* %1, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load %struct.ld*, %struct.ld** @ld, align 8
  %88 = getelementptr inbounds %struct.ld, %struct.ld* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load %struct.ld*, %struct.ld** @ld, align 8
  %95 = getelementptr inbounds %struct.ld, %struct.ld* %94, i32 0, i32 3
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %95, i64 0, i64 %98
  store i8 %93, i8* %99, align 1
  br label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %83

103:                                              ; preds = %83
  %104 = load %struct.ld*, %struct.ld** @ld, align 8
  %105 = getelementptr inbounds %struct.ld, %struct.ld* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  store i8* %107, i8** %105, align 8
  %108 = load %struct.ld*, %struct.ld** @ld, align 8
  %109 = getelementptr inbounds %struct.ld, %struct.ld* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 64
  store i32 %111, i32* %109, align 8
  ret void
}

declare dso_local i32 @read(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @showbits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.ld*, %struct.ld** @ld, align 8
  %7 = getelementptr inbounds %struct.ld, %struct.ld* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @fillbfr()
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %struct.ld*, %struct.ld** @ld, align 8
  %14 = getelementptr inbounds %struct.ld, %struct.ld* %13, i32 0, i32 3
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %16 = load %struct.ld*, %struct.ld** @ld, align 8
  %17 = getelementptr inbounds %struct.ld, %struct.ld* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 96, %18
  %20 = ashr i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %15, i64 %21
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 24
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 16
  %33 = or i32 %27, %32
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = or i32 %33, %38
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %39, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.ld*, %struct.ld** @ld, align 8
  %46 = getelementptr inbounds %struct.ld, %struct.ld* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %48, 7
  %50 = add nsw i32 %49, 25
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %52, %53
  %55 = lshr i32 %51, %54
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [33 x i32], [33 x i32]* @msk, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %55, %59
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getbits1() #0 {
  %1 = call i32 @getbits(i32 1)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getbits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @showbits(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  call void @flushbits(i32 %6)
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushbits(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.ld*, %struct.ld** @ld, align 8
  %5 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.ld*, %struct.ld** @ld, align 8
  %10 = getelementptr inbounds %struct.ld, %struct.ld* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ld*, %struct.ld** @ld, align 8
  %14 = getelementptr inbounds %struct.ld, %struct.ld* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  call void @fillbfr()
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getblock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.VLCtabI*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load %struct.ld*, %struct.ld** @ld, align 8
  %18 = getelementptr inbounds %struct.ld, %struct.ld* %17, i32 0, i32 6
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %18, i64 0, i64 %20
  %22 = getelementptr inbounds [64 x i16], [64 x i16]* %21, i64 0, i64 0
  store i16* %22, i16** %11, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %278, %2
  %27 = call i32 @showbits(i32 12)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp uge i32 %28, 512
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = lshr i32 %31, 5
  %33 = sub i32 %32, 16
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x %struct.VLCtabI], [0 x %struct.VLCtabI]* bitcast ([112 x %struct.VLCtabI]* @DCT3Dtab0 to [0 x %struct.VLCtabI]*), i64 0, i64 %34
  store %struct.VLCtabI* %35, %struct.VLCtabI** %10, align 8
  br label %63

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = icmp uge i32 %37, 128
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = lshr i32 %40, 2
  %42 = sub i32 %41, 32
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %struct.VLCtabI], [0 x %struct.VLCtabI]* bitcast ([96 x %struct.VLCtabI]* @DCT3Dtab1 to [0 x %struct.VLCtabI]*), i64 0, i64 %43
  store %struct.VLCtabI* %44, %struct.VLCtabI** %10, align 8
  br label %62

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = icmp uge i32 %46, 8
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = lshr i32 %49, 0
  %51 = sub i32 %50, 8
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %struct.VLCtabI], [0 x %struct.VLCtabI]* bitcast ([120 x %struct.VLCtabI]* @DCT3Dtab2 to [0 x %struct.VLCtabI]*), i64 0, i64 %52
  store %struct.VLCtabI* %53, %struct.VLCtabI** %10, align 8
  br label %61

54:                                               ; preds = %45
  %55 = load i32, i32* @quiet, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  store i32 1, i32* @fault, align 4
  br label %281

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.VLCtabI*, %struct.VLCtabI** %10, align 8
  %65 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  call void @flushbits(i32 %66)
  %67 = load %struct.VLCtabI*, %struct.VLCtabI** %10, align 8
  %68 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %12, align 4
  %72 = load %struct.VLCtabI*, %struct.VLCtabI** %10, align 8
  %73 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  store i32 %75, i32* %14, align 4
  %76 = load %struct.VLCtabI*, %struct.VLCtabI** %10, align 8
  %77 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 12
  %80 = and i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* @trace, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %63
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.VLCtabI*, %struct.VLCtabI** %10, align 8
  %87 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  call void @printbits(i32 %85, i32 12, i32 %88)
  br label %89

89:                                               ; preds = %83, %63
  %90 = load %struct.VLCtabI*, %struct.VLCtabI** %10, align 8
  %91 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 7167
  br i1 %93, label %94, label %127

94:                                               ; preds = %89
  %95 = load i32, i32* @trace, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = call i32 @putchar(i32 32)
  %99 = call i32 @showbits(i32 1)
  call void @printbits(i32 %99, i32 1, i32 1)
  br label %100

100:                                              ; preds = %97, %94
  %101 = call i32 @getbits1()
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* @trace, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = call i32 @putchar(i32 32)
  %106 = call i32 @showbits(i32 6)
  call void @printbits(i32 %106, i32 6, i32 6)
  br label %107

107:                                              ; preds = %104, %100
  %108 = call i32 @getbits(i32 6)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @trace, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = call i32 @putchar(i32 32)
  %115 = call i32 @showbits(i32 8)
  call void @printbits(i32 %115, i32 8, i32 8)
  br label %116

116:                                              ; preds = %113, %107
  %117 = call i32 @getbits(i32 8)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp sge i32 %118, 128
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %8, align 4
  br i1 %119, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 256, %122
  store i32 %123, i32* %5, align 4
  br label %126

124:                                              ; preds = %116
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %121
  br label %139

127:                                              ; preds = %89
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %5, align 4
  %132 = call i32 @getbits(i32 1)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @trace, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %135, %127
  br label %139

139:                                              ; preds = %138, %126
  %140 = load i32, i32* %6, align 4
  %141 = icmp sge i32 %140, 64
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* @quiet, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142
  store i32 1, i32* @fault, align 4
  br label %281

149:                                              ; preds = %139
  %150 = load i32, i32* @trace, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = sub nsw i32 0, %157
  br label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %5, align 4
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi i32 [ %158, %156 ], [ %160, %159 ]
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %153, i32 %162)
  br label %164

164:                                              ; preds = %161, %149
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* @zig_zag_scan, i64 0, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  store i32 %169, i32* %7, align 4
  %170 = load i16*, i16** %11, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i16, i16* %170, i64 %172
  store i16* %173, i16** %16, align 8
  %174 = load i32, i32* %3, align 4
  %175 = icmp sge i32 %174, 6
  br i1 %175, label %176, label %220

176:                                              ; preds = %164
  %177 = load i32, i32* @bquant, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @quant, align 4
  %182 = mul nsw i32 %180, %181
  %183 = ashr i32 %182, 2
  %184 = icmp slt i32 31, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %194

186:                                              ; preds = %176
  %187 = load i32, i32* @bquant, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @quant, align 4
  %192 = mul nsw i32 %190, %191
  %193 = ashr i32 %192, 2
  br label %194

194:                                              ; preds = %186, %185
  %195 = phi i32 [ 31, %185 ], [ %193, %186 ]
  %196 = icmp sgt i32 1, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  br label %218

198:                                              ; preds = %194
  %199 = load i32, i32* @bquant, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @quant, align 4
  %204 = mul nsw i32 %202, %203
  %205 = ashr i32 %204, 2
  %206 = icmp slt i32 31, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  br label %216

208:                                              ; preds = %198
  %209 = load i32, i32* @bquant, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @quant, align 4
  %214 = mul nsw i32 %212, %213
  %215 = ashr i32 %214, 2
  br label %216

216:                                              ; preds = %208, %207
  %217 = phi i32 [ 31, %207 ], [ %215, %208 ]
  br label %218

218:                                              ; preds = %216, %197
  %219 = phi i32 [ 1, %197 ], [ %217, %216 ]
  store i32 %219, i32* %15, align 4
  br label %222

220:                                              ; preds = %164
  %221 = load i32, i32* @quant, align 4
  store i32 %221, i32* %15, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = load i32, i32* %15, align 4
  %224 = srem i32 %223, 2
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %246

226:                                              ; preds = %222
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %5, align 4
  %232 = mul nsw i32 2, %231
  %233 = add nsw i32 %232, 1
  %234 = mul nsw i32 %230, %233
  %235 = sub nsw i32 0, %234
  br label %242

236:                                              ; preds = %226
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %5, align 4
  %239 = mul nsw i32 2, %238
  %240 = add nsw i32 %239, 1
  %241 = mul nsw i32 %237, %240
  br label %242

242:                                              ; preds = %236, %229
  %243 = phi i32 [ %235, %229 ], [ %241, %236 ]
  %244 = trunc i32 %243 to i16
  %245 = load i16*, i16** %16, align 8
  store i16 %244, i16* %245, align 2
  br label %268

246:                                              ; preds = %222
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %246
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* %5, align 4
  %252 = mul nsw i32 2, %251
  %253 = add nsw i32 %252, 1
  %254 = mul nsw i32 %250, %253
  %255 = sub nsw i32 %254, 1
  %256 = sub nsw i32 0, %255
  br label %264

257:                                              ; preds = %246
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %5, align 4
  %260 = mul nsw i32 2, %259
  %261 = add nsw i32 %260, 1
  %262 = mul nsw i32 %258, %261
  %263 = sub nsw i32 %262, 1
  br label %264

264:                                              ; preds = %257, %249
  %265 = phi i32 [ %256, %249 ], [ %263, %257 ]
  %266 = trunc i32 %265 to i16
  %267 = load i16*, i16** %16, align 8
  store i16 %266, i16* %267, align 2
  br label %268

268:                                              ; preds = %264, %242
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = load i32, i32* @trace, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %276

276:                                              ; preds = %274, %271
  br label %281

277:                                              ; preds = %268
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %26

281:                                              ; preds = %276, %148, %60
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_sac_block(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca %struct.RunCoef, align 4
  %15 = alloca %struct.RunCoef, align 4
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca %struct.RunCoef, align 4
  %18 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.ld*, %struct.ld** @ld, align 8
  %20 = getelementptr inbounds %struct.ld, %struct.ld* %19, i32 0, i32 6
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %20, i64 0, i64 %22
  %24 = getelementptr inbounds [64 x i16], [64 x i16]* %23, i64 0, i64 0
  store i16* %24, i16** %13, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %197, %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %198

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @DecodeTCoef(i32 %35, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 102
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call { i64, i32 } @Decode_Escape_Char(i32 %47, i32* %8)
  store { i64, i32 } %48, { i64, i32 }* %16, align 8
  %49 = bitcast { i64, i32 }* %16 to i8*
  %50 = bitcast %struct.RunCoef* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %49, i64 12, i1 false)
  %51 = bitcast %struct.RunCoef* %14 to i8*
  %52 = bitcast %struct.RunCoef* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 12, i1 false)
  %53 = load i32, i32* @trace, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %43
  br label %69

58:                                               ; preds = %32
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [103 x i32], [103 x i32]* @tcoeftab, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call { i64, i32 } @vlc_word_decode(i32 %63, i32* %8)
  store { i64, i32 } %64, { i64, i32 }* %18, align 8
  %65 = bitcast { i64, i32 }* %18 to i8*
  %66 = bitcast %struct.RunCoef* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %65, i64 12, i1 false)
  %67 = bitcast %struct.RunCoef* %14 to i8*
  %68 = bitcast %struct.RunCoef* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 12, i1 false)
  br label %69

69:                                               ; preds = %58, %57
  %70 = load i32, i32* @trace, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %74, i32 %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %72, %69
  %82 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* @zig_zag_scan, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i16*, i16** %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %91, i64 %93
  store i16* %94, i16** %12, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp sge i32 %97, 6
  br i1 %98, label %99, label %143

99:                                               ; preds = %81
  %100 = load i32, i32* @bquant, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @quant, align 4
  %105 = mul nsw i32 %103, %104
  %106 = ashr i32 %105, 2
  %107 = icmp slt i32 31, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %117

109:                                              ; preds = %99
  %110 = load i32, i32* @bquant, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @quant, align 4
  %115 = mul nsw i32 %113, %114
  %116 = ashr i32 %115, 2
  br label %117

117:                                              ; preds = %109, %108
  %118 = phi i32 [ 31, %108 ], [ %116, %109 ]
  %119 = icmp sgt i32 1, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %141

121:                                              ; preds = %117
  %122 = load i32, i32* @bquant, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @quant, align 4
  %127 = mul nsw i32 %125, %126
  %128 = ashr i32 %127, 2
  %129 = icmp slt i32 31, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %139

131:                                              ; preds = %121
  %132 = load i32, i32* @bquant, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @bquant_tab to [0 x i32]*), i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @quant, align 4
  %137 = mul nsw i32 %135, %136
  %138 = ashr i32 %137, 2
  br label %139

139:                                              ; preds = %131, %130
  %140 = phi i32 [ 31, %130 ], [ %138, %131 ]
  br label %141

141:                                              ; preds = %139, %120
  %142 = phi i32 [ 1, %120 ], [ %140, %139 ]
  store i32 %142, i32* %9, align 4
  br label %145

143:                                              ; preds = %81
  %144 = load i32, i32* @quant, align 4
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = load i32, i32* %9, align 4
  %147 = srem i32 %146, 2
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %172

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  %155 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %157, 1
  %159 = mul nsw i32 %154, %158
  %160 = sub nsw i32 0, %159
  br label %168

161:                                              ; preds = %149
  %162 = load i32, i32* %9, align 4
  %163 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 2, %164
  %166 = add nsw i32 %165, 1
  %167 = mul nsw i32 %162, %166
  br label %168

168:                                              ; preds = %161, %153
  %169 = phi i32 [ %160, %153 ], [ %167, %161 ]
  %170 = trunc i32 %169 to i16
  %171 = load i16*, i16** %12, align 8
  store i16 %170, i16* %171, align 2
  br label %197

172:                                              ; preds = %145
  %173 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 2, %179
  %181 = add nsw i32 %180, 1
  %182 = mul nsw i32 %177, %181
  %183 = sub nsw i32 %182, 1
  %184 = sub nsw i32 0, %183
  br label %193

185:                                              ; preds = %172
  %186 = load i32, i32* %9, align 4
  %187 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %14, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 2, %188
  %190 = add nsw i32 %189, 1
  %191 = mul nsw i32 %186, %190
  %192 = sub nsw i32 %191, 1
  br label %193

193:                                              ; preds = %185, %176
  %194 = phi i32 [ %184, %176 ], [ %192, %185 ]
  %195 = trunc i32 %194 to i16
  %196 = load i16*, i16** %12, align 8
  store i16 %195, i16* %196, align 2
  br label %197

197:                                              ; preds = %193, %168
  br label %28

198:                                              ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DecodeTCoef(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %31 [
    i32 1, label %7
    i32 2, label %15
    i32 3, label %23
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEF1_intra, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  br label %14

12:                                               ; preds = %7
  %13 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEF1, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %10
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEF2_intra, i64 0, i64 0))
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %15
  %21 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEF2, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %18
  br label %39

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEF3_intra, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %23
  %29 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEF3, i64 0, i64 0))
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %39

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEFr_intra, i64 0, i64 0))
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %31
  %37 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([104 x i32], [104 x i32]* @cumf_TCOEFr, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %30, %22, %14
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @Decode_Escape_Char(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.RunCoef, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @cumf_LAST_intra, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* @last_intratab, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %28

21:                                               ; preds = %2
  %22 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @cumf_LAST, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* @lasttab, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %14
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([65 x i32], [65 x i32]* @cumf_RUN_intra, i64 0, i64 0))
  store i32 %32, i32* %8, align 4
  br label %35

33:                                               ; preds = %28
  %34 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([65 x i32], [65 x i32]* @cumf_RUN, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [64 x i32], [64 x i32]* @runtab, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @cumf_LEVEL_intra, i64 0, i64 0))
  store i32 %45, i32* %10, align 4
  br label %48

46:                                               ; preds = %35
  %47 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @cumf_LEVEL, i64 0, i64 0))
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* @trace, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [254 x i32], [254 x i32]* @leveltab, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %59, 128
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, 256
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @abs(i32 %69) #8
  %71 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  br label %76

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 2
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = bitcast { i64, i32 }* %11 to i8*
  %78 = bitcast %struct.RunCoef* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = load { i64, i32 }, { i64, i32 }* %11, align 8
  ret { i64, i32 } %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @vlc_word_decode(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.RunCoef, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 12
  %10 = and i32 %9, 1
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 15
  %18 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @cumf_SIGN, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* @signtab, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.RunCoef, %struct.RunCoef* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = bitcast { i64, i32 }* %7 to i8*
  %26 = bitcast %struct.RunCoef* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 12, i1 false)
  %27 = load { i64, i32 }, { i64, i32 }* %7, align 8
  ret { i64, i32 } %27
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getheader() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @startcode()
  %4 = call i32 @getbits(i32 17)
  store i32 %4, i32* %2, align 4
  %5 = call i32 @getbits(i32 5)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 31
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %20

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  call void @getpicturehdr()
  %13 = load i32, i32* @syntax_arith_coding, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (...) bitcast (void ()* @decoder_reset to void (...)*)()
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %17, %8
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @startcode() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = call i32 @showbits(i32 17)
  %3 = zext i32 %2 to i64
  %4 = icmp ne i64 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @flushbits(i32 1)
  br label %1

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @getpicturehdr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.ld*, %struct.ld** @ld, align 8
  %5 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @temp_ref, align 4
  store i32 %7, i32* @prev_temp_ref, align 4
  %8 = call i32 @getbits(i32 8)
  store i32 %8, i32* @temp_ref, align 4
  %9 = load i32, i32* @temp_ref, align 4
  %10 = load i32, i32* @prev_temp_ref, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* @trd, align 4
  %12 = load i32, i32* @trd, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @trd, align 4
  %16 = add nsw i32 %15, 256
  store i32 %16, i32* @trd, align 4
  br label %17

17:                                               ; preds = %14, %0
  %18 = call i32 @getbits(i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @quiet, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  br label %27

27:                                               ; preds = %26, %17
  %28 = call i32 @getbits(i32 1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @quiet, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1.10, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %27
  %38 = call i32 @getbits(i32 1)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @quiet, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2.11, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  call void @exit(i32 -1) #9
  unreachable

47:                                               ; preds = %37
  %48 = call i32 @getbits(i32 1)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @quiet, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3.12, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  br label %57

57:                                               ; preds = %56, %47
  %58 = call i32 @getbits(i32 1)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* @quiet, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4.13, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  br label %67

67:                                               ; preds = %66, %57
  %68 = call i32 @getbits(i32 3)
  store i32 %68, i32* @source_format, align 4
  %69 = call i32 @getbits(i32 1)
  store i32 %69, i32* @pict_type, align 4
  %70 = call i32 @getbits(i32 1)
  store i32 %70, i32* @mv_outside_frame, align 4
  %71 = load i32, i32* @mv_outside_frame, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  store i32 %74, i32* @long_vectors, align 4
  %75 = call i32 @getbits(i32 1)
  store i32 %75, i32* @syntax_arith_coding, align 4
  %76 = call i32 @getbits(i32 1)
  store i32 %76, i32* @adv_pred_mode, align 4
  %77 = load i32, i32* @adv_pred_mode, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @mv_outside_frame, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i32 [ 1, %79 ], [ %81, %80 ]
  store i32 %83, i32* @mv_outside_frame, align 4
  %84 = call i32 @getbits(i32 1)
  store i32 %84, i32* @pb_frame, align 4
  %85 = call i32 @getbits(i32 5)
  store i32 %85, i32* @quant, align 4
  %86 = call i32 @getbits(i32 1)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @quiet, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5.14, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  call void @exit(i32 -1) #9
  unreachable

95:                                               ; preds = %82
  %96 = load i32, i32* @pb_frame, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i32 @getbits(i32 3)
  store i32 %99, i32* @trb, align 4
  %100 = call i32 @getbits(i32 2)
  store i32 %100, i32* @bquant, align 4
  br label %102

101:                                              ; preds = %95
  store i32 0, i32* @trb, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = call i32 @getbits(i32 1)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %112, %102
  %105 = load i32, i32* %2, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = call i32 @getbits(i32 8)
  %109 = call i32 @getbits(i32 1)
  store i32 %109, i32* %2, align 4
  %110 = load i32, i32* %2, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %104

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %104
  %115 = load i32, i32* @verbose, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* @verbose, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* @temp_ref, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.15, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @pb_frame, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @trb, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.16, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %117
  br label %130

130:                                              ; preds = %129, %114
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @getpicture(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x i8*], [3 x i8*]* @refframe, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 %18
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* @refframe, i64 0, i64 %22
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i8*], [3 x i8*]* @refframe, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* @newframe, i64 0, i64 %29
  store i8* %27, i8** %30, align 8
  br label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load i32, i32* @mv_outside_frame, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 0), align 16
  %43 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 0), align 16
  %44 = load i32, i32* @coded_picture_width, align 4
  %45 = load i32, i32* @coded_picture_height, align 4
  call void @make_edge_image(i8* %42, i8* %43, i32 %44, i32 %45, i32 32)
  %46 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 1), align 8
  %47 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 1), align 8
  %48 = load i32, i32* @chrom_width, align 4
  %49 = load i32, i32* @chrom_height, align 4
  call void @make_edge_image(i8* %46, i8* %47, i32 %48, i32 %49, i32 16)
  %50 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 2), align 16
  %51 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 2), align 16
  %52 = load i32, i32* @chrom_width, align 4
  %53 = load i32, i32* @chrom_height, align 4
  call void @make_edge_image(i8* %50, i8* %51, i32 %52, i32 %53, i32 16)
  br label %54

54:                                               ; preds = %41, %37, %34
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %55, align 4
  call void @getMBs(i32 %56)
  %57 = load i32, i32* @pb_frame, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load i32, i32* @expand, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load i32, i32* @outtype, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 0), align 16
  %67 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 0), align 16
  %68 = load i32, i32* @coded_picture_width, align 4
  %69 = load i32, i32* @coded_picture_height, align 4
  call void @interpolate_image(i8* %66, i8* %67, i32 %68, i32 %69)
  %70 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 1), align 8
  %71 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 1), align 8
  %72 = load i32, i32* @chrom_width, align 4
  %73 = load i32, i32* @chrom_height, align 4
  call void @interpolate_image(i8* %70, i8* %71, i32 %72, i32 %73)
  %74 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 2), align 16
  %75 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 2), align 16
  %76 = load i32, i32* @chrom_width, align 4
  %77 = load i32, i32* @chrom_height, align 4
  call void @interpolate_image(i8* %74, i8* %75, i32 %76, i32 %77)
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* %78, align 4
  call void @storeframe(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 0), i32 %79)
  br label %83

80:                                               ; preds = %62, %59
  %81 = load i32*, i32** %2, align 8
  %82 = load i32, i32* %81, align 4
  call void @storeframe(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 0), i32 %82)
  br label %83

83:                                               ; preds = %80, %65
  %84 = load i32, i32* @pb_frame, align 4
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %54
  %89 = load i32, i32* @expand, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load i32, i32* @outtype, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 0), align 16
  %96 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 0), align 16
  %97 = load i32, i32* @coded_picture_width, align 4
  %98 = load i32, i32* @coded_picture_height, align 4
  call void @interpolate_image(i8* %95, i8* %96, i32 %97, i32 %98)
  %99 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 1), align 8
  %100 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 1), align 8
  %101 = load i32, i32* @chrom_width, align 4
  %102 = load i32, i32* @chrom_height, align 4
  call void @interpolate_image(i8* %99, i8* %100, i32 %101, i32 %102)
  %103 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 2), align 16
  %104 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 2), align 16
  %105 = load i32, i32* @chrom_width, align 4
  %106 = load i32, i32* @chrom_height, align 4
  call void @interpolate_image(i8* %103, i8* %104, i32 %105, i32 %106)
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* %107, align 4
  call void @storeframe(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 0), i32 %108)
  br label %112

109:                                              ; preds = %91, %88
  %110 = load i32*, i32** %2, align 8
  %111 = load i32, i32* %110, align 4
  call void @storeframe(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 0), i32 %111)
  br label %112

112:                                              ; preds = %109, %94
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @make_edge_image(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %57, %5
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8*, i8** %17, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %37, i8* %41, align 1
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 1
  %49 = add nsw i32 %46, %48
  %50 = load i8*, i8** %13, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %13, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %17, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %17, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %23

60:                                               ; preds = %23
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %110, %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %95, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load i8*, i8** %17, align 8
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 %75, i8* %80, align 1
  %81 = load i8*, i8** %17, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 -1
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 %86, i8* %94, align 1
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %69

98:                                               ; preds = %69
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %100, 1
  %102 = add nsw i32 %99, %101
  %103 = load i8*, i8** %13, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %13, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i8*, i8** %17, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %17, align 8
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %64

113:                                              ; preds = %64
  %114 = load i8*, i8** %7, align 8
  store i8* %114, i8** %13, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = shl i32 %117, 1
  %119 = add nsw i32 %116, %118
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, 1
  %122 = mul nsw i32 %119, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %115, i64 %123
  store i8* %124, i8** %14, align 8
  %125 = load i8*, i8** %6, align 8
  store i8* %125, i8** %17, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = mul nsw i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %126, i64 %131
  store i8* %132, i8** %18, align 8
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %180, %113
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %183

137:                                              ; preds = %133
  %138 = load i8*, i8** %13, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = shl i32 %140, 1
  %142 = add nsw i32 %139, %141
  %143 = sext i32 %142 to i64
  %144 = sub i64 0, %143
  %145 = getelementptr inbounds i8, i8* %138, i64 %144
  store i8* %145, i8** %13, align 8
  %146 = load i8*, i8** %14, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %10, align 4
  %149 = shl i32 %148, 1
  %150 = add nsw i32 %147, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  store i8* %152, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %176, %137
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = load i8*, i8** %17, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** %13, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 %162, i8* %166, align 1
  %167 = load i8*, i8** %18, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = load i8*, i8** %14, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8 %171, i8* %175, align 1
  br label %176

176:                                              ; preds = %157
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %153

179:                                              ; preds = %153
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %133

183:                                              ; preds = %133
  %184 = load i8*, i8** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %10, align 4
  %187 = shl i32 %186, 1
  %188 = add nsw i32 %185, %187
  %189 = sext i32 %188 to i64
  %190 = sub i64 0, %189
  %191 = getelementptr inbounds i8, i8* %184, i64 %190
  %192 = getelementptr inbounds i8, i8* %191, i64 -1
  store i8* %192, i8** %13, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  store i8* %197, i8** %14, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %10, align 4
  %201 = shl i32 %200, 1
  %202 = add nsw i32 %199, %201
  %203 = load i32, i32* %9, align 4
  %204 = mul nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %198, i64 %205
  %207 = getelementptr inbounds i8, i8* %206, i64 -1
  store i8* %207, i8** %15, align 8
  %208 = load i8*, i8** %15, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  store i8* %212, i8** %16, align 8
  %213 = load i8*, i8** %6, align 8
  store i8* %213, i8** %17, align 8
  %214 = load i8*, i8** %17, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = getelementptr inbounds i8, i8* %217, i64 -1
  store i8* %218, i8** %18, align 8
  %219 = load i8*, i8** %6, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %9, align 4
  %222 = sub nsw i32 %221, 1
  %223 = mul nsw i32 %220, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %219, i64 %224
  store i8* %225, i8** %19, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = getelementptr inbounds i8, i8* %229, i64 -1
  store i8* %230, i8** %20, align 8
  store i32 0, i32* %12, align 4
  br label %231

231:                                              ; preds = %303, %183
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %306

235:                                              ; preds = %231
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %267, %235
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %270

240:                                              ; preds = %236
  %241 = load i8*, i8** %17, align 8
  %242 = load i8, i8* %241, align 1
  %243 = load i8*, i8** %13, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = sub i64 0, %245
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  store i8 %242, i8* %247, align 1
  %248 = load i8*, i8** %18, align 8
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %14, align 8
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  store i8 %249, i8* %253, align 1
  %254 = load i8*, i8** %19, align 8
  %255 = load i8, i8* %254, align 1
  %256 = load i8*, i8** %15, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = sub i64 0, %258
  %260 = getelementptr inbounds i8, i8* %256, i64 %259
  store i8 %255, i8* %260, align 1
  %261 = load i8*, i8** %20, align 8
  %262 = load i8, i8* %261, align 1
  %263 = load i8*, i8** %16, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8 %262, i8* %266, align 1
  br label %267

267:                                              ; preds = %240
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %236

270:                                              ; preds = %236
  %271 = load i8*, i8** %13, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %10, align 4
  %274 = shl i32 %273, 1
  %275 = add nsw i32 %272, %274
  %276 = sext i32 %275 to i64
  %277 = sub i64 0, %276
  %278 = getelementptr inbounds i8, i8* %271, i64 %277
  store i8* %278, i8** %13, align 8
  %279 = load i8*, i8** %14, align 8
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %10, align 4
  %282 = shl i32 %281, 1
  %283 = add nsw i32 %280, %282
  %284 = sext i32 %283 to i64
  %285 = sub i64 0, %284
  %286 = getelementptr inbounds i8, i8* %279, i64 %285
  store i8* %286, i8** %14, align 8
  %287 = load i8*, i8** %15, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = load i32, i32* %10, align 4
  %292 = shl i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %290, i64 %293
  store i8* %294, i8** %15, align 8
  %295 = load i8*, i8** %16, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i32, i32* %10, align 4
  %300 = shl i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %298, i64 %301
  store i8* %302, i8** %16, align 8
  br label %303

303:                                              ; preds = %270
  %304 = load i32, i32* %12, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %12, align 4
  br label %231

306:                                              ; preds = %231
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @getMBs(i32 %0) #0 {
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
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca [4 x i32], align 16
  %54 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %49, align 4
  store i32 0, i32* %50, align 4
  store i32 0, i32* %51, align 4
  store i32 0, i32* %52, align 4
  %55 = bitcast [4 x i32]* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %55, i8* align 16 bitcast ([4 x i32]* @__const.getMBs.DQ_tab to i8*), i64 16, i1 false)
  %56 = load i32, i32* @mb_width, align 4
  %57 = load i32, i32* @mb_height, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* @newgob, align 4
  store i32 1, i32* %35, align 4
  br label %59

59:                                               ; preds = %90, %1
  %60 = load i32, i32* %35, align 4
  %61 = load i32, i32* @mb_width, align 4
  %62 = add nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %59
  store i32 0, i32* %36, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %36, align 4
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %36, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %70
  %72 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %71, i64 0, i64 0
  %73 = load i32, i32* %35, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [90 x i32], [90 x i32]* %72, i64 0, i64 %74
  store i32 999, i32* %75, align 4
  %76 = load i32, i32* %36, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %77
  %79 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %78, i64 0, i64 0
  %80 = load i32, i32* %35, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [90 x i32], [90 x i32]* %79, i64 0, i64 %81
  store i32 999, i32* %82, align 4
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %36, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %36, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load i32, i32* %35, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [90 x i32], [90 x i32]* getelementptr inbounds ([73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 0), i64 0, i64 %88
  store i32 3, i32* %89, align 4
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %35, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %35, align 4
  br label %59

93:                                               ; preds = %59
  store i32 0, i32* %35, align 4
  br label %94

94:                                               ; preds = %153, %93
  %95 = load i32, i32* %35, align 4
  %96 = load i32, i32* @mb_height, align 4
  %97 = add nsw i32 %96, 1
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %156

99:                                               ; preds = %94
  store i32 0, i32* %36, align 4
  br label %100

100:                                              ; preds = %138, %99
  %101 = load i32, i32* %36, align 4
  %102 = icmp slt i32 %101, 5
  br i1 %102, label %103, label %141

103:                                              ; preds = %100
  %104 = load i32, i32* %36, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %105
  %107 = load i32, i32* %35, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %106, i64 0, i64 %108
  %110 = getelementptr inbounds [90 x i32], [90 x i32]* %109, i64 0, i64 0
  store i32 0, i32* %110, align 8
  %111 = load i32, i32* %36, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %112
  %114 = load i32, i32* %35, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds [90 x i32], [90 x i32]* %116, i64 0, i64 0
  store i32 0, i32* %117, align 8
  %118 = load i32, i32* %36, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %119
  %121 = load i32, i32* %35, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %120, i64 0, i64 %122
  %124 = load i32, i32* @mb_width, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [90 x i32], [90 x i32]* %123, i64 0, i64 %126
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %36, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %129
  %131 = load i32, i32* %35, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %130, i64 0, i64 %132
  %134 = load i32, i32* @mb_width, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [90 x i32], [90 x i32]* %133, i64 0, i64 %136
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %103
  %139 = load i32, i32* %36, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %36, align 4
  br label %100

141:                                              ; preds = %100
  %142 = load i32, i32* %35, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %143
  %145 = getelementptr inbounds [90 x i32], [90 x i32]* %144, i64 0, i64 0
  store i32 3, i32* %145, align 8
  %146 = load i32, i32* %35, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %147
  %149 = load i32, i32* @mb_width, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [90 x i32], [90 x i32]* %148, i64 0, i64 %151
  store i32 3, i32* %152, align 4
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %35, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %35, align 4
  br label %94

156:                                              ; preds = %94
  store i32 0, i32* @fault, align 4
  store i32 0, i32* %44, align 4
  br label %157

157:                                              ; preds = %1243, %156
  %158 = load i32, i32* @trace, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* %2, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %157
  br label %165

165:                                              ; preds = %1217, %1181, %797, %349, %164
  %166 = load i32, i32* @fault, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1.18, i64 0, i64 0))
  call void @startcode()
  store i32 0, i32* @fault, align 4
  br label %170

170:                                              ; preds = %168, %165
  %171 = call i32 @showbits(i32 22)
  %172 = lshr i32 %171, 6
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %251, label %174

174:                                              ; preds = %170
  call void @startcode()
  %175 = call i32 @showbits(i32 22)
  %176 = icmp eq i32 %175, 63
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i32, i32* @syntax_arith_coding, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %185, label %184

184:                                              ; preds = %180, %177
  br label %1244

185:                                              ; preds = %180
  br label %250

186:                                              ; preds = %174
  %187 = call i32 @showbits(i32 22)
  %188 = icmp eq i32 %187, 32
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i32, i32* @syntax_arith_coding, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %197, label %196

196:                                              ; preds = %192, %189
  br label %1244

197:                                              ; preds = %192
  br label %249

198:                                              ; preds = %186
  %199 = load i32, i32* @syntax_arith_coding, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @mb_width, align 4
  %204 = srem i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %248, label %206

206:                                              ; preds = %201, %198
  %207 = load i32, i32* @syntax_arith_coding, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = call i32 @showbits(i32 22)
  %211 = and i32 %210, 31
  store i32 %211, i32* %34, align 4
  %212 = load i32, i32* %34, align 4
  %213 = load i32, i32* @mb_width, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %252

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %206
  %220 = call i32 @getheader()
  %221 = sub nsw i32 %220, 1
  store i32 %221, i32* %34, align 4
  %222 = load i32, i32* %34, align 4
  %223 = load i32, i32* @mb_height, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = load i32, i32* @quiet, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.19, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %225
  br label %1244

231:                                              ; preds = %219
  %232 = call i32 @getbits(i32 2)
  store i32 %232, i32* %41, align 4
  %233 = call i32 @getbits(i32 5)
  store i32 %233, i32* @quant, align 4
  %234 = load i32, i32* @trace, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32, i32* @quant, align 4
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.20, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %236, %231
  store i32 0, i32* %32, align 4
  %240 = load i32, i32* %34, align 4
  store i32 %240, i32* %33, align 4
  %241 = load i32, i32* %33, align 4
  %242 = load i32, i32* @mb_width, align 4
  %243 = mul nsw i32 %241, %242
  store i32 %243, i32* %4, align 4
  store i32 1, i32* @newgob, align 4
  store i32 1, i32* %44, align 4
  %244 = load i32, i32* @syntax_arith_coding, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  call void (...) bitcast (void ()* @decoder_reset to void (...)*)()
  br label %247

247:                                              ; preds = %246, %239
  br label %248

248:                                              ; preds = %247, %201
  br label %249

249:                                              ; preds = %248, %197
  br label %250

250:                                              ; preds = %249, %185
  br label %251

251:                                              ; preds = %250, %170
  br label %252

252:                                              ; preds = %251, %217
  %253 = load i32, i32* %44, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* @mb_width, align 4
  %258 = srem i32 %256, %257
  store i32 %258, i32* %32, align 4
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @mb_width, align 4
  %261 = sdiv i32 %259, %260
  store i32 %261, i32* %33, align 4
  %262 = load i32, i32* %32, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %255
  %265 = load i32, i32* %33, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 0, i32* @newgob, align 4
  br label %268

268:                                              ; preds = %267, %264, %255
  br label %270

269:                                              ; preds = %252
  store i32 0, i32* %44, align 4
  br label %270

270:                                              ; preds = %269, %268
  %271 = load i32, i32* %4, align 4
  %272 = load i32, i32* %5, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  br label %1244

275:                                              ; preds = %270
  br label %276

276:                                              ; preds = %353, %275
  %277 = load i32, i32* @syntax_arith_coding, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %298

279:                                              ; preds = %276
  %280 = load i32, i32* @pict_type, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %296

282:                                              ; preds = %279
  %283 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @cumf_COD, i64 0, i64 0))
  store i32 %283, i32* %16, align 4
  %284 = load i32, i32* %16, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([2 x i32]* @codtab to [0 x i32]*), i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %8, align 4
  %288 = load i32, i32* @trace, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %282
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.21, i64 0, i64 0))
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %8, align 4
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5.22, i64 0, i64 0), i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %290, %282
  br label %297

296:                                              ; preds = %279
  store i32 0, i32* %8, align 4
  br label %297

297:                                              ; preds = %296, %295
  br label %305

298:                                              ; preds = %276
  %299 = load i32, i32* @pict_type, align 4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 @showbits(i32 1)
  store i32 %302, i32* %8, align 4
  br label %304

303:                                              ; preds = %298
  store i32 0, i32* %8, align 4
  br label %304

304:                                              ; preds = %303, %301
  br label %305

305:                                              ; preds = %304, %297
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %799, label %308

308:                                              ; preds = %305
  %309 = load i32, i32* @syntax_arith_coding, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %334

311:                                              ; preds = %308
  %312 = load i32, i32* @pict_type, align 4
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([22 x i32], [22 x i32]* @cumf_MCBPC, i64 0, i64 0))
  store i32 %315, i32* %20, align 4
  %316 = load i32, i32* %20, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([21 x i32]* @mcbpctab to [0 x i32]*), i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %9, align 4
  br label %326

320:                                              ; preds = %311
  %321 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @cumf_MCBPC_intra, i64 0, i64 0))
  store i32 %321, i32* %20, align 4
  %322 = load i32, i32* %20, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([9 x i32]* @mcbpc_intratab to [0 x i32]*), i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %9, align 4
  br label %326

326:                                              ; preds = %320, %314
  %327 = load i32, i32* @trace, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %326
  %330 = load i32, i32* %20, align 4
  %331 = load i32, i32* %9, align 4
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.23, i64 0, i64 0), i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %329, %326
  br label %346

334:                                              ; preds = %308
  %335 = load i32, i32* @pict_type, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  call void @flushbits(i32 1)
  br label %338

338:                                              ; preds = %337, %334
  %339 = load i32, i32* @pict_type, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = call i32 @getMCBPCintra()
  store i32 %342, i32* %9, align 4
  br label %345

343:                                              ; preds = %338
  %344 = call i32 @getMCBPC()
  store i32 %344, i32* %9, align 4
  br label %345

345:                                              ; preds = %343, %341
  br label %346

346:                                              ; preds = %345, %333
  %347 = load i32, i32* @fault, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  br label %165

350:                                              ; preds = %346
  %351 = load i32, i32* %9, align 4
  %352 = icmp eq i32 %351, 255
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  br label %276

354:                                              ; preds = %350
  %355 = load i32, i32* %9, align 4
  %356 = and i32 %355, 7
  store i32 %356, i32* %14, align 4
  %357 = load i32, i32* @pb_frame, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %431

359:                                              ; preds = %354
  store i32 0, i32* %12, align 4
  %360 = load i32, i32* @syntax_arith_coding, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cumf_MODB, i64 0, i64 0))
  store i32 %363, i32* %18, align 4
  %364 = load i32, i32* %18, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([3 x i32]* @modb_tab to [0 x i32]*), i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %13, align 4
  br label %370

368:                                              ; preds = %359
  %369 = call i32 @getMODB()
  store i32 %369, i32* %13, align 4
  br label %370

370:                                              ; preds = %368, %362
  %371 = load i32, i32* @trace, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load i32, i32* %13, align 4
  %375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.24, i64 0, i64 0), i32 %374)
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i32, i32* %13, align 4
  %378 = icmp eq i32 %377, 2
  br i1 %378, label %379, label %430

379:                                              ; preds = %376
  %380 = load i32, i32* @syntax_arith_coding, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %421

382:                                              ; preds = %379
  store i32 0, i32* %35, align 4
  br label %383

383:                                              ; preds = %398, %382
  %384 = load i32, i32* %35, align 4
  %385 = icmp slt i32 %384, 4
  br i1 %385, label %386, label %401

386:                                              ; preds = %383
  %387 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @cumf_YCBPB, i64 0, i64 0))
  store i32 %387, i32* %22, align 4
  %388 = load i32, i32* %22, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([2 x i32]* @ycbpb_tab to [0 x i32]*), i64 0, i64 %389
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %42, align 4
  %392 = load i32, i32* %42, align 4
  %393 = load i32, i32* %35, align 4
  %394 = sub nsw i32 5, %393
  %395 = shl i32 %392, %394
  %396 = load i32, i32* %12, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %12, align 4
  br label %398

398:                                              ; preds = %386
  %399 = load i32, i32* %35, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %35, align 4
  br label %383

401:                                              ; preds = %383
  store i32 4, i32* %35, align 4
  br label %402

402:                                              ; preds = %417, %401
  %403 = load i32, i32* %35, align 4
  %404 = icmp slt i32 %403, 6
  br i1 %404, label %405, label %420

405:                                              ; preds = %402
  %406 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @cumf_UVCBPB, i64 0, i64 0))
  store i32 %406, i32* %23, align 4
  %407 = load i32, i32* %23, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([2 x i32]* @uvcbpb_tab to [0 x i32]*), i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %43, align 4
  %411 = load i32, i32* %43, align 4
  %412 = load i32, i32* %35, align 4
  %413 = sub nsw i32 5, %412
  %414 = shl i32 %411, %413
  %415 = load i32, i32* %12, align 4
  %416 = or i32 %415, %414
  store i32 %416, i32* %12, align 4
  br label %417

417:                                              ; preds = %405
  %418 = load i32, i32* %35, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %35, align 4
  br label %402

420:                                              ; preds = %402
  br label %423

421:                                              ; preds = %379
  %422 = call i32 @getbits(i32 6)
  store i32 %422, i32* %12, align 4
  br label %423

423:                                              ; preds = %421, %420
  %424 = load i32, i32* @trace, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = load i32, i32* %12, align 4
  %428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.25, i64 0, i64 0), i32 %427)
  br label %429

429:                                              ; preds = %426, %423
  br label %430

430:                                              ; preds = %429, %376
  br label %431

431:                                              ; preds = %430, %354
  %432 = load i32, i32* @syntax_arith_coding, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %460

434:                                              ; preds = %431
  %435 = load i32, i32* %14, align 4
  %436 = icmp eq i32 %435, 3
  br i1 %436, label %440, label %437

437:                                              ; preds = %434
  %438 = load i32, i32* %14, align 4
  %439 = icmp eq i32 %438, 4
  br i1 %439, label %440, label %446

440:                                              ; preds = %437, %434
  %441 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([17 x i32], [17 x i32]* @cumf_CBPY_intra, i64 0, i64 0))
  store i32 %441, i32* %17, align 4
  %442 = load i32, i32* %17, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([16 x i32]* @cbpy_intratab to [0 x i32]*), i64 0, i64 %443
  %445 = load i32, i32* %444, align 4
  store i32 %445, i32* %10, align 4
  br label %452

446:                                              ; preds = %437
  %447 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([17 x i32], [17 x i32]* @cumf_CBPY, i64 0, i64 0))
  store i32 %447, i32* %17, align 4
  %448 = load i32, i32* %17, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([16 x i32]* @cbpytab to [0 x i32]*), i64 0, i64 %449
  %451 = load i32, i32* %450, align 4
  store i32 %451, i32* %10, align 4
  br label %452

452:                                              ; preds = %446, %440
  %453 = load i32, i32* @trace, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %452
  %456 = load i32, i32* %17, align 4
  %457 = load i32, i32* %10, align 4
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9.26, i64 0, i64 0), i32 %456, i32 %457)
  br label %459

459:                                              ; preds = %455, %452
  br label %462

460:                                              ; preds = %431
  %461 = call i32 @getCBPY()
  store i32 %461, i32* %10, align 4
  br label %462

462:                                              ; preds = %460, %459
  %463 = load i32, i32* %14, align 4
  %464 = icmp eq i32 %463, 3
  br i1 %464, label %468, label %465

465:                                              ; preds = %462
  %466 = load i32, i32* %14, align 4
  %467 = icmp eq i32 %466, 4
  br i1 %467, label %468, label %475

468:                                              ; preds = %465, %462
  %469 = load i32, i32* @syntax_arith_coding, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %468
  %472 = load i32, i32* %10, align 4
  %473 = xor i32 %472, 15
  store i32 %473, i32* %10, align 4
  br label %474

474:                                              ; preds = %471, %468
  br label %475

475:                                              ; preds = %474, %465
  %476 = load i32, i32* %10, align 4
  %477 = shl i32 %476, 2
  %478 = load i32, i32* %9, align 4
  %479 = ashr i32 %478, 4
  %480 = or i32 %477, %479
  store i32 %480, i32* %11, align 4
  br label %481

481:                                              ; preds = %475
  %482 = load i32, i32* %14, align 4
  %483 = icmp eq i32 %482, 2
  br i1 %483, label %484, label %493

484:                                              ; preds = %481
  %485 = load i32, i32* @adv_pred_mode, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %493, label %487

487:                                              ; preds = %484
  %488 = load i32, i32* @quiet, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %492, label %490

490:                                              ; preds = %487
  %491 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %492

492:                                              ; preds = %490, %487
  br label %493

493:                                              ; preds = %492, %484, %481
  %494 = load i32, i32* %14, align 4
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %499, label %496

496:                                              ; preds = %493
  %497 = load i32, i32* %14, align 4
  %498 = icmp eq i32 %497, 4
  br i1 %498, label %499, label %571

499:                                              ; preds = %496, %493
  %500 = load i32, i32* @syntax_arith_coding, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %519

502:                                              ; preds = %499
  %503 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @cumf_DQUANT, i64 0, i64 0))
  store i32 %503, i32* %19, align 4
  %504 = load i32, i32* %19, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @dquanttab to [0 x i32]*), i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = sub nsw i32 %507, 2
  store i32 %508, i32* %15, align 4
  %509 = load i32, i32* %15, align 4
  %510 = load i32, i32* @quant, align 4
  %511 = add nsw i32 %510, %509
  store i32 %511, i32* @quant, align 4
  %512 = load i32, i32* @trace, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %502
  %515 = load i32, i32* %19, align 4
  %516 = load i32, i32* %15, align 4
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %515, i32 %516)
  br label %518

518:                                              ; preds = %514, %502
  br label %539

519:                                              ; preds = %499
  %520 = call i32 @getbits(i32 2)
  store i32 %520, i32* %15, align 4
  %521 = load i32, i32* %15, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @quant, align 4
  %526 = add nsw i32 %525, %524
  store i32 %526, i32* @quant, align 4
  %527 = load i32, i32* @trace, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %538

529:                                              ; preds = %519
  %530 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %531 = load i32, i32* %15, align 4
  call void @printbits(i32 %531, i32 2, i32 2)
  %532 = load i32, i32* %15, align 4
  %533 = load i32, i32* %15, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %532, i32 %536)
  br label %538

538:                                              ; preds = %529, %519
  br label %539

539:                                              ; preds = %538, %518
  %540 = load i32, i32* @quant, align 4
  %541 = icmp sgt i32 %540, 31
  br i1 %541, label %545, label %542

542:                                              ; preds = %539
  %543 = load i32, i32* @quant, align 4
  %544 = icmp slt i32 %543, 1
  br i1 %544, label %545, label %570

545:                                              ; preds = %542, %539
  %546 = load i32, i32* @quiet, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %550, label %548

548:                                              ; preds = %545
  %549 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %550

550:                                              ; preds = %548, %545
  %551 = load i32, i32* @quant, align 4
  %552 = icmp slt i32 31, %551
  br i1 %552, label %553, label %554

553:                                              ; preds = %550
  br label %556

554:                                              ; preds = %550
  %555 = load i32, i32* @quant, align 4
  br label %556

556:                                              ; preds = %554, %553
  %557 = phi i32 [ 31, %553 ], [ %555, %554 ]
  %558 = icmp sgt i32 1, %557
  br i1 %558, label %559, label %560

559:                                              ; preds = %556
  br label %568

560:                                              ; preds = %556
  %561 = load i32, i32* @quant, align 4
  %562 = icmp slt i32 31, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %560
  br label %566

564:                                              ; preds = %560
  %565 = load i32, i32* @quant, align 4
  br label %566

566:                                              ; preds = %564, %563
  %567 = phi i32 [ 31, %563 ], [ %565, %564 ]
  br label %568

568:                                              ; preds = %566, %559
  %569 = phi i32 [ 1, %559 ], [ %567, %566 ]
  store i32 %569, i32* @quant, align 4
  br label %570

570:                                              ; preds = %568, %542
  br label %571

571:                                              ; preds = %570, %496
  %572 = load i32, i32* %14, align 4
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %583, label %574

574:                                              ; preds = %571
  %575 = load i32, i32* %14, align 4
  %576 = icmp eq i32 %575, 1
  br i1 %576, label %583, label %577

577:                                              ; preds = %574
  %578 = load i32, i32* %14, align 4
  %579 = icmp eq i32 %578, 2
  br i1 %579, label %583, label %580

580:                                              ; preds = %577
  %581 = load i32, i32* @pb_frame, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %794

583:                                              ; preds = %580, %577, %574, %571
  %584 = load i32, i32* %14, align 4
  %585 = icmp eq i32 %584, 2
  br i1 %585, label %586, label %587

586:                                              ; preds = %583
  store i32 1, i32* %45, align 4
  store i32 4, i32* %46, align 4
  br label %588

587:                                              ; preds = %583
  store i32 0, i32* %45, align 4
  store i32 0, i32* %46, align 4
  br label %588

588:                                              ; preds = %587, %586
  %589 = load i32, i32* %45, align 4
  store i32 %589, i32* %36, align 4
  br label %590

590:                                              ; preds = %749, %588
  %591 = load i32, i32* %36, align 4
  %592 = load i32, i32* %46, align 4
  %593 = icmp sle i32 %591, %592
  br i1 %593, label %594, label %752

594:                                              ; preds = %590
  %595 = load i32, i32* @syntax_arith_coding, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %615

597:                                              ; preds = %594
  %598 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([65 x i32], [65 x i32]* @cumf_MVD, i64 0, i64 0))
  store i32 %598, i32* %29, align 4
  %599 = load i32, i32* %29, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([64 x i32]* @mvdtab to [0 x i32]*), i64 0, i64 %600
  %602 = load i32, i32* %601, align 4
  store i32 %602, i32* %26, align 4
  %603 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([65 x i32], [65 x i32]* @cumf_MVD, i64 0, i64 0))
  store i32 %603, i32* %28, align 4
  %604 = load i32, i32* %28, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([64 x i32]* @mvdtab to [0 x i32]*), i64 0, i64 %605
  %607 = load i32, i32* %606, align 4
  store i32 %607, i32* %27, align 4
  %608 = load i32, i32* @trace, align 4
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %614

610:                                              ; preds = %597
  %611 = load i32, i32* %28, align 4
  %612 = load i32, i32* %29, align 4
  %613 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %611, i32 %612)
  br label %614

614:                                              ; preds = %610, %597
  br label %618

615:                                              ; preds = %594
  %616 = call i32 @getTMNMV()
  store i32 %616, i32* %26, align 4
  %617 = call i32 @getTMNMV()
  store i32 %617, i32* %27, align 4
  br label %618

618:                                              ; preds = %615, %614
  %619 = load i32, i32* %32, align 4
  %620 = load i32, i32* %33, align 4
  %621 = load i32, i32* %36, align 4
  %622 = call i32 @find_pmv(i32 %619, i32 %620, i32 %621, i32 0)
  store i32 %622, i32* %30, align 4
  %623 = load i32, i32* %32, align 4
  %624 = load i32, i32* %33, align 4
  %625 = load i32, i32* %36, align 4
  %626 = call i32 @find_pmv(i32 %623, i32 %624, i32 %625, i32 1)
  store i32 %626, i32* %31, align 4
  %627 = load i32, i32* %26, align 4
  %628 = load i32, i32* %30, align 4
  %629 = call i32 @motion_decode(i32 %627, i32 %628)
  store i32 %629, i32* %26, align 4
  %630 = load i32, i32* %27, align 4
  %631 = load i32, i32* %31, align 4
  %632 = call i32 @motion_decode(i32 %630, i32 %631)
  store i32 %632, i32* %27, align 4
  %633 = load i32, i32* @trace, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %640

635:                                              ; preds = %618
  %636 = load i32, i32* %26, align 4
  %637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %636)
  %638 = load i32, i32* %27, align 4
  %639 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17.27, i64 0, i64 0), i32 %638)
  br label %640

640:                                              ; preds = %635, %618
  %641 = load i32, i32* @mv_outside_frame, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %724, label %643

643:                                              ; preds = %640
  %644 = load i32, i32* %36, align 4
  %645 = icmp ne i32 %644, 0
  %646 = zext i1 %645 to i64
  %647 = select i1 %645, i32 8, i32 16
  store i32 %647, i32* %48, align 4
  %648 = load i32, i32* %36, align 4
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %655

650:                                              ; preds = %643
  %651 = load i32, i32* %36, align 4
  %652 = sub nsw i32 %651, 1
  %653 = and i32 %652, 1
  %654 = shl i32 %653, 3
  br label %656

655:                                              ; preds = %643
  br label %656

656:                                              ; preds = %655, %650
  %657 = phi i32 [ %654, %650 ], [ 0, %655 ]
  store i32 %657, i32* %47, align 4
  %658 = load i32, i32* %32, align 4
  %659 = shl i32 %658, 4
  %660 = load i32, i32* %26, align 4
  %661 = sdiv i32 %660, 2
  %662 = add nsw i32 %659, %661
  %663 = load i32, i32* %47, align 4
  %664 = add nsw i32 %662, %663
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %679, label %666

666:                                              ; preds = %656
  %667 = load i32, i32* %32, align 4
  %668 = shl i32 %667, 4
  %669 = load i32, i32* %26, align 4
  %670 = sdiv i32 %669, 2
  %671 = add nsw i32 %668, %670
  %672 = load i32, i32* %47, align 4
  %673 = add nsw i32 %671, %672
  %674 = load i32, i32* @mb_width, align 4
  %675 = shl i32 %674, 4
  %676 = load i32, i32* %48, align 4
  %677 = sub nsw i32 %675, %676
  %678 = icmp sgt i32 %673, %677
  br i1 %678, label %679, label %685

679:                                              ; preds = %666, %656
  %680 = load i32, i32* @quiet, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %684, label %682

682:                                              ; preds = %679
  %683 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  br label %684

684:                                              ; preds = %682, %679
  store i32 1, i32* @fault, align 4
  br label %685

685:                                              ; preds = %684, %666
  %686 = load i32, i32* %36, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %693

688:                                              ; preds = %685
  %689 = load i32, i32* %36, align 4
  %690 = sub nsw i32 %689, 1
  %691 = and i32 %690, 2
  %692 = shl i32 %691, 2
  br label %694

693:                                              ; preds = %685
  br label %694

694:                                              ; preds = %693, %688
  %695 = phi i32 [ %692, %688 ], [ 0, %693 ]
  store i32 %695, i32* %47, align 4
  %696 = load i32, i32* %33, align 4
  %697 = shl i32 %696, 4
  %698 = load i32, i32* %27, align 4
  %699 = sdiv i32 %698, 2
  %700 = add nsw i32 %697, %699
  %701 = load i32, i32* %47, align 4
  %702 = add nsw i32 %700, %701
  %703 = icmp slt i32 %702, 0
  br i1 %703, label %717, label %704

704:                                              ; preds = %694
  %705 = load i32, i32* %33, align 4
  %706 = shl i32 %705, 4
  %707 = load i32, i32* %27, align 4
  %708 = sdiv i32 %707, 2
  %709 = add nsw i32 %706, %708
  %710 = load i32, i32* %47, align 4
  %711 = add nsw i32 %709, %710
  %712 = load i32, i32* @mb_height, align 4
  %713 = shl i32 %712, 4
  %714 = load i32, i32* %48, align 4
  %715 = sub nsw i32 %713, %714
  %716 = icmp sgt i32 %711, %715
  br i1 %716, label %717, label %723

717:                                              ; preds = %704, %694
  %718 = load i32, i32* @quiet, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %722, label %720

720:                                              ; preds = %717
  %721 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  br label %722

722:                                              ; preds = %720, %717
  store i32 1, i32* @fault, align 4
  br label %723

723:                                              ; preds = %722, %704
  br label %724

724:                                              ; preds = %723, %640
  %725 = load i32, i32* %26, align 4
  %726 = load i32, i32* %36, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %727
  %729 = load i32, i32* %33, align 4
  %730 = add nsw i32 %729, 1
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %728, i64 0, i64 %731
  %733 = load i32, i32* %32, align 4
  %734 = add nsw i32 %733, 1
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [90 x i32], [90 x i32]* %732, i64 0, i64 %735
  store i32 %725, i32* %736, align 4
  %737 = load i32, i32* %27, align 4
  %738 = load i32, i32* %36, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %739
  %741 = load i32, i32* %33, align 4
  %742 = add nsw i32 %741, 1
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %740, i64 0, i64 %743
  %745 = load i32, i32* %32, align 4
  %746 = add nsw i32 %745, 1
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [90 x i32], [90 x i32]* %744, i64 0, i64 %747
  store i32 %737, i32* %748, align 4
  br label %749

749:                                              ; preds = %724
  %750 = load i32, i32* %36, align 4
  %751 = add nsw i32 %750, 1
  store i32 %751, i32* %36, align 4
  br label %590

752:                                              ; preds = %590
  %753 = load i32, i32* @pb_frame, align 4
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %793

755:                                              ; preds = %752
  %756 = load i32, i32* %13, align 4
  %757 = icmp eq i32 %756, 1
  br i1 %757, label %761, label %758

758:                                              ; preds = %755
  %759 = load i32, i32* %13, align 4
  %760 = icmp eq i32 %759, 2
  br i1 %760, label %761, label %791

761:                                              ; preds = %758, %755
  %762 = load i32, i32* @syntax_arith_coding, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %775

764:                                              ; preds = %761
  %765 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([65 x i32], [65 x i32]* @cumf_MVD, i64 0, i64 0))
  store i32 %765, i32* %24, align 4
  %766 = load i32, i32* %24, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([64 x i32]* @mvdtab to [0 x i32]*), i64 0, i64 %767
  %769 = load i32, i32* %768, align 4
  store i32 %769, i32* %37, align 4
  %770 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([65 x i32], [65 x i32]* @cumf_MVD, i64 0, i64 0))
  store i32 %770, i32* %25, align 4
  %771 = load i32, i32* %25, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([64 x i32]* @mvdtab to [0 x i32]*), i64 0, i64 %772
  %774 = load i32, i32* %773, align 4
  store i32 %774, i32* %38, align 4
  br label %778

775:                                              ; preds = %761
  %776 = call i32 @getTMNMV()
  store i32 %776, i32* %37, align 4
  %777 = call i32 @getTMNMV()
  store i32 %777, i32* %38, align 4
  br label %778

778:                                              ; preds = %775, %764
  %779 = load i32, i32* %37, align 4
  %780 = call i32 @motion_decode(i32 %779, i32 0)
  store i32 %780, i32* %37, align 4
  %781 = load i32, i32* %38, align 4
  %782 = call i32 @motion_decode(i32 %781, i32 0)
  store i32 %782, i32* %38, align 4
  %783 = load i32, i32* @trace, align 4
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %778
  %786 = load i32, i32* %37, align 4
  %787 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %786)
  %788 = load i32, i32* %38, align 4
  %789 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %788)
  br label %790

790:                                              ; preds = %785, %778
  br label %792

791:                                              ; preds = %758
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  br label %792

792:                                              ; preds = %791, %790
  br label %793

793:                                              ; preds = %792, %752
  br label %794

794:                                              ; preds = %793, %580
  %795 = load i32, i32* @fault, align 4
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %798

797:                                              ; preds = %794
  br label %165

798:                                              ; preds = %794
  br label %829

799:                                              ; preds = %305
  %800 = load i32, i32* %4, align 4
  %801 = load i32, i32* %5, align 4
  %802 = icmp sge i32 %800, %801
  br i1 %802, label %803, label %804

803:                                              ; preds = %799
  br label %1244

804:                                              ; preds = %799
  %805 = load i32, i32* @syntax_arith_coding, align 4
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %812, label %807

807:                                              ; preds = %804
  %808 = load i32, i32* @pict_type, align 4
  %809 = icmp eq i32 %808, 1
  br i1 %809, label %810, label %811

810:                                              ; preds = %807
  call void @flushbits(i32 1)
  br label %811

811:                                              ; preds = %810, %807
  br label %812

812:                                              ; preds = %811, %804
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %813 = load i32, i32* %33, align 4
  %814 = add nsw i32 %813, 1
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %815
  %817 = load i32, i32* %32, align 4
  %818 = add nsw i32 %817, 1
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds [90 x i32], [90 x i32]* %816, i64 0, i64 %819
  store i32 0, i32* %820, align 4
  %821 = load i32, i32* %33, align 4
  %822 = add nsw i32 %821, 1
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %823
  %825 = load i32, i32* %32, align 4
  %826 = add nsw i32 %825, 1
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [90 x i32], [90 x i32]* %824, i64 0, i64 %827
  store i32 0, i32* %828, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  br label %829

829:                                              ; preds = %812, %798
  %830 = load i32, i32* %14, align 4
  %831 = load i32, i32* %33, align 4
  %832 = add nsw i32 %831, 1
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %833
  %835 = load i32, i32* %32, align 4
  %836 = add nsw i32 %835, 1
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds [90 x i32], [90 x i32]* %834, i64 0, i64 %837
  store i32 %830, i32* %838, align 4
  %839 = load i32, i32* %14, align 4
  %840 = icmp eq i32 %839, 3
  br i1 %840, label %844, label %841

841:                                              ; preds = %829
  %842 = load i32, i32* %14, align 4
  %843 = icmp eq i32 %842, 4
  br i1 %843, label %844, label %865

844:                                              ; preds = %841, %829
  %845 = load i32, i32* @pb_frame, align 4
  %846 = icmp ne i32 %845, 0
  br i1 %846, label %864, label %847

847:                                              ; preds = %844
  %848 = load i32, i32* %33, align 4
  %849 = add nsw i32 %848, 1
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %850
  %852 = load i32, i32* %32, align 4
  %853 = add nsw i32 %852, 1
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds [90 x i32], [90 x i32]* %851, i64 0, i64 %854
  store i32 0, i32* %855, align 4
  %856 = load i32, i32* %33, align 4
  %857 = add nsw i32 %856, 1
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %858
  %860 = load i32, i32* %32, align 4
  %861 = add nsw i32 %860, 1
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds [90 x i32], [90 x i32]* %859, i64 0, i64 %862
  store i32 0, i32* %863, align 4
  br label %864

864:                                              ; preds = %847, %844
  br label %865

865:                                              ; preds = %864, %841
  br label %866

866:                                              ; preds = %1240, %865
  %867 = load i32, i32* %32, align 4
  %868 = icmp sgt i32 %867, 0
  br i1 %868, label %869, label %875

869:                                              ; preds = %866
  %870 = load i32, i32* %32, align 4
  %871 = sub nsw i32 %870, 1
  %872 = mul nsw i32 16, %871
  store i32 %872, i32* %6, align 4
  %873 = load i32, i32* %33, align 4
  %874 = mul nsw i32 16, %873
  store i32 %874, i32* %7, align 4
  br label %881

875:                                              ; preds = %866
  %876 = load i32, i32* @coded_picture_width, align 4
  %877 = sub nsw i32 %876, 16
  store i32 %877, i32* %6, align 4
  %878 = load i32, i32* %33, align 4
  %879 = sub nsw i32 %878, 1
  %880 = mul nsw i32 16, %879
  store i32 %880, i32* %7, align 4
  br label %881

881:                                              ; preds = %875, %869
  %882 = load i32, i32* %4, align 4
  %883 = icmp sgt i32 %882, 0
  br i1 %883, label %884, label %1042

884:                                              ; preds = %881
  %885 = load i32, i32* %7, align 4
  %886 = sdiv i32 %885, 16
  %887 = add nsw i32 %886, 1
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %888
  %890 = load i32, i32* %6, align 4
  %891 = sdiv i32 %890, 16
  %892 = add nsw i32 %891, 1
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [90 x i32], [90 x i32]* %889, i64 0, i64 %893
  %895 = load i32, i32* %894, align 4
  store i32 %895, i32* %14, align 4
  %896 = load i32, i32* @pb_frame, align 4
  %897 = icmp ne i32 %896, 0
  br i1 %897, label %898, label %903

898:                                              ; preds = %884
  %899 = load i32, i32* %6, align 4
  %900 = load i32, i32* %7, align 4
  %901 = load i32, i32* %39, align 4
  %902 = load i32, i32* %40, align 4
  call void @reconstruct(i32 %899, i32 %900, i32 0, i32 %901, i32 %902)
  br label %903

903:                                              ; preds = %898, %884
  %904 = load i32, i32* %14, align 4
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %912, label %906

906:                                              ; preds = %903
  %907 = load i32, i32* %14, align 4
  %908 = icmp eq i32 %907, 1
  br i1 %908, label %912, label %909

909:                                              ; preds = %906
  %910 = load i32, i32* %14, align 4
  %911 = icmp eq i32 %910, 2
  br i1 %911, label %912, label %915

912:                                              ; preds = %909, %906, %903
  %913 = load i32, i32* %6, align 4
  %914 = load i32, i32* %7, align 4
  call void @reconstruct(i32 %913, i32 %914, i32 1, i32 0, i32 0)
  br label %915

915:                                              ; preds = %912, %909
  store i32 0, i32* %3, align 4
  br label %916

916:                                              ; preds = %979, %915
  %917 = load i32, i32* %3, align 4
  %918 = load i32, i32* @blk_cnt, align 4
  %919 = icmp slt i32 %917, %918
  br i1 %919, label %920, label %982

920:                                              ; preds = %916
  %921 = load i32, i32* %14, align 4
  %922 = icmp eq i32 %921, 3
  br i1 %922, label %926, label %923

923:                                              ; preds = %920
  %924 = load i32, i32* %14, align 4
  %925 = icmp eq i32 %924, 4
  br i1 %925, label %926, label %947

926:                                              ; preds = %923, %920
  %927 = load i32, i32* @refidct, align 4
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %929, label %936

929:                                              ; preds = %926
  %930 = load %struct.ld*, %struct.ld** @ld, align 8
  %931 = getelementptr inbounds %struct.ld, %struct.ld* %930, i32 0, i32 6
  %932 = load i32, i32* %3, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %931, i64 0, i64 %933
  %935 = getelementptr inbounds [64 x i16], [64 x i16]* %934, i64 0, i64 0
  call void @idctref(i16* %935)
  br label %943

936:                                              ; preds = %926
  %937 = load %struct.ld*, %struct.ld** @ld, align 8
  %938 = getelementptr inbounds %struct.ld, %struct.ld* %937, i32 0, i32 6
  %939 = load i32, i32* %3, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %938, i64 0, i64 %940
  %942 = getelementptr inbounds [64 x i16], [64 x i16]* %941, i64 0, i64 0
  call void @idct(i16* %942)
  br label %943

943:                                              ; preds = %936, %929
  %944 = load i32, i32* %3, align 4
  %945 = load i32, i32* %6, align 4
  %946 = load i32, i32* %7, align 4
  call void @addblock(i32 %944, i32 %945, i32 %946, i32 0)
  br label %978

947:                                              ; preds = %923
  %948 = load i32, i32* %50, align 4
  %949 = load i32, i32* @blk_cnt, align 4
  %950 = sub nsw i32 %949, 1
  %951 = load i32, i32* %3, align 4
  %952 = sub nsw i32 %950, %951
  %953 = shl i32 1, %952
  %954 = and i32 %948, %953
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %977

956:                                              ; preds = %947
  %957 = load i32, i32* @refidct, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %959, label %966

959:                                              ; preds = %956
  %960 = load %struct.ld*, %struct.ld** @ld, align 8
  %961 = getelementptr inbounds %struct.ld, %struct.ld* %960, i32 0, i32 6
  %962 = load i32, i32* %3, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %961, i64 0, i64 %963
  %965 = getelementptr inbounds [64 x i16], [64 x i16]* %964, i64 0, i64 0
  call void @idctref(i16* %965)
  br label %973

966:                                              ; preds = %956
  %967 = load %struct.ld*, %struct.ld** @ld, align 8
  %968 = getelementptr inbounds %struct.ld, %struct.ld* %967, i32 0, i32 6
  %969 = load i32, i32* %3, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %968, i64 0, i64 %970
  %972 = getelementptr inbounds [64 x i16], [64 x i16]* %971, i64 0, i64 0
  call void @idct(i16* %972)
  br label %973

973:                                              ; preds = %966, %959
  %974 = load i32, i32* %3, align 4
  %975 = load i32, i32* %6, align 4
  %976 = load i32, i32* %7, align 4
  call void @addblock(i32 %974, i32 %975, i32 %976, i32 1)
  br label %977

977:                                              ; preds = %973, %947
  br label %978

978:                                              ; preds = %977, %943
  br label %979

979:                                              ; preds = %978
  %980 = load i32, i32* %3, align 4
  %981 = add nsw i32 %980, 1
  store i32 %981, i32* %3, align 4
  br label %916

982:                                              ; preds = %916
  %983 = load i32, i32* @pb_frame, align 4
  %984 = icmp ne i32 %983, 0
  br i1 %984, label %985, label %1041

985:                                              ; preds = %982
  store i32 6, i32* %3, align 4
  br label %986

986:                                              ; preds = %1037, %985
  %987 = load i32, i32* %3, align 4
  %988 = load i32, i32* @blk_cnt, align 4
  %989 = add nsw i32 %988, 6
  %990 = icmp slt i32 %987, %989
  br i1 %990, label %991, label %1040

991:                                              ; preds = %986
  %992 = load i32, i32* %52, align 4
  %993 = icmp ne i32 %992, 0
  br i1 %993, label %994, label %997

994:                                              ; preds = %991
  %995 = load i32, i32* @adv_pred_mode, align 4
  %996 = icmp ne i32 %995, 0
  br i1 %996, label %997, label %1005

997:                                              ; preds = %994, %991
  %998 = load i32, i32* %3, align 4
  %999 = sub nsw i32 %998, 6
  %1000 = load i32, i32* %6, align 4
  %1001 = load i32, i32* %7, align 4
  %1002 = load i32, i32* %14, align 4
  %1003 = load i32, i32* %39, align 4
  %1004 = load i32, i32* %40, align 4
  call void @reconblock_b(i32 %999, i32 %1000, i32 %1001, i32 %1002, i32 %1003, i32 %1004)
  br label %1005

1005:                                             ; preds = %997, %994
  %1006 = load i32, i32* %51, align 4
  %1007 = load i32, i32* @blk_cnt, align 4
  %1008 = sub nsw i32 %1007, 1
  %1009 = load i32, i32* %3, align 4
  %1010 = srem i32 %1009, 6
  %1011 = sub nsw i32 %1008, %1010
  %1012 = shl i32 1, %1011
  %1013 = and i32 %1006, %1012
  %1014 = icmp ne i32 %1013, 0
  br i1 %1014, label %1015, label %1036

1015:                                             ; preds = %1005
  %1016 = load i32, i32* @refidct, align 4
  %1017 = icmp ne i32 %1016, 0
  br i1 %1017, label %1018, label %1025

1018:                                             ; preds = %1015
  %1019 = load %struct.ld*, %struct.ld** @ld, align 8
  %1020 = getelementptr inbounds %struct.ld, %struct.ld* %1019, i32 0, i32 6
  %1021 = load i32, i32* %3, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %1020, i64 0, i64 %1022
  %1024 = getelementptr inbounds [64 x i16], [64 x i16]* %1023, i64 0, i64 0
  call void @idctref(i16* %1024)
  br label %1032

1025:                                             ; preds = %1015
  %1026 = load %struct.ld*, %struct.ld** @ld, align 8
  %1027 = getelementptr inbounds %struct.ld, %struct.ld* %1026, i32 0, i32 6
  %1028 = load i32, i32* %3, align 4
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %1027, i64 0, i64 %1029
  %1031 = getelementptr inbounds [64 x i16], [64 x i16]* %1030, i64 0, i64 0
  call void @idct(i16* %1031)
  br label %1032

1032:                                             ; preds = %1025, %1018
  %1033 = load i32, i32* %3, align 4
  %1034 = load i32, i32* %6, align 4
  %1035 = load i32, i32* %7, align 4
  call void @addblock(i32 %1033, i32 %1034, i32 %1035, i32 1)
  br label %1036

1036:                                             ; preds = %1032, %1005
  br label %1037

1037:                                             ; preds = %1036
  %1038 = load i32, i32* %3, align 4
  %1039 = add nsw i32 %1038, 1
  store i32 %1039, i32* %3, align 4
  br label %986

1040:                                             ; preds = %986
  br label %1041

1041:                                             ; preds = %1040, %982
  br label %1042

1042:                                             ; preds = %1041, %881
  %1043 = load i32, i32* %8, align 4
  %1044 = icmp ne i32 %1043, 0
  br i1 %1044, label %1224, label %1045

1045:                                             ; preds = %1042
  %1046 = load i32, i32* %33, align 4
  %1047 = add nsw i32 %1046, 1
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %1048
  %1050 = load i32, i32* %32, align 4
  %1051 = add nsw i32 %1050, 1
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds [90 x i32], [90 x i32]* %1049, i64 0, i64 %1052
  %1054 = load i32, i32* %1053, align 4
  store i32 %1054, i32* %14, align 4
  store i32 0, i32* %3, align 4
  br label %1055

1055:                                             ; preds = %1183, %1045
  %1056 = load i32, i32* %3, align 4
  %1057 = load i32, i32* @blk_cnt, align 4
  %1058 = icmp slt i32 %1056, %1057
  br i1 %1058, label %1059, label %1186

1059:                                             ; preds = %1055
  %1060 = load i32, i32* %3, align 4
  call void @clearblock(i32 %1060)
  %1061 = load i32, i32* %14, align 4
  %1062 = icmp eq i32 %1061, 3
  br i1 %1062, label %1066, label %1063

1063:                                             ; preds = %1059
  %1064 = load i32, i32* %14, align 4
  %1065 = icmp eq i32 %1064, 4
  br i1 %1065, label %1066, label %1160

1066:                                             ; preds = %1063, %1059
  %1067 = load %struct.ld*, %struct.ld** @ld, align 8
  %1068 = getelementptr inbounds %struct.ld, %struct.ld* %1067, i32 0, i32 6
  %1069 = load i32, i32* %3, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %1068, i64 0, i64 %1070
  %1072 = getelementptr inbounds [64 x i16], [64 x i16]* %1071, i64 0, i64 0
  store i16* %1072, i16** %54, align 8
  %1073 = load i32, i32* @syntax_arith_coding, align 4
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1075, label %1094

1075:                                             ; preds = %1066
  %1076 = call i32 @decode_a_symbol(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @cumf_INTRADC, i64 0, i64 0))
  store i32 %1076, i32* %21, align 4
  %1077 = load i32, i32* %21, align 4
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([254 x i32]* @intradctab to [0 x i32]*), i64 0, i64 %1078
  %1080 = load i32, i32* %1079, align 4
  %1081 = trunc i32 %1080 to i16
  %1082 = load i16*, i16** %54, align 8
  %1083 = getelementptr inbounds i16, i16* %1082, i64 0
  store i16 %1081, i16* %1083, align 2
  %1084 = load i32, i32* @trace, align 4
  %1085 = icmp ne i32 %1084, 0
  br i1 %1085, label %1086, label %1093

1086:                                             ; preds = %1075
  %1087 = load i32, i32* %21, align 4
  %1088 = load i16*, i16** %54, align 8
  %1089 = getelementptr inbounds i16, i16* %1088, i64 0
  %1090 = load i16, i16* %1089, align 2
  %1091 = sext i16 %1090 to i32
  %1092 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 %1087, i32 %1091)
  br label %1093

1093:                                             ; preds = %1086, %1075
  br label %1114

1094:                                             ; preds = %1066
  %1095 = call i32 @getbits(i32 8)
  %1096 = trunc i32 %1095 to i16
  %1097 = load i16*, i16** %54, align 8
  %1098 = getelementptr inbounds i16, i16* %1097, i64 0
  store i16 %1096, i16* %1098, align 2
  %1099 = load i32, i32* @trace, align 4
  %1100 = icmp ne i32 %1099, 0
  br i1 %1100, label %1101, label %1113

1101:                                             ; preds = %1094
  %1102 = load i32, i32* %3, align 4
  %1103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %1102)
  %1104 = load i16*, i16** %54, align 8
  %1105 = getelementptr inbounds i16, i16* %1104, i64 0
  %1106 = load i16, i16* %1105, align 2
  %1107 = sext i16 %1106 to i32
  call void @printbits(i32 %1107, i32 8, i32 8)
  %1108 = load i16*, i16** %54, align 8
  %1109 = getelementptr inbounds i16, i16* %1108, i64 0
  %1110 = load i16, i16* %1109, align 2
  %1111 = sext i16 %1110 to i32
  %1112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %1111)
  br label %1113

1113:                                             ; preds = %1101, %1094
  br label %1114

1114:                                             ; preds = %1113, %1093
  %1115 = load i16*, i16** %54, align 8
  %1116 = getelementptr inbounds i16, i16* %1115, i64 0
  %1117 = load i16, i16* %1116, align 2
  %1118 = sext i16 %1117 to i32
  %1119 = icmp eq i32 %1118, 128
  br i1 %1119, label %1120, label %1127

1120:                                             ; preds = %1114
  %1121 = load i32, i32* @quiet, align 4
  %1122 = icmp ne i32 %1121, 0
  br i1 %1122, label %1126, label %1123

1123:                                             ; preds = %1120
  %1124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  br label %1126

1126:                                             ; preds = %1123, %1120
  br label %1127

1127:                                             ; preds = %1126, %1114
  %1128 = load i16*, i16** %54, align 8
  %1129 = getelementptr inbounds i16, i16* %1128, i64 0
  %1130 = load i16, i16* %1129, align 2
  %1131 = sext i16 %1130 to i32
  %1132 = icmp eq i32 %1131, 255
  br i1 %1132, label %1133, label %1136

1133:                                             ; preds = %1127
  %1134 = load i16*, i16** %54, align 8
  %1135 = getelementptr inbounds i16, i16* %1134, i64 0
  store i16 128, i16* %1135, align 2
  br label %1136

1136:                                             ; preds = %1133, %1127
  %1137 = load i16*, i16** %54, align 8
  %1138 = getelementptr inbounds i16, i16* %1137, i64 0
  %1139 = load i16, i16* %1138, align 2
  %1140 = sext i16 %1139 to i32
  %1141 = mul nsw i32 %1140, 8
  %1142 = trunc i32 %1141 to i16
  store i16 %1142, i16* %1138, align 2
  %1143 = load i32, i32* %11, align 4
  %1144 = load i32, i32* @blk_cnt, align 4
  %1145 = sub nsw i32 %1144, 1
  %1146 = load i32, i32* %3, align 4
  %1147 = sub nsw i32 %1145, %1146
  %1148 = shl i32 1, %1147
  %1149 = and i32 %1143, %1148
  %1150 = icmp ne i32 %1149, 0
  br i1 %1150, label %1151, label %1159

1151:                                             ; preds = %1136
  %1152 = load i32, i32* @syntax_arith_coding, align 4
  %1153 = icmp ne i32 %1152, 0
  br i1 %1153, label %1156, label %1154

1154:                                             ; preds = %1151
  %1155 = load i32, i32* %3, align 4
  call void @getblock(i32 %1155, i32 0)
  br label %1158

1156:                                             ; preds = %1151
  %1157 = load i32, i32* %3, align 4
  call void @get_sac_block(i32 %1157, i32 0)
  br label %1158

1158:                                             ; preds = %1156, %1154
  br label %1159

1159:                                             ; preds = %1158, %1136
  br label %1178

1160:                                             ; preds = %1063
  %1161 = load i32, i32* %11, align 4
  %1162 = load i32, i32* @blk_cnt, align 4
  %1163 = sub nsw i32 %1162, 1
  %1164 = load i32, i32* %3, align 4
  %1165 = sub nsw i32 %1163, %1164
  %1166 = shl i32 1, %1165
  %1167 = and i32 %1161, %1166
  %1168 = icmp ne i32 %1167, 0
  br i1 %1168, label %1169, label %1177

1169:                                             ; preds = %1160
  %1170 = load i32, i32* @syntax_arith_coding, align 4
  %1171 = icmp ne i32 %1170, 0
  br i1 %1171, label %1174, label %1172

1172:                                             ; preds = %1169
  %1173 = load i32, i32* %3, align 4
  call void @getblock(i32 %1173, i32 1)
  br label %1176

1174:                                             ; preds = %1169
  %1175 = load i32, i32* %3, align 4
  call void @get_sac_block(i32 %1175, i32 1)
  br label %1176

1176:                                             ; preds = %1174, %1172
  br label %1177

1177:                                             ; preds = %1176, %1160
  br label %1178

1178:                                             ; preds = %1177, %1159
  %1179 = load i32, i32* @fault, align 4
  %1180 = icmp ne i32 %1179, 0
  br i1 %1180, label %1181, label %1182

1181:                                             ; preds = %1178
  br label %165

1182:                                             ; preds = %1178
  br label %1183

1183:                                             ; preds = %1182
  %1184 = load i32, i32* %3, align 4
  %1185 = add nsw i32 %1184, 1
  store i32 %1185, i32* %3, align 4
  br label %1055

1186:                                             ; preds = %1055
  %1187 = load i32, i32* @pb_frame, align 4
  %1188 = icmp ne i32 %1187, 0
  br i1 %1188, label %1189, label %1223

1189:                                             ; preds = %1186
  store i32 6, i32* %3, align 4
  br label %1190

1190:                                             ; preds = %1219, %1189
  %1191 = load i32, i32* %3, align 4
  %1192 = load i32, i32* @blk_cnt, align 4
  %1193 = add nsw i32 %1192, 6
  %1194 = icmp slt i32 %1191, %1193
  br i1 %1194, label %1195, label %1222

1195:                                             ; preds = %1190
  %1196 = load i32, i32* %3, align 4
  call void @clearblock(i32 %1196)
  %1197 = load i32, i32* %12, align 4
  %1198 = load i32, i32* @blk_cnt, align 4
  %1199 = sub nsw i32 %1198, 1
  %1200 = load i32, i32* %3, align 4
  %1201 = srem i32 %1200, 6
  %1202 = sub nsw i32 %1199, %1201
  %1203 = shl i32 1, %1202
  %1204 = and i32 %1197, %1203
  %1205 = icmp ne i32 %1204, 0
  br i1 %1205, label %1206, label %1214

1206:                                             ; preds = %1195
  %1207 = load i32, i32* @syntax_arith_coding, align 4
  %1208 = icmp ne i32 %1207, 0
  br i1 %1208, label %1211, label %1209

1209:                                             ; preds = %1206
  %1210 = load i32, i32* %3, align 4
  call void @getblock(i32 %1210, i32 1)
  br label %1213

1211:                                             ; preds = %1206
  %1212 = load i32, i32* %3, align 4
  call void @get_sac_block(i32 %1212, i32 1)
  br label %1213

1213:                                             ; preds = %1211, %1209
  br label %1214

1214:                                             ; preds = %1213, %1195
  %1215 = load i32, i32* @fault, align 4
  %1216 = icmp ne i32 %1215, 0
  br i1 %1216, label %1217, label %1218

1217:                                             ; preds = %1214
  br label %165

1218:                                             ; preds = %1214
  br label %1219

1219:                                             ; preds = %1218
  %1220 = load i32, i32* %3, align 4
  %1221 = add nsw i32 %1220, 1
  store i32 %1221, i32* %3, align 4
  br label %1190

1222:                                             ; preds = %1190
  br label %1223

1223:                                             ; preds = %1222, %1186
  br label %1224

1224:                                             ; preds = %1223, %1042
  %1225 = load i32, i32* %4, align 4
  %1226 = add nsw i32 %1225, 1
  store i32 %1226, i32* %4, align 4
  %1227 = load i32, i32* %11, align 4
  store i32 %1227, i32* %50, align 4
  %1228 = load i32, i32* %12, align 4
  store i32 %1228, i32* %51, align 4
  %1229 = load i32, i32* %8, align 4
  store i32 %1229, i32* %52, align 4
  %1230 = load i32, i32* %37, align 4
  store i32 %1230, i32* %39, align 4
  %1231 = load i32, i32* %38, align 4
  store i32 %1231, i32* %40, align 4
  %1232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1233 = call i32 @fflush(%struct._IO_FILE* %1232)
  %1234 = load i32, i32* %4, align 4
  %1235 = load i32, i32* %5, align 4
  %1236 = icmp sge i32 %1234, %1235
  br i1 %1236, label %1237, label %1243

1237:                                             ; preds = %1224
  %1238 = load i32, i32* %49, align 4
  %1239 = icmp ne i32 %1238, 0
  br i1 %1239, label %1243, label %1240

1240:                                             ; preds = %1237
  store i32 1, i32* %8, align 4
  store i32 0, i32* %32, align 4
  %1241 = load i32, i32* %33, align 4
  %1242 = add nsw i32 %1241, 1
  store i32 %1242, i32* %33, align 4
  store i32 1, i32* %49, align 4
  br label %866

1243:                                             ; preds = %1237, %1224
  br label %157

1244:                                             ; preds = %803, %274, %230, %196, %184
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @interpolate_image(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %202, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %205

24:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %131, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %136

30:                                               ; preds = %25
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 %35, i8* %39, align 1
  %40 = load i8*, i8** %14, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %45, %52
  %54 = lshr i32 %53, 1
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 %55, i8* %60, align 1
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %66, %75
  %77 = lshr i32 %76, 1
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 %78, i8* %85, align 1
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %91, %98
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %99, %108
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %109, %119
  %121 = lshr i32 %120, 2
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8 %122, i8* %130, align 1
  br label %131

131:                                              ; preds = %30
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %10, align 4
  br label %25

136:                                              ; preds = %25
  %137 = load i8*, i8** %14, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = getelementptr inbounds i8, i8* %140, i64 -1
  %142 = load i8, i8* %141, align 1
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 -2
  store i8 %142, i8* %147, align 1
  %148 = load i8*, i8** %14, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = getelementptr inbounds i8, i8* %151, i64 -1
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %13, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = getelementptr inbounds i8, i8* %157, i64 -1
  store i8 %153, i8* %158, align 1
  %159 = load i8*, i8** %14, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = getelementptr inbounds i8, i8* %165, i64 -1
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** %13, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = getelementptr inbounds i8, i8* %174, i64 -2
  store i8 %167, i8* %175, align 1
  %176 = load i8*, i8** %14, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = getelementptr inbounds i8, i8* %182, i64 -1
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %13, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = getelementptr inbounds i8, i8* %191, i64 -1
  store i8 %184, i8* %192, align 1
  %193 = load i32, i32* %12, align 4
  %194 = shl i32 %193, 1
  %195 = load i8*, i8** %13, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %13, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i8*, i8** %14, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %14, align 8
  br label %202

202:                                              ; preds = %136
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %19

205:                                              ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %206

206:                                              ; preds = %280, %205
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %7, align 4
  %209 = sub nsw i32 %208, 1
  %210 = icmp slt i32 %207, %209
  br i1 %210, label %211, label %285

211:                                              ; preds = %206
  %212 = load i8*, i8** %14, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %13, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  store i8 %216, i8* %220, align 1
  %221 = load i8*, i8** %14, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = load i8*, i8** %14, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = add nsw i32 %226, %233
  %235 = add nsw i32 %234, 1
  %236 = lshr i32 %235, 1
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %13, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %237, i8* %242, align 1
  %243 = load i8*, i8** %14, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = load i8*, i8** %13, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  store i8 %247, i8* %254, align 1
  %255 = load i8*, i8** %14, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = load i8*, i8** %14, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = add nsw i32 %260, %267
  %269 = add nsw i32 %268, 1
  %270 = lshr i32 %269, 1
  %271 = trunc i32 %270 to i8
  %272 = load i8*, i8** %13, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  store i8 %271, i8* %279, align 1
  br label %280

280:                                              ; preds = %211
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 2
  store i32 %284, i32* %10, align 4
  br label %206

285:                                              ; preds = %206
  %286 = load i8*, i8** %14, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = getelementptr inbounds i8, i8* %289, i64 -1
  %291 = load i8, i8* %290, align 1
  %292 = load i8*, i8** %13, align 8
  %293 = load i32, i32* %7, align 4
  %294 = shl i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %292, i64 %295
  %297 = getelementptr inbounds i8, i8* %296, i64 -2
  store i8 %291, i8* %297, align 1
  %298 = load i8*, i8** %14, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = getelementptr inbounds i8, i8* %301, i64 -1
  %303 = load i8, i8* %302, align 1
  %304 = load i8*, i8** %13, align 8
  %305 = load i32, i32* %7, align 4
  %306 = shl i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %304, i64 %307
  %309 = getelementptr inbounds i8, i8* %308, i64 -1
  store i8 %303, i8* %309, align 1
  %310 = load i8*, i8** %14, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = getelementptr inbounds i8, i8* %313, i64 -1
  %315 = load i8, i8* %314, align 1
  %316 = load i8*, i8** %13, align 8
  %317 = load i32, i32* %7, align 4
  %318 = shl i32 %317, 2
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %316, i64 %319
  %321 = getelementptr inbounds i8, i8* %320, i64 -2
  store i8 %315, i8* %321, align 1
  %322 = load i8*, i8** %14, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = getelementptr inbounds i8, i8* %325, i64 -1
  %327 = load i8, i8* %326, align 1
  %328 = load i8*, i8** %13, align 8
  %329 = load i32, i32* %7, align 4
  %330 = shl i32 %329, 2
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %328, i64 %331
  %333 = getelementptr inbounds i8, i8* %332, i64 -1
  store i8 %327, i8* %333, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @find_pmv(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %29
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [90 x i32], [90 x i32]* %30, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %41
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [90 x i32], [90 x i32]* %42, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [90 x i32], [90 x i32]* %53, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %146 [
    i32 0, label %63
    i32 1, label %86
    i32 2, label %109
    i32 3, label %127
    i32 4, label %139
  ]

63:                                               ; preds = %4
  %64 = load i32, i32* %21, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 2, i32 0
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %22, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 3, i32 0
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %23, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 3, i32 0
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %149

86:                                               ; preds = %4
  %87 = load i32, i32* %21, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 2, i32 0
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %22, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 3, i32 0
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %23, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 3, i32 0
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %149

109:                                              ; preds = %4
  store i32 1, i32* %18, align 4
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 4, i32 0
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %23, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 3, i32 0
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %149

127:                                              ; preds = %4
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 4, i32 0
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %5, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  store i32 1, i32* %19, align 4
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %13, align 4
  store i32 2, i32* %20, align 4
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %14, align 4
  br label %149

139:                                              ; preds = %4
  store i32 3, i32* %18, align 4
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %12, align 4
  store i32 1, i32* %19, align 4
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %13, align 4
  store i32 2, i32* %20, align 4
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %14, align 4
  br label %149

146:                                              ; preds = %4
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

149:                                              ; preds = %139, %127, %109, %86, %63
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 %151
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* %152, i64 0, i64 %154
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %155, i64 0, i64 %157
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [90 x i32], [90 x i32]* %158, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 %164
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* %165, i64 0, i64 %167
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %168, i64 0, i64 %170
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [90 x i32], [90 x i32]* %171, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 %177
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* %178, i64 0, i64 %180
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %181, i64 0, i64 %183
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [90 x i32], [90 x i32]* %184, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* @newgob, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %149
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %7, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %7, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %201

200:                                              ; preds = %197, %194, %191
  store i32 999, i32* %10, align 4
  br label %201

201:                                              ; preds = %200, %197, %149
  %202 = load i32, i32* %10, align 4
  %203 = icmp eq i32 %202, 999
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %11, align 4
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %204, %201
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %206
  %217 = load i32, i32* %10, align 4
  br label %220

218:                                              ; preds = %206
  %219 = load i32, i32* %11, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  %222 = icmp sgt i32 %212, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %9, align 4
  br label %235

225:                                              ; preds = %220
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp sgt i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i32, i32* %10, align 4
  br label %233

231:                                              ; preds = %225
  %232 = load i32, i32* %11, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  br label %235

235:                                              ; preds = %233, %223
  %236 = phi i32 [ %224, %223 ], [ %234, %233 ]
  %237 = sub nsw i32 %211, %236
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = load i32, i32* %10, align 4
  br label %246

244:                                              ; preds = %235
  %245 = load i32, i32* %11, align 4
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi i32 [ %243, %242 ], [ %245, %244 ]
  %248 = icmp slt i32 %238, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = load i32, i32* %9, align 4
  br label %261

251:                                              ; preds = %246
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %11, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = load i32, i32* %10, align 4
  br label %259

257:                                              ; preds = %251
  %258 = load i32, i32* %11, align 4
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  br label %261

261:                                              ; preds = %259, %249
  %262 = phi i32 [ %250, %249 ], [ %260, %259 ]
  %263 = sub nsw i32 %237, %262
  ret i32 %263
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @motion_decode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 31
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 64
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @long_vectors, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 31
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 64
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, -32
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 64
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %48

29:                                               ; preds = %10
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, -31
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, -63
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 64
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 32
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 63
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %45, 64
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %41, %38
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define internal void @addblock(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i16*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %12, align 4
  %15 = load %struct.ld*, %struct.ld** @ld, align 8
  %16 = getelementptr inbounds %struct.ld, %struct.ld* %15, i32 0, i32 6
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %16, i64 0, i64 %18
  %20 = getelementptr inbounds [64 x i16], [64 x i16]* %19, i64 0, i64 0
  store i16* %20, i16** %14, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 6
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 6
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 1
  %33 = add nsw i32 %32, 1
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i32 [ 0, %29 ], [ %33, %30 ]
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 0), align 16
  %43 = load i32, i32* @coded_picture_width, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 2
  %47 = shl i32 %46, 2
  %48 = add nsw i32 %44, %47
  %49 = mul nsw i32 %43, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %42, i64 %50
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 1
  %57 = shl i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %13, align 8
  br label %79

60:                                               ; preds = %38
  %61 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 0), align 16
  %62 = load i32, i32* @coded_picture_width, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 2
  %66 = shl i32 %65, 2
  %67 = add nsw i32 %63, %66
  %68 = mul nsw i32 %62, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %61, i64 %69
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 1
  %76 = shl i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8* %78, i8** %13, align 8
  br label %79

79:                                               ; preds = %60, %41
  %80 = load i32, i32* @coded_picture_width, align 4
  store i32 %80, i32* %11, align 4
  br label %116

81:                                               ; preds = %34
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i8*], [3 x i8*]* @newframe, i64 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* @chrom_width, align 4
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8* %100, i8** %13, align 8
  br label %114

101:                                              ; preds = %81
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* @bframe, i64 0, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @chrom_width, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8* %113, i8** %13, align 8
  br label %114

114:                                              ; preds = %101, %88
  %115 = load i32, i32* @chrom_width, align 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %114, %79
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %254

119:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %250, %119
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 8
  br i1 %122, label %123, label %253

123:                                              ; preds = %120
  %124 = load i8*, i8** @clp, align 8
  %125 = load i16*, i16** %14, align 8
  %126 = getelementptr inbounds i16, i16* %125, i64 0
  %127 = load i16, i16* %126, align 2
  %128 = sext i16 %127 to i32
  %129 = load i8*, i8** %13, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %128, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %124, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %13, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 %136, i8* %138, align 1
  %139 = load i8*, i8** @clp, align 8
  %140 = load i16*, i16** %14, align 8
  %141 = getelementptr inbounds i16, i16* %140, i64 1
  %142 = load i16, i16* %141, align 2
  %143 = sext i16 %142 to i32
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = add nsw i32 %143, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %139, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %13, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  store i8 %151, i8* %153, align 1
  %154 = load i8*, i8** @clp, align 8
  %155 = load i16*, i16** %14, align 8
  %156 = getelementptr inbounds i16, i16* %155, i64 2
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = load i8*, i8** %13, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = add nsw i32 %158, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %154, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %13, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  store i8 %166, i8* %168, align 1
  %169 = load i8*, i8** @clp, align 8
  %170 = load i16*, i16** %14, align 8
  %171 = getelementptr inbounds i16, i16* %170, i64 3
  %172 = load i16, i16* %171, align 2
  %173 = sext i16 %172 to i32
  %174 = load i8*, i8** %13, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 3
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = add nsw i32 %173, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %169, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = load i8*, i8** %13, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  store i8 %181, i8* %183, align 1
  %184 = load i8*, i8** @clp, align 8
  %185 = load i16*, i16** %14, align 8
  %186 = getelementptr inbounds i16, i16* %185, i64 4
  %187 = load i16, i16* %186, align 2
  %188 = sext i16 %187 to i32
  %189 = load i8*, i8** %13, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 4
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = add nsw i32 %188, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %184, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %13, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 4
  store i8 %196, i8* %198, align 1
  %199 = load i8*, i8** @clp, align 8
  %200 = load i16*, i16** %14, align 8
  %201 = getelementptr inbounds i16, i16* %200, i64 5
  %202 = load i16, i16* %201, align 2
  %203 = sext i16 %202 to i32
  %204 = load i8*, i8** %13, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 5
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = add nsw i32 %203, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %199, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = load i8*, i8** %13, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 5
  store i8 %211, i8* %213, align 1
  %214 = load i8*, i8** @clp, align 8
  %215 = load i16*, i16** %14, align 8
  %216 = getelementptr inbounds i16, i16* %215, i64 6
  %217 = load i16, i16* %216, align 2
  %218 = sext i16 %217 to i32
  %219 = load i8*, i8** %13, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 6
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = add nsw i32 %218, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %214, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = load i8*, i8** %13, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 6
  store i8 %226, i8* %228, align 1
  %229 = load i8*, i8** @clp, align 8
  %230 = load i16*, i16** %14, align 8
  %231 = getelementptr inbounds i16, i16* %230, i64 7
  %232 = load i16, i16* %231, align 2
  %233 = sext i16 %232 to i32
  %234 = load i8*, i8** %13, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 7
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = add nsw i32 %233, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %229, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = load i8*, i8** %13, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 7
  store i8 %241, i8* %243, align 1
  %244 = load i16*, i16** %14, align 8
  %245 = getelementptr inbounds i16, i16* %244, i64 8
  store i16* %245, i16** %14, align 8
  %246 = load i32, i32* %11, align 4
  %247 = load i8*, i8** %13, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8* %249, i8** %13, align 8
  br label %250

250:                                              ; preds = %123
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %120

253:                                              ; preds = %120
  br label %341

254:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %255

255:                                              ; preds = %337, %254
  %256 = load i32, i32* %10, align 4
  %257 = icmp slt i32 %256, 8
  br i1 %257, label %258, label %340

258:                                              ; preds = %255
  %259 = load i8*, i8** @clp, align 8
  %260 = load i16*, i16** %14, align 8
  %261 = getelementptr inbounds i16, i16* %260, i64 0
  %262 = load i16, i16* %261, align 2
  %263 = sext i16 %262 to i64
  %264 = getelementptr inbounds i8, i8* %259, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = load i8*, i8** %13, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 0
  store i8 %265, i8* %267, align 1
  %268 = load i8*, i8** @clp, align 8
  %269 = load i16*, i16** %14, align 8
  %270 = getelementptr inbounds i16, i16* %269, i64 1
  %271 = load i16, i16* %270, align 2
  %272 = sext i16 %271 to i64
  %273 = getelementptr inbounds i8, i8* %268, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = load i8*, i8** %13, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  store i8 %274, i8* %276, align 1
  %277 = load i8*, i8** @clp, align 8
  %278 = load i16*, i16** %14, align 8
  %279 = getelementptr inbounds i16, i16* %278, i64 2
  %280 = load i16, i16* %279, align 2
  %281 = sext i16 %280 to i64
  %282 = getelementptr inbounds i8, i8* %277, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = load i8*, i8** %13, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 2
  store i8 %283, i8* %285, align 1
  %286 = load i8*, i8** @clp, align 8
  %287 = load i16*, i16** %14, align 8
  %288 = getelementptr inbounds i16, i16* %287, i64 3
  %289 = load i16, i16* %288, align 2
  %290 = sext i16 %289 to i64
  %291 = getelementptr inbounds i8, i8* %286, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = load i8*, i8** %13, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 3
  store i8 %292, i8* %294, align 1
  %295 = load i8*, i8** @clp, align 8
  %296 = load i16*, i16** %14, align 8
  %297 = getelementptr inbounds i16, i16* %296, i64 4
  %298 = load i16, i16* %297, align 2
  %299 = sext i16 %298 to i64
  %300 = getelementptr inbounds i8, i8* %295, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = load i8*, i8** %13, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 4
  store i8 %301, i8* %303, align 1
  %304 = load i8*, i8** @clp, align 8
  %305 = load i16*, i16** %14, align 8
  %306 = getelementptr inbounds i16, i16* %305, i64 5
  %307 = load i16, i16* %306, align 2
  %308 = sext i16 %307 to i64
  %309 = getelementptr inbounds i8, i8* %304, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = load i8*, i8** %13, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 5
  store i8 %310, i8* %312, align 1
  %313 = load i8*, i8** @clp, align 8
  %314 = load i16*, i16** %14, align 8
  %315 = getelementptr inbounds i16, i16* %314, i64 6
  %316 = load i16, i16* %315, align 2
  %317 = sext i16 %316 to i64
  %318 = getelementptr inbounds i8, i8* %313, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = load i8*, i8** %13, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 6
  store i8 %319, i8* %321, align 1
  %322 = load i8*, i8** @clp, align 8
  %323 = load i16*, i16** %14, align 8
  %324 = getelementptr inbounds i16, i16* %323, i64 7
  %325 = load i16, i16* %324, align 2
  %326 = sext i16 %325 to i64
  %327 = getelementptr inbounds i8, i8* %322, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = load i8*, i8** %13, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 7
  store i8 %328, i8* %330, align 1
  %331 = load i16*, i16** %14, align 8
  %332 = getelementptr inbounds i16, i16* %331, i64 8
  store i16* %332, i16** %14, align 8
  %333 = load i32, i32* %11, align 4
  %334 = load i8*, i8** %13, align 8
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8* %336, i8** %13, align 8
  br label %337

337:                                              ; preds = %258
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %255

340:                                              ; preds = %255
  br label %341

341:                                              ; preds = %340, %253
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @reconblock_b(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, 16
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, 16
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %27, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %225

45:                                               ; preds = %6
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %115

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %51
  %53 = load i32, i32* %27, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %52, i64 0, i64 %54
  %56 = load i32, i32* %26, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [90 x i32], [90 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %30, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %62
  %64 = load i32, i32* %27, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %63, i64 0, i64 %65
  %67 = load i32, i32* %26, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [90 x i32], [90 x i32]* %66, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %31, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %48
  %74 = load i32, i32* @trb, align 4
  %75 = load i32, i32* @trd, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %30, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* @trd, align 4
  %80 = sdiv i32 %78, %79
  br label %91

81:                                               ; preds = %48
  %82 = load i32, i32* @trb, align 4
  %83 = load i32, i32* %30, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* @trd, align 4
  %86 = sdiv i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %30, align 4
  %90 = sub nsw i32 %88, %89
  br label %91

91:                                               ; preds = %81, %73
  %92 = phi i32 [ %80, %73 ], [ %90, %81 ]
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* @trb, align 4
  %97 = load i32, i32* @trd, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %31, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* @trd, align 4
  %102 = sdiv i32 %100, %101
  br label %113

103:                                              ; preds = %91
  %104 = load i32, i32* @trb, align 4
  %105 = load i32, i32* %31, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* @trd, align 4
  %108 = sdiv i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %31, align 4
  %112 = sub nsw i32 %110, %111
  br label %113

113:                                              ; preds = %103, %95
  %114 = phi i32 [ %102, %95 ], [ %112, %103 ]
  store i32 %114, i32* %21, align 4
  br label %224

115:                                              ; preds = %45
  store i32 0, i32* %29, align 4
  store i32 0, i32* %28, align 4
  store i32 1, i32* %16, align 4
  br label %116

116:                                              ; preds = %188, %115
  %117 = load i32, i32* %16, align 4
  %118 = icmp sle i32 %117, 4
  br i1 %118, label %119, label %191

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %121
  %123 = load i32, i32* %27, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %122, i64 0, i64 %124
  %126 = load i32, i32* %26, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [90 x i32], [90 x i32]* %125, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %30, align 4
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %131
  %133 = load i32, i32* %27, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %132, i64 0, i64 %134
  %136 = load i32, i32* %26, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [90 x i32], [90 x i32]* %135, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %31, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %119
  %143 = load i32, i32* @trb, align 4
  %144 = load i32, i32* @trd, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %30, align 4
  %147 = mul nsw i32 %145, %146
  %148 = load i32, i32* @trd, align 4
  %149 = sdiv i32 %147, %148
  br label %160

150:                                              ; preds = %119
  %151 = load i32, i32* @trb, align 4
  %152 = load i32, i32* %30, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* @trd, align 4
  %155 = sdiv i32 %153, %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %30, align 4
  %159 = sub nsw i32 %157, %158
  br label %160

160:                                              ; preds = %150, %142
  %161 = phi i32 [ %149, %142 ], [ %159, %150 ]
  %162 = load i32, i32* %28, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %28, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load i32, i32* @trb, align 4
  %168 = load i32, i32* @trd, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32, i32* %31, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i32, i32* @trd, align 4
  %173 = sdiv i32 %171, %172
  br label %184

174:                                              ; preds = %160
  %175 = load i32, i32* @trb, align 4
  %176 = load i32, i32* %31, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load i32, i32* @trd, align 4
  %179 = sdiv i32 %177, %178
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %31, align 4
  %183 = sub nsw i32 %181, %182
  br label %184

184:                                              ; preds = %174, %166
  %185 = phi i32 [ %173, %166 ], [ %183, %174 ]
  %186 = load i32, i32* %29, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %29, align 4
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %116

191:                                              ; preds = %116
  %192 = load i32, i32* %28, align 4
  %193 = icmp slt i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 -1, i32 1
  %196 = load i32, i32* %28, align 4
  %197 = call i32 @abs(i32 %196) #8
  %198 = srem i32 %197, 16
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %28, align 4
  %203 = call i32 @abs(i32 %202) #8
  %204 = sdiv i32 %203, 16
  %205 = mul nsw i32 %204, 2
  %206 = add nsw i32 %201, %205
  %207 = mul nsw i32 %195, %206
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %29, align 4
  %209 = icmp slt i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 -1, i32 1
  %212 = load i32, i32* %29, align 4
  %213 = call i32 @abs(i32 %212) #8
  %214 = srem i32 %213, 16
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %29, align 4
  %219 = call i32 @abs(i32 %218) #8
  %220 = sdiv i32 %219, 16
  %221 = mul nsw i32 %220, 2
  %222 = add nsw i32 %217, %221
  %223 = mul nsw i32 %211, %222
  store i32 %223, i32* %21, align 4
  br label %224

224:                                              ; preds = %191, %113
  br label %383

225:                                              ; preds = %6
  %226 = load i32, i32* %7, align 4
  %227 = icmp slt i32 %226, 4
  br i1 %227, label %228, label %287

228:                                              ; preds = %225
  %229 = load i32, i32* %27, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %230
  %232 = load i32, i32* %26, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [90 x i32], [90 x i32]* %231, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %30, align 4
  %236 = load i32, i32* %27, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %237
  %239 = load i32, i32* %26, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [90 x i32], [90 x i32]* %238, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %31, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %228
  %246 = load i32, i32* @trb, align 4
  %247 = load i32, i32* @trd, align 4
  %248 = sub nsw i32 %246, %247
  %249 = load i32, i32* %30, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* @trd, align 4
  %252 = sdiv i32 %250, %251
  br label %263

253:                                              ; preds = %228
  %254 = load i32, i32* @trb, align 4
  %255 = load i32, i32* %30, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* @trd, align 4
  %258 = sdiv i32 %256, %257
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %258, %259
  %261 = load i32, i32* %30, align 4
  %262 = sub nsw i32 %260, %261
  br label %263

263:                                              ; preds = %253, %245
  %264 = phi i32 [ %252, %245 ], [ %262, %253 ]
  store i32 %264, i32* %20, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  %268 = load i32, i32* @trb, align 4
  %269 = load i32, i32* @trd, align 4
  %270 = sub nsw i32 %268, %269
  %271 = load i32, i32* %31, align 4
  %272 = mul nsw i32 %270, %271
  %273 = load i32, i32* @trd, align 4
  %274 = sdiv i32 %272, %273
  br label %285

275:                                              ; preds = %263
  %276 = load i32, i32* @trb, align 4
  %277 = load i32, i32* %31, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* @trd, align 4
  %280 = sdiv i32 %278, %279
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %280, %281
  %283 = load i32, i32* %31, align 4
  %284 = sub nsw i32 %282, %283
  br label %285

285:                                              ; preds = %275, %267
  %286 = phi i32 [ %274, %267 ], [ %284, %275 ]
  store i32 %286, i32* %21, align 4
  br label %382

287:                                              ; preds = %225
  %288 = load i32, i32* %27, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %289
  %291 = load i32, i32* %26, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [90 x i32], [90 x i32]* %290, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %30, align 4
  %295 = load i32, i32* %27, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %296
  %298 = load i32, i32* %26, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [90 x i32], [90 x i32]* %297, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %31, align 4
  %302 = load i32, i32* %11, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %287
  %305 = load i32, i32* @trb, align 4
  %306 = load i32, i32* @trd, align 4
  %307 = sub nsw i32 %305, %306
  %308 = load i32, i32* %30, align 4
  %309 = mul nsw i32 %307, %308
  %310 = load i32, i32* @trd, align 4
  %311 = sdiv i32 %309, %310
  br label %322

312:                                              ; preds = %287
  %313 = load i32, i32* @trb, align 4
  %314 = load i32, i32* %30, align 4
  %315 = mul nsw i32 %313, %314
  %316 = load i32, i32* @trd, align 4
  %317 = sdiv i32 %315, %316
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %317, %318
  %320 = load i32, i32* %30, align 4
  %321 = sub nsw i32 %319, %320
  br label %322

322:                                              ; preds = %312, %304
  %323 = phi i32 [ %311, %304 ], [ %321, %312 ]
  store i32 %323, i32* %28, align 4
  %324 = load i32, i32* %12, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %322
  %327 = load i32, i32* @trb, align 4
  %328 = load i32, i32* @trd, align 4
  %329 = sub nsw i32 %327, %328
  %330 = load i32, i32* %31, align 4
  %331 = mul nsw i32 %329, %330
  %332 = load i32, i32* @trd, align 4
  %333 = sdiv i32 %331, %332
  br label %344

334:                                              ; preds = %322
  %335 = load i32, i32* @trb, align 4
  %336 = load i32, i32* %31, align 4
  %337 = mul nsw i32 %335, %336
  %338 = load i32, i32* @trd, align 4
  %339 = sdiv i32 %337, %338
  %340 = load i32, i32* %12, align 4
  %341 = add nsw i32 %339, %340
  %342 = load i32, i32* %31, align 4
  %343 = sub nsw i32 %341, %342
  br label %344

344:                                              ; preds = %334, %326
  %345 = phi i32 [ %333, %326 ], [ %343, %334 ]
  store i32 %345, i32* %29, align 4
  %346 = load i32, i32* %28, align 4
  %347 = mul nsw i32 %346, 4
  store i32 %347, i32* %28, align 4
  %348 = load i32, i32* %29, align 4
  %349 = mul nsw i32 %348, 4
  store i32 %349, i32* %29, align 4
  %350 = load i32, i32* %28, align 4
  %351 = icmp slt i32 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i32 -1, i32 1
  %354 = load i32, i32* %28, align 4
  %355 = call i32 @abs(i32 %354) #8
  %356 = srem i32 %355, 16
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %28, align 4
  %361 = call i32 @abs(i32 %360) #8
  %362 = sdiv i32 %361, 16
  %363 = mul nsw i32 %362, 2
  %364 = add nsw i32 %359, %363
  %365 = mul nsw i32 %353, %364
  store i32 %365, i32* %20, align 4
  %366 = load i32, i32* %29, align 4
  %367 = icmp slt i32 %366, 0
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 -1, i32 1
  %370 = load i32, i32* %29, align 4
  %371 = call i32 @abs(i32 %370) #8
  %372 = srem i32 %371, 16
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %29, align 4
  %377 = call i32 @abs(i32 %376) #8
  %378 = sdiv i32 %377, 16
  %379 = mul nsw i32 %378, 2
  %380 = add nsw i32 %375, %379
  %381 = mul nsw i32 %369, %380
  store i32 %381, i32* %21, align 4
  br label %382

382:                                              ; preds = %344, %285
  br label %383

383:                                              ; preds = %382, %224
  %384 = load i32, i32* %7, align 4
  %385 = icmp slt i32 %384, 4
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  br label %391

387:                                              ; preds = %383
  %388 = load i32, i32* %7, align 4
  %389 = and i32 %388, 1
  %390 = add nsw i32 %389, 1
  br label %391

391:                                              ; preds = %387, %386
  %392 = phi i32 [ 0, %386 ], [ %390, %387 ]
  store i32 %392, i32* %13, align 4
  %393 = load i32, i32* %13, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %440

395:                                              ; preds = %391
  %396 = load i32, i32* %20, align 4
  %397 = load i32, i32* %7, align 4
  %398 = and i32 %397, 1
  call void @find_bidir_limits(i32 %396, i32* %22, i32* %23, i32 %398)
  %399 = load i32, i32* %21, align 4
  %400 = load i32, i32* %7, align 4
  %401 = and i32 %400, 2
  %402 = ashr i32 %401, 1
  call void @find_bidir_limits(i32 %399, i32* %24, i32* %25, i32 %402)
  %403 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 0), align 16
  %404 = load i32, i32* @coded_picture_width, align 4
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* %7, align 4
  %407 = and i32 %406, 2
  %408 = shl i32 %407, 2
  %409 = add nsw i32 %405, %408
  %410 = mul nsw i32 %404, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %403, i64 %411
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  %416 = load i32, i32* %7, align 4
  %417 = and i32 %416, 1
  %418 = shl i32 %417, 3
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* %415, i64 %419
  store i8* %420, i8** %18, align 8
  %421 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 0), align 16
  %422 = load i32, i32* @coded_picture_width, align 4
  %423 = load i32, i32* %9, align 4
  %424 = load i32, i32* %7, align 4
  %425 = and i32 %424, 2
  %426 = shl i32 %425, 2
  %427 = add nsw i32 %423, %426
  %428 = mul nsw i32 %422, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, i8* %421, i64 %429
  %431 = load i32, i32* %8, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load i32, i32* %7, align 4
  %435 = and i32 %434, 1
  %436 = shl i32 %435, 3
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %433, i64 %437
  store i8* %438, i8** %19, align 8
  %439 = load i32, i32* @coded_picture_width, align 4
  store i32 %439, i32* %17, align 4
  br label %488

440:                                              ; preds = %391
  %441 = load i32, i32* %8, align 4
  %442 = ashr i32 %441, 1
  store i32 %442, i32* %8, align 4
  %443 = load i32, i32* %9, align 4
  %444 = ashr i32 %443, 1
  store i32 %444, i32* %9, align 4
  %445 = load i32, i32* %20, align 4
  call void @find_bidir_chroma_limits(i32 %445, i32* %22, i32* %23)
  %446 = load i32, i32* %21, align 4
  call void @find_bidir_chroma_limits(i32 %446, i32* %24, i32* %25)
  %447 = load i32, i32* %13, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [3 x i8*], [3 x i8*]* @bframe, i64 0, i64 %448
  %450 = load i8*, i8** %449, align 8
  %451 = load i32, i32* @chrom_width, align 4
  %452 = load i32, i32* %9, align 4
  %453 = load i32, i32* %7, align 4
  %454 = and i32 %453, 2
  %455 = shl i32 %454, 2
  %456 = add nsw i32 %452, %455
  %457 = mul nsw i32 %451, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, i8* %450, i64 %458
  %460 = load i32, i32* %8, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, i8* %459, i64 %461
  %463 = load i32, i32* %7, align 4
  %464 = and i32 %463, 8
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %462, i64 %465
  store i8* %466, i8** %18, align 8
  %467 = load i32, i32* %13, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [3 x i8*], [3 x i8*]* @newframe, i64 0, i64 %468
  %470 = load i8*, i8** %469, align 8
  %471 = load i32, i32* @chrom_width, align 4
  %472 = load i32, i32* %9, align 4
  %473 = load i32, i32* %7, align 4
  %474 = and i32 %473, 2
  %475 = shl i32 %474, 2
  %476 = add nsw i32 %472, %475
  %477 = mul nsw i32 %471, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %470, i64 %478
  %480 = load i32, i32* %8, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %479, i64 %481
  %483 = load i32, i32* %7, align 4
  %484 = and i32 %483, 8
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, i8* %482, i64 %485
  store i8* %486, i8** %19, align 8
  %487 = load i32, i32* @chrom_width, align 4
  store i32 %487, i32* %17, align 4
  br label %488

488:                                              ; preds = %440, %395
  %489 = load i32, i32* %20, align 4
  %490 = ashr i32 %489, 1
  store i32 %490, i32* %32, align 4
  %491 = load i32, i32* %20, align 4
  %492 = load i32, i32* %32, align 4
  %493 = mul nsw i32 2, %492
  %494 = sub nsw i32 %491, %493
  store i32 %494, i32* %33, align 4
  %495 = load i32, i32* %21, align 4
  %496 = ashr i32 %495, 1
  store i32 %496, i32* %34, align 4
  %497 = load i32, i32* %21, align 4
  %498 = load i32, i32* %34, align 4
  %499 = mul nsw i32 2, %498
  %500 = sub nsw i32 %497, %499
  store i32 %500, i32* %35, align 4
  %501 = load i32, i32* %32, align 4
  %502 = load i32, i32* %34, align 4
  %503 = load i32, i32* %24, align 4
  %504 = add nsw i32 %502, %503
  %505 = load i32, i32* %17, align 4
  %506 = mul nsw i32 %504, %505
  %507 = add nsw i32 %501, %506
  %508 = load i8*, i8** %19, align 8
  %509 = sext i32 %507 to i64
  %510 = getelementptr inbounds i8, i8* %508, i64 %509
  store i8* %510, i8** %19, align 8
  %511 = load i32, i32* %24, align 4
  %512 = load i32, i32* %17, align 4
  %513 = mul nsw i32 %511, %512
  %514 = load i8*, i8** %18, align 8
  %515 = sext i32 %513 to i64
  %516 = getelementptr inbounds i8, i8* %514, i64 %515
  store i8* %516, i8** %18, align 8
  %517 = load i32, i32* %33, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %571, label %519

519:                                              ; preds = %488
  %520 = load i32, i32* %35, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %571, label %522

522:                                              ; preds = %519
  %523 = load i32, i32* %24, align 4
  store i32 %523, i32* %15, align 4
  br label %524

524:                                              ; preds = %567, %522
  %525 = load i32, i32* %15, align 4
  %526 = load i32, i32* %25, align 4
  %527 = icmp slt i32 %525, %526
  br i1 %527, label %528, label %570

528:                                              ; preds = %524
  %529 = load i32, i32* %22, align 4
  store i32 %529, i32* %14, align 4
  br label %530

530:                                              ; preds = %555, %528
  %531 = load i32, i32* %14, align 4
  %532 = load i32, i32* %23, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %558

534:                                              ; preds = %530
  %535 = load i8*, i8** %19, align 8
  %536 = load i32, i32* %14, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %535, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = zext i8 %539 to i32
  store i32 %540, i32* %36, align 4
  %541 = load i32, i32* %36, align 4
  %542 = load i8*, i8** %18, align 8
  %543 = load i32, i32* %14, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, i8* %542, i64 %544
  %546 = load i8, i8* %545, align 1
  %547 = zext i8 %546 to i32
  %548 = add nsw i32 %541, %547
  %549 = lshr i32 %548, 1
  %550 = trunc i32 %549 to i8
  %551 = load i8*, i8** %18, align 8
  %552 = load i32, i32* %14, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, i8* %551, i64 %553
  store i8 %550, i8* %554, align 1
  br label %555

555:                                              ; preds = %534
  %556 = load i32, i32* %14, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %14, align 4
  br label %530

558:                                              ; preds = %530
  %559 = load i32, i32* %17, align 4
  %560 = load i8*, i8** %18, align 8
  %561 = sext i32 %559 to i64
  %562 = getelementptr inbounds i8, i8* %560, i64 %561
  store i8* %562, i8** %18, align 8
  %563 = load i32, i32* %17, align 4
  %564 = load i8*, i8** %19, align 8
  %565 = sext i32 %563 to i64
  %566 = getelementptr inbounds i8, i8* %564, i64 %565
  store i8* %566, i8** %19, align 8
  br label %567

567:                                              ; preds = %558
  %568 = load i32, i32* %15, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %15, align 4
  br label %524

570:                                              ; preds = %524
  br label %782

571:                                              ; preds = %519, %488
  %572 = load i32, i32* %33, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %636

574:                                              ; preds = %571
  %575 = load i32, i32* %35, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %636, label %577

577:                                              ; preds = %574
  %578 = load i32, i32* %24, align 4
  store i32 %578, i32* %15, align 4
  br label %579

579:                                              ; preds = %632, %577
  %580 = load i32, i32* %15, align 4
  %581 = load i32, i32* %25, align 4
  %582 = icmp slt i32 %580, %581
  br i1 %582, label %583, label %635

583:                                              ; preds = %579
  %584 = load i32, i32* %22, align 4
  store i32 %584, i32* %14, align 4
  br label %585

585:                                              ; preds = %620, %583
  %586 = load i32, i32* %14, align 4
  %587 = load i32, i32* %23, align 4
  %588 = icmp slt i32 %586, %587
  br i1 %588, label %589, label %623

589:                                              ; preds = %585
  %590 = load i8*, i8** %19, align 8
  %591 = load i32, i32* %14, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8, i8* %590, i64 %592
  %594 = load i8, i8* %593, align 1
  %595 = zext i8 %594 to i32
  %596 = load i8*, i8** %19, align 8
  %597 = load i32, i32* %14, align 4
  %598 = add nsw i32 %597, 1
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, i8* %596, i64 %599
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i32
  %603 = add nsw i32 %595, %602
  %604 = add nsw i32 %603, 1
  %605 = lshr i32 %604, 1
  store i32 %605, i32* %36, align 4
  %606 = load i32, i32* %36, align 4
  %607 = load i8*, i8** %18, align 8
  %608 = load i32, i32* %14, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i8, i8* %607, i64 %609
  %611 = load i8, i8* %610, align 1
  %612 = zext i8 %611 to i32
  %613 = add nsw i32 %606, %612
  %614 = lshr i32 %613, 1
  %615 = trunc i32 %614 to i8
  %616 = load i8*, i8** %18, align 8
  %617 = load i32, i32* %14, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8, i8* %616, i64 %618
  store i8 %615, i8* %619, align 1
  br label %620

620:                                              ; preds = %589
  %621 = load i32, i32* %14, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %14, align 4
  br label %585

623:                                              ; preds = %585
  %624 = load i32, i32* %17, align 4
  %625 = load i8*, i8** %18, align 8
  %626 = sext i32 %624 to i64
  %627 = getelementptr inbounds i8, i8* %625, i64 %626
  store i8* %627, i8** %18, align 8
  %628 = load i32, i32* %17, align 4
  %629 = load i8*, i8** %19, align 8
  %630 = sext i32 %628 to i64
  %631 = getelementptr inbounds i8, i8* %629, i64 %630
  store i8* %631, i8** %19, align 8
  br label %632

632:                                              ; preds = %623
  %633 = load i32, i32* %15, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %15, align 4
  br label %579

635:                                              ; preds = %579
  br label %781

636:                                              ; preds = %574, %571
  %637 = load i32, i32* %33, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %702, label %639

639:                                              ; preds = %636
  %640 = load i32, i32* %35, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %702

642:                                              ; preds = %639
  %643 = load i32, i32* %24, align 4
  store i32 %643, i32* %15, align 4
  br label %644

644:                                              ; preds = %698, %642
  %645 = load i32, i32* %15, align 4
  %646 = load i32, i32* %25, align 4
  %647 = icmp slt i32 %645, %646
  br i1 %647, label %648, label %701

648:                                              ; preds = %644
  %649 = load i32, i32* %22, align 4
  store i32 %649, i32* %14, align 4
  br label %650

650:                                              ; preds = %686, %648
  %651 = load i32, i32* %14, align 4
  %652 = load i32, i32* %23, align 4
  %653 = icmp slt i32 %651, %652
  br i1 %653, label %654, label %689

654:                                              ; preds = %650
  %655 = load i8*, i8** %19, align 8
  %656 = load i32, i32* %14, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i8, i8* %655, i64 %657
  %659 = load i8, i8* %658, align 1
  %660 = zext i8 %659 to i32
  %661 = load i8*, i8** %19, align 8
  %662 = load i32, i32* %17, align 4
  %663 = load i32, i32* %14, align 4
  %664 = add nsw i32 %662, %663
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, i8* %661, i64 %665
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i32
  %669 = add nsw i32 %660, %668
  %670 = add nsw i32 %669, 1
  %671 = lshr i32 %670, 1
  store i32 %671, i32* %36, align 4
  %672 = load i32, i32* %36, align 4
  %673 = load i8*, i8** %18, align 8
  %674 = load i32, i32* %14, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i8, i8* %673, i64 %675
  %677 = load i8, i8* %676, align 1
  %678 = zext i8 %677 to i32
  %679 = add nsw i32 %672, %678
  %680 = lshr i32 %679, 1
  %681 = trunc i32 %680 to i8
  %682 = load i8*, i8** %18, align 8
  %683 = load i32, i32* %14, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i8, i8* %682, i64 %684
  store i8 %681, i8* %685, align 1
  br label %686

686:                                              ; preds = %654
  %687 = load i32, i32* %14, align 4
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %14, align 4
  br label %650

689:                                              ; preds = %650
  %690 = load i32, i32* %17, align 4
  %691 = load i8*, i8** %18, align 8
  %692 = sext i32 %690 to i64
  %693 = getelementptr inbounds i8, i8* %691, i64 %692
  store i8* %693, i8** %18, align 8
  %694 = load i32, i32* %17, align 4
  %695 = load i8*, i8** %19, align 8
  %696 = sext i32 %694 to i64
  %697 = getelementptr inbounds i8, i8* %695, i64 %696
  store i8* %697, i8** %19, align 8
  br label %698

698:                                              ; preds = %689
  %699 = load i32, i32* %15, align 4
  %700 = add nsw i32 %699, 1
  store i32 %700, i32* %15, align 4
  br label %644

701:                                              ; preds = %644
  br label %780

702:                                              ; preds = %639, %636
  %703 = load i32, i32* %24, align 4
  store i32 %703, i32* %15, align 4
  br label %704

704:                                              ; preds = %776, %702
  %705 = load i32, i32* %15, align 4
  %706 = load i32, i32* %25, align 4
  %707 = icmp slt i32 %705, %706
  br i1 %707, label %708, label %779

708:                                              ; preds = %704
  %709 = load i32, i32* %22, align 4
  store i32 %709, i32* %14, align 4
  br label %710

710:                                              ; preds = %764, %708
  %711 = load i32, i32* %14, align 4
  %712 = load i32, i32* %23, align 4
  %713 = icmp slt i32 %711, %712
  br i1 %713, label %714, label %767

714:                                              ; preds = %710
  %715 = load i8*, i8** %19, align 8
  %716 = load i32, i32* %14, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i8, i8* %715, i64 %717
  %719 = load i8, i8* %718, align 1
  %720 = zext i8 %719 to i32
  %721 = load i8*, i8** %19, align 8
  %722 = load i32, i32* %14, align 4
  %723 = add nsw i32 %722, 1
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i8, i8* %721, i64 %724
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i32
  %728 = add nsw i32 %720, %727
  %729 = load i8*, i8** %19, align 8
  %730 = load i32, i32* %17, align 4
  %731 = load i32, i32* %14, align 4
  %732 = add nsw i32 %730, %731
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i8, i8* %729, i64 %733
  %735 = load i8, i8* %734, align 1
  %736 = zext i8 %735 to i32
  %737 = add nsw i32 %728, %736
  %738 = load i8*, i8** %19, align 8
  %739 = load i32, i32* %17, align 4
  %740 = load i32, i32* %14, align 4
  %741 = add nsw i32 %739, %740
  %742 = add nsw i32 %741, 1
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i8, i8* %738, i64 %743
  %745 = load i8, i8* %744, align 1
  %746 = zext i8 %745 to i32
  %747 = add nsw i32 %737, %746
  %748 = add nsw i32 %747, 2
  %749 = lshr i32 %748, 2
  store i32 %749, i32* %36, align 4
  %750 = load i32, i32* %36, align 4
  %751 = load i8*, i8** %18, align 8
  %752 = load i32, i32* %14, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i8, i8* %751, i64 %753
  %755 = load i8, i8* %754, align 1
  %756 = zext i8 %755 to i32
  %757 = add nsw i32 %750, %756
  %758 = lshr i32 %757, 1
  %759 = trunc i32 %758 to i8
  %760 = load i8*, i8** %18, align 8
  %761 = load i32, i32* %14, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i8, i8* %760, i64 %762
  store i8 %759, i8* %763, align 1
  br label %764

764:                                              ; preds = %714
  %765 = load i32, i32* %14, align 4
  %766 = add nsw i32 %765, 1
  store i32 %766, i32* %14, align 4
  br label %710

767:                                              ; preds = %710
  %768 = load i32, i32* %17, align 4
  %769 = load i8*, i8** %18, align 8
  %770 = sext i32 %768 to i64
  %771 = getelementptr inbounds i8, i8* %769, i64 %770
  store i8* %771, i8** %18, align 8
  %772 = load i32, i32* %17, align 4
  %773 = load i8*, i8** %19, align 8
  %774 = sext i32 %772 to i64
  %775 = getelementptr inbounds i8, i8* %773, i64 %774
  store i8* %775, i8** %19, align 8
  br label %776

776:                                              ; preds = %767
  %777 = load i32, i32* %15, align 4
  %778 = add nsw i32 %777, 1
  store i32 %778, i32* %15, align 4
  br label %704

779:                                              ; preds = %704
  br label %780

780:                                              ; preds = %779, %701
  br label %781

781:                                              ; preds = %780, %635
  br label %782

782:                                              ; preds = %781, %570
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @clearblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.ld*, %struct.ld** @ld, align 8
  %6 = getelementptr inbounds %struct.ld, %struct.ld* %5, i32 0, i32 6
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %6, i64 0, i64 %8
  %10 = getelementptr inbounds [64 x i16], [64 x i16]* %9, i64 0, i64 0
  %11 = bitcast i16* %10 to i32*
  store i32* %11, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %12

29:                                               ; preds = %12
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @find_bidir_limits(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 0, %9
  %11 = add nsw i32 %10, 1
  %12 = sdiv i32 %11, 2
  %13 = load i32, i32* %8, align 4
  %14 = mul nsw i32 %13, 8
  %15 = sub nsw i32 %12, %14
  %16 = icmp sgt i32 0, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 0, %19
  %21 = add nsw i32 %20, 1
  %22 = sdiv i32 %21, 2
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 8
  %25 = sub nsw i32 %22, %24
  br label %26

26:                                               ; preds = %18, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %18 ]
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 15, %31
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 8
  %35 = sub nsw i32 %32, %34
  %36 = icmp slt i32 7, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %46

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 15, %41
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 8
  %45 = sub nsw i32 %42, %44
  br label %46

46:                                               ; preds = %38, %37
  %47 = phi i32 [ 7, %37 ], [ %45, %38 ]
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @find_bidir_chroma_limits(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sub nsw i32 0, %7
  %9 = add nsw i32 %8, 1
  %10 = sdiv i32 %9, 2
  %11 = icmp sgt i32 0, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 0, %14
  %16 = add nsw i32 %15, 1
  %17 = sdiv i32 %16, 2
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ 0, %12 ], [ %17, %13 ]
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = sdiv i32 %22, 2
  %24 = sub nsw i32 7, %23
  %25 = icmp slt i32 7, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 7, %30
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i32 [ 7, %26 ], [ %31, %27 ]
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getTMNMV() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @trace, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @getbits1()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, i32* @trace, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  store i32 0, i32* %1, align 4
  br label %126

16:                                               ; preds = %7
  %17 = call i32 @showbits(i32 12)
  store i32 %17, i32* %2, align 4
  %18 = icmp sge i32 %17, 512
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = ashr i32 %20, 8
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [14 x %struct.VLCtabI], [14 x %struct.VLCtabI]* @TMNMVtab0, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  call void @flushbits(i32 %27)
  %28 = load i32, i32* @trace, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.38, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 2
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [14 x %struct.VLCtabI], [14 x %struct.VLCtabI]* @TMNMVtab0, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  call void @printbits(i32 %33, i32 4, i32 %38)
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [14 x %struct.VLCtabI], [14 x %struct.VLCtabI]* @TMNMVtab0, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.39, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %30, %19
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [14 x %struct.VLCtabI], [14 x %struct.VLCtabI]* @TMNMVtab0, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %1, align 4
  br label %126

51:                                               ; preds = %16
  %52 = load i32, i32* %2, align 4
  %53 = icmp sge i32 %52, 128
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = ashr i32 %55, 2
  %57 = sub nsw i32 %56, 32
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [96 x %struct.VLCtabI], [96 x %struct.VLCtabI]* @TMNMVtab1, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  call void @flushbits(i32 %62)
  %63 = load i32, i32* @trace, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %54
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.38, i64 0, i64 0))
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 32
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [96 x %struct.VLCtabI], [96 x %struct.VLCtabI]* @TMNMVtab1, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  call void @printbits(i32 %68, i32 10, i32 %73)
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [96 x %struct.VLCtabI], [96 x %struct.VLCtabI]* @TMNMVtab1, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.39, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %65, %54
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [96 x %struct.VLCtabI], [96 x %struct.VLCtabI]* @TMNMVtab1, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %1, align 4
  br label %126

86:                                               ; preds = %51
  %87 = load i32, i32* %2, align 4
  %88 = sub nsw i32 %87, 5
  store i32 %88, i32* %2, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @quiet, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.40, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  store i32 1, i32* @fault, align 4
  store i32 0, i32* %1, align 4
  br label %126

97:                                               ; preds = %86
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [123 x %struct.VLCtabI], [123 x %struct.VLCtabI]* @TMNMVtab2, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  call void @flushbits(i32 %102)
  %103 = load i32, i32* @trace, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %97
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.38, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 5
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [123 x %struct.VLCtabI], [123 x %struct.VLCtabI]* @TMNMVtab2, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  call void @printbits(i32 %108, i32 12, i32 %113)
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [123 x %struct.VLCtabI], [123 x %struct.VLCtabI]* @TMNMVtab2, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.39, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %105, %97
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [123 x %struct.VLCtabI], [123 x %struct.VLCtabI]* @TMNMVtab2, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %1, align 4
  br label %126

126:                                              ; preds = %120, %96, %80, %45, %15
  %127 = load i32, i32* %1, align 4
  ret i32 %127
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getMCBPC() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @trace, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.43, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @showbits(i32 9)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @trace, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6.44, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  call void @flushbits(i32 9)
  store i32 255, i32* %1, align 4
  br label %63

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @quiet, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.45, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  store i32 1, i32* @fault, align 4
  store i32 0, i32* %1, align 4
  br label %63

27:                                               ; preds = %17
  %28 = load i32, i32* %2, align 4
  %29 = icmp sge i32 %28, 256
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  call void @flushbits(i32 1)
  %31 = load i32, i32* @trace, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.46, i64 0, i64 0), i32 0)
  br label %35

35:                                               ; preds = %33, %30
  store i32 0, i32* %1, align 4
  br label %63

36:                                               ; preds = %27
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x %struct.VLCtabI], [256 x %struct.VLCtabI]* @MCBPCtab, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  call void @flushbits(i32 %41)
  %42 = load i32, i32* @trace, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x %struct.VLCtabI], [256 x %struct.VLCtabI]* @MCBPCtab, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  call void @printbits(i32 %45, i32 9, i32 %50)
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x %struct.VLCtabI], [256 x %struct.VLCtabI]* @MCBPCtab, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.39, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %44, %36
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x %struct.VLCtabI], [256 x %struct.VLCtabI]* @MCBPCtab, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %57, %35, %26, %16
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getMODB() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @trace, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.49, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @showbits(i32 2)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @trace, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10.50, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  store i32 0, i32* %2, align 4
  call void @flushbits(i32 1)
  br label %33

17:                                               ; preds = %7
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @trace, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11.51, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  store i32 1, i32* %2, align 4
  call void @flushbits(i32 2)
  br label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @trace, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.52, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  store i32 2, i32* %2, align 4
  call void @flushbits(i32 2)
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getMCBPCintra() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @trace, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13.55, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @showbits(i32 9)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @trace, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6.44, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  call void @flushbits(i32 9)
  store i32 255, i32* %1, align 4
  br label %65

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @quiet, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14.56, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  store i32 1, i32* @fault, align 4
  store i32 0, i32* %1, align 4
  br label %65

27:                                               ; preds = %17
  %28 = load i32, i32* %2, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp sge i32 %30, 32
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  call void @flushbits(i32 1)
  %33 = load i32, i32* @trace, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.46, i64 0, i64 0), i32 3)
  br label %37

37:                                               ; preds = %35, %32
  store i32 3, i32* %1, align 4
  br label %65

38:                                               ; preds = %27
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x %struct.VLCtabI], [32 x %struct.VLCtabI]* @MCBPCtabintra, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  call void @flushbits(i32 %43)
  %44 = load i32, i32* @trace, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %38
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32 x %struct.VLCtabI], [32 x %struct.VLCtabI]* @MCBPCtabintra, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  call void @printbits(i32 %47, i32 6, i32 %52)
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32 x %struct.VLCtabI], [32 x %struct.VLCtabI]* @MCBPCtabintra, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.39, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %46, %38
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x %struct.VLCtabI], [32 x %struct.VLCtabI]* @MCBPCtabintra, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %59, %37, %26, %16
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getCBPY() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @trace, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.59, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @showbits(i32 6)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i32, i32* @quiet, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16.60, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %11
  store i32 1, i32* @fault, align 4
  store i32 -1, i32* %1, align 4
  br label %54

18:                                               ; preds = %7
  %19 = load i32, i32* %2, align 4
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  call void @flushbits(i32 2)
  %22 = load i32, i32* @trace, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17.61, i64 0, i64 0), i32 0)
  br label %26

26:                                               ; preds = %24, %21
  store i32 0, i32* %1, align 4
  br label %54

27:                                               ; preds = %18
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [48 x %struct.VLCtabI], [48 x %struct.VLCtabI]* @CBPYtab, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  call void @flushbits(i32 %32)
  %33 = load i32, i32* @trace, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [48 x %struct.VLCtabI], [48 x %struct.VLCtabI]* @CBPYtab, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  call void @printbits(i32 %36, i32 6, i32 %41)
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [48 x %struct.VLCtabI], [48 x %struct.VLCtabI]* @CBPYtab, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.39, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %35, %27
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [48 x %struct.VLCtabI], [48 x %struct.VLCtabI]* @CBPYtab, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.VLCtabI, %struct.VLCtabI* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %48, %26, %17
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @idct(i16* %0) #0 {
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
define dso_local void @init_idct() #0 {
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
define dso_local void @init_idctref() #0 {
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
  %11 = call double @sqrt(double 1.250000e-01) #10
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
  %27 = call double @cos(double %26) #10
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
declare dso_local double @sqrt(double) #5

; Function Attrs: nounwind
declare dso_local double @cos(double) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @idctref(i16* %0) #0 {
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
declare double @llvm.floor.f64(double) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @reconstruct(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %25 = alloca i32, align 4
  %26 = alloca [3 x i8*], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 16
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 16
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* @coded_picture_width, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @mv_outside_frame, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %5
  %37 = load i32, i32* @coded_picture_width, align 4
  %38 = add nsw i32 %37, 64
  store i32 %38, i32* %14, align 4
  %39 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 0), align 16
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 0
  store i8* %39, i8** %40, align 16
  %41 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 1), align 8
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 1
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 2), align 16
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 2
  store i8* %43, i8** %44, align 16
  br label %53

45:                                               ; preds = %5
  %46 = load i32, i32* @coded_picture_width, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 0), align 16
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 0
  store i8* %47, i8** %48, align 16
  %49 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 1), align 8
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 1
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 2), align 16
  %52 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 2
  store i8* %51, i8** %52, align 16
  br label %53

53:                                               ; preds = %45, %36
  %54 = load i32, i32* %22, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %55
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [90 x i32], [90 x i32]* %56, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %347

63:                                               ; preds = %53
  %64 = load i32, i32* @adv_pred_mode, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %262

66:                                               ; preds = %63
  store i32 8, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %91, %66
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %19, align 4
  %73 = and i32 %72, 1
  %74 = shl i32 %73, 3
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %19, align 4
  %78 = and i32 %77, 2
  %79 = shl i32 %78, 2
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %18, align 4
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 0
  %82 = load i8*, i8** %81, align 16
  %83 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 0), align 16
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %18, align 4
  call void @recon_comp_obmc(i8* %82, i8* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %67

94:                                               ; preds = %67
  %95 = load i32, i32* %23, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %192

97:                                               ; preds = %94
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 1), i64 0, i64 %99
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [90 x i32], [90 x i32]* %100, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 2), i64 0, i64 %106
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [90 x i32], [90 x i32]* %107, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %104, %111
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 3), i64 0, i64 %114
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [90 x i32], [90 x i32]* %115, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %112, %119
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 4), i64 0, i64 %122
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [90 x i32], [90 x i32]* %123, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %120, %127
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp slt i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 -1, i32 1
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @abs(i32 %133) #8
  %135 = srem i32 %134, 16
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %20, align 4
  %140 = call i32 @abs(i32 %139) #8
  %141 = sdiv i32 %140, 16
  %142 = mul nsw i32 %141, 2
  %143 = add nsw i32 %138, %142
  %144 = mul nsw i32 %132, %143
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 1), i64 0, i64 %146
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [90 x i32], [90 x i32]* %147, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %22, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 2), i64 0, i64 %153
  %155 = load i32, i32* %21, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [90 x i32], [90 x i32]* %154, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %151, %158
  %160 = load i32, i32* %22, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 3), i64 0, i64 %161
  %163 = load i32, i32* %21, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [90 x i32], [90 x i32]* %162, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %159, %166
  %168 = load i32, i32* %22, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 4), i64 0, i64 %169
  %171 = load i32, i32* %21, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [90 x i32], [90 x i32]* %170, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %167, %174
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %20, align 4
  %177 = icmp slt i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 -1, i32 1
  %180 = load i32, i32* %20, align 4
  %181 = call i32 @abs(i32 %180) #8
  %182 = srem i32 %181, 16
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @abs(i32 %186) #8
  %188 = sdiv i32 %187, 16
  %189 = mul nsw i32 %188, 2
  %190 = add nsw i32 %185, %189
  %191 = mul nsw i32 %179, %190
  store i32 %191, i32* %16, align 4
  br label %231

192:                                              ; preds = %94
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %194
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [90 x i32], [90 x i32]* %195, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %22, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %201
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [90 x i32], [90 x i32]* %202, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %15, align 4
  %208 = srem i32 %207, 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %192
  %211 = load i32, i32* %15, align 4
  %212 = ashr i32 %211, 1
  br label %217

213:                                              ; preds = %192
  %214 = load i32, i32* %15, align 4
  %215 = ashr i32 %214, 1
  %216 = or i32 %215, 1
  br label %217

217:                                              ; preds = %213, %210
  %218 = phi i32 [ %212, %210 ], [ %216, %213 ]
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %16, align 4
  %220 = srem i32 %219, 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32, i32* %16, align 4
  %224 = ashr i32 %223, 1
  br label %229

225:                                              ; preds = %217
  %226 = load i32, i32* %16, align 4
  %227 = ashr i32 %226, 1
  %228 = or i32 %227, 1
  br label %229

229:                                              ; preds = %225, %222
  %230 = phi i32 [ %224, %222 ], [ %228, %225 ]
  store i32 %230, i32* %16, align 4
  br label %231

231:                                              ; preds = %229, %97
  %232 = load i32, i32* %13, align 4
  %233 = ashr i32 %232, 1
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %6, align 4
  %235 = ashr i32 %234, 1
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %14, align 4
  %237 = ashr i32 %236, 1
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %7, align 4
  %239 = ashr i32 %238, 1
  store i32 %239, i32* %7, align 4
  %240 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 1
  %241 = load i8*, i8** %240, align 8
  %242 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 1), align 8
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %241, i8* %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 1)
  %251 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 2
  %252 = load i8*, i8** %251, align 16
  %253 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 2), align 16
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %252, i8* %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 2)
  br label %346

262:                                              ; preds = %63
  store i32 16, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %263 = load i32, i32* %22, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %264
  %266 = load i32, i32* %21, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [90 x i32], [90 x i32]* %265, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %15, align 4
  %270 = load i32, i32* %22, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %271
  %273 = load i32, i32* %21, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [90 x i32], [90 x i32]* %272, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %16, align 4
  %277 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 0
  %278 = load i8*, i8** %277, align 16
  %279 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 0), align 16
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %15, align 4
  %287 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %278, i8* %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 0)
  %288 = load i32, i32* %13, align 4
  %289 = ashr i32 %288, 1
  store i32 %289, i32* %13, align 4
  %290 = load i32, i32* %11, align 4
  %291 = ashr i32 %290, 1
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %6, align 4
  %293 = ashr i32 %292, 1
  store i32 %293, i32* %6, align 4
  %294 = load i32, i32* %14, align 4
  %295 = ashr i32 %294, 1
  store i32 %295, i32* %14, align 4
  %296 = load i32, i32* %12, align 4
  %297 = ashr i32 %296, 1
  store i32 %297, i32* %12, align 4
  %298 = load i32, i32* %7, align 4
  %299 = ashr i32 %298, 1
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %15, align 4
  %301 = srem i32 %300, 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %262
  %304 = load i32, i32* %15, align 4
  %305 = ashr i32 %304, 1
  br label %310

306:                                              ; preds = %262
  %307 = load i32, i32* %15, align 4
  %308 = ashr i32 %307, 1
  %309 = or i32 %308, 1
  br label %310

310:                                              ; preds = %306, %303
  %311 = phi i32 [ %305, %303 ], [ %309, %306 ]
  store i32 %311, i32* %15, align 4
  %312 = load i32, i32* %16, align 4
  %313 = srem i32 %312, 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i32, i32* %16, align 4
  %317 = ashr i32 %316, 1
  br label %322

318:                                              ; preds = %310
  %319 = load i32, i32* %16, align 4
  %320 = ashr i32 %319, 1
  %321 = or i32 %320, 1
  br label %322

322:                                              ; preds = %318, %315
  %323 = phi i32 [ %317, %315 ], [ %321, %318 ]
  store i32 %323, i32* %16, align 4
  %324 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 1
  %325 = load i8*, i8** %324, align 8
  %326 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 1), align 8
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %12, align 4
  %331 = load i32, i32* %6, align 4
  %332 = load i32, i32* %7, align 4
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %325, i8* %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 1)
  %335 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 2
  %336 = load i8*, i8** %335, align 16
  %337 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @newframe, i64 0, i64 2), align 16
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* %14, align 4
  %340 = load i32, i32* %11, align 4
  %341 = load i32, i32* %12, align 4
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* %15, align 4
  %345 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %336, i8* %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 2)
  br label %346

346:                                              ; preds = %322, %231
  br label %701

347:                                              ; preds = %53
  %348 = load i32, i32* @adv_pred_mode, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %592

350:                                              ; preds = %347
  %351 = load i32, i32* %23, align 4
  %352 = icmp eq i32 %351, 2
  br i1 %352, label %353, label %483

353:                                              ; preds = %350
  store i32 8, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %19, align 4
  br label %354

354:                                              ; preds = %417, %353
  %355 = load i32, i32* %19, align 4
  %356 = icmp slt i32 %355, 4
  br i1 %356, label %357, label %420

357:                                              ; preds = %354
  %358 = load i32, i32* @trb, align 4
  %359 = load i32, i32* %19, align 4
  %360 = add nsw i32 %359, 1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %361
  %363 = load i32, i32* %22, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %362, i64 0, i64 %364
  %366 = load i32, i32* %21, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [90 x i32], [90 x i32]* %365, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = mul nsw i32 %358, %369
  %371 = load i32, i32* @trd, align 4
  %372 = sdiv i32 %370, %371
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %372, %373
  store i32 %374, i32* %15, align 4
  %375 = load i32, i32* %24, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %24, align 4
  %377 = load i32, i32* @trb, align 4
  %378 = load i32, i32* %19, align 4
  %379 = add nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %380
  %382 = load i32, i32* %22, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %381, i64 0, i64 %383
  %385 = load i32, i32* %21, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [90 x i32], [90 x i32]* %384, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = mul nsw i32 %377, %388
  %390 = load i32, i32* @trd, align 4
  %391 = sdiv i32 %389, %390
  %392 = load i32, i32* %10, align 4
  %393 = add nsw i32 %391, %392
  store i32 %393, i32* %16, align 4
  %394 = load i32, i32* %25, align 4
  %395 = add nsw i32 %394, %393
  store i32 %395, i32* %25, align 4
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* %19, align 4
  %398 = and i32 %397, 1
  %399 = shl i32 %398, 3
  %400 = add nsw i32 %396, %399
  store i32 %400, i32* %17, align 4
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %19, align 4
  %403 = and i32 %402, 2
  %404 = shl i32 %403, 2
  %405 = add nsw i32 %401, %404
  store i32 %405, i32* %18, align 4
  %406 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 0
  %407 = load i8*, i8** %406, align 16
  %408 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 0), align 16
  %409 = load i32, i32* %13, align 4
  %410 = load i32, i32* %14, align 4
  %411 = load i32, i32* %11, align 4
  %412 = load i32, i32* %12, align 4
  %413 = load i32, i32* %17, align 4
  %414 = load i32, i32* %18, align 4
  %415 = load i32, i32* %15, align 4
  %416 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %407, i8* %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i32 %416, i32 0)
  br label %417

417:                                              ; preds = %357
  %418 = load i32, i32* %19, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %19, align 4
  br label %354

420:                                              ; preds = %354
  %421 = load i32, i32* %24, align 4
  %422 = icmp slt i32 %421, 0
  %423 = zext i1 %422 to i64
  %424 = select i1 %422, i32 -1, i32 1
  %425 = load i32, i32* %24, align 4
  %426 = call i32 @abs(i32 %425) #8
  %427 = srem i32 %426, 16
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %24, align 4
  %432 = call i32 @abs(i32 %431) #8
  %433 = sdiv i32 %432, 16
  %434 = mul nsw i32 %433, 2
  %435 = add nsw i32 %430, %434
  %436 = mul nsw i32 %424, %435
  store i32 %436, i32* %15, align 4
  %437 = load i32, i32* %25, align 4
  %438 = icmp slt i32 %437, 0
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i32 -1, i32 1
  %441 = load i32, i32* %25, align 4
  %442 = call i32 @abs(i32 %441) #8
  %443 = srem i32 %442, 16
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %25, align 4
  %448 = call i32 @abs(i32 %447) #8
  %449 = sdiv i32 %448, 16
  %450 = mul nsw i32 %449, 2
  %451 = add nsw i32 %446, %450
  %452 = mul nsw i32 %440, %451
  store i32 %452, i32* %16, align 4
  %453 = load i32, i32* %13, align 4
  %454 = ashr i32 %453, 1
  store i32 %454, i32* %13, align 4
  %455 = load i32, i32* %6, align 4
  %456 = ashr i32 %455, 1
  store i32 %456, i32* %6, align 4
  %457 = load i32, i32* %14, align 4
  %458 = ashr i32 %457, 1
  store i32 %458, i32* %14, align 4
  %459 = load i32, i32* %7, align 4
  %460 = ashr i32 %459, 1
  store i32 %460, i32* %7, align 4
  %461 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 1
  %462 = load i8*, i8** %461, align 8
  %463 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 1), align 8
  %464 = load i32, i32* %13, align 4
  %465 = load i32, i32* %14, align 4
  %466 = load i32, i32* %11, align 4
  %467 = load i32, i32* %12, align 4
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* %7, align 4
  %470 = load i32, i32* %15, align 4
  %471 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %462, i8* %463, i32 %464, i32 %465, i32 %466, i32 %467, i32 %468, i32 %469, i32 %470, i32 %471, i32 1)
  %472 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 2
  %473 = load i8*, i8** %472, align 16
  %474 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 2), align 16
  %475 = load i32, i32* %13, align 4
  %476 = load i32, i32* %14, align 4
  %477 = load i32, i32* %11, align 4
  %478 = load i32, i32* %12, align 4
  %479 = load i32, i32* %6, align 4
  %480 = load i32, i32* %7, align 4
  %481 = load i32, i32* %15, align 4
  %482 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %473, i8* %474, i32 %475, i32 %476, i32 %477, i32 %478, i32 %479, i32 %480, i32 %481, i32 %482, i32 2)
  br label %591

483:                                              ; preds = %350
  store i32 16, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %484 = load i32, i32* @trb, align 4
  %485 = load i32, i32* %22, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %486
  %488 = load i32, i32* %21, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [90 x i32], [90 x i32]* %487, i64 0, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = mul nsw i32 %484, %491
  %493 = load i32, i32* @trd, align 4
  %494 = sdiv i32 %492, %493
  %495 = load i32, i32* %9, align 4
  %496 = add nsw i32 %494, %495
  store i32 %496, i32* %15, align 4
  %497 = load i32, i32* @trb, align 4
  %498 = load i32, i32* %22, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %499
  %501 = load i32, i32* %21, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [90 x i32], [90 x i32]* %500, i64 0, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = mul nsw i32 %497, %504
  %506 = load i32, i32* @trd, align 4
  %507 = sdiv i32 %505, %506
  %508 = load i32, i32* %10, align 4
  %509 = add nsw i32 %507, %508
  store i32 %509, i32* %16, align 4
  %510 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 0
  %511 = load i8*, i8** %510, align 16
  %512 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 0), align 16
  %513 = load i32, i32* %13, align 4
  %514 = load i32, i32* %14, align 4
  %515 = load i32, i32* %11, align 4
  %516 = load i32, i32* %12, align 4
  %517 = load i32, i32* %6, align 4
  %518 = load i32, i32* %7, align 4
  %519 = load i32, i32* %15, align 4
  %520 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %511, i8* %512, i32 %513, i32 %514, i32 %515, i32 %516, i32 %517, i32 %518, i32 %519, i32 %520, i32 0)
  %521 = load i32, i32* %13, align 4
  %522 = ashr i32 %521, 1
  store i32 %522, i32* %13, align 4
  %523 = load i32, i32* %11, align 4
  %524 = ashr i32 %523, 1
  store i32 %524, i32* %11, align 4
  %525 = load i32, i32* %6, align 4
  %526 = ashr i32 %525, 1
  store i32 %526, i32* %6, align 4
  %527 = load i32, i32* %14, align 4
  %528 = ashr i32 %527, 1
  store i32 %528, i32* %14, align 4
  %529 = load i32, i32* %12, align 4
  %530 = ashr i32 %529, 1
  store i32 %530, i32* %12, align 4
  %531 = load i32, i32* %7, align 4
  %532 = ashr i32 %531, 1
  store i32 %532, i32* %7, align 4
  %533 = load i32, i32* %15, align 4
  %534 = mul nsw i32 4, %533
  store i32 %534, i32* %24, align 4
  %535 = load i32, i32* %16, align 4
  %536 = mul nsw i32 4, %535
  store i32 %536, i32* %25, align 4
  %537 = load i32, i32* %24, align 4
  %538 = icmp slt i32 %537, 0
  %539 = zext i1 %538 to i64
  %540 = select i1 %538, i32 -1, i32 1
  %541 = load i32, i32* %24, align 4
  %542 = call i32 @abs(i32 %541) #8
  %543 = srem i32 %542, 16
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* %24, align 4
  %548 = call i32 @abs(i32 %547) #8
  %549 = sdiv i32 %548, 16
  %550 = mul nsw i32 %549, 2
  %551 = add nsw i32 %546, %550
  %552 = mul nsw i32 %540, %551
  store i32 %552, i32* %15, align 4
  %553 = load i32, i32* %25, align 4
  %554 = icmp slt i32 %553, 0
  %555 = zext i1 %554 to i64
  %556 = select i1 %554, i32 -1, i32 1
  %557 = load i32, i32* %25, align 4
  %558 = call i32 @abs(i32 %557) #8
  %559 = srem i32 %558, 16
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* %25, align 4
  %564 = call i32 @abs(i32 %563) #8
  %565 = sdiv i32 %564, 16
  %566 = mul nsw i32 %565, 2
  %567 = add nsw i32 %562, %566
  %568 = mul nsw i32 %556, %567
  store i32 %568, i32* %16, align 4
  %569 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 1
  %570 = load i8*, i8** %569, align 8
  %571 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 1), align 8
  %572 = load i32, i32* %13, align 4
  %573 = load i32, i32* %14, align 4
  %574 = load i32, i32* %11, align 4
  %575 = load i32, i32* %12, align 4
  %576 = load i32, i32* %6, align 4
  %577 = load i32, i32* %7, align 4
  %578 = load i32, i32* %15, align 4
  %579 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %570, i8* %571, i32 %572, i32 %573, i32 %574, i32 %575, i32 %576, i32 %577, i32 %578, i32 %579, i32 1)
  %580 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 2
  %581 = load i8*, i8** %580, align 16
  %582 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 2), align 16
  %583 = load i32, i32* %13, align 4
  %584 = load i32, i32* %14, align 4
  %585 = load i32, i32* %11, align 4
  %586 = load i32, i32* %12, align 4
  %587 = load i32, i32* %6, align 4
  %588 = load i32, i32* %7, align 4
  %589 = load i32, i32* %15, align 4
  %590 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %581, i8* %582, i32 %583, i32 %584, i32 %585, i32 %586, i32 %587, i32 %588, i32 %589, i32 %590, i32 2)
  br label %591

591:                                              ; preds = %483, %420
  br label %700

592:                                              ; preds = %347
  store i32 16, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %593 = load i32, i32* @trb, align 4
  %594 = load i32, i32* %22, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0, i64 0), i64 0, i64 %595
  %597 = load i32, i32* %21, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [90 x i32], [90 x i32]* %596, i64 0, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = mul nsw i32 %593, %600
  %602 = load i32, i32* @trd, align 4
  %603 = sdiv i32 %601, %602
  %604 = load i32, i32* %9, align 4
  %605 = add nsw i32 %603, %604
  store i32 %605, i32* %15, align 4
  %606 = load i32, i32* @trb, align 4
  %607 = load i32, i32* %22, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1, i64 0), i64 0, i64 %608
  %610 = load i32, i32* %21, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [90 x i32], [90 x i32]* %609, i64 0, i64 %611
  %613 = load i32, i32* %612, align 4
  %614 = mul nsw i32 %606, %613
  %615 = load i32, i32* @trd, align 4
  %616 = sdiv i32 %614, %615
  %617 = load i32, i32* %10, align 4
  %618 = add nsw i32 %616, %617
  store i32 %618, i32* %16, align 4
  %619 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 0
  %620 = load i8*, i8** %619, align 16
  %621 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 0), align 16
  %622 = load i32, i32* %13, align 4
  %623 = load i32, i32* %14, align 4
  %624 = load i32, i32* %11, align 4
  %625 = load i32, i32* %12, align 4
  %626 = load i32, i32* %6, align 4
  %627 = load i32, i32* %7, align 4
  %628 = load i32, i32* %15, align 4
  %629 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %620, i8* %621, i32 %622, i32 %623, i32 %624, i32 %625, i32 %626, i32 %627, i32 %628, i32 %629, i32 0)
  %630 = load i32, i32* %13, align 4
  %631 = ashr i32 %630, 1
  store i32 %631, i32* %13, align 4
  %632 = load i32, i32* %11, align 4
  %633 = ashr i32 %632, 1
  store i32 %633, i32* %11, align 4
  %634 = load i32, i32* %6, align 4
  %635 = ashr i32 %634, 1
  store i32 %635, i32* %6, align 4
  %636 = load i32, i32* %14, align 4
  %637 = ashr i32 %636, 1
  store i32 %637, i32* %14, align 4
  %638 = load i32, i32* %12, align 4
  %639 = ashr i32 %638, 1
  store i32 %639, i32* %12, align 4
  %640 = load i32, i32* %7, align 4
  %641 = ashr i32 %640, 1
  store i32 %641, i32* %7, align 4
  %642 = load i32, i32* %15, align 4
  %643 = mul nsw i32 4, %642
  store i32 %643, i32* %24, align 4
  %644 = load i32, i32* %16, align 4
  %645 = mul nsw i32 4, %644
  store i32 %645, i32* %25, align 4
  %646 = load i32, i32* %24, align 4
  %647 = icmp slt i32 %646, 0
  %648 = zext i1 %647 to i64
  %649 = select i1 %647, i32 -1, i32 1
  %650 = load i32, i32* %24, align 4
  %651 = call i32 @abs(i32 %650) #8
  %652 = srem i32 %651, 16
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* %24, align 4
  %657 = call i32 @abs(i32 %656) #8
  %658 = sdiv i32 %657, 16
  %659 = mul nsw i32 %658, 2
  %660 = add nsw i32 %655, %659
  %661 = mul nsw i32 %649, %660
  store i32 %661, i32* %15, align 4
  %662 = load i32, i32* %25, align 4
  %663 = icmp slt i32 %662, 0
  %664 = zext i1 %663 to i64
  %665 = select i1 %663, i32 -1, i32 1
  %666 = load i32, i32* %25, align 4
  %667 = call i32 @abs(i32 %666) #8
  %668 = srem i32 %667, 16
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* @roundtab, i64 0, i64 %669
  %671 = load i32, i32* %670, align 4
  %672 = load i32, i32* %25, align 4
  %673 = call i32 @abs(i32 %672) #8
  %674 = sdiv i32 %673, 16
  %675 = mul nsw i32 %674, 2
  %676 = add nsw i32 %671, %675
  %677 = mul nsw i32 %665, %676
  store i32 %677, i32* %16, align 4
  %678 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 1
  %679 = load i8*, i8** %678, align 8
  %680 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 1), align 8
  %681 = load i32, i32* %13, align 4
  %682 = load i32, i32* %14, align 4
  %683 = load i32, i32* %11, align 4
  %684 = load i32, i32* %12, align 4
  %685 = load i32, i32* %6, align 4
  %686 = load i32, i32* %7, align 4
  %687 = load i32, i32* %15, align 4
  %688 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %679, i8* %680, i32 %681, i32 %682, i32 %683, i32 %684, i32 %685, i32 %686, i32 %687, i32 %688, i32 1)
  %689 = getelementptr inbounds [3 x i8*], [3 x i8*]* %26, i64 0, i64 2
  %690 = load i8*, i8** %689, align 16
  %691 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @bframe, i64 0, i64 2), align 16
  %692 = load i32, i32* %13, align 4
  %693 = load i32, i32* %14, align 4
  %694 = load i32, i32* %11, align 4
  %695 = load i32, i32* %12, align 4
  %696 = load i32, i32* %6, align 4
  %697 = load i32, i32* %7, align 4
  %698 = load i32, i32* %15, align 4
  %699 = load i32, i32* %16, align 4
  call void @recon_comp(i8* %690, i8* %691, i32 %692, i32 %693, i32 %694, i32 %695, i32 %696, i32 %697, i32 %698, i32 %699, i32 2)
  br label %700

700:                                              ; preds = %592, %591
  br label %701

701:                                              ; preds = %700, %346
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @recon_comp_obmc(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
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
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca [5 x i32], align 16
  %43 = alloca [5 x i32], align 16
  %44 = alloca [5 x i32], align 16
  %45 = alloca [5 x i32], align 16
  %46 = alloca [5 x i32], align 16
  %47 = alloca [5 x i32], align 16
  %48 = alloca [64 x i32], align 16
  %49 = alloca i32*, align 8
  %50 = alloca i8*, align 8
  %51 = alloca [5 x i8*], align 16
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %52 = load i32, i32* %17, align 4
  %53 = ashr i32 %52, 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %18, align 4
  %56 = ashr i32 %55, 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %59
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [90 x i32], [90 x i32]* %60, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %22, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %70
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [90 x i32], [90 x i32]* %71, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %22, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %81
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [90 x i32], [90 x i32]* %82, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 3
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* %22, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %92
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [90 x i32], [90 x i32]* %93, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %100

99:                                               ; preds = %9
  br label %102

100:                                              ; preds = %9
  %101 = load i32, i32* %27, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 1, %99 ], [ %101, %100 ]
  store i32 %103, i32* %27, align 4
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %105
  %107 = load i32, i32* %21, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [90 x i32], [90 x i32]* %106, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  store i32 %114, i32* %25, align 4
  %115 = load i32, i32* %22, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %116
  %118 = load i32, i32* %21, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [90 x i32], [90 x i32]* %117, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 3
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  store i32 %125, i32* %28, align 4
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %127
  %129 = load i32, i32* %21, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [90 x i32], [90 x i32]* %128, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 4
  br i1 %134, label %135, label %136

135:                                              ; preds = %102
  br label %138

136:                                              ; preds = %102
  %137 = load i32, i32* %28, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi i32 [ 1, %135 ], [ %137, %136 ]
  store i32 %139, i32* %28, align 4
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %141
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [90 x i32], [90 x i32]* %142, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 0
  store i32 %150, i32* %26, align 4
  %151 = load i32, i32* %22, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %152
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [90 x i32], [90 x i32]* %153, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 3
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 1, i32 0
  store i32 %161, i32* %29, align 4
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* @modemap, i64 0, i64 %163
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [90 x i32], [90 x i32]* %164, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 4
  br i1 %170, label %171, label %172

171:                                              ; preds = %138
  br label %174

172:                                              ; preds = %138
  %173 = load i32, i32* %29, align 4
  br label %174

174:                                              ; preds = %172, %171
  %175 = phi i32 [ 1, %171 ], [ %173, %172 ]
  store i32 %175, i32* %29, align 4
  %176 = load i32, i32* @pb_frame, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 0, i32* %29, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %179

179:                                              ; preds = %178, %174
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  switch i32 %181, label %446 [
    i32 1, label %182
    i32 2, label %261
    i32 3, label %341
    i32 4, label %393
  ]

182:                                              ; preds = %179
  %183 = load i32, i32* %27, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* %23, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 1, i32 0
  br label %195

190:                                              ; preds = %182
  %191 = load i32, i32* %24, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 3, i32 0
  br label %195

195:                                              ; preds = %190, %185
  %196 = phi i32 [ %189, %185 ], [ %194, %190 ]
  store i32 %196, i32* %38, align 4
  %197 = load i32, i32* %27, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* %22, align 4
  br label %204

201:                                              ; preds = %195
  %202 = load i32, i32* %22, align 4
  %203 = sub nsw i32 %202, 1
  br label %204

204:                                              ; preds = %201, %199
  %205 = phi i32 [ %200, %199 ], [ %203, %201 ]
  store i32 %205, i32* %34, align 4
  %206 = load i32, i32* %21, align 4
  store i32 %206, i32* %30, align 4
  %207 = load i32, i32* %23, align 4
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 3, i32 0
  store i32 %210, i32* %39, align 4
  %211 = load i32, i32* %22, align 4
  store i32 %211, i32* %35, align 4
  %212 = load i32, i32* %21, align 4
  store i32 %212, i32* %31, align 4
  %213 = load i32, i32* %28, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %204
  %216 = load i32, i32* %23, align 4
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 1, i32 0
  br label %225

220:                                              ; preds = %204
  %221 = load i32, i32* %25, align 4
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 2, i32 0
  br label %225

225:                                              ; preds = %220, %215
  %226 = phi i32 [ %219, %215 ], [ %224, %220 ]
  store i32 %226, i32* %41, align 4
  %227 = load i32, i32* %22, align 4
  store i32 %227, i32* %37, align 4
  %228 = load i32, i32* %28, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* %21, align 4
  br label %235

232:                                              ; preds = %225
  %233 = load i32, i32* %21, align 4
  %234 = sub nsw i32 %233, 1
  br label %235

235:                                              ; preds = %232, %230
  %236 = phi i32 [ %231, %230 ], [ %234, %232 ]
  store i32 %236, i32* %33, align 4
  %237 = load i32, i32* %23, align 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 2, i32 0
  store i32 %240, i32* %40, align 4
  %241 = load i32, i32* %22, align 4
  store i32 %241, i32* %36, align 4
  %242 = load i32, i32* %21, align 4
  store i32 %242, i32* %32, align 4
  %243 = load i32, i32* %22, align 4
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %251

245:                                              ; preds = %235
  %246 = load i32, i32* %22, align 4
  store i32 %246, i32* %34, align 4
  %247 = load i32, i32* %23, align 4
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 1, i32 0
  store i32 %250, i32* %38, align 4
  br label %251

251:                                              ; preds = %245, %235
  %252 = load i32, i32* %21, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i32, i32* %21, align 4
  store i32 %255, i32* %33, align 4
  %256 = load i32, i32* %23, align 4
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 1, i32 0
  store i32 %259, i32* %41, align 4
  br label %260

260:                                              ; preds = %254, %251
  br label %449

261:                                              ; preds = %179
  %262 = load i32, i32* %27, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = load i32, i32* %23, align 4
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 2, i32 0
  br label %274

269:                                              ; preds = %261
  %270 = load i32, i32* %24, align 4
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 4, i32 0
  br label %274

274:                                              ; preds = %269, %264
  %275 = phi i32 [ %268, %264 ], [ %273, %269 ]
  store i32 %275, i32* %38, align 4
  %276 = load i32, i32* %27, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = load i32, i32* %22, align 4
  br label %283

280:                                              ; preds = %274
  %281 = load i32, i32* %22, align 4
  %282 = sub nsw i32 %281, 1
  br label %283

283:                                              ; preds = %280, %278
  %284 = phi i32 [ %279, %278 ], [ %282, %280 ]
  store i32 %284, i32* %34, align 4
  %285 = load i32, i32* %21, align 4
  store i32 %285, i32* %30, align 4
  %286 = load i32, i32* %23, align 4
  %287 = icmp ne i32 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 4, i32 0
  store i32 %289, i32* %39, align 4
  %290 = load i32, i32* %22, align 4
  store i32 %290, i32* %35, align 4
  %291 = load i32, i32* %21, align 4
  store i32 %291, i32* %31, align 4
  %292 = load i32, i32* %23, align 4
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 1, i32 0
  store i32 %295, i32* %41, align 4
  %296 = load i32, i32* %22, align 4
  store i32 %296, i32* %37, align 4
  %297 = load i32, i32* %21, align 4
  store i32 %297, i32* %33, align 4
  %298 = load i32, i32* %29, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %283
  %301 = load i32, i32* %23, align 4
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 2, i32 0
  br label %310

305:                                              ; preds = %283
  %306 = load i32, i32* %26, align 4
  %307 = icmp ne i32 %306, 0
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i32 1, i32 0
  br label %310

310:                                              ; preds = %305, %300
  %311 = phi i32 [ %304, %300 ], [ %309, %305 ]
  store i32 %311, i32* %40, align 4
  %312 = load i32, i32* %22, align 4
  store i32 %312, i32* %36, align 4
  %313 = load i32, i32* %29, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* %21, align 4
  br label %320

317:                                              ; preds = %310
  %318 = load i32, i32* %21, align 4
  %319 = add nsw i32 %318, 1
  br label %320

320:                                              ; preds = %317, %315
  %321 = phi i32 [ %316, %315 ], [ %319, %317 ]
  store i32 %321, i32* %32, align 4
  %322 = load i32, i32* %22, align 4
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %330

324:                                              ; preds = %320
  %325 = load i32, i32* %22, align 4
  store i32 %325, i32* %34, align 4
  %326 = load i32, i32* %23, align 4
  %327 = icmp ne i32 %326, 0
  %328 = zext i1 %327 to i64
  %329 = select i1 %327, i32 2, i32 0
  store i32 %329, i32* %38, align 4
  br label %330

330:                                              ; preds = %324, %320
  %331 = load i32, i32* %21, align 4
  %332 = load i32, i32* @mb_width, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %340

334:                                              ; preds = %330
  %335 = load i32, i32* %21, align 4
  store i32 %335, i32* %32, align 4
  %336 = load i32, i32* %23, align 4
  %337 = icmp ne i32 %336, 0
  %338 = zext i1 %337 to i64
  %339 = select i1 %337, i32 2, i32 0
  store i32 %339, i32* %40, align 4
  br label %340

340:                                              ; preds = %334, %330
  br label %449

341:                                              ; preds = %179
  %342 = load i32, i32* %23, align 4
  %343 = icmp ne i32 %342, 0
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i32 1, i32 0
  store i32 %345, i32* %38, align 4
  %346 = load i32, i32* %22, align 4
  store i32 %346, i32* %34, align 4
  %347 = load i32, i32* %21, align 4
  store i32 %347, i32* %30, align 4
  %348 = load i32, i32* %23, align 4
  %349 = icmp ne i32 %348, 0
  %350 = zext i1 %349 to i64
  %351 = select i1 %349, i32 3, i32 0
  store i32 %351, i32* %39, align 4
  %352 = load i32, i32* %22, align 4
  store i32 %352, i32* %35, align 4
  %353 = load i32, i32* %21, align 4
  store i32 %353, i32* %31, align 4
  %354 = load i32, i32* %28, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %341
  %357 = load i32, i32* %23, align 4
  %358 = icmp ne i32 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i32 3, i32 0
  br label %366

361:                                              ; preds = %341
  %362 = load i32, i32* %25, align 4
  %363 = icmp ne i32 %362, 0
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i32 4, i32 0
  br label %366

366:                                              ; preds = %361, %356
  %367 = phi i32 [ %360, %356 ], [ %365, %361 ]
  store i32 %367, i32* %41, align 4
  %368 = load i32, i32* %22, align 4
  store i32 %368, i32* %37, align 4
  %369 = load i32, i32* %28, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = load i32, i32* %21, align 4
  br label %376

373:                                              ; preds = %366
  %374 = load i32, i32* %21, align 4
  %375 = sub nsw i32 %374, 1
  br label %376

376:                                              ; preds = %373, %371
  %377 = phi i32 [ %372, %371 ], [ %375, %373 ]
  store i32 %377, i32* %33, align 4
  %378 = load i32, i32* %23, align 4
  %379 = icmp ne i32 %378, 0
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, i32 4, i32 0
  store i32 %381, i32* %40, align 4
  %382 = load i32, i32* %22, align 4
  store i32 %382, i32* %36, align 4
  %383 = load i32, i32* %21, align 4
  store i32 %383, i32* %32, align 4
  %384 = load i32, i32* %21, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %392

386:                                              ; preds = %376
  %387 = load i32, i32* %21, align 4
  store i32 %387, i32* %33, align 4
  %388 = load i32, i32* %23, align 4
  %389 = icmp ne i32 %388, 0
  %390 = zext i1 %389 to i64
  %391 = select i1 %389, i32 3, i32 0
  store i32 %391, i32* %41, align 4
  br label %392

392:                                              ; preds = %386, %376
  br label %449

393:                                              ; preds = %179
  %394 = load i32, i32* %23, align 4
  %395 = icmp ne i32 %394, 0
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i32 2, i32 0
  store i32 %397, i32* %38, align 4
  %398 = load i32, i32* %22, align 4
  store i32 %398, i32* %34, align 4
  %399 = load i32, i32* %21, align 4
  store i32 %399, i32* %30, align 4
  %400 = load i32, i32* %23, align 4
  %401 = icmp ne i32 %400, 0
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i32 4, i32 0
  store i32 %403, i32* %39, align 4
  %404 = load i32, i32* %22, align 4
  store i32 %404, i32* %35, align 4
  %405 = load i32, i32* %21, align 4
  store i32 %405, i32* %31, align 4
  %406 = load i32, i32* %23, align 4
  %407 = icmp ne i32 %406, 0
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i32 3, i32 0
  store i32 %409, i32* %41, align 4
  %410 = load i32, i32* %22, align 4
  store i32 %410, i32* %37, align 4
  %411 = load i32, i32* %21, align 4
  store i32 %411, i32* %33, align 4
  %412 = load i32, i32* %29, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %393
  %415 = load i32, i32* %23, align 4
  %416 = icmp ne i32 %415, 0
  %417 = zext i1 %416 to i64
  %418 = select i1 %416, i32 4, i32 0
  br label %424

419:                                              ; preds = %393
  %420 = load i32, i32* %26, align 4
  %421 = icmp ne i32 %420, 0
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, i32 3, i32 0
  br label %424

424:                                              ; preds = %419, %414
  %425 = phi i32 [ %418, %414 ], [ %423, %419 ]
  store i32 %425, i32* %40, align 4
  %426 = load i32, i32* %22, align 4
  store i32 %426, i32* %36, align 4
  %427 = load i32, i32* %29, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %424
  %430 = load i32, i32* %21, align 4
  br label %434

431:                                              ; preds = %424
  %432 = load i32, i32* %21, align 4
  %433 = add nsw i32 %432, 1
  br label %434

434:                                              ; preds = %431, %429
  %435 = phi i32 [ %430, %429 ], [ %433, %431 ]
  store i32 %435, i32* %32, align 4
  %436 = load i32, i32* %21, align 4
  %437 = load i32, i32* @mb_width, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %439, label %445

439:                                              ; preds = %434
  %440 = load i32, i32* %21, align 4
  store i32 %440, i32* %32, align 4
  %441 = load i32, i32* %23, align 4
  %442 = icmp ne i32 %441, 0
  %443 = zext i1 %442 to i64
  %444 = select i1 %442, i32 4, i32 0
  store i32 %444, i32* %40, align 4
  br label %445

445:                                              ; preds = %439, %434
  br label %449

446:                                              ; preds = %179
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %448 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %447, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.68, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

449:                                              ; preds = %445, %392, %340, %260
  %450 = load i32, i32* %23, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load i32, i32* %14, align 4
  %454 = add nsw i32 %453, 1
  br label %456

455:                                              ; preds = %449
  br label %456

456:                                              ; preds = %455, %452
  %457 = phi i32 [ %454, %452 ], [ 0, %455 ]
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %458
  %460 = load i32, i32* %22, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %459, i64 0, i64 %461
  %463 = load i32, i32* %21, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [90 x i32], [90 x i32]* %462, i64 0, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = getelementptr inbounds [5 x i32], [5 x i32]* %42, i64 0, i64 0
  store i32 %466, i32* %467, align 16
  %468 = load i32, i32* %23, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %456
  %471 = load i32, i32* %14, align 4
  %472 = add nsw i32 %471, 1
  br label %474

473:                                              ; preds = %456
  br label %474

474:                                              ; preds = %473, %470
  %475 = phi i32 [ %472, %470 ], [ 0, %473 ]
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %476
  %478 = load i32, i32* %22, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %477, i64 0, i64 %479
  %481 = load i32, i32* %21, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [90 x i32], [90 x i32]* %480, i64 0, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 0
  store i32 %484, i32* %485, align 16
  %486 = load i32, i32* %38, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %487
  %489 = load i32, i32* %34, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %488, i64 0, i64 %490
  %492 = load i32, i32* %30, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [90 x i32], [90 x i32]* %491, i64 0, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = getelementptr inbounds [5 x i32], [5 x i32]* %42, i64 0, i64 1
  store i32 %495, i32* %496, align 4
  %497 = load i32, i32* %38, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %498
  %500 = load i32, i32* %34, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %499, i64 0, i64 %501
  %503 = load i32, i32* %30, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [90 x i32], [90 x i32]* %502, i64 0, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 1
  store i32 %506, i32* %507, align 4
  %508 = load i32, i32* %39, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %509
  %511 = load i32, i32* %35, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %510, i64 0, i64 %512
  %514 = load i32, i32* %31, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [90 x i32], [90 x i32]* %513, i64 0, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = getelementptr inbounds [5 x i32], [5 x i32]* %42, i64 0, i64 2
  store i32 %517, i32* %518, align 8
  %519 = load i32, i32* %39, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %520
  %522 = load i32, i32* %35, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %521, i64 0, i64 %523
  %525 = load i32, i32* %31, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [90 x i32], [90 x i32]* %524, i64 0, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 2
  store i32 %528, i32* %529, align 8
  %530 = load i32, i32* %40, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %531
  %533 = load i32, i32* %36, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %532, i64 0, i64 %534
  %536 = load i32, i32* %32, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [90 x i32], [90 x i32]* %535, i64 0, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = getelementptr inbounds [5 x i32], [5 x i32]* %42, i64 0, i64 3
  store i32 %539, i32* %540, align 4
  %541 = load i32, i32* %40, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %542
  %544 = load i32, i32* %36, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %543, i64 0, i64 %545
  %547 = load i32, i32* %32, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [90 x i32], [90 x i32]* %546, i64 0, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 3
  store i32 %550, i32* %551, align 4
  %552 = load i32, i32* %41, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 0), i64 0, i64 %553
  %555 = load i32, i32* %37, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %554, i64 0, i64 %556
  %558 = load i32, i32* %33, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [90 x i32], [90 x i32]* %557, i64 0, i64 %559
  %561 = load i32, i32* %560, align 4
  %562 = getelementptr inbounds [5 x i32], [5 x i32]* %42, i64 0, i64 4
  store i32 %561, i32* %562, align 16
  %563 = load i32, i32* %41, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [5 x [73 x [90 x i32]]], [5 x [73 x [90 x i32]]]* getelementptr inbounds ([2 x [5 x [73 x [90 x i32]]]], [2 x [5 x [73 x [90 x i32]]]]* @MV, i64 0, i64 1), i64 0, i64 %564
  %566 = load i32, i32* %37, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [73 x [90 x i32]], [73 x [90 x i32]]* %565, i64 0, i64 %567
  %569 = load i32, i32* %33, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [90 x i32], [90 x i32]* %568, i64 0, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 4
  store i32 %572, i32* %573, align 16
  store i32 0, i32* %20, align 4
  br label %574

574:                                              ; preds = %633, %474
  %575 = load i32, i32* %20, align 4
  %576 = icmp slt i32 %575, 5
  br i1 %576, label %577, label %636

577:                                              ; preds = %574
  %578 = load i32, i32* %20, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [5 x i32], [5 x i32]* %42, i64 0, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = ashr i32 %581, 1
  %583 = load i32, i32* %20, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [5 x i32], [5 x i32]* %44, i64 0, i64 %584
  store i32 %582, i32* %585, align 4
  %586 = load i32, i32* %20, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [5 x i32], [5 x i32]* %42, i64 0, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = and i32 %589, 1
  %591 = load i32, i32* %20, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 %592
  store i32 %590, i32* %593, align 4
  %594 = load i32, i32* %20, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = ashr i32 %597, 1
  %599 = load i32, i32* %20, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [5 x i32], [5 x i32]* %45, i64 0, i64 %600
  store i32 %598, i32* %601, align 4
  %602 = load i32, i32* %20, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i64 0, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = and i32 %605, 1
  %607 = load i32, i32* %20, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 %608
  store i32 %606, i32* %609, align 4
  %610 = load i8*, i8** %10, align 8
  %611 = load i32, i32* %13, align 4
  %612 = load i32, i32* %18, align 4
  %613 = load i32, i32* %20, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [5 x i32], [5 x i32]* %45, i64 0, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = add nsw i32 %612, %616
  %618 = mul nsw i32 %611, %617
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, i8* %610, i64 %619
  %621 = load i32, i32* %17, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i8, i8* %620, i64 %622
  %624 = load i32, i32* %20, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [5 x i32], [5 x i32]* %44, i64 0, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i8, i8* %623, i64 %628
  %630 = load i32, i32* %20, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 %631
  store i8* %629, i8** %632, align 8
  br label %633

633:                                              ; preds = %577
  %634 = load i32, i32* %20, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %20, align 4
  br label %574

636:                                              ; preds = %574
  %637 = load i8*, i8** %11, align 8
  %638 = load i32, i32* %12, align 4
  %639 = load i32, i32* %18, align 4
  %640 = mul nsw i32 %638, %639
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i8, i8* %637, i64 %641
  %643 = load i32, i32* %17, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i8, i8* %642, i64 %644
  store i8* %645, i8** %50, align 8
  %646 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 0
  %647 = load i32, i32* %646, align 16
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %658, label %649

649:                                              ; preds = %636
  %650 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 0
  %651 = load i32, i32* %650, align 16
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %658, label %653

653:                                              ; preds = %649
  %654 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 0
  %655 = load i8*, i8** %654, align 16
  %656 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %657 = load i32, i32* %13, align 4
  call void @reco(i8* %655, i32* %656, i32 8, i32 %657, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8)
  br label %691

658:                                              ; preds = %649, %636
  %659 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 0
  %660 = load i32, i32* %659, align 16
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %671, label %662

662:                                              ; preds = %658
  %663 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 0
  %664 = load i32, i32* %663, align 16
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %662
  %667 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 0
  %668 = load i8*, i8** %667, align 16
  %669 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %670 = load i32, i32* %13, align 4
  call void @recvo(i8* %668, i32* %669, i32 8, i32 %670, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8)
  br label %690

671:                                              ; preds = %662, %658
  %672 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 0
  %673 = load i32, i32* %672, align 16
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %684

675:                                              ; preds = %671
  %676 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 0
  %677 = load i32, i32* %676, align 16
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %684, label %679

679:                                              ; preds = %675
  %680 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 0
  %681 = load i8*, i8** %680, align 16
  %682 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %683 = load i32, i32* %13, align 4
  call void @recho(i8* %681, i32* %682, i32 8, i32 %683, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8)
  br label %689

684:                                              ; preds = %675, %671
  %685 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 0
  %686 = load i8*, i8** %685, align 16
  %687 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %688 = load i32, i32* %13, align 4
  call void @rec4o(i8* %686, i32* %687, i32 8, i32 %688, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8)
  br label %689

689:                                              ; preds = %684, %679
  br label %690

690:                                              ; preds = %689, %666
  br label %691

691:                                              ; preds = %690, %653
  %692 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 1
  %693 = load i32, i32* %692, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %704, label %695

695:                                              ; preds = %691
  %696 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 1
  %697 = load i32, i32* %696, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %704, label %699

699:                                              ; preds = %695
  %700 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 1
  %701 = load i8*, i8** %700, align 8
  %702 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %703 = load i32, i32* %13, align 4
  call void @reco(i8* %701, i32* %702, i32 8, i32 %703, i32 1, i32 1, i32 0, i32 8, i32 0, i32 4)
  br label %737

704:                                              ; preds = %695, %691
  %705 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 1
  %706 = load i32, i32* %705, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %717, label %708

708:                                              ; preds = %704
  %709 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 1
  %710 = load i32, i32* %709, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %717

712:                                              ; preds = %708
  %713 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 1
  %714 = load i8*, i8** %713, align 8
  %715 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %716 = load i32, i32* %13, align 4
  call void @recvo(i8* %714, i32* %715, i32 8, i32 %716, i32 1, i32 1, i32 0, i32 8, i32 0, i32 4)
  br label %736

717:                                              ; preds = %708, %704
  %718 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 1
  %719 = load i32, i32* %718, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %730

721:                                              ; preds = %717
  %722 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 1
  %723 = load i32, i32* %722, align 4
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %730, label %725

725:                                              ; preds = %721
  %726 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 1
  %727 = load i8*, i8** %726, align 8
  %728 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %729 = load i32, i32* %13, align 4
  call void @recho(i8* %727, i32* %728, i32 8, i32 %729, i32 1, i32 1, i32 0, i32 8, i32 0, i32 4)
  br label %735

730:                                              ; preds = %721, %717
  %731 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 1
  %732 = load i8*, i8** %731, align 8
  %733 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %734 = load i32, i32* %13, align 4
  call void @rec4o(i8* %732, i32* %733, i32 8, i32 %734, i32 1, i32 1, i32 0, i32 8, i32 0, i32 4)
  br label %735

735:                                              ; preds = %730, %725
  br label %736

736:                                              ; preds = %735, %712
  br label %737

737:                                              ; preds = %736, %699
  %738 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 2
  %739 = load i32, i32* %738, align 8
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %754, label %741

741:                                              ; preds = %737
  %742 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 2
  %743 = load i32, i32* %742, align 8
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %754, label %745

745:                                              ; preds = %741
  %746 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 2
  %747 = load i8*, i8** %746, align 16
  %748 = load i32, i32* %13, align 4
  %749 = shl i32 %748, 2
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i8, i8* %747, i64 %750
  %752 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 32
  %753 = load i32, i32* %13, align 4
  call void @reco(i8* %751, i32* %752, i32 8, i32 %753, i32 1, i32 2, i32 0, i32 8, i32 4, i32 8)
  br label %799

754:                                              ; preds = %741, %737
  %755 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 2
  %756 = load i32, i32* %755, align 8
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %771, label %758

758:                                              ; preds = %754
  %759 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 2
  %760 = load i32, i32* %759, align 8
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %771

762:                                              ; preds = %758
  %763 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 2
  %764 = load i8*, i8** %763, align 16
  %765 = load i32, i32* %13, align 4
  %766 = shl i32 %765, 2
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i8, i8* %764, i64 %767
  %769 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 32
  %770 = load i32, i32* %13, align 4
  call void @recvo(i8* %768, i32* %769, i32 8, i32 %770, i32 1, i32 2, i32 0, i32 8, i32 4, i32 8)
  br label %798

771:                                              ; preds = %758, %754
  %772 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 2
  %773 = load i32, i32* %772, align 8
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %788

775:                                              ; preds = %771
  %776 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 2
  %777 = load i32, i32* %776, align 8
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %788, label %779

779:                                              ; preds = %775
  %780 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 2
  %781 = load i8*, i8** %780, align 16
  %782 = load i32, i32* %13, align 4
  %783 = shl i32 %782, 2
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i8, i8* %781, i64 %784
  %786 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 32
  %787 = load i32, i32* %13, align 4
  call void @recho(i8* %785, i32* %786, i32 8, i32 %787, i32 1, i32 2, i32 0, i32 8, i32 4, i32 8)
  br label %797

788:                                              ; preds = %775, %771
  %789 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 2
  %790 = load i8*, i8** %789, align 16
  %791 = load i32, i32* %13, align 4
  %792 = shl i32 %791, 2
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds i8, i8* %790, i64 %793
  %795 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 32
  %796 = load i32, i32* %13, align 4
  call void @rec4o(i8* %794, i32* %795, i32 8, i32 %796, i32 1, i32 2, i32 0, i32 8, i32 4, i32 8)
  br label %797

797:                                              ; preds = %788, %779
  br label %798

798:                                              ; preds = %797, %762
  br label %799

799:                                              ; preds = %798, %745
  %800 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 3
  %801 = load i32, i32* %800, align 4
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %812, label %803

803:                                              ; preds = %799
  %804 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 3
  %805 = load i32, i32* %804, align 4
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %812, label %807

807:                                              ; preds = %803
  %808 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 3
  %809 = load i8*, i8** %808, align 8
  %810 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %811 = load i32, i32* %13, align 4
  call void @reco(i8* %809, i32* %810, i32 8, i32 %811, i32 1, i32 3, i32 4, i32 8, i32 0, i32 8)
  br label %845

812:                                              ; preds = %803, %799
  %813 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 3
  %814 = load i32, i32* %813, align 4
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %825, label %816

816:                                              ; preds = %812
  %817 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 3
  %818 = load i32, i32* %817, align 4
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %820, label %825

820:                                              ; preds = %816
  %821 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 3
  %822 = load i8*, i8** %821, align 8
  %823 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %824 = load i32, i32* %13, align 4
  call void @recvo(i8* %822, i32* %823, i32 8, i32 %824, i32 1, i32 3, i32 4, i32 8, i32 0, i32 8)
  br label %844

825:                                              ; preds = %816, %812
  %826 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 3
  %827 = load i32, i32* %826, align 4
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %829, label %838

829:                                              ; preds = %825
  %830 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 3
  %831 = load i32, i32* %830, align 4
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %838, label %833

833:                                              ; preds = %829
  %834 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 3
  %835 = load i8*, i8** %834, align 8
  %836 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %837 = load i32, i32* %13, align 4
  call void @recho(i8* %835, i32* %836, i32 8, i32 %837, i32 1, i32 3, i32 4, i32 8, i32 0, i32 8)
  br label %843

838:                                              ; preds = %829, %825
  %839 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 3
  %840 = load i8*, i8** %839, align 8
  %841 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %842 = load i32, i32* %13, align 4
  call void @rec4o(i8* %840, i32* %841, i32 8, i32 %842, i32 1, i32 3, i32 4, i32 8, i32 0, i32 8)
  br label %843

843:                                              ; preds = %838, %833
  br label %844

844:                                              ; preds = %843, %820
  br label %845

845:                                              ; preds = %844, %807
  %846 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 4
  %847 = load i32, i32* %846, align 16
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %858, label %849

849:                                              ; preds = %845
  %850 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 4
  %851 = load i32, i32* %850, align 16
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %858, label %853

853:                                              ; preds = %849
  %854 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 4
  %855 = load i8*, i8** %854, align 16
  %856 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %857 = load i32, i32* %13, align 4
  call void @reco(i8* %855, i32* %856, i32 8, i32 %857, i32 1, i32 4, i32 0, i32 4, i32 0, i32 8)
  br label %891

858:                                              ; preds = %849, %845
  %859 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 4
  %860 = load i32, i32* %859, align 16
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %871, label %862

862:                                              ; preds = %858
  %863 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 4
  %864 = load i32, i32* %863, align 16
  %865 = icmp ne i32 %864, 0
  br i1 %865, label %866, label %871

866:                                              ; preds = %862
  %867 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 4
  %868 = load i8*, i8** %867, align 16
  %869 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %870 = load i32, i32* %13, align 4
  call void @recvo(i8* %868, i32* %869, i32 8, i32 %870, i32 1, i32 4, i32 0, i32 4, i32 0, i32 8)
  br label %890

871:                                              ; preds = %862, %858
  %872 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 4
  %873 = load i32, i32* %872, align 16
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %884

875:                                              ; preds = %871
  %876 = getelementptr inbounds [5 x i32], [5 x i32]* %47, i64 0, i64 4
  %877 = load i32, i32* %876, align 16
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %884, label %879

879:                                              ; preds = %875
  %880 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 4
  %881 = load i8*, i8** %880, align 16
  %882 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %883 = load i32, i32* %13, align 4
  call void @recho(i8* %881, i32* %882, i32 8, i32 %883, i32 1, i32 4, i32 0, i32 4, i32 0, i32 8)
  br label %889

884:                                              ; preds = %875, %871
  %885 = getelementptr inbounds [5 x i8*], [5 x i8*]* %51, i64 0, i64 4
  %886 = load i8*, i8** %885, align 16
  %887 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  %888 = load i32, i32* %13, align 4
  call void @rec4o(i8* %886, i32* %887, i32 8, i32 %888, i32 1, i32 4, i32 0, i32 4, i32 0, i32 8)
  br label %889

889:                                              ; preds = %884, %879
  br label %890

890:                                              ; preds = %889, %866
  br label %891

891:                                              ; preds = %890, %853
  %892 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 0, i64 0
  store i32* %892, i32** %49, align 8
  store i32 0, i32* %19, align 4
  br label %893

893:                                              ; preds = %967, %891
  %894 = load i32, i32* %19, align 4
  %895 = icmp slt i32 %894, 8
  br i1 %895, label %896, label %970

896:                                              ; preds = %893
  %897 = load i32*, i32** %49, align 8
  %898 = getelementptr inbounds i32, i32* %897, i64 0
  %899 = load i32, i32* %898, align 4
  %900 = add nsw i32 %899, 4
  %901 = ashr i32 %900, 3
  %902 = trunc i32 %901 to i8
  %903 = load i8*, i8** %50, align 8
  %904 = getelementptr inbounds i8, i8* %903, i64 0
  store i8 %902, i8* %904, align 1
  %905 = load i32*, i32** %49, align 8
  %906 = getelementptr inbounds i32, i32* %905, i64 1
  %907 = load i32, i32* %906, align 4
  %908 = add nsw i32 %907, 4
  %909 = ashr i32 %908, 3
  %910 = trunc i32 %909 to i8
  %911 = load i8*, i8** %50, align 8
  %912 = getelementptr inbounds i8, i8* %911, i64 1
  store i8 %910, i8* %912, align 1
  %913 = load i32*, i32** %49, align 8
  %914 = getelementptr inbounds i32, i32* %913, i64 2
  %915 = load i32, i32* %914, align 4
  %916 = add nsw i32 %915, 4
  %917 = ashr i32 %916, 3
  %918 = trunc i32 %917 to i8
  %919 = load i8*, i8** %50, align 8
  %920 = getelementptr inbounds i8, i8* %919, i64 2
  store i8 %918, i8* %920, align 1
  %921 = load i32*, i32** %49, align 8
  %922 = getelementptr inbounds i32, i32* %921, i64 3
  %923 = load i32, i32* %922, align 4
  %924 = add nsw i32 %923, 4
  %925 = ashr i32 %924, 3
  %926 = trunc i32 %925 to i8
  %927 = load i8*, i8** %50, align 8
  %928 = getelementptr inbounds i8, i8* %927, i64 3
  store i8 %926, i8* %928, align 1
  %929 = load i32*, i32** %49, align 8
  %930 = getelementptr inbounds i32, i32* %929, i64 4
  %931 = load i32, i32* %930, align 4
  %932 = add nsw i32 %931, 4
  %933 = ashr i32 %932, 3
  %934 = trunc i32 %933 to i8
  %935 = load i8*, i8** %50, align 8
  %936 = getelementptr inbounds i8, i8* %935, i64 4
  store i8 %934, i8* %936, align 1
  %937 = load i32*, i32** %49, align 8
  %938 = getelementptr inbounds i32, i32* %937, i64 5
  %939 = load i32, i32* %938, align 4
  %940 = add nsw i32 %939, 4
  %941 = ashr i32 %940, 3
  %942 = trunc i32 %941 to i8
  %943 = load i8*, i8** %50, align 8
  %944 = getelementptr inbounds i8, i8* %943, i64 5
  store i8 %942, i8* %944, align 1
  %945 = load i32*, i32** %49, align 8
  %946 = getelementptr inbounds i32, i32* %945, i64 6
  %947 = load i32, i32* %946, align 4
  %948 = add nsw i32 %947, 4
  %949 = ashr i32 %948, 3
  %950 = trunc i32 %949 to i8
  %951 = load i8*, i8** %50, align 8
  %952 = getelementptr inbounds i8, i8* %951, i64 6
  store i8 %950, i8* %952, align 1
  %953 = load i32*, i32** %49, align 8
  %954 = getelementptr inbounds i32, i32* %953, i64 7
  %955 = load i32, i32* %954, align 4
  %956 = add nsw i32 %955, 4
  %957 = ashr i32 %956, 3
  %958 = trunc i32 %957 to i8
  %959 = load i8*, i8** %50, align 8
  %960 = getelementptr inbounds i8, i8* %959, i64 7
  store i8 %958, i8* %960, align 1
  %961 = load i32, i32* %12, align 4
  %962 = load i8*, i8** %50, align 8
  %963 = sext i32 %961 to i64
  %964 = getelementptr inbounds i8, i8* %962, i64 %963
  store i8* %964, i8** %50, align 8
  %965 = load i32*, i32** %49, align 8
  %966 = getelementptr inbounds i32, i32* %965, i64 8
  store i32* %966, i32** %49, align 8
  br label %967

967:                                              ; preds = %896
  %968 = load i32, i32* %19, align 4
  %969 = add nsw i32 %968, 1
  store i32 %969, i32* %19, align 4
  br label %893

970:                                              ; preds = %893
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @recon_comp(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
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
  %29 = load i32, i32* %20, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %20, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* %21, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %25, align 4
  %35 = load i32, i32* %21, align 4
  %36 = and i32 %35, 1
  store i32 %36, i32* %26, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %25, align 4
  %41 = add nsw i32 %39, %40
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %37, i64 %43
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %23, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %27, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %19, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8* %59, i8** %28, align 8
  %60 = load i32, i32* %24, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %11
  %63 = load i32, i32* %26, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 8
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i8*, i8** %27, align 8
  %70 = load i8*, i8** %28, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  call void @rec(i8* %69, i8* %70, i32 %71, i32 %72, i32 %73)
  br label %80

74:                                               ; preds = %65
  %75 = load i8*, i8** %27, align 8
  %76 = load i8*, i8** %28, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %17, align 4
  call void @recc(i8* %75, i8* %76, i32 %77, i32 %78, i32 %79)
  br label %80

80:                                               ; preds = %74, %68
  br label %143

81:                                               ; preds = %62, %11
  %82 = load i32, i32* %24, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %26, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 8
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i8*, i8** %27, align 8
  %92 = load i8*, i8** %28, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %17, align 4
  call void @recv(i8* %91, i8* %92, i32 %93, i32 %94, i32 %95)
  br label %102

96:                                               ; preds = %87
  %97 = load i8*, i8** %27, align 8
  %98 = load i8*, i8** %28, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %17, align 4
  call void @recvc(i8* %97, i8* %98, i32 %99, i32 %100, i32 %101)
  br label %102

102:                                              ; preds = %96, %90
  br label %142

103:                                              ; preds = %84, %81
  %104 = load i32, i32* %24, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load i32, i32* %26, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 8
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i8*, i8** %27, align 8
  %114 = load i8*, i8** %28, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %17, align 4
  call void @rech(i8* %113, i8* %114, i32 %115, i32 %116, i32 %117)
  br label %124

118:                                              ; preds = %109
  %119 = load i8*, i8** %27, align 8
  %120 = load i8*, i8** %28, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %17, align 4
  call void @rechc(i8* %119, i8* %120, i32 %121, i32 %122, i32 %123)
  br label %124

124:                                              ; preds = %118, %112
  br label %141

125:                                              ; preds = %106, %103
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 8
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i8*, i8** %27, align 8
  %130 = load i8*, i8** %28, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %17, align 4
  call void @rec4(i8* %129, i8* %130, i32 %131, i32 %132, i32 %133)
  br label %140

134:                                              ; preds = %125
  %135 = load i8*, i8** %27, align 8
  %136 = load i8*, i8** %28, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %17, align 4
  call void @rec4c(i8* %135, i8* %136, i32 %137, i32 %138, i32 %139)
  br label %140

140:                                              ; preds = %134, %128
  br label %141

141:                                              ; preds = %140, %124
  br label %142

142:                                              ; preds = %141, %102
  br label %143

143:                                              ; preds = %142, %80
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rec(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %105, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %19, i8* %21, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %26, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %29, i8* %31, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  store i8 %49, i8* %51, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 7
  store i8 %54, i8* %56, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  store i8 %59, i8* %61, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 9
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 9
  store i8 %64, i8* %66, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 10
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 10
  store i8 %69, i8* %71, align 1
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 11
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 11
  store i8 %74, i8* %76, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 12
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 12
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 13
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 13
  store i8 %84, i8* %86, align 1
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 14
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 14
  store i8 %89, i8* %91, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 15
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 15
  store i8 %94, i8* %96, align 1
  %97 = load i32, i32* %9, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %16
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %12

108:                                              ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @recc(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %65, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %19, i8* %21, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %26, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %29, i8* %31, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  store i8 %49, i8* %51, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 7
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %16
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %12

68:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @recv(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %262, %5
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %265

25:                                               ; preds = %21
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %29, %33
  %35 = add nsw i32 %34, 1
  %36 = lshr i32 %35, 1
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %43, %47
  %49 = add nsw i32 %48, 1
  %50 = lshr i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %53, align 1
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %57, %61
  %63 = add nsw i32 %62, 1
  %64 = lshr i32 %63, 1
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8 %65, i8* %67, align 1
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %71, %75
  %77 = add nsw i32 %76, 1
  %78 = lshr i32 %77, 1
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %85, %89
  %91 = add nsw i32 %90, 1
  %92 = lshr i32 %91, 1
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  store i8 %93, i8* %95, align 1
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 5
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 5
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %99, %103
  %105 = add nsw i32 %104, 1
  %106 = lshr i32 %105, 1
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 5
  store i8 %107, i8* %109, align 1
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 6
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 6
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %113, %117
  %119 = add nsw i32 %118, 1
  %120 = lshr i32 %119, 1
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 6
  store i8 %121, i8* %123, align 1
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 7
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8*, i8** %13, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = add nsw i32 %127, %131
  %133 = add nsw i32 %132, 1
  %134 = lshr i32 %133, 1
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 7
  store i8 %135, i8* %137, align 1
  %138 = load i8*, i8** %12, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 8
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = add nsw i32 %141, %145
  %147 = add nsw i32 %146, 1
  %148 = lshr i32 %147, 1
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %11, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 8
  store i8 %149, i8* %151, align 1
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 9
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8*, i8** %13, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 9
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = add nsw i32 %155, %159
  %161 = add nsw i32 %160, 1
  %162 = lshr i32 %161, 1
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 9
  store i8 %163, i8* %165, align 1
  %166 = load i8*, i8** %12, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 10
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 10
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %169, %173
  %175 = add nsw i32 %174, 1
  %176 = lshr i32 %175, 1
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 10
  store i8 %177, i8* %179, align 1
  %180 = load i8*, i8** %12, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 11
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8*, i8** %13, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 11
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = add nsw i32 %183, %187
  %189 = add nsw i32 %188, 1
  %190 = lshr i32 %189, 1
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %11, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 11
  store i8 %191, i8* %193, align 1
  %194 = load i8*, i8** %12, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 12
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8*, i8** %13, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 12
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = add nsw i32 %197, %201
  %203 = add nsw i32 %202, 1
  %204 = lshr i32 %203, 1
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %11, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 12
  store i8 %205, i8* %207, align 1
  %208 = load i8*, i8** %12, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 13
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8*, i8** %13, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 13
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 %211, %215
  %217 = add nsw i32 %216, 1
  %218 = lshr i32 %217, 1
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %11, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 13
  store i8 %219, i8* %221, align 1
  %222 = load i8*, i8** %12, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 14
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = load i8*, i8** %13, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 14
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = add nsw i32 %225, %229
  %231 = add nsw i32 %230, 1
  %232 = lshr i32 %231, 1
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %11, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 14
  store i8 %233, i8* %235, align 1
  %236 = load i8*, i8** %12, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 15
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8*, i8** %13, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 15
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = add nsw i32 %239, %243
  %245 = add nsw i32 %244, 1
  %246 = lshr i32 %245, 1
  %247 = trunc i32 %246 to i8
  %248 = load i8*, i8** %11, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 15
  store i8 %247, i8* %249, align 1
  %250 = load i32, i32* %9, align 4
  %251 = load i8*, i8** %12, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8* %253, i8** %12, align 8
  %254 = load i32, i32* %9, align 4
  %255 = load i8*, i8** %13, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8* %257, i8** %13, align 8
  %258 = load i32, i32* %8, align 4
  %259 = load i8*, i8** %11, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %11, align 8
  br label %262

262:                                              ; preds = %25
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %14, align 4
  br label %21

265:                                              ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @recvc(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %150, %5
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %153

25:                                               ; preds = %21
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %29, %33
  %35 = add nsw i32 %34, 1
  %36 = lshr i32 %35, 1
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %43, %47
  %49 = add nsw i32 %48, 1
  %50 = lshr i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %53, align 1
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %57, %61
  %63 = add nsw i32 %62, 1
  %64 = lshr i32 %63, 1
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8 %65, i8* %67, align 1
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %71, %75
  %77 = add nsw i32 %76, 1
  %78 = lshr i32 %77, 1
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 %79, i8* %81, align 1
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %85, %89
  %91 = add nsw i32 %90, 1
  %92 = lshr i32 %91, 1
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  store i8 %93, i8* %95, align 1
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 5
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 5
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %99, %103
  %105 = add nsw i32 %104, 1
  %106 = lshr i32 %105, 1
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 5
  store i8 %107, i8* %109, align 1
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 6
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 6
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %113, %117
  %119 = add nsw i32 %118, 1
  %120 = lshr i32 %119, 1
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 6
  store i8 %121, i8* %123, align 1
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 7
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8*, i8** %13, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = add nsw i32 %127, %131
  %133 = add nsw i32 %132, 1
  %134 = lshr i32 %133, 1
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 7
  store i8 %135, i8* %137, align 1
  %138 = load i32, i32* %9, align 4
  %139 = load i8*, i8** %12, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %12, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i8*, i8** %13, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %13, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i8*, i8** %11, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %11, align 8
  br label %150

150:                                              ; preds = %25
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %21

153:                                              ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rech(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %211, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %214

22:                                               ; preds = %18
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = add i32 %27, %31
  %33 = add i32 %32, 1
  %34 = lshr i32 %33, 1
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  %38 = load i32, i32* %15, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = add i32 %38, %42
  %44 = add i32 %43, 1
  %45 = lshr i32 %44, 1
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* %14, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = add i32 %49, %53
  %55 = add i32 %54, 1
  %56 = lshr i32 %55, 1
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %15, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = add i32 %60, %64
  %66 = add i32 %65, 1
  %67 = lshr i32 %66, 1
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %14, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = add i32 %71, %75
  %77 = add i32 %76, 1
  %78 = lshr i32 %77, 1
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8 %79, i8* %81, align 1
  %82 = load i32, i32* %15, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 6
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = add i32 %82, %86
  %88 = add i32 %87, 1
  %89 = lshr i32 %88, 1
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 5
  store i8 %90, i8* %92, align 1
  %93 = load i32, i32* %14, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = add i32 %93, %97
  %99 = add i32 %98, 1
  %100 = lshr i32 %99, 1
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 6
  store i8 %101, i8* %103, align 1
  %104 = load i32, i32* %15, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = add i32 %104, %108
  %110 = add i32 %109, 1
  %111 = lshr i32 %110, 1
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 7
  store i8 %112, i8* %114, align 1
  %115 = load i32, i32* %14, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 9
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  store i32 %119, i32* %15, align 4
  %120 = add i32 %115, %119
  %121 = add i32 %120, 1
  %122 = lshr i32 %121, 1
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 8
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %15, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 10
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  store i32 %130, i32* %14, align 4
  %131 = add i32 %126, %130
  %132 = add i32 %131, 1
  %133 = lshr i32 %132, 1
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 9
  store i8 %134, i8* %136, align 1
  %137 = load i32, i32* %14, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 11
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = add i32 %137, %141
  %143 = add i32 %142, 1
  %144 = lshr i32 %143, 1
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %11, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 10
  store i8 %145, i8* %147, align 1
  %148 = load i32, i32* %15, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 12
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  store i32 %152, i32* %14, align 4
  %153 = add i32 %148, %152
  %154 = add i32 %153, 1
  %155 = lshr i32 %154, 1
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %11, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 11
  store i8 %156, i8* %158, align 1
  %159 = load i32, i32* %14, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 13
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  store i32 %163, i32* %15, align 4
  %164 = add i32 %159, %163
  %165 = add i32 %164, 1
  %166 = lshr i32 %165, 1
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 12
  store i8 %167, i8* %169, align 1
  %170 = load i32, i32* %15, align 4
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 14
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  store i32 %174, i32* %14, align 4
  %175 = add i32 %170, %174
  %176 = add i32 %175, 1
  %177 = lshr i32 %176, 1
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 13
  store i8 %178, i8* %180, align 1
  %181 = load i32, i32* %14, align 4
  %182 = load i8*, i8** %12, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 15
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  store i32 %185, i32* %15, align 4
  %186 = add i32 %181, %185
  %187 = add i32 %186, 1
  %188 = lshr i32 %187, 1
  %189 = trunc i32 %188 to i8
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 14
  store i8 %189, i8* %191, align 1
  %192 = load i32, i32* %15, align 4
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 16
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = add i32 %192, %196
  %198 = add i32 %197, 1
  %199 = lshr i32 %198, 1
  %200 = trunc i32 %199 to i8
  %201 = load i8*, i8** %11, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 15
  store i8 %200, i8* %202, align 1
  %203 = load i32, i32* %9, align 4
  %204 = load i8*, i8** %12, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %12, align 8
  %207 = load i32, i32* %8, align 4
  %208 = load i8*, i8** %11, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %11, align 8
  br label %211

211:                                              ; preds = %22
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %18

214:                                              ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rechc(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %123, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %126

22:                                               ; preds = %18
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = add i32 %27, %31
  %33 = add i32 %32, 1
  %34 = lshr i32 %33, 1
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  %38 = load i32, i32* %15, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = add i32 %38, %42
  %44 = add i32 %43, 1
  %45 = lshr i32 %44, 1
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* %14, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = add i32 %49, %53
  %55 = add i32 %54, 1
  %56 = lshr i32 %55, 1
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %15, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = add i32 %60, %64
  %66 = add i32 %65, 1
  %67 = lshr i32 %66, 1
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %14, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = add i32 %71, %75
  %77 = add i32 %76, 1
  %78 = lshr i32 %77, 1
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8 %79, i8* %81, align 1
  %82 = load i32, i32* %15, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 6
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = add i32 %82, %86
  %88 = add i32 %87, 1
  %89 = lshr i32 %88, 1
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 5
  store i8 %90, i8* %92, align 1
  %93 = load i32, i32* %14, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = add i32 %93, %97
  %99 = add i32 %98, 1
  %100 = lshr i32 %99, 1
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 6
  store i8 %101, i8* %103, align 1
  %104 = load i32, i32* %15, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add i32 %104, %108
  %110 = add i32 %109, 1
  %111 = lshr i32 %110, 1
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 7
  store i8 %112, i8* %114, align 1
  %115 = load i32, i32* %9, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %12, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i8*, i8** %11, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %11, align 8
  br label %123

123:                                              ; preds = %22
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %18

126:                                              ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rec4(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %338, %5
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %341

29:                                               ; preds = %25
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = add i32 %38, %42
  %44 = load i32, i32* %17, align 4
  %45 = add i32 %43, %44
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %18, align 4
  %50 = add i32 %45, %49
  %51 = add i32 %50, 2
  %52 = lshr i32 %51, 2
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %16, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = add i32 %56, %60
  %62 = load i32, i32* %18, align 4
  %63 = add i32 %61, %62
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %17, align 4
  %68 = add i32 %63, %67
  %69 = add i32 %68, 2
  %70 = lshr i32 %69, 2
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %15, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = add i32 %74, %78
  %80 = load i32, i32* %17, align 4
  %81 = add i32 %79, %80
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %18, align 4
  %86 = add i32 %81, %85
  %87 = add i32 %86, 2
  %88 = lshr i32 %87, 2
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 %89, i8* %91, align 1
  %92 = load i32, i32* %16, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %15, align 4
  %97 = add i32 %92, %96
  %98 = load i32, i32* %18, align 4
  %99 = add i32 %97, %98
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  store i32 %103, i32* %17, align 4
  %104 = add i32 %99, %103
  %105 = add i32 %104, 2
  %106 = lshr i32 %105, 2
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %15, align 4
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = add i32 %110, %114
  %116 = load i32, i32* %17, align 4
  %117 = add i32 %115, %116
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %18, align 4
  %122 = add i32 %117, %121
  %123 = add i32 %122, 2
  %124 = lshr i32 %123, 2
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  store i8 %125, i8* %127, align 1
  %128 = load i32, i32* %16, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 6
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = add i32 %128, %132
  %134 = load i32, i32* %18, align 4
  %135 = add i32 %133, %134
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  store i32 %139, i32* %17, align 4
  %140 = add i32 %135, %139
  %141 = add i32 %140, 2
  %142 = lshr i32 %141, 2
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 5
  store i8 %143, i8* %145, align 1
  %146 = load i32, i32* %15, align 4
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 7
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  store i32 %150, i32* %16, align 4
  %151 = add i32 %146, %150
  %152 = load i32, i32* %17, align 4
  %153 = add i32 %151, %152
  %154 = load i8*, i8** %13, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 7
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  store i32 %157, i32* %18, align 4
  %158 = add i32 %153, %157
  %159 = add i32 %158, 2
  %160 = lshr i32 %159, 2
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %11, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 6
  store i8 %161, i8* %163, align 1
  %164 = load i32, i32* %16, align 4
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 8
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  store i32 %168, i32* %15, align 4
  %169 = add i32 %164, %168
  %170 = load i32, i32* %18, align 4
  %171 = add i32 %169, %170
  %172 = load i8*, i8** %13, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 8
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  store i32 %175, i32* %17, align 4
  %176 = add i32 %171, %175
  %177 = add i32 %176, 2
  %178 = lshr i32 %177, 2
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 7
  store i8 %179, i8* %181, align 1
  %182 = load i32, i32* %15, align 4
  %183 = load i8*, i8** %12, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 9
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  store i32 %186, i32* %16, align 4
  %187 = add i32 %182, %186
  %188 = load i32, i32* %17, align 4
  %189 = add i32 %187, %188
  %190 = load i8*, i8** %13, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 9
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  store i32 %193, i32* %18, align 4
  %194 = add i32 %189, %193
  %195 = add i32 %194, 2
  %196 = lshr i32 %195, 2
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %11, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 8
  store i8 %197, i8* %199, align 1
  %200 = load i32, i32* %16, align 4
  %201 = load i8*, i8** %12, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 10
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  store i32 %204, i32* %15, align 4
  %205 = add i32 %200, %204
  %206 = load i32, i32* %18, align 4
  %207 = add i32 %205, %206
  %208 = load i8*, i8** %13, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 10
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  store i32 %211, i32* %17, align 4
  %212 = add i32 %207, %211
  %213 = add i32 %212, 2
  %214 = lshr i32 %213, 2
  %215 = trunc i32 %214 to i8
  %216 = load i8*, i8** %11, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 9
  store i8 %215, i8* %217, align 1
  %218 = load i32, i32* %15, align 4
  %219 = load i8*, i8** %12, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 11
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  store i32 %222, i32* %16, align 4
  %223 = add i32 %218, %222
  %224 = load i32, i32* %17, align 4
  %225 = add i32 %223, %224
  %226 = load i8*, i8** %13, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 11
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  store i32 %229, i32* %18, align 4
  %230 = add i32 %225, %229
  %231 = add i32 %230, 2
  %232 = lshr i32 %231, 2
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %11, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 10
  store i8 %233, i8* %235, align 1
  %236 = load i32, i32* %16, align 4
  %237 = load i8*, i8** %12, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 12
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  store i32 %240, i32* %15, align 4
  %241 = add i32 %236, %240
  %242 = load i32, i32* %18, align 4
  %243 = add i32 %241, %242
  %244 = load i8*, i8** %13, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 12
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  store i32 %247, i32* %17, align 4
  %248 = add i32 %243, %247
  %249 = add i32 %248, 2
  %250 = lshr i32 %249, 2
  %251 = trunc i32 %250 to i8
  %252 = load i8*, i8** %11, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 11
  store i8 %251, i8* %253, align 1
  %254 = load i32, i32* %15, align 4
  %255 = load i8*, i8** %12, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 13
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  store i32 %258, i32* %16, align 4
  %259 = add i32 %254, %258
  %260 = load i32, i32* %17, align 4
  %261 = add i32 %259, %260
  %262 = load i8*, i8** %13, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 13
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  store i32 %265, i32* %18, align 4
  %266 = add i32 %261, %265
  %267 = add i32 %266, 2
  %268 = lshr i32 %267, 2
  %269 = trunc i32 %268 to i8
  %270 = load i8*, i8** %11, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 12
  store i8 %269, i8* %271, align 1
  %272 = load i32, i32* %16, align 4
  %273 = load i8*, i8** %12, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 14
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  store i32 %276, i32* %15, align 4
  %277 = add i32 %272, %276
  %278 = load i32, i32* %18, align 4
  %279 = add i32 %277, %278
  %280 = load i8*, i8** %13, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 14
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  store i32 %283, i32* %17, align 4
  %284 = add i32 %279, %283
  %285 = add i32 %284, 2
  %286 = lshr i32 %285, 2
  %287 = trunc i32 %286 to i8
  %288 = load i8*, i8** %11, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 13
  store i8 %287, i8* %289, align 1
  %290 = load i32, i32* %15, align 4
  %291 = load i8*, i8** %12, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 15
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  store i32 %294, i32* %16, align 4
  %295 = add i32 %290, %294
  %296 = load i32, i32* %17, align 4
  %297 = add i32 %295, %296
  %298 = load i8*, i8** %13, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 15
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  store i32 %301, i32* %18, align 4
  %302 = add i32 %297, %301
  %303 = add i32 %302, 2
  %304 = lshr i32 %303, 2
  %305 = trunc i32 %304 to i8
  %306 = load i8*, i8** %11, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 14
  store i8 %305, i8* %307, align 1
  %308 = load i32, i32* %16, align 4
  %309 = load i8*, i8** %12, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 16
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = add i32 %308, %312
  %314 = load i32, i32* %18, align 4
  %315 = add i32 %313, %314
  %316 = load i8*, i8** %13, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 16
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = add i32 %315, %319
  %321 = add i32 %320, 2
  %322 = lshr i32 %321, 2
  %323 = trunc i32 %322 to i8
  %324 = load i8*, i8** %11, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 15
  store i8 %323, i8* %325, align 1
  %326 = load i32, i32* %9, align 4
  %327 = load i8*, i8** %12, align 8
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i8, i8* %327, i64 %328
  store i8* %329, i8** %12, align 8
  %330 = load i32, i32* %9, align 4
  %331 = load i8*, i8** %13, align 8
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i8, i8* %331, i64 %332
  store i8* %333, i8** %13, align 8
  %334 = load i32, i32* %8, align 4
  %335 = load i8*, i8** %11, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8* %337, i8** %11, align 8
  br label %338

338:                                              ; preds = %29
  %339 = load i32, i32* %14, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %14, align 4
  br label %25

341:                                              ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rec4c(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %194, %5
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %197

29:                                               ; preds = %25
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = add i32 %38, %42
  %44 = load i32, i32* %17, align 4
  %45 = add i32 %43, %44
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %18, align 4
  %50 = add i32 %45, %49
  %51 = add i32 %50, 2
  %52 = lshr i32 %51, 2
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %16, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = add i32 %56, %60
  %62 = load i32, i32* %18, align 4
  %63 = add i32 %61, %62
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %17, align 4
  %68 = add i32 %63, %67
  %69 = add i32 %68, 2
  %70 = lshr i32 %69, 2
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %15, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = add i32 %74, %78
  %80 = load i32, i32* %17, align 4
  %81 = add i32 %79, %80
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %18, align 4
  %86 = add i32 %81, %85
  %87 = add i32 %86, 2
  %88 = lshr i32 %87, 2
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 %89, i8* %91, align 1
  %92 = load i32, i32* %16, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %15, align 4
  %97 = add i32 %92, %96
  %98 = load i32, i32* %18, align 4
  %99 = add i32 %97, %98
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  store i32 %103, i32* %17, align 4
  %104 = add i32 %99, %103
  %105 = add i32 %104, 2
  %106 = lshr i32 %105, 2
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %15, align 4
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = add i32 %110, %114
  %116 = load i32, i32* %17, align 4
  %117 = add i32 %115, %116
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %18, align 4
  %122 = add i32 %117, %121
  %123 = add i32 %122, 2
  %124 = lshr i32 %123, 2
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  store i8 %125, i8* %127, align 1
  %128 = load i32, i32* %16, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 6
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = add i32 %128, %132
  %134 = load i32, i32* %18, align 4
  %135 = add i32 %133, %134
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  store i32 %139, i32* %17, align 4
  %140 = add i32 %135, %139
  %141 = add i32 %140, 2
  %142 = lshr i32 %141, 2
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 5
  store i8 %143, i8* %145, align 1
  %146 = load i32, i32* %15, align 4
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 7
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  store i32 %150, i32* %16, align 4
  %151 = add i32 %146, %150
  %152 = load i32, i32* %17, align 4
  %153 = add i32 %151, %152
  %154 = load i8*, i8** %13, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 7
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  store i32 %157, i32* %18, align 4
  %158 = add i32 %153, %157
  %159 = add i32 %158, 2
  %160 = lshr i32 %159, 2
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %11, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 6
  store i8 %161, i8* %163, align 1
  %164 = load i32, i32* %16, align 4
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 8
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = add i32 %164, %168
  %170 = load i32, i32* %18, align 4
  %171 = add i32 %169, %170
  %172 = load i8*, i8** %13, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 8
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = add i32 %171, %175
  %177 = add i32 %176, 2
  %178 = lshr i32 %177, 2
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 7
  store i8 %179, i8* %181, align 1
  %182 = load i32, i32* %9, align 4
  %183 = load i8*, i8** %12, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %12, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i8*, i8** %13, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %13, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i8*, i8** %11, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %11, align 8
  br label %194

194:                                              ; preds = %29
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %14, align 4
  br label %25

197:                                              ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @reco(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
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
  %23 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x [8 x [8 x i32]]], [5 x [8 x [8 x i32]]]* @OM, i64 0, i64 %25
  %27 = load i32, i32* %19, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %26, i64 0, i64 %28
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %29, i64 0, i64 0
  store i32* %30, i32** %23, align 8
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %80, label %33

33:                                               ; preds = %10
  %34 = load i32, i32* %19, align 4
  store i32 %34, i32* %22, align 4
  br label %35

35:                                               ; preds = %76, %33
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %21, align 4
  br label %41

41:                                               ; preds = %62, %39
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %21, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32*, i32** %23, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %51, %56
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %21, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %21, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  store i32* %75, i32** %23, align 8
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %22, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %22, align 4
  br label %35

79:                                               ; preds = %35
  br label %129

80:                                               ; preds = %10
  %81 = load i32, i32* %19, align 4
  store i32 %81, i32* %22, align 4
  br label %82

82:                                               ; preds = %125, %80
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %128

86:                                               ; preds = %82
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %21, align 4
  br label %88

88:                                               ; preds = %111, %86
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32*, i32** %23, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %98, %103
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %104
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %92
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %21, align 4
  br label %88

114:                                              ; preds = %88
  %115 = load i32, i32* %14, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %11, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %12, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 8
  store i32* %124, i32** %23, align 8
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %22, align 4
  br label %82

128:                                              ; preds = %82
  br label %129

129:                                              ; preds = %128, %79
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @recvo(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %27 = load i8*, i8** %11, align 8
  store i8* %27, i8** %23, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %24, align 8
  %32 = load i32*, i32** %12, align 8
  store i32* %32, i32** %21, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x [8 x [8 x i32]]], [5 x [8 x [8 x i32]]]* @OM, i64 0, i64 %34
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %35, i64 0, i64 %37
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0
  store i32* %39, i32** %22, align 8
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %102, label %42

42:                                               ; preds = %10
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %26, align 4
  br label %44

44:                                               ; preds = %98, %42
  %45 = load i32, i32* %26, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %101

48:                                               ; preds = %44
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %25, align 4
  br label %50

50:                                               ; preds = %80, %48
  %51 = load i32, i32* %25, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i8*, i8** %23, align 8
  %56 = load i32, i32* %25, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8*, i8** %24, align 8
  %62 = load i32, i32* %25, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %60, %66
  %68 = add nsw i32 %67, 1
  %69 = lshr i32 %68, 1
  %70 = load i32*, i32** %22, align 8
  %71 = load i32, i32* %25, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %69, %74
  %76 = load i32*, i32** %21, align 8
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %54
  %81 = load i32, i32* %25, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %25, align 4
  br label %50

83:                                               ; preds = %50
  %84 = load i32, i32* %14, align 4
  %85 = load i8*, i8** %23, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %23, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i8*, i8** %24, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %24, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %21, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %21, align 8
  %96 = load i32*, i32** %22, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  store i32* %97, i32** %22, align 8
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %26, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %26, align 4
  br label %44

101:                                              ; preds = %44
  br label %164

102:                                              ; preds = %10
  %103 = load i32, i32* %19, align 4
  store i32 %103, i32* %26, align 4
  br label %104

104:                                              ; preds = %160, %102
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %163

108:                                              ; preds = %104
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %25, align 4
  br label %110

110:                                              ; preds = %142, %108
  %111 = load i32, i32* %25, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %110
  %115 = load i8*, i8** %23, align 8
  %116 = load i32, i32* %25, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8*, i8** %24, align 8
  %122 = load i32, i32* %25, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %120, %126
  %128 = add nsw i32 %127, 1
  %129 = lshr i32 %128, 1
  %130 = load i32*, i32** %22, align 8
  %131 = load i32, i32* %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = mul i32 %129, %134
  %136 = load i32*, i32** %21, align 8
  %137 = load i32, i32* %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, %135
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %114
  %143 = load i32, i32* %25, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %25, align 4
  br label %110

145:                                              ; preds = %110
  %146 = load i32, i32* %14, align 4
  %147 = load i8*, i8** %23, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %23, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load i8*, i8** %24, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %24, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32*, i32** %21, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %21, align 8
  %158 = load i32*, i32** %22, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  store i32* %159, i32** %22, align 8
  br label %160

160:                                              ; preds = %145
  %161 = load i32, i32* %26, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %26, align 4
  br label %104

163:                                              ; preds = %104
  br label %164

164:                                              ; preds = %163, %101
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @recho(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %23, align 8
  %27 = load i32*, i32** %12, align 8
  store i32* %27, i32** %21, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x [8 x [8 x i32]]], [5 x [8 x [8 x i32]]]* @OM, i64 0, i64 %29
  %31 = load i32, i32* %19, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %30, i64 0, i64 %32
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %33, i64 0, i64 0
  store i32* %34, i32** %22, align 8
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %94, label %37

37:                                               ; preds = %10
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %25, align 4
  br label %39

39:                                               ; preds = %90, %37
  %40 = load i32, i32* %25, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %93

43:                                               ; preds = %39
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %24, align 4
  br label %45

45:                                               ; preds = %76, %43
  %46 = load i32, i32* %24, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = load i8*, i8** %23, align 8
  %51 = load i32, i32* %24, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8*, i8** %23, align 8
  %57 = load i32, i32* %24, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %55, %62
  %64 = add nsw i32 %63, 1
  %65 = lshr i32 %64, 1
  %66 = load i32*, i32** %22, align 8
  %67 = load i32, i32* %24, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul i32 %65, %70
  %72 = load i32*, i32** %21, align 8
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %49
  %77 = load i32, i32* %24, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %24, align 4
  br label %45

79:                                               ; preds = %45
  %80 = load i32, i32* %14, align 4
  %81 = load i8*, i8** %23, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %23, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %21, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %21, align 8
  %88 = load i32*, i32** %22, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  store i32* %89, i32** %22, align 8
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %25, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %25, align 4
  br label %39

93:                                               ; preds = %39
  br label %158

94:                                               ; preds = %10
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %25, align 4
  br label %96

96:                                               ; preds = %154, %94
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %157

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %24, align 4
  br label %102

102:                                              ; preds = %140, %100
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %102
  %107 = load i8*, i8** %23, align 8
  %108 = load i32, i32* %24, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %23, align 8
  %114 = load i32, i32* %24, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %112, %119
  %121 = add nsw i32 %120, 1
  %122 = lshr i32 %121, 1
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [5 x [8 x [8 x i32]]], [5 x [8 x [8 x i32]]]* @OM, i64 0, i64 %124
  %126 = load i32, i32* %25, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %125, i64 0, i64 %127
  %129 = load i32, i32* %24, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %128, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = mul i32 %122, %132
  %134 = load i32*, i32** %21, align 8
  %135 = load i32, i32* %24, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, %133
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %106
  %141 = load i32, i32* %24, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %24, align 4
  br label %102

143:                                              ; preds = %102
  %144 = load i32, i32* %14, align 4
  %145 = load i8*, i8** %23, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %23, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32*, i32** %21, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %21, align 8
  %152 = load i32*, i32** %22, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 8
  store i32* %153, i32** %22, align 8
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %25, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %25, align 4
  br label %96

157:                                              ; preds = %96
  br label %158

158:                                              ; preds = %157, %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rec4o(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %27 = load i8*, i8** %11, align 8
  store i8* %27, i8** %23, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %24, align 8
  %32 = load i32*, i32** %12, align 8
  store i32* %32, i32** %21, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x [8 x [8 x i32]]], [5 x [8 x [8 x i32]]]* @OM, i64 0, i64 %34
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %35, i64 0, i64 %37
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0
  store i32* %39, i32** %22, align 8
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %118, label %42

42:                                               ; preds = %10
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %26, align 4
  br label %44

44:                                               ; preds = %114, %42
  %45 = load i32, i32* %26, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %117

48:                                               ; preds = %44
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %25, align 4
  br label %50

50:                                               ; preds = %96, %48
  %51 = load i32, i32* %25, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %50
  %55 = load i8*, i8** %23, align 8
  %56 = load i32, i32* %25, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8*, i8** %24, align 8
  %62 = load i32, i32* %25, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %60, %66
  %68 = load i8*, i8** %23, align 8
  %69 = load i32, i32* %25, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %67, %74
  %76 = load i8*, i8** %24, align 8
  %77 = load i32, i32* %25, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %75, %82
  %84 = add nsw i32 %83, 2
  %85 = lshr i32 %84, 2
  %86 = load i32*, i32** %22, align 8
  %87 = load i32, i32* %25, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = mul i32 %85, %90
  %92 = load i32*, i32** %21, align 8
  %93 = load i32, i32* %25, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %54
  %97 = load i32, i32* %25, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %25, align 4
  br label %50

99:                                               ; preds = %50
  %100 = load i32, i32* %14, align 4
  %101 = load i8*, i8** %23, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %23, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i8*, i8** %24, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %24, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %21, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %21, align 8
  %112 = load i32*, i32** %22, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  store i32* %113, i32** %22, align 8
  br label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %26, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %26, align 4
  br label %44

117:                                              ; preds = %44
  br label %196

118:                                              ; preds = %10
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %26, align 4
  br label %120

120:                                              ; preds = %192, %118
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %20, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %195

124:                                              ; preds = %120
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %25, align 4
  br label %126

126:                                              ; preds = %174, %124
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %126
  %131 = load i8*, i8** %23, align 8
  %132 = load i32, i32* %25, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8*, i8** %24, align 8
  %138 = load i32, i32* %25, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %136, %142
  %144 = load i8*, i8** %23, align 8
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %143, %150
  %152 = load i8*, i8** %24, align 8
  %153 = load i32, i32* %25, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = add nsw i32 %151, %158
  %160 = add nsw i32 %159, 2
  %161 = lshr i32 %160, 2
  %162 = load i32*, i32** %22, align 8
  %163 = load i32, i32* %25, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = mul i32 %161, %166
  %168 = load i32*, i32** %21, align 8
  %169 = load i32, i32* %25, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %172, %167
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %130
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %25, align 4
  br label %126

177:                                              ; preds = %126
  %178 = load i32, i32* %14, align 4
  %179 = load i8*, i8** %23, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %23, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i8*, i8** %24, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %24, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32*, i32** %21, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %21, align 8
  %190 = load i32*, i32** %22, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 8
  store i32* %191, i32** %22, align 8
  br label %192

192:                                              ; preds = %177
  %193 = load i32, i32* %26, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %26, align 4
  br label %120

195:                                              ; preds = %120
  br label %196

196:                                              ; preds = %195, %117
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decode_a_symbol(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @high, align 8
  %4 = load i64, i64* @low, align 8
  %5 = sub nsw i64 %3, %4
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* @length, align 8
  %7 = load i64, i64* @code_value, align 8
  %8 = load i64, i64* @low, align 8
  %9 = sub nsw i64 %7, %8
  %10 = add nsw i64 %9, 1
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %10, %14
  %16 = add nsw i64 -1, %15
  %17 = load i64, i64* @length, align 8
  %18 = sdiv i64 %16, %17
  store i64 %18, i64* @cum, align 8
  store i64 1, i64* @sacindex, align 8
  br label %19

19:                                               ; preds = %28, %1
  %20 = load i32*, i32** %2, align 8
  %21 = load i64, i64* @sacindex, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @cum, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* @sacindex, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @sacindex, align 8
  br label %19

31:                                               ; preds = %19
  %32 = load i64, i64* @low, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load i64, i64* @length, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load i64, i64* @sacindex, align 8
  %37 = sub nsw i64 %36, 1
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %34, %40
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = sdiv i64 %41, %45
  %47 = add nsw i64 %33, %46
  store i64 %47, i64* @high, align 8
  %48 = load i64, i64* @length, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = load i64, i64* @sacindex, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %48, %53
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = sdiv i64 %54, %58
  %60 = load i64, i64* @low, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* @low, align 8
  br label %62

62:                                               ; preds = %92, %31
  %63 = load i64, i64* @high, align 8
  %64 = icmp slt i64 %63, 32768
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %92

66:                                               ; preds = %62
  %67 = load i64, i64* @low, align 8
  %68 = icmp sge i64 %67, 32768
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i64, i64* @code_value, align 8
  %71 = sub nsw i64 %70, 32768
  store i64 %71, i64* @code_value, align 8
  %72 = load i64, i64* @low, align 8
  %73 = sub nsw i64 %72, 32768
  store i64 %73, i64* @low, align 8
  %74 = load i64, i64* @high, align 8
  %75 = sub nsw i64 %74, 32768
  store i64 %75, i64* @high, align 8
  br label %91

76:                                               ; preds = %66
  %77 = load i64, i64* @low, align 8
  %78 = icmp sge i64 %77, 16384
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i64, i64* @high, align 8
  %81 = icmp slt i64 %80, 49152
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i64, i64* @code_value, align 8
  %84 = sub nsw i64 %83, 16384
  store i64 %84, i64* @code_value, align 8
  %85 = load i64, i64* @low, align 8
  %86 = sub nsw i64 %85, 16384
  store i64 %86, i64* @low, align 8
  %87 = load i64, i64* @high, align 8
  %88 = sub nsw i64 %87, 16384
  store i64 %88, i64* @high, align 8
  br label %90

89:                                               ; preds = %79, %76
  br label %102

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %69
  br label %92

92:                                               ; preds = %91, %65
  %93 = load i64, i64* @low, align 8
  %94 = mul nsw i64 %93, 2
  store i64 %94, i64* @low, align 8
  %95 = load i64, i64* @high, align 8
  %96 = mul nsw i64 2, %95
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* @high, align 8
  call void @bit_out_psc_layer()
  %98 = load i64, i64* @code_value, align 8
  %99 = mul nsw i64 2, %98
  %100 = load i64, i64* @bit, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* @code_value, align 8
  br label %62

102:                                              ; preds = %89
  %103 = load i64, i64* @sacindex, align 8
  %104 = sub nsw i64 %103, 1
  %105 = trunc i64 %104 to i32
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bit_out_psc_layer() #0 {
  %1 = call i32 @showbits(i32 17)
  %2 = icmp ne i32 %1, 1
  br i1 %2, label %3, label %40

3:                                                ; preds = %0
  %4 = call i32 @getbits(i32 1)
  %5 = zext i32 %4 to i64
  store i64 %5, i64* @bit, align 8
  %6 = load i64, i64* @zerorun, align 8
  %7 = icmp sgt i64 %6, 13
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = load i64, i64* @bit, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @trace, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1.71, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  store i64 1, i64* @zerorun, align 8
  br label %30

17:                                               ; preds = %8
  %18 = load i32, i32* @trace, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2.72, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 @getbits(i32 1)
  %24 = zext i32 %23 to i64
  store i64 %24, i64* @bit, align 8
  %25 = load i64, i64* @bit, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  store i64 %29, i64* @zerorun, align 8
  br label %30

30:                                               ; preds = %22, %16
  br label %39

31:                                               ; preds = %3
  %32 = load i64, i64* @bit, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @zerorun, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @zerorun, align 8
  br label %38

37:                                               ; preds = %31
  store i64 0, i64* @zerorun, align 8
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %38, %30
  br label %46

40:                                               ; preds = %0
  store i64 0, i64* @bit, align 8
  %41 = load i32, i32* @trace, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3.73, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decoder_reset() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @zerorun, align 8
  store i64 0, i64* @code_value, align 8
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 16
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  call void @bit_out_psc_layer()
  %6 = load i64, i64* @code_value, align 8
  %7 = mul nsw i64 2, %6
  %8 = load i64, i64* @bit, align 8
  %9 = add nsw i64 %7, %8
  store i64 %9, i64* @code_value, align 8
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  %14 = load i32, i32* @trace, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @storeframe(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %7 = load i8*, i8** @outputname, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* %7, i32 %8, i32 102) #10
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %11 = load i8**, i8*** %3, align 8
  %12 = load i32, i32* @coded_picture_width, align 4
  %13 = load i32, i32* @vertical_size, align 4
  call void @store_one(i8* %10, i8** %11, i32 0, i32 %12, i32 %13)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #5

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
  %11 = load i32, i32* @outtype, align 4
  switch i32 %11, label %42 [
    i32 0, label %12
    i32 5, label %18
    i32 1, label %24
    i32 2, label %30
    i32 3, label %36
  ]

12:                                               ; preds = %5
  %13 = load i8*, i8** %6, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  call void @store_yuv(i8* %13, i8** %14, i32 %15, i32 %16, i32 %17)
  br label %43

18:                                               ; preds = %5
  %19 = load i8*, i8** %6, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  call void @store_yuv_append(i8* %19, i8** %20, i32 %21, i32 %22, i32 %23)
  br label %43

24:                                               ; preds = %5
  %25 = load i8*, i8** %6, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  call void @store_sif(i8* %25, i8** %26, i32 %27, i32 %28, i32 %29)
  br label %43

30:                                               ; preds = %5
  %31 = load i8*, i8** %6, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  call void @store_ppm_tga(i8* %31, i8** %32, i32 %33, i32 %34, i32 %35, i32 1)
  br label %43

36:                                               ; preds = %5
  %37 = load i8*, i8** %6, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  call void @store_ppm_tga(i8* %37, i8** %38, i32 %39, i32 %40, i32 %41, i32 0)
  br label %43

42:                                               ; preds = %5
  br label %43

43:                                               ; preds = %42, %36, %30, %24, %18, %12
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
  %12 = alloca [32 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @horizontal_size, align 4
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* %15) #10
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %17, i8* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 0)
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.88, i64 0, i64 0), i8* %34) #10
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %36, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 0)
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.89, i64 0, i64 0), i8* %45) #10
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %47, i8* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_yuv_append(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @horizontal_size, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %13, i8* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 1)
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %29, i8* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 1)
  %37 = load i8*, i8** %6, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  call void @store_yuv1(i8* %37, i8* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 1)
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
  %16 = load i8*, i8** @store_sif.u422, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @coded_picture_width, align 4
  %20 = ashr i32 %19, 1
  %21 = load i32, i32* @coded_picture_height, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = call noalias i8* @malloc(i64 %23) #10
  store i8* %24, i8** @store_sif.u422, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.79, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* @coded_picture_width, align 4
  %29 = ashr i32 %28, 1
  %30 = load i32, i32* @coded_picture_height, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = call noalias i8* @malloc(i64 %32) #10
  store i8* %33, i8** @store_sif.v422, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.79, i64 0, i64 0))
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @store_sif.u422, align 8
  call void @conv420to422(i8* %40, i8* %41)
  %42 = load i8**, i8*** %7, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @store_sif.v422, align 8
  call void @conv420to422(i8* %44, i8* %45)
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strcat(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.85, i64 0, i64 0)) #10
  %48 = load i32, i32* @quiet, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.82, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %37
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, i32, ...) @open(i8* %55, i32 577, i32 438)
  store i32 %56, i32* @outfile, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.83, i64 0, i64 0), i8* %59) #10
  call void @error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i8** @optr, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %125, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %128

66:                                               ; preds = %62
  %67 = load i8**, i8*** %7, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  store i8* %77, i8** %13, align 8
  %78 = load i8*, i8** @store_sif.u422, align 8
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i32, i32* %9, align 4
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  store i8* %88, i8** %14, align 8
  %89 = load i8*, i8** @store_sif.v422, align 8
  %90 = load i32, i32* %8, align 4
  %91 = ashr i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i32, i32* %9, align 4
  %95 = ashr i32 %94, 1
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %93, i64 %98
  store i8* %99, i8** %15, align 8
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %121, %66
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @horizontal_size, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %14, align 8
  %107 = load i8, i8* %105, align 1
  %108 = zext i8 %107 to i32
  call void @putbyte(i32 %108)
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %13, align 8
  %111 = load i8, i8* %109, align 1
  %112 = zext i8 %111 to i32
  call void @putbyte(i32 %112)
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %15, align 8
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  call void @putbyte(i32 %116)
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %13, align 8
  %119 = load i8, i8* %117, align 1
  %120 = zext i8 %119 to i32
  call void @putbyte(i32 %120)
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, i32* %12, align 4
  br label %100

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %62

128:                                              ; preds = %62
  %129 = load i8*, i8** @optr, align 8
  %130 = icmp ne i8* %129, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0)
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* @outfile, align 4
  %133 = load i8*, i8** @optr, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = sub i64 %134, ptrtoint ([4096 x i8]* @obfr to i64)
  %136 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i64, ...)*)(i32 %132, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 %135)
  br label %137

137:                                              ; preds = %131, %128
  %138 = load i32, i32* @outfile, align 4
  %139 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %138)
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
  %28 = alloca [32 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %29 = load i8*, i8** @store_ppm_tga.u444, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %66, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @coded_picture_width, align 4
  %33 = ashr i32 %32, 1
  %34 = load i32, i32* @coded_picture_height, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = call noalias i8* @malloc(i64 %36) #10
  store i8* %37, i8** @store_ppm_tga.u422, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.79, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* @coded_picture_width, align 4
  %42 = ashr i32 %41, 1
  %43 = load i32, i32* @coded_picture_height, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = call noalias i8* @malloc(i64 %45) #10
  store i8* %46, i8** @store_ppm_tga.v422, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.79, i64 0, i64 0))
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* @coded_picture_width, align 4
  %51 = load i32, i32* @coded_picture_height, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = call noalias i8* @malloc(i64 %53) #10
  store i8* %54, i8** @store_ppm_tga.u444, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.79, i64 0, i64 0))
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, i32* @coded_picture_width, align 4
  %59 = load i32, i32* @coded_picture_height, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = call noalias i8* @malloc(i64 %61) #10
  store i8* %62, i8** @store_ppm_tga.v444, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.79, i64 0, i64 0))
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %6
  %67 = load i8**, i8*** %8, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** @store_ppm_tga.u422, align 8
  call void @conv420to422(i8* %69, i8* %70)
  %71 = load i8**, i8*** %8, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** @store_ppm_tga.v422, align 8
  call void @conv420to422(i8* %73, i8* %74)
  %75 = load i8*, i8** @store_ppm_tga.u422, align 8
  %76 = load i8*, i8** @store_ppm_tga.u444, align 8
  call void @conv422to444(i8* %75, i8* %76)
  %77 = load i8*, i8** @store_ppm_tga.v422, align 8
  %78 = load i8*, i8** @store_ppm_tga.v444, align 8
  call void @conv422to444(i8* %77, i8* %78)
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.80, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.81, i64 0, i64 0)
  %84 = call i8* @strcat(i8* %79, i8* %83) #10
  %85 = load i32, i32* @quiet, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %66
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.82, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %87, %66
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 (i8*, i32, ...) @open(i8* %92, i32 577, i32 438)
  store i32 %93, i32* @outfile, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.83, i64 0, i64 0), i8* %96) #10
  call void @error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %91
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i8** @optr, align 8
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %98
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %111, %101
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 12
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [14 x i8], [14 x i8]* @store_ppm_tga.tga24, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  call void @putbyte(i32 %110)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %102

114:                                              ; preds = %102
  %115 = load i32, i32* @horizontal_size, align 4
  call void @putword(i32 %115)
  %116 = load i32, i32* %11, align 4
  call void @putword(i32 %116)
  %117 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @store_ppm_tga.tga24, i64 0, i64 12), align 1
  %118 = zext i8 %117 to i32
  call void @putbyte(i32 %118)
  %119 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @store_ppm_tga.tga24, i64 0, i64 13), align 1
  %120 = zext i8 %119 to i32
  call void @putbyte(i32 %120)
  br label %143

121:                                              ; preds = %98
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 0
  %123 = load i32, i32* @horizontal_size, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10.84, i64 0, i64 0), i32 %123, i32 %124) #10
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %139, %121
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  call void @putbyte(i32 %138)
  br label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %126

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142, %114
  %144 = load i32, i32* @matrix_coefficients, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @convmat, i64 0, i64 %145
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %146, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* @matrix_coefficients, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @convmat, i64 0, i64 %150
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %151, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* @matrix_coefficients, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @convmat, i64 0, i64 %155
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i64 0, i64 2
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %23, align 4
  %159 = load i32, i32* @matrix_coefficients, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @convmat, i64 0, i64 %160
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %161, i64 0, i64 3
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %24, align 4
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %274, %143
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %277

168:                                              ; preds = %164
  %169 = load i8**, i8*** %8, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %13, align 4
  %177 = mul nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %174, i64 %178
  store i8* %179, i8** %25, align 8
  %180 = load i8*, i8** @store_ppm_tga.u444, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %13, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  store i8* %188, i8** %26, align 8
  %189 = load i8*, i8** @store_ppm_tga.v444, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %13, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  store i8* %197, i8** %27, align 8
  store i32 0, i32* %14, align 4
  br label %198

198:                                              ; preds = %270, %168
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @horizontal_size, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %273

202:                                              ; preds = %198
  %203 = load i8*, i8** %26, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %26, align 8
  %205 = load i8, i8* %203, align 1
  %206 = zext i8 %205 to i32
  %207 = sub nsw i32 %206, 128
  store i32 %207, i32* %16, align 4
  %208 = load i8*, i8** %27, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %27, align 8
  %210 = load i8, i8* %208, align 1
  %211 = zext i8 %210 to i32
  %212 = sub nsw i32 %211, 128
  store i32 %212, i32* %17, align 4
  %213 = load i8*, i8** %25, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %25, align 8
  %215 = load i8, i8* %213, align 1
  %216 = zext i8 %215 to i32
  %217 = sub nsw i32 %216, 16
  %218 = mul nsw i32 76309, %217
  store i32 %218, i32* %15, align 4
  %219 = load i8*, i8** @clp, align 8
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* %17, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %220, %223
  %225 = add nsw i32 %224, 32768
  %226 = ashr i32 %225, 16
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %219, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  store i32 %230, i32* %18, align 4
  %231 = load i8*, i8** @clp, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %23, align 4
  %234 = load i32, i32* %16, align 4
  %235 = mul nsw i32 %233, %234
  %236 = sub nsw i32 %232, %235
  %237 = load i32, i32* %24, align 4
  %238 = load i32, i32* %17, align 4
  %239 = mul nsw i32 %237, %238
  %240 = sub nsw i32 %236, %239
  %241 = add nsw i32 %240, 32768
  %242 = ashr i32 %241, 16
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %231, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  store i32 %246, i32* %19, align 4
  %247 = load i8*, i8** @clp, align 8
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %16, align 4
  %251 = mul nsw i32 %249, %250
  %252 = add nsw i32 %248, %251
  %253 = add nsw i32 %252, 32786
  %254 = ashr i32 %253, 16
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %247, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  store i32 %258, i32* %20, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %202
  %262 = load i32, i32* %20, align 4
  call void @putbyte(i32 %262)
  %263 = load i32, i32* %19, align 4
  call void @putbyte(i32 %263)
  %264 = load i32, i32* %18, align 4
  call void @putbyte(i32 %264)
  br label %269

265:                                              ; preds = %202
  %266 = load i32, i32* %18, align 4
  call void @putbyte(i32 %266)
  %267 = load i32, i32* %19, align 4
  call void @putbyte(i32 %267)
  %268 = load i32, i32* %20, align 4
  call void @putbyte(i32 %268)
  br label %269

269:                                              ; preds = %265, %261
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %14, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %14, align 4
  br label %198

273:                                              ; preds = %198
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %13, align 4
  br label %164

277:                                              ; preds = %164
  %278 = load i8*, i8** @optr, align 8
  %279 = icmp ne i8* %278, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0)
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = load i32, i32* @outfile, align 4
  %282 = load i8*, i8** @optr, align 8
  %283 = ptrtoint i8* %282 to i64
  %284 = sub i64 %283, ptrtoint ([4096 x i8]* @obfr to i64)
  %285 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i64, ...)*)(i32 %281, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 %284)
  br label %286

286:                                              ; preds = %280, %277
  %287 = load i32, i32* @outfile, align 4
  %288 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %287)
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

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
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @coded_picture_width, align 4
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @coded_picture_height, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %243, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %246

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %235, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %238

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 3
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i32 [ 0, %34 ], [ %37, %35 ]
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 2
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ 0, %50 ], [ %53, %51 ]
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  br label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 1
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i32 [ %62, %60 ], [ %65, %63 ]
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 2
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 2
  br label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, 1
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ]
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, 3
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 3
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 1
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i32 [ %86, %84 ], [ %89, %87 ]
  store i32 %91, i32* %15, align 4
  %92 = load i8*, i8** @clp, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = mul nsw i32 3, %100
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = mul nsw i32 16, %109
  %111 = sub nsw i32 %101, %110
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %12, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = mul nsw i32 67, %119
  %121 = add nsw i32 %111, %120
  %122 = load i8*, i8** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = mul nsw i32 227, %129
  %131 = add nsw i32 %121, %130
  %132 = load i8*, i8** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = mul nsw i32 32, %139
  %141 = sub nsw i32 %131, %140
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %14, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = mul nsw i32 7, %149
  %151 = add nsw i32 %141, %150
  %152 = add nsw i32 %151, 128
  %153 = ashr i32 %152, 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %92, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %4, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  store i8 %156, i8* %162, align 1
  %163 = load i8*, i8** @clp, align 8
  %164 = load i8*, i8** %3, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %15, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = mul nsw i32 3, %171
  %173 = load i8*, i8** %3, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %14, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %173, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = mul nsw i32 16, %180
  %182 = sub nsw i32 %172, %181
  %183 = load i8*, i8** %3, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %13, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = mul nsw i32 67, %190
  %192 = add nsw i32 %182, %191
  %193 = load i8*, i8** %3, align 8
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %8, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = mul nsw i32 227, %200
  %202 = add nsw i32 %192, %201
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* %12, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %203, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = mul nsw i32 32, %210
  %212 = sub nsw i32 %202, %211
  %213 = load i8*, i8** %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %11, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %213, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = mul nsw i32 7, %220
  %222 = add nsw i32 %212, %221
  %223 = add nsw i32 %222, 128
  %224 = ashr i32 %223, 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %163, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = load i8*, i8** %4, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %230, 1
  %232 = mul nsw i32 %229, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %228, i64 %233
  store i8 %227, i8* %234, align 1
  br label %235

235:                                              ; preds = %90
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %25

238:                                              ; preds = %25
  %239 = load i8*, i8** %3, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %3, align 8
  %241 = load i8*, i8** %4, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %4, align 8
  br label %243

243:                                              ; preds = %238
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %20

246:                                              ; preds = %20
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
  %15 = load i32, i32* @coded_picture_width, align 4
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %216, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @coded_picture_height, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %219

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %204, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %207

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 3
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 2
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 0, %39 ], [ %42, %40 ]
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 0, %47 ], [ %50, %48 ]
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %59, %57 ], [ %62, %60 ]
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, 2
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 2
  br label %75

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 1
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %71, %69 ], [ %74, %72 ]
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 3
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 3
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %83, %81 ], [ %86, %84 ]
  store i32 %88, i32* %14, align 4
  %89 = load i8*, i8** @clp, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = mul nsw i32 5, %95
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = mul nsw i32 21, %102
  %104 = sub nsw i32 %96, %103
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 70, %110
  %112 = add nsw i32 %104, %111
  %113 = load i8*, i8** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = mul nsw i32 228, %118
  %120 = add nsw i32 %112, %119
  %121 = load i8*, i8** %3, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = mul nsw i32 37, %126
  %128 = sub nsw i32 %120, %127
  %129 = load i8*, i8** %3, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = mul nsw i32 11, %134
  %136 = add nsw i32 %128, %135
  %137 = add nsw i32 %136, 128
  %138 = ashr i32 %137, 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %89, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %141, i8* %145, align 1
  %146 = load i8*, i8** @clp, align 8
  %147 = load i8*, i8** %3, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = mul nsw i32 5, %152
  %154 = load i8*, i8** %3, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = mul nsw i32 21, %159
  %161 = sub nsw i32 %153, %160
  %162 = load i8*, i8** %3, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = mul nsw i32 70, %167
  %169 = add nsw i32 %161, %168
  %170 = load i8*, i8** %3, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = mul nsw i32 228, %175
  %177 = add nsw i32 %169, %176
  %178 = load i8*, i8** %3, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = mul nsw i32 37, %183
  %185 = sub nsw i32 %177, %184
  %186 = load i8*, i8** %3, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = mul nsw i32 11, %191
  %193 = add nsw i32 %185, %192
  %194 = add nsw i32 %193, 128
  %195 = ashr i32 %194, 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %146, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = load i8*, i8** %4, align 8
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  store i8 %198, i8* %203, align 1
  br label %204

204:                                              ; preds = %87
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  br label %22

207:                                              ; preds = %22
  %208 = load i32, i32* %7, align 4
  %209 = load i8*, i8** %3, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %3, align 8
  %212 = load i32, i32* @coded_picture_width, align 4
  %213 = load i8*, i8** %4, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %4, align 8
  br label %216

216:                                              ; preds = %207
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %17

219:                                              ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #5

declare dso_local i32 @open(i8*, i32, ...) #1

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
  %11 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 %10, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i32 4096)
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

declare dso_local i32 @write(...) #1

declare dso_local i32 @close(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @store_yuv1(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 (i8*, i32, ...) @open(i8* %21, i32 1025, i32 438)
  store i32 %22, i32* @outfile, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.86, i64 0, i64 0), i8* %25) #10
  call void @error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  br label %36

28:                                               ; preds = %7
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (i8*, i32, ...) @open(i8* %29, i32 577, i32 438)
  store i32 %30, i32* @outfile, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.83, i64 0, i64 0), i8* %33) #10
  call void @error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* @quiet, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.82, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i8** @optr, align 8
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %15, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8* %57, i8** %17, align 8
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %67, %48
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i8*, i8** %17, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %17, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  call void @putbyte(i32 %66)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %58

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load i8*, i8** @optr, align 8
  %76 = icmp ne i8* %75, getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0)
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* @outfile, align 4
  %79 = load i8*, i8** @optr, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = sub i64 %80, ptrtoint ([4096 x i8]* @obfr to i64)
  %82 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i64, ...)*)(i32 %78, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @obfr, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32, i32* @outfile, align 4
  %85 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %84)
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
  call void @options(i32* %4, i8*** %5)
  %8 = load i8**, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %8, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @outputname, align 8
  store %struct.ld* @base, %struct.ld** @ld, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, i32, ...) @open(i8* %16, i32 0)
  store i32 %17, i32* getelementptr inbounds (%struct.ld, %struct.ld* @base, i32 0, i32 0), align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i64 0, i64 0), i8* %22) #10
  call void @error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @errortext, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %2
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* getelementptr inbounds (%struct.ld, %struct.ld* @base, i32 0, i32 0), align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.ld, %struct.ld* @base, i32 0, i32 0), align 8
  %30 = call i32 (i32, i64, i32, ...) bitcast (i32 (...)* @lseek to i32 (i32, i64, i32, ...)*)(i32 %29, i64 0, i32 0)
  br label %31

31:                                               ; preds = %28, %25
  call void @initbits()
  store i32 0, i32* %7, align 4
  store i32 0, i32* @temp_ref, align 4
  %32 = load i32, i32* @prev_temp_ref, align 4
  %33 = sub nsw i32 %32, 1
  br label %34

34:                                               ; preds = %41, %31
  %35 = call i32 @getheader()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @initdecoder()
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37
  call void @getpicture(i32* %7)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %34

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @loopflag, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %25, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* getelementptr inbounds (%struct.ld, %struct.ld* @base, i32 0, i32 0), align 8
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %49)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @options(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  br label %5

5:                                                ; preds = %67, %2
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i8***, i8**** %4, align 8
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i1 [ false, %5 ], [ %17, %9 ]
  br i1 %19, label %20, label %74

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i8***, i8**** %4, align 8
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %21
  %30 = load i8***, i8**** %4, align 8
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 @toupper(i32 %36) #11
  switch i32 %37, label %51 [
    i32 86, label %38
    i32 79, label %42
    i32 82, label %46
    i32 76, label %47
    i32 88, label %48
    i32 84, label %49
    i32 81, label %50
  ]

38:                                               ; preds = %29
  %39 = load i8***, i8**** %4, align 8
  %40 = load i8**, i8*** %39, align 8
  %41 = call i32 @getval(i8** %40)
  store i32 %41, i32* @verbose, align 4
  br label %61

42:                                               ; preds = %29
  %43 = load i8***, i8**** %4, align 8
  %44 = load i8**, i8*** %43, align 8
  %45 = call i32 @getval(i8** %44)
  store i32 %45, i32* @outtype, align 4
  br label %61

46:                                               ; preds = %29
  store i32 1, i32* @refidct, align 4
  br label %61

47:                                               ; preds = %29
  store i32 1, i32* @loopflag, align 4
  br label %61

48:                                               ; preds = %29
  store i32 1, i32* @expand, align 4
  br label %61

49:                                               ; preds = %29
  store i32 1, i32* @trace, align 4
  br label %61

50:                                               ; preds = %29
  store i32 1, i32* @quiet, align 4
  br label %61

51:                                               ; preds = %29
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = load i8***, i8**** %4, align 8
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6.193, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %51, %50, %49, %48, %47, %46, %42, %38
  %62 = load i8***, i8**** %4, align 8
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %64, align 8
  br label %21

67:                                               ; preds = %21
  %68 = load i8***, i8**** %4, align 8
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %68, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  br label %5

74:                                               ; preds = %18
  %75 = load i32, i32* @outtype, align 4
  %76 = icmp ne i32 %75, 4
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @outtype, align 4
  %79 = icmp ne i32 %78, 6
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* @loopflag, align 4
  br label %81

81:                                               ; preds = %80, %77, %74
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 4
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.194, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @version, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.8.195, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9.196, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.10.197, i64 0, i64 0))
  call void @exit(i32 0) #9
  unreachable

94:                                               ; preds = %85, %81
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %4)
  call void @exit(i32 1) #9
  unreachable
}

declare dso_local i32 @lseek(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @initdecoder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = call noalias i8* @malloc(i64 1024) #10
  store i8* %5, i8** @clp, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.189, i64 0, i64 0))
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i8*, i8** @clp, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 384
  store i8* %10, i8** @clp, align 8
  store i32 -384, i32* %1, align 4
  br label %11

11:                                               ; preds = %33, %8
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 640
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 255, %21 ], [ %23, %22 ]
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %24 ]
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** @clp, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %28, i8* %32, align 1
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %11

36:                                               ; preds = %11
  store i32 5, i32* @matrix_coefficients, align 4
  %37 = load i32, i32* @source_format, align 4
  switch i32 %37, label %43 [
    i32 1, label %38
    i32 2, label %39
    i32 3, label %40
    i32 4, label %41
    i32 5, label %42
  ]

38:                                               ; preds = %36
  store i32 128, i32* @horizontal_size, align 4
  store i32 96, i32* @vertical_size, align 4
  br label %45

39:                                               ; preds = %36
  store i32 176, i32* @horizontal_size, align 4
  store i32 144, i32* @vertical_size, align 4
  br label %45

40:                                               ; preds = %36
  store i32 352, i32* @horizontal_size, align 4
  store i32 288, i32* @vertical_size, align 4
  br label %45

41:                                               ; preds = %36
  store i32 704, i32* @horizontal_size, align 4
  store i32 576, i32* @vertical_size, align 4
  br label %45

42:                                               ; preds = %36
  store i32 1408, i32* @horizontal_size, align 4
  store i32 1152, i32* @vertical_size, align 4
  br label %45

43:                                               ; preds = %36
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.190, i64 0, i64 0))
  call void @exit(i32 -1) #9
  unreachable

45:                                               ; preds = %42, %41, %40, %39, %38
  %46 = load i32, i32* @horizontal_size, align 4
  %47 = sdiv i32 %46, 16
  store i32 %47, i32* @mb_width, align 4
  %48 = load i32, i32* @vertical_size, align 4
  %49 = sdiv i32 %48, 16
  store i32 %49, i32* @mb_height, align 4
  %50 = load i32, i32* @horizontal_size, align 4
  store i32 %50, i32* @coded_picture_width, align 4
  %51 = load i32, i32* @vertical_size, align 4
  store i32 %51, i32* @coded_picture_height, align 4
  %52 = load i32, i32* @coded_picture_width, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* @chrom_width, align 4
  %54 = load i32, i32* @coded_picture_height, align 4
  %55 = ashr i32 %54, 1
  store i32 %55, i32* @chrom_height, align 4
  store i32 6, i32* @blk_cnt, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %98, %45
  %57 = load i32, i32* %2, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %101

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @coded_picture_width, align 4
  %64 = load i32, i32* @coded_picture_height, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @chrom_width, align 4
  %68 = load i32, i32* @chrom_height, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = call noalias i8* @malloc(i64 %72) #10
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x i8*], [3 x i8*]* @refframe, i64 0, i64 %75
  store i8* %73, i8** %76, align 8
  %77 = icmp ne i8* %73, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.189, i64 0, i64 0))
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = call noalias i8* @malloc(i64 %81) #10
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i8*], [3 x i8*]* @oldrefframe, i64 0, i64 %84
  store i8* %82, i8** %85, align 8
  %86 = icmp ne i8* %82, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.189, i64 0, i64 0))
  br label %88

88:                                               ; preds = %87, %79
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = call noalias i8* @malloc(i64 %90) #10
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i8*], [3 x i8*]* @bframe, i64 0, i64 %93
  store i8* %91, i8** %94, align 8
  %95 = icmp ne i8* %91, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.189, i64 0, i64 0))
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %2, align 4
  br label %56

101:                                              ; preds = %56
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %165, %101
  %103 = load i32, i32* %2, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %168

105:                                              ; preds = %102
  %106 = load i32, i32* %2, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %105
  %109 = load i32, i32* @coded_picture_width, align 4
  %110 = add nsw i32 %109, 64
  %111 = load i32, i32* @coded_picture_height, align 4
  %112 = add nsw i32 %111, 64
  %113 = mul nsw i32 %110, %112
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = call noalias i8* @malloc(i64 %115) #10
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x i8*], [3 x i8*]* @edgeframeorig, i64 0, i64 %118
  store i8* %116, i8** %119, align 8
  %120 = icmp ne i8* %116, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %108
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.189, i64 0, i64 0))
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x i8*], [3 x i8*]* @edgeframeorig, i64 0, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @coded_picture_width, align 4
  %128 = add nsw i32 %127, 64
  %129 = mul nsw i32 %128, 32
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  %132 = getelementptr inbounds i8, i8* %131, i64 32
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 %134
  store i8* %132, i8** %135, align 8
  br label %164

136:                                              ; preds = %105
  %137 = load i32, i32* @chrom_width, align 4
  %138 = add nsw i32 %137, 32
  %139 = load i32, i32* @chrom_height, align 4
  %140 = add nsw i32 %139, 32
  %141 = mul nsw i32 %138, %140
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = call noalias i8* @malloc(i64 %143) #10
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [3 x i8*], [3 x i8*]* @edgeframeorig, i64 0, i64 %146
  store i8* %144, i8** %147, align 8
  %148 = icmp ne i8* %144, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %136
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.189, i64 0, i64 0))
  br label %150

150:                                              ; preds = %149, %136
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i8*], [3 x i8*]* @edgeframeorig, i64 0, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* @chrom_width, align 4
  %156 = add nsw i32 %155, 32
  %157 = mul nsw i32 %156, 16
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %154, i64 %158
  %160 = getelementptr inbounds i8, i8* %159, i64 16
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [3 x i8*], [3 x i8*]* @edgeframe, i64 0, i64 %162
  store i8* %160, i8** %163, align 8
  br label %164

164:                                              ; preds = %150, %122
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %2, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %2, align 4
  br label %102

168:                                              ; preds = %102
  %169 = load i32, i32* @expand, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %202

171:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %198, %171
  %173 = load i32, i32* %2, align 4
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %201

175:                                              ; preds = %172
  %176 = load i32, i32* %2, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32, i32* @coded_picture_width, align 4
  %180 = load i32, i32* @coded_picture_height, align 4
  %181 = mul nsw i32 %179, %180
  %182 = mul nsw i32 %181, 4
  store i32 %182, i32* %3, align 4
  br label %188

183:                                              ; preds = %175
  %184 = load i32, i32* @chrom_width, align 4
  %185 = load i32, i32* @chrom_height, align 4
  %186 = mul nsw i32 %184, %185
  %187 = mul nsw i32 %186, 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %183, %178
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = call noalias i8* @malloc(i64 %190) #10
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x i8*], [3 x i8*]* @exnewframe, i64 0, i64 %193
  store i8* %191, i8** %194, align 8
  %195 = icmp ne i8* %191, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %188
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.189, i64 0, i64 0))
  br label %197

197:                                              ; preds = %196, %188
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %2, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %2, align 4
  br label %172

201:                                              ; preds = %172
  br label %202

202:                                              ; preds = %201, %168
  %203 = load i32, i32* @outtype, align 4
  %204 = icmp eq i32 %203, 5
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i8*, i8** @outputname, align 8
  %207 = call %struct._IO_FILE* @fopen(i8* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.191, i64 0, i64 0))
  store %struct._IO_FILE* %207, %struct._IO_FILE** %4, align 8
  %208 = icmp eq %struct._IO_FILE* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  call void @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5.192, i64 0, i64 0))
  br label %213

210:                                              ; preds = %205
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %212 = call i32 @fclose(%struct._IO_FILE* %211)
  br label %213

213:                                              ; preds = %210, %209
  br label %214

214:                                              ; preds = %213, %202
  %215 = load i32, i32* @refidct, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  call void @init_idctref()
  br label %219

218:                                              ; preds = %214
  call void @init_idct()
  br label %219

219:                                              ; preds = %218, %217
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #7

; Function Attrs: noinline nounwind uwtable
define internal i32 @getval(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 1
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 2
  %9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.198, i64 0, i64 0), i32* %4) #10
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %28, %12
  %14 = call i16** @__ctype_b_loc() #8
  %15 = load i16*, i16** %14, align 8
  %16 = load i8**, i8*** %3, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %15, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 2048
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load i8**, i8*** %3, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printbits(i32 %0, i32 %1, i32 %2) #0 {
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
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.198, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
