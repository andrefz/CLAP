; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@history = dso_local global [2 x [56 x i32]] [[56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0], [56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0]], align 16
@nodes = common dso_local global i64 0, align 8
@msecs = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"##-<=>+#\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Fhourstones 2.0\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Using %d transposition table entries with %d probes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Solving %d-ply position after \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%lu pos / %lu msec = %.1f Kpos/sec\0A\00", align 1
@plycnt = common dso_local global i32 0, align 4
@dias = common dso_local global [19 x i32] zeroinitializer, align 16
@columns = common dso_local global [128 x i32] zeroinitializer, align 16
@height = common dso_local global [128 x i32] zeroinitializer, align 16
@rows = common dso_local global [8 x i32] zeroinitializer, align 16
@colthr = common dso_local global [128 x i32] zeroinitializer, align 16
@colwon = common dso_local global [128 x i32] zeroinitializer, align 16
@moves = common dso_local global [44 x i32] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@millisecs.Time = internal global i64 0, align 8
@ht = common dso_local global i32* null, align 8
@he = common dso_local global i8* null, align 8
@hits = common dso_local global i64 0, align 8
@posed = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@htindex = common dso_local global i32 0, align 4
@stride = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [30 x i8] c"Failed to allocate %u bytes.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [19 x i8] c"store rate = %.3f\0A\00", align 1
@.str.2.38 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@.str.3.39 = private unnamed_addr constant [6 x i8] c"%7d%c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @c4_init() #0 {
  %1 = call i32 (...) bitcast (void ()* @trans_init to i32 (...)*)()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ab(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %18 = alloca [8 x i32], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %22 = load i64, i64* @nodes, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @nodes, align 8
  %24 = load i32, i32* @plycnt, align 4
  %25 = icmp eq i32 %24, 41
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %360

27:                                               ; preds = %2
  %28 = load i32, i32* @plycnt, align 4
  %29 = and i32 %28, 1
  store i32 %29, i32* %21, align 4
  %30 = xor i32 %29, 1
  store i32 %30, i32* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %117, %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = icmp sle i32 %33, 7
  br i1 %34, label %35, label %118

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @height to [0 x i32]*), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = icmp sle i32 %39, 6
  br i1 %40, label %41, label %117

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @wins to i32 (i32, i32, i32, ...)*)(i32 %42, i32 %43, i32 3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @columns to [0 x i32]*), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @colthr to [0 x i32]*), i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp sle i32 %57, 6
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %21, align 4
  %64 = shl i32 1, %63
  %65 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @wins to i32 (i32, i32, i32, ...)*)(i32 %60, i32 %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -2, i32* %3, align 4
  br label %360

68:                                               ; preds = %59, %55
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  store i32 %69, i32* %70, align 16
  br label %71

71:                                               ; preds = %96, %68
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = icmp sle i32 %73, 7
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @height to [0 x i32]*), i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  %80 = icmp sle i32 %79, 6
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @wins to i32 (i32, i32, i32, ...)*)(i32 %82, i32 %83, i32 3)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @columns to [0 x i32]*), i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @colthr to [0 x i32]*), i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86, %81
  store i32 -2, i32* %3, align 4
  br label %360

96:                                               ; preds = %86, %75
  br label %71

97:                                               ; preds = %71
  store i32 1, i32* %17, align 4
  br label %118

98:                                               ; preds = %46
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp sle i32 %100, 6
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %21, align 4
  %107 = shl i32 1, %106
  %108 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @wins to i32 (i32, i32, i32, ...)*)(i32 %103, i32 %105, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %102, %98
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %102
  br label %117

117:                                              ; preds = %116, %35
  br label %31

118:                                              ; preds = %97, %31
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 -2, i32* %3, align 4
  br label %360

122:                                              ; preds = %118
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = call i32 (i32, ...) bitcast (void (i32)* @makemove to i32 (i32, ...)*)(i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = sub nsw i32 0, %129
  %131 = load i32, i32* %4, align 4
  %132 = sub nsw i32 0, %131
  %133 = call i32 @ab(i32 %130, i32 %132)
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %13, align 4
  %135 = call i32 (...) bitcast (void ()* @backmove to i32 (...)*)()
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %3, align 4
  br label %360

137:                                              ; preds = %122
  %138 = call i32 (...) bitcast (i32 ()* @transpose to i32 (...)*)()
  store i32 %138, i32* %14, align 4
  %139 = icmp ne i32 %138, -128
  br i1 %139, label %140, label %164

140:                                              ; preds = %137
  %141 = load i32, i32* %14, align 4
  %142 = ashr i32 %141, 5
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp sle i32 0, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %3, align 4
  br label %360

150:                                              ; preds = %145
  br label %163

151:                                              ; preds = %140
  %152 = load i32, i32* %13, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp sge i32 0, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %3, align 4
  br label %360

159:                                              ; preds = %154
  br label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %3, align 4
  br label %360

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %137
  %165 = load i64, i64* @posed, align 8
  store i64 %165, i64* %19, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 -999999, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %258, %164
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %17, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %261

170:                                              ; preds = %166
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %8, align 4
  store i32 -999999, i32* %12, align 4
  br label %172

172:                                              ; preds = %201, %170
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %182
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @height to [0 x i32]*), i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 3
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [56 x i32], [56 x i32]* %183, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %176
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %197, %176
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %172

204:                                              ; preds = %172
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %204
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %218
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %222
  store i32 %220, i32* %223, align 4
  br label %224

224:                                              ; preds = %212, %204
  %225 = load i32, i32* %8, align 4
  %226 = call i32 (i32, ...) bitcast (void (i32)* @makemove to i32 (i32, ...)*)(i32 %225)
  %227 = load i32, i32* %5, align 4
  %228 = sub nsw i32 0, %227
  %229 = load i32, i32* %4, align 4
  %230 = sub nsw i32 0, %229
  %231 = call i32 @ab(i32 %228, i32 %230)
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %12, align 4
  %233 = call i32 (...) bitcast (void ()* @backmove to i32 (...)*)()
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %257

237:                                              ; preds = %224
  %238 = load i32, i32* %7, align 4
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %4, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %256

242:                                              ; preds = %237
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %4, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp sge i32 %243, %244
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  %247 = load i32, i32* %13, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %17, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i32 1, i32* %13, align 4
  br label %255

255:                                              ; preds = %254, %249, %246
  br label %261

256:                                              ; preds = %242, %237
  br label %257

257:                                              ; preds = %256, %224
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %166

261:                                              ; preds = %255, %166
  %262 = load i32, i32* %6, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %315

264:                                              ; preds = %261
  store i32 0, i32* %7, align 4
  br label %265

265:                                              ; preds = %290, %264
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %6, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %293

269:                                              ; preds = %265
  %270 = load i32, i32* %20, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %271
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @height to [0 x i32]*), i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %279, 3
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %280, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [56 x i32], [56 x i32]* %272, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %269
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %7, align 4
  br label %265

293:                                              ; preds = %265
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* %20, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %296
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @height to [0 x i32]*), i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = shl i32 %304, 3
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %305, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [56 x i32], [56 x i32]* %297, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, %294
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %293, %261
  %316 = load i64, i64* @posed, align 8
  %317 = load i64, i64* %19, align 8
  %318 = sub nsw i64 %316, %317
  store i64 %318, i64* %19, align 8
  store i32 1, i32* %16, align 4
  br label %319

319:                                              ; preds = %324, %315
  %320 = load i64, i64* %19, align 8
  %321 = ashr i64 %320, 1
  store i64 %321, i64* %19, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %16, align 4
  br label %319

327:                                              ; preds = %319
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, -128
  br i1 %329, label %330, label %341

330:                                              ; preds = %327
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %14, align 4
  %333 = ashr i32 %332, 5
  %334 = sub nsw i32 0, %333
  %335 = icmp eq i32 %331, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  store i32 0, i32* %13, align 4
  br label %337

337:                                              ; preds = %336, %330
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* %16, align 4
  %340 = call i32 (i32, i32, ...) bitcast (void (i32, i32)* @transrestore to i32 (i32, i32, ...)*)(i32 %338, i32 %339)
  br label %345

341:                                              ; preds = %327
  %342 = load i32, i32* %13, align 4
  %343 = load i32, i32* %16, align 4
  %344 = call i32 (i32, i32, ...) bitcast (void (i32, i32)* @transtore to i32 (i32, i32, ...)*)(i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %341, %337
  %346 = load i32, i32* @plycnt, align 4
  %347 = icmp eq i32 %346, 8
  br i1 %347, label %348, label %358

348:                                              ; preds = %345
  %349 = call i32 (...) bitcast (void ()* @printMoves to i32 (...)*)()
  %350 = load i32, i32* %13, align 4
  %351 = add nsw i32 4, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = load i32, i32* %16, align 4
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %348, %345
  %359 = load i32, i32* %13, align 4
  store i32 %359, i32* %3, align 4
  br label %360

360:                                              ; preds = %358, %160, %157, %148, %125, %121, %95, %67, %26
  %361 = load i32, i32* %3, align 4
  ret i32 %361
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @solve() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 0, i64* @nodes, align 8
  store i64 1, i64* @msecs, align 8
  %8 = load i32, i32* @plycnt, align 4
  %9 = add nsw i32 %8, 1
  %10 = and i32 %9, 1
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %49, %0
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  %14 = icmp sle i32 %13, 7
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @height to [0 x i32]*), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 6
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @height to [0 x i32]*), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = call i32 (i32, i32, i32, ...) bitcast (i32 (i32, i32, i32)* @wins to i32 (i32, i32, i32, ...)*)(i32 %22, i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @columns to [0 x i32]*), i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([128 x i32]* @colthr to [0 x i32]*), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = shl i32 1, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31, %21
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 2, i32 -2
  %47 = shl i32 %46, 5
  store i32 %47, i32* %1, align 4
  br label %81

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %15
  br label %11

50:                                               ; preds = %11
  %51 = call i32 (...) bitcast (i32 ()* @transpose to i32 (...)*)()
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %51, -128
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %1, align 4
  br label %81

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %50
  %61 = call i64 (...) bitcast (i64 ()* @millisecs to i64 (...)*)()
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* @msecs, align 8
  %63 = call i32 @ab(i32 -2, i32 2)
  store i32 %63, i32* %6, align 4
  %64 = load i64, i64* @posed, align 8
  store i64 %64, i64* %7, align 8
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %70, %60
  %66 = load i64, i64* %7, align 8
  %67 = ashr i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %65

73:                                               ; preds = %65
  %74 = call i64 (...) bitcast (i64 ()* @millisecs to i64 (...)*)()
  %75 = load i64, i64* @msecs, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* @msecs, align 8
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 5
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %73, %57, %42
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @c4_init()
  %5 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 1050011, i32 8)
  br label %7

7:                                                ; preds = %56, %0
  %8 = call i32 (...) bitcast (void ()* @reset to i32 (...)*)()
  br label %9

9:                                                ; preds = %51, %7
  %10 = call i32 @getchar()
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 49
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp sle i32 %16, 55
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 48
  %21 = call i32 (i32, ...) bitcast (void (i32)* @makemove to i32 (i32, ...)*)(i32 %20)
  br label %51

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 65
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = icmp sle i32 %26, 71
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 65
  %31 = add nsw i32 %30, 1
  %32 = call i32 (i32, ...) bitcast (void (i32)* @makemove to i32 (i32, ...)*)(i32 %31)
  br label %50

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %2, align 4
  %35 = icmp sge i32 %34, 97
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = icmp sle i32 %37, 103
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 %40, 97
  %42 = add nsw i32 %41, 1
  %43 = call i32 (i32, ...) bitcast (void (i32)* @makemove to i32 (i32, ...)*)(i32 %42)
  br label %49

44:                                               ; preds = %36, %33
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %52

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %50, %18
  br label %9

52:                                               ; preds = %47, %9
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %84

56:                                               ; preds = %52
  %57 = load i32, i32* @plycnt, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = call i32 (...) bitcast (void ()* @printMoves to i32 (...)*)()
  %60 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 (...) bitcast (void ()* @emptyTT to i32 (...)*)()
  %62 = call i32 @solve()
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 5
  %65 = load i32, i32* %4, align 4
  %66 = ashr i32 %65, 5
  %67 = add nsw i32 4, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 31
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %64, i32 %71, i32 %73)
  %75 = load i64, i64* @nodes, align 8
  %76 = load i64, i64* @msecs, align 8
  %77 = load i64, i64* @nodes, align 8
  %78 = sitofp i64 %77 to double
  %79 = load i64, i64* @msecs, align 8
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %78, %80
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %75, i64 %76, double %81)
  %83 = call i32 (...) bitcast (void ()* @htstat to i32 (...)*)()
  br label %7

84:                                               ; preds = %55
  ret i32 0
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @getchar() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @plycnt, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 19
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %7
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2

12:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %18
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %21
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %13

29:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @play_init() #0 {
  %1 = alloca i32, align 4
  store i32 8, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 128
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i64 0, i64 %7
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i64 0, i64 %11
  store i32 2, i32* %12, align 4
  br label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 8
  store i32 %15, i32* %1, align 4
  br label %2

16:                                               ; preds = %2
  store i32 16, i32* %1, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i64 0, i64 %26
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 16
  store i32 %30, i32* %1, align 4
  br label %17

31:                                               ; preds = %17
  call void @reset()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printMoves() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @plycnt, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2

15:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @wins(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 2, %10
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 2
  %23 = and i32 %20, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 4
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 5, %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 2
  %43 = and i32 %40, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %45, 4
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %70

50:                                               ; preds = %30
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 5, %51
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 2
  %63 = and i32 %60, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 4
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %50, %49, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @backmove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @plycnt, align 4
  %7 = and i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @plycnt, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @plycnt, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 2, %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 5, %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %35
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 5, %45
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %44
  store i32 %52, i32* %50, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makemove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @plycnt, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @plycnt, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %10
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @plycnt, align 4
  %13 = and i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = mul nsw i32 2, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = shl i32 1, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 5, %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 5, %50
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %49
  store i32 %57, i32* %55, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @millisecs() #0 {
  %1 = load i64, i64* @millisecs.Time, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @millisecs.Time, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @trans_init() #0 {
  %1 = call i32 (...) bitcast (void ()* @play_init to i32 (...)*)()
  %2 = call noalias i8* @calloc(i64 1050011, i64 4) #4
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** @ht, align 8
  %4 = call noalias i8* @calloc(i64 1050011, i64 1) #4
  store i8* %4, i8** @he, align 8
  %5 = load i32*, i32** @ht, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** @he, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i64 5250055)
  call void @exit(i32 0) #5
  unreachable

12:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @emptyTT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1050011
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = load i8*, i8** @he, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = and i32 %13, 31
  store i32 %14, i32* %3, align 4
  %15 = icmp slt i32 %14, 31
  br i1 %15, label %16, label %31

16:                                               ; preds = %7
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 4, %22 ]
  %25 = sub nsw i32 %17, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** @he, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

31:                                               ; preds = %23, %7
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %4

35:                                               ; preds = %4
  store i64 0, i64* @hits, align 8
  store i64 0, i64* @posed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @hitRate() #0 {
  %1 = load i64, i64* @posed, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i64, i64* @hits, align 8
  %5 = sitofp i64 %4 to double
  %6 = load i64, i64* @posed, align 8
  %7 = sitofp i64 %6 to double
  %8 = fdiv double %5, %7
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi double [ %8, %3 ], [ 0.000000e+00, %9 ]
  ret double %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 1), align 4
  %5 = shl i32 %4, 7
  %6 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 2), align 4
  %7 = or i32 %5, %6
  %8 = shl i32 %7, 7
  %9 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 3), align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 7), align 4
  %12 = shl i32 %11, 7
  %13 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 6), align 4
  %14 = or i32 %12, %13
  %15 = shl i32 %14, 7
  %16 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 5), align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %0
  %22 = load i32, i32* %1, align 4
  %23 = shl i32 %22, 7
  %24 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 4), align 4
  %25 = or i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = shl i64 %26, 21
  %28 = load i32, i32* %2, align 4
  %29 = zext i32 %28 to i64
  %30 = or i64 %27, %29
  br label %41

31:                                               ; preds = %0
  %32 = load i32, i32* %2, align 4
  %33 = shl i32 %32, 7
  %34 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i64 0, i64 4), align 4
  %35 = or i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = shl i64 %36, 21
  %38 = load i32, i32* %1, align 4
  %39 = zext i32 %38 to i64
  %40 = or i64 %37, %39
  br label %41

41:                                               ; preds = %31, %21
  %42 = phi i64 [ %30, %21 ], [ %40, %31 ]
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = ashr i64 %43, 17
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* @lock, align 4
  %46 = load i64, i64* %3, align 8
  %47 = srem i64 %46, 1050011
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @htindex, align 4
  %49 = load i32, i32* @lock, align 4
  %50 = urem i32 %49, 179
  %51 = add i32 131072, %50
  store i32 %51, i32* @stride, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @transpose() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @hash()
  %4 = load i32, i32* @htindex, align 4
  store i32 %4, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %32, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %35

8:                                                ; preds = %5
  %9 = load i32*, i32** @ht, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @lock, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load i8*, i8** @he, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %1, align 4
  br label %36

23:                                               ; preds = %8
  %24 = load i32, i32* @stride, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = icmp sge i32 %26, 1050011
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 1050011
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %5

35:                                               ; preds = %5
  store i32 -128, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @transput(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @htindex, align 4
  store i32 %7, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %47, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %50

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** @he, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %18, 31
  %20 = icmp sgt i32 %12, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = load i64, i64* @hits, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @hits, align 8
  %24 = load i32, i32* @lock, align 4
  %25 = load i32*, i32** @ht, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 5
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %30, %31
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** @he, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  br label %50

38:                                               ; preds = %11
  %39 = load i32, i32* @stride, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = icmp sge i32 %41, 1050011
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1050011
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %8

50:                                               ; preds = %21, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @transrestore(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 31
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 31, i32* %4, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i64, i64* @posed, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @posed, align 8
  call void @hash()
  %13 = load i32, i32* @htindex, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %46, %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i32*, i32** @ht, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @lock, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load i64, i64* @hits, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @hits, align 8
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 5
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %29, %30
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** @he, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %32, i8* %36, align 1
  br label %52

37:                                               ; preds = %17
  %38 = load i32, i32* @stride, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = icmp sge i32 %40, 1050011
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1050011
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  call void @transput(i32 %50, i32 %51)
  br label %52

52:                                               ; preds = %49, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @transtore(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 31
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 31, i32* %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i64, i64* @posed, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* @posed, align 8
  call void @hash()
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  call void @transput(i32 %11, i32 %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @htstat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [32 x i32], align 16
  %4 = alloca [8 x i32], align 16
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 %10
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %5

15:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %23, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %21
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %16

26:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 1050011
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  %31 = load i8*, i8** @he, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %36, 31
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i8*, i8** @he, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, 31
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %30
  %51 = load i8*, i8** @he, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = ashr i32 %56, 5
  %58 = add nsw i32 4, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %50, %30
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %27

67:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load i32, i32* %1, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %118

84:                                               ; preds = %81
  %85 = call double @hitRate()
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.37, i64 0, i64 0), double %85)
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = sitofp i32 %88 to double
  %90 = load i32, i32* %1, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %89, %91
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = load i32, i32* %1, align 4
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %95, %97
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %100 = load i32, i32* %99, align 16
  %101 = sitofp i32 %100 to double
  %102 = load i32, i32* %1, align 4
  %103 = sitofp i32 %102 to double
  %104 = fdiv double %101, %103
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to double
  %108 = load i32, i32* %1, align 4
  %109 = sitofp i32 %108 to double
  %110 = fdiv double %107, %109
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %112 = load i32, i32* %111, align 8
  %113 = sitofp i32 %112 to double
  %114 = load i32, i32* %1, align 4
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %113, %115
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2.38, i64 0, i64 0), double %92, double %98, double %104, double %110, double %116)
  br label %118

118:                                              ; preds = %84, %81
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %133, %118
  %120 = load i32, i32* %2, align 4
  %121 = icmp slt i32 %120, 32
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %2, align 4
  %128 = and i32 %127, 7
  %129 = icmp eq i32 %128, 7
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 10, i32 9
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.39, i64 0, i64 0), i32 %126, i32 %131)
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %119

136:                                              ; preds = %119
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
