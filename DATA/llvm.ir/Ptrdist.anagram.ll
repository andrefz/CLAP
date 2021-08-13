; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Letter = type { i32, i32, i32, i32 }
%struct.Word = type { [2 x i64], i8*, i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }

@cchMinLength = dso_local global i32 3, align 4
@pchDictionary = common dso_local global i8* null, align 8
@alPhrase = common dso_local global [26 x %struct.Letter] zeroinitializer, align 16
@aqMainMask = common dso_local global [2 x i64] zeroinitializer, align 16
@aqMainSign = common dso_local global [2 x i64] zeroinitializer, align 16
@cchPhraseLength = common dso_local global i32 0, align 4
@auGlobalFrequency = common dso_local global [26 x i32] zeroinitializer, align 16
@cpwCand = common dso_local global i32 0, align 4
@apwCand = common dso_local global [5000 x %struct.Word*] zeroinitializer, align 16
@cpwLast = common dso_local global i32 0, align 4
@apwSol = common dso_local global [51 x %struct.Word*] zeroinitializer, align 16
@achByFrequency = common dso_local global [26 x i8] zeroinitializer, align 16
@fInteractive = common dso_local global i32 0, align 4
@achPhrase = common dso_local global [255 x i8] zeroinitializer, align 16
@jbAnagram = common dso_local global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Cannot stat dictionary\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory for dictionary\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot open dictionary\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"main dictionary has %u entries\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Dictionary too large; increase MAXWORDS\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%lu bytes wasted\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"MAX_QUADS not large enough\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Out of memory after %d candidates\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Too many candidates\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%d candidates\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%15s%c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DumpWords.X = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"Order of search will be \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c">\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"Usage: anagram dictionary [length]\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"New length: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fatal(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %6, i32 %7)
  call void @exit(i32 1) #8
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadDict(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @stat(i8* %11, %struct.stat* %10) #9
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void @Fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 52000
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call noalias i8* @malloc(i64 %19) #9
  store i8* %20, i8** @pchDictionary, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** @pchDictionary, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  call void @Fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i8*, i8** %2, align 8
  %26 = call %struct._IO_FILE* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** %3, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @Fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %65, %29
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = call i32 @feof(%struct._IO_FILE* %31) #9
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %82

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %4, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %60, %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %40 = call i32 @fgetc(%struct._IO_FILE* %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, -1
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i1 [ false, %38 ], [ %44, %42 ]
  br i1 %46, label %47, label %65

47:                                               ; preds = %45
  %48 = call i16** @__ctype_b_loc() #10
  %49 = load i16*, i16** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 1024
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %47
  %61 = load i32, i32* %9, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  store i8 %62, i8* %63, align 1
  br label %38

65:                                               ; preds = %45
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  store i8 0, i8* %66, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i8
  %74 = load i8*, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  %75 = load i32, i32* %8, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %76, i8* %78, align 1
  %79 = load i8*, i8** %4, align 8
  store i8* %79, i8** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %30

82:                                               ; preds = %30
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %84 = call i32 @fclose(%struct._IO_FILE* %83)
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  store i8 0, i8* %85, align 1
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = icmp uge i32 %90, 26000
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  call void @Fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %93

93:                                               ; preds = %92, %82
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** @pchDictionary, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sub i64 %95, %100
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %101)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #3

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildMask(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([26 x %struct.Letter]* @alPhrase to i8*), i8 0, i64 416, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([2 x i64]* @aqMainMask to i8*), i8 0, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([2 x i64]* @aqMainSign to i8*), i8 0, i64 16, i1 false)
  store i32 0, i32* @cchPhraseLength, align 4
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = call i16** @__ctype_b_loc() #10
  %17 = load i16*, i16** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %17, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 1024
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @tolower(i32 %26) #11
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 97
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.Letter, %struct.Letter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 16
  %35 = load i32, i32* @cchPhraseLength, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @cchPhraseLength, align 4
  br label %37

37:                                               ; preds = %25, %15
  br label %9

38:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %134, %38
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 26
  br i1 %41, label %42, label %137

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.Letter, %struct.Letter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %51
  store i32 -1, i32* %52, align 4
  br label %133

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %55
  store i32 0, i32* %56, align 4
  store i32 1, i32* %7, align 4
  store i64 1, i64* %8, align 8
  br label %57

57:                                               ; preds = %67, %53
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.Letter, %struct.Letter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 16
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i64, i64* %8, align 8
  %71 = shl i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %57

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = icmp ugt i64 %76, 64
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = icmp uge i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  call void @Fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %83

83:                                               ; preds = %82, %78
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i64, i64* %8, align 8
  %86 = sub i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.Letter, %struct.Letter* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i32, i32* %6, align 4
  %96 = load i64, i64* %8, align 8
  %97 = zext i32 %95 to i64
  %98 = shl i64 %96, %97
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %94, %84
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i64], [2 x i64]* @aqMainSign, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = or i64 %104, %100
  store i64 %105, i64* %103, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %107
  %109 = getelementptr inbounds %struct.Letter, %struct.Letter* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 16
  %111 = zext i32 %110 to i64
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = shl i64 %111, %113
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* @aqMainMask, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = or i64 %118, %114
  store i64 %119, i64* %117, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.Letter, %struct.Letter* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.Letter, %struct.Letter* %128, i32 0, i32 3
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %99, %49
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %39

137:                                              ; preds = %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Word* @NewWord() #0 {
  %1 = alloca %struct.Word*, align 8
  %2 = call noalias i8* @malloc(i64 32) #9
  %3 = bitcast i8* %2 to %struct.Word*
  store %struct.Word* %3, %struct.Word** %1, align 8
  %4 = load %struct.Word*, %struct.Word** %1, align 8
  %5 = icmp eq %struct.Word* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @cpwCand, align 4
  call void @Fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %7)
  br label %8

8:                                                ; preds = %6, %0
  %9 = load %struct.Word*, %struct.Word** %1, align 8
  ret %struct.Word* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @wprint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Word* @NextWord() #0 {
  %1 = alloca %struct.Word*, align 8
  %2 = alloca %struct.Word*, align 8
  %3 = load i32, i32* @cpwCand, align 4
  %4 = icmp uge i32 %3, 5000
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @Fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 0)
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i32, i32* @cpwCand, align 4
  %8 = add i32 %7, 1
  store i32 %8, i32* @cpwCand, align 4
  %9 = zext i32 %7 to i64
  %10 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %9
  %11 = load %struct.Word*, %struct.Word** %10, align 8
  store %struct.Word* %11, %struct.Word** %2, align 8
  %12 = load %struct.Word*, %struct.Word** %2, align 8
  %13 = icmp ne %struct.Word* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load %struct.Word*, %struct.Word** %2, align 8
  store %struct.Word* %15, %struct.Word** %1, align 8
  br label %27

16:                                               ; preds = %6
  %17 = call %struct.Word* @NewWord()
  %18 = load i32, i32* @cpwCand, align 4
  %19 = sub i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %20
  store %struct.Word* %17, %struct.Word** %21, align 8
  %22 = load i32, i32* @cpwCand, align 4
  %23 = sub i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %24
  %26 = load %struct.Word*, %struct.Word** %25, align 8
  store %struct.Word* %26, %struct.Word** %1, align 8
  br label %27

27:                                               ; preds = %16, %14
  %28 = load %struct.Word*, %struct.Word** %1, align 8
  ret %struct.Word* %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildWord(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [26 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Word*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 26, i1 false)
  br label %10

10:                                               ; preds = %44, %26, %1
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = call i16** @__ctype_b_loc() #10
  %18 = load i16*, i16** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 1024
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %10

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @tolower(i32 %28) #11
  %30 = sub nsw i32 %29, 97
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = add i8 %34, 1
  store i8 %35, i8* %33, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.Letter, %struct.Letter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 16
  %42 = icmp ugt i32 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %107

44:                                               ; preds = %27
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %10

47:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 26
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %48

65:                                               ; preds = %48
  %66 = call %struct.Word* @NextWord()
  store %struct.Word* %66, %struct.Word** %6, align 8
  %67 = load %struct.Word*, %struct.Word** %6, align 8
  %68 = getelementptr inbounds %struct.Word, %struct.Word* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %68, i64 0, i64 0
  %70 = bitcast i64* %69 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %70, i8 0, i64 16, i1 false)
  %71 = load i8*, i8** %2, align 8
  %72 = load %struct.Word*, %struct.Word** %6, align 8
  %73 = getelementptr inbounds %struct.Word, %struct.Word* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.Word*, %struct.Word** %6, align 8
  %76 = getelementptr inbounds %struct.Word, %struct.Word* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %104, %65
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 26
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i64
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.Letter, %struct.Letter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 %85, %91
  %93 = load %struct.Word*, %struct.Word** %6, align 8
  %94 = getelementptr inbounds %struct.Word, %struct.Word* %93, i32 0, i32 0
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.Letter, %struct.Letter* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %94, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = or i64 %102, %92
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %77

107:                                              ; preds = %77, %43
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AddWords() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @pchDictionary, align 8
  store i8* %2, i8** %1, align 8
  store i32 0, i32* @cpwCand, align 4
  br label %3

3:                                                ; preds = %33, %0
  %4 = load i8*, i8** %1, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = load i8*, i8** %1, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = load i32, i32* @cchMinLength, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load i8*, i8** %1, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i32, i32* @cchMinLength, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @cchPhraseLength, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %14, %7
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i32, i32* @cchPhraseLength, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %14
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  call void @BuildWord(i8* %32)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i8*, i8** %1, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8*, i8** %1, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %1, align 8
  br label %3

40:                                               ; preds = %3
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i32, i32* @cpwCand, align 4
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %42)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpCandidates() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @cpwCand, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 %8
  %10 = load %struct.Word*, %struct.Word** %9, align 8
  %11 = getelementptr inbounds %struct.Word, %struct.Word* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %1, align 4
  %14 = urem i32 %13, 4
  %15 = icmp eq i32 %14, 3
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 10, i32 32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %12, i32 %17)
  br label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %2

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpWords() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DumpWords.X, align 4
  %3 = add nsw i32 %2, 1
  %4 = and i32 %3, 1023
  store i32 %4, i32* @DumpWords.X, align 4
  %5 = load i32, i32* @DumpWords.X, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %25

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %20, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @cpwLast, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [51 x %struct.Word*], [51 x %struct.Word*]* @apwSol, i64 0, i64 %15
  %17 = load %struct.Word*, %struct.Word** %16, align 8
  %18 = getelementptr inbounds %struct.Word, %struct.Word* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  call void @wprint(i8* %19)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %9

23:                                               ; preds = %9
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindAnagram(i64* %0, %struct.Word** %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.Word**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  %8 = alloca %struct.Word*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.Word**, align 8
  store i64* %0, i64** %4, align 8
  store %struct.Word** %1, %struct.Word*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.Word** getelementptr inbounds ([5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 0), %struct.Word*** %11, align 8
  %12 = load i32, i32* @cpwCand, align 4
  %13 = load %struct.Word**, %struct.Word*** %11, align 8
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds %struct.Word*, %struct.Word** %13, i64 %14
  store %struct.Word** %15, %struct.Word*** %11, align 8
  br label %16

16:                                               ; preds = %52, %3
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i64
  %22 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.Letter, %struct.Letter* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i64
  %30 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.Letter, %struct.Letter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i64
  %38 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.Letter, %struct.Letter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %32, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %9, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %16
  br label %55

52:                                               ; preds = %16
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %16

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %132, %104, %91, %75, %55
  %57 = load %struct.Word**, %struct.Word*** %5, align 8
  %58 = load %struct.Word**, %struct.Word*** %11, align 8
  %59 = icmp ult %struct.Word** %57, %58
  br i1 %59, label %60, label %142

60:                                               ; preds = %56
  %61 = load %struct.Word**, %struct.Word*** %5, align 8
  %62 = load %struct.Word*, %struct.Word** %61, align 8
  store %struct.Word* %62, %struct.Word** %8, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.Word*, %struct.Word** %8, align 8
  %67 = getelementptr inbounds %struct.Word, %struct.Word* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %67, i64 0, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %65, %69
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %70, i64* %71, align 16
  %72 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainSign, i64 0, i64 0), align 16
  %73 = and i64 %70, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load %struct.Word**, %struct.Word*** %5, align 8
  %77 = getelementptr inbounds %struct.Word*, %struct.Word** %76, i32 1
  store %struct.Word** %77, %struct.Word*** %5, align 8
  br label %56

78:                                               ; preds = %60
  %79 = load i64*, i64** %4, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.Word*, %struct.Word** %8, align 8
  %83 = getelementptr inbounds %struct.Word, %struct.Word* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %83, i64 0, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %81, %85
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainSign, i64 0, i64 1), align 8
  %89 = and i64 %86, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load %struct.Word**, %struct.Word*** %5, align 8
  %93 = getelementptr inbounds %struct.Word*, %struct.Word** %92, i32 1
  store %struct.Word** %93, %struct.Word*** %5, align 8
  br label %56

94:                                               ; preds = %78
  %95 = load %struct.Word*, %struct.Word** %8, align 8
  %96 = getelementptr inbounds %struct.Word, %struct.Word* %95, i32 0, i32 0
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %96, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = and i64 %100, %101
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %94
  %105 = load %struct.Word**, %struct.Word*** %11, align 8
  %106 = getelementptr inbounds %struct.Word*, %struct.Word** %105, i32 -1
  store %struct.Word** %106, %struct.Word*** %11, align 8
  %107 = load %struct.Word*, %struct.Word** %106, align 8
  %108 = load %struct.Word**, %struct.Word*** %5, align 8
  store %struct.Word* %107, %struct.Word** %108, align 8
  %109 = load %struct.Word*, %struct.Word** %8, align 8
  %110 = load %struct.Word**, %struct.Word*** %11, align 8
  store %struct.Word* %109, %struct.Word** %110, align 8
  br label %56

111:                                              ; preds = %94
  %112 = load %struct.Word*, %struct.Word** %8, align 8
  %113 = load i32, i32* @cpwLast, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @cpwLast, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds [51 x %struct.Word*], [51 x %struct.Word*]* @apwSol, i64 0, i64 %115
  store %struct.Word* %112, %struct.Word** %116, align 8
  %117 = load %struct.Word*, %struct.Word** %8, align 8
  %118 = getelementptr inbounds %struct.Word, %struct.Word* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @cchPhraseLength, align 4
  %121 = sub i32 %120, %119
  store i32 %121, i32* @cchPhraseLength, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %111
  store %struct.Word** getelementptr inbounds ([5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 0), %struct.Word*** %11, align 8
  %124 = load i32, i32* @cpwCand, align 4
  %125 = load %struct.Word**, %struct.Word*** %11, align 8
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds %struct.Word*, %struct.Word** %125, i64 %126
  store %struct.Word** %127, %struct.Word*** %11, align 8
  %128 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %129 = load %struct.Word**, %struct.Word*** %5, align 8
  %130 = load i32, i32* %6, align 4
  call void @FindAnagram(i64* %128, %struct.Word** %129, i32 %130)
  br label %132

131:                                              ; preds = %111
  call void @DumpWords()
  br label %132

132:                                              ; preds = %131, %123
  %133 = load %struct.Word*, %struct.Word** %8, align 8
  %134 = getelementptr inbounds %struct.Word, %struct.Word* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @cchPhraseLength, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* @cchPhraseLength, align 4
  %138 = load i32, i32* @cpwLast, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* @cpwLast, align 4
  %140 = load %struct.Word**, %struct.Word*** %5, align 8
  %141 = getelementptr inbounds %struct.Word*, %struct.Word** %140, i32 1
  store %struct.Word** %141, %struct.Word*** %5, align 8
  br label %56

142:                                              ; preds = %56
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CompareFrequency(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i64
  %9 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i64
  %14 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i64
  %22 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %50

31:                                               ; preds = %18
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %50

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %39, %30, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SortCandidates() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 26
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = trunc i32 %6 to i8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %9
  store i8 %7, i8* %10, align 1
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  call void @qsort(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 0), i64 26, i64 1, i32 (i8*, i8*)* @CompareFrequency)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %29, %14
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 26
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = add nsw i32 %25, 97
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 @fputc(i32 %26, %struct._IO_FILE* %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 @fputc(i32 10, %struct._IO_FILE* %33)
  ret void
}

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @GetPhrase(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @fInteractive, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i32 @fflush(%struct._IO_FILE* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %15 = call i8* @fgets(i8* %12, i32 %13, %struct._IO_FILE* %14)
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  call void @exit(i32 0) #8
  unreachable

18:                                               ; preds = %9
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @Fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 0)
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atoi(i8* %18) #11
  store i32 %19, i32* @cchMinLength, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = call i32 @isatty(i32 1) #9
  store i32 %21, i32* @fInteractive, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  call void @ReadDict(i8* %24)
  br label %25

25:                                               ; preds = %61, %54, %20
  %26 = call i8* @GetPhrase(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0), i32 255)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = call i16** @__ctype_b_loc() #10
  %30 = load i16*, i16** %29, align 8
  %31 = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0), align 16
  %32 = sext i8 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %30, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 2048
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = call i32 @atoi(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0)) #11
  store i32 %40, i32* @cchMinLength, align 4
  %41 = load i32, i32* @cchMinLength, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %41)
  br label %61

43:                                               ; preds = %28
  %44 = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0), align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 63
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @DumpCandidates()
  br label %60

48:                                               ; preds = %43
  call void @BuildMask(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i64 0, i64 0))
  call void @AddWords()
  %49 = load i32, i32* @cpwCand, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @cchPhraseLength, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  br label %25

55:                                               ; preds = %51
  store i32 0, i32* @cpwLast, align 4
  call void @SortCandidates()
  %56 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @jbAnagram, i64 0, i64 0)) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @FindAnagram(i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainMask, i64 0, i64 0), %struct.Word** getelementptr inbounds ([5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i64 0, i64 0), i32 0)
  br label %59

59:                                               ; preds = %58, %55
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %39
  br label %25

62:                                               ; preds = %25
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #6

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32) #3

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag*) #7

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind returns_twice }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
