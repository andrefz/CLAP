; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.nucleotide_info = type { i8, float }

@seed = dso_local global i32 42, align 4
@rng_tnum = dso_local global i32 1, align 4
@rng_cnt = dso_local global i64 0, align 8
@out_tnum = dso_local global i32 1, align 4
@rng_tid = common dso_local global i32 0, align 4
@out_tid = common dso_local global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c">ONE Homo sapiens alu\0A\00", align 1
@__const.main.homo_Sapiens_Alu = private unnamed_addr constant [288 x i8] c"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA\00", align 16
@.str.2 = private unnamed_addr constant [26 x i8] c">TWO IUB ambiguity codes\0A\00", align 1
@__const.main.iub_Nucleotides_Information = private unnamed_addr constant [15 x %struct.nucleotide_info] [%struct.nucleotide_info { i8 97, float 0x3FD147AE20000000 }, %struct.nucleotide_info { i8 99, float 0x3FBEB851E0000000 }, %struct.nucleotide_info { i8 103, float 0x3FBEB851E0000000 }, %struct.nucleotide_info { i8 116, float 0x3FD147AE20000000 }, %struct.nucleotide_info { i8 66, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 68, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 72, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 75, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 77, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 78, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 82, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 83, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 86, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 87, float 0x3F947AE140000000 }, %struct.nucleotide_info { i8 89, float 0x3F947AE140000000 }], align 16
@.str.3 = private unnamed_addr constant [31 x i8] c">THREE Homo sapiens frequency\0A\00", align 1
@__const.main.homo_Sapien_Nucleotides_Information = private unnamed_addr constant [4 x %struct.nucleotide_info] [%struct.nucleotide_info { i8 97, float 0x3FD3639D20000000 }, %struct.nucleotide_info { i8 99, float 0x3FC957AE40000000 }, %struct.nucleotide_info { i8 103, float 0x3FC9493AE0000000 }, %struct.nucleotide_info { i8 116, float 0x3FD34BEE40000000 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @repeat_And_Wrap_String(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @make_Sequence_Buffer(i8* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10) #7
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = sdiv i64 %13, 60
  %15 = add nsw i64 %12, %14
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %20, %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i64 @fwrite(i8* %21, i64 %22, i64 1, %struct._IO_FILE* %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %16

28:                                               ; preds = %16
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i64 @fwrite(i8* %32, i64 %33, i64 1, %struct._IO_FILE* %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i8*, i8** %5, align 8
  call void @free(i8* %38) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @make_Sequence_Buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [61 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strlen(i8* %14) #7
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = mul nsw i64 %16, 60
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = sdiv i64 %19, 60
  %21 = add nsw i64 %18, %20
  %22 = add nsw i64 %21, 1
  %23 = call noalias i8* @malloc(i64 %22) #5
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  call void @exit(i32 -1) #8
  unreachable

27:                                               ; preds = %1
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %29, 60
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %7, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %47, %27
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, 60
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i8*, i8** %2, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %3, align 8
  %42 = srem i64 %40, %41
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %32, i64 %45
  store i8 %44, i8* %46, align 1
  br label %47

47:                                               ; preds = %38
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %33

50:                                               ; preds = %33
  store i64 0, i64* %10, align 8
  %51 = getelementptr inbounds [61 x i8], [61 x i8]* %11, i64 0, i64 60
  store i8 10, i8* %51, align 4
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %78, %50
  %54 = load i64, i64* %12, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  store i64 60, i64* %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp slt i64 %57, 60
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds [61 x i8], [61 x i8]* %11, i64 0, i64 %61
  store i8 10, i8* %62, align 1
  br label %63

63:                                               ; preds = %59, %56
  %64 = getelementptr inbounds [61 x i8], [61 x i8]* %11, i64 0, i64 0
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8, i8* %32, i64 %65
  %67 = load i64, i64* %13, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %64, i8* align 1 %66, i64 %67, i1 false)
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %3, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* %10, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %74, %63
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds [61 x i8], [61 x i8]* %11, i64 0, i64 0
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %81, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %79, i8* align 16 %80, i64 %82, i1 false)
  %83 = load i64, i64* %13, align 8
  %84 = add nsw i64 %83, 1
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %6, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %12, align 8
  br label %53

90:                                               ; preds = %53
  %91 = load i8*, i8** %6, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  ret i8* %92
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca [288 x i8], align 16
  %8 = alloca [15 x %struct.nucleotide_info], align 16
  %9 = alloca [4 x %struct.nucleotide_info], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @atoi(i8* %12) #7
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %15)
  %17 = bitcast [288 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([288 x i8], [288 x i8]* @__const.main.homo_Sapiens_Alu, i32 0, i32 0), i64 288, i1 false)
  %18 = getelementptr inbounds [288 x i8], [288 x i8]* %7, i64 0, i64 0
  %19 = load i64, i64* %6, align 8
  %20 = mul nsw i64 2, %19
  call void @repeat_And_Wrap_String(i8* %18, i64 %20)
  call void @rng_init()
  call void @out_init()
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %21)
  %23 = bitcast [15 x %struct.nucleotide_info]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 getelementptr inbounds ([15 x %struct.nucleotide_info], [15 x %struct.nucleotide_info]* @__const.main.iub_Nucleotides_Information, i32 0, i32 0, i32 0), i64 120, i1 false)
  %24 = getelementptr inbounds [15 x %struct.nucleotide_info], [15 x %struct.nucleotide_info]* %8, i64 0, i64 0
  %25 = load i64, i64* %6, align 8
  %26 = mul nsw i64 3, %25
  call void @generate_And_Wrap_Pseudorandom_DNA_Sequence(%struct.nucleotide_info* %24, i64 15, i64 %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %27)
  %29 = bitcast [4 x %struct.nucleotide_info]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 getelementptr inbounds ([4 x %struct.nucleotide_info], [4 x %struct.nucleotide_info]* @__const.main.homo_Sapien_Nucleotides_Information, i32 0, i32 0, i32 0), i64 32, i1 false)
  %30 = getelementptr inbounds [4 x %struct.nucleotide_info], [4 x %struct.nucleotide_info]* %9, i64 0, i64 0
  %31 = load i64, i64* %6, align 8
  %32 = mul nsw i64 5, %31
  call void @generate_And_Wrap_Pseudorandom_DNA_Sequence(%struct.nucleotide_info* %30, i64 4, i64 %32)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @rng_init() #0 {
  br label %1

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1
  store i32 0, i32* @rng_tid, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @out_init() #0 {
  br label %1

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1
  store i32 0, i32* @rng_tid, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @generate_And_Wrap_Pseudorandom_DNA_Sequence(%struct.nucleotide_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nucleotide_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca [62464 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca [61440 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.nucleotide_info* %0, %struct.nucleotide_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store float 0.000000e+00, float* %9, align 4
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %44, %3
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.nucleotide_info*, %struct.nucleotide_info** %4, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.nucleotide_info, %struct.nucleotide_info* %29, i64 %30
  %32 = getelementptr inbounds %struct.nucleotide_info, %struct.nucleotide_info* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = load float, float* %9, align 4
  %35 = fadd float %34, %33
  store float %35, float* %9, align 4
  %36 = load float, float* %9, align 4
  %37 = fmul float %36, 1.399680e+05
  %38 = fptoui float %37 to i32
  %39 = zext i32 %38 to i64
  %40 = add i64 1, %39
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32, i32* %23, i64 %42
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %28
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %24

47:                                               ; preds = %24
  store i32 0, i32* @rng_tid, align 4
  store i32 0, i32* @out_tid, align 4
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* @rng_cnt, align 8
  store i32 0, i32* %20, align 4
  br label %49

49:                                               ; preds = %130, %47
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %55, %50
  %52 = getelementptr inbounds [61440 x i32], [61440 x i32]* %13, i64 0, i64 0
  %53 = load i32, i32* %20, align 4
  %54 = call i64 @rng_gen_blk(i32* %52, i64 61440, i32 %53)
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %15, align 8
  %57 = icmp eq i64 -1, %56
  br i1 %57, label %51, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %15, align 8
  %60 = icmp eq i64 0, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %131

62:                                               ; preds = %58
  %63 = getelementptr inbounds [62464 x i8], [62464 x i8]* %11, i64 0, i64 0
  store i8* %63, i8** %12, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %64

64:                                               ; preds = %104, %62
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %15, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %64
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds [61440 x i32], [61440 x i32]* %13, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %72

72:                                               ; preds = %86, %68
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i64, i64* %18, align 8
  %78 = getelementptr inbounds i32, i32* %23, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ule i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %19, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %19, align 8
  br label %85

85:                                               ; preds = %82, %76
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %18, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %18, align 8
  br label %72

89:                                               ; preds = %72
  %90 = load %struct.nucleotide_info*, %struct.nucleotide_info** %4, align 8
  %91 = load i64, i64* %19, align 8
  %92 = getelementptr inbounds %struct.nucleotide_info, %struct.nucleotide_info* %90, i64 %91
  %93 = getelementptr inbounds %struct.nucleotide_info, %struct.nucleotide_info* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %12, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i64, i64* %16, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %16, align 8
  %99 = icmp sge i64 %98, 60
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  store i64 0, i64* %16, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %12, align 8
  store i8 10, i8* %101, align 1
  br label %103

103:                                              ; preds = %100, %89
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %17, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %17, align 8
  br label %64

107:                                              ; preds = %64
  %108 = load i64, i64* %16, align 8
  %109 = icmp ne i64 0, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %12, align 8
  store i8 10, i8* %111, align 1
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %123, %113
  %115 = getelementptr inbounds [62464 x i8], [62464 x i8]* %11, i64 0, i64 0
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds [62464 x i8], [62464 x i8]* %11, i64 0, i64 0
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = load i32, i32* %20, align 4
  %122 = call i64 @out_write(i8* %115, i64 %120, i32 %121)
  store i64 %122, i64* %15, align 8
  br label %123

123:                                              ; preds = %114
  %124 = load i64, i64* %15, align 8
  %125 = icmp eq i64 -1, %124
  br i1 %125, label %114, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %15, align 8
  %128 = icmp eq i64 0, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  call void @exit(i32 1) #8
  unreachable

130:                                              ; preds = %126
  br label %49

131:                                              ; preds = %61
  %132 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @rng_gen_blk(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  br label %8

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @rng_tid, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load i32, i32* @rng_tid, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @rng_tid, align 4
  %16 = load i32, i32* @rng_tnum, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* @rng_tid, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @rng_cnt, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @rng_cnt, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @rng_cnt, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* @rng_cnt, align 8
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %37, %27
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %5, align 8
  %36 = icmp ne i64 0, %34
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @seed, align 4
  %39 = mul i32 %38, 3877
  %40 = add i32 %39, 29573
  %41 = urem i32 %40, 139968
  store i32 %41, i32* @seed, align 4
  %42 = load i32, i32* @seed, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %33

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %9
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  ret i64 %49
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @out_write(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  br label %8

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @out_tid, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* @out_tid, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @out_tid, align 4
  %16 = load i32, i32* @out_tnum, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* @out_tid, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = call i64 @fwrite(i8* %20, i64 %21, i64 1, %struct._IO_FILE* %22)
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %19, %9
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %7, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
