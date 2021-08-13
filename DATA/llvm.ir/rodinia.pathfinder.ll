; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

$_Z5rdtscv = comdat any

@start_cycles = dso_local global i64 0, align 8
@starttime = dso_local global %struct.timeval zeroinitializer, align 8
@endtime = dso_local global %struct.timeval zeroinitializer, align 8
@rows = dso_local global i32 0, align 4
@cols = dso_local global i32 0, align 4
@data = dso_local global i32* null, align 8
@wall = dso_local global i32** null, align 8
@result = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Usage: pathfiner width num_of_steps\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z4initiPPc(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @atoi(i8* %15) #10
  store i32 %16, i32* @cols, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @atoi(i8* %19) #10
  store i32 %20, i32* @rows, align 4
  br label %23

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 0) #11
  unreachable

23:                                               ; preds = %12
  %24 = load i32, i32* @rows, align 4
  %25 = load i32, i32* @cols, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %27, i64 4)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = select i1 %29, i64 -1, i64 %30
  %32 = call i8* @_Znam(i64 %31) #12
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** @data, align 8
  %34 = load i32, i32* @rows, align 4
  %35 = sext i32 %34 to i64
  %36 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %35, i64 8)
  %37 = extractvalue { i64, i1 } %36, 1
  %38 = extractvalue { i64, i1 } %36, 0
  %39 = select i1 %37, i64 -1, i64 %38
  %40 = call i8* @_Znam(i64 %39) #12
  %41 = bitcast i8* %40 to i32**
  store i32** %41, i32*** @wall, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %57, %23
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @rows, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32*, i32** @data, align 8
  %48 = load i32, i32* @cols, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32**, i32*** @wall, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* %52, i32** %56, align 8
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i32, i32* @cols, align 4
  %62 = sext i32 %61 to i64
  %63 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %62, i64 4)
  %64 = extractvalue { i64, i1 } %63, 1
  %65 = extractvalue { i64, i1 } %63, 0
  %66 = select i1 %64, i64 -1, i64 %65
  %67 = call i8* @_Znam(i64 %66) #12
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** @result, align 8
  store i32 9, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  call void @srand(i32 %69) #13
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %94, %60
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @rows, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @cols, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = call i32 @rand() #13
  %81 = srem i32 %80, 10
  %82 = load i32**, i32*** @wall, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %81, i32* %89, align 4
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %75

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %70

97:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %114, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @cols, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32**, i32*** @wall, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @result, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %98

117:                                              ; preds = %98
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline uwtable
define dso_local void @_Z5fatalPc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  call void @_Z3runiPPc(i32 %6, i8** %7)
  ret i32 0
}

; Function Attrs: noinline uwtable
define dso_local void @_Z3runiPPc(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  call void @_Z4initiPPc(i32 %12, i8** %13)
  %14 = load i32*, i32** @result, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @cols, align 4
  %16 = sext i32 %15 to i64
  %17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %16, i64 4)
  %18 = extractvalue { i64, i1 } %17, 1
  %19 = extractvalue { i64, i1 } %17, 0
  %20 = select i1 %18, i64 -1, i64 %19
  %21 = call i8* @_Znam(i64 %20) #12
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %6, align 8
  %23 = call i64 @_Z5rdtscv()
  store i64 %23, i64* @start_cycles, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %111, %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @rows, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %114

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %107, %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @cols, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %110

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %46, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  br label %63

56:                                               ; preds = %45
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %56, %54
  %64 = phi i32 [ %55, %54 ], [ %62, %56 ]
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %37
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @cols, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %71, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  br label %88

81:                                               ; preds = %70
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %81, %79
  %89 = phi i32 [ %80, %79 ], [ %87, %81 ]
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %65
  %91 = load i32**, i32*** @wall, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %90
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %33

110:                                              ; preds = %33
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %24

114:                                              ; preds = %24
  %115 = call i64 @_Z5rdtscv()
  %116 = load i64, i64* @start_cycles, align 8
  %117 = sub i64 %115, %116
  store i64 %117, i64* %5, align 8
  %118 = load i32*, i32** @data, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = bitcast i32* %118 to i8*
  call void @_ZdaPv(i8* %121) #14
  br label %122

122:                                              ; preds = %120, %114
  %123 = load i32**, i32*** @wall, align 8
  %124 = icmp eq i32** %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = bitcast i32** %123 to i8*
  call void @_ZdaPv(i8* %126) #14
  br label %127

127:                                              ; preds = %125, %122
  %128 = load i32*, i32** %7, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = bitcast i32* %128 to i8*
  call void @_ZdaPv(i8* %131) #14
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i32*, i32** %6, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = bitcast i32* %133 to i8*
  call void @_ZdaPv(i8* %136) #14
  br label %137

137:                                              ; preds = %135, %132
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_Z5rdtscv() #8 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !2
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, i32* %1, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 32
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = or i64 %8, %10
  ret i64 %11
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #9

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 343180}
