; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.problem = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@verbose = dso_local global i32 0, align 4
@nthreads = dso_local global i32 1, align 4
@seed = internal global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"initializing...\0A\00", align 1
@p = internal global %struct.problem* @tiny, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"detecting corners...\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"timing statistics:\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  corners detected: %d\0A\00", align 1
@tiny = internal global %struct.problem { i32 2, i32 27, i32 54, i32 2048 }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"tiny\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@small = internal global %struct.problem { i32 2, i32 27, i32 54, i32 4096 }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@standard = internal global %struct.problem { i32 2, i32 27, i32 54, i32 8192 }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@large = internal global %struct.problem { i32 2, i32 27, i32 54, i32 16384 }, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@huge = internal global %struct.problem { i32 2, i32 27, i32 54, i32 24576 }, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"--nthreads\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"--class\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Usage: gf [options]\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Brief: FAST Corner Detection Kernel\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"  --help             Display this information and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"  --class <name>     Set problem class:\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"                       - tiny\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"                       - small\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"                       - standard\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"                       - large\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"                       - huge\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"  --verbose          Be verbose\0A\00", align 1
@timer_error = internal global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1.24 = private unnamed_addr constant [13 x i8] c"warning: %s\0A\00", align 1
@.str.2.27 = private unnamed_addr constant [16 x i8] c"cannot malloc()\00", align 1
@.str.3.28 = private unnamed_addr constant [16 x i8] c"cannot calloc()\00", align 1
@.str.4.29 = private unnamed_addr constant [17 x i8] c"cannot realloc()\00", align 1
@randum_w = internal global i32 521288629, align 4
@randum_z = internal global i32 362436069, align 4
@normalnum.call = internal global i32 0, align 4
@normalnum.X2 = internal global double 0.000000e+00, align 8
@normalnum.X1 = internal global double 0.000000e+00, align 8
@prngseed = internal global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fast(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [1 x i32], align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %20 = bitcast [1 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %165, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %168

25:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %161, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %164

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %17, align 1
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %157, %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %160

43:                                               ; preds = %40
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %141, %43
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 12
  br i1 %46, label %47, label %144

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %48, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %59, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %140

72:                                               ; preds = %47
  %73 = load i32, i32* %13, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %140

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %81, %82
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %140

85:                                               ; preds = %75
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %86, i64 %92
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %16, align 1
  %95 = load i8, i8* %16, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* %17, align 1
  %98 = sext i8 %97 to i32
  %99 = add nsw i32 %98, 20
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %85
  %102 = load i8, i8* %14, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i8, i8* %15, align 1
  %107 = add i8 %106, 1
  store i8 %107, i8* %15, align 1
  br label %113

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %157

113:                                              ; preds = %105
  br label %139

114:                                              ; preds = %85
  %115 = load i8, i8* %16, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* %17, align 1
  %118 = sext i8 %117 to i32
  %119 = sub nsw i32 %118, 20
  %120 = icmp sle i32 %116, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %114
  %122 = load i8, i8* %15, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i8, i8* %14, align 1
  %127 = add i8 %126, 1
  store i8 %127, i8* %14, align 1
  br label %133

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %157

133:                                              ; preds = %125
  br label %138

134:                                              ; preds = %114
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %157

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %113
  br label %140

140:                                              ; preds = %139, %75, %72, %47
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %44

144:                                              ; preds = %44
  %145 = load i8, i8* %14, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 12
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i8, i8* %15, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 12
  br i1 %151, label %152, label %156

152:                                              ; preds = %148, %144
  %153 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  store i32 16, i32* %11, align 4
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %134, %128, %108
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %40

160:                                              ; preds = %40
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %26

164:                                              ; preds = %26
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %21

168:                                              ; preds = %21
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %179, %168
  %170 = load i32, i32* %9, align 4
  %171 = icmp slt i32 %170, 1
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %169

182:                                              ; preds = %169
  %183 = load i32, i32* %19, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  call void @readargs(i32 %13, i8** %14)
  call void @timer_init()
  %15 = load i32, i32* @seed, align 4
  call void @srandnum(i32 %15)
  %16 = load i32, i32* @verbose, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = call i64 @timer_get()
  store i64 %21, i64* %9, align 8
  %22 = load %struct.problem*, %struct.problem** @p, align 8
  %23 = getelementptr inbounds %struct.problem, %struct.problem* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.problem*, %struct.problem** @p, align 8
  %26 = getelementptr inbounds %struct.problem, %struct.problem* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 1
  %31 = call i8* @smalloc(i64 %30)
  store i8* %31, i8** %10, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %63, %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.problem*, %struct.problem** @p, align 8
  %35 = getelementptr inbounds %struct.problem, %struct.problem* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.problem*, %struct.problem** @p, align 8
  %38 = getelementptr inbounds %struct.problem, %struct.problem* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = icmp slt i32 %33, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %32
  %43 = call i32 @randnum()
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %12, align 1
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8, i8* %12, align 1
  %51 = sext i8 %50 to i32
  br label %56

52:                                               ; preds = %42
  %53 = load i8, i8* %12, align 1
  %54 = sext i8 %53 to i32
  %55 = mul nsw i32 %54, -1
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ %55, %52 ]
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 %58, i8* %62, align 1
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %32

66:                                               ; preds = %32
  %67 = load %struct.problem*, %struct.problem** @p, align 8
  %68 = getelementptr inbounds %struct.problem, %struct.problem* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.problem*, %struct.problem** @p, align 8
  %71 = getelementptr inbounds %struct.problem, %struct.problem* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = call i8* @smalloc(i64 %75)
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  call void @generate_mask(i32* %78)
  %79 = call i64 @timer_get()
  store i64 %79, i64* %8, align 8
  %80 = load i32, i32* @verbose, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %66
  %85 = call i64 @timer_get()
  store i64 %85, i64* %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.problem*, %struct.problem** @p, align 8
  %88 = getelementptr inbounds %struct.problem, %struct.problem* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @fast(i8* %86, i32 %89, i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = call i64 @timer_get()
  store i64 %92, i64* %8, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = bitcast i32* %96 to i8*
  call void @free(i8* %97) #6
  %98 = load i8*, i8** %10, align 8
  call void @free(i8* %98) #6
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @readargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %94, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %97

12:                                               ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %73 [
    i32 2, label %22
  ]

22:                                               ; preds = %20
  %23 = load i8**, i8*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #7
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store %struct.problem* @tiny, %struct.problem** @p, align 8
  br label %72

31:                                               ; preds = %22
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #7
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store %struct.problem* @small, %struct.problem** @p, align 8
  br label %71

40:                                               ; preds = %31
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store %struct.problem* @standard, %struct.problem** @p, align 8
  br label %70

49:                                               ; preds = %40
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store %struct.problem* @large, %struct.problem** @p, align 8
  br label %69

58:                                               ; preds = %49
  %59 = load i8**, i8*** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #7
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store %struct.problem* @huge, %struct.problem** @p, align 8
  br label %68

67:                                               ; preds = %58
  call void @usage()
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %30
  store i32 0, i32* %7, align 4
  br label %74

73:                                               ; preds = %20
  call void @usage()
  br label %74

74:                                               ; preds = %73, %72
  br label %94

75:                                               ; preds = %12
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #7
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, i32* @verbose, align 4
  br label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)) #7
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #7
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 2, i32* %7, align 4
  br label %91

90:                                               ; preds = %85
  call void @usage()
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %8

97:                                               ; preds = %8
  %98 = load i32, i32* @nthreads, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @usage()
  br label %101

101:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @generate_mask(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load %struct.problem*, %struct.problem** @p, align 8
  %5 = getelementptr inbounds %struct.problem, %struct.problem* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 0, %6
  %8 = add nsw i32 %7, 0
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %3, i64 %9
  store i32 -1, i32* %10, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load %struct.problem*, %struct.problem** @p, align 8
  %13 = getelementptr inbounds %struct.problem, %struct.problem* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 0, %14
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %11, i64 %17
  store i32 -3, i32* %18, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.problem*, %struct.problem** @p, align 8
  %21 = getelementptr inbounds %struct.problem, %struct.problem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 1, %22
  %24 = add nsw i32 %23, 0
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load %struct.problem*, %struct.problem** @p, align 8
  %29 = getelementptr inbounds %struct.problem, %struct.problem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 1, %30
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  store i32 -3, i32* %34, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = load %struct.problem*, %struct.problem** @p, align 8
  %37 = getelementptr inbounds %struct.problem, %struct.problem* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 2, %38
  %40 = add nsw i32 %39, 0
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  store i32 1, i32* %42, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load %struct.problem*, %struct.problem** @p, align 8
  %45 = getelementptr inbounds %struct.problem, %struct.problem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  store i32 -3, i32* %50, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = load %struct.problem*, %struct.problem** @p, align 8
  %53 = getelementptr inbounds %struct.problem, %struct.problem* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 3, %54
  %56 = add nsw i32 %55, 0
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  store i32 2, i32* %58, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load %struct.problem*, %struct.problem** @p, align 8
  %61 = getelementptr inbounds %struct.problem, %struct.problem* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 3, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  store i32 -2, i32* %66, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = load %struct.problem*, %struct.problem** @p, align 8
  %69 = getelementptr inbounds %struct.problem, %struct.problem* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 4, %70
  %72 = add nsw i32 %71, 0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  store i32 3, i32* %74, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = load %struct.problem*, %struct.problem** @p, align 8
  %77 = getelementptr inbounds %struct.problem, %struct.problem* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 4, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  store i32 -1, i32* %82, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = load %struct.problem*, %struct.problem** @p, align 8
  %85 = getelementptr inbounds %struct.problem, %struct.problem* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 5, %86
  %88 = add nsw i32 %87, 0
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  store i32 3, i32* %90, align 4
  %91 = load i32*, i32** %2, align 8
  %92 = load %struct.problem*, %struct.problem** @p, align 8
  %93 = getelementptr inbounds %struct.problem, %struct.problem* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 5, %94
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** %2, align 8
  %100 = load %struct.problem*, %struct.problem** @p, align 8
  %101 = getelementptr inbounds %struct.problem, %struct.problem* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 6, %102
  %104 = add nsw i32 %103, 0
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %99, i64 %105
  store i32 3, i32* %106, align 4
  %107 = load i32*, i32** %2, align 8
  %108 = load %struct.problem*, %struct.problem** @p, align 8
  %109 = getelementptr inbounds %struct.problem, %struct.problem* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 6, %110
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  store i32 1, i32* %114, align 4
  %115 = load i32*, i32** %2, align 8
  %116 = load %struct.problem*, %struct.problem** @p, align 8
  %117 = getelementptr inbounds %struct.problem, %struct.problem* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 7, %118
  %120 = add nsw i32 %119, 0
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %115, i64 %121
  store i32 2, i32* %122, align 4
  %123 = load i32*, i32** %2, align 8
  %124 = load %struct.problem*, %struct.problem** @p, align 8
  %125 = getelementptr inbounds %struct.problem, %struct.problem* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 7, %126
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %123, i64 %129
  store i32 2, i32* %130, align 4
  %131 = load i32*, i32** %2, align 8
  %132 = load %struct.problem*, %struct.problem** @p, align 8
  %133 = getelementptr inbounds %struct.problem, %struct.problem* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 8, %134
  %136 = add nsw i32 %135, 0
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  store i32 1, i32* %138, align 4
  %139 = load i32*, i32** %2, align 8
  %140 = load %struct.problem*, %struct.problem** @p, align 8
  %141 = getelementptr inbounds %struct.problem, %struct.problem* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 8, %142
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %139, i64 %145
  store i32 3, i32* %146, align 4
  %147 = load i32*, i32** %2, align 8
  %148 = load %struct.problem*, %struct.problem** @p, align 8
  %149 = getelementptr inbounds %struct.problem, %struct.problem* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 9, %150
  %152 = add nsw i32 %151, 0
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  store i32 0, i32* %154, align 4
  %155 = load i32*, i32** %2, align 8
  %156 = load %struct.problem*, %struct.problem** @p, align 8
  %157 = getelementptr inbounds %struct.problem, %struct.problem* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 9, %158
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %155, i64 %161
  store i32 3, i32* %162, align 4
  %163 = load i32*, i32** %2, align 8
  %164 = load %struct.problem*, %struct.problem** @p, align 8
  %165 = getelementptr inbounds %struct.problem, %struct.problem* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 10, %166
  %168 = add nsw i32 %167, 0
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  store i32 -1, i32* %170, align 4
  %171 = load i32*, i32** %2, align 8
  %172 = load %struct.problem*, %struct.problem** @p, align 8
  %173 = getelementptr inbounds %struct.problem, %struct.problem* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 10, %174
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %171, i64 %177
  store i32 3, i32* %178, align 4
  %179 = load i32*, i32** %2, align 8
  %180 = load %struct.problem*, %struct.problem** @p, align 8
  %181 = getelementptr inbounds %struct.problem, %struct.problem* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 11, %182
  %184 = add nsw i32 %183, 0
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  store i32 -2, i32* %186, align 4
  %187 = load i32*, i32** %2, align 8
  %188 = load %struct.problem*, %struct.problem** @p, align 8
  %189 = getelementptr inbounds %struct.problem, %struct.problem* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 11, %190
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %187, i64 %193
  store i32 2, i32* %194, align 4
  %195 = load i32*, i32** %2, align 8
  %196 = load %struct.problem*, %struct.problem** @p, align 8
  %197 = getelementptr inbounds %struct.problem, %struct.problem* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 12, %198
  %200 = add nsw i32 %199, 0
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %195, i64 %201
  store i32 -3, i32* %202, align 4
  %203 = load i32*, i32** %2, align 8
  %204 = load %struct.problem*, %struct.problem** @p, align 8
  %205 = getelementptr inbounds %struct.problem, %struct.problem* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 12, %206
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %203, i64 %209
  store i32 1, i32* %210, align 4
  %211 = load i32*, i32** %2, align 8
  %212 = load %struct.problem*, %struct.problem** @p, align 8
  %213 = getelementptr inbounds %struct.problem, %struct.problem* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 13, %214
  %216 = add nsw i32 %215, 0
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %211, i64 %217
  store i32 -3, i32* %218, align 4
  %219 = load i32*, i32** %2, align 8
  %220 = load %struct.problem*, %struct.problem** @p, align 8
  %221 = getelementptr inbounds %struct.problem, %struct.problem* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = mul nsw i32 13, %222
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  store i32 0, i32* %226, align 4
  %227 = load i32*, i32** %2, align 8
  %228 = load %struct.problem*, %struct.problem** @p, align 8
  %229 = getelementptr inbounds %struct.problem, %struct.problem* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 14, %230
  %232 = add nsw i32 %231, 0
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %227, i64 %233
  store i32 -3, i32* %234, align 4
  %235 = load i32*, i32** %2, align 8
  %236 = load %struct.problem*, %struct.problem** @p, align 8
  %237 = getelementptr inbounds %struct.problem, %struct.problem* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 14, %238
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %235, i64 %241
  store i32 -1, i32* %242, align 4
  %243 = load i32*, i32** %2, align 8
  %244 = load %struct.problem*, %struct.problem** @p, align 8
  %245 = getelementptr inbounds %struct.problem, %struct.problem* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 15, %246
  %248 = add nsw i32 %247, 0
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %243, i64 %249
  store i32 -2, i32* %250, align 4
  %251 = load i32*, i32** %2, align 8
  %252 = load %struct.problem*, %struct.problem** @p, align 8
  %253 = getelementptr inbounds %struct.problem, %struct.problem* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 15, %254
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %251, i64 %257
  store i32 -2, i32* %258, align 4
  %259 = load i32*, i32** %2, align 8
  %260 = load %struct.problem*, %struct.problem** @p, align 8
  %261 = getelementptr inbounds %struct.problem, %struct.problem* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 16, %262
  %264 = add nsw i32 %263, 0
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %259, i64 %265
  store i32 -1, i32* %266, align 4
  %267 = load i32*, i32** %2, align 8
  %268 = load %struct.problem*, %struct.problem** @p, align 8
  %269 = getelementptr inbounds %struct.problem, %struct.problem* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = mul nsw i32 16, %270
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %267, i64 %273
  store i32 -3, i32* %274, align 4
  %275 = load i32*, i32** %2, align 8
  %276 = load %struct.problem*, %struct.problem** @p, align 8
  %277 = getelementptr inbounds %struct.problem, %struct.problem* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 17, %278
  %280 = add nsw i32 %279, 0
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %275, i64 %281
  store i32 0, i32* %282, align 4
  %283 = load i32*, i32** %2, align 8
  %284 = load %struct.problem*, %struct.problem** @p, align 8
  %285 = getelementptr inbounds %struct.problem, %struct.problem* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = mul nsw i32 17, %286
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %283, i64 %289
  store i32 -3, i32* %290, align 4
  %291 = load i32*, i32** %2, align 8
  %292 = load %struct.problem*, %struct.problem** @p, align 8
  %293 = getelementptr inbounds %struct.problem, %struct.problem* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 18, %294
  %296 = add nsw i32 %295, 0
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %291, i64 %297
  store i32 1, i32* %298, align 4
  %299 = load i32*, i32** %2, align 8
  %300 = load %struct.problem*, %struct.problem** @p, align 8
  %301 = getelementptr inbounds %struct.problem, %struct.problem* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 18, %302
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %299, i64 %305
  store i32 -3, i32* %306, align 4
  %307 = load i32*, i32** %2, align 8
  %308 = load %struct.problem*, %struct.problem** @p, align 8
  %309 = getelementptr inbounds %struct.problem, %struct.problem* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 19, %310
  %312 = add nsw i32 %311, 0
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %307, i64 %313
  store i32 2, i32* %314, align 4
  %315 = load i32*, i32** %2, align 8
  %316 = load %struct.problem*, %struct.problem** @p, align 8
  %317 = getelementptr inbounds %struct.problem, %struct.problem* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 19, %318
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %315, i64 %321
  store i32 -2, i32* %322, align 4
  %323 = load i32*, i32** %2, align 8
  %324 = load %struct.problem*, %struct.problem** @p, align 8
  %325 = getelementptr inbounds %struct.problem, %struct.problem* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 20, %326
  %328 = add nsw i32 %327, 0
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %323, i64 %329
  store i32 3, i32* %330, align 4
  %331 = load i32*, i32** %2, align 8
  %332 = load %struct.problem*, %struct.problem** @p, align 8
  %333 = getelementptr inbounds %struct.problem, %struct.problem* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 20, %334
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %331, i64 %337
  store i32 -1, i32* %338, align 4
  %339 = load i32*, i32** %2, align 8
  %340 = load %struct.problem*, %struct.problem** @p, align 8
  %341 = getelementptr inbounds %struct.problem, %struct.problem* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 21, %342
  %344 = add nsw i32 %343, 0
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %339, i64 %345
  store i32 3, i32* %346, align 4
  %347 = load i32*, i32** %2, align 8
  %348 = load %struct.problem*, %struct.problem** @p, align 8
  %349 = getelementptr inbounds %struct.problem, %struct.problem* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = mul nsw i32 21, %350
  %352 = add nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %347, i64 %353
  store i32 0, i32* %354, align 4
  %355 = load i32*, i32** %2, align 8
  %356 = load %struct.problem*, %struct.problem** @p, align 8
  %357 = getelementptr inbounds %struct.problem, %struct.problem* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 22, %358
  %360 = add nsw i32 %359, 0
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %355, i64 %361
  store i32 3, i32* %362, align 4
  %363 = load i32*, i32** %2, align 8
  %364 = load %struct.problem*, %struct.problem** @p, align 8
  %365 = getelementptr inbounds %struct.problem, %struct.problem* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = mul nsw i32 22, %366
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %363, i64 %369
  store i32 1, i32* %370, align 4
  %371 = load i32*, i32** %2, align 8
  %372 = load %struct.problem*, %struct.problem** @p, align 8
  %373 = getelementptr inbounds %struct.problem, %struct.problem* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = mul nsw i32 23, %374
  %376 = add nsw i32 %375, 0
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %371, i64 %377
  store i32 2, i32* %378, align 4
  %379 = load i32*, i32** %2, align 8
  %380 = load %struct.problem*, %struct.problem** @p, align 8
  %381 = getelementptr inbounds %struct.problem, %struct.problem* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = mul nsw i32 23, %382
  %384 = add nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %379, i64 %385
  store i32 2, i32* %386, align 4
  %387 = load i32*, i32** %2, align 8
  %388 = load %struct.problem*, %struct.problem** @p, align 8
  %389 = getelementptr inbounds %struct.problem, %struct.problem* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = mul nsw i32 24, %390
  %392 = add nsw i32 %391, 0
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %387, i64 %393
  store i32 1, i32* %394, align 4
  %395 = load i32*, i32** %2, align 8
  %396 = load %struct.problem*, %struct.problem** @p, align 8
  %397 = getelementptr inbounds %struct.problem, %struct.problem* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = mul nsw i32 24, %398
  %400 = add nsw i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %395, i64 %401
  store i32 3, i32* %402, align 4
  %403 = load i32*, i32** %2, align 8
  %404 = load %struct.problem*, %struct.problem** @p, align 8
  %405 = getelementptr inbounds %struct.problem, %struct.problem* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = mul nsw i32 25, %406
  %408 = add nsw i32 %407, 0
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %403, i64 %409
  store i32 0, i32* %410, align 4
  %411 = load i32*, i32** %2, align 8
  %412 = load %struct.problem*, %struct.problem** @p, align 8
  %413 = getelementptr inbounds %struct.problem, %struct.problem* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = mul nsw i32 25, %414
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %411, i64 %417
  store i32 3, i32* %418, align 4
  %419 = load i32*, i32** %2, align 8
  %420 = load %struct.problem*, %struct.problem** @p, align 8
  %421 = getelementptr inbounds %struct.problem, %struct.problem* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = mul nsw i32 26, %422
  %424 = add nsw i32 %423, 0
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %419, i64 %425
  store i32 -1, i32* %426, align 4
  %427 = load i32*, i32** %2, align 8
  %428 = load %struct.problem*, %struct.problem** @p, align 8
  %429 = getelementptr inbounds %struct.problem, %struct.problem* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = mul nsw i32 26, %430
  %432 = add nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %427, i64 %433
  store i32 3, i32* %434, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_get() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #6
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 1000000, %5
  store i64 %6, i64* %1, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %1, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_diff(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub i64 %5, %6
  %8 = load i64, i64* @timer_error, align 8
  %9 = sub i64 %7, %8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @timer_get()
  store i64 %3, i64* %1, align 8
  %4 = call i64 @timer_get()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* %1, align 8
  %7 = sub i64 %5, %6
  store i64 %7, i64* @timer_error, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* %4)
  call void @exit(i32 1) #8
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @warning(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.24, i64 0, i64 0), i8* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @smalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #6
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.27, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i8*, i8** %3, align 8
  ret i8* %10
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @scalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #6
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.28, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i8*, i8** %5, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @srealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #6
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.29, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @srandnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul nsw i32 %5, 104623
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 521288629, %11 ]
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 %14, 48947
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 362436069, %20 ]
  store i32 %22, i32* @randum_z, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randnum() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @randum_z, align 4
  %3 = and i32 %2, 65535
  %4 = mul i32 36969, %3
  %5 = load i32, i32* @randum_z, align 4
  %6 = lshr i32 %5, 16
  %7 = add i32 %4, %6
  store i32 %7, i32* @randum_z, align 4
  %8 = load i32, i32* @randum_w, align 4
  %9 = and i32 %8, 65535
  %10 = mul i32 18000, %9
  %11 = load i32, i32* @randum_w, align 4
  %12 = lshr i32 %11, 16
  %13 = add i32 %10, %12
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* @randum_z, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* @randum_w, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @normalnum(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %10 = load i32, i32* @normalnum.call, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @normalnum.call, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* @normalnum.call, align 4
  %17 = load double, double* %4, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* @normalnum.X2, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %17, %20
  store double %21, double* %3, align 8
  br label %69

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %45, %22
  %24 = call i32 @randnum()
  %25 = uitofp i32 %24 to double
  %26 = fdiv double %25, 0x41DFFFFFFFC00000
  %27 = fmul double %26, 2.000000e+00
  %28 = fadd double -1.000000e+00, %27
  store double %28, double* %6, align 8
  %29 = call i32 @randnum()
  %30 = uitofp i32 %29 to double
  %31 = fdiv double %30, 0x41DFFFFFFFC00000
  %32 = fmul double %31, 2.000000e+00
  %33 = fadd double -1.000000e+00, %32
  store double %33, double* %7, align 8
  %34 = load double, double* %6, align 8
  %35 = call double @pow(double %34, double 2.000000e+00) #6
  %36 = load double, double* %7, align 8
  %37 = call double @pow(double %36, double 2.000000e+00) #6
  %38 = fadd double %35, %37
  store double %38, double* %8, align 8
  br label %39

39:                                               ; preds = %23
  %40 = load double, double* %8, align 8
  %41 = fcmp oge double %40, 1.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load double, double* %8, align 8
  %44 = fcmp oeq double %43, 0.000000e+00
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  br i1 %46, label %23, label %47

47:                                               ; preds = %45
  %48 = load double, double* %8, align 8
  %49 = call double @log(double %48) #6
  %50 = fmul double -2.000000e+00, %49
  %51 = load double, double* %8, align 8
  %52 = fdiv double %50, %51
  %53 = call double @sqrt(double %52) #6
  store double %53, double* %9, align 8
  %54 = load double, double* %6, align 8
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  store double %56, double* @normalnum.X1, align 8
  %57 = load double, double* %7, align 8
  %58 = load double, double* %9, align 8
  %59 = fmul double %57, %58
  store double %59, double* @normalnum.X2, align 8
  %60 = load i32, i32* @normalnum.call, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* @normalnum.call, align 4
  %64 = load double, double* %4, align 8
  %65 = load double, double* %5, align 8
  %66 = load double, double* @normalnum.X1, align 8
  %67 = fmul double %65, %66
  %68 = fadd double %64, %67
  store double %68, double* %3, align 8
  br label %69

69:                                               ; preds = %47, %12
  %70 = load double, double* %3, align 8
  ret double %70
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

; Function Attrs: nounwind
declare dso_local double @log(double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @prngnum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 44488, i64* %1, align 8
  store i64 3399, i64* %2, align 8
  %4 = load i64, i64* @prngseed, align 8
  %5 = srem i64 %4, 44488
  %6 = mul nsw i64 48271, %5
  %7 = load i64, i64* @prngseed, align 8
  %8 = sdiv i64 %7, 44488
  %9 = mul nsw i64 3399, %8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* @prngseed, align 8
  br label %18

15:                                               ; preds = %0
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 2147483647
  store i64 %17, i64* @prngseed, align 8
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i64, i64* @prngseed, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 0x41DFFFFFFFC00000
  ret double %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prng_set_seed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  store i64 %4, i64* @prngseed, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
