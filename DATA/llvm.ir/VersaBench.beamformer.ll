; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.BeamFirData = type { i32, i32, i32, float*, float* }

@detector_out_StrictFP = common dso_local global [4 x [512 x float]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = external dso_local global i8*, align 8
@numiters = internal global i32 100, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"A = %lf and B = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %17, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %17 [
    i32 105, label %14
  ]

14:                                               ; preds = %12
  %15 = load i8*, i8** @optarg, align 8
  %16 = call i32 @atoi(i8* %15) #7
  store i32 %16, i32* @numiters, align 4
  br label %17

17:                                               ; preds = %14, %12
  br label %7

18:                                               ; preds = %7
  call void @begin_StrictFP()
  call void @begin()
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @begin_StrictFP() #0 {
  %1 = alloca [12 x %struct.BeamFirData], align 16
  %2 = alloca [12 x %struct.BeamFirData], align 16
  %3 = alloca [4 x %struct.BeamFirData], align 16
  %4 = alloca [24576 x float], align 16
  %5 = alloca [24576 x float], align 16
  %6 = alloca [12 x [12288 x float]], align 16
  %7 = alloca [4 x [24 x float]], align 16
  %8 = alloca [12288 x float], align 16
  %9 = alloca [1024 x float], align 16
  %10 = alloca [1024 x float], align 16
  %11 = alloca [512 x float], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %24, %0
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 12
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %1, i64 0, i64 %19
  call void @BeamFirSetup_StrictFP(%struct.BeamFirData* %20, i32 64)
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %2, i64 0, i64 %22
  call void @BeamFirSetup_StrictFP(%struct.BeamFirData* %23, i32 64)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  br label %14

27:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x %struct.BeamFirData], [4 x %struct.BeamFirData]* %3, i64 0, i64 %33
  call void @BeamFirSetup_StrictFP(%struct.BeamFirData* %34, i32 512)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x [24 x float]], [4 x [24 x float]]* %7, i64 0, i64 %37
  %39 = getelementptr inbounds [24 x float], [24 x float]* %38, i64 0, i64 0
  call void @BeamFormWeights_StrictFP(i32 %35, float* %39)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %28

43:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %110, %43
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 12
  br i1 %46, label %47, label %113

47:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 12
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds [24576 x float], [24576 x float]* %4, i64 0, i64 0
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 1024
  %56 = mul nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %53, i64 %57
  call void @InputGenerate_StrictFP(i32 %52, float* %58, i32 1024)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %48

62:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 1024
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %1, i64 0, i64 %68
  %70 = getelementptr inbounds [24576 x float], [24576 x float]* %4, i64 0, i64 0
  %71 = load i32, i32* %13, align 4
  %72 = mul nsw i32 %71, 1
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %70, i64 %74
  %76 = getelementptr inbounds [24576 x float], [24576 x float]* %5, i64 0, i64 0
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %76, i64 %79
  call void @BeamFirFilter_StrictFP(%struct.BeamFirData* %69, i32 1024, i32 1, float* %75, float* %80)
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %63

84:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 512
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %2, i64 0, i64 %90
  %92 = getelementptr inbounds [24576 x float], [24576 x float]* %5, i64 0, i64 0
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %93, 2
  %95 = mul nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %92, i64 %96
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %6, i64 0, i64 %99
  %101 = getelementptr inbounds [12288 x float], [12288 x float]* %100, i64 0, i64 0
  %102 = load i32, i32* %13, align 4
  %103 = mul nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %101, i64 %104
  call void @BeamFirFilter_StrictFP(%struct.BeamFirData* %91, i32 1024, i32 2, float* %97, float* %105)
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %85

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %44

113:                                              ; preds = %44
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %160, %113
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 12
  br i1 %116, label %117, label %163

117:                                              ; preds = %114
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %156, %117
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 512
  br i1 %120, label %121, label %159

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %6, i64 0, i64 %123
  %125 = load i32, i32* %13, align 4
  %126 = mul nsw i32 2, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [12288 x float], [12288 x float]* %124, i64 0, i64 %127
  %129 = load float, float* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = mul nsw i32 %130, 12
  %132 = mul nsw i32 %131, 2
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 2, %133
  %135 = add nsw i32 %132, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [12288 x float], [12288 x float]* %8, i64 0, i64 %136
  store float %129, float* %137, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %6, i64 0, i64 %139
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 2, %141
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [12288 x float], [12288 x float]* %140, i64 0, i64 %144
  %146 = load float, float* %145, align 4
  %147 = load i32, i32* %13, align 4
  %148 = mul nsw i32 %147, 12
  %149 = mul nsw i32 %148, 2
  %150 = load i32, i32* %12, align 4
  %151 = mul nsw i32 2, %150
  %152 = add nsw i32 %149, %151
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [12288 x float], [12288 x float]* %8, i64 0, i64 %154
  store float %146, float* %155, align 4
  br label %156

156:                                              ; preds = %121
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %118

159:                                              ; preds = %118
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %114

163:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %221, %163
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %165, 4
  br i1 %166, label %167, label %224

167:                                              ; preds = %164
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %188, %167
  %169 = load i32, i32* %13, align 4
  %170 = icmp slt i32 %169, 512
  br i1 %170, label %171, label %191

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x [24 x float]], [4 x [24 x float]]* %7, i64 0, i64 %174
  %176 = getelementptr inbounds [24 x float], [24 x float]* %175, i64 0, i64 0
  %177 = getelementptr inbounds [12288 x float], [12288 x float]* %8, i64 0, i64 0
  %178 = load i32, i32* %13, align 4
  %179 = mul nsw i32 %178, 12
  %180 = mul nsw i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %177, i64 %181
  %183 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 0
  %184 = load i32, i32* %13, align 4
  %185 = mul nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  call void @BeamForm_StrictFP(i32 %172, float* %176, float* %182, float* %187)
  br label %188

188:                                              ; preds = %171
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %168

191:                                              ; preds = %168
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %209, %191
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %193, 512
  br i1 %194, label %195, label %212

195:                                              ; preds = %192
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x %struct.BeamFirData], [4 x %struct.BeamFirData]* %3, i64 0, i64 %197
  %199 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 0
  %200 = load i32, i32* %13, align 4
  %201 = mul nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %199, i64 %202
  %204 = getelementptr inbounds [1024 x float], [1024 x float]* %10, i64 0, i64 0
  %205 = load i32, i32* %13, align 4
  %206 = mul nsw i32 %205, 2
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %204, i64 %207
  call void @BeamFirFilter_StrictFP(%struct.BeamFirData* %198, i32 512, i32 1, float* %203, float* %208)
  br label %209

209:                                              ; preds = %195
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %192

212:                                              ; preds = %192
  %213 = getelementptr inbounds [1024 x float], [1024 x float]* %10, i64 0, i64 0
  %214 = getelementptr inbounds [512 x float], [512 x float]* %11, i64 0, i64 0
  call void @Magnitude_StrictFP(float* %213, float* %214, i32 512)
  %215 = load i32, i32* %12, align 4
  %216 = getelementptr inbounds [512 x float], [512 x float]* %11, i64 0, i64 0
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x [512 x float]], [4 x [512 x float]]* @detector_out_StrictFP, i64 0, i64 %218
  %220 = getelementptr inbounds [512 x float], [512 x float]* %219, i64 0, i64 0
  call void @Detector_StrictFP(i32 %215, float* %216, float* %220)
  br label %221

221:                                              ; preds = %212
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %164

224:                                              ; preds = %164
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @begin() #0 {
  %1 = alloca [12 x %struct.BeamFirData], align 16
  %2 = alloca [12 x %struct.BeamFirData], align 16
  %3 = alloca [4 x %struct.BeamFirData], align 16
  %4 = alloca [24576 x float], align 16
  %5 = alloca [24576 x float], align 16
  %6 = alloca [12 x [12288 x float]], align 16
  %7 = alloca [4 x [24 x float]], align 16
  %8 = alloca [12288 x float], align 16
  %9 = alloca [1024 x float], align 16
  %10 = alloca [1024 x float], align 16
  %11 = alloca [512 x float], align 16
  %12 = alloca [4 x [512 x float]], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %25, %0
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 12
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %1, i64 0, i64 %20
  call void @BeamFirSetup(%struct.BeamFirData* %21, i32 64)
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %2, i64 0, i64 %23
  call void @BeamFirSetup(%struct.BeamFirData* %24, i32 64)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %13, align 4
  br label %15

28:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.BeamFirData], [4 x %struct.BeamFirData]* %3, i64 0, i64 %34
  call void @BeamFirSetup(%struct.BeamFirData* %35, i32 512)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x [24 x float]], [4 x [24 x float]]* %7, i64 0, i64 %38
  %40 = getelementptr inbounds [24 x float], [24 x float]* %39, i64 0, i64 0
  call void @BeamFormWeights(i32 %36, float* %40)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %278, %44
  %46 = load i32, i32* @numiters, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @numiters, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @numiters, align 4
  %51 = icmp sgt i32 %49, 0
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ true, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %279

54:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %121, %54
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 12
  br i1 %57, label %58, label %124

58:                                               ; preds = %55
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds [24576 x float], [24576 x float]* %4, i64 0, i64 0
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %65, 1024
  %67 = mul nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %64, i64 %68
  call void @InputGenerate(i32 %63, float* %69, i32 1024)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %59

73:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %92, %73
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 1024
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %1, i64 0, i64 %79
  %81 = getelementptr inbounds [24576 x float], [24576 x float]* %4, i64 0, i64 0
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %82, 1
  %84 = mul nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %81, i64 %85
  %87 = getelementptr inbounds [24576 x float], [24576 x float]* %5, i64 0, i64 0
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %87, i64 %90
  call void @BeamFirFilter(%struct.BeamFirData* %80, i32 1024, i32 1, float* %86, float* %91)
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %74

95:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %117, %95
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %97, 512
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %2, i64 0, i64 %101
  %103 = getelementptr inbounds [24576 x float], [24576 x float]* %5, i64 0, i64 0
  %104 = load i32, i32* %14, align 4
  %105 = mul nsw i32 %104, 2
  %106 = mul nsw i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %103, i64 %107
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %6, i64 0, i64 %110
  %112 = getelementptr inbounds [12288 x float], [12288 x float]* %111, i64 0, i64 0
  %113 = load i32, i32* %14, align 4
  %114 = mul nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %112, i64 %115
  call void @BeamFirFilter(%struct.BeamFirData* %102, i32 1024, i32 2, float* %108, float* %116)
  br label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %96

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %55

124:                                              ; preds = %55
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %171, %124
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 12
  br i1 %127, label %128, label %174

128:                                              ; preds = %125
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %167, %128
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 512
  br i1 %131, label %132, label %170

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %6, i64 0, i64 %134
  %136 = load i32, i32* %14, align 4
  %137 = mul nsw i32 2, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [12288 x float], [12288 x float]* %135, i64 0, i64 %138
  %140 = load float, float* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = mul nsw i32 %141, 12
  %143 = mul nsw i32 %142, 2
  %144 = load i32, i32* %13, align 4
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [12288 x float], [12288 x float]* %8, i64 0, i64 %147
  store float %140, float* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %6, i64 0, i64 %150
  %152 = load i32, i32* %14, align 4
  %153 = mul nsw i32 2, %152
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [12288 x float], [12288 x float]* %151, i64 0, i64 %155
  %157 = load float, float* %156, align 4
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %158, 12
  %160 = mul nsw i32 %159, 2
  %161 = load i32, i32* %13, align 4
  %162 = mul nsw i32 2, %161
  %163 = add nsw i32 %160, %162
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [12288 x float], [12288 x float]* %8, i64 0, i64 %165
  store float %157, float* %166, align 4
  br label %167

167:                                              ; preds = %132
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %129

170:                                              ; preds = %129
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %125

174:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %232, %174
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 4
  br i1 %177, label %178, label %235

178:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %199, %178
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 512
  br i1 %181, label %182, label %202

182:                                              ; preds = %179
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [4 x [24 x float]], [4 x [24 x float]]* %7, i64 0, i64 %185
  %187 = getelementptr inbounds [24 x float], [24 x float]* %186, i64 0, i64 0
  %188 = getelementptr inbounds [12288 x float], [12288 x float]* %8, i64 0, i64 0
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 %189, 12
  %191 = mul nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %188, i64 %192
  %194 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 0
  %195 = load i32, i32* %14, align 4
  %196 = mul nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %194, i64 %197
  call void @BeamForm(i32 %183, float* %187, float* %193, float* %198)
  br label %199

199:                                              ; preds = %182
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %179

202:                                              ; preds = %179
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %220, %202
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %204, 512
  br i1 %205, label %206, label %223

206:                                              ; preds = %203
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x %struct.BeamFirData], [4 x %struct.BeamFirData]* %3, i64 0, i64 %208
  %210 = getelementptr inbounds [1024 x float], [1024 x float]* %9, i64 0, i64 0
  %211 = load i32, i32* %14, align 4
  %212 = mul nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %210, i64 %213
  %215 = getelementptr inbounds [1024 x float], [1024 x float]* %10, i64 0, i64 0
  %216 = load i32, i32* %14, align 4
  %217 = mul nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %215, i64 %218
  call void @BeamFirFilter(%struct.BeamFirData* %209, i32 512, i32 1, float* %214, float* %219)
  br label %220

220:                                              ; preds = %206
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %203

223:                                              ; preds = %203
  %224 = getelementptr inbounds [1024 x float], [1024 x float]* %10, i64 0, i64 0
  %225 = getelementptr inbounds [512 x float], [512 x float]* %11, i64 0, i64 0
  call void @Magnitude(float* %224, float* %225, i32 512)
  %226 = load i32, i32* %13, align 4
  %227 = getelementptr inbounds [512 x float], [512 x float]* %11, i64 0, i64 0
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x [512 x float]], [4 x [512 x float]]* %12, i64 0, i64 %229
  %231 = getelementptr inbounds [512 x float], [512 x float]* %230, i64 0, i64 0
  call void @Detector(i32 %226, float* %227, float* %231)
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %175

235:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  br label %236

236:                                              ; preds = %275, %235
  %237 = load i32, i32* %14, align 4
  %238 = icmp slt i32 %237, 512
  br i1 %238, label %239, label %278

239:                                              ; preds = %236
  store i32 0, i32* %13, align 4
  br label %240

240:                                              ; preds = %271, %239
  %241 = load i32, i32* %13, align 4
  %242 = icmp slt i32 %241, 4
  br i1 %242, label %243, label %274

243:                                              ; preds = %240
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [4 x [512 x float]], [4 x [512 x float]]* %12, i64 0, i64 %245
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [512 x float], [512 x float]* %246, i64 0, i64 %248
  %250 = load float, float* %249, align 4
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x [512 x float]], [4 x [512 x float]]* @detector_out_StrictFP, i64 0, i64 %252
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [512 x float], [512 x float]* %253, i64 0, i64 %255
  %257 = load float, float* %256, align 4
  %258 = call i32 @check_FP(float %250, float %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %243
  call void @exit(i32 1) #8
  unreachable

261:                                              ; preds = %243
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [4 x [512 x float]], [4 x [512 x float]]* @detector_out_StrictFP, i64 0, i64 %263
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [512 x float], [512 x float]* %264, i64 0, i64 %266
  %268 = load float, float* %267, align 4
  %269 = fpext float %268 to double
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double %269)
  br label %271

271:                                              ; preds = %261
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %240

274:                                              ; preds = %240
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %14, align 4
  br label %236

278:                                              ; preds = %236
  br label %45

279:                                              ; preds = %52
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamFirSetup(%struct.BeamFirData* %0, i32 %1) #0 {
  %3 = alloca %struct.BeamFirData*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.BeamFirData* %0, %struct.BeamFirData** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %9 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %11 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %13 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %12, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = call noalias i8* @malloc(i64 %16) #6
  %18 = bitcast i8* %17 to float*
  %19 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %20 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %19, i32 0, i32 3
  store float* %18, float** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = call noalias i8* @malloc(i64 %23) #6
  %25 = bitcast i8* %24 to float*
  %26 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %27 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %26, i32 0, i32 4
  store float* %25, float** %27, align 8
  %28 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %29 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %28, i32 0, i32 3
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float 1.000000e+00, float* %31, align 4
  %32 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %33 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %32, i32 0, i32 3
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 0.000000e+00, float* %35, align 4
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %54, %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 2, %38
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %43 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %42, i32 0, i32 3
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float 0.000000e+00, float* %47, align 4
  %48 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %49 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %48, i32 0, i32 4
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float 0.000000e+00, float* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %36

57:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamFormWeights(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float* %1, float** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 12
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load float*, float** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 2, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %14, i64 %17
  store float 1.000000e+00, float* %18, align 4
  %19 = load float*, float** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %19, i64 %23
  store float 0.000000e+00, float* %24, align 4
  br label %37

25:                                               ; preds = %9
  %26 = load float*, float** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %26, i64 %29
  store float 0.000000e+00, float* %30, align 4
  %31 = load float*, float** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %31, i64 %35
  store float 0.000000e+00, float* %36, align 4
  br label %37

37:                                               ; preds = %25, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InputGenerate(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %68, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sitofp i32 %22 to double
  %24 = call double @sqrt(double %23) #6
  %25 = fptrunc double %24 to float
  %26 = load float*, float** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %26, i64 %29
  store float %25, float* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sitofp i32 %33 to double
  %35 = call double @sqrt(double %34) #6
  %36 = fadd double %35, 1.000000e+00
  %37 = fptrunc double %36 to float
  %38 = load float*, float** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %38, i64 %42
  store float %37, float* %43, align 4
  br label %67

44:                                               ; preds = %16, %13
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  %49 = call double @sqrt(double %48) #6
  %50 = fptrunc double %49 to float
  store float %50, float* %8, align 4
  %51 = load float, float* %8, align 4
  %52 = fneg float %51
  %53 = load float*, float** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %53, i64 %56
  store float %52, float* %57, align 4
  %58 = load float, float* %8, align 4
  %59 = fadd float %58, 1.000000e+00
  %60 = fneg float %59
  %61 = load float*, float** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  store float %60, float* %66, align 4
  br label %67

67:                                               ; preds = %44, %19
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %9

71:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamFirFilter(%struct.BeamFirData* %0, i32 %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.BeamFirData*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store %struct.BeamFirData* %0, %struct.BeamFirData** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  %24 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %25 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 2, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %15, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %35 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = mul nsw i32 2, %37
  store i32 %38, i32* %14, align 4
  %39 = load float*, float** %9, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  %41 = load float, float* %40, align 4
  %42 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %43 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %42, i32 0, i32 4
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %41, float* %47, align 4
  %48 = load float*, float** %9, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %52 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %51, i32 0, i32 4
  %53 = load float*, float** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %53, i64 %56
  store float %50, float* %57, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %118, %5
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = mul nsw i32 2, %60
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %121

63:                                               ; preds = %58
  %64 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %65 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %64, i32 0, i32 4
  %66 = load float*, float** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  store float %70, float* %18, align 4
  %71 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %72 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %71, i32 0, i32 4
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %73, i64 %76
  %78 = load float, float* %77, align 4
  store float %78, float* %19, align 4
  %79 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %80 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %79, i32 0, i32 3
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  store float %85, float* %20, align 4
  %86 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %87 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %86, i32 0, i32 3
  %88 = load float*, float** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %88, i64 %91
  %93 = load float, float* %92, align 4
  store float %93, float* %21, align 4
  %94 = load float, float* %18, align 4
  %95 = load float, float* %20, align 4
  %96 = fmul float %94, %95
  %97 = load float, float* %19, align 4
  %98 = load float, float* %21, align 4
  %99 = fmul float %97, %98
  %100 = fadd float %96, %99
  store float %100, float* %22, align 4
  %101 = load float, float* %19, align 4
  %102 = load float, float* %20, align 4
  %103 = fmul float %101, %102
  %104 = load float, float* %18, align 4
  %105 = load float, float* %21, align 4
  %106 = fmul float %104, %105
  %107 = fadd float %103, %106
  store float %107, float* %23, align 4
  %108 = load float, float* %22, align 4
  %109 = load float, float* %11, align 4
  %110 = fadd float %109, %108
  store float %110, float* %11, align 4
  %111 = load float, float* %23, align 4
  %112 = load float, float* %12, align 4
  %113 = fadd float %112, %111
  store float %113, float* %12, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 2
  %116 = load i32, i32* %17, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %63
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %13, align 4
  br label %58

121:                                              ; preds = %58
  %122 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %123 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %16, align 4
  %127 = and i32 %125, %126
  %128 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %129 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load float, float* %11, align 4
  %131 = load float*, float** %10, align 8
  %132 = getelementptr inbounds float, float* %131, i64 0
  store float %130, float* %132, align 4
  %133 = load float, float* %12, align 4
  %134 = load float*, float** %10, align 8
  %135 = getelementptr inbounds float, float* %134, i64 1
  store float %133, float* %135, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %138 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %142 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %121
  %147 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %148 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %150 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %149, i32 0, i32 2
  store i32 0, i32* %150, align 8
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %165, %146
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %154 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 2, %155
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %160 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %159, i32 0, i32 4
  %161 = load float*, float** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float 0.000000e+00, float* %164, align 4
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %151

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %121
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamForm(i32 %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %78, %4
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = load float*, float** %6, align 8
  %17 = load i32, i32* %11, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %16, i64 %19
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = mul nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %22, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %21, %27
  %29 = load float*, float** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %29, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 2, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %36, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fmul float %35, %42
  %44 = fsub float %28, %43
  %45 = load float, float* %9, align 4
  %46 = fadd float %45, %44
  store float %46, float* %9, align 4
  %47 = load float*, float** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %47, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %53, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %52, %59
  %61 = load float*, float** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 2, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fmul float %67, %73
  %75 = fadd float %60, %74
  %76 = load float, float* %10, align 4
  %77 = fadd float %76, %75
  store float %77, float* %10, align 4
  br label %78

78:                                               ; preds = %15
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %12

81:                                               ; preds = %12
  %82 = load float, float* %9, align 4
  %83 = load float*, float** %8, align 8
  %84 = getelementptr inbounds float, float* %83, i64 0
  store float %82, float* %84, align 4
  %85 = load float, float* %10, align 4
  %86 = load float*, float** %8, align 8
  %87 = getelementptr inbounds float, float* %86, i64 1
  store float %85, float* %87, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Magnitude(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %49, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load float*, float** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %13, i64 %16
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %19, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float %18, %24
  %26 = load float*, float** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %26, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %33, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fmul float %32, %39
  %41 = fadd float %25, %40
  %42 = fpext float %41 to double
  %43 = call double @sqrt(double %42) #6
  %44 = fptrunc double %43 to float
  %45 = load float*, float** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float %44, float* %48, align 4
  br label %49

49:                                               ; preds = %12
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %8

52:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Detector(i32 %0, float* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %58, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load float*, float** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = fcmp oge double %24, 1.000000e-01
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to float
  store float %29, float* %8, align 4
  br label %31

30:                                               ; preds = %18
  store float 0.000000e+00, float* %8, align 4
  br label %31

31:                                               ; preds = %30, %26
  br label %47

32:                                               ; preds = %15, %12
  %33 = load float*, float** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = fcmp oge double %38, 1.000000e-01
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  %43 = sub nsw i32 0, %42
  %44 = sitofp i32 %43 to float
  store float %44, float* %8, align 4
  br label %46

45:                                               ; preds = %32
  store float 0.000000e+00, float* %8, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %31
  %48 = load float*, float** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  store float %52, float* %8, align 4
  %53 = load float, float* %8, align 4
  %54 = load float*, float** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  store float %53, float* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %9

61:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(float %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store double 1.000000e-05, double* %6, align 8
  %8 = load float, float* %4, align 4
  %9 = load float, float* %5, align 4
  %10 = fsub float %8, %9
  %11 = fpext float %10 to double
  %12 = call double @llvm.fabs.f64(double %11)
  store double %12, double* %7, align 8
  %13 = load double, double* %7, align 8
  %14 = load double, double* %6, align 8
  %15 = fcmp ogt double %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load float, float* %4, align 4
  %19 = fpext float %18 to double
  %20 = load float, float* %5, align 4
  %21 = fpext float %20 to double
  %22 = load double, double* %6, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), double %19, double %21, double %22)
  store i32 0, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamFirSetup_StrictFP(%struct.BeamFirData* %0, i32 %1) #0 {
  %3 = alloca %struct.BeamFirData*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.BeamFirData* %0, %struct.BeamFirData** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %9 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %11 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %13 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %12, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = call noalias i8* @malloc(i64 %16) #6
  %18 = bitcast i8* %17 to float*
  %19 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %20 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %19, i32 0, i32 3
  store float* %18, float** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = call noalias i8* @malloc(i64 %23) #6
  %25 = bitcast i8* %24 to float*
  %26 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %27 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %26, i32 0, i32 4
  store float* %25, float** %27, align 8
  %28 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %29 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %28, i32 0, i32 3
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float 1.000000e+00, float* %31, align 4
  %32 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %33 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %32, i32 0, i32 3
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 0.000000e+00, float* %35, align 4
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %54, %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 2, %38
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %43 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %42, i32 0, i32 3
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float 0.000000e+00, float* %47, align 4
  %48 = load %struct.BeamFirData*, %struct.BeamFirData** %3, align 8
  %49 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %48, i32 0, i32 4
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float 0.000000e+00, float* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %36

57:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamFormWeights_StrictFP(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float* %1, float** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 12
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load float*, float** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 2, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %14, i64 %17
  store float 1.000000e+00, float* %18, align 4
  %19 = load float*, float** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %19, i64 %23
  store float 0.000000e+00, float* %24, align 4
  br label %37

25:                                               ; preds = %9
  %26 = load float*, float** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %26, i64 %29
  store float 0.000000e+00, float* %30, align 4
  %31 = load float*, float** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %31, i64 %35
  store float 0.000000e+00, float* %36, align 4
  br label %37

37:                                               ; preds = %25, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InputGenerate_StrictFP(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %68, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sitofp i32 %22 to double
  %24 = call double @sqrt(double %23) #6
  %25 = fptrunc double %24 to float
  %26 = load float*, float** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %26, i64 %29
  store float %25, float* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sitofp i32 %33 to double
  %35 = call double @sqrt(double %34) #6
  %36 = fadd double %35, 1.000000e+00
  %37 = fptrunc double %36 to float
  %38 = load float*, float** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %38, i64 %42
  store float %37, float* %43, align 4
  br label %67

44:                                               ; preds = %16, %13
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  %49 = call double @sqrt(double %48) #6
  %50 = fptrunc double %49 to float
  store float %50, float* %8, align 4
  %51 = load float, float* %8, align 4
  %52 = fneg float %51
  %53 = load float*, float** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %53, i64 %56
  store float %52, float* %57, align 4
  %58 = load float, float* %8, align 4
  %59 = fadd float %58, 1.000000e+00
  %60 = fneg float %59
  %61 = load float*, float** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  store float %60, float* %66, align 4
  br label %67

67:                                               ; preds = %44, %19
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %9

71:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamFirFilter_StrictFP(%struct.BeamFirData* %0, i32 %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.BeamFirData*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store %struct.BeamFirData* %0, %struct.BeamFirData** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  %24 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %25 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 2, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %15, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %35 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = mul nsw i32 2, %37
  store i32 %38, i32* %14, align 4
  %39 = load float*, float** %9, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  %41 = load float, float* %40, align 4
  %42 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %43 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %42, i32 0, i32 4
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %41, float* %47, align 4
  %48 = load float*, float** %9, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %52 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %51, i32 0, i32 4
  %53 = load float*, float** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %53, i64 %56
  store float %50, float* %57, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %118, %5
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = mul nsw i32 2, %60
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %121

63:                                               ; preds = %58
  %64 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %65 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %64, i32 0, i32 4
  %66 = load float*, float** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  store float %70, float* %18, align 4
  %71 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %72 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %71, i32 0, i32 4
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %73, i64 %76
  %78 = load float, float* %77, align 4
  store float %78, float* %19, align 4
  %79 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %80 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %79, i32 0, i32 3
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  store float %85, float* %20, align 4
  %86 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %87 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %86, i32 0, i32 3
  %88 = load float*, float** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %88, i64 %91
  %93 = load float, float* %92, align 4
  store float %93, float* %21, align 4
  %94 = load float, float* %18, align 4
  %95 = load float, float* %20, align 4
  %96 = fmul float %94, %95
  %97 = load float, float* %19, align 4
  %98 = load float, float* %21, align 4
  %99 = fmul float %97, %98
  %100 = fadd float %96, %99
  store float %100, float* %22, align 4
  %101 = load float, float* %19, align 4
  %102 = load float, float* %20, align 4
  %103 = fmul float %101, %102
  %104 = load float, float* %18, align 4
  %105 = load float, float* %21, align 4
  %106 = fmul float %104, %105
  %107 = fadd float %103, %106
  store float %107, float* %23, align 4
  %108 = load float, float* %22, align 4
  %109 = load float, float* %11, align 4
  %110 = fadd float %109, %108
  store float %110, float* %11, align 4
  %111 = load float, float* %23, align 4
  %112 = load float, float* %12, align 4
  %113 = fadd float %112, %111
  store float %113, float* %12, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 2
  %116 = load i32, i32* %17, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %63
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %13, align 4
  br label %58

121:                                              ; preds = %58
  %122 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %123 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %16, align 4
  %127 = and i32 %125, %126
  %128 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %129 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load float, float* %11, align 4
  %131 = load float*, float** %10, align 8
  %132 = getelementptr inbounds float, float* %131, i64 0
  store float %130, float* %132, align 4
  %133 = load float, float* %12, align 4
  %134 = load float*, float** %10, align 8
  %135 = getelementptr inbounds float, float* %134, i64 1
  store float %133, float* %135, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %138 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %142 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %121
  %147 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %148 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %150 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %149, i32 0, i32 2
  store i32 0, i32* %150, align 8
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %165, %146
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %154 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 2, %155
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load %struct.BeamFirData*, %struct.BeamFirData** %6, align 8
  %160 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %159, i32 0, i32 4
  %161 = load float*, float** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float 0.000000e+00, float* %164, align 4
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %151

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %121
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BeamForm_StrictFP(i32 %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %78, %4
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = load float*, float** %6, align 8
  %17 = load i32, i32* %11, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %16, i64 %19
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = mul nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %22, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %21, %27
  %29 = load float*, float** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %29, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 2, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %36, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fmul float %35, %42
  %44 = fsub float %28, %43
  %45 = load float, float* %9, align 4
  %46 = fadd float %45, %44
  store float %46, float* %9, align 4
  %47 = load float*, float** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %47, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %53, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %52, %59
  %61 = load float*, float** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 2, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fmul float %67, %73
  %75 = fadd float %60, %74
  %76 = load float, float* %10, align 4
  %77 = fadd float %76, %75
  store float %77, float* %10, align 4
  br label %78

78:                                               ; preds = %15
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %12

81:                                               ; preds = %12
  %82 = load float, float* %9, align 4
  %83 = load float*, float** %8, align 8
  %84 = getelementptr inbounds float, float* %83, i64 0
  store float %82, float* %84, align 4
  %85 = load float, float* %10, align 4
  %86 = load float*, float** %8, align 8
  %87 = getelementptr inbounds float, float* %86, i64 1
  store float %85, float* %87, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Magnitude_StrictFP(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %49, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load float*, float** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %13, i64 %16
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %19, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float %18, %24
  %26 = load float*, float** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %26, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %33, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fmul float %32, %39
  %41 = fadd float %25, %40
  %42 = fpext float %41 to double
  %43 = call double @sqrt(double %42) #6
  %44 = fptrunc double %43 to float
  %45 = load float*, float** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float %44, float* %48, align 4
  br label %49

49:                                               ; preds = %12
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %8

52:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Detector_StrictFP(i32 %0, float* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %58, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load float*, float** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = fcmp oge double %24, 1.000000e-01
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to float
  store float %29, float* %8, align 4
  br label %31

30:                                               ; preds = %18
  store float 0.000000e+00, float* %8, align 4
  br label %31

31:                                               ; preds = %30, %26
  br label %47

32:                                               ; preds = %15, %12
  %33 = load float*, float** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = fcmp oge double %38, 1.000000e-01
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  %43 = sub nsw i32 0, %42
  %44 = sitofp i32 %43 to float
  store float %44, float* %8, align 4
  br label %46

45:                                               ; preds = %32
  store float 0.000000e+00, float* %8, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %31
  %48 = load float*, float** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  store float %52, float* %8, align 4
  %53 = load float, float* %8, align 4
  %54 = load float*, float** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  store float %53, float* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %9

61:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
