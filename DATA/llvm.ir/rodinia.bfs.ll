; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Node = type { i32, i32 }

@fp = dso_local global %struct._IO_FILE* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reading File\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Start traversing the tree\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Result stored in result.txt\0A\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z5UsageiPPc(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %8)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  call void @_Z8BFSGraphiPPc(i32 %5, i8** %6)
  ret i32 0
}

; Function Attrs: noinline uwtable
define dso_local void @_Z8BFSGraphiPPc(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct._IO_FILE*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %3, align 4
  %34 = load i8**, i8*** %4, align 8
  call void @_Z5UsageiPPc(i32 %33, i8** %34)
  call void @exit(i32 0) #5
  unreachable

35:                                               ; preds = %2
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %7, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** %7, align 8
  %41 = call %struct._IO_FILE* @fopen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %41, %struct._IO_FILE** @fp, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %43 = icmp ne %struct._IO_FILE* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %310

46:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = call noalias i8* @malloc(i64 %51) #6
  %53 = bitcast i8* %52 to %struct.Node*
  store %struct.Node* %53, %struct.Node** %9, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 1, %55
  %57 = call noalias i8* @malloc(i64 %56) #6
  store i8* %57, i8** %10, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 1, %59
  %61 = call noalias i8* @malloc(i64 %60) #6
  store i8* %61, i8** %11, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 1, %63
  %65 = call noalias i8* @malloc(i64 %64) #6
  store i8* %65, i8** %12, align 8
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %97, %46
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %66
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %13, i32* %14)
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.Node*, %struct.Node** %9, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Node, %struct.Node* %74, i64 %76
  %78 = getelementptr inbounds %struct.Node, %struct.Node* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.Node*, %struct.Node** %9, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.Node, %struct.Node* %80, i64 %82
  %84 = getelementptr inbounds %struct.Node, %struct.Node* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  br label %97

97:                                               ; preds = %70
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %66

100:                                              ; preds = %66
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 1, i8* %106, align 1
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 1, i8* %110, align 1
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = call noalias i8* @malloc(i64 %115) #6
  %117 = bitcast i8* %116 to i32*
  store i32* %117, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %118

118:                                              ; preds = %132, %100
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %16)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %17)
  %127 = load i32, i32* %16, align 4
  %128 = load i32*, i32** %18, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %118

135:                                              ; preds = %118
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %137 = icmp ne %struct._IO_FILE* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %140 = call i32 @fclose(%struct._IO_FILE* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 4, %143
  %145 = call noalias i8* @malloc(i64 %144) #6
  %146 = bitcast i8* %145 to i32*
  store i32* %146, i32** %20, align 8
  store i32 0, i32* %21, align 4
  br label %147

147:                                              ; preds = %156, %141
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i32*, i32** %20, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 -1, i32* %155, align 4
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %21, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %21, align 4
  br label %147

159:                                              ; preds = %147
  %160 = load i32*, i32** %20, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 0, i32* %163, align 4
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  br label %165

165:                                              ; preds = %276, %159
  store i8 0, i8* %23, align 1
  store i32 0, i32* %24, align 4
  br label %166

166:                                              ; preds = %239, %165
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %242

170:                                              ; preds = %166
  %171 = load i8*, i8** %10, align 8
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = trunc i8 %175 to i1
  %177 = zext i1 %176 to i32
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %238

179:                                              ; preds = %170
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* %24, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load %struct.Node*, %struct.Node** %9, align 8
  %185 = load i32, i32* %24, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.Node, %struct.Node* %184, i64 %186
  %188 = getelementptr inbounds %struct.Node, %struct.Node* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %25, align 4
  br label %190

190:                                              ; preds = %234, %179
  %191 = load i32, i32* %25, align 4
  %192 = load %struct.Node*, %struct.Node** %9, align 8
  %193 = load i32, i32* %24, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.Node, %struct.Node* %192, i64 %194
  %196 = getelementptr inbounds %struct.Node, %struct.Node* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.Node*, %struct.Node** %9, align 8
  %199 = load i32, i32* %24, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.Node, %struct.Node* %198, i64 %200
  %202 = getelementptr inbounds %struct.Node, %struct.Node* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %197, %203
  %205 = icmp slt i32 %191, %204
  br i1 %205, label %206, label %237

206:                                              ; preds = %190
  %207 = load i32*, i32** %18, align 8
  %208 = load i32, i32* %25, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %26, align 4
  %212 = load i8*, i8** %12, align 8
  %213 = load i32, i32* %26, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = trunc i8 %216 to i1
  br i1 %217, label %233, label %218

218:                                              ; preds = %206
  %219 = load i32*, i32** %20, align 8
  %220 = load i32, i32* %24, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32*, i32** %20, align 8
  %226 = load i32, i32* %26, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = load i8*, i8** %11, align 8
  %230 = load i32, i32* %26, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  store i8 1, i8* %232, align 1
  br label %233

233:                                              ; preds = %218, %206
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %25, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %25, align 4
  br label %190

237:                                              ; preds = %190
  br label %238

238:                                              ; preds = %237, %170
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %24, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %24, align 4
  br label %166

242:                                              ; preds = %166
  store i32 0, i32* %27, align 4
  br label %243

243:                                              ; preds = %270, %242
  %244 = load i32, i32* %27, align 4
  %245 = load i32, i32* %5, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %273

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8
  %249 = load i32, i32* %27, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = trunc i8 %252 to i1
  %254 = zext i1 %253 to i32
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %269

256:                                              ; preds = %247
  %257 = load i8*, i8** %10, align 8
  %258 = load i32, i32* %27, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i8 1, i8* %260, align 1
  %261 = load i8*, i8** %12, align 8
  %262 = load i32, i32* %27, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  store i8 1, i8* %264, align 1
  store i8 1, i8* %23, align 1
  %265 = load i8*, i8** %11, align 8
  %266 = load i32, i32* %27, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  store i8 0, i8* %268, align 1
  br label %269

269:                                              ; preds = %256, %247
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %27, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %27, align 4
  br label %243

273:                                              ; preds = %243
  %274 = load i32, i32* %22, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %22, align 4
  br label %276

276:                                              ; preds = %273
  %277 = load i8, i8* %23, align 1
  %278 = trunc i8 %277 to i1
  br i1 %278, label %165, label %279

279:                                              ; preds = %276
  %280 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %280, %struct._IO_FILE** %28, align 8
  store i32 0, i32* %29, align 4
  br label %281

281:                                              ; preds = %294, %279
  %282 = load i32, i32* %29, align 4
  %283 = load i32, i32* %5, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %297

285:                                              ; preds = %281
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %287 = load i32, i32* %29, align 4
  %288 = load i32*, i32** %20, align 8
  %289 = load i32, i32* %29, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %286, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %287, i32 %292)
  br label %294

294:                                              ; preds = %285
  %295 = load i32, i32* %29, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %29, align 4
  br label %281

297:                                              ; preds = %281
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %299 = call i32 @fclose(%struct._IO_FILE* %298)
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %301 = load %struct.Node*, %struct.Node** %9, align 8
  %302 = bitcast %struct.Node* %301 to i8*
  call void @free(i8* %302) #6
  %303 = load i32*, i32** %18, align 8
  %304 = bitcast i32* %303 to i8*
  call void @free(i8* %304) #6
  %305 = load i8*, i8** %10, align 8
  call void @free(i8* %305) #6
  %306 = load i8*, i8** %11, align 8
  call void @free(i8* %306) #6
  %307 = load i8*, i8** %12, align 8
  call void @free(i8* %307) #6
  %308 = load i32*, i32** %20, align 8
  %309 = bitcast i32* %308 to i8*
  call void @free(i8* %309) #6
  br label %310

310:                                              ; preds = %297, %44
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
