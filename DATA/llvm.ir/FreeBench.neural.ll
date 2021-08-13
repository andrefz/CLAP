; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@nmode = dso_local global i32 2, align 4
@NNWIDTH = common dso_local global i32 0, align 4
@NNHEIGHT = common dso_local global i32 0, align 4
@NUMPATS = common dso_local global i32 0, align 4
@NNTOT = common dso_local global i32 0, align 4
@vnames = common dso_local global i8* null, align 8
@stored = common dso_local global i32* null, align 8
@Tmatrix = common dso_local global float** null, align 8
@vectors = common dso_local global i32** null, align 8
@newvectors = common dso_local global i32** null, align 8
@generators = common dso_local global i32** null, align 8
@randnum = common dso_local global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Wrong number of arguments, 1 needed, %d specified.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"USAGE: %s <datafile>\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ABORT: Could not read datafile %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Matrix size is %dx%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ABORT: Out of memory\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Checking hamming distances...\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Generating T matrix...\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Delta learning...\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Store check...\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Pattern %d stored.\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Pattern %d: hamming distance=%-.2d.\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Warning! No stable state reached after 500 iterations!\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"Warning! No stable state reached after 500 iterations, aborting!\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\0Ac-cont, b-break: \00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"WARNING: %d vectors have a hamming distance <2, please modify input vectors!\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Vectors read from file!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %23)
  call void @exit(i32 1) #6
  unreachable

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call %struct._IO_FILE* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** %6, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %36)
  call void @exit(i32 1) #6
  unreachable

38:                                               ; preds = %25
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %41 = call i8* @fgets(i8* %39, i32 99, %struct._IO_FILE* %40)
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %43 = call i32 @atoi(i8* %42) #7
  store i32 %43, i32* @NNWIDTH, align 4
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %46 = call i8* @fgets(i8* %44, i32 99, %struct._IO_FILE* %45)
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %48 = call i32 @atoi(i8* %47) #7
  store i32 %48, i32* @NNHEIGHT, align 4
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %51 = call i8* @fgets(i8* %49, i32 99, %struct._IO_FILE* %50)
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %53 = call i32 @atoi(i8* %52) #7
  store i32 %53, i32* @NUMPATS, align 4
  %54 = load i32, i32* @NNWIDTH, align 4
  %55 = load i32, i32* @NNHEIGHT, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* @NNTOT, align 4
  %57 = load i32, i32* @NNWIDTH, align 4
  %58 = load i32, i32* @NNHEIGHT, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* @NUMPATS, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 1, %61
  %63 = call noalias i8* @malloc(i64 %62) #8
  store i8* %63, i8** @vnames, align 8
  %64 = load i32, i32* @NUMPATS, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = call noalias i8* @malloc(i64 %66) #8
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** @stored, align 8
  %69 = load i8*, i8** @vnames, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %38
  %72 = load i32*, i32** @stored, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71, %38
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

77:                                               ; preds = %71
  %78 = load i32, i32* @NNTOT, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 8, %79
  %81 = call noalias i8* @malloc(i64 %80) #8
  %82 = bitcast i8* %81 to float**
  store float** %82, float*** @Tmatrix, align 8
  %83 = load float**, float*** @Tmatrix, align 8
  %84 = icmp ne float** %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

88:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %113, %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @NNTOT, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load i32, i32* @NNTOT, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 4, %95
  %97 = call noalias i8* @malloc(i64 %96) #8
  %98 = bitcast i8* %97 to float*
  %99 = load float**, float*** @Tmatrix, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float*, float** %99, i64 %101
  store float* %98, float** %102, align 8
  %103 = load float**, float*** @Tmatrix, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float*, float** %103, i64 %105
  %107 = load float*, float** %106, align 8
  %108 = icmp ne float* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %93
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %89

116:                                              ; preds = %89
  %117 = load i32, i32* @NUMPATS, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 8, %118
  %120 = call noalias i8* @malloc(i64 %119) #8
  %121 = bitcast i8* %120 to i32**
  store i32** %121, i32*** @vectors, align 8
  %122 = load i32, i32* @NUMPATS, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 8, %123
  %125 = call noalias i8* @malloc(i64 %124) #8
  %126 = bitcast i8* %125 to i32**
  store i32** %126, i32*** @newvectors, align 8
  %127 = load i32, i32* @NUMPATS, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 8, %128
  %130 = call noalias i8* @malloc(i64 %129) #8
  %131 = bitcast i8* %130 to i32**
  store i32** %131, i32*** @generators, align 8
  %132 = load i32**, i32*** @vectors, align 8
  %133 = icmp ne i32** %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %116
  %135 = load i32**, i32*** @newvectors, align 8
  %136 = icmp ne i32** %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32**, i32*** @generators, align 8
  %139 = icmp ne i32** %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %137, %134, %116
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

143:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %200, %143
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @NUMPATS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %203

148:                                              ; preds = %144
  %149 = load i32, i32* @NNTOT, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 4, %150
  %152 = call noalias i8* @malloc(i64 %151) #8
  %153 = bitcast i8* %152 to i32*
  %154 = load i32**, i32*** @vectors, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  store i32* %153, i32** %157, align 8
  %158 = load i32, i32* @NNTOT, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 4, %159
  %161 = call noalias i8* @malloc(i64 %160) #8
  %162 = bitcast i8* %161 to i32*
  %163 = load i32**, i32*** @newvectors, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  store i32* %162, i32** %166, align 8
  %167 = load i32, i32* @NNTOT, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 4, %168
  %170 = call noalias i8* @malloc(i64 %169) #8
  %171 = bitcast i8* %170 to i32*
  %172 = load i32**, i32*** @generators, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  store i32* %171, i32** %175, align 8
  %176 = load i32**, i32*** @vectors, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %196

182:                                              ; preds = %148
  %183 = load i32**, i32*** @newvectors, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load i32**, i32*** @generators, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %189, %182, %148
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %144

203:                                              ; preds = %144
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @readvector(%struct._IO_FILE* %204)
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  call void @checkham()
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  call void @generateT(i32 1)
  store i32 1, i32* @nmode, align 4
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  call void @delta(float 5.000000e-01)
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  call void @storecheck()
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: noinline nounwind uwtable
define internal void @readvector(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %8 = load i32, i32* @NNWIDTH, align 4
  %9 = add nsw i32 %8, 2
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1
  %12 = call noalias i8* @malloc(i64 %11) #8
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %74, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NUMPATS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** @vnames, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %70, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NNHEIGHT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %66, %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NNWIDTH, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 88
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 -1
  %56 = load i32**, i32*** @vectors, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %55, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %42

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %34

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %19

77:                                               ; preds = %19
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %79 = call i32 @fclose(%struct._IO_FILE* %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @checkham() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %55, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NUMPATS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %58

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %51, %9
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @NUMPATS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = load i32**, i32*** @vectors, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32**, i32*** @vectors, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @hamming(i32* %21, i32* %26, i32 1)
  store i32 %27, i32* %3, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32**, i32*** @vectors, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32**, i32*** @vectors, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @hamming(i32* %38, i32* %43, i32 -1)
  store i32 %44, i32* %3, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %12

54:                                               ; preds = %12
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %5

58:                                               ; preds = %5
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @generateT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i8 48, i8* %6, align 1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NNTOT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NNTOT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load float**, float*** @Tmatrix, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float*, float** %17, i64 %19
  %21 = load float*, float** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  store float 0.000000e+00, float* %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %112, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %115

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %95, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @NNTOT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %91, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @NNTOT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %94

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load float**, float*** @Tmatrix, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float*, float** %51, i64 %53
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float 0.000000e+00, float* %58, align 4
  br label %90

59:                                               ; preds = %46
  %60 = load i32**, i32*** @vectors, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32**, i32*** @vectors, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %68, %77
  %79 = sitofp i32 %78 to float
  %80 = load float**, float*** @Tmatrix, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float*, float** %80, i64 %82
  %84 = load float*, float** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fadd float %88, %79
  store float %89, float* %87, align 4
  br label %90

90:                                               ; preds = %59, %50
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %42

94:                                               ; preds = %42
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %37

98:                                               ; preds = %37
  %99 = load i32, i32* %2, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  call void @storecheck()
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %103 = call i32 @getchar()
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %6, align 1
  %105 = call i32 @getchar()
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i8, i8* %6, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 98
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %115

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %33

115:                                              ; preds = %110, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @delta(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  store float %0, float* %2, align 4
  %9 = load i32, i32* @NNTOT, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = call noalias i8* @malloc(i64 %11) #8
  %13 = bitcast i8* %12 to float*
  store float* %13, float** %7, align 8
  %14 = load float*, float** %7, align 8
  %15 = icmp ne float* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %154, %19
  store i32 1, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %150, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @NUMPATS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %153

25:                                               ; preds = %21
  %26 = load i32, i32* @nmode, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32**, i32*** @vectors, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** @newvectors, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @run(i32* %33, i32* %38)
  br label %52

40:                                               ; preds = %25
  %41 = load i32**, i32*** @vectors, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32**, i32*** @newvectors, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @runcont(i32* %45, i32* %50)
  br label %52

52:                                               ; preds = %40, %28
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @NNTOT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load i32**, i32*** @vectors, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32**, i32*** @newvectors, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %66, %75
  %77 = sitofp i32 %76 to float
  %78 = load float, float* %2, align 4
  %79 = fmul float %77, %78
  %80 = load float*, float** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float %79, float* %83, align 4
  %84 = fpext float %79 to double
  %85 = fcmp une double %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %53

91:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %146, %91
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @NNTOT, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %149

96:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %142, %96
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @NNTOT, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %97
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load float**, float*** @Tmatrix, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float*, float** %106, i64 %108
  %110 = load float*, float** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %110, i64 %112
  store float 0.000000e+00, float* %113, align 4
  br label %141

114:                                              ; preds = %101
  %115 = load float*, float** %7, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load i32**, i32*** @vectors, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sitofp i32 %128 to float
  %130 = fmul float %119, %129
  %131 = load float**, float*** @Tmatrix, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float*, float** %131, i64 %133
  %135 = load float*, float** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fadd float %139, %130
  store float %140, float* %138, align 4
  br label %141

141:                                              ; preds = %114, %105
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %97

145:                                              ; preds = %97
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %92

149:                                              ; preds = %92
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %21

153:                                              ; preds = %21
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  br i1 %157, label %20, label %158

158:                                              ; preds = %154
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @storecheck() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @NUMPATS, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = call noalias i8* @malloc(i64 %6) #8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @NUMPATS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load i32, i32* @nmode, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i32**, i32*** @vectors, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32**, i32*** @newvectors, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @run(i32* %27, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %54

38:                                               ; preds = %19
  %39 = load i32**, i32*** @vectors, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32**, i32*** @newvectors, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @runcont(i32* %43, i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %38, %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %15

58:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %92, %58
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @NUMPATS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = load i32**, i32*** @vectors, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32**, i32*** @newvectors, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @hamming(i32* %68, i32* %73, i32 1)
  store i32 %74, i32* %2, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %63
  %77 = load i32*, i32** @stored, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %1, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %81)
  br label %91

83:                                               ; preds = %63
  %84 = load i32*, i32** @stored, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %59

95:                                               ; preds = %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @run(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @NNTOT, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call noalias i8* @malloc(i64 %14) #8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* @NNTOT, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = call noalias i8* @malloc(i64 %19) #8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %2
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NNTOT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %31

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %167, %48
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 500
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  br i1 %56, label %57, label %170

57:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %100, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @NNTOT, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %88, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @NNTOT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load float**, float*** @Tmatrix, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float*, float** %68, i64 %70
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to float
  %83 = fmul float %76, %82
  %84 = load i32, i32* %6, align 4
  %85 = sitofp i32 %84 to float
  %86 = fadd float %85, %83
  %87 = fptosi float %86 to i32
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %63

91:                                               ; preds = %63
  %92 = load i32, i32* %6, align 4
  %93 = icmp sge i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 -1
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %58

103:                                              ; preds = %58
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %126, %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @NNTOT, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %115, %108
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %104

129:                                              ; preds = %104
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @hamming(i32* %130, i32* %131, i32 1)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 1, i32* %11, align 4
  br label %167

135:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %154, %135
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @NNTOT, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %136
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %145, %150
  br label %152

152:                                              ; preds = %140, %136
  %153 = phi i1 [ false, %136 ], [ %151, %140 ]
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %136

157:                                              ; preds = %152
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %157, %134
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %49

170:                                              ; preds = %55
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 500
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %170
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %190, %175
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @NNTOT, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %176
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %180
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %176

193:                                              ; preds = %176
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @runcont(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @NNTOT, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = call noalias i8* @malloc(i64 %16) #8
  %18 = bitcast i8* %17 to float*
  store float* %18, float** %9, align 8
  %19 = load i32, i32* @NNTOT, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = call noalias i8* @malloc(i64 %21) #8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load float*, float** %9, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %2
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NNTOT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = sitofp i32 %42 to float
  %48 = load float*, float** %9, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  store float %47, float* %51, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %271, %55
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 500
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br i1 %63, label %64, label %274

64:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %113, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NNTOT, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %65
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %93, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @NNTOT, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load float**, float*** @Tmatrix, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float*, float** %75, i64 %77
  %79 = load float*, float** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sitofp i32 %88 to float
  %90 = fmul float %83, %89
  %91 = load float, float* %10, align 4
  %92 = fadd float %91, %90
  store float %92, float* %10, align 4
  br label %93

93:                                               ; preds = %74
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %70

96:                                               ; preds = %70
  %97 = load float, float* %10, align 4
  %98 = fpext float %97 to double
  %99 = fmul double -1.000000e+00, %98
  %100 = call double @myexp(double %99)
  %101 = fsub double 1.000000e+00, %100
  %102 = load float, float* %10, align 4
  %103 = fpext float %102 to double
  %104 = fmul double -1.000000e+00, %103
  %105 = call double @myexp(double %104)
  %106 = fadd double 1.000000e+00, %105
  %107 = fdiv double %101, %106
  %108 = fptrunc double %107 to float
  %109 = load float*, float** %9, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  store float %108, float* %112, align 4
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %65

116:                                              ; preds = %65
  br label %117

117:                                              ; preds = %190, %116
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 50
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi i1 [ false, %117 ], [ %122, %120 ]
  br i1 %124, label %125, label %193

125:                                              ; preds = %123
  store i32 1, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %187, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @NNTOT, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %190

130:                                              ; preds = %126
  %131 = load float*, float** %9, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = call double @llvm.fabs.f64(double %136)
  %138 = fcmp olt double %137, 0x3FE6666666666666
  br i1 %138, label %139, label %186

139:                                              ; preds = %130
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %162, %139
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @NNTOT, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %140
  %145 = load float**, float*** @Tmatrix, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float*, float** %145, i64 %147
  %149 = load float*, float** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  %153 = load float, float* %152, align 4
  %154 = load float*, float** %9, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %154, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fmul float %153, %158
  %160 = load float, float* %10, align 4
  %161 = fadd float %160, %159
  store float %161, float* %10, align 4
  br label %162

162:                                              ; preds = %144
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %140

165:                                              ; preds = %140
  %166 = load float, float* %10, align 4
  %167 = fpext float %166 to double
  %168 = fmul double -1.000000e+00, %167
  %169 = call double @myexp(double %168)
  %170 = fsub double 1.000000e+00, %169
  %171 = load float, float* %10, align 4
  %172 = fpext float %171 to double
  %173 = fmul double -1.000000e+00, %172
  %174 = call double @myexp(double %173)
  %175 = fadd double 1.000000e+00, %174
  %176 = fdiv double %170, %175
  %177 = fptrunc double %176 to float
  %178 = load float*, float** %9, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  store float %177, float* %181, align 4
  %182 = fpext float %177 to double
  %183 = fcmp olt double %182, 0x3FE6666666666666
  br i1 %183, label %184, label %185

184:                                              ; preds = %165
  store i32 0, i32* %13, align 4
  br label %185

185:                                              ; preds = %184, %165
  br label %186

186:                                              ; preds = %185, %130
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %126

190:                                              ; preds = %126
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %117

193:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %211, %193
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @NNTOT, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %194
  %199 = load float*, float** %9, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fcmp ogt float %203, 0.000000e+00
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1, i32 -1
  %207 = load i32*, i32** %11, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %206, i32* %210, align 4
  br label %211

211:                                              ; preds = %198
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %194

214:                                              ; preds = %194
  %215 = load i32*, i32** %4, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = call i32 @hamming(i32* %215, i32* %216, i32 1)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 1, i32* %12, align 4
  br label %271

220:                                              ; preds = %214
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %239, %220
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* @NNTOT, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %221
  %226 = load i32*, i32** %4, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %11, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %230, %235
  br label %237

237:                                              ; preds = %225, %221
  %238 = phi i1 [ false, %221 ], [ %236, %225 ]
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %5, align 4
  br label %221

242:                                              ; preds = %237
  %243 = load i32*, i32** %11, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %247, i32* %251, align 4
  store i32 0, i32* %5, align 4
  br label %252

252:                                              ; preds = %267, %242
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @NNTOT, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %270

256:                                              ; preds = %252
  %257 = load i32*, i32** %4, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sitofp i32 %261 to float
  %263 = load float*, float** %9, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %263, i64 %265
  store float %262, float* %266, align 4
  br label %267

267:                                              ; preds = %256
  %268 = load i32, i32* %5, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %5, align 4
  br label %252

270:                                              ; preds = %252
  br label %271

271:                                              ; preds = %270, %219
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  br label %56

274:                                              ; preds = %62
  %275 = load i32, i32* %7, align 4
  %276 = icmp eq i32 %275, 500
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  br label %279

279:                                              ; preds = %277, %274
  %280 = load i32, i32* %7, align 4
  ret i32 %280
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @hamming(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %31, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NNTOT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = icmp ne i32 %18, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define internal double @myexp(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fcmp ogt double %3, 2.000000e+02
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store double 2.000000e+02, double* %2, align 8
  br label %6

6:                                                ; preds = %5, %1
  %7 = load double, double* %2, align 8
  %8 = fcmp olt double %7, -2.000000e+02
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store double -2.000000e+02, double* %2, align 8
  br label %10

10:                                               ; preds = %9, %6
  %11 = load double, double* %2, align 8
  %12 = call double @exp(double %11) #8
  ret double %12
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind
declare dso_local double @exp(double) #4

declare dso_local i32 @getchar() #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
