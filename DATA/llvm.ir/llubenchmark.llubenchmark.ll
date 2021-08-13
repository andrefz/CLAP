; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.element = type { %struct.element*, i32 }

@free_list = dso_local global %struct.element* null, align 8
@next_free = dso_local global i32 127, align 4
@element_size = dso_local global i32 32, align 4
@num_allocated = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"-i <number of (I)terations>\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"[-l <initial (L)ength of list, in elements>] (default 1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[-n <(N)umber of lists>] (default 1 list)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"[-s <(S)ize of element>] (default 32 bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"[-g <(G)rowth rate per list, in elements per iteration>] (default 0)\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"[-d] ((D)irty each element during traversal, default off)\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"[-t] (insert at (T)ail of list, default off)\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"This benchmark modified to not use hard coded pool allocation!\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"parse error in %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"unrecognized option: %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"output = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"num allocated %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.element* @allocate() #0 {
  %1 = load i32, i32* @num_allocated, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @num_allocated, align 4
  %3 = call noalias i8* @malloc(i64 16) #4
  %4 = bitcast i8* %3 to %struct.element*
  ret %struct.element* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.element**, align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.element*, align 8
  %21 = alloca %struct.element*, align 8
  %22 = alloca %struct.element*, align 8
  %23 = alloca %struct.element*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 196, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store float 0x3FD54FDF40000000, float* %11, align 4
  store i8 0, i8* %12, align 1
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store %struct.element** null, %struct.element*** %17, align 8
  store float 0.000000e+00, float* %18, align 4
  store i32 1, i32* %19, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  br label %25

25:                                               ; preds = %121, %2
  %26 = load i32, i32* %19, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %122

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %19, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 45
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39, %29
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  call void @usage(i8* %58)
  store i32 -1, i32* %3, align 4
  br label %298

59:                                               ; preds = %39
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %12, align 1
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %114 [
    i32 100, label %71
    i32 103, label %72
    i32 105, label %81
    i32 108, label %89
    i32 110, label %97
    i32 115, label %105
    i32 116, label %113
  ]

71:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %121

72:                                               ; preds = %59
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %19, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call double @atof(i8* %78) #5
  %80 = fptrunc double %79 to float
  store float %80, float* %11, align 4
  br label %121

81:                                               ; preds = %59
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %19, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @atoi(i8* %87) #5
  store i32 %88, i32* %6, align 4
  br label %121

89:                                               ; preds = %59
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @atoi(i8* %95) #5
  store i32 %96, i32* %10, align 4
  br label %121

97:                                               ; preds = %59
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %19, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @atoi(i8* %103) #5
  store i32 %104, i32* %8, align 4
  br label %121

105:                                              ; preds = %59
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @atoi(i8* %111) #5
  store i32 %112, i32* @element_size, align 4
  br label %121

113:                                              ; preds = %59
  store i32 1, i32* %9, align 4
  br label %121

114:                                              ; preds = %59
  %115 = load i8, i8* %12, align 1
  %116 = sext i8 %115 to i32
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  call void @usage(i8* %120)
  store i32 -1, i32* %3, align 4
  br label %298

121:                                              ; preds = %113, %105, %97, %89, %81, %72, %71
  br label %25

122:                                              ; preds = %25
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 8
  %126 = call noalias i8* @malloc(i64 %125) #4
  %127 = bitcast i8* %126 to %struct.element**
  store %struct.element** %127, %struct.element*** %17, align 8
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %137, %122
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load %struct.element**, %struct.element*** %17, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.element*, %struct.element** %133, i64 %135
  store %struct.element* null, %struct.element** %136, align 8
  br label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %128

140:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %170, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %166, %145
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = call %struct.element* @allocate()
  store %struct.element* %151, %struct.element** %20, align 8
  %152 = load %struct.element**, %struct.element*** %17, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.element*, %struct.element** %152, i64 %154
  %156 = load %struct.element*, %struct.element** %155, align 8
  %157 = load %struct.element*, %struct.element** %20, align 8
  %158 = getelementptr inbounds %struct.element, %struct.element* %157, i32 0, i32 0
  store %struct.element* %156, %struct.element** %158, align 8
  %159 = load %struct.element*, %struct.element** %20, align 8
  %160 = getelementptr inbounds %struct.element, %struct.element* %159, i32 0, i32 1
  store i32 0, i32* %160, align 8
  %161 = load %struct.element*, %struct.element** %20, align 8
  %162 = load %struct.element**, %struct.element*** %17, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.element*, %struct.element** %162, i64 %164
  store %struct.element* %161, %struct.element** %165, align 8
  br label %166

166:                                              ; preds = %150
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %146

169:                                              ; preds = %146
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %141

173:                                              ; preds = %141
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %290, %173
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %293

178:                                              ; preds = %174
  %179 = load i32, i32* %13, align 4
  %180 = srem i32 %179, 1000
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32, i32* %13, align 4
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %182, %178
  store i32 0, i32* %14, align 4
  br label %186

186:                                              ; preds = %217, %185
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %220

190:                                              ; preds = %186
  %191 = load %struct.element**, %struct.element*** %17, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.element*, %struct.element** %191, i64 %193
  %195 = load %struct.element*, %struct.element** %194, align 8
  store %struct.element* %195, %struct.element** %21, align 8
  br label %196

196:                                              ; preds = %212, %190
  %197 = load %struct.element*, %struct.element** %21, align 8
  %198 = icmp ne %struct.element* %197, null
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = load %struct.element*, %struct.element** %21, align 8
  %201 = getelementptr inbounds %struct.element, %struct.element* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %16, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %199
  %208 = load %struct.element*, %struct.element** %21, align 8
  %209 = getelementptr inbounds %struct.element, %struct.element* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %207, %199
  %213 = load %struct.element*, %struct.element** %21, align 8
  %214 = getelementptr inbounds %struct.element, %struct.element* %213, i32 0, i32 0
  %215 = load %struct.element*, %struct.element** %214, align 8
  store %struct.element* %215, %struct.element** %21, align 8
  br label %196

216:                                              ; preds = %196
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %14, align 4
  br label %186

220:                                              ; preds = %186
  %221 = load float, float* %11, align 4
  %222 = load float, float* %18, align 4
  %223 = fadd float %222, %221
  store float %223, float* %18, align 4
  %224 = load float, float* %18, align 4
  %225 = fptosi float %224 to i32
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %14, align 4
  %227 = sitofp i32 %226 to float
  %228 = load float, float* %18, align 4
  %229 = fsub float %228, %227
  store float %229, float* %18, align 4
  br label %230

230:                                              ; preds = %286, %220
  %231 = load i32, i32* %14, align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %289

233:                                              ; preds = %230
  store i32 0, i32* %15, align 4
  br label %234

234:                                              ; preds = %282, %233
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %285

238:                                              ; preds = %234
  %239 = call %struct.element* @allocate()
  store %struct.element* %239, %struct.element** %22, align 8
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %240, %241
  %243 = load %struct.element*, %struct.element** %22, align 8
  %244 = getelementptr inbounds %struct.element, %struct.element* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* %9, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %268

247:                                              ; preds = %238
  %248 = load %struct.element**, %struct.element*** %17, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.element*, %struct.element** %248, i64 %250
  %252 = load %struct.element*, %struct.element** %251, align 8
  store %struct.element* %252, %struct.element** %23, align 8
  br label %253

253:                                              ; preds = %258, %247
  %254 = load %struct.element*, %struct.element** %23, align 8
  %255 = getelementptr inbounds %struct.element, %struct.element* %254, i32 0, i32 0
  %256 = load %struct.element*, %struct.element** %255, align 8
  %257 = icmp ne %struct.element* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load %struct.element*, %struct.element** %23, align 8
  %260 = getelementptr inbounds %struct.element, %struct.element* %259, i32 0, i32 0
  %261 = load %struct.element*, %struct.element** %260, align 8
  store %struct.element* %261, %struct.element** %23, align 8
  br label %253

262:                                              ; preds = %253
  %263 = load %struct.element*, %struct.element** %22, align 8
  %264 = load %struct.element*, %struct.element** %23, align 8
  %265 = getelementptr inbounds %struct.element, %struct.element* %264, i32 0, i32 0
  store %struct.element* %263, %struct.element** %265, align 8
  %266 = load %struct.element*, %struct.element** %22, align 8
  %267 = getelementptr inbounds %struct.element, %struct.element* %266, i32 0, i32 0
  store %struct.element* null, %struct.element** %267, align 8
  br label %281

268:                                              ; preds = %238
  %269 = load %struct.element**, %struct.element*** %17, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.element*, %struct.element** %269, i64 %271
  %273 = load %struct.element*, %struct.element** %272, align 8
  %274 = load %struct.element*, %struct.element** %22, align 8
  %275 = getelementptr inbounds %struct.element, %struct.element* %274, i32 0, i32 0
  store %struct.element* %273, %struct.element** %275, align 8
  %276 = load %struct.element*, %struct.element** %22, align 8
  %277 = load %struct.element**, %struct.element*** %17, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.element*, %struct.element** %277, i64 %279
  store %struct.element* %276, %struct.element** %280, align 8
  br label %281

281:                                              ; preds = %268, %262
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %15, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %15, align 4
  br label %234

285:                                              ; preds = %234
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %14, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %14, align 4
  br label %230

289:                                              ; preds = %230
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %13, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %13, align 4
  br label %174

293:                                              ; preds = %174
  %294 = load i32, i32* %16, align 4
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* @num_allocated, align 4
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %296)
  store i32 0, i32* %3, align 4
  br label %298

298:                                              ; preds = %293, %114, %49
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
