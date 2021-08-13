; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NODE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ONE = type { i32, %struct.ONE* }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@low = dso_local global %struct.NODE* null, align 8
@most = dso_local global %struct.NODE* null, align 8
@row = common dso_local global %struct.ONE** null, align 8
@z = common dso_local global %struct.ONE* null, align 8
@LIST = common dso_local global %struct.NODE** null, align 8
@rusage = common dso_local global %struct.rusage zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"Output/sim.res\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Can not open Output/sim.res\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tob.38-44\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"liv.42-48\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"specified 0 alignments\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@name1 = internal global i8* null, align 8
@name2 = internal global i8* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"argument %d has improper form\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"options are M, I, V, O and E.\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\09\09SIM output with parameters:\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\09\09M = %g, I = %g, V = %g\0A\09\09O = %g, E = %g\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  Run Line: %s %s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"#######################################################\0A\00", align 1
@CC = internal global i32* null, align 8
@DD = internal global i32* null, align 8
@RR = internal global i32* null, align 8
@SS = internal global i32* null, align 8
@EE = internal global i32* null, align 8
@FF = internal global i32* null, align 8
@HH = internal global i32* null, align 8
@WW = internal global i32* null, align 8
@II = internal global i32* null, align 8
@JJ = internal global i32* null, align 8
@XX = internal global i32* null, align 8
@YY = internal global i32* null, align 8
@v = internal global [256 x i32]* null, align 8
@q = internal global i32 0, align 4
@r = internal global i32 0, align 4
@qr = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"                 Upper Sequence : %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"                         Length : %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"                 Lower Sequence : %s\0A\00", align 1
@min = internal global i32 0, align 4
@numnode = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"The number of alignments computed is too large\00", align 1
@m1 = internal global i32 0, align 4
@mm = internal global i32 0, align 4
@n1 = internal global i32 0, align 4
@nn = internal global i32 0, align 4
@rl = internal global i32 0, align 4
@cl = internal global i32 0, align 4
@I = internal global i32 0, align 4
@J = internal global i32 0, align 4
@sapp = internal global i32* null, align 8
@last = internal global i32 0, align 4
@al_len = internal global i32 0, align 4
@no_mat = internal global i32 0, align 4
@no_mis = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [60 x i8] c"\0A*********************************************************\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"      Number %d Local Alignment\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"      Similarity Score : %g\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"      Match Percentage : %d%%\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"      Number of Matches : %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"      Number of Mismatches : %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"      Total Length of Gaps : %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"      Begins at (%d, %d) and Ends at (%d, %d)\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@flag = internal global i16 0, align 2
@tt = internal global i16 0, align 2
@ALINE = internal global [51 x i8] zeroinitializer, align 16
@BLINE = internal global [51 x i8] zeroinitializer, align 16
@CLINE = internal global [51 x i8] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"\0A%5d \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"    .    :\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"    .\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"\0A%5d %s\0A      %s\0A%5d %s\0A\00", align 1
@zero = internal global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [16 x i8] c"Cannot open %s.\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x [256 x i32]], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct._IO_FILE*, align 8
  %24 = alloca %struct._IO_FILE*, align 8
  %25 = alloca %struct._IO_FILE*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** %25, align 8
  %30 = icmp eq %struct._IO_FILE* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

33:                                               ; preds = %2
  %34 = call double @dtime()
  store double %34, double* %15, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %27, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %28, align 8
  br label %48

38:                                               ; preds = %33
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %26, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %27, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %28, align 8
  br label %48

48:                                               ; preds = %38, %37
  %49 = load i8*, i8** %26, align 8
  %50 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %8) #6
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i8*, i8** %27, align 8
  %57 = call %struct._IO_FILE* @ckopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %57, %struct._IO_FILE** %24, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %68, %55
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %60 = call i32 @getc(%struct._IO_FILE* %59)
  store i32 %60, i32* %11, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %58

69:                                               ; preds = %58
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %71 = call i32 @fclose(%struct._IO_FILE* %70)
  %72 = load i8*, i8** %27, align 8
  store i8* %72, i8** @name1, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 1
  %77 = call noalias i8* @malloc(i64 %76) #6
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %27, align 8
  %79 = call %struct._IO_FILE* @ckopen(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %79, %struct._IO_FILE** %24, align 8
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %95, %69
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %82 = call i32 @getc(%struct._IO_FILE* %81)
  store i32 %82, i32* %11, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 10
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 %89, i8* %94, align 1
  br label %95

95:                                               ; preds = %87, %84
  br label %80

96:                                               ; preds = %80
  %97 = load i8*, i8** %27, align 8
  %98 = load i8*, i8** %28, align 8
  %99 = call i32 @strcmp(i8* %97, i8* %98) #7
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %143

101:                                              ; preds = %96
  %102 = load i8*, i8** %28, align 8
  %103 = call %struct._IO_FILE* @ckopen(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %103, %struct._IO_FILE** %23, align 8
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %114, %101
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %106 = call i32 @getc(%struct._IO_FILE* %105)
  store i32 %106, i32* %11, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 10
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %104

115:                                              ; preds = %104
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %117 = call i32 @fclose(%struct._IO_FILE* %116)
  %118 = load i8*, i8** %28, align 8
  store i8* %118, i8** @name2, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 1
  %123 = call noalias i8* @malloc(i64 %122) #6
  store i8* %123, i8** %10, align 8
  %124 = load i8*, i8** %28, align 8
  %125 = call %struct._IO_FILE* @ckopen(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %125, %struct._IO_FILE** %23, align 8
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %141, %115
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %128 = call i32 @getc(%struct._IO_FILE* %127)
  store i32 %128, i32* %11, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 10
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 %135, i8* %140, align 1
  br label %141

141:                                              ; preds = %133, %130
  br label %126

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142, %96
  store double 1.000000e+00, double* %17, align 8
  store double -1.000000e+00, double* %18, align 8
  store double -1.000000e+00, double* %19, align 8
  store double 6.000000e+00, double* %20, align 8
  store double 2.000000e-01, double* %21, align 8
  br label %144

144:                                              ; preds = %189, %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %4, align 4
  %147 = icmp sgt i32 %146, 3
  br i1 %147, label %148, label %190

148:                                              ; preds = %144
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 61
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (i8*, i32, ...) bitcast (i32 (i8*, i8*)* @fatalf to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %158, %148
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = call double @atof(i8* %167) #7
  store double %168, double* %22, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  switch i32 %176, label %187 [
    i32 77, label %177
    i32 73, label %179
    i32 86, label %181
    i32 79, label %183
    i32 69, label %185
  ]

177:                                              ; preds = %161
  %178 = load double, double* %22, align 8
  store double %178, double* %17, align 8
  br label %189

179:                                              ; preds = %161
  %180 = load double, double* %22, align 8
  store double %180, double* %18, align 8
  br label %189

181:                                              ; preds = %161
  %182 = load double, double* %22, align 8
  store double %182, double* %19, align 8
  br label %189

183:                                              ; preds = %161
  %184 = load double, double* %22, align 8
  store double %184, double* %20, align 8
  br label %189

185:                                              ; preds = %161
  %186 = load double, double* %22, align 8
  store double %186, double* %21, align 8
  br label %189

187:                                              ; preds = %161
  %188 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %185, %183, %181, %179, %177
  br label %144

190:                                              ; preds = %144
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %192 = load double, double* %17, align 8
  %193 = load double, double* %18, align 8
  %194 = load double, double* %19, align 8
  %195 = load double, double* %20, align 8
  %196 = load double, double* %21, align 8
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), double %192, double %193, double %194, double %195, double %196)
  %198 = load double, double* %17, align 8
  %199 = fmul double 1.000000e+01, %198
  %200 = fcmp ogt double %199, 0.000000e+00
  br i1 %200, label %201, label %205

201:                                              ; preds = %190
  %202 = load double, double* %17, align 8
  %203 = fmul double 1.000000e+01, %202
  %204 = fadd double %203, 5.000000e-01
  br label %209

205:                                              ; preds = %190
  %206 = load double, double* %17, align 8
  %207 = fmul double 1.000000e+01, %206
  %208 = fsub double %207, 5.000000e-01
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi double [ %204, %201 ], [ %208, %205 ]
  %211 = fptosi double %210 to i32
  %212 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 84
  %213 = getelementptr inbounds [256 x i32], [256 x i32]* %212, i64 0, i64 84
  store i32 %211, i32* %213, align 16
  %214 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 71
  %215 = getelementptr inbounds [256 x i32], [256 x i32]* %214, i64 0, i64 71
  store i32 %211, i32* %215, align 4
  %216 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 67
  %217 = getelementptr inbounds [256 x i32], [256 x i32]* %216, i64 0, i64 67
  store i32 %211, i32* %217, align 4
  %218 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 65
  %219 = getelementptr inbounds [256 x i32], [256 x i32]* %218, i64 0, i64 65
  store i32 %211, i32* %219, align 4
  %220 = load double, double* %18, align 8
  %221 = fmul double 1.000000e+01, %220
  %222 = fcmp ogt double %221, 0.000000e+00
  br i1 %222, label %223, label %227

223:                                              ; preds = %209
  %224 = load double, double* %18, align 8
  %225 = fmul double 1.000000e+01, %224
  %226 = fadd double %225, 5.000000e-01
  br label %231

227:                                              ; preds = %209
  %228 = load double, double* %18, align 8
  %229 = fmul double 1.000000e+01, %228
  %230 = fsub double %229, 5.000000e-01
  br label %231

231:                                              ; preds = %227, %223
  %232 = phi double [ %226, %223 ], [ %230, %227 ]
  %233 = fptosi double %232 to i32
  %234 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 84
  %235 = getelementptr inbounds [256 x i32], [256 x i32]* %234, i64 0, i64 67
  store i32 %233, i32* %235, align 4
  %236 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 67
  %237 = getelementptr inbounds [256 x i32], [256 x i32]* %236, i64 0, i64 84
  store i32 %233, i32* %237, align 16
  %238 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 71
  %239 = getelementptr inbounds [256 x i32], [256 x i32]* %238, i64 0, i64 65
  store i32 %233, i32* %239, align 4
  %240 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 65
  %241 = getelementptr inbounds [256 x i32], [256 x i32]* %240, i64 0, i64 71
  store i32 %233, i32* %241, align 4
  %242 = load double, double* %19, align 8
  %243 = fmul double 1.000000e+01, %242
  %244 = fcmp ogt double %243, 0.000000e+00
  br i1 %244, label %245, label %249

245:                                              ; preds = %231
  %246 = load double, double* %19, align 8
  %247 = fmul double 1.000000e+01, %246
  %248 = fadd double %247, 5.000000e-01
  br label %253

249:                                              ; preds = %231
  %250 = load double, double* %19, align 8
  %251 = fmul double 1.000000e+01, %250
  %252 = fsub double %251, 5.000000e-01
  br label %253

253:                                              ; preds = %249, %245
  %254 = phi double [ %248, %245 ], [ %252, %249 ]
  %255 = fptosi double %254 to i32
  %256 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 84
  %257 = getelementptr inbounds [256 x i32], [256 x i32]* %256, i64 0, i64 71
  store i32 %255, i32* %257, align 4
  %258 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 84
  %259 = getelementptr inbounds [256 x i32], [256 x i32]* %258, i64 0, i64 65
  store i32 %255, i32* %259, align 4
  %260 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 71
  %261 = getelementptr inbounds [256 x i32], [256 x i32]* %260, i64 0, i64 84
  store i32 %255, i32* %261, align 16
  %262 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 71
  %263 = getelementptr inbounds [256 x i32], [256 x i32]* %262, i64 0, i64 67
  store i32 %255, i32* %263, align 4
  %264 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 67
  %265 = getelementptr inbounds [256 x i32], [256 x i32]* %264, i64 0, i64 71
  store i32 %255, i32* %265, align 4
  %266 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 67
  %267 = getelementptr inbounds [256 x i32], [256 x i32]* %266, i64 0, i64 65
  store i32 %255, i32* %267, align 4
  %268 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 65
  %269 = getelementptr inbounds [256 x i32], [256 x i32]* %268, i64 0, i64 84
  store i32 %255, i32* %269, align 16
  %270 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 65
  %271 = getelementptr inbounds [256 x i32], [256 x i32]* %270, i64 0, i64 67
  store i32 %255, i32* %271, align 4
  %272 = load double, double* %20, align 8
  %273 = fmul double 1.000000e+01, %272
  %274 = fcmp ogt double %273, 0.000000e+00
  br i1 %274, label %275, label %279

275:                                              ; preds = %253
  %276 = load double, double* %20, align 8
  %277 = fmul double 1.000000e+01, %276
  %278 = fadd double %277, 5.000000e-01
  br label %283

279:                                              ; preds = %253
  %280 = load double, double* %20, align 8
  %281 = fmul double 1.000000e+01, %280
  %282 = fsub double %281, 5.000000e-01
  br label %283

283:                                              ; preds = %279, %275
  %284 = phi double [ %278, %275 ], [ %282, %279 ]
  %285 = fptosi double %284 to i32
  store i32 %285, i32* %13, align 4
  %286 = load double, double* %21, align 8
  %287 = fmul double 1.000000e+01, %286
  %288 = fcmp ogt double %287, 0.000000e+00
  br i1 %288, label %289, label %293

289:                                              ; preds = %283
  %290 = load double, double* %21, align 8
  %291 = fmul double 1.000000e+01, %290
  %292 = fadd double %291, 5.000000e-01
  br label %297

293:                                              ; preds = %283
  %294 = load double, double* %21, align 8
  %295 = fmul double 1.000000e+01, %294
  %296 = fsub double %295, 5.000000e-01
  br label %297

297:                                              ; preds = %293, %289
  %298 = phi double [ %292, %289 ], [ %296, %293 ]
  %299 = fptosi double %298 to i32
  store i32 %299, i32* %14, align 4
  %300 = load i8*, i8** %27, align 8
  %301 = load i8*, i8** %28, align 8
  %302 = call i32 @strcmp(i8* %300, i8* %301) #7
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %314

304:                                              ; preds = %297
  %305 = load i8*, i8** %9, align 8
  %306 = load i8*, i8** %10, align 8
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %8, align 4
  %310 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 0
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %14, align 4
  %313 = call i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...) bitcast (i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i32)* @SIM to i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...)*)(i8* %305, i8* %306, i32 %307, i32 %308, i32 %309, [256 x i32]* %310, i32 %311, i32 %312, i64 2)
  br label %324

314:                                              ; preds = %297
  %315 = load i8*, i8** %9, align 8
  %316 = load i8*, i8** %9, align 8
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %8, align 4
  %320 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %12, i64 0, i64 0
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* %14, align 4
  %323 = call i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...) bitcast (i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i32)* @SIM to i32 (i8*, i8*, i32, i32, i32, [256 x i32]*, i32, i32, i64, ...)*)(i8* %315, i8* %316, i32 %317, i32 %318, i32 %319, [256 x i32]* %320, i32 %321, i32 %322, i64 1)
  br label %324

324:                                              ; preds = %314, %304
  %325 = call double @dtime()
  %326 = load double, double* %15, align 8
  %327 = fsub double %325, %326
  store double %327, double* %16, align 8
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %329 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %331 = load i8*, i8** %26, align 8
  %332 = load i8*, i8** %27, align 8
  %333 = load i8*, i8** %28, align 8
  %334 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %331, i8* %332, i8* %333)
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0))
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %338 = call i32 @fclose(%struct._IO_FILE* %337)
  call void @exit(i32 0) #5
  unreachable
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @dtime() #0 {
  %1 = alloca double, align 8
  %2 = call i32 @getrusage(i32 0, %struct.rusage* @rusage) #6
  %3 = load i64, i64* getelementptr inbounds (%struct.rusage, %struct.rusage* @rusage, i32 0, i32 0, i32 0), align 8
  %4 = sitofp i64 %3 to double
  store double %4, double* %1, align 8
  %5 = load double, double* %1, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.rusage, %struct.rusage* @rusage, i32 0, i32 0, i32 1), align 8
  %7 = sitofp i64 %6 to double
  %8 = fmul double %7, 0x3EB0C6F7A0B5ED8D
  %9 = fadd double %5, %8
  store double %9, double* %1, align 8
  %10 = load double, double* %1, align 8
  ret double %10
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fatal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %4)
  call void @exit(i32 1) #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._IO_FILE* @ckopen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct._IO_FILE* @fopen(i8* %6, i8* %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %5, align 8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @fatalf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  ret %struct._IO_FILE* %14
}

declare dso_local i32 @getc(%struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fatalf(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %6, i8* %7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 @putc(i32 10, %struct._IO_FILE* %9)
  call void @exit(i32 1) #5
  unreachable
}

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SIM(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, [256 x i32]* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i32]*, align 8
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
  %28 = alloca i32*, align 8
  %29 = alloca %struct.NODE*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store [256 x i32]* %5, [256 x i32]** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %27, align 4
  %35 = load i32, i32* %27, align 4
  %36 = sext i32 %35 to i64
  %37 = call noalias i8* @malloc(i64 %36) #6
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** @CC, align 8
  %39 = load i32, i32* %27, align 4
  %40 = sext i32 %39 to i64
  %41 = call noalias i8* @malloc(i64 %40) #6
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** @DD, align 8
  %43 = load i32, i32* %27, align 4
  %44 = sext i32 %43 to i64
  %45 = call noalias i8* @malloc(i64 %44) #6
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** @RR, align 8
  %47 = load i32, i32* %27, align 4
  %48 = sext i32 %47 to i64
  %49 = call noalias i8* @malloc(i64 %48) #6
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** @SS, align 8
  %51 = load i32, i32* %27, align 4
  %52 = sext i32 %51 to i64
  %53 = call noalias i8* @malloc(i64 %52) #6
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** @EE, align 8
  %55 = load i32, i32* %27, align 4
  %56 = sext i32 %55 to i64
  %57 = call noalias i8* @malloc(i64 %56) #6
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** @FF, align 8
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %26, align 4
  %65 = sext i32 %64 to i64
  %66 = call noalias i8* @malloc(i64 %65) #6
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** @HH, align 8
  %68 = load i32, i32* %26, align 4
  %69 = sext i32 %68 to i64
  %70 = call noalias i8* @malloc(i64 %69) #6
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** @WW, align 8
  %72 = load i32, i32* %26, align 4
  %73 = sext i32 %72 to i64
  %74 = call noalias i8* @malloc(i64 %73) #6
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** @II, align 8
  %76 = load i32, i32* %26, align 4
  %77 = sext i32 %76 to i64
  %78 = call noalias i8* @malloc(i64 %77) #6
  %79 = bitcast i8* %78 to i32*
  store i32* %79, i32** @JJ, align 8
  %80 = load i32, i32* %26, align 4
  %81 = sext i32 %80 to i64
  %82 = call noalias i8* @malloc(i64 %81) #6
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** @XX, align 8
  %84 = load i32, i32* %26, align 4
  %85 = sext i32 %84 to i64
  %86 = call noalias i8* @malloc(i64 %85) #6
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** @YY, align 8
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %27, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = call noalias i8* @malloc(i64 %91) #6
  %93 = bitcast i8* %92 to i32*
  store i32* %93, i32** %28, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = call noalias i8* @malloc(i64 %97) #6
  %99 = bitcast i8* %98 to %struct.ONE**
  store %struct.ONE** %99, %struct.ONE*** @row, align 8
  store i32 1, i32* %26, align 4
  br label %100

100:                                              ; preds = %125, %9
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = load i32, i32* %19, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %109 = load i32, i32* %26, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ONE*, %struct.ONE** %108, i64 %110
  store %struct.ONE* null, %struct.ONE** %111, align 8
  br label %124

112:                                              ; preds = %104
  %113 = call noalias i8* @malloc(i64 16) #6
  %114 = bitcast i8* %113 to %struct.ONE*
  store %struct.ONE* %114, %struct.ONE** @z, align 8
  %115 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %116 = load i32, i32* %26, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ONE*, %struct.ONE** %115, i64 %117
  store %struct.ONE* %114, %struct.ONE** %118, align 8
  %119 = load i32, i32* %26, align 4
  %120 = load %struct.ONE*, %struct.ONE** @z, align 8
  %121 = getelementptr inbounds %struct.ONE, %struct.ONE* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ONE*, %struct.ONE** @z, align 8
  %123 = getelementptr inbounds %struct.ONE, %struct.ONE* %122, i32 0, i32 1
  store %struct.ONE* null, %struct.ONE** %123, align 8
  br label %124

124:                                              ; preds = %112, %107
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %26, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %26, align 4
  br label %100

128:                                              ; preds = %100
  %129 = load [256 x i32]*, [256 x i32]** %16, align 8
  store [256 x i32]* %129, [256 x i32]** @v, align 8
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* @q, align 4
  %131 = load i32, i32* %18, align 4
  store i32 %131, i32* @r, align 4
  %132 = load i32, i32* @q, align 4
  %133 = load i32, i32* @r, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* @qr, align 4
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 8
  %138 = call noalias i8* @malloc(i64 %137) #6
  %139 = bitcast i8* %138 to %struct.NODE**
  store %struct.NODE** %139, %struct.NODE*** @LIST, align 8
  store i32 0, i32* %26, align 4
  br label %140

140:                                              ; preds = %151, %128
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = call noalias i8* @malloc(i64 36) #6
  %146 = bitcast i8* %145 to %struct.NODE*
  %147 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %148 = load i32, i32* %26, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.NODE*, %struct.NODE** %147, i64 %149
  store %struct.NODE* %146, %struct.NODE** %150, align 8
  br label %151

151:                                              ; preds = %144
  %152 = load i32, i32* %26, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %26, align 4
  br label %140

154:                                              ; preds = %140
  %155 = load i8*, i8** @name1, align 8
  %156 = call i8* @mybasename(i8* %155)
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8* %156)
  %158 = load i32, i32* %13, align 4
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %158)
  %160 = load i8*, i8** @name2, align 8
  %161 = call i8* @mybasename(i8* %160)
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* %161)
  %163 = load i32, i32* %14, align 4
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %163)
  store i32 0, i32* @min, align 4
  store i32 0, i32* @numnode, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %19, align 4
  %171 = call i32 @big_pass(i8* %165, i8* %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %25, align 4
  br label %174

174:                                              ; preds = %305, %154
  %175 = load i32, i32* %25, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %308

177:                                              ; preds = %174
  %178 = load i32, i32* @numnode, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  %183 = call %struct.NODE* @findmax()
  store %struct.NODE* %183, %struct.NODE** %29, align 8
  %184 = load %struct.NODE*, %struct.NODE** %29, align 8
  %185 = getelementptr inbounds %struct.NODE, %struct.NODE* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %24, align 4
  %187 = load %struct.NODE*, %struct.NODE** %29, align 8
  %188 = getelementptr inbounds %struct.NODE, %struct.NODE* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  store i32 %190, i32* %22, align 4
  %191 = load %struct.NODE*, %struct.NODE** %29, align 8
  %192 = getelementptr inbounds %struct.NODE, %struct.NODE* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  store i32 %194, i32* %23, align 4
  %195 = load %struct.NODE*, %struct.NODE** %29, align 8
  %196 = getelementptr inbounds %struct.NODE, %struct.NODE* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %20, align 4
  %198 = load %struct.NODE*, %struct.NODE** %29, align 8
  %199 = getelementptr inbounds %struct.NODE, %struct.NODE* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %21, align 4
  %201 = load %struct.NODE*, %struct.NODE** %29, align 8
  %202 = getelementptr inbounds %struct.NODE, %struct.NODE* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* @m1, align 4
  %204 = load %struct.NODE*, %struct.NODE** %29, align 8
  %205 = getelementptr inbounds %struct.NODE, %struct.NODE* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* @mm, align 4
  %207 = load %struct.NODE*, %struct.NODE** %29, align 8
  %208 = getelementptr inbounds %struct.NODE, %struct.NODE* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* @n1, align 4
  %210 = load %struct.NODE*, %struct.NODE** %29, align 8
  %211 = getelementptr inbounds %struct.NODE, %struct.NODE* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* @nn, align 4
  %213 = load i32, i32* %20, align 4
  %214 = load i32, i32* %22, align 4
  %215 = sub nsw i32 %213, %214
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* @rl, align 4
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* %23, align 4
  %219 = sub nsw i32 %217, %218
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* @cl, align 4
  %221 = load i32, i32* %22, align 4
  %222 = sub nsw i32 %221, 1
  store i32 %222, i32* @I, align 4
  %223 = load i32, i32* %23, align 4
  %224 = sub nsw i32 %223, 1
  store i32 %224, i32* @J, align 4
  %225 = load i32*, i32** %28, align 8
  store i32* %225, i32** @sapp, align 8
  store i32 0, i32* @last, align 4
  store i32 0, i32* @al_len, align 4
  store i32 0, i32* @no_mat, align 4
  store i32 0, i32* @no_mis, align 4
  %226 = load i8*, i8** %11, align 8
  %227 = load i32, i32* %22, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = getelementptr inbounds i8, i8* %229, i64 -1
  %231 = load i8*, i8** %12, align 8
  %232 = load i32, i32* %23, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = getelementptr inbounds i8, i8* %234, i64 -1
  %236 = load i32, i32* @rl, align 4
  %237 = load i32, i32* @cl, align 4
  %238 = load i32, i32* @q, align 4
  %239 = load i32, i32* @q, align 4
  %240 = call i32 @diff(i8* %230, i8* %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i64 0, i64 0))
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %25, align 4
  %244 = sub nsw i32 %242, %243
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %24, align 4
  %247 = sitofp i32 %246 to double
  %248 = fdiv double %247, 1.000000e+01
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), double %248)
  %250 = load i32, i32* @no_mat, align 4
  %251 = mul nsw i32 100, %250
  %252 = load i32, i32* @al_len, align 4
  %253 = sdiv i32 %251, %252
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* @no_mat, align 4
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @no_mis, align 4
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @al_len, align 4
  %260 = load i32, i32* @no_mat, align 4
  %261 = sub nsw i32 %259, %260
  %262 = load i32, i32* @no_mis, align 4
  %263 = sub nsw i32 %261, %262
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %22, align 4
  %266 = load i32, i32* %23, align 4
  %267 = load i32, i32* %20, align 4
  %268 = load i32, i32* %21, align 4
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 %265, i32 %266, i32 %267, i32 %268)
  %270 = load i8*, i8** %11, align 8
  %271 = load i32, i32* %22, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = getelementptr inbounds i8, i8* %273, i64 -1
  %275 = load i8*, i8** %12, align 8
  %276 = load i32, i32* %23, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = getelementptr inbounds i8, i8* %278, i64 -1
  %280 = load i32, i32* @rl, align 4
  %281 = load i32, i32* @cl, align 4
  %282 = load i32*, i32** %28, align 8
  %283 = load i32, i32* %22, align 4
  %284 = load i32, i32* %23, align 4
  %285 = call i32 @display(i8* %274, i8* %279, i32 %280, i32 %281, i32* %282, i32 %283, i32 %284)
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %287 = call i32 @fflush(%struct._IO_FILE* %286)
  %288 = load i32, i32* %25, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %304

290:                                              ; preds = %182
  store i16 0, i16* @flag, align 2
  %291 = load i8*, i8** %11, align 8
  %292 = load i8*, i8** %12, align 8
  %293 = load i32, i32* %19, align 4
  %294 = call i32 @locate(i8* %291, i8* %292, i32 %293)
  %295 = load i16, i16* @flag, align 2
  %296 = icmp ne i16 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %290
  %298 = load i8*, i8** %11, align 8
  %299 = load i8*, i8** %12, align 8
  %300 = load i32, i32* %25, align 4
  %301 = load i32, i32* %19, align 4
  %302 = call i32 @small_pass(i8* %298, i8* %299, i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %297, %290
  br label %304

304:                                              ; preds = %303, %182
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %25, align 4
  br label %174

308:                                              ; preds = %174
  %309 = load i32, i32* %10, align 4
  ret i32 %309
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @mybasename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strrchr(i8* %4, i32 47) #7
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
define dso_local i32 @big_pass(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
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
  %28 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %29

29:                                               ; preds = %62, %6
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load i32*, i32** @CC, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** @RR, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32*, i32** @EE, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @q, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32*, i32** @DD, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32*, i32** @SS, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** @FF, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %33
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %29

65:                                               ; preds = %29
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %394, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %397

70:                                               ; preds = %66
  store i32 0, i32* %16, align 4
  %71 = load i32, i32* @q, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %24, align 4
  store i32 %73, i32* %20, align 4
  %74 = load [256 x i32]*, [256 x i32]** @v, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* %74, i64 %80
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %81, i64 0, i64 0
  store i32* %82, i32** %28, align 8
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  store i32 0, i32* %19, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %21, align 4
  br label %105

88:                                               ; preds = %70
  %89 = load i32*, i32** @CC, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %19, align 4
  %94 = load i32*, i32** @RR, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %26, align 4
  %99 = load i32*, i32** @EE, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %27, align 4
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %25, align 4
  store i32 %104, i32* %21, align 4
  br label %105

105:                                              ; preds = %88, %85
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  br label %112

112:                                              ; preds = %109, %108
  %113 = phi i32 [ 1, %108 ], [ %111, %109 ]
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %390, %112
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %393

118:                                              ; preds = %114
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @r, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @qr, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %20, align 4
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %25, align 4
  br label %156

132:                                              ; preds = %118
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %132
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %20, align 4
  store i32 %141, i32* %24, align 4
  %142 = load i32, i32* %21, align 4
  store i32 %142, i32* %25, align 4
  br label %154

143:                                              ; preds = %136
  %144 = load i32, i32* %24, align 4
  %145 = load i32, i32* %20, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* %21, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %21, align 4
  store i32 %152, i32* %25, align 4
  br label %153

153:                                              ; preds = %151, %147, %143
  br label %154

154:                                              ; preds = %153, %140
  br label %155

155:                                              ; preds = %154, %132
  br label %156

156:                                              ; preds = %155, %128
  %157 = load i32*, i32** @CC, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @qr, align 4
  %163 = sub nsw i32 %161, %162
  store i32 %163, i32* %16, align 4
  %164 = load i32*, i32** @RR, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %20, align 4
  %169 = load i32*, i32** @EE, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %21, align 4
  %174 = load i32*, i32** @DD, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @r, align 4
  %180 = sub nsw i32 %178, %179
  store i32 %180, i32* %18, align 4
  %181 = load i32*, i32** @SS, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %22, align 4
  %186 = load i32*, i32** @FF, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %156
  %195 = load i32, i32* %16, align 4
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %20, align 4
  store i32 %196, i32* %22, align 4
  %197 = load i32, i32* %21, align 4
  store i32 %197, i32* %23, align 4
  br label %222

198:                                              ; preds = %156
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %221

202:                                              ; preds = %198
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %20, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %20, align 4
  store i32 %207, i32* %22, align 4
  %208 = load i32, i32* %21, align 4
  store i32 %208, i32* %23, align 4
  br label %220

209:                                              ; preds = %202
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32, i32* %23, align 4
  %215 = load i32, i32* %21, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i32, i32* %21, align 4
  store i32 %218, i32* %23, align 4
  br label %219

219:                                              ; preds = %217, %213, %209
  br label %220

220:                                              ; preds = %219, %206
  br label %221

221:                                              ; preds = %220, %198
  br label %222

222:                                              ; preds = %221, %194
  store i32 0, i32* %16, align 4
  store i16 1, i16* @tt, align 2
  %223 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ONE*, %struct.ONE** %223, i64 %225
  %227 = load %struct.ONE*, %struct.ONE** %226, align 8
  store %struct.ONE* %227, %struct.ONE** @z, align 8
  br label %228

228:                                              ; preds = %239, %222
  %229 = load %struct.ONE*, %struct.ONE** @z, align 8
  %230 = icmp ne %struct.ONE* %229, null
  br i1 %230, label %231, label %243

231:                                              ; preds = %228
  %232 = load %struct.ONE*, %struct.ONE** @z, align 8
  %233 = getelementptr inbounds %struct.ONE, %struct.ONE* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  store i16 0, i16* @tt, align 2
  br label %243

238:                                              ; preds = %231
  br label %239

239:                                              ; preds = %238
  %240 = load %struct.ONE*, %struct.ONE** @z, align 8
  %241 = getelementptr inbounds %struct.ONE, %struct.ONE* %240, i32 0, i32 1
  %242 = load %struct.ONE*, %struct.ONE** %241, align 8
  store %struct.ONE* %242, %struct.ONE** @z, align 8
  br label %228

243:                                              ; preds = %237, %228
  %244 = load i16, i16* @tt, align 2
  %245 = icmp ne i16 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %243
  %247 = load i32, i32* %19, align 4
  %248 = load i32*, i32** %28, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i64
  %255 = getelementptr inbounds i32, i32* %248, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %247, %256
  store i32 %257, i32* %16, align 4
  br label %258

258:                                              ; preds = %246, %243
  %259 = load i32, i32* %16, align 4
  %260 = icmp sle i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  store i32 0, i32* %16, align 4
  %262 = load i32, i32* %14, align 4
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %15, align 4
  store i32 %263, i32* %21, align 4
  br label %267

264:                                              ; preds = %258
  %265 = load i32, i32* %26, align 4
  store i32 %265, i32* %20, align 4
  %266 = load i32, i32* %27, align 4
  store i32 %266, i32* %21, align 4
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %18, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i32, i32* %18, align 4
  store i32 %272, i32* %16, align 4
  %273 = load i32, i32* %22, align 4
  store i32 %273, i32* %20, align 4
  %274 = load i32, i32* %23, align 4
  store i32 %274, i32* %21, align 4
  br label %299

275:                                              ; preds = %267
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* %18, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %298

279:                                              ; preds = %275
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* %22, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, i32* %22, align 4
  store i32 %284, i32* %20, align 4
  %285 = load i32, i32* %23, align 4
  store i32 %285, i32* %21, align 4
  br label %297

286:                                              ; preds = %279
  %287 = load i32, i32* %20, align 4
  %288 = load i32, i32* %22, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* %23, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = load i32, i32* %23, align 4
  store i32 %295, i32* %21, align 4
  br label %296

296:                                              ; preds = %294, %290, %286
  br label %297

297:                                              ; preds = %296, %283
  br label %298

298:                                              ; preds = %297, %275
  br label %299

299:                                              ; preds = %298, %271
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* %17, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load i32, i32* %17, align 4
  store i32 %304, i32* %16, align 4
  %305 = load i32, i32* %24, align 4
  store i32 %305, i32* %20, align 4
  %306 = load i32, i32* %25, align 4
  store i32 %306, i32* %21, align 4
  br label %331

307:                                              ; preds = %299
  %308 = load i32, i32* %16, align 4
  %309 = load i32, i32* %17, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %330

311:                                              ; preds = %307
  %312 = load i32, i32* %20, align 4
  %313 = load i32, i32* %24, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %311
  %316 = load i32, i32* %24, align 4
  store i32 %316, i32* %20, align 4
  %317 = load i32, i32* %25, align 4
  store i32 %317, i32* %21, align 4
  br label %329

318:                                              ; preds = %311
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %24, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %318
  %323 = load i32, i32* %21, align 4
  %324 = load i32, i32* %25, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %322
  %327 = load i32, i32* %25, align 4
  store i32 %327, i32* %21, align 4
  br label %328

328:                                              ; preds = %326, %322, %318
  br label %329

329:                                              ; preds = %328, %315
  br label %330

330:                                              ; preds = %329, %307
  br label %331

331:                                              ; preds = %330, %303
  %332 = load i32*, i32** @CC, align 8
  %333 = load i32, i32* %15, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %19, align 4
  %337 = load i32, i32* %16, align 4
  %338 = load i32*, i32** @CC, align 8
  %339 = load i32, i32* %15, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32 %337, i32* %341, align 4
  %342 = load i32*, i32** @RR, align 8
  %343 = load i32, i32* %15, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  store i32 %346, i32* %26, align 4
  %347 = load i32*, i32** @EE, align 8
  %348 = load i32, i32* %15, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %27, align 4
  %352 = load i32, i32* %20, align 4
  %353 = load i32*, i32** @RR, align 8
  %354 = load i32, i32* %15, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32 %352, i32* %356, align 4
  %357 = load i32, i32* %21, align 4
  %358 = load i32*, i32** @EE, align 8
  %359 = load i32, i32* %15, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 %357, i32* %361, align 4
  %362 = load i32, i32* %18, align 4
  %363 = load i32*, i32** @DD, align 8
  %364 = load i32, i32* %15, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  store i32 %362, i32* %366, align 4
  %367 = load i32, i32* %22, align 4
  %368 = load i32*, i32** @SS, align 8
  %369 = load i32, i32* %15, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %367, i32* %371, align 4
  %372 = load i32, i32* %23, align 4
  %373 = load i32*, i32** @FF, align 8
  %374 = load i32, i32* %15, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  store i32 %372, i32* %376, align 4
  %377 = load i32, i32* %16, align 4
  %378 = load i32, i32* @min, align 4
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %380, label %389

380:                                              ; preds = %331
  %381 = load i32, i32* %16, align 4
  %382 = load i32, i32* %20, align 4
  %383 = load i32, i32* %21, align 4
  %384 = load i32, i32* %14, align 4
  %385 = load i32, i32* %15, align 4
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* @min, align 4
  %388 = call i32 @addnode(i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387)
  store i32 %388, i32* @min, align 4
  br label %389

389:                                              ; preds = %380, %331
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %15, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %15, align 4
  br label %114

393:                                              ; preds = %114
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %14, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %14, align 4
  br label %66

397:                                              ; preds = %66
  %398 = load i32, i32* %7, align 4
  ret i32 %398
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NODE* @findmax() #0 {
  %1 = alloca %struct.NODE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %27, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @numnode, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.NODE*, %struct.NODE** %9, i64 %11
  %13 = load %struct.NODE*, %struct.NODE** %12, align 8
  %14 = getelementptr inbounds %struct.NODE, %struct.NODE* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.NODE*, %struct.NODE** %16, i64 %18
  %20 = load %struct.NODE*, %struct.NODE** %19, align 8
  %21 = getelementptr inbounds %struct.NODE, %struct.NODE* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %15, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %8
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %4

30:                                               ; preds = %4
  %31 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.NODE*, %struct.NODE** %31, i64 %33
  %35 = load %struct.NODE*, %struct.NODE** %34, align 8
  store %struct.NODE* %35, %struct.NODE** %1, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @numnode, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @numnode, align 4
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %42 = load i32, i32* @numnode, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.NODE*, %struct.NODE** %41, i64 %43
  %45 = load %struct.NODE*, %struct.NODE** %44, align 8
  %46 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.NODE*, %struct.NODE** %46, i64 %48
  store %struct.NODE* %45, %struct.NODE** %49, align 8
  %50 = load %struct.NODE*, %struct.NODE** %1, align 8
  %51 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %52 = load i32, i32* @numnode, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.NODE*, %struct.NODE** %51, i64 %53
  store %struct.NODE* %50, %struct.NODE** %54, align 8
  br label %55

55:                                               ; preds = %40, %30
  %56 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %57 = getelementptr inbounds %struct.NODE*, %struct.NODE** %56, i64 0
  %58 = load %struct.NODE*, %struct.NODE** %57, align 8
  store %struct.NODE* %58, %struct.NODE** @most, align 8
  %59 = load %struct.NODE*, %struct.NODE** @low, align 8
  %60 = load %struct.NODE*, %struct.NODE** %1, align 8
  %61 = icmp eq %struct.NODE* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %64 = getelementptr inbounds %struct.NODE*, %struct.NODE** %63, i64 0
  %65 = load %struct.NODE*, %struct.NODE** %64, align 8
  store %struct.NODE* %65, %struct.NODE** @low, align 8
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.NODE*, %struct.NODE** %1, align 8
  ret %struct.NODE* %67
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @diff(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
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
  %25 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @I, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* @I, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @al_len, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* @al_len, align 4
  %38 = load i32, i32* @last, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** @sapp, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 %45, i32* @last, align 4
  br label %51

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32*, i32** @sapp, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** @sapp, align 8
  store i32 %48, i32* %49, align 4
  store i32 %48, i32* @last, align 4
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %10, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @q, align 4
  %58 = load i32, i32* @r, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  br label %62

62:                                               ; preds = %56, %55
  %63 = phi i32 [ 0, %55 ], [ %61, %56 ]
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %879

65:                                               ; preds = %6
  %66 = load i32, i32* %10, align 4
  %67 = icmp sle i32 %66, 1
  br i1 %67, label %68, label %362

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @J, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* @J, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @al_len, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* @al_len, align 4
  %78 = load i32, i32* @last, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** @sapp, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 -1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @last, align 4
  %85 = load i32*, i32** @sapp, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** @sapp, align 8
  store i32 %84, i32* %85, align 4
  br label %91

87:                                               ; preds = %71
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** @sapp, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** @sapp, align 8
  store i32 %88, i32* %89, align 4
  store i32 %88, i32* @last, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = load i32, i32* %11, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @q, align 4
  %97 = load i32, i32* @r, align 4
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  br label %101

101:                                              ; preds = %95, %94
  %102 = phi i32 [ 0, %94 ], [ %100, %95 ]
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %879

104:                                              ; preds = %68
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @r, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %11, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %123

117:                                              ; preds = %110
  %118 = load i32, i32* @q, align 4
  %119 = load i32, i32* @r, align 4
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %118, %121
  br label %123

123:                                              ; preds = %117, %116
  %124 = phi i32 [ 0, %116 ], [ %122, %117 ]
  %125 = add nsw i32 %113, %124
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %17, align 4
  store i32 0, i32* %15, align 4
  %127 = load [256 x i32]*, [256 x i32]** @v, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i64
  %132 = getelementptr inbounds [256 x i32], [256 x i32]* %127, i64 %131
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %132, i64 0, i64 0
  store i32* %133, i32** %25, align 8
  store i32 1, i32* %19, align 4
  br label %134

134:                                              ; preds = %213, %123
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %216

138:                                              ; preds = %134
  store i16 1, i16* @tt, align 2
  %139 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %140 = load i32, i32* @I, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ONE*, %struct.ONE** %139, i64 %142
  %144 = load %struct.ONE*, %struct.ONE** %143, align 8
  store %struct.ONE* %144, %struct.ONE** @z, align 8
  br label %145

145:                                              ; preds = %158, %138
  %146 = load %struct.ONE*, %struct.ONE** @z, align 8
  %147 = icmp ne %struct.ONE* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load %struct.ONE*, %struct.ONE** @z, align 8
  %150 = getelementptr inbounds %struct.ONE, %struct.ONE* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* @J, align 4
  %154 = add nsw i32 %152, %153
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i16 0, i16* @tt, align 2
  br label %162

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.ONE*, %struct.ONE** @z, align 8
  %160 = getelementptr inbounds %struct.ONE, %struct.ONE* %159, i32 0, i32 1
  %161 = load %struct.ONE*, %struct.ONE** %160, align 8
  store %struct.ONE* %161, %struct.ONE** @z, align 8
  br label %145

162:                                              ; preds = %156, %145
  %163 = load i16, i16* @tt, align 2
  %164 = icmp ne i16 %163, 0
  br i1 %164, label %165, label %212

165:                                              ; preds = %162
  %166 = load i32*, i32** %25, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i64
  %173 = getelementptr inbounds i32, i32* %166, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %19, align 4
  %176 = sub nsw i32 %175, 1
  %177 = icmp sle i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  br label %186

179:                                              ; preds = %165
  %180 = load i32, i32* @q, align 4
  %181 = load i32, i32* @r, align 4
  %182 = load i32, i32* %19, align 4
  %183 = sub nsw i32 %182, 1
  %184 = mul nsw i32 %181, %183
  %185 = add nsw i32 %180, %184
  br label %186

186:                                              ; preds = %179, %178
  %187 = phi i32 [ 0, %178 ], [ %185, %179 ]
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %19, align 4
  %190 = sub nsw i32 %188, %189
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %201

193:                                              ; preds = %186
  %194 = load i32, i32* @q, align 4
  %195 = load i32, i32* @r, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %19, align 4
  %198 = sub nsw i32 %196, %197
  %199 = mul nsw i32 %195, %198
  %200 = add nsw i32 %194, %199
  br label %201

201:                                              ; preds = %193, %192
  %202 = phi i32 [ 0, %192 ], [ %200, %193 ]
  %203 = add nsw i32 %187, %202
  %204 = sub nsw i32 %174, %203
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = load i32, i32* %20, align 4
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %19, align 4
  store i32 %210, i32* %15, align 4
  br label %211

211:                                              ; preds = %208, %201
  br label %212

212:                                              ; preds = %211, %162
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %19, align 4
  br label %134

216:                                              ; preds = %134
  %217 = load i32, i32* %15, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %255

219:                                              ; preds = %216
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* @J, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* @J, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @al_len, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* @al_len, align 4
  %226 = load i32, i32* @last, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %219
  %229 = load i32, i32* %11, align 4
  %230 = load i32*, i32** @sapp, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 -1
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @last, align 4
  %233 = load i32*, i32** @sapp, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** @sapp, align 8
  store i32 %232, i32* %233, align 4
  br label %239

235:                                              ; preds = %219
  %236 = load i32, i32* %11, align 4
  %237 = load i32*, i32** @sapp, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** @sapp, align 8
  store i32 %236, i32* %237, align 4
  store i32 %236, i32* @last, align 4
  br label %239

239:                                              ; preds = %235, %228
  %240 = load i32, i32* @I, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* @I, align 4
  %242 = load i32, i32* @al_len, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* @al_len, align 4
  %244 = load i32, i32* @last, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load i32*, i32** @sapp, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 -1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  store i32 %250, i32* @last, align 4
  br label %254

251:                                              ; preds = %239
  %252 = load i32*, i32** @sapp, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** @sapp, align 8
  store i32 -1, i32* %252, align 4
  store i32 -1, i32* @last, align 4
  br label %254

254:                                              ; preds = %251, %246
  br label %360

255:                                              ; preds = %216
  %256 = load i32, i32* %15, align 4
  %257 = icmp sgt i32 %256, 1
  br i1 %257, label %258, label %283

258:                                              ; preds = %255
  %259 = load i32, i32* %15, align 4
  %260 = sub nsw i32 %259, 1
  %261 = load i32, i32* @J, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* @J, align 4
  %263 = load i32, i32* %15, align 4
  %264 = sub nsw i32 %263, 1
  %265 = load i32, i32* @al_len, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* @al_len, align 4
  %267 = load i32, i32* @last, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %258
  %270 = load i32, i32* %15, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load i32*, i32** @sapp, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 -1
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* @last, align 4
  %275 = load i32*, i32** @sapp, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** @sapp, align 8
  store i32 %274, i32* %275, align 4
  br label %282

277:                                              ; preds = %258
  %278 = load i32, i32* %15, align 4
  %279 = sub nsw i32 %278, 1
  %280 = load i32*, i32** @sapp, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** @sapp, align 8
  store i32 %279, i32* %280, align 4
  store i32 %279, i32* @last, align 4
  br label %282

282:                                              ; preds = %277, %269
  br label %283

283:                                              ; preds = %282, %255
  %284 = load i32*, i32** @sapp, align 8
  %285 = getelementptr inbounds i32, i32* %284, i32 1
  store i32* %285, i32** @sapp, align 8
  store i32 0, i32* %284, align 4
  store i32 0, i32* @last, align 4
  %286 = load i32, i32* @al_len, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* @al_len, align 4
  %288 = load i8*, i8** %8, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 1
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = load i8*, i8** %9, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %291, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %283
  %300 = load i32, i32* @no_mat, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* @no_mat, align 4
  br label %305

302:                                              ; preds = %283
  %303 = load i32, i32* @no_mis, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* @no_mis, align 4
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i32, i32* @I, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* @I, align 4
  %308 = load i32, i32* @J, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* @J, align 4
  %310 = call noalias i8* @malloc(i64 16) #6
  %311 = bitcast i8* %310 to %struct.ONE*
  store %struct.ONE* %311, %struct.ONE** @z, align 8
  %312 = load i32, i32* @J, align 4
  %313 = load %struct.ONE*, %struct.ONE** @z, align 8
  %314 = getelementptr inbounds %struct.ONE, %struct.ONE* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  %315 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %316 = load i32, i32* @I, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.ONE*, %struct.ONE** %315, i64 %317
  %319 = load %struct.ONE*, %struct.ONE** %318, align 8
  %320 = load %struct.ONE*, %struct.ONE** @z, align 8
  %321 = getelementptr inbounds %struct.ONE, %struct.ONE* %320, i32 0, i32 1
  store %struct.ONE* %319, %struct.ONE** %321, align 8
  %322 = load %struct.ONE*, %struct.ONE** @z, align 8
  %323 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %324 = load i32, i32* @I, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.ONE*, %struct.ONE** %323, i64 %325
  store %struct.ONE* %322, %struct.ONE** %326, align 8
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* %11, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %359

330:                                              ; preds = %305
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* %15, align 4
  %333 = sub nsw i32 %331, %332
  %334 = load i32, i32* @J, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* @J, align 4
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %15, align 4
  %338 = sub nsw i32 %336, %337
  %339 = load i32, i32* @al_len, align 4
  %340 = add nsw i32 %339, %338
  store i32 %340, i32* @al_len, align 4
  %341 = load i32, i32* @last, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %330
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %15, align 4
  %346 = sub nsw i32 %344, %345
  %347 = load i32*, i32** @sapp, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 -1
  store i32 %346, i32* %348, align 4
  %349 = load i32, i32* @last, align 4
  %350 = load i32*, i32** @sapp, align 8
  %351 = getelementptr inbounds i32, i32* %350, i32 1
  store i32* %351, i32** @sapp, align 8
  store i32 %349, i32* %350, align 4
  br label %358

352:                                              ; preds = %330
  %353 = load i32, i32* %11, align 4
  %354 = load i32, i32* %15, align 4
  %355 = sub nsw i32 %353, %354
  %356 = load i32*, i32** @sapp, align 8
  %357 = getelementptr inbounds i32, i32* %356, i32 1
  store i32* %357, i32** @sapp, align 8
  store i32 %355, i32* %356, align 4
  store i32 %355, i32* @last, align 4
  br label %358

358:                                              ; preds = %352, %343
  br label %359

359:                                              ; preds = %358, %305
  br label %360

360:                                              ; preds = %359, %254
  %361 = load i32, i32* %17, align 4
  store i32 %361, i32* %7, align 4
  br label %879

362:                                              ; preds = %65
  %363 = load i32, i32* %10, align 4
  %364 = sdiv i32 %363, 2
  store i32 %364, i32* %14, align 4
  %365 = load i32*, i32** @CC, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  store i32 0, i32* %366, align 4
  %367 = load i32, i32* @q, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %24, align 4
  store i32 1, i32* %19, align 4
  br label %369

369:                                              ; preds = %388, %362
  %370 = load i32, i32* %19, align 4
  %371 = load i32, i32* %11, align 4
  %372 = icmp sle i32 %370, %371
  br i1 %372, label %373, label %391

373:                                              ; preds = %369
  %374 = load i32, i32* %24, align 4
  %375 = load i32, i32* @r, align 4
  %376 = sub nsw i32 %374, %375
  store i32 %376, i32* %24, align 4
  %377 = load i32*, i32** @CC, align 8
  %378 = load i32, i32* %19, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 %376, i32* %380, align 4
  %381 = load i32, i32* %24, align 4
  %382 = load i32, i32* @q, align 4
  %383 = sub nsw i32 %381, %382
  %384 = load i32*, i32** @DD, align 8
  %385 = load i32, i32* %19, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 %383, i32* %387, align 4
  br label %388

388:                                              ; preds = %373
  %389 = load i32, i32* %19, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %19, align 4
  br label %369

391:                                              ; preds = %369
  %392 = load i32, i32* %12, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %24, align 4
  store i32 1, i32* %18, align 4
  br label %394

394:                                              ; preds = %523, %391
  %395 = load i32, i32* %18, align 4
  %396 = load i32, i32* %14, align 4
  %397 = icmp sle i32 %395, %396
  br i1 %397, label %398, label %526

398:                                              ; preds = %394
  %399 = load i32*, i32** @CC, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 0
  %401 = load i32, i32* %400, align 4
  store i32 %401, i32* %23, align 4
  %402 = load i32, i32* %24, align 4
  %403 = load i32, i32* @r, align 4
  %404 = sub nsw i32 %402, %403
  store i32 %404, i32* %24, align 4
  store i32 %404, i32* %20, align 4
  %405 = load i32*, i32** @CC, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  store i32 %404, i32* %406, align 4
  %407 = load i32, i32* %24, align 4
  %408 = load i32, i32* @q, align 4
  %409 = sub nsw i32 %407, %408
  store i32 %409, i32* %21, align 4
  %410 = load [256 x i32]*, [256 x i32]** @v, align 8
  %411 = load i8*, i8** %8, align 8
  %412 = load i32, i32* %18, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i64
  %417 = getelementptr inbounds [256 x i32], [256 x i32]* %410, i64 %416
  %418 = getelementptr inbounds [256 x i32], [256 x i32]* %417, i64 0, i64 0
  store i32* %418, i32** %25, align 8
  store i32 1, i32* %19, align 4
  br label %419

419:                                              ; preds = %519, %398
  %420 = load i32, i32* %19, align 4
  %421 = load i32, i32* %11, align 4
  %422 = icmp sle i32 %420, %421
  br i1 %422, label %423, label %522

423:                                              ; preds = %419
  %424 = load i32, i32* %20, align 4
  %425 = load i32, i32* @qr, align 4
  %426 = sub nsw i32 %424, %425
  store i32 %426, i32* %20, align 4
  %427 = load i32, i32* %21, align 4
  %428 = load i32, i32* @r, align 4
  %429 = sub nsw i32 %427, %428
  store i32 %429, i32* %21, align 4
  %430 = icmp sgt i32 %426, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %423
  %432 = load i32, i32* %20, align 4
  store i32 %432, i32* %21, align 4
  br label %433

433:                                              ; preds = %431, %423
  %434 = load i32*, i32** @CC, align 8
  %435 = load i32, i32* %19, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @qr, align 4
  %440 = sub nsw i32 %438, %439
  store i32 %440, i32* %20, align 4
  %441 = load i32*, i32** @DD, align 8
  %442 = load i32, i32* %19, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @r, align 4
  %447 = sub nsw i32 %445, %446
  store i32 %447, i32* %22, align 4
  %448 = icmp sgt i32 %440, %447
  br i1 %448, label %449, label %451

449:                                              ; preds = %433
  %450 = load i32, i32* %20, align 4
  store i32 %450, i32* %22, align 4
  br label %451

451:                                              ; preds = %449, %433
  store i16 1, i16* @tt, align 2
  %452 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %453 = load i32, i32* %18, align 4
  %454 = load i32, i32* @I, align 4
  %455 = add nsw i32 %453, %454
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.ONE*, %struct.ONE** %452, i64 %456
  %458 = load %struct.ONE*, %struct.ONE** %457, align 8
  store %struct.ONE* %458, %struct.ONE** @z, align 8
  br label %459

459:                                              ; preds = %472, %451
  %460 = load %struct.ONE*, %struct.ONE** @z, align 8
  %461 = icmp ne %struct.ONE* %460, null
  br i1 %461, label %462, label %476

462:                                              ; preds = %459
  %463 = load %struct.ONE*, %struct.ONE** @z, align 8
  %464 = getelementptr inbounds %struct.ONE, %struct.ONE* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* %19, align 4
  %467 = load i32, i32* @J, align 4
  %468 = add nsw i32 %466, %467
  %469 = icmp eq i32 %465, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %462
  store i16 0, i16* @tt, align 2
  br label %476

471:                                              ; preds = %462
  br label %472

472:                                              ; preds = %471
  %473 = load %struct.ONE*, %struct.ONE** @z, align 8
  %474 = getelementptr inbounds %struct.ONE, %struct.ONE* %473, i32 0, i32 1
  %475 = load %struct.ONE*, %struct.ONE** %474, align 8
  store %struct.ONE* %475, %struct.ONE** @z, align 8
  br label %459

476:                                              ; preds = %470, %459
  %477 = load i16, i16* @tt, align 2
  %478 = icmp ne i16 %477, 0
  br i1 %478, label %479, label %491

479:                                              ; preds = %476
  %480 = load i32, i32* %23, align 4
  %481 = load i32*, i32** %25, align 8
  %482 = load i8*, i8** %9, align 8
  %483 = load i32, i32* %19, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, i8* %482, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i64
  %488 = getelementptr inbounds i32, i32* %481, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = add nsw i32 %480, %489
  store i32 %490, i32* %20, align 4
  br label %491

491:                                              ; preds = %479, %476
  %492 = load i32, i32* %20, align 4
  %493 = load i32, i32* %22, align 4
  %494 = icmp slt i32 %492, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %491
  %496 = load i32, i32* %22, align 4
  store i32 %496, i32* %20, align 4
  br label %497

497:                                              ; preds = %495, %491
  %498 = load i32, i32* %20, align 4
  %499 = load i32, i32* %21, align 4
  %500 = icmp slt i32 %498, %499
  br i1 %500, label %501, label %503

501:                                              ; preds = %497
  %502 = load i32, i32* %21, align 4
  store i32 %502, i32* %20, align 4
  br label %503

503:                                              ; preds = %501, %497
  %504 = load i32*, i32** @CC, align 8
  %505 = load i32, i32* %19, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  store i32 %508, i32* %23, align 4
  %509 = load i32, i32* %20, align 4
  %510 = load i32*, i32** @CC, align 8
  %511 = load i32, i32* %19, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  store i32 %509, i32* %513, align 4
  %514 = load i32, i32* %22, align 4
  %515 = load i32*, i32** @DD, align 8
  %516 = load i32, i32* %19, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  store i32 %514, i32* %518, align 4
  br label %519

519:                                              ; preds = %503
  %520 = load i32, i32* %19, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %19, align 4
  br label %419

522:                                              ; preds = %419
  br label %523

523:                                              ; preds = %522
  %524 = load i32, i32* %18, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %18, align 4
  br label %394

526:                                              ; preds = %394
  %527 = load i32*, i32** @CC, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 0
  %529 = load i32, i32* %528, align 4
  %530 = load i32*, i32** @DD, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 0
  store i32 %529, i32* %531, align 4
  %532 = load i32*, i32** @RR, align 8
  %533 = load i32, i32* %11, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  store i32 0, i32* %535, align 4
  %536 = load i32, i32* @q, align 4
  %537 = sub nsw i32 0, %536
  store i32 %537, i32* %24, align 4
  %538 = load i32, i32* %11, align 4
  %539 = sub nsw i32 %538, 1
  store i32 %539, i32* %19, align 4
  br label %540

540:                                              ; preds = %558, %526
  %541 = load i32, i32* %19, align 4
  %542 = icmp sge i32 %541, 0
  br i1 %542, label %543, label %561

543:                                              ; preds = %540
  %544 = load i32, i32* %24, align 4
  %545 = load i32, i32* @r, align 4
  %546 = sub nsw i32 %544, %545
  store i32 %546, i32* %24, align 4
  %547 = load i32*, i32** @RR, align 8
  %548 = load i32, i32* %19, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %547, i64 %549
  store i32 %546, i32* %550, align 4
  %551 = load i32, i32* %24, align 4
  %552 = load i32, i32* @q, align 4
  %553 = sub nsw i32 %551, %552
  %554 = load i32*, i32** @SS, align 8
  %555 = load i32, i32* %19, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  store i32 %553, i32* %557, align 4
  br label %558

558:                                              ; preds = %543
  %559 = load i32, i32* %19, align 4
  %560 = add nsw i32 %559, -1
  store i32 %560, i32* %19, align 4
  br label %540

561:                                              ; preds = %540
  %562 = load i32, i32* %13, align 4
  %563 = sub nsw i32 0, %562
  store i32 %563, i32* %24, align 4
  %564 = load i32, i32* %10, align 4
  %565 = sub nsw i32 %564, 1
  store i32 %565, i32* %18, align 4
  br label %566

566:                                              ; preds = %704, %561
  %567 = load i32, i32* %18, align 4
  %568 = load i32, i32* %14, align 4
  %569 = icmp sge i32 %567, %568
  br i1 %569, label %570, label %707

570:                                              ; preds = %566
  %571 = load i32*, i32** @RR, align 8
  %572 = load i32, i32* %11, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32, i32* %571, i64 %573
  %575 = load i32, i32* %574, align 4
  store i32 %575, i32* %23, align 4
  %576 = load i32, i32* %24, align 4
  %577 = load i32, i32* @r, align 4
  %578 = sub nsw i32 %576, %577
  store i32 %578, i32* %24, align 4
  store i32 %578, i32* %20, align 4
  %579 = load i32*, i32** @RR, align 8
  %580 = load i32, i32* %11, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32, i32* %579, i64 %581
  store i32 %578, i32* %582, align 4
  %583 = load i32, i32* %24, align 4
  %584 = load i32, i32* @q, align 4
  %585 = sub nsw i32 %583, %584
  store i32 %585, i32* %21, align 4
  %586 = load [256 x i32]*, [256 x i32]** @v, align 8
  %587 = load i8*, i8** %8, align 8
  %588 = load i32, i32* %18, align 4
  %589 = add nsw i32 %588, 1
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i8, i8* %587, i64 %590
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i64
  %594 = getelementptr inbounds [256 x i32], [256 x i32]* %586, i64 %593
  %595 = getelementptr inbounds [256 x i32], [256 x i32]* %594, i64 0, i64 0
  store i32* %595, i32** %25, align 8
  %596 = load i32, i32* %11, align 4
  %597 = sub nsw i32 %596, 1
  store i32 %597, i32* %19, align 4
  br label %598

598:                                              ; preds = %700, %570
  %599 = load i32, i32* %19, align 4
  %600 = icmp sge i32 %599, 0
  br i1 %600, label %601, label %703

601:                                              ; preds = %598
  %602 = load i32, i32* %20, align 4
  %603 = load i32, i32* @qr, align 4
  %604 = sub nsw i32 %602, %603
  store i32 %604, i32* %20, align 4
  %605 = load i32, i32* %21, align 4
  %606 = load i32, i32* @r, align 4
  %607 = sub nsw i32 %605, %606
  store i32 %607, i32* %21, align 4
  %608 = icmp sgt i32 %604, %607
  br i1 %608, label %609, label %611

609:                                              ; preds = %601
  %610 = load i32, i32* %20, align 4
  store i32 %610, i32* %21, align 4
  br label %611

611:                                              ; preds = %609, %601
  %612 = load i32*, i32** @RR, align 8
  %613 = load i32, i32* %19, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %612, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = load i32, i32* @qr, align 4
  %618 = sub nsw i32 %616, %617
  store i32 %618, i32* %20, align 4
  %619 = load i32*, i32** @SS, align 8
  %620 = load i32, i32* %19, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %619, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = load i32, i32* @r, align 4
  %625 = sub nsw i32 %623, %624
  store i32 %625, i32* %22, align 4
  %626 = icmp sgt i32 %618, %625
  br i1 %626, label %627, label %629

627:                                              ; preds = %611
  %628 = load i32, i32* %20, align 4
  store i32 %628, i32* %22, align 4
  br label %629

629:                                              ; preds = %627, %611
  store i16 1, i16* @tt, align 2
  %630 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %631 = load i32, i32* %18, align 4
  %632 = add nsw i32 %631, 1
  %633 = load i32, i32* @I, align 4
  %634 = add nsw i32 %632, %633
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.ONE*, %struct.ONE** %630, i64 %635
  %637 = load %struct.ONE*, %struct.ONE** %636, align 8
  store %struct.ONE* %637, %struct.ONE** @z, align 8
  br label %638

638:                                              ; preds = %652, %629
  %639 = load %struct.ONE*, %struct.ONE** @z, align 8
  %640 = icmp ne %struct.ONE* %639, null
  br i1 %640, label %641, label %656

641:                                              ; preds = %638
  %642 = load %struct.ONE*, %struct.ONE** @z, align 8
  %643 = getelementptr inbounds %struct.ONE, %struct.ONE* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = load i32, i32* %19, align 4
  %646 = add nsw i32 %645, 1
  %647 = load i32, i32* @J, align 4
  %648 = add nsw i32 %646, %647
  %649 = icmp eq i32 %644, %648
  br i1 %649, label %650, label %651

650:                                              ; preds = %641
  store i16 0, i16* @tt, align 2
  br label %656

651:                                              ; preds = %641
  br label %652

652:                                              ; preds = %651
  %653 = load %struct.ONE*, %struct.ONE** @z, align 8
  %654 = getelementptr inbounds %struct.ONE, %struct.ONE* %653, i32 0, i32 1
  %655 = load %struct.ONE*, %struct.ONE** %654, align 8
  store %struct.ONE* %655, %struct.ONE** @z, align 8
  br label %638

656:                                              ; preds = %650, %638
  %657 = load i16, i16* @tt, align 2
  %658 = icmp ne i16 %657, 0
  br i1 %658, label %659, label %672

659:                                              ; preds = %656
  %660 = load i32, i32* %23, align 4
  %661 = load i32*, i32** %25, align 8
  %662 = load i8*, i8** %9, align 8
  %663 = load i32, i32* %19, align 4
  %664 = add nsw i32 %663, 1
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, i8* %662, i64 %665
  %667 = load i8, i8* %666, align 1
  %668 = sext i8 %667 to i64
  %669 = getelementptr inbounds i32, i32* %661, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = add nsw i32 %660, %670
  store i32 %671, i32* %20, align 4
  br label %672

672:                                              ; preds = %659, %656
  %673 = load i32, i32* %20, align 4
  %674 = load i32, i32* %22, align 4
  %675 = icmp slt i32 %673, %674
  br i1 %675, label %676, label %678

676:                                              ; preds = %672
  %677 = load i32, i32* %22, align 4
  store i32 %677, i32* %20, align 4
  br label %678

678:                                              ; preds = %676, %672
  %679 = load i32, i32* %20, align 4
  %680 = load i32, i32* %21, align 4
  %681 = icmp slt i32 %679, %680
  br i1 %681, label %682, label %684

682:                                              ; preds = %678
  %683 = load i32, i32* %21, align 4
  store i32 %683, i32* %20, align 4
  br label %684

684:                                              ; preds = %682, %678
  %685 = load i32*, i32** @RR, align 8
  %686 = load i32, i32* %19, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %685, i64 %687
  %689 = load i32, i32* %688, align 4
  store i32 %689, i32* %23, align 4
  %690 = load i32, i32* %20, align 4
  %691 = load i32*, i32** @RR, align 8
  %692 = load i32, i32* %19, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i32, i32* %691, i64 %693
  store i32 %690, i32* %694, align 4
  %695 = load i32, i32* %22, align 4
  %696 = load i32*, i32** @SS, align 8
  %697 = load i32, i32* %19, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32, i32* %696, i64 %698
  store i32 %695, i32* %699, align 4
  br label %700

700:                                              ; preds = %684
  %701 = load i32, i32* %19, align 4
  %702 = add nsw i32 %701, -1
  store i32 %702, i32* %19, align 4
  br label %598

703:                                              ; preds = %598
  br label %704

704:                                              ; preds = %703
  %705 = load i32, i32* %18, align 4
  %706 = add nsw i32 %705, -1
  store i32 %706, i32* %18, align 4
  br label %566

707:                                              ; preds = %566
  %708 = load i32*, i32** @RR, align 8
  %709 = load i32, i32* %11, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  %712 = load i32, i32* %711, align 4
  %713 = load i32*, i32** @SS, align 8
  %714 = load i32, i32* %11, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %713, i64 %715
  store i32 %712, i32* %716, align 4
  %717 = load i32*, i32** @CC, align 8
  %718 = getelementptr inbounds i32, i32* %717, i64 0
  %719 = load i32, i32* %718, align 4
  %720 = load i32*, i32** @RR, align 8
  %721 = getelementptr inbounds i32, i32* %720, i64 0
  %722 = load i32, i32* %721, align 4
  %723 = add nsw i32 %719, %722
  store i32 %723, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %724

724:                                              ; preds = %775, %707
  %725 = load i32, i32* %19, align 4
  %726 = load i32, i32* %11, align 4
  %727 = icmp sle i32 %725, %726
  br i1 %727, label %728, label %778

728:                                              ; preds = %724
  %729 = load i32*, i32** @CC, align 8
  %730 = load i32, i32* %19, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i32, i32* %729, i64 %731
  %733 = load i32, i32* %732, align 4
  %734 = load i32*, i32** @RR, align 8
  %735 = load i32, i32* %19, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds i32, i32* %734, i64 %736
  %738 = load i32, i32* %737, align 4
  %739 = add nsw i32 %733, %738
  store i32 %739, i32* %20, align 4
  %740 = load i32, i32* %17, align 4
  %741 = icmp sge i32 %739, %740
  br i1 %741, label %742, label %774

742:                                              ; preds = %728
  %743 = load i32, i32* %20, align 4
  %744 = load i32, i32* %17, align 4
  %745 = icmp sgt i32 %743, %744
  br i1 %745, label %770, label %746

746:                                              ; preds = %742
  %747 = load i32*, i32** @CC, align 8
  %748 = load i32, i32* %19, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32, i32* %747, i64 %749
  %751 = load i32, i32* %750, align 4
  %752 = load i32*, i32** @DD, align 8
  %753 = load i32, i32* %19, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i32, i32* %752, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = icmp ne i32 %751, %756
  br i1 %757, label %758, label %773

758:                                              ; preds = %746
  %759 = load i32*, i32** @RR, align 8
  %760 = load i32, i32* %19, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds i32, i32* %759, i64 %761
  %763 = load i32, i32* %762, align 4
  %764 = load i32*, i32** @SS, align 8
  %765 = load i32, i32* %19, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, i32* %764, i64 %766
  %768 = load i32, i32* %767, align 4
  %769 = icmp eq i32 %763, %768
  br i1 %769, label %770, label %773

770:                                              ; preds = %758, %742
  %771 = load i32, i32* %20, align 4
  store i32 %771, i32* %17, align 4
  %772 = load i32, i32* %19, align 4
  store i32 %772, i32* %15, align 4
  br label %773

773:                                              ; preds = %770, %758, %746
  br label %774

774:                                              ; preds = %773, %728
  br label %775

775:                                              ; preds = %774
  %776 = load i32, i32* %19, align 4
  %777 = add nsw i32 %776, 1
  store i32 %777, i32* %19, align 4
  br label %724

778:                                              ; preds = %724
  %779 = load i32, i32* %11, align 4
  store i32 %779, i32* %19, align 4
  br label %780

780:                                              ; preds = %803, %778
  %781 = load i32, i32* %19, align 4
  %782 = icmp sge i32 %781, 0
  br i1 %782, label %783, label %806

783:                                              ; preds = %780
  %784 = load i32*, i32** @DD, align 8
  %785 = load i32, i32* %19, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds i32, i32* %784, i64 %786
  %788 = load i32, i32* %787, align 4
  %789 = load i32*, i32** @SS, align 8
  %790 = load i32, i32* %19, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds i32, i32* %789, i64 %791
  %793 = load i32, i32* %792, align 4
  %794 = add nsw i32 %788, %793
  %795 = load i32, i32* @q, align 4
  %796 = add nsw i32 %794, %795
  store i32 %796, i32* %20, align 4
  %797 = load i32, i32* %17, align 4
  %798 = icmp sgt i32 %796, %797
  br i1 %798, label %799, label %802

799:                                              ; preds = %783
  %800 = load i32, i32* %20, align 4
  store i32 %800, i32* %17, align 4
  %801 = load i32, i32* %19, align 4
  store i32 %801, i32* %15, align 4
  store i32 2, i32* %16, align 4
  br label %802

802:                                              ; preds = %799, %783
  br label %803

803:                                              ; preds = %802
  %804 = load i32, i32* %19, align 4
  %805 = add nsw i32 %804, -1
  store i32 %805, i32* %19, align 4
  br label %780

806:                                              ; preds = %780
  %807 = load i32, i32* %16, align 4
  %808 = icmp eq i32 %807, 1
  br i1 %808, label %809, label %834

809:                                              ; preds = %806
  %810 = load i8*, i8** %8, align 8
  %811 = load i8*, i8** %9, align 8
  %812 = load i32, i32* %14, align 4
  %813 = load i32, i32* %15, align 4
  %814 = load i32, i32* %12, align 4
  %815 = load i32, i32* @q, align 4
  %816 = call i32 @diff(i8* %810, i8* %811, i32 %812, i32 %813, i32 %814, i32 %815)
  %817 = load i8*, i8** %8, align 8
  %818 = load i32, i32* %14, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i8, i8* %817, i64 %819
  %821 = load i8*, i8** %9, align 8
  %822 = load i32, i32* %15, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds i8, i8* %821, i64 %823
  %825 = load i32, i32* %10, align 4
  %826 = load i32, i32* %14, align 4
  %827 = sub nsw i32 %825, %826
  %828 = load i32, i32* %11, align 4
  %829 = load i32, i32* %15, align 4
  %830 = sub nsw i32 %828, %829
  %831 = load i32, i32* @q, align 4
  %832 = load i32, i32* %13, align 4
  %833 = call i32 @diff(i8* %820, i8* %824, i32 %827, i32 %830, i32 %831, i32 %832)
  br label %877

834:                                              ; preds = %806
  %835 = load i8*, i8** %8, align 8
  %836 = load i8*, i8** %9, align 8
  %837 = load i32, i32* %14, align 4
  %838 = sub nsw i32 %837, 1
  %839 = load i32, i32* %15, align 4
  %840 = load i32, i32* %12, align 4
  %841 = load i32, i32* @zero, align 4
  %842 = call i32 @diff(i8* %835, i8* %836, i32 %838, i32 %839, i32 %840, i32 %841)
  %843 = load i32, i32* @I, align 4
  %844 = add nsw i32 %843, 2
  store i32 %844, i32* @I, align 4
  %845 = load i32, i32* @al_len, align 4
  %846 = add nsw i32 %845, 2
  store i32 %846, i32* @al_len, align 4
  %847 = load i32, i32* @last, align 4
  %848 = icmp slt i32 %847, 0
  br i1 %848, label %849, label %854

849:                                              ; preds = %834
  %850 = load i32*, i32** @sapp, align 8
  %851 = getelementptr inbounds i32, i32* %850, i64 -1
  %852 = load i32, i32* %851, align 4
  %853 = sub nsw i32 %852, 2
  store i32 %853, i32* %851, align 4
  store i32 %853, i32* @last, align 4
  br label %857

854:                                              ; preds = %834
  %855 = load i32*, i32** @sapp, align 8
  %856 = getelementptr inbounds i32, i32* %855, i32 1
  store i32* %856, i32** @sapp, align 8
  store i32 -2, i32* %855, align 4
  store i32 -2, i32* @last, align 4
  br label %857

857:                                              ; preds = %854, %849
  %858 = load i8*, i8** %8, align 8
  %859 = load i32, i32* %14, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i8, i8* %858, i64 %860
  %862 = getelementptr inbounds i8, i8* %861, i64 1
  %863 = load i8*, i8** %9, align 8
  %864 = load i32, i32* %15, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i8, i8* %863, i64 %865
  %867 = load i32, i32* %10, align 4
  %868 = load i32, i32* %14, align 4
  %869 = sub nsw i32 %867, %868
  %870 = sub nsw i32 %869, 1
  %871 = load i32, i32* %11, align 4
  %872 = load i32, i32* %15, align 4
  %873 = sub nsw i32 %871, %872
  %874 = load i32, i32* @zero, align 4
  %875 = load i32, i32* %13, align 4
  %876 = call i32 @diff(i8* %862, i8* %866, i32 %870, i32 %873, i32 %874, i32 %875)
  br label %877

877:                                              ; preds = %857, %809
  %878 = load i32, i32* %17, align 4
  store i32 %878, i32* %7, align 4
  br label %879

879:                                              ; preds = %877, %360, %101, %62
  %880 = load i32, i32* %7, align 4
  ret i32 %880
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @display(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %24, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i64 0, i64 0), i8** %18, align 8
  br label %30

30:                                               ; preds = %198, %7
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %199

40:                                               ; preds = %38
  %41 = load i32, i32* %21, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %114

43:                                               ; preds = %40
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %114

47:                                               ; preds = %43
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %13, align 8
  %50 = load i32, i32* %48, align 4
  store i32 %50, i32* %21, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %16, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %17, align 8
  store i8 %63, i8* %64, align 1
  %65 = load i8*, i8** %16, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %16, align 8
  %67 = load i8, i8* %65, align 1
  store i8 %67, i8* %25, align 1
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %17, align 8
  %70 = load i8, i8* %68, align 1
  store i8 %70, i8* %26, align 1
  store i8 32, i8* %27, align 1
  %71 = load i8, i8* %25, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* %26, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %47
  store i8 124, i8* %27, align 1
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i8, i8* %25, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 65
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8, i8* %26, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 71
  br i1 %84, label %109, label %85

85:                                               ; preds = %81, %77
  %86 = load i8, i8* %25, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 67
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8, i8* %26, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 84
  br i1 %92, label %109, label %93

93:                                               ; preds = %89, %85
  %94 = load i8, i8* %25, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 71
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8, i8* %26, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 65
  br i1 %100, label %109, label %101

101:                                              ; preds = %97, %93
  %102 = load i8, i8* %25, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 84
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8, i8* %26, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 67
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %97, %89, %81
  store i8 58, i8* %27, align 1
  br label %110

110:                                              ; preds = %109, %105, %101
  %111 = load i8, i8* %27, align 1
  %112 = load i8*, i8** %18, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %18, align 8
  store i8 %111, i8* %112, align 1
  br label %153

114:                                              ; preds = %43, %40
  %115 = load i32, i32* %21, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32*, i32** %13, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %13, align 8
  %120 = load i32, i32* %118, align 4
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %21, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %16, align 8
  store i8 32, i8* %125, align 1
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %17, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %17, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %21, align 4
  br label %150

137:                                              ; preds = %121
  %138 = load i8*, i8** %9, align 8
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %16, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %16, align 8
  store i8 %143, i8* %144, align 1
  %146 = load i8*, i8** %17, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %17, align 8
  store i8 32, i8* %146, align 1
  %148 = load i32, i32* %21, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %21, align 4
  br label %150

150:                                              ; preds = %137, %124
  %151 = load i8*, i8** %18, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %18, align 8
  store i8 45, i8* %151, align 1
  br label %153

153:                                              ; preds = %150, %110
  %154 = load i8*, i8** %16, align 8
  %155 = icmp uge i8* %154, getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 50)
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %198

160:                                              ; preds = %156
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %198

164:                                              ; preds = %160, %153
  %165 = load i8*, i8** %18, align 8
  store i8 0, i8* %165, align 1
  %166 = load i8*, i8** %17, align 8
  store i8 0, i8* %166, align 1
  %167 = load i8*, i8** %16, align 8
  store i8 0, i8* %167, align 1
  %168 = load i32, i32* %22, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %22, align 4
  %170 = mul nsw i32 50, %168
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 %170)
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 10), i8** %17, align 8
  br label %172

172:                                              ; preds = %178, %164
  %173 = load i8*, i8** %17, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = icmp ule i8* %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176
  %179 = load i8*, i8** %17, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 10
  store i8* %180, i8** %17, align 8
  br label %172

181:                                              ; preds = %172
  %182 = load i8*, i8** %17, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 5
  %185 = icmp ule i8* %182, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %181
  %189 = load i32, i32* %23, align 4
  %190 = load i32, i32* %24, align 4
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i32 %189, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i64 0, i64 0), i32 %190, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i64 0, i64 0))
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %192, %193
  store i32 %194, i32* %23, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %195, %196
  store i32 %197, i32* %24, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i64 0, i64 0), i8** %18, align 8
  br label %198

198:                                              ; preds = %188, %160, %156
  br label %30

199:                                              ; preds = %38
  %200 = load i32, i32* %8, align 4
  ret i32 %200
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @locate(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
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
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %26 = load i32, i32* @nn, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %80, %3
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @n1, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  %32 = load i32*, i32** @CC, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** @EE, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @q, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32*, i32** @DD, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** @FF, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %58, label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @mm, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54, %31
  %59 = load i32, i32* @mm, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32*, i32** @SS, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32*, i32** @RR, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %60, i32* %68, align 4
  br label %79

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** @SS, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32*, i32** @RR, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %70, i32* %78, align 4
  br label %79

79:                                               ; preds = %69, %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %9, align 4
  br label %27

83:                                               ; preds = %27
  %84 = load i32, i32* @mm, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %453, %83
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @m1, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %456

89:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  %90 = load i32, i32* @q, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %18, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* @nn, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  store i32 %96, i32* %19, align 4
  store i32 %96, i32* %15, align 4
  %97 = load [256 x i32]*, [256 x i32]** @v, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i64
  %104 = getelementptr inbounds [256 x i32], [256 x i32]* %97, i64 %103
  %105 = getelementptr inbounds [256 x i32], [256 x i32]* %104, i64 0, i64 0
  store i32* %105, i32** %24, align 8
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %112, label %108

108:                                              ; preds = %89
  %109 = load i32, i32* @n1, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %89
  %113 = load i32, i32* @n1, align 4
  store i32 %113, i32* %25, align 4
  br label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %25, align 4
  br label %117

117:                                              ; preds = %114, %112
  %118 = load i32, i32* @nn, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %387, %117
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %25, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %390

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @r, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @qr, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %19, align 4
  br label %161

137:                                              ; preds = %123
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %137
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %19, align 4
  br label %159

148:                                              ; preds = %141
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %19, align 4
  br label %158

158:                                              ; preds = %156, %152, %148
  br label %159

159:                                              ; preds = %158, %145
  br label %160

160:                                              ; preds = %159, %137
  br label %161

161:                                              ; preds = %160, %133
  %162 = load i32*, i32** @CC, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @qr, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %10, align 4
  %169 = load i32*, i32** @RR, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %14, align 4
  %174 = load i32*, i32** @EE, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %15, align 4
  %179 = load i32*, i32** @DD, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @r, align 4
  %185 = sub nsw i32 %183, %184
  store i32 %185, i32* %12, align 4
  %186 = load i32*, i32** @SS, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %16, align 4
  %191 = load i32*, i32** @FF, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %161
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %15, align 4
  store i32 %202, i32* %17, align 4
  br label %227

203:                                              ; preds = %161
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %14, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %15, align 4
  store i32 %213, i32* %17, align 4
  br label %225

214:                                              ; preds = %207
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* %15, align 4
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %222, %218, %214
  br label %225

225:                                              ; preds = %224, %211
  br label %226

226:                                              ; preds = %225, %203
  br label %227

227:                                              ; preds = %226, %199
  store i32 0, i32* %10, align 4
  store i16 1, i16* @tt, align 2
  %228 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.ONE*, %struct.ONE** %228, i64 %230
  %232 = load %struct.ONE*, %struct.ONE** %231, align 8
  store %struct.ONE* %232, %struct.ONE** @z, align 8
  br label %233

233:                                              ; preds = %244, %227
  %234 = load %struct.ONE*, %struct.ONE** @z, align 8
  %235 = icmp ne %struct.ONE* %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %233
  %237 = load %struct.ONE*, %struct.ONE** @z, align 8
  %238 = getelementptr inbounds %struct.ONE, %struct.ONE* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i16 0, i16* @tt, align 2
  br label %248

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243
  %245 = load %struct.ONE*, %struct.ONE** @z, align 8
  %246 = getelementptr inbounds %struct.ONE, %struct.ONE* %245, i32 0, i32 1
  %247 = load %struct.ONE*, %struct.ONE** %246, align 8
  store %struct.ONE* %247, %struct.ONE** @z, align 8
  br label %233

248:                                              ; preds = %242, %233
  %249 = load i16, i16* @tt, align 2
  %250 = icmp ne i16 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = load i32, i32* %13, align 4
  %253 = load i32*, i32** %24, align 8
  %254 = load i8*, i8** %6, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i64
  %260 = getelementptr inbounds i32, i32* %253, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %252, %261
  store i32 %262, i32* %10, align 4
  br label %263

263:                                              ; preds = %251, %248
  %264 = load i32, i32* %10, align 4
  %265 = icmp sle i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  store i32 0, i32* %10, align 4
  %267 = load i32, i32* %8, align 4
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* %9, align 4
  store i32 %268, i32* %15, align 4
  br label %272

269:                                              ; preds = %263
  %270 = load i32, i32* %20, align 4
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %21, align 4
  store i32 %271, i32* %15, align 4
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %12, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i32, i32* %12, align 4
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %17, align 4
  store i32 %279, i32* %15, align 4
  br label %304

280:                                              ; preds = %272
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %12, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %303

284:                                              ; preds = %280
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load i32, i32* %16, align 4
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %17, align 4
  store i32 %290, i32* %15, align 4
  br label %302

291:                                              ; preds = %284
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %16, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %17, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = load i32, i32* %17, align 4
  store i32 %300, i32* %15, align 4
  br label %301

301:                                              ; preds = %299, %295, %291
  br label %302

302:                                              ; preds = %301, %288
  br label %303

303:                                              ; preds = %302, %280
  br label %304

304:                                              ; preds = %303, %276
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* %11, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load i32, i32* %11, align 4
  store i32 %309, i32* %10, align 4
  %310 = load i32, i32* %18, align 4
  store i32 %310, i32* %14, align 4
  %311 = load i32, i32* %19, align 4
  store i32 %311, i32* %15, align 4
  br label %336

312:                                              ; preds = %304
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* %11, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %335

316:                                              ; preds = %312
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %18, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load i32, i32* %18, align 4
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %19, align 4
  store i32 %322, i32* %15, align 4
  br label %334

323:                                              ; preds = %316
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %18, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %323
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %19, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = load i32, i32* %19, align 4
  store i32 %332, i32* %15, align 4
  br label %333

333:                                              ; preds = %331, %327, %323
  br label %334

334:                                              ; preds = %333, %320
  br label %335

335:                                              ; preds = %334, %312
  br label %336

336:                                              ; preds = %335, %308
  %337 = load i32*, i32** @CC, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %13, align 4
  %342 = load i32, i32* %10, align 4
  %343 = load i32*, i32** @CC, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %342, i32* %346, align 4
  %347 = load i32*, i32** @RR, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %20, align 4
  %352 = load i32*, i32** @EE, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  store i32 %356, i32* %21, align 4
  %357 = load i32, i32* %14, align 4
  %358 = load i32*, i32** @RR, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 %357, i32* %361, align 4
  %362 = load i32, i32* %15, align 4
  %363 = load i32*, i32** @EE, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  store i32 %362, i32* %366, align 4
  %367 = load i32, i32* %12, align 4
  %368 = load i32*, i32** @DD, align 8
  %369 = load i32, i32* %9, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %367, i32* %371, align 4
  %372 = load i32, i32* %16, align 4
  %373 = load i32*, i32** @SS, align 8
  %374 = load i32, i32* %9, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  store i32 %372, i32* %376, align 4
  %377 = load i32, i32* %17, align 4
  %378 = load i32*, i32** @FF, align 8
  %379 = load i32, i32* %9, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %377, i32* %381, align 4
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* @min, align 4
  %384 = icmp sgt i32 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %336
  store i16 1, i16* @flag, align 2
  br label %386

386:                                              ; preds = %385, %336
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %9, align 4
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* %9, align 4
  br label %119

390:                                              ; preds = %119
  %391 = load i32, i32* %7, align 4
  %392 = icmp eq i32 %391, 2
  br i1 %392, label %397, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %8, align 4
  %395 = load i32, i32* @n1, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %452

397:                                              ; preds = %393, %390
  %398 = load i32*, i32** @CC, align 8
  %399 = load i32, i32* @n1, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load i32*, i32** @HH, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 %402, i32* %406, align 4
  %407 = load i32*, i32** @RR, align 8
  %408 = load i32, i32* @n1, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load i32*, i32** @II, align 8
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  store i32 %411, i32* %415, align 4
  %416 = load i32*, i32** @EE, align 8
  %417 = load i32, i32* @n1, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load i32*, i32** @JJ, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  store i32 %420, i32* %424, align 4
  %425 = load i32*, i32** @DD, align 8
  %426 = load i32, i32* @n1, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load i32*, i32** @WW, align 8
  %431 = load i32, i32* %8, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  store i32 %429, i32* %433, align 4
  %434 = load i32*, i32** @SS, align 8
  %435 = load i32, i32* @n1, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load i32*, i32** @XX, align 8
  %440 = load i32, i32* %8, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  store i32 %438, i32* %442, align 4
  %443 = load i32*, i32** @FF, align 8
  %444 = load i32, i32* @n1, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load i32*, i32** @YY, align 8
  %449 = load i32, i32* %8, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  store i32 %447, i32* %451, align 4
  br label %452

452:                                              ; preds = %397, %393
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %8, align 4
  %455 = add nsw i32 %454, -1
  store i32 %455, i32* %8, align 4
  br label %85

456:                                              ; preds = %85
  %457 = load i32, i32* @m1, align 4
  store i32 %457, i32* @rl, align 4
  %458 = load i32, i32* @n1, align 4
  store i32 %458, i32* @cl, align 4
  br label %459

459:                                              ; preds = %1347, %456
  store i16 1, i16* %22, align 2
  store i16 1, i16* %23, align 2
  br label %460

460:                                              ; preds = %1336, %459
  %461 = load i16, i16* %23, align 2
  %462 = sext i16 %461 to i32
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %460
  %465 = load i32, i32* @m1, align 4
  %466 = icmp sgt i32 %465, 1
  br i1 %466, label %476, label %467

467:                                              ; preds = %464, %460
  %468 = load i16, i16* %22, align 2
  %469 = sext i16 %468 to i32
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %467
  %472 = load i32, i32* @n1, align 4
  %473 = icmp sgt i32 %472, 1
  br label %474

474:                                              ; preds = %471, %467
  %475 = phi i1 [ false, %467 ], [ %473, %471 ]
  br label %476

476:                                              ; preds = %474, %464
  %477 = phi i1 [ true, %464 ], [ %475, %474 ]
  br i1 %477, label %478, label %1337

478:                                              ; preds = %476
  %479 = load i16, i16* %23, align 2
  %480 = sext i16 %479 to i32
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %887

482:                                              ; preds = %478
  %483 = load i32, i32* @m1, align 4
  %484 = icmp sgt i32 %483, 1
  br i1 %484, label %485, label %887

485:                                              ; preds = %482
  store i16 0, i16* %23, align 2
  %486 = load i32, i32* @m1, align 4
  %487 = add nsw i32 %486, -1
  store i32 %487, i32* @m1, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  %488 = load i32, i32* @q, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %11, align 4
  %490 = load i32, i32* @m1, align 4
  store i32 %490, i32* %18, align 4
  store i32 %490, i32* %14, align 4
  %491 = load i32, i32* @m1, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %20, align 4
  %493 = load i32, i32* @nn, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %21, align 4
  store i32 %494, i32* %19, align 4
  store i32 %494, i32* %15, align 4
  %495 = load [256 x i32]*, [256 x i32]** @v, align 8
  %496 = load i8*, i8** %5, align 8
  %497 = load i32, i32* @m1, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8, i8* %496, i64 %498
  %500 = load i8, i8* %499, align 1
  %501 = sext i8 %500 to i64
  %502 = getelementptr inbounds [256 x i32], [256 x i32]* %495, i64 %501
  %503 = getelementptr inbounds [256 x i32], [256 x i32]* %502, i64 0, i64 0
  store i32* %503, i32** %24, align 8
  %504 = load i32, i32* @nn, align 4
  store i32 %504, i32* %9, align 4
  br label %505

505:                                              ; preds = %801, %485
  %506 = load i32, i32* %9, align 4
  %507 = load i32, i32* @n1, align 4
  %508 = icmp sge i32 %506, %507
  br i1 %508, label %509, label %804

509:                                              ; preds = %505
  %510 = load i32, i32* %11, align 4
  %511 = load i32, i32* @r, align 4
  %512 = sub nsw i32 %510, %511
  store i32 %512, i32* %11, align 4
  %513 = load i32, i32* %10, align 4
  %514 = load i32, i32* @qr, align 4
  %515 = sub nsw i32 %513, %514
  store i32 %515, i32* %10, align 4
  %516 = load i32, i32* %11, align 4
  %517 = load i32, i32* %10, align 4
  %518 = icmp slt i32 %516, %517
  br i1 %518, label %519, label %523

519:                                              ; preds = %509
  %520 = load i32, i32* %10, align 4
  store i32 %520, i32* %11, align 4
  %521 = load i32, i32* %14, align 4
  store i32 %521, i32* %18, align 4
  %522 = load i32, i32* %15, align 4
  store i32 %522, i32* %19, align 4
  br label %547

523:                                              ; preds = %509
  %524 = load i32, i32* %11, align 4
  %525 = load i32, i32* %10, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %546

527:                                              ; preds = %523
  %528 = load i32, i32* %18, align 4
  %529 = load i32, i32* %14, align 4
  %530 = icmp slt i32 %528, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %527
  %532 = load i32, i32* %14, align 4
  store i32 %532, i32* %18, align 4
  %533 = load i32, i32* %15, align 4
  store i32 %533, i32* %19, align 4
  br label %545

534:                                              ; preds = %527
  %535 = load i32, i32* %18, align 4
  %536 = load i32, i32* %14, align 4
  %537 = icmp eq i32 %535, %536
  br i1 %537, label %538, label %544

538:                                              ; preds = %534
  %539 = load i32, i32* %19, align 4
  %540 = load i32, i32* %15, align 4
  %541 = icmp slt i32 %539, %540
  br i1 %541, label %542, label %544

542:                                              ; preds = %538
  %543 = load i32, i32* %15, align 4
  store i32 %543, i32* %19, align 4
  br label %544

544:                                              ; preds = %542, %538, %534
  br label %545

545:                                              ; preds = %544, %531
  br label %546

546:                                              ; preds = %545, %523
  br label %547

547:                                              ; preds = %546, %519
  %548 = load i32*, i32** @CC, align 8
  %549 = load i32, i32* %9, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* @qr, align 4
  %554 = sub nsw i32 %552, %553
  store i32 %554, i32* %10, align 4
  %555 = load i32*, i32** @RR, align 8
  %556 = load i32, i32* %9, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %555, i64 %557
  %559 = load i32, i32* %558, align 4
  store i32 %559, i32* %14, align 4
  %560 = load i32*, i32** @EE, align 8
  %561 = load i32, i32* %9, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %560, i64 %562
  %564 = load i32, i32* %563, align 4
  store i32 %564, i32* %15, align 4
  %565 = load i32*, i32** @DD, align 8
  %566 = load i32, i32* %9, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, i32* %565, i64 %567
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* @r, align 4
  %571 = sub nsw i32 %569, %570
  store i32 %571, i32* %12, align 4
  %572 = load i32*, i32** @SS, align 8
  %573 = load i32, i32* %9, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  store i32 %576, i32* %16, align 4
  %577 = load i32*, i32** @FF, align 8
  %578 = load i32, i32* %9, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  %581 = load i32, i32* %580, align 4
  store i32 %581, i32* %17, align 4
  %582 = load i32, i32* %12, align 4
  %583 = load i32, i32* %10, align 4
  %584 = icmp slt i32 %582, %583
  br i1 %584, label %585, label %589

585:                                              ; preds = %547
  %586 = load i32, i32* %10, align 4
  store i32 %586, i32* %12, align 4
  %587 = load i32, i32* %14, align 4
  store i32 %587, i32* %16, align 4
  %588 = load i32, i32* %15, align 4
  store i32 %588, i32* %17, align 4
  br label %613

589:                                              ; preds = %547
  %590 = load i32, i32* %12, align 4
  %591 = load i32, i32* %10, align 4
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %593, label %612

593:                                              ; preds = %589
  %594 = load i32, i32* %16, align 4
  %595 = load i32, i32* %14, align 4
  %596 = icmp slt i32 %594, %595
  br i1 %596, label %597, label %600

597:                                              ; preds = %593
  %598 = load i32, i32* %14, align 4
  store i32 %598, i32* %16, align 4
  %599 = load i32, i32* %15, align 4
  store i32 %599, i32* %17, align 4
  br label %611

600:                                              ; preds = %593
  %601 = load i32, i32* %16, align 4
  %602 = load i32, i32* %14, align 4
  %603 = icmp eq i32 %601, %602
  br i1 %603, label %604, label %610

604:                                              ; preds = %600
  %605 = load i32, i32* %17, align 4
  %606 = load i32, i32* %15, align 4
  %607 = icmp slt i32 %605, %606
  br i1 %607, label %608, label %610

608:                                              ; preds = %604
  %609 = load i32, i32* %15, align 4
  store i32 %609, i32* %17, align 4
  br label %610

610:                                              ; preds = %608, %604, %600
  br label %611

611:                                              ; preds = %610, %597
  br label %612

612:                                              ; preds = %611, %589
  br label %613

613:                                              ; preds = %612, %585
  store i32 0, i32* %10, align 4
  store i16 1, i16* @tt, align 2
  %614 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %615 = load i32, i32* @m1, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.ONE*, %struct.ONE** %614, i64 %616
  %618 = load %struct.ONE*, %struct.ONE** %617, align 8
  store %struct.ONE* %618, %struct.ONE** @z, align 8
  br label %619

619:                                              ; preds = %630, %613
  %620 = load %struct.ONE*, %struct.ONE** @z, align 8
  %621 = icmp ne %struct.ONE* %620, null
  br i1 %621, label %622, label %634

622:                                              ; preds = %619
  %623 = load %struct.ONE*, %struct.ONE** @z, align 8
  %624 = getelementptr inbounds %struct.ONE, %struct.ONE* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* %9, align 4
  %627 = icmp eq i32 %625, %626
  br i1 %627, label %628, label %629

628:                                              ; preds = %622
  store i16 0, i16* @tt, align 2
  br label %634

629:                                              ; preds = %622
  br label %630

630:                                              ; preds = %629
  %631 = load %struct.ONE*, %struct.ONE** @z, align 8
  %632 = getelementptr inbounds %struct.ONE, %struct.ONE* %631, i32 0, i32 1
  %633 = load %struct.ONE*, %struct.ONE** %632, align 8
  store %struct.ONE* %633, %struct.ONE** @z, align 8
  br label %619

634:                                              ; preds = %628, %619
  %635 = load i16, i16* @tt, align 2
  %636 = icmp ne i16 %635, 0
  br i1 %636, label %637, label %649

637:                                              ; preds = %634
  %638 = load i32, i32* %13, align 4
  %639 = load i32*, i32** %24, align 8
  %640 = load i8*, i8** %6, align 8
  %641 = load i32, i32* %9, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8, i8* %640, i64 %642
  %644 = load i8, i8* %643, align 1
  %645 = sext i8 %644 to i64
  %646 = getelementptr inbounds i32, i32* %639, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = add nsw i32 %638, %647
  store i32 %648, i32* %10, align 4
  br label %649

649:                                              ; preds = %637, %634
  %650 = load i32, i32* %10, align 4
  %651 = icmp sle i32 %650, 0
  br i1 %651, label %652, label %655

652:                                              ; preds = %649
  store i32 0, i32* %10, align 4
  %653 = load i32, i32* @m1, align 4
  store i32 %653, i32* %14, align 4
  %654 = load i32, i32* %9, align 4
  store i32 %654, i32* %15, align 4
  br label %658

655:                                              ; preds = %649
  %656 = load i32, i32* %20, align 4
  store i32 %656, i32* %14, align 4
  %657 = load i32, i32* %21, align 4
  store i32 %657, i32* %15, align 4
  br label %658

658:                                              ; preds = %655, %652
  %659 = load i32, i32* %10, align 4
  %660 = load i32, i32* %12, align 4
  %661 = icmp slt i32 %659, %660
  br i1 %661, label %662, label %666

662:                                              ; preds = %658
  %663 = load i32, i32* %12, align 4
  store i32 %663, i32* %10, align 4
  %664 = load i32, i32* %16, align 4
  store i32 %664, i32* %14, align 4
  %665 = load i32, i32* %17, align 4
  store i32 %665, i32* %15, align 4
  br label %690

666:                                              ; preds = %658
  %667 = load i32, i32* %10, align 4
  %668 = load i32, i32* %12, align 4
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %689

670:                                              ; preds = %666
  %671 = load i32, i32* %14, align 4
  %672 = load i32, i32* %16, align 4
  %673 = icmp slt i32 %671, %672
  br i1 %673, label %674, label %677

674:                                              ; preds = %670
  %675 = load i32, i32* %16, align 4
  store i32 %675, i32* %14, align 4
  %676 = load i32, i32* %17, align 4
  store i32 %676, i32* %15, align 4
  br label %688

677:                                              ; preds = %670
  %678 = load i32, i32* %14, align 4
  %679 = load i32, i32* %16, align 4
  %680 = icmp eq i32 %678, %679
  br i1 %680, label %681, label %687

681:                                              ; preds = %677
  %682 = load i32, i32* %15, align 4
  %683 = load i32, i32* %17, align 4
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %687

685:                                              ; preds = %681
  %686 = load i32, i32* %17, align 4
  store i32 %686, i32* %15, align 4
  br label %687

687:                                              ; preds = %685, %681, %677
  br label %688

688:                                              ; preds = %687, %674
  br label %689

689:                                              ; preds = %688, %666
  br label %690

690:                                              ; preds = %689, %662
  %691 = load i32, i32* %10, align 4
  %692 = load i32, i32* %11, align 4
  %693 = icmp slt i32 %691, %692
  br i1 %693, label %694, label %698

694:                                              ; preds = %690
  %695 = load i32, i32* %11, align 4
  store i32 %695, i32* %10, align 4
  %696 = load i32, i32* %18, align 4
  store i32 %696, i32* %14, align 4
  %697 = load i32, i32* %19, align 4
  store i32 %697, i32* %15, align 4
  br label %722

698:                                              ; preds = %690
  %699 = load i32, i32* %10, align 4
  %700 = load i32, i32* %11, align 4
  %701 = icmp eq i32 %699, %700
  br i1 %701, label %702, label %721

702:                                              ; preds = %698
  %703 = load i32, i32* %14, align 4
  %704 = load i32, i32* %18, align 4
  %705 = icmp slt i32 %703, %704
  br i1 %705, label %706, label %709

706:                                              ; preds = %702
  %707 = load i32, i32* %18, align 4
  store i32 %707, i32* %14, align 4
  %708 = load i32, i32* %19, align 4
  store i32 %708, i32* %15, align 4
  br label %720

709:                                              ; preds = %702
  %710 = load i32, i32* %14, align 4
  %711 = load i32, i32* %18, align 4
  %712 = icmp eq i32 %710, %711
  br i1 %712, label %713, label %719

713:                                              ; preds = %709
  %714 = load i32, i32* %15, align 4
  %715 = load i32, i32* %19, align 4
  %716 = icmp slt i32 %714, %715
  br i1 %716, label %717, label %719

717:                                              ; preds = %713
  %718 = load i32, i32* %19, align 4
  store i32 %718, i32* %15, align 4
  br label %719

719:                                              ; preds = %717, %713, %709
  br label %720

720:                                              ; preds = %719, %706
  br label %721

721:                                              ; preds = %720, %698
  br label %722

722:                                              ; preds = %721, %694
  %723 = load i32*, i32** @CC, align 8
  %724 = load i32, i32* %9, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, i32* %723, i64 %725
  %727 = load i32, i32* %726, align 4
  store i32 %727, i32* %13, align 4
  %728 = load i32, i32* %10, align 4
  %729 = load i32*, i32** @CC, align 8
  %730 = load i32, i32* %9, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i32, i32* %729, i64 %731
  store i32 %728, i32* %732, align 4
  %733 = load i32*, i32** @RR, align 8
  %734 = load i32, i32* %9, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %733, i64 %735
  %737 = load i32, i32* %736, align 4
  store i32 %737, i32* %20, align 4
  %738 = load i32*, i32** @EE, align 8
  %739 = load i32, i32* %9, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i32, i32* %738, i64 %740
  %742 = load i32, i32* %741, align 4
  store i32 %742, i32* %21, align 4
  %743 = load i32, i32* %14, align 4
  %744 = load i32*, i32** @RR, align 8
  %745 = load i32, i32* %9, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds i32, i32* %744, i64 %746
  store i32 %743, i32* %747, align 4
  %748 = load i32, i32* %15, align 4
  %749 = load i32*, i32** @EE, align 8
  %750 = load i32, i32* %9, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds i32, i32* %749, i64 %751
  store i32 %748, i32* %752, align 4
  %753 = load i32, i32* %12, align 4
  %754 = load i32*, i32** @DD, align 8
  %755 = load i32, i32* %9, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i32, i32* %754, i64 %756
  store i32 %753, i32* %757, align 4
  %758 = load i32, i32* %16, align 4
  %759 = load i32*, i32** @SS, align 8
  %760 = load i32, i32* %9, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds i32, i32* %759, i64 %761
  store i32 %758, i32* %762, align 4
  %763 = load i32, i32* %17, align 4
  %764 = load i32*, i32** @FF, align 8
  %765 = load i32, i32* %9, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, i32* %764, i64 %766
  store i32 %763, i32* %767, align 4
  %768 = load i32, i32* %10, align 4
  %769 = load i32, i32* @min, align 4
  %770 = icmp sgt i32 %768, %769
  br i1 %770, label %771, label %772

771:                                              ; preds = %722
  store i16 1, i16* @flag, align 2
  br label %772

772:                                              ; preds = %771, %722
  %773 = load i16, i16* %23, align 2
  %774 = icmp ne i16 %773, 0
  br i1 %774, label %800, label %775

775:                                              ; preds = %772
  %776 = load i32, i32* %14, align 4
  %777 = load i32, i32* @rl, align 4
  %778 = icmp sgt i32 %776, %777
  br i1 %778, label %779, label %783

779:                                              ; preds = %775
  %780 = load i32, i32* %15, align 4
  %781 = load i32, i32* @cl, align 4
  %782 = icmp sgt i32 %780, %781
  br i1 %782, label %799, label %783

783:                                              ; preds = %779, %775
  %784 = load i32, i32* %16, align 4
  %785 = load i32, i32* @rl, align 4
  %786 = icmp sgt i32 %784, %785
  br i1 %786, label %787, label %791

787:                                              ; preds = %783
  %788 = load i32, i32* %17, align 4
  %789 = load i32, i32* @cl, align 4
  %790 = icmp sgt i32 %788, %789
  br i1 %790, label %799, label %791

791:                                              ; preds = %787, %783
  %792 = load i32, i32* %18, align 4
  %793 = load i32, i32* @rl, align 4
  %794 = icmp sgt i32 %792, %793
  br i1 %794, label %795, label %800

795:                                              ; preds = %791
  %796 = load i32, i32* %19, align 4
  %797 = load i32, i32* @cl, align 4
  %798 = icmp sgt i32 %796, %797
  br i1 %798, label %799, label %800

799:                                              ; preds = %795, %787, %779
  store i16 1, i16* %23, align 2
  br label %800

800:                                              ; preds = %799, %795, %791, %772
  br label %801

801:                                              ; preds = %800
  %802 = load i32, i32* %9, align 4
  %803 = add nsw i32 %802, -1
  store i32 %803, i32* %9, align 4
  br label %505

804:                                              ; preds = %505
  %805 = load i32*, i32** @CC, align 8
  %806 = load i32, i32* @n1, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds i32, i32* %805, i64 %807
  %809 = load i32, i32* %808, align 4
  %810 = load i32*, i32** @HH, align 8
  %811 = load i32, i32* @m1, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i32, i32* %810, i64 %812
  store i32 %809, i32* %813, align 4
  %814 = load i32*, i32** @RR, align 8
  %815 = load i32, i32* @n1, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i32, i32* %814, i64 %816
  %818 = load i32, i32* %817, align 4
  %819 = load i32*, i32** @II, align 8
  %820 = load i32, i32* @m1, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i32, i32* %819, i64 %821
  store i32 %818, i32* %822, align 4
  %823 = load i32*, i32** @EE, align 8
  %824 = load i32, i32* @n1, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i32, i32* %823, i64 %825
  %827 = load i32, i32* %826, align 4
  %828 = load i32*, i32** @JJ, align 8
  %829 = load i32, i32* @m1, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds i32, i32* %828, i64 %830
  store i32 %827, i32* %831, align 4
  %832 = load i32*, i32** @DD, align 8
  %833 = load i32, i32* @n1, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i32, i32* %832, i64 %834
  %836 = load i32, i32* %835, align 4
  %837 = load i32*, i32** @WW, align 8
  %838 = load i32, i32* @m1, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds i32, i32* %837, i64 %839
  store i32 %836, i32* %840, align 4
  %841 = load i32*, i32** @SS, align 8
  %842 = load i32, i32* @n1, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i32, i32* %841, i64 %843
  %845 = load i32, i32* %844, align 4
  %846 = load i32*, i32** @XX, align 8
  %847 = load i32, i32* @m1, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds i32, i32* %846, i64 %848
  store i32 %845, i32* %849, align 4
  %850 = load i32*, i32** @FF, align 8
  %851 = load i32, i32* @n1, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32, i32* %850, i64 %852
  %854 = load i32, i32* %853, align 4
  %855 = load i32*, i32** @YY, align 8
  %856 = load i32, i32* @m1, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds i32, i32* %855, i64 %857
  store i32 %854, i32* %858, align 4
  %859 = load i16, i16* %22, align 2
  %860 = icmp ne i16 %859, 0
  br i1 %860, label %886, label %861

861:                                              ; preds = %804
  %862 = load i32, i32* %14, align 4
  %863 = load i32, i32* @rl, align 4
  %864 = icmp sgt i32 %862, %863
  br i1 %864, label %865, label %869

865:                                              ; preds = %861
  %866 = load i32, i32* %15, align 4
  %867 = load i32, i32* @cl, align 4
  %868 = icmp sgt i32 %866, %867
  br i1 %868, label %885, label %869

869:                                              ; preds = %865, %861
  %870 = load i32, i32* %16, align 4
  %871 = load i32, i32* @rl, align 4
  %872 = icmp sgt i32 %870, %871
  br i1 %872, label %873, label %877

873:                                              ; preds = %869
  %874 = load i32, i32* %17, align 4
  %875 = load i32, i32* @cl, align 4
  %876 = icmp sgt i32 %874, %875
  br i1 %876, label %885, label %877

877:                                              ; preds = %873, %869
  %878 = load i32, i32* %18, align 4
  %879 = load i32, i32* @rl, align 4
  %880 = icmp sgt i32 %878, %879
  br i1 %880, label %881, label %886

881:                                              ; preds = %877
  %882 = load i32, i32* %19, align 4
  %883 = load i32, i32* @cl, align 4
  %884 = icmp sgt i32 %882, %883
  br i1 %884, label %885, label %886

885:                                              ; preds = %881, %873, %865
  store i16 1, i16* %22, align 2
  br label %886

886:                                              ; preds = %885, %881, %877, %804
  br label %887

887:                                              ; preds = %886, %482, %478
  %888 = load i32, i32* %7, align 4
  %889 = icmp eq i32 %888, 1
  br i1 %889, label %890, label %899

890:                                              ; preds = %887
  %891 = load i32, i32* @n1, align 4
  %892 = load i32, i32* @m1, align 4
  %893 = add nsw i32 %892, 1
  %894 = icmp eq i32 %891, %893
  br i1 %894, label %895, label %899

895:                                              ; preds = %890
  %896 = load i16, i16* %23, align 2
  %897 = icmp ne i16 %896, 0
  br i1 %897, label %899, label %898

898:                                              ; preds = %895
  store i16 0, i16* %22, align 2
  br label %899

899:                                              ; preds = %898, %895, %890, %887
  %900 = load i16, i16* %22, align 2
  %901 = sext i16 %900 to i32
  %902 = icmp ne i32 %901, 0
  br i1 %902, label %903, label %1336

903:                                              ; preds = %899
  %904 = load i32, i32* @n1, align 4
  %905 = icmp sgt i32 %904, 1
  br i1 %905, label %906, label %1336

906:                                              ; preds = %903
  store i16 0, i16* %22, align 2
  %907 = load i32, i32* @n1, align 4
  %908 = add nsw i32 %907, -1
  store i32 %908, i32* @n1, align 4
  store i32 0, i32* %10, align 4
  %909 = load i32, i32* @q, align 4
  %910 = sub nsw i32 0, %909
  store i32 %910, i32* %11, align 4
  %911 = load i32, i32* @n1, align 4
  store i32 %911, i32* %19, align 4
  store i32 %911, i32* %15, align 4
  %912 = load [256 x i32]*, [256 x i32]** @v, align 8
  %913 = load i8*, i8** %6, align 8
  %914 = load i32, i32* @n1, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds i8, i8* %913, i64 %915
  %917 = load i8, i8* %916, align 1
  %918 = sext i8 %917 to i64
  %919 = getelementptr inbounds [256 x i32], [256 x i32]* %912, i64 %918
  %920 = getelementptr inbounds [256 x i32], [256 x i32]* %919, i64 0, i64 0
  store i32* %920, i32** %24, align 8
  %921 = load i32, i32* %7, align 4
  %922 = icmp eq i32 %921, 2
  br i1 %922, label %927, label %923

923:                                              ; preds = %906
  %924 = load i32, i32* @mm, align 4
  %925 = load i32, i32* @n1, align 4
  %926 = icmp slt i32 %924, %925
  br i1 %926, label %927, label %933

927:                                              ; preds = %923, %906
  store i32 0, i32* %13, align 4
  %928 = load i32, i32* @mm, align 4
  %929 = add nsw i32 %928, 1
  store i32 %929, i32* %20, align 4
  store i32 %929, i32* %18, align 4
  store i32 %929, i32* %14, align 4
  %930 = load i32, i32* @n1, align 4
  %931 = add nsw i32 %930, 1
  store i32 %931, i32* %21, align 4
  %932 = load i32, i32* @mm, align 4
  store i32 %932, i32* %25, align 4
  br label %952

933:                                              ; preds = %923
  %934 = load i32*, i32** @HH, align 8
  %935 = load i32, i32* @n1, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, i32* %934, i64 %936
  %938 = load i32, i32* %937, align 4
  store i32 %938, i32* %13, align 4
  %939 = load i32*, i32** @II, align 8
  %940 = load i32, i32* @n1, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds i32, i32* %939, i64 %941
  %943 = load i32, i32* %942, align 4
  store i32 %943, i32* %20, align 4
  %944 = load i32*, i32** @JJ, align 8
  %945 = load i32, i32* @n1, align 4
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i32, i32* %944, i64 %946
  %948 = load i32, i32* %947, align 4
  store i32 %948, i32* %21, align 4
  %949 = load i32, i32* @n1, align 4
  store i32 %949, i32* %18, align 4
  store i32 %949, i32* %14, align 4
  %950 = load i32, i32* @n1, align 4
  %951 = sub nsw i32 %950, 1
  store i32 %951, i32* %25, align 4
  br label %952

952:                                              ; preds = %933, %927
  %953 = load i32, i32* %25, align 4
  store i32 %953, i32* %8, align 4
  br label %954

954:                                              ; preds = %1250, %952
  %955 = load i32, i32* %8, align 4
  %956 = load i32, i32* @m1, align 4
  %957 = icmp sge i32 %955, %956
  br i1 %957, label %958, label %1253

958:                                              ; preds = %954
  %959 = load i32, i32* %11, align 4
  %960 = load i32, i32* @r, align 4
  %961 = sub nsw i32 %959, %960
  store i32 %961, i32* %11, align 4
  %962 = load i32, i32* %10, align 4
  %963 = load i32, i32* @qr, align 4
  %964 = sub nsw i32 %962, %963
  store i32 %964, i32* %10, align 4
  %965 = load i32, i32* %11, align 4
  %966 = load i32, i32* %10, align 4
  %967 = icmp slt i32 %965, %966
  br i1 %967, label %968, label %972

968:                                              ; preds = %958
  %969 = load i32, i32* %10, align 4
  store i32 %969, i32* %11, align 4
  %970 = load i32, i32* %14, align 4
  store i32 %970, i32* %18, align 4
  %971 = load i32, i32* %15, align 4
  store i32 %971, i32* %19, align 4
  br label %996

972:                                              ; preds = %958
  %973 = load i32, i32* %11, align 4
  %974 = load i32, i32* %10, align 4
  %975 = icmp eq i32 %973, %974
  br i1 %975, label %976, label %995

976:                                              ; preds = %972
  %977 = load i32, i32* %18, align 4
  %978 = load i32, i32* %14, align 4
  %979 = icmp slt i32 %977, %978
  br i1 %979, label %980, label %983

980:                                              ; preds = %976
  %981 = load i32, i32* %14, align 4
  store i32 %981, i32* %18, align 4
  %982 = load i32, i32* %15, align 4
  store i32 %982, i32* %19, align 4
  br label %994

983:                                              ; preds = %976
  %984 = load i32, i32* %18, align 4
  %985 = load i32, i32* %14, align 4
  %986 = icmp eq i32 %984, %985
  br i1 %986, label %987, label %993

987:                                              ; preds = %983
  %988 = load i32, i32* %19, align 4
  %989 = load i32, i32* %15, align 4
  %990 = icmp slt i32 %988, %989
  br i1 %990, label %991, label %993

991:                                              ; preds = %987
  %992 = load i32, i32* %15, align 4
  store i32 %992, i32* %19, align 4
  br label %993

993:                                              ; preds = %991, %987, %983
  br label %994

994:                                              ; preds = %993, %980
  br label %995

995:                                              ; preds = %994, %972
  br label %996

996:                                              ; preds = %995, %968
  %997 = load i32*, i32** @HH, align 8
  %998 = load i32, i32* %8, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds i32, i32* %997, i64 %999
  %1001 = load i32, i32* %1000, align 4
  %1002 = load i32, i32* @qr, align 4
  %1003 = sub nsw i32 %1001, %1002
  store i32 %1003, i32* %10, align 4
  %1004 = load i32*, i32** @II, align 8
  %1005 = load i32, i32* %8, align 4
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds i32, i32* %1004, i64 %1006
  %1008 = load i32, i32* %1007, align 4
  store i32 %1008, i32* %14, align 4
  %1009 = load i32*, i32** @JJ, align 8
  %1010 = load i32, i32* %8, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds i32, i32* %1009, i64 %1011
  %1013 = load i32, i32* %1012, align 4
  store i32 %1013, i32* %15, align 4
  %1014 = load i32*, i32** @WW, align 8
  %1015 = load i32, i32* %8, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds i32, i32* %1014, i64 %1016
  %1018 = load i32, i32* %1017, align 4
  %1019 = load i32, i32* @r, align 4
  %1020 = sub nsw i32 %1018, %1019
  store i32 %1020, i32* %12, align 4
  %1021 = load i32*, i32** @XX, align 8
  %1022 = load i32, i32* %8, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i32, i32* %1021, i64 %1023
  %1025 = load i32, i32* %1024, align 4
  store i32 %1025, i32* %16, align 4
  %1026 = load i32*, i32** @YY, align 8
  %1027 = load i32, i32* %8, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds i32, i32* %1026, i64 %1028
  %1030 = load i32, i32* %1029, align 4
  store i32 %1030, i32* %17, align 4
  %1031 = load i32, i32* %12, align 4
  %1032 = load i32, i32* %10, align 4
  %1033 = icmp slt i32 %1031, %1032
  br i1 %1033, label %1034, label %1038

1034:                                             ; preds = %996
  %1035 = load i32, i32* %10, align 4
  store i32 %1035, i32* %12, align 4
  %1036 = load i32, i32* %14, align 4
  store i32 %1036, i32* %16, align 4
  %1037 = load i32, i32* %15, align 4
  store i32 %1037, i32* %17, align 4
  br label %1062

1038:                                             ; preds = %996
  %1039 = load i32, i32* %12, align 4
  %1040 = load i32, i32* %10, align 4
  %1041 = icmp eq i32 %1039, %1040
  br i1 %1041, label %1042, label %1061

1042:                                             ; preds = %1038
  %1043 = load i32, i32* %16, align 4
  %1044 = load i32, i32* %14, align 4
  %1045 = icmp slt i32 %1043, %1044
  br i1 %1045, label %1046, label %1049

1046:                                             ; preds = %1042
  %1047 = load i32, i32* %14, align 4
  store i32 %1047, i32* %16, align 4
  %1048 = load i32, i32* %15, align 4
  store i32 %1048, i32* %17, align 4
  br label %1060

1049:                                             ; preds = %1042
  %1050 = load i32, i32* %16, align 4
  %1051 = load i32, i32* %14, align 4
  %1052 = icmp eq i32 %1050, %1051
  br i1 %1052, label %1053, label %1059

1053:                                             ; preds = %1049
  %1054 = load i32, i32* %17, align 4
  %1055 = load i32, i32* %15, align 4
  %1056 = icmp slt i32 %1054, %1055
  br i1 %1056, label %1057, label %1059

1057:                                             ; preds = %1053
  %1058 = load i32, i32* %15, align 4
  store i32 %1058, i32* %17, align 4
  br label %1059

1059:                                             ; preds = %1057, %1053, %1049
  br label %1060

1060:                                             ; preds = %1059, %1046
  br label %1061

1061:                                             ; preds = %1060, %1038
  br label %1062

1062:                                             ; preds = %1061, %1034
  store i32 0, i32* %10, align 4
  store i16 1, i16* @tt, align 2
  %1063 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %1064 = load i32, i32* %8, align 4
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds %struct.ONE*, %struct.ONE** %1063, i64 %1065
  %1067 = load %struct.ONE*, %struct.ONE** %1066, align 8
  store %struct.ONE* %1067, %struct.ONE** @z, align 8
  br label %1068

1068:                                             ; preds = %1079, %1062
  %1069 = load %struct.ONE*, %struct.ONE** @z, align 8
  %1070 = icmp ne %struct.ONE* %1069, null
  br i1 %1070, label %1071, label %1083

1071:                                             ; preds = %1068
  %1072 = load %struct.ONE*, %struct.ONE** @z, align 8
  %1073 = getelementptr inbounds %struct.ONE, %struct.ONE* %1072, i32 0, i32 0
  %1074 = load i32, i32* %1073, align 8
  %1075 = load i32, i32* @n1, align 4
  %1076 = icmp eq i32 %1074, %1075
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1071
  store i16 0, i16* @tt, align 2
  br label %1083

1078:                                             ; preds = %1071
  br label %1079

1079:                                             ; preds = %1078
  %1080 = load %struct.ONE*, %struct.ONE** @z, align 8
  %1081 = getelementptr inbounds %struct.ONE, %struct.ONE* %1080, i32 0, i32 1
  %1082 = load %struct.ONE*, %struct.ONE** %1081, align 8
  store %struct.ONE* %1082, %struct.ONE** @z, align 8
  br label %1068

1083:                                             ; preds = %1077, %1068
  %1084 = load i16, i16* @tt, align 2
  %1085 = icmp ne i16 %1084, 0
  br i1 %1085, label %1086, label %1098

1086:                                             ; preds = %1083
  %1087 = load i32, i32* %13, align 4
  %1088 = load i32*, i32** %24, align 8
  %1089 = load i8*, i8** %5, align 8
  %1090 = load i32, i32* %8, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds i8, i8* %1089, i64 %1091
  %1093 = load i8, i8* %1092, align 1
  %1094 = sext i8 %1093 to i64
  %1095 = getelementptr inbounds i32, i32* %1088, i64 %1094
  %1096 = load i32, i32* %1095, align 4
  %1097 = add nsw i32 %1087, %1096
  store i32 %1097, i32* %10, align 4
  br label %1098

1098:                                             ; preds = %1086, %1083
  %1099 = load i32, i32* %10, align 4
  %1100 = icmp sle i32 %1099, 0
  br i1 %1100, label %1101, label %1104

1101:                                             ; preds = %1098
  store i32 0, i32* %10, align 4
  %1102 = load i32, i32* %8, align 4
  store i32 %1102, i32* %14, align 4
  %1103 = load i32, i32* @n1, align 4
  store i32 %1103, i32* %15, align 4
  br label %1107

1104:                                             ; preds = %1098
  %1105 = load i32, i32* %20, align 4
  store i32 %1105, i32* %14, align 4
  %1106 = load i32, i32* %21, align 4
  store i32 %1106, i32* %15, align 4
  br label %1107

1107:                                             ; preds = %1104, %1101
  %1108 = load i32, i32* %10, align 4
  %1109 = load i32, i32* %12, align 4
  %1110 = icmp slt i32 %1108, %1109
  br i1 %1110, label %1111, label %1115

1111:                                             ; preds = %1107
  %1112 = load i32, i32* %12, align 4
  store i32 %1112, i32* %10, align 4
  %1113 = load i32, i32* %16, align 4
  store i32 %1113, i32* %14, align 4
  %1114 = load i32, i32* %17, align 4
  store i32 %1114, i32* %15, align 4
  br label %1139

1115:                                             ; preds = %1107
  %1116 = load i32, i32* %10, align 4
  %1117 = load i32, i32* %12, align 4
  %1118 = icmp eq i32 %1116, %1117
  br i1 %1118, label %1119, label %1138

1119:                                             ; preds = %1115
  %1120 = load i32, i32* %14, align 4
  %1121 = load i32, i32* %16, align 4
  %1122 = icmp slt i32 %1120, %1121
  br i1 %1122, label %1123, label %1126

1123:                                             ; preds = %1119
  %1124 = load i32, i32* %16, align 4
  store i32 %1124, i32* %14, align 4
  %1125 = load i32, i32* %17, align 4
  store i32 %1125, i32* %15, align 4
  br label %1137

1126:                                             ; preds = %1119
  %1127 = load i32, i32* %14, align 4
  %1128 = load i32, i32* %16, align 4
  %1129 = icmp eq i32 %1127, %1128
  br i1 %1129, label %1130, label %1136

1130:                                             ; preds = %1126
  %1131 = load i32, i32* %15, align 4
  %1132 = load i32, i32* %17, align 4
  %1133 = icmp slt i32 %1131, %1132
  br i1 %1133, label %1134, label %1136

1134:                                             ; preds = %1130
  %1135 = load i32, i32* %17, align 4
  store i32 %1135, i32* %15, align 4
  br label %1136

1136:                                             ; preds = %1134, %1130, %1126
  br label %1137

1137:                                             ; preds = %1136, %1123
  br label %1138

1138:                                             ; preds = %1137, %1115
  br label %1139

1139:                                             ; preds = %1138, %1111
  %1140 = load i32, i32* %10, align 4
  %1141 = load i32, i32* %11, align 4
  %1142 = icmp slt i32 %1140, %1141
  br i1 %1142, label %1143, label %1147

1143:                                             ; preds = %1139
  %1144 = load i32, i32* %11, align 4
  store i32 %1144, i32* %10, align 4
  %1145 = load i32, i32* %18, align 4
  store i32 %1145, i32* %14, align 4
  %1146 = load i32, i32* %19, align 4
  store i32 %1146, i32* %15, align 4
  br label %1171

1147:                                             ; preds = %1139
  %1148 = load i32, i32* %10, align 4
  %1149 = load i32, i32* %11, align 4
  %1150 = icmp eq i32 %1148, %1149
  br i1 %1150, label %1151, label %1170

1151:                                             ; preds = %1147
  %1152 = load i32, i32* %14, align 4
  %1153 = load i32, i32* %18, align 4
  %1154 = icmp slt i32 %1152, %1153
  br i1 %1154, label %1155, label %1158

1155:                                             ; preds = %1151
  %1156 = load i32, i32* %18, align 4
  store i32 %1156, i32* %14, align 4
  %1157 = load i32, i32* %19, align 4
  store i32 %1157, i32* %15, align 4
  br label %1169

1158:                                             ; preds = %1151
  %1159 = load i32, i32* %14, align 4
  %1160 = load i32, i32* %18, align 4
  %1161 = icmp eq i32 %1159, %1160
  br i1 %1161, label %1162, label %1168

1162:                                             ; preds = %1158
  %1163 = load i32, i32* %15, align 4
  %1164 = load i32, i32* %19, align 4
  %1165 = icmp slt i32 %1163, %1164
  br i1 %1165, label %1166, label %1168

1166:                                             ; preds = %1162
  %1167 = load i32, i32* %19, align 4
  store i32 %1167, i32* %15, align 4
  br label %1168

1168:                                             ; preds = %1166, %1162, %1158
  br label %1169

1169:                                             ; preds = %1168, %1155
  br label %1170

1170:                                             ; preds = %1169, %1147
  br label %1171

1171:                                             ; preds = %1170, %1143
  %1172 = load i32*, i32** @HH, align 8
  %1173 = load i32, i32* %8, align 4
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds i32, i32* %1172, i64 %1174
  %1176 = load i32, i32* %1175, align 4
  store i32 %1176, i32* %13, align 4
  %1177 = load i32, i32* %10, align 4
  %1178 = load i32*, i32** @HH, align 8
  %1179 = load i32, i32* %8, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds i32, i32* %1178, i64 %1180
  store i32 %1177, i32* %1181, align 4
  %1182 = load i32*, i32** @II, align 8
  %1183 = load i32, i32* %8, align 4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds i32, i32* %1182, i64 %1184
  %1186 = load i32, i32* %1185, align 4
  store i32 %1186, i32* %20, align 4
  %1187 = load i32*, i32** @JJ, align 8
  %1188 = load i32, i32* %8, align 4
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds i32, i32* %1187, i64 %1189
  %1191 = load i32, i32* %1190, align 4
  store i32 %1191, i32* %21, align 4
  %1192 = load i32, i32* %14, align 4
  %1193 = load i32*, i32** @II, align 8
  %1194 = load i32, i32* %8, align 4
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds i32, i32* %1193, i64 %1195
  store i32 %1192, i32* %1196, align 4
  %1197 = load i32, i32* %15, align 4
  %1198 = load i32*, i32** @JJ, align 8
  %1199 = load i32, i32* %8, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds i32, i32* %1198, i64 %1200
  store i32 %1197, i32* %1201, align 4
  %1202 = load i32, i32* %12, align 4
  %1203 = load i32*, i32** @WW, align 8
  %1204 = load i32, i32* %8, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds i32, i32* %1203, i64 %1205
  store i32 %1202, i32* %1206, align 4
  %1207 = load i32, i32* %16, align 4
  %1208 = load i32*, i32** @XX, align 8
  %1209 = load i32, i32* %8, align 4
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds i32, i32* %1208, i64 %1210
  store i32 %1207, i32* %1211, align 4
  %1212 = load i32, i32* %17, align 4
  %1213 = load i32*, i32** @YY, align 8
  %1214 = load i32, i32* %8, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds i32, i32* %1213, i64 %1215
  store i32 %1212, i32* %1216, align 4
  %1217 = load i32, i32* %10, align 4
  %1218 = load i32, i32* @min, align 4
  %1219 = icmp sgt i32 %1217, %1218
  br i1 %1219, label %1220, label %1221

1220:                                             ; preds = %1171
  store i16 1, i16* @flag, align 2
  br label %1221

1221:                                             ; preds = %1220, %1171
  %1222 = load i16, i16* %22, align 2
  %1223 = icmp ne i16 %1222, 0
  br i1 %1223, label %1249, label %1224

1224:                                             ; preds = %1221
  %1225 = load i32, i32* %14, align 4
  %1226 = load i32, i32* @rl, align 4
  %1227 = icmp sgt i32 %1225, %1226
  br i1 %1227, label %1228, label %1232

1228:                                             ; preds = %1224
  %1229 = load i32, i32* %15, align 4
  %1230 = load i32, i32* @cl, align 4
  %1231 = icmp sgt i32 %1229, %1230
  br i1 %1231, label %1248, label %1232

1232:                                             ; preds = %1228, %1224
  %1233 = load i32, i32* %16, align 4
  %1234 = load i32, i32* @rl, align 4
  %1235 = icmp sgt i32 %1233, %1234
  br i1 %1235, label %1236, label %1240

1236:                                             ; preds = %1232
  %1237 = load i32, i32* %17, align 4
  %1238 = load i32, i32* @cl, align 4
  %1239 = icmp sgt i32 %1237, %1238
  br i1 %1239, label %1248, label %1240

1240:                                             ; preds = %1236, %1232
  %1241 = load i32, i32* %18, align 4
  %1242 = load i32, i32* @rl, align 4
  %1243 = icmp sgt i32 %1241, %1242
  br i1 %1243, label %1244, label %1249

1244:                                             ; preds = %1240
  %1245 = load i32, i32* %19, align 4
  %1246 = load i32, i32* @cl, align 4
  %1247 = icmp sgt i32 %1245, %1246
  br i1 %1247, label %1248, label %1249

1248:                                             ; preds = %1244, %1236, %1228
  store i16 1, i16* %22, align 2
  br label %1249

1249:                                             ; preds = %1248, %1244, %1240, %1221
  br label %1250

1250:                                             ; preds = %1249
  %1251 = load i32, i32* %8, align 4
  %1252 = add nsw i32 %1251, -1
  store i32 %1252, i32* %8, align 4
  br label %954

1253:                                             ; preds = %954
  %1254 = load i32*, i32** @HH, align 8
  %1255 = load i32, i32* @m1, align 4
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds i32, i32* %1254, i64 %1256
  %1258 = load i32, i32* %1257, align 4
  %1259 = load i32*, i32** @CC, align 8
  %1260 = load i32, i32* @n1, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds i32, i32* %1259, i64 %1261
  store i32 %1258, i32* %1262, align 4
  %1263 = load i32*, i32** @II, align 8
  %1264 = load i32, i32* @m1, align 4
  %1265 = sext i32 %1264 to i64
  %1266 = getelementptr inbounds i32, i32* %1263, i64 %1265
  %1267 = load i32, i32* %1266, align 4
  %1268 = load i32*, i32** @RR, align 8
  %1269 = load i32, i32* @n1, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds i32, i32* %1268, i64 %1270
  store i32 %1267, i32* %1271, align 4
  %1272 = load i32*, i32** @JJ, align 8
  %1273 = load i32, i32* @m1, align 4
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds i32, i32* %1272, i64 %1274
  %1276 = load i32, i32* %1275, align 4
  %1277 = load i32*, i32** @EE, align 8
  %1278 = load i32, i32* @n1, align 4
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds i32, i32* %1277, i64 %1279
  store i32 %1276, i32* %1280, align 4
  %1281 = load i32*, i32** @WW, align 8
  %1282 = load i32, i32* @m1, align 4
  %1283 = sext i32 %1282 to i64
  %1284 = getelementptr inbounds i32, i32* %1281, i64 %1283
  %1285 = load i32, i32* %1284, align 4
  %1286 = load i32*, i32** @DD, align 8
  %1287 = load i32, i32* @n1, align 4
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds i32, i32* %1286, i64 %1288
  store i32 %1285, i32* %1289, align 4
  %1290 = load i32*, i32** @XX, align 8
  %1291 = load i32, i32* @m1, align 4
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds i32, i32* %1290, i64 %1292
  %1294 = load i32, i32* %1293, align 4
  %1295 = load i32*, i32** @SS, align 8
  %1296 = load i32, i32* @n1, align 4
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds i32, i32* %1295, i64 %1297
  store i32 %1294, i32* %1298, align 4
  %1299 = load i32*, i32** @YY, align 8
  %1300 = load i32, i32* @m1, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds i32, i32* %1299, i64 %1301
  %1303 = load i32, i32* %1302, align 4
  %1304 = load i32*, i32** @FF, align 8
  %1305 = load i32, i32* @n1, align 4
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds i32, i32* %1304, i64 %1306
  store i32 %1303, i32* %1307, align 4
  %1308 = load i16, i16* %23, align 2
  %1309 = icmp ne i16 %1308, 0
  br i1 %1309, label %1335, label %1310

1310:                                             ; preds = %1253
  %1311 = load i32, i32* %14, align 4
  %1312 = load i32, i32* @rl, align 4
  %1313 = icmp sgt i32 %1311, %1312
  br i1 %1313, label %1314, label %1318

1314:                                             ; preds = %1310
  %1315 = load i32, i32* %15, align 4
  %1316 = load i32, i32* @cl, align 4
  %1317 = icmp sgt i32 %1315, %1316
  br i1 %1317, label %1334, label %1318

1318:                                             ; preds = %1314, %1310
  %1319 = load i32, i32* %16, align 4
  %1320 = load i32, i32* @rl, align 4
  %1321 = icmp sgt i32 %1319, %1320
  br i1 %1321, label %1322, label %1326

1322:                                             ; preds = %1318
  %1323 = load i32, i32* %17, align 4
  %1324 = load i32, i32* @cl, align 4
  %1325 = icmp sgt i32 %1323, %1324
  br i1 %1325, label %1334, label %1326

1326:                                             ; preds = %1322, %1318
  %1327 = load i32, i32* %18, align 4
  %1328 = load i32, i32* @rl, align 4
  %1329 = icmp sgt i32 %1327, %1328
  br i1 %1329, label %1330, label %1335

1330:                                             ; preds = %1326
  %1331 = load i32, i32* %19, align 4
  %1332 = load i32, i32* @cl, align 4
  %1333 = icmp sgt i32 %1331, %1332
  br i1 %1333, label %1334, label %1335

1334:                                             ; preds = %1330, %1322, %1314
  store i16 1, i16* %23, align 2
  br label %1335

1335:                                             ; preds = %1334, %1330, %1326, %1253
  br label %1336

1336:                                             ; preds = %1335, %903, %899
  br label %460

1337:                                             ; preds = %476
  %1338 = load i32, i32* @m1, align 4
  %1339 = icmp eq i32 %1338, 1
  br i1 %1339, label %1340, label %1343

1340:                                             ; preds = %1337
  %1341 = load i32, i32* @n1, align 4
  %1342 = icmp eq i32 %1341, 1
  br i1 %1342, label %1346, label %1343

1343:                                             ; preds = %1340, %1337
  %1344 = call i32 @no_cross()
  %1345 = icmp ne i32 %1344, 0
  br i1 %1345, label %1346, label %1347

1346:                                             ; preds = %1343, %1340
  br label %1348

1347:                                             ; preds = %1343
  br label %459

1348:                                             ; preds = %1346
  %1349 = load i32, i32* @m1, align 4
  %1350 = add nsw i32 %1349, -1
  store i32 %1350, i32* @m1, align 4
  %1351 = load i32, i32* @n1, align 4
  %1352 = add nsw i32 %1351, -1
  store i32 %1352, i32* @n1, align 4
  %1353 = load i32, i32* %4, align 4
  ret i32 %1353
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @small_pass(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
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
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* @n1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %63, %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @nn, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i32*, i32** @CC, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @m1, align 4
  %38 = load i32*, i32** @RR, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** @EE, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @q, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32*, i32** @DD, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @m1, align 4
  %54 = load i32*, i32** @SS, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** @FF, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %32
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %28

66:                                               ; preds = %28
  %67 = load i32, i32* @m1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %399, %66
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @mm, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %402

73:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  %74 = load i32, i32* @q, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %20, align 4
  store i32 %76, i32* %16, align 4
  %77 = load [256 x i32]*, [256 x i32]** @v, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i64
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %77, i64 %83
  %85 = getelementptr inbounds [256 x i32], [256 x i32]* %84, i64 0, i64 0
  store i32* %85, i32** %24, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %92, label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @n1, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88, %73
  store i32 0, i32* %15, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* @n1, align 4
  store i32 %95, i32* %23, align 4
  store i32 %95, i32* %21, align 4
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* @n1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %25, align 4
  br label %117

98:                                               ; preds = %88
  %99 = load i32*, i32** @CC, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %15, align 4
  %104 = load i32*, i32** @RR, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %22, align 4
  %109 = load i32*, i32** @EE, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %23, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %21, align 4
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %25, align 4
  br label %117

117:                                              ; preds = %98, %92
  %118 = load i32, i32* %25, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %395, %117
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @nn, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %398

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @r, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @qr, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %21, align 4
  br label %161

137:                                              ; preds = %123
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %137
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %17, align 4
  store i32 %147, i32* %21, align 4
  br label %159

148:                                              ; preds = %141
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* %17, align 4
  store i32 %157, i32* %21, align 4
  br label %158

158:                                              ; preds = %156, %152, %148
  br label %159

159:                                              ; preds = %158, %145
  br label %160

160:                                              ; preds = %159, %137
  br label %161

161:                                              ; preds = %160, %133
  %162 = load i32*, i32** @CC, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @qr, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %12, align 4
  %169 = load i32*, i32** @RR, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %16, align 4
  %174 = load i32*, i32** @EE, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %17, align 4
  %179 = load i32*, i32** @DD, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @r, align 4
  %185 = sub nsw i32 %183, %184
  store i32 %185, i32* %14, align 4
  %186 = load i32*, i32** @SS, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %18, align 4
  %191 = load i32*, i32** @FF, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %161
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %16, align 4
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %19, align 4
  br label %227

203:                                              ; preds = %161
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load i32, i32* %16, align 4
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %17, align 4
  store i32 %213, i32* %19, align 4
  br label %225

214:                                              ; preds = %207
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %17, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* %17, align 4
  store i32 %223, i32* %19, align 4
  br label %224

224:                                              ; preds = %222, %218, %214
  br label %225

225:                                              ; preds = %224, %211
  br label %226

226:                                              ; preds = %225, %203
  br label %227

227:                                              ; preds = %226, %199
  store i32 0, i32* %12, align 4
  store i16 1, i16* @tt, align 2
  %228 = load %struct.ONE**, %struct.ONE*** @row, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.ONE*, %struct.ONE** %228, i64 %230
  %232 = load %struct.ONE*, %struct.ONE** %231, align 8
  store %struct.ONE* %232, %struct.ONE** @z, align 8
  br label %233

233:                                              ; preds = %244, %227
  %234 = load %struct.ONE*, %struct.ONE** @z, align 8
  %235 = icmp ne %struct.ONE* %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %233
  %237 = load %struct.ONE*, %struct.ONE** @z, align 8
  %238 = getelementptr inbounds %struct.ONE, %struct.ONE* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i16 0, i16* @tt, align 2
  br label %248

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243
  %245 = load %struct.ONE*, %struct.ONE** @z, align 8
  %246 = getelementptr inbounds %struct.ONE, %struct.ONE* %245, i32 0, i32 1
  %247 = load %struct.ONE*, %struct.ONE** %246, align 8
  store %struct.ONE* %247, %struct.ONE** @z, align 8
  br label %233

248:                                              ; preds = %242, %233
  %249 = load i16, i16* @tt, align 2
  %250 = icmp ne i16 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = load i32, i32* %15, align 4
  %253 = load i32*, i32** %24, align 8
  %254 = load i8*, i8** %7, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i64
  %260 = getelementptr inbounds i32, i32* %253, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %252, %261
  store i32 %262, i32* %12, align 4
  br label %263

263:                                              ; preds = %251, %248
  %264 = load i32, i32* %12, align 4
  %265 = icmp sle i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  store i32 0, i32* %12, align 4
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* %11, align 4
  store i32 %268, i32* %17, align 4
  br label %272

269:                                              ; preds = %263
  %270 = load i32, i32* %22, align 4
  store i32 %270, i32* %16, align 4
  %271 = load i32, i32* %23, align 4
  store i32 %271, i32* %17, align 4
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* %14, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i32, i32* %14, align 4
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* %18, align 4
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %19, align 4
  store i32 %279, i32* %17, align 4
  br label %304

280:                                              ; preds = %272
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* %14, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %303

284:                                              ; preds = %280
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %18, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load i32, i32* %18, align 4
  store i32 %289, i32* %16, align 4
  %290 = load i32, i32* %19, align 4
  store i32 %290, i32* %17, align 4
  br label %302

291:                                              ; preds = %284
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %18, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* %19, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = load i32, i32* %19, align 4
  store i32 %300, i32* %17, align 4
  br label %301

301:                                              ; preds = %299, %295, %291
  br label %302

302:                                              ; preds = %301, %288
  br label %303

303:                                              ; preds = %302, %280
  br label %304

304:                                              ; preds = %303, %276
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %13, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load i32, i32* %13, align 4
  store i32 %309, i32* %12, align 4
  %310 = load i32, i32* %20, align 4
  store i32 %310, i32* %16, align 4
  %311 = load i32, i32* %21, align 4
  store i32 %311, i32* %17, align 4
  br label %336

312:                                              ; preds = %304
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* %13, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %335

316:                                              ; preds = %312
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* %20, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load i32, i32* %20, align 4
  store i32 %321, i32* %16, align 4
  %322 = load i32, i32* %21, align 4
  store i32 %322, i32* %17, align 4
  br label %334

323:                                              ; preds = %316
  %324 = load i32, i32* %16, align 4
  %325 = load i32, i32* %20, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %323
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %21, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = load i32, i32* %21, align 4
  store i32 %332, i32* %17, align 4
  br label %333

333:                                              ; preds = %331, %327, %323
  br label %334

334:                                              ; preds = %333, %320
  br label %335

335:                                              ; preds = %334, %312
  br label %336

336:                                              ; preds = %335, %308
  %337 = load i32*, i32** @CC, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %15, align 4
  %342 = load i32, i32* %12, align 4
  %343 = load i32*, i32** @CC, align 8
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %342, i32* %346, align 4
  %347 = load i32*, i32** @RR, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %22, align 4
  %352 = load i32*, i32** @EE, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  store i32 %356, i32* %23, align 4
  %357 = load i32, i32* %16, align 4
  %358 = load i32*, i32** @RR, align 8
  %359 = load i32, i32* %11, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 %357, i32* %361, align 4
  %362 = load i32, i32* %17, align 4
  %363 = load i32*, i32** @EE, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  store i32 %362, i32* %366, align 4
  %367 = load i32, i32* %14, align 4
  %368 = load i32*, i32** @DD, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %367, i32* %371, align 4
  %372 = load i32, i32* %18, align 4
  %373 = load i32*, i32** @SS, align 8
  %374 = load i32, i32* %11, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  store i32 %372, i32* %376, align 4
  %377 = load i32, i32* %19, align 4
  %378 = load i32*, i32** @FF, align 8
  %379 = load i32, i32* %11, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 %377, i32* %381, align 4
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* @min, align 4
  %384 = icmp sgt i32 %382, %383
  br i1 %384, label %385, label %394

385:                                              ; preds = %336
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* %17, align 4
  %389 = load i32, i32* %10, align 4
  %390 = load i32, i32* %11, align 4
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @min, align 4
  %393 = call i32 @addnode(i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392)
  store i32 %393, i32* @min, align 4
  br label %394

394:                                              ; preds = %385, %336
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %11, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %11, align 4
  br label %119

398:                                              ; preds = %119
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %10, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %10, align 4
  br label %69

402:                                              ; preds = %69
  %403 = load i32, i32* %5, align 4
  ret i32 %403
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @addnode(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i16 0, i16* %16, align 2
  %18 = load %struct.NODE*, %struct.NODE** @most, align 8
  %19 = icmp ne %struct.NODE* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %7
  %21 = load %struct.NODE*, %struct.NODE** @most, align 8
  %22 = getelementptr inbounds %struct.NODE, %struct.NODE* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.NODE*, %struct.NODE** @most, align 8
  %28 = getelementptr inbounds %struct.NODE, %struct.NODE* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i16 1, i16* %16, align 2
  br label %61

33:                                               ; preds = %26, %20, %7
  store i32 0, i32* %17, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @numnode, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.NODE*, %struct.NODE** %39, i64 %41
  %43 = load %struct.NODE*, %struct.NODE** %42, align 8
  store %struct.NODE* %43, %struct.NODE** @most, align 8
  %44 = load %struct.NODE*, %struct.NODE** @most, align 8
  %45 = getelementptr inbounds %struct.NODE, %struct.NODE* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load %struct.NODE*, %struct.NODE** @most, align 8
  %51 = getelementptr inbounds %struct.NODE, %struct.NODE* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i16 1, i16* %16, align 2
  br label %60

56:                                               ; preds = %49, %38
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %34

60:                                               ; preds = %55, %34
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i16, i16* %16, align 2
  %63 = icmp ne i16 %62, 0
  br i1 %63, label %64, label %121

64:                                               ; preds = %61
  %65 = load %struct.NODE*, %struct.NODE** @most, align 8
  %66 = getelementptr inbounds %struct.NODE, %struct.NODE* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.NODE*, %struct.NODE** @most, align 8
  %73 = getelementptr inbounds %struct.NODE, %struct.NODE* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.NODE*, %struct.NODE** @most, align 8
  %76 = getelementptr inbounds %struct.NODE, %struct.NODE* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.NODE*, %struct.NODE** @most, align 8
  %79 = getelementptr inbounds %struct.NODE, %struct.NODE* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %64
  %81 = load %struct.NODE*, %struct.NODE** @most, align 8
  %82 = getelementptr inbounds %struct.NODE, %struct.NODE* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.NODE*, %struct.NODE** @most, align 8
  %89 = getelementptr inbounds %struct.NODE, %struct.NODE* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.NODE*, %struct.NODE** @most, align 8
  %92 = getelementptr inbounds %struct.NODE, %struct.NODE* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.NODE*, %struct.NODE** @most, align 8
  %99 = getelementptr inbounds %struct.NODE, %struct.NODE* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.NODE*, %struct.NODE** @most, align 8
  %102 = getelementptr inbounds %struct.NODE, %struct.NODE* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.NODE*, %struct.NODE** @most, align 8
  %109 = getelementptr inbounds %struct.NODE, %struct.NODE* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.NODE*, %struct.NODE** @most, align 8
  %112 = getelementptr inbounds %struct.NODE, %struct.NODE* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.NODE*, %struct.NODE** @most, align 8
  %119 = getelementptr inbounds %struct.NODE, %struct.NODE* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %110
  br label %160

121:                                              ; preds = %61
  %122 = load i32, i32* @numnode, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load %struct.NODE*, %struct.NODE** @low, align 8
  store %struct.NODE* %126, %struct.NODE** @most, align 8
  br label %134

127:                                              ; preds = %121
  %128 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %129 = load i32, i32* @numnode, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @numnode, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.NODE*, %struct.NODE** %128, i64 %131
  %133 = load %struct.NODE*, %struct.NODE** %132, align 8
  store %struct.NODE* %133, %struct.NODE** @most, align 8
  br label %134

134:                                              ; preds = %127, %125
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.NODE*, %struct.NODE** @most, align 8
  %137 = getelementptr inbounds %struct.NODE, %struct.NODE* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.NODE*, %struct.NODE** @most, align 8
  %140 = getelementptr inbounds %struct.NODE, %struct.NODE* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.NODE*, %struct.NODE** @most, align 8
  %143 = getelementptr inbounds %struct.NODE, %struct.NODE* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.NODE*, %struct.NODE** @most, align 8
  %146 = getelementptr inbounds %struct.NODE, %struct.NODE* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.NODE*, %struct.NODE** @most, align 8
  %149 = getelementptr inbounds %struct.NODE, %struct.NODE* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.NODE*, %struct.NODE** @most, align 8
  %152 = getelementptr inbounds %struct.NODE, %struct.NODE* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 4
  %153 = load %struct.NODE*, %struct.NODE** @most, align 8
  %154 = getelementptr inbounds %struct.NODE, %struct.NODE* %153, i32 0, i32 5
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.NODE*, %struct.NODE** @most, align 8
  %157 = getelementptr inbounds %struct.NODE, %struct.NODE* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = load %struct.NODE*, %struct.NODE** @most, align 8
  %159 = getelementptr inbounds %struct.NODE, %struct.NODE* %158, i32 0, i32 7
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %134, %120
  %161 = load i32, i32* @numnode, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %206

164:                                              ; preds = %160
  %165 = load %struct.NODE*, %struct.NODE** @low, align 8
  %166 = load %struct.NODE*, %struct.NODE** @most, align 8
  %167 = icmp eq %struct.NODE* %165, %166
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = load %struct.NODE*, %struct.NODE** @low, align 8
  %170 = icmp ne %struct.NODE* %169, null
  br i1 %170, label %202, label %171

171:                                              ; preds = %168, %164
  %172 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %173 = getelementptr inbounds %struct.NODE*, %struct.NODE** %172, i64 0
  %174 = load %struct.NODE*, %struct.NODE** %173, align 8
  store %struct.NODE* %174, %struct.NODE** @low, align 8
  store i32 1, i32* %17, align 4
  br label %175

175:                                              ; preds = %198, %171
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @numnode, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  %180 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.NODE*, %struct.NODE** %180, i64 %182
  %184 = load %struct.NODE*, %struct.NODE** %183, align 8
  %185 = getelementptr inbounds %struct.NODE, %struct.NODE* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.NODE*, %struct.NODE** @low, align 8
  %188 = getelementptr inbounds %struct.NODE, %struct.NODE* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %179
  %192 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.NODE*, %struct.NODE** %192, i64 %194
  %196 = load %struct.NODE*, %struct.NODE** %195, align 8
  store %struct.NODE* %196, %struct.NODE** @low, align 8
  br label %197

197:                                              ; preds = %191, %179
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %17, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %17, align 4
  br label %175

201:                                              ; preds = %175
  br label %202

202:                                              ; preds = %201, %168
  %203 = load %struct.NODE*, %struct.NODE** @low, align 8
  %204 = getelementptr inbounds %struct.NODE, %struct.NODE* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %8, align 4
  br label %208

206:                                              ; preds = %160
  %207 = load i32, i32* %15, align 4
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %206, %202
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @no_cross() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.NODE*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %73, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @numnode, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %76

8:                                                ; preds = %4
  %9 = load %struct.NODE**, %struct.NODE*** @LIST, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.NODE*, %struct.NODE** %9, i64 %11
  %13 = load %struct.NODE*, %struct.NODE** %12, align 8
  store %struct.NODE* %13, %struct.NODE** %2, align 8
  %14 = load %struct.NODE*, %struct.NODE** %2, align 8
  %15 = getelementptr inbounds %struct.NODE, %struct.NODE* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @mm, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %8
  %20 = load %struct.NODE*, %struct.NODE** %2, align 8
  %21 = getelementptr inbounds %struct.NODE, %struct.NODE* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @nn, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %19
  %26 = load %struct.NODE*, %struct.NODE** %2, align 8
  %27 = getelementptr inbounds %struct.NODE, %struct.NODE* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @m1, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  %33 = load %struct.NODE*, %struct.NODE** %2, align 8
  %34 = getelementptr inbounds %struct.NODE, %struct.NODE* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @n1, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load %struct.NODE*, %struct.NODE** %2, align 8
  %41 = getelementptr inbounds %struct.NODE, %struct.NODE* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @rl, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.NODE*, %struct.NODE** %2, align 8
  %47 = getelementptr inbounds %struct.NODE, %struct.NODE* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @cl, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45, %39
  %52 = load %struct.NODE*, %struct.NODE** %2, align 8
  %53 = getelementptr inbounds %struct.NODE, %struct.NODE* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @rl, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.NODE*, %struct.NODE** %2, align 8
  %59 = getelementptr inbounds %struct.NODE, %struct.NODE* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* @rl, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.NODE*, %struct.NODE** %2, align 8
  %63 = getelementptr inbounds %struct.NODE, %struct.NODE* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @cl, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.NODE*, %struct.NODE** %2, align 8
  %69 = getelementptr inbounds %struct.NODE, %struct.NODE* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* @cl, align 4
  br label %71

71:                                               ; preds = %67, %61
  store i16 1, i16* @flag, align 2
  br label %76

72:                                               ; preds = %45, %32, %25, %19, %8
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %4

76:                                               ; preds = %71, %4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @numnode, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %1, align 4
  br label %82

81:                                               ; preds = %76
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #4

declare dso_local i32 @putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @getrusage(i32, %struct.rusage*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
