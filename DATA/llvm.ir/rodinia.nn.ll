; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.neighbor = type { [49 x i8], double }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid set of arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"error opening flist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no room for neighbors\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"error reading filelist\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"error opening a db\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"The %d nearest neighbors are:\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%s --> %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [490 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [64 x i8], align 16
  %18 = alloca %struct.neighbor*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = call i32 (...) @clock()
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.neighbor* null, %struct.neighbor** %18, align 8
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 5
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

36:                                               ; preds = %2
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call %struct._IO_FILE* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %40, %struct._IO_FILE** %7, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %42 = icmp ne %struct._IO_FILE* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

45:                                               ; preds = %36
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @atoi(i8* %48) #6
  store i32 %49, i32* %11, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  %52 = load i8*, i8** %51, align 8
  %53 = call double @atof(i8* %52) #6
  %54 = fptrunc double %53 to float
  store float %54, float* %19, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 4
  %57 = load i8*, i8** %56, align 8
  %58 = call double @atof(i8* %57) #6
  %59 = fptrunc double %58 to float
  store float %59, float* %20, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 64
  %63 = call noalias i8* @malloc(i64 %62) #7
  %64 = bitcast i8* %63 to %struct.neighbor*
  store %struct.neighbor* %64, %struct.neighbor** %18, align 8
  %65 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %66 = icmp eq %struct.neighbor* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %45
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 0) #5
  unreachable

70:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %81, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %76, i64 %78
  %80 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %79, i32 0, i32 1
  store double 1.000000e+04, double* %80, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %71

84:                                               ; preds = %71
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 0) #5
  unreachable

92:                                               ; preds = %84
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %94 = call %struct._IO_FILE* @fopen(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %94, %struct._IO_FILE** %8, align 8
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %96 = icmp ne %struct._IO_FILE* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

99:                                               ; preds = %92
  %100 = call noalias i8* @malloc(i64 40) #7
  %101 = bitcast i8* %100 to float*
  store float* %101, float** %23, align 8
  br label %102

102:                                              ; preds = %269, %99
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br i1 %105, label %106, label %270

106:                                              ; preds = %102
  %107 = getelementptr inbounds [490 x i8], [490 x i8]* %14, i64 0, i64 0
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %109 = call i64 @fread(i8* %107, i64 49, i64 10, %struct._IO_FILE* %108)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 10
  br i1 %112, label %113, label %143

113:                                              ; preds = %106
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %115 = call i32 @ferror(%struct._IO_FILE* %114) #7
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %141, label %117

117:                                              ; preds = %113
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %119 = call i32 @fclose(%struct._IO_FILE* %118)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %121 = call i32 @feof(%struct._IO_FILE* %120) #7
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %13, align 4
  br label %140

124:                                              ; preds = %117
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %126)
  %128 = icmp ne i32 %127, 1
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 0) #5
  unreachable

132:                                              ; preds = %124
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %134 = call %struct._IO_FILE* @fopen(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %134, %struct._IO_FILE** %8, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %136 = icmp ne %struct._IO_FILE* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %123
  br label %142

141:                                              ; preds = %113
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 0) #5
  unreachable

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %106
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %185, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %188

148:                                              ; preds = %144
  %149 = getelementptr inbounds [490 x i8], [490 x i8]* %14, i64 0, i64 0
  %150 = load i32, i32* %9, align 4
  %151 = mul nsw i32 %150, 49
  %152 = add nsw i32 %151, 28
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %149, i64 %154
  store i8* %155, i8** %15, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = call double @atof(i8* %156) #6
  %158 = fptrunc double %157 to float
  store float %158, float* %24, align 4
  %159 = load i8*, i8** %15, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 5
  %161 = call double @atof(i8* %160) #6
  %162 = fptrunc double %161 to float
  store float %162, float* %25, align 4
  %163 = load float, float* %24, align 4
  %164 = load float, float* %19, align 4
  %165 = fsub float %163, %164
  %166 = load float, float* %24, align 4
  %167 = load float, float* %19, align 4
  %168 = fsub float %166, %167
  %169 = fmul float %165, %168
  %170 = load float, float* %25, align 4
  %171 = load float, float* %20, align 4
  %172 = fsub float %170, %171
  %173 = load float, float* %25, align 4
  %174 = load float, float* %20, align 4
  %175 = fsub float %173, %174
  %176 = fmul float %172, %175
  %177 = fadd float %169, %176
  %178 = fpext float %177 to double
  %179 = call double @sqrt(double %178) #7
  %180 = fptrunc double %179 to float
  %181 = load float*, float** %23, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  store float %180, float* %184, align 4
  br label %185

185:                                              ; preds = %148
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %144

188:                                              ; preds = %144
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %266, %188
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %269

193:                                              ; preds = %189
  store float -1.000000e+00, float* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %218, %193
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %221

198:                                              ; preds = %194
  %199 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %199, i64 %201
  %203 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %202, i32 0, i32 1
  %204 = load double, double* %203, align 8
  %205 = load float, float* %26, align 4
  %206 = fpext float %205 to double
  %207 = fcmp ogt double %204, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %198
  %209 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %209, i64 %211
  %213 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %212, i32 0, i32 1
  %214 = load double, double* %213, align 8
  %215 = fptrunc double %214 to float
  store float %215, float* %26, align 4
  %216 = load i32, i32* %10, align 4
  store i32 %216, i32* %27, align 4
  br label %217

217:                                              ; preds = %208, %198
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %194

221:                                              ; preds = %194
  %222 = load float*, float** %23, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %222, i64 %224
  %226 = load float, float* %225, align 4
  %227 = fpext float %226 to double
  %228 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %229 = load i32, i32* %27, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %228, i64 %230
  %232 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %231, i32 0, i32 1
  %233 = load double, double* %232, align 8
  %234 = fcmp olt double %227, %233
  br i1 %234, label %235, label %265

235:                                              ; preds = %221
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  %238 = mul nsw i32 %237, 49
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [490 x i8], [490 x i8]* %14, i64 0, i64 %240
  store i8 0, i8* %241, align 1
  %242 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %243 = load i32, i32* %27, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %242, i64 %244
  %246 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %245, i32 0, i32 0
  %247 = getelementptr inbounds [49 x i8], [49 x i8]* %246, i64 0, i64 0
  %248 = getelementptr inbounds [490 x i8], [490 x i8]* %14, i64 0, i64 0
  %249 = load i32, i32* %9, align 4
  %250 = mul nsw i32 %249, 49
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %248, i64 %251
  %253 = call i8* @strcpy(i8* %247, i8* %252) #7
  %254 = load float*, float** %23, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %254, i64 %256
  %258 = load float, float* %257, align 4
  %259 = fpext float %258 to double
  %260 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %261 = load i32, i32* %27, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %260, i64 %262
  %264 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %263, i32 0, i32 1
  store double %259, double* %264, align 8
  br label %265

265:                                              ; preds = %235, %221
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %189

269:                                              ; preds = %189
  br label %102

270:                                              ; preds = %102
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %272 = load i32, i32* %11, align 4
  %273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %272)
  store i32 0, i32* %10, align 4
  br label %274

274:                                              ; preds = %302, %270
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %305

278:                                              ; preds = %274
  %279 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %279, i64 %281
  %283 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %282, i32 0, i32 1
  %284 = load double, double* %283, align 8
  %285 = fcmp oeq double %284, 1.000000e+04
  br i1 %285, label %301, label %286

286:                                              ; preds = %278
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %288 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %289 = load i32, i32* %10, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %288, i64 %290
  %292 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %291, i32 0, i32 0
  %293 = getelementptr inbounds [49 x i8], [49 x i8]* %292, i64 0, i64 0
  %294 = load %struct.neighbor*, %struct.neighbor** %18, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %294, i64 %296
  %298 = getelementptr inbounds %struct.neighbor, %struct.neighbor* %297, i32 0, i32 1
  %299 = load double, double* %298, align 8
  %300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %293, double %299)
  br label %301

301:                                              ; preds = %286, %278
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %10, align 4
  br label %274

305:                                              ; preds = %274
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %307 = call i32 @fclose(%struct._IO_FILE* %306)
  %308 = call i32 (...) @clock()
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %28, align 8
  ret i32 0
}

declare dso_local i32 @clock(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #4

declare dso_local void @perror(i8*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
