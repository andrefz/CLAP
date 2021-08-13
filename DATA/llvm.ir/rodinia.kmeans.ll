; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [259 x i8] c"Usage: %s [switches] -i filename\0A       -i filename     :  file containing data to be clustered\0A       -b                 :input file is in binary format\0A       -k                 : number of clusters (default is 8) \0A       -t threshold    : threshold value\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"i:k:t:b\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"0600\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error: no such file (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" ,\09\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"I/O completed\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"number of Clusters %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"number of Attributes %d\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cluster(i32 %0, i32 %1, float** %2, i32 %3, float %4, float*** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float***, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca float**, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float** %2, float*** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float*** %5, float**** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = call noalias i8* @malloc(i64 %18) #6
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %14, align 8
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %13, align 4
  call void @srand(i32 7) #6
  %22 = load float**, float*** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load float, float* %11, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = call float** @kmeans_clustering(float** %22, i32 %23, i32 %24, i32 %25, float %26, i32* %27)
  store float** %28, float*** %15, align 8
  %29 = load float***, float**** %12, align 8
  %30 = load float**, float*** %29, align 8
  %31 = icmp ne float** %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %6
  %33 = load float***, float**** %12, align 8
  %34 = load float**, float*** %33, align 8
  %35 = getelementptr inbounds float*, float** %34, i64 0
  %36 = load float*, float** %35, align 8
  %37 = bitcast float* %36 to i8*
  call void @free(i8* %37) #6
  %38 = load float***, float**** %12, align 8
  %39 = load float**, float*** %38, align 8
  %40 = bitcast float** %39 to i8*
  call void @free(i8* %40) #6
  br label %41

41:                                               ; preds = %32, %6
  %42 = load float**, float*** %15, align 8
  %43 = load float***, float**** %12, align 8
  store float** %42, float*** %43, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #6
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @find_nearest_point(float* %0, i32 %1, float** %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float** %2, float*** %7, align 8
  store i32 %3, i32* %8, align 4
  store float 0x47EFFFFFE0000000, float* %11, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %33, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load float*, float** %5, align 8
  %19 = load float**, float*** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float*, float** %19, i64 %21
  %23 = load float*, float** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call float @euclid_dist_2(float* %18, float* %23, i32 %24)
  store float %25, float* %12, align 4
  %26 = load float, float* %12, align 4
  %27 = load float, float* %11, align 4
  %28 = fcmp olt float %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load float, float* %12, align 4
  store float %30, float* %11, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @euclid_dist_2(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store float 0.000000e+00, float* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load float*, float** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fsub float %18, %23
  %25 = load float*, float** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fsub float %29, %34
  %36 = fmul float %24, %35
  %37 = load float, float* %8, align 4
  %38 = fadd float %37, %36
  store float %38, float* %8, align 4
  br label %39

39:                                               ; preds = %13
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load float, float* %8, align 4
  ret float %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local float** @kmeans_clustering(float** %0, i32 %1, i32 %2, i32 %3, float %4, i32* %5) #0 {
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca float, align 4
  %20 = alloca float**, align 8
  %21 = alloca float**, align 8
  store float** %0, float*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = call noalias i8* @malloc(i64 %24) #6
  %26 = bitcast i8* %25 to float**
  store float** %26, float*** %20, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = call noalias i8* @malloc(i64 %31) #6
  %33 = bitcast i8* %32 to float*
  %34 = load float**, float*** %20, align 8
  %35 = getelementptr inbounds float*, float** %34, i64 0
  store float* %33, float** %35, align 8
  store i32 1, i32* %13, align 4
  br label %36

36:                                               ; preds = %54, %6
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load float**, float*** %20, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %41, i64 %44
  %46 = load float*, float** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float**, float*** %20, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float*, float** %50, i64 %52
  store float* %49, float** %53, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %36

57:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %91, %57
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load float**, float*** %7, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float*, float** %68, i64 %70
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float**, float*** %20, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float*, float** %77, i64 %79
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %76, float* %84, align 4
  br label %85

85:                                               ; preds = %67
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %63

88:                                               ; preds = %63
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %58

94:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %104, %94
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 -1, i32* %103, align 4
  br label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %95

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = call noalias i8* @calloc(i64 %109, i64 4) #6
  %111 = bitcast i8* %110 to i32*
  store i32* %111, i32** %18, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 8
  %115 = call noalias i8* @malloc(i64 %114) #6
  %116 = bitcast i8* %115 to float**
  store float** %116, float*** %21, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = call noalias i8* @calloc(i64 %120, i64 4) #6
  %122 = bitcast i8* %121 to float*
  %123 = load float**, float*** %21, align 8
  %124 = getelementptr inbounds float*, float** %123, i64 0
  store float* %122, float** %124, align 8
  store i32 1, i32* %13, align 4
  br label %125

125:                                              ; preds = %143, %107
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = load float**, float*** %21, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float*, float** %130, i64 %133
  %135 = load float*, float** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float**, float*** %21, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float*, float** %139, i64 %141
  store float* %138, float** %142, align 8
  br label %143

143:                                              ; preds = %129
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %125

146:                                              ; preds = %125
  br label %147

147:                                              ; preds = %280, %146
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %214, %147
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %217

152:                                              ; preds = %148
  %153 = load float**, float*** %7, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float*, float** %153, i64 %155
  %157 = load float*, float** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load float**, float*** %20, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @find_nearest_point(float* %157, i32 %158, float** %159, i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %152
  %170 = load float, float* %19, align 4
  %171 = fpext float %170 to double
  %172 = fadd double %171, 1.000000e+00
  %173 = fptrunc double %172 to float
  store float %173, float* %19, align 4
  br label %174

174:                                              ; preds = %169, %152
  %175 = load i32, i32* %16, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  %180 = load i32*, i32** %18, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  store i32 0, i32* %14, align 4
  br label %186

186:                                              ; preds = %210, %174
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %213

190:                                              ; preds = %186
  %191 = load float**, float*** %7, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float*, float** %191, i64 %193
  %195 = load float*, float** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  %199 = load float, float* %198, align 4
  %200 = load float**, float*** %21, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float*, float** %200, i64 %202
  %204 = load float*, float** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = fadd float %208, %199
  store float %209, float* %207, align 4
  br label %210

210:                                              ; preds = %190
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %186

213:                                              ; preds = %186
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %13, align 4
  br label %148

217:                                              ; preds = %148
  store i32 0, i32* %13, align 4
  br label %218

218:                                              ; preds = %276, %217
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %279

222:                                              ; preds = %218
  store i32 0, i32* %14, align 4
  br label %223

223:                                              ; preds = %268, %222
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %271

227:                                              ; preds = %223
  %228 = load i32*, i32** %18, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %259

234:                                              ; preds = %227
  %235 = load float**, float*** %21, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float*, float** %235, i64 %237
  %239 = load float*, float** %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  %243 = load float, float* %242, align 4
  %244 = load i32*, i32** %18, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sitofp i32 %248 to float
  %250 = fdiv float %243, %249
  %251 = load float**, float*** %20, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float*, float** %251, i64 %253
  %255 = load float*, float** %254, align 8
  %256 = load i32, i32* %14, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  store float %250, float* %258, align 4
  br label %259

259:                                              ; preds = %234, %227
  %260 = load float**, float*** %21, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float*, float** %260, i64 %262
  %264 = load float*, float** %263, align 8
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  store float 0.000000e+00, float* %267, align 4
  br label %268

268:                                              ; preds = %259
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  br label %223

271:                                              ; preds = %223
  %272 = load i32*, i32** %18, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 0, i32* %275, align 4
  br label %276

276:                                              ; preds = %271
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %13, align 4
  br label %218

279:                                              ; preds = %218
  br label %280

280:                                              ; preds = %279
  %281 = load float, float* %19, align 4
  %282 = load float, float* %11, align 4
  %283 = fcmp ogt float %281, %282
  br i1 %283, label %147, label %284

284:                                              ; preds = %280
  %285 = load float**, float*** %21, align 8
  %286 = getelementptr inbounds float*, float** %285, i64 0
  %287 = load float*, float** %286, align 8
  %288 = bitcast float* %287 to i8*
  call void @free(i8* %288) #6
  %289 = load float**, float*** %21, align 8
  %290 = bitcast float** %289 to i8*
  call void @free(i8* %290) #6
  %291 = load i32*, i32** %18, align 8
  %292 = bitcast i32* %291 to i8*
  call void @free(i8* %292) #6
  %293 = load float**, float*** %20, align 8
  ret float** %293
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5, i8* %6)
  call void @exit(i32 -1) #7
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float**, align 8
  %11 = alloca float**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 5, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store float** null, float*** %11, align 8
  store i32 0, i32* %17, align 4
  store float 0x3F50624DE0000000, float* %19, align 4
  br label %23

23:                                               ; preds = %48, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %44 [
    i32 105, label %30
    i32 98, label %32
    i32 116, label %33
    i32 107, label %37
    i32 63, label %40
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %8, align 8
  br label %48

32:                                               ; preds = %28
  store i32 1, i32* %17, align 4
  br label %48

33:                                               ; preds = %28
  %34 = load i8*, i8** @optarg, align 8
  %35 = call double @atof(i8* %34) #8
  %36 = fptrunc double %35 to float
  store float %36, float* %19, align 4
  br label %48

37:                                               ; preds = %28
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @atoi(i8* %38) #8
  store i32 %39, i32* %7, align 4
  br label %48

40:                                               ; preds = %28
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  call void @usage(i8* %43)
  br label %48

44:                                               ; preds = %28
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  call void @usage(i8* %47)
  br label %48

48:                                               ; preds = %44, %40, %37, %33, %32, %30
  br label %23

49:                                               ; preds = %23
  %50 = load i8*, i8** %8, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  call void @usage(i8* %55)
  br label %56

56:                                               ; preds = %52, %49
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %125

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8*, i32, ...) @open(i8* %60, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %21, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  call void @exit(i32 1) #7
  unreachable

67:                                               ; preds = %59
  %68 = load i32, i32* %21, align 4
  %69 = call i32 (i32, i32*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, i32*, i64, ...)*)(i32 %68, i32* %15, i64 4)
  %70 = load i32, i32* %21, align 4
  %71 = call i32 (i32, i32*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, i32*, i64, ...)*)(i32 %70, i32* %14, i64 4)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = call noalias i8* @malloc(i64 %76) #6
  %78 = bitcast i8* %77 to float*
  store float* %78, float** %9, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = call noalias i8* @malloc(i64 %81) #6
  %83 = bitcast i8* %82 to float**
  store float** %83, float*** %10, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = call noalias i8* @malloc(i64 %88) #6
  %90 = bitcast i8* %89 to float*
  %91 = load float**, float*** %10, align 8
  %92 = getelementptr inbounds float*, float** %91, i64 0
  store float* %90, float** %92, align 8
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %111, %67
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load float**, float*** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float*, float** %98, i64 %101
  %103 = load float*, float** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float**, float*** %10, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float*, float** %107, i64 %109
  store float* %106, float** %110, align 8
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %93

114:                                              ; preds = %93
  %115 = load i32, i32* %21, align 4
  %116 = load float*, float** %9, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = call i32 (i32, float*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, float*, i64, ...)*)(i32 %115, float* %116, i64 %121)
  %123 = load i32, i32* %21, align 4
  %124 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %123)
  br label %244

125:                                              ; preds = %56
  %126 = load i8*, i8** %8, align 8
  %127 = call %struct._IO_FILE* @fopen(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %127, %struct._IO_FILE** %22, align 8
  %128 = icmp eq %struct._IO_FILE* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %131)
  call void @exit(i32 1) #7
  unreachable

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %146, %133
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %137 = call i8* @fgets(i8* %135, i32 1024, %struct._IO_FILE* %136)
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %141 = call i8* @strtok(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %143, %139
  br label %134

147:                                              ; preds = %134
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  call void @rewind(%struct._IO_FILE* %148)
  br label %149

149:                                              ; preds = %166, %147
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %152 = call i8* @fgets(i8* %150, i32 1024, %struct._IO_FILE* %151)
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %156 = call i8* @strtok(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %162, %158
  %160 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %159

165:                                              ; preds = %159
  br label %167

166:                                              ; preds = %154
  br label %149

167:                                              ; preds = %165, %149
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %14, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = call noalias i8* @malloc(i64 %172) #6
  %174 = bitcast i8* %173 to float*
  store float* %174, float** %9, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 8
  %178 = call noalias i8* @malloc(i64 %177) #6
  %179 = bitcast i8* %178 to float**
  store float** %179, float*** %10, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %14, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = call noalias i8* @malloc(i64 %184) #6
  %186 = bitcast i8* %185 to float*
  %187 = load float**, float*** %10, align 8
  %188 = getelementptr inbounds float*, float** %187, i64 0
  store float* %186, float** %188, align 8
  store i32 1, i32* %12, align 4
  br label %189

189:                                              ; preds = %207, %167
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %189
  %194 = load float**, float*** %10, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float*, float** %194, i64 %197
  %199 = load float*, float** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float**, float*** %10, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float*, float** %203, i64 %205
  store float* %202, float** %206, align 8
  br label %207

207:                                              ; preds = %193
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %189

210:                                              ; preds = %189
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  call void @rewind(%struct._IO_FILE* %211)
  store i32 0, i32* %12, align 4
  br label %212

212:                                              ; preds = %240, %221, %210
  %213 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %215 = call i8* @fgets(i8* %213, i32 1024, %struct._IO_FILE* %214)
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %241

217:                                              ; preds = %212
  %218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %219 = call i8* @strtok(i8* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %212

222:                                              ; preds = %217
  store i32 0, i32* %13, align 4
  br label %223

223:                                              ; preds = %237, %222
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %14, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %223
  %228 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6
  %229 = call double @atof(i8* %228) #8
  %230 = fptrunc double %229 to float
  %231 = load float*, float** %9, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  store float %230, float* %234, align 4
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %227
  %238 = load i32, i32* %13, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %13, align 4
  br label %223

240:                                              ; preds = %223
  br label %212

241:                                              ; preds = %212
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %243 = call i32 @fclose(%struct._IO_FILE* %242)
  br label %244

244:                                              ; preds = %241, %114
  store i32 1, i32* %18, align 4
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %246 = load float**, float*** %10, align 8
  %247 = getelementptr inbounds float*, float** %246, i64 0
  %248 = load float*, float** %247, align 8
  %249 = bitcast float* %248 to i8*
  %250 = load float*, float** %9, align 8
  %251 = bitcast float* %250 to i8*
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %14, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = mul i64 %255, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %249, i8* align 4 %251, i64 %256, i1 false)
  store i32 0, i32* %12, align 4
  br label %257

257:                                              ; preds = %268, %244
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %18, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %257
  store float** null, float*** %11, align 8
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %14, align 4
  %264 = load float**, float*** %10, align 8
  %265 = load i32, i32* %7, align 4
  %266 = load float, float* %19, align 4
  %267 = call i32 @cluster(i32 %262, i32 %263, float** %264, i32 %265, float %266, float*** %11)
  br label %268

268:                                              ; preds = %261
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %12, align 4
  br label %257

271:                                              ; preds = %257
  %272 = load i32, i32* %7, align 4
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* %14, align 4
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %274)
  %276 = load float**, float*** %10, align 8
  %277 = bitcast float** %276 to i8*
  call void @free(i8* %277) #6
  %278 = load float**, float*** %11, align 8
  %279 = getelementptr inbounds float*, float** %278, i64 0
  %280 = load float*, float** %279, align 8
  %281 = bitcast float* %280 to i8*
  call void @free(i8* %281) #6
  %282 = load float**, float*** %11, align 8
  %283 = bitcast float** %282 to i8*
  call void @free(i8* %283) #6
  %284 = load float*, float** %9, align 8
  %285 = bitcast float* %284 to i8*
  call void @free(i8* %285) #6
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i32 @read(...) #2

declare dso_local i32 @close(...) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local void @rewind(%struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
