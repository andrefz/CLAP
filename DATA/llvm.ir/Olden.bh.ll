; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i16, double, [3 x double], i32, i32 }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, %struct.bnode*, %struct.bnode* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tree = type { [3 x double], double, %struct.node*, [64 x %struct.bnode*], [64 x %struct.bnode*] }
%struct.datapoints = type { [3 x double], [3 x double], %struct.bnode*, %struct.bnode* }
%struct.icstruct = type { [3 x i32], i16 }
%struct.hgstruct = type { %struct.bnode*, [3 x double], double, [3 x double] }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x %struct.node*], %struct.cnode* }

@nbody = common dso_local global i32 0, align 4
@NumNodes = common dso_local global i32 0, align 4
@cp_free_list = dso_local global %struct.node* null, align 8
@bp_free_list = dso_local global %struct.bnode* null, align 8
@root = common dso_local global %struct.node* null, align 8
@rmin = common dso_local global [3 x double] zeroinitializer, align 16
@xxxrsize = common dso_local global double 0.000000e+00, align 8
@arg1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bodies created \0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"testdata: not enough memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%2d BODY@%x %f, %f, %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%2d CELL@%x %f, %f, %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%2d NULL TREE\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"Error\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 2
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11) #8
  store i32 %12, i32* @NumNodes, align 4
  br label %14

13:                                               ; preds = %2
  store i32 4, i32* @NumNodes, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20) #8
  store i32 %21, i32* @nbody, align 4
  br label %23

22:                                               ; preds = %14
  store i32 32, i32* @nbody, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.tree*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 (i32, i8**, ...) bitcast (i32 (i32, i8**)* @dealwithargs to i32 (i32, i8**, ...)*)(i32 %7, i8** %8)
  %10 = load i32, i32* @nbody, align 4
  %11 = load i32, i32* @NumNodes, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = call %struct.tree* @old_main()
  store %struct.tree* %13, %struct.tree** %6, align 8
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tree* @old_main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.bnode*, align 8
  %8 = alloca %struct.bnode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca %struct.bnode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [64 x i32], align 16
  %17 = alloca [64 x %struct.bnode*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.datapoints, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.datapoints, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.icstruct, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.icstruct, align 4
  store %struct.bnode* null, %struct.bnode** %13, align 8
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* @NumNodes, align 4
  %32 = sdiv i32 64, %31
  store i32 %32, i32* %15, align 4
  call void @srand(i32 123) #9
  %33 = call noalias i8* @malloc(i64 1064) #9
  %34 = bitcast i8* %33 to %struct.tree*
  store %struct.tree* %34, %struct.tree** %6, align 8
  %35 = load %struct.tree*, %struct.tree** %6, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 2
  store %struct.node* null, %struct.node** %36, align 8
  %37 = load %struct.tree*, %struct.tree** %6, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 0
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 0
  store double -2.000000e+00, double* %39, align 8
  %40 = load %struct.tree*, %struct.tree** %6, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 1
  store double -2.000000e+00, double* %42, align 8
  %43 = load %struct.tree*, %struct.tree** %6, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 0
  %45 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 0, i64 2
  store double -2.000000e+00, double* %45, align 8
  %46 = load %struct.tree*, %struct.tree** %6, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 1
  store double 4.000000e+00, double* %47, align 8
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %55, %0
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %53
  store double 0.000000e+00, double* %54, align 8
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  br label %48

58:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  br label %59

59:                                               ; preds = %66, %58
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %64
  store double 0.000000e+00, double* %65, align 8
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  br label %59

69:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %144, %69
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %71, 32
  br i1 %72, label %73, label %147

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @NumNodes, align 4
  %76 = sdiv i32 32, %75
  %77 = sdiv i32 %74, %76
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* @nbody, align 4
  %80 = sdiv i32 %79, 32
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  call void @uniform_testdata(%struct.datapoints* sret %22, i32 %78, i32 %80, i32 %82)
  %83 = bitcast %struct.datapoints* %20 to i8*
  %84 = bitcast %struct.datapoints* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 64, i1 false)
  %85 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %20, i32 0, i32 2
  %86 = load %struct.bnode*, %struct.bnode** %85, align 8
  %87 = load %struct.tree*, %struct.tree** %6, align 8
  %88 = getelementptr inbounds %struct.tree, %struct.tree* %87, i32 0, i32 3
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %88, i64 0, i64 %90
  store %struct.bnode* %86, %struct.bnode** %91, align 8
  %92 = load %struct.bnode*, %struct.bnode** %13, align 8
  %93 = icmp ne %struct.bnode* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %73
  %95 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %20, i32 0, i32 2
  %96 = load %struct.bnode*, %struct.bnode** %95, align 8
  %97 = load %struct.bnode*, %struct.bnode** %13, align 8
  %98 = getelementptr inbounds %struct.bnode, %struct.bnode* %97, i32 0, i32 9
  store %struct.bnode* %96, %struct.bnode** %98, align 8
  br label %99

99:                                               ; preds = %94, %73
  %100 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %20, i32 0, i32 3
  %101 = load %struct.bnode*, %struct.bnode** %100, align 8
  store %struct.bnode* %101, %struct.bnode** %13, align 8
  store i32 0, i32* %23, align 4
  br label %102

102:                                              ; preds = %119, %99
  %103 = load i32, i32* %23, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load i32, i32* %23, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %107
  %109 = load double, double* %108, align 8
  %110 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %20, i32 0, i32 0
  %111 = load i32, i32* %23, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x double], [3 x double]* %110, i64 0, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fadd double %109, %114
  %116 = load i32, i32* %23, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %117
  store double %115, double* %118, align 8
  br label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %23, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %23, align 4
  br label %102

122:                                              ; preds = %102
  store i32 0, i32* %24, align 4
  br label %123

123:                                              ; preds = %140, %122
  %124 = load i32, i32* %24, align 4
  %125 = icmp slt i32 %124, 3
  br i1 %125, label %126, label %143

126:                                              ; preds = %123
  %127 = load i32, i32* %24, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %128
  %130 = load double, double* %129, align 8
  %131 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %20, i32 0, i32 1
  %132 = load i32, i32* %24, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [3 x double], [3 x double]* %131, i64 0, i64 %133
  %135 = load double, double* %134, align 8
  %136 = fadd double %130, %135
  %137 = load i32, i32* %24, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %138
  store double %136, double* %139, align 8
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %24, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %24, align 4
  br label %123

143:                                              ; preds = %123
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %70

147:                                              ; preds = %70
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %25, align 4
  br label %149

149:                                              ; preds = %163, %147
  %150 = load i32, i32* %25, align 4
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load i32, i32* %25, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %154
  %156 = load double, double* %155, align 8
  %157 = load i32, i32* @nbody, align 4
  %158 = sitofp i32 %157 to double
  %159 = fdiv double %156, %158
  %160 = load i32, i32* %25, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %161
  store double %159, double* %162, align 8
  br label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %25, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %25, align 4
  br label %149

166:                                              ; preds = %149
  store i32 0, i32* %26, align 4
  br label %167

167:                                              ; preds = %181, %166
  %168 = load i32, i32* %26, align 4
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = load i32, i32* %26, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load i32, i32* @nbody, align 4
  %176 = sitofp i32 %175 to double
  %177 = fdiv double %174, %176
  %178 = load i32, i32* %26, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %179
  store double %177, double* %180, align 8
  br label %181

181:                                              ; preds = %170
  %182 = load i32, i32* %26, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %26, align 4
  br label %167

184:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %195, %184
  %186 = load i32, i32* %14, align 4
  %187 = icmp slt i32 %186, 64
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %190
  store i32 0, i32* %191, align 4
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %17, i64 0, i64 %193
  store %struct.bnode* null, %struct.bnode** %194, align 8
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %185

198:                                              ; preds = %185
  %199 = load %struct.tree*, %struct.tree** %6, align 8
  %200 = getelementptr inbounds %struct.tree, %struct.tree* %199, i32 0, i32 3
  %201 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %200, i64 0, i64 0
  %202 = load %struct.bnode*, %struct.bnode** %201, align 8
  store %struct.bnode* %202, %struct.bnode** %8, align 8
  br label %203

203:                                              ; preds = %300, %198
  %204 = load %struct.bnode*, %struct.bnode** %8, align 8
  %205 = icmp ne %struct.bnode* %204, null
  br i1 %205, label %206, label %304

206:                                              ; preds = %203
  store i32 0, i32* %28, align 4
  br label %207

207:                                              ; preds = %227, %206
  %208 = load i32, i32* %28, align 4
  %209 = icmp slt i32 %208, 3
  br i1 %209, label %210, label %230

210:                                              ; preds = %207
  %211 = load %struct.bnode*, %struct.bnode** %8, align 8
  %212 = getelementptr inbounds %struct.bnode, %struct.bnode* %211, i32 0, i32 2
  %213 = load i32, i32* %28, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [3 x double], [3 x double]* %212, i64 0, i64 %214
  %216 = load double, double* %215, align 8
  %217 = load i32, i32* %28, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %218
  %220 = load double, double* %219, align 8
  %221 = fsub double %216, %220
  %222 = load %struct.bnode*, %struct.bnode** %8, align 8
  %223 = getelementptr inbounds %struct.bnode, %struct.bnode* %222, i32 0, i32 2
  %224 = load i32, i32* %28, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [3 x double], [3 x double]* %223, i64 0, i64 %225
  store double %221, double* %226, align 8
  br label %227

227:                                              ; preds = %210
  %228 = load i32, i32* %28, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %28, align 4
  br label %207

230:                                              ; preds = %207
  store i32 0, i32* %29, align 4
  br label %231

231:                                              ; preds = %251, %230
  %232 = load i32, i32* %29, align 4
  %233 = icmp slt i32 %232, 3
  br i1 %233, label %234, label %254

234:                                              ; preds = %231
  %235 = load %struct.bnode*, %struct.bnode** %8, align 8
  %236 = getelementptr inbounds %struct.bnode, %struct.bnode* %235, i32 0, i32 5
  %237 = load i32, i32* %29, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [3 x double], [3 x double]* %236, i64 0, i64 %238
  %240 = load double, double* %239, align 8
  %241 = load i32, i32* %29, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 %242
  %244 = load double, double* %243, align 8
  %245 = fsub double %240, %244
  %246 = load %struct.bnode*, %struct.bnode** %8, align 8
  %247 = getelementptr inbounds %struct.bnode, %struct.bnode* %246, i32 0, i32 5
  %248 = load i32, i32* %29, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [3 x double], [3 x double]* %247, i64 0, i64 %249
  store double %245, double* %250, align 8
  br label %251

251:                                              ; preds = %234
  %252 = load i32, i32* %29, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %29, align 4
  br label %231

254:                                              ; preds = %231
  %255 = load %struct.bnode*, %struct.bnode** %8, align 8
  %256 = load %struct.tree*, %struct.tree** %6, align 8
  %257 = call { i64, i64 } @intcoord(%struct.bnode* %255, %struct.tree* %256)
  %258 = bitcast %struct.icstruct* %30 to { i64, i64 }*
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0
  %260 = extractvalue { i64, i64 } %257, 0
  store i64 %260, i64* %259, align 4
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1
  %262 = extractvalue { i64, i64 } %257, 1
  store i64 %262, i64* %261, align 4
  %263 = bitcast %struct.icstruct* %27 to i8*
  %264 = bitcast %struct.icstruct* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %263, i8* align 4 %264, i64 16, i1 false)
  %265 = bitcast %struct.icstruct* %27 to { i64, i64 }*
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 4
  %268 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 1
  %269 = load i64, i64* %268, align 4
  %270 = call i32 @old_subindex(i64 %267, i64 %269, i32 536870912)
  %271 = shl i32 %270, 3
  %272 = bitcast %struct.icstruct* %27 to { i64, i64 }*
  %273 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 4
  %275 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %272, i32 0, i32 1
  %276 = load i64, i64* %275, align 4
  %277 = call i32 @old_subindex(i64 %274, i64 %276, i32 268435456)
  %278 = add nsw i32 %271, %277
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* %15, align 4
  %281 = sdiv i32 %279, %280
  store i32 %281, i32* %14, align 4
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %17, i64 0, i64 %288
  %290 = load %struct.bnode*, %struct.bnode** %289, align 8
  %291 = load %struct.bnode*, %struct.bnode** %8, align 8
  %292 = getelementptr inbounds %struct.bnode, %struct.bnode* %291, i32 0, i32 10
  store %struct.bnode* %290, %struct.bnode** %292, align 8
  %293 = load %struct.bnode*, %struct.bnode** %8, align 8
  %294 = load i32, i32* %14, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %17, i64 0, i64 %295
  store %struct.bnode* %293, %struct.bnode** %296, align 8
  %297 = load i32, i32* %14, align 4
  %298 = load %struct.bnode*, %struct.bnode** %8, align 8
  %299 = getelementptr inbounds %struct.bnode, %struct.bnode* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 8
  br label %300

300:                                              ; preds = %254
  %301 = load %struct.bnode*, %struct.bnode** %8, align 8
  %302 = getelementptr inbounds %struct.bnode, %struct.bnode* %301, i32 0, i32 9
  %303 = load %struct.bnode*, %struct.bnode** %302, align 8
  store %struct.bnode* %303, %struct.bnode** %8, align 8
  br label %203

304:                                              ; preds = %203
  store i32 0, i32* %14, align 4
  br label %305

305:                                              ; preds = %325, %304
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* @NumNodes, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %328

309:                                              ; preds = %305
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %14, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %310, i32 %314)
  %316 = load i32, i32* %14, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %17, i64 0, i64 %317
  %319 = load %struct.bnode*, %struct.bnode** %318, align 8
  %320 = load %struct.tree*, %struct.tree** %6, align 8
  %321 = getelementptr inbounds %struct.tree, %struct.tree* %320, i32 0, i32 4
  %322 = load i32, i32* %14, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %321, i64 0, i64 %323
  store %struct.bnode* %319, %struct.bnode** %324, align 8
  br label %325

325:                                              ; preds = %309
  %326 = load i32, i32* %14, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %14, align 4
  br label %305

328:                                              ; preds = %305
  store i32 0, i32* %14, align 4
  store double 0.000000e+00, double* %1, align 8
  store i32 0, i32* %3, align 4
  store i32 10, i32* %4, align 4
  br label %329

329:                                              ; preds = %338, %328
  %330 = load double, double* %1, align 8
  %331 = fcmp olt double %330, 2.001250e+00
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load i32, i32* %3, align 4
  %334 = load i32, i32* %4, align 4
  %335 = icmp slt i32 %333, %334
  br label %336

336:                                              ; preds = %332, %329
  %337 = phi i1 [ false, %329 ], [ %335, %332 ]
  br i1 %337, label %338, label %345

338:                                              ; preds = %336
  %339 = load %struct.tree*, %struct.tree** %6, align 8
  %340 = load i32, i32* %3, align 4
  call void @stepsystem(%struct.tree* %339, i32 %340)
  %341 = load double, double* %1, align 8
  %342 = fadd double %341, 1.250000e-02
  store double %342, double* %1, align 8
  %343 = load i32, i32* %3, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %3, align 4
  br label %329

345:                                              ; preds = %336
  %346 = load %struct.tree*, %struct.tree** %6, align 8
  ret %struct.tree* %346
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @uniform_testdata(%struct.datapoints* noalias sret %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.bnode*, align 8
  %15 = alloca %struct.bnode*, align 8
  %16 = alloca %struct.bnode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 %3, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double 1.230000e+02, %33
  store double %34, double* %20, align 8
  store double 0x3FE2D97C7F3321D2, double* %8, align 8
  %35 = load double, double* %8, align 8
  %36 = fdiv double 1.000000e+00, %35
  %37 = call double @sqrt(double %36) #9
  store double %37, double* %9, align 8
  store i32 0, i32* %26, align 4
  br label %38

38:                                               ; preds = %46, %4
  %39 = load i32, i32* %26, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 0
  %43 = load i32, i32* %26, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 %44
  store double 0.000000e+00, double* %45, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %26, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %26, align 4
  br label %38

49:                                               ; preds = %38
  store i32 0, i32* %27, align 4
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i32, i32* %27, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 1
  %55 = load i32, i32* %27, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x double], [3 x double]* %54, i64 0, i64 %56
  store double 0.000000e+00, double* %57, align 8
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %27, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %27, align 4
  br label %50

61:                                               ; preds = %50
  %62 = load i32, i32* %5, align 4
  %63 = call %struct.bnode* @ubody_alloc(i32 %62)
  store %struct.bnode* %63, %struct.bnode** %14, align 8
  %64 = load %struct.bnode*, %struct.bnode** %14, align 8
  store %struct.bnode* %64, %struct.bnode** %16, align 8
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %270, %61
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %273

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = call %struct.bnode* @ubody_alloc(i32 %70)
  store %struct.bnode* %71, %struct.bnode** %15, align 8
  %72 = load %struct.bnode*, %struct.bnode** %15, align 8
  %73 = icmp eq %struct.bnode* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) bitcast (i32 (i8*)* @error to i32 (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = load %struct.bnode*, %struct.bnode** %15, align 8
  %78 = load %struct.bnode*, %struct.bnode** %16, align 8
  %79 = getelementptr inbounds %struct.bnode, %struct.bnode* %78, i32 0, i32 9
  store %struct.bnode* %77, %struct.bnode** %79, align 8
  %80 = load %struct.bnode*, %struct.bnode** %15, align 8
  store %struct.bnode* %80, %struct.bnode** %16, align 8
  %81 = load %struct.bnode*, %struct.bnode** %15, align 8
  %82 = getelementptr inbounds %struct.bnode, %struct.bnode* %81, i32 0, i32 0
  store i16 1, i16* %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sitofp i32 %83 to double
  %85 = fdiv double 1.000000e+00, %84
  %86 = load %struct.bnode*, %struct.bnode** %15, align 8
  %87 = getelementptr inbounds %struct.bnode, %struct.bnode* %86, i32 0, i32 1
  store double %85, double* %87, align 8
  %88 = load double, double* %20, align 8
  %89 = call double (double, ...) bitcast (double (double)* @my_rand to double (double, ...)*)(double %88)
  store double %89, double* %20, align 8
  %90 = load double, double* %20, align 8
  %91 = call double (double, double, double, ...) bitcast (double (double, double, double)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 0x3FEFF7CED916872B, double %90)
  store double %91, double* %19, align 8
  %92 = load double, double* %19, align 8
  %93 = call double @pow(double %92, double 0xBFE5555555555555) #9
  %94 = fsub double %93, 1.000000e+00
  store double %94, double* %18, align 8
  %95 = load double, double* %18, align 8
  %96 = call double @sqrt(double %95) #9
  %97 = fdiv double 1.000000e+00, %96
  store double %97, double* %10, align 8
  store double 4.000000e+00, double* %25, align 8
  store i32 0, i32* %21, align 4
  br label %98

98:                                               ; preds = %114, %76
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load double, double* %20, align 8
  %103 = call double (double, ...) bitcast (double (double)* @my_rand to double (double, ...)*)(double %102)
  store double %103, double* %20, align 8
  %104 = load double, double* %20, align 8
  %105 = call double (double, double, double, ...) bitcast (double (double, double, double)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 0x3FEFF7CED916872B, double %104)
  store double %105, double* %10, align 8
  %106 = load double, double* %25, align 8
  %107 = load double, double* %10, align 8
  %108 = fmul double %106, %107
  %109 = load %struct.bnode*, %struct.bnode** %15, align 8
  %110 = getelementptr inbounds %struct.bnode, %struct.bnode* %109, i32 0, i32 2
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x double], [3 x double]* %110, i64 0, i64 %112
  store double %108, double* %113, align 8
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %21, align 4
  br label %98

117:                                              ; preds = %98
  store i32 0, i32* %28, align 4
  br label %118

118:                                              ; preds = %138, %117
  %119 = load i32, i32* %28, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 0
  %123 = load i32, i32* %28, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x double], [3 x double]* %122, i64 0, i64 %124
  %126 = load double, double* %125, align 8
  %127 = load %struct.bnode*, %struct.bnode** %15, align 8
  %128 = getelementptr inbounds %struct.bnode, %struct.bnode* %127, i32 0, i32 2
  %129 = load i32, i32* %28, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x double], [3 x double]* %128, i64 0, i64 %130
  %132 = load double, double* %131, align 8
  %133 = fadd double %126, %132
  %134 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 0
  %135 = load i32, i32* %28, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [3 x double], [3 x double]* %134, i64 0, i64 %136
  store double %133, double* %137, align 8
  br label %138

138:                                              ; preds = %121
  %139 = load i32, i32* %28, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %28, align 4
  br label %118

141:                                              ; preds = %118
  br label %142

142:                                              ; preds = %151, %141
  %143 = load double, double* %20, align 8
  %144 = call double (double, ...) bitcast (double (double)* @my_rand to double (double, ...)*)(double %143)
  store double %144, double* %20, align 8
  %145 = load double, double* %20, align 8
  %146 = call double (double, double, double, ...) bitcast (double (double, double, double)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 1.000000e+00, double %145)
  store double %146, double* %12, align 8
  %147 = load double, double* %20, align 8
  %148 = call double (double, ...) bitcast (double (double)* @my_rand to double (double, ...)*)(double %147)
  store double %148, double* %20, align 8
  %149 = load double, double* %20, align 8
  %150 = call double (double, double, double, ...) bitcast (double (double, double, double)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 1.000000e-01, double %149)
  store double %150, double* %13, align 8
  br label %151

151:                                              ; preds = %142
  %152 = load double, double* %13, align 8
  %153 = load double, double* %12, align 8
  %154 = load double, double* %12, align 8
  %155 = fmul double %153, %154
  %156 = load double, double* %12, align 8
  %157 = load double, double* %12, align 8
  %158 = fmul double %156, %157
  %159 = fsub double 1.000000e+00, %158
  %160 = call double @pow(double %159, double 3.500000e+00) #9
  %161 = fmul double %155, %160
  %162 = fcmp ogt double %152, %161
  br i1 %162, label %142, label %163

163:                                              ; preds = %151
  %164 = call double @sqrt(double 2.000000e+00) #9
  %165 = load double, double* %12, align 8
  %166 = fmul double %164, %165
  %167 = load double, double* %10, align 8
  %168 = load double, double* %10, align 8
  %169 = fmul double %167, %168
  %170 = fadd double 1.000000e+00, %169
  %171 = call double @pow(double %170, double 2.500000e-01) #9
  %172 = fdiv double %166, %171
  store double %172, double* %11, align 8
  %173 = load double, double* %9, align 8
  %174 = load double, double* %11, align 8
  %175 = fmul double %173, %174
  store double %175, double* %24, align 8
  br label %176

176:                                              ; preds = %217, %163
  store i32 0, i32* %21, align 4
  br label %177

177:                                              ; preds = %190, %176
  %178 = load i32, i32* %21, align 4
  %179 = icmp slt i32 %178, 3
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load double, double* %20, align 8
  %182 = call double (double, ...) bitcast (double (double)* @my_rand to double (double, ...)*)(double %181)
  store double %182, double* %20, align 8
  %183 = load double, double* %20, align 8
  %184 = call double (double, double, double, ...) bitcast (double (double, double, double)* @xrand to double (double, double, double, ...)*)(double -1.000000e+00, double 1.000000e+00, double %183)
  %185 = load %struct.bnode*, %struct.bnode** %15, align 8
  %186 = getelementptr inbounds %struct.bnode, %struct.bnode* %185, i32 0, i32 5
  %187 = load i32, i32* %21, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x double], [3 x double]* %186, i64 0, i64 %188
  store double %184, double* %189, align 8
  br label %190

190:                                              ; preds = %180
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %21, align 4
  br label %177

193:                                              ; preds = %177
  store double 0.000000e+00, double* %22, align 8
  store i32 0, i32* %29, align 4
  br label %194

194:                                              ; preds = %213, %193
  %195 = load i32, i32* %29, align 4
  %196 = icmp slt i32 %195, 3
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load %struct.bnode*, %struct.bnode** %15, align 8
  %199 = getelementptr inbounds %struct.bnode, %struct.bnode* %198, i32 0, i32 5
  %200 = load i32, i32* %29, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [3 x double], [3 x double]* %199, i64 0, i64 %201
  %203 = load double, double* %202, align 8
  %204 = load %struct.bnode*, %struct.bnode** %15, align 8
  %205 = getelementptr inbounds %struct.bnode, %struct.bnode* %204, i32 0, i32 5
  %206 = load i32, i32* %29, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [3 x double], [3 x double]* %205, i64 0, i64 %207
  %209 = load double, double* %208, align 8
  %210 = fmul double %203, %209
  %211 = load double, double* %22, align 8
  %212 = fadd double %211, %210
  store double %212, double* %22, align 8
  br label %213

213:                                              ; preds = %197
  %214 = load i32, i32* %29, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %29, align 4
  br label %194

216:                                              ; preds = %194
  br label %217

217:                                              ; preds = %216
  %218 = load double, double* %22, align 8
  %219 = fcmp ogt double %218, 1.000000e+00
  br i1 %219, label %176, label %220

220:                                              ; preds = %217
  %221 = load double, double* %24, align 8
  %222 = load double, double* %22, align 8
  %223 = call double @sqrt(double %222) #9
  %224 = fdiv double %221, %223
  store double %224, double* %23, align 8
  store i32 0, i32* %30, align 4
  br label %225

225:                                              ; preds = %242, %220
  %226 = load i32, i32* %30, align 4
  %227 = icmp slt i32 %226, 3
  br i1 %227, label %228, label %245

228:                                              ; preds = %225
  %229 = load %struct.bnode*, %struct.bnode** %15, align 8
  %230 = getelementptr inbounds %struct.bnode, %struct.bnode* %229, i32 0, i32 5
  %231 = load i32, i32* %30, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x double], [3 x double]* %230, i64 0, i64 %232
  %234 = load double, double* %233, align 8
  %235 = load double, double* %23, align 8
  %236 = fmul double %234, %235
  %237 = load %struct.bnode*, %struct.bnode** %15, align 8
  %238 = getelementptr inbounds %struct.bnode, %struct.bnode* %237, i32 0, i32 5
  %239 = load i32, i32* %30, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [3 x double], [3 x double]* %238, i64 0, i64 %240
  store double %236, double* %241, align 8
  br label %242

242:                                              ; preds = %228
  %243 = load i32, i32* %30, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %30, align 4
  br label %225

245:                                              ; preds = %225
  store i32 0, i32* %31, align 4
  br label %246

246:                                              ; preds = %266, %245
  %247 = load i32, i32* %31, align 4
  %248 = icmp slt i32 %247, 3
  br i1 %248, label %249, label %269

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 1
  %251 = load i32, i32* %31, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [3 x double], [3 x double]* %250, i64 0, i64 %252
  %254 = load double, double* %253, align 8
  %255 = load %struct.bnode*, %struct.bnode** %15, align 8
  %256 = getelementptr inbounds %struct.bnode, %struct.bnode* %255, i32 0, i32 5
  %257 = load i32, i32* %31, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [3 x double], [3 x double]* %256, i64 0, i64 %258
  %260 = load double, double* %259, align 8
  %261 = fadd double %254, %260
  %262 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 1
  %263 = load i32, i32* %31, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [3 x double], [3 x double]* %262, i64 0, i64 %264
  store double %261, double* %265, align 8
  br label %266

266:                                              ; preds = %249
  %267 = load i32, i32* %31, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %31, align 4
  br label %246

269:                                              ; preds = %246
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %17, align 4
  br label %65

273:                                              ; preds = %65
  %274 = load %struct.bnode*, %struct.bnode** %16, align 8
  %275 = getelementptr inbounds %struct.bnode, %struct.bnode* %274, i32 0, i32 9
  store %struct.bnode* null, %struct.bnode** %275, align 8
  %276 = load %struct.bnode*, %struct.bnode** %14, align 8
  %277 = getelementptr inbounds %struct.bnode, %struct.bnode* %276, i32 0, i32 9
  %278 = load %struct.bnode*, %struct.bnode** %277, align 8
  %279 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 2
  store %struct.bnode* %278, %struct.bnode** %279, align 8
  %280 = load %struct.bnode*, %struct.bnode** %16, align 8
  %281 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %0, i32 0, i32 3
  store %struct.bnode* %280, %struct.bnode** %281, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @intcoord(%struct.bnode* %0, %struct.tree* %1) #0 {
  %3 = alloca %struct.icstruct, align 4
  %4 = alloca %struct.bnode*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  store %struct.bnode* %0, %struct.bnode** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  %9 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 1
  store i16 1, i16* %9, align 4
  %10 = load %struct.tree*, %struct.tree** %5, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %7, align 8
  %13 = load %struct.bnode*, %struct.bnode** %4, align 8
  %14 = getelementptr inbounds %struct.bnode, %struct.bnode* %13, i32 0, i32 2
  %15 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %16, double* %17, align 16
  %18 = load %struct.bnode*, %struct.bnode** %4, align 8
  %19 = getelementptr inbounds %struct.bnode, %struct.bnode* %18, i32 0, i32 2
  %20 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %21, double* %22, align 8
  %23 = load %struct.bnode*, %struct.bnode** %4, align 8
  %24 = getelementptr inbounds %struct.bnode, %struct.bnode* %23, i32 0, i32 2
  %25 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 0, i64 2
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %26, double* %27, align 16
  %28 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %29 = load double, double* %28, align 16
  %30 = load %struct.tree*, %struct.tree** %5, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 0
  %32 = getelementptr inbounds [3 x double], [3 x double]* %31, i64 0, i64 0
  %33 = load double, double* %32, align 8
  %34 = fsub double %29, %33
  %35 = load double, double* %7, align 8
  %36 = fdiv double %34, %35
  store double %36, double* %6, align 8
  %37 = load double, double* %6, align 8
  %38 = fcmp ole double 0.000000e+00, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load double, double* %6, align 8
  %41 = fcmp olt double %40, 1.000000e+00
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load double, double* %6, align 8
  %44 = fmul double 0x41D0000000000000, %43
  %45 = call double @llvm.floor.f64(double %44)
  %46 = fptosi double %45 to i32
  %47 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 0
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i64 0, i64 0
  store i32 %46, i32* %48, align 4
  br label %53

49:                                               ; preds = %39, %2
  %50 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 1
  store i16 0, i16* %50, align 4
  %51 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 0
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %51, i64 0, i64 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %55 = load double, double* %54, align 8
  %56 = load %struct.tree*, %struct.tree** %5, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 0
  %58 = getelementptr inbounds [3 x double], [3 x double]* %57, i64 0, i64 1
  %59 = load double, double* %58, align 8
  %60 = fsub double %55, %59
  %61 = load double, double* %7, align 8
  %62 = fdiv double %60, %61
  store double %62, double* %6, align 8
  %63 = load double, double* %6, align 8
  %64 = fcmp ole double 0.000000e+00, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %53
  %66 = load double, double* %6, align 8
  %67 = fcmp olt double %66, 1.000000e+00
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load double, double* %6, align 8
  %70 = fmul double 0x41D0000000000000, %69
  %71 = call double @llvm.floor.f64(double %70)
  %72 = fptosi double %71 to i32
  %73 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 0
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 0, i64 1
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %65, %53
  %76 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 1
  store i16 0, i16* %76, align 4
  %77 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 0
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %77, i64 0, i64 1
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %81 = load double, double* %80, align 16
  %82 = load %struct.tree*, %struct.tree** %5, align 8
  %83 = getelementptr inbounds %struct.tree, %struct.tree* %82, i32 0, i32 0
  %84 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 0, i64 2
  %85 = load double, double* %84, align 8
  %86 = fsub double %81, %85
  %87 = load double, double* %7, align 8
  %88 = fdiv double %86, %87
  store double %88, double* %6, align 8
  %89 = load double, double* %6, align 8
  %90 = fcmp ole double 0.000000e+00, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %79
  %92 = load double, double* %6, align 8
  %93 = fcmp olt double %92, 1.000000e+00
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load double, double* %6, align 8
  %96 = fmul double 0x41D0000000000000, %95
  %97 = call double @llvm.floor.f64(double %96)
  %98 = fptosi double %97 to i32
  %99 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 0
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %99, i64 0, i64 2
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %91, %79
  %102 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 1
  store i16 0, i16* %102, align 4
  %103 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %3, i32 0, i32 0
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %103, i64 0, i64 2
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %94
  %106 = bitcast %struct.icstruct* %3 to { i64, i64 }*
  %107 = load { i64, i64 }, { i64, i64 }* %106, align 4
  ret { i64, i64 } %107
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @old_subindex(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.icstruct, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.icstruct* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 4
  store i32 %2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %4, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = ashr i32 8, %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %23, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stepsystem(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnode*, align 8
  %6 = alloca %struct.bnode*, align 8
  %7 = alloca %struct.bnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.tree*, %struct.tree** %3, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 2
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.tree*, %struct.tree** %3, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 2
  %21 = load %struct.node*, %struct.node** %20, align 8
  call void @freetree1(%struct.node* %21)
  %22 = load %struct.tree*, %struct.tree** %3, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 2
  store %struct.node* null, %struct.node** %23, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.bnode*, %struct.bnode** %5, align 8
  %26 = load i32, i32* @nbody, align 4
  %27 = load %struct.tree*, %struct.tree** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call %struct.node* @maketree(%struct.bnode* %25, i32 %26, %struct.tree* %27, i32 %28, i32 0)
  store %struct.node* %29, %struct.node** %9, align 8
  %30 = load %struct.node*, %struct.node** %9, align 8
  %31 = load %struct.tree*, %struct.tree** %3, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 2
  store %struct.node* %30, %struct.node** %32, align 8
  %33 = load %struct.tree*, %struct.tree** %3, align 8
  %34 = load i32, i32* %4, align 4
  call void @computegrav(%struct.tree* %33, i32 %34)
  %35 = load %struct.tree*, %struct.tree** %3, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 4
  %37 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %36, i64 0, i64 0
  %38 = load %struct.bnode*, %struct.bnode** %37, align 8
  %39 = load i32, i32* %4, align 4
  call void @vp(%struct.bnode* %38, i32 %39)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freetree1(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %6 = load %struct.node*, %struct.node** %2, align 8
  call void @freetree(%struct.node* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @maketree(%struct.bnode* %0, i32 %1, %struct.tree* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.icstruct, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.icstruct, align 4
  store %struct.bnode* %0, %struct.bnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.tree* %2, %struct.tree** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.tree*, %struct.tree** %8, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 2
  store %struct.node* null, %struct.node** %18, align 8
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* @nbody, align 4
  %20 = load i32, i32* @NumNodes, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %77, %5
  %23 = load i32, i32* %12, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %22
  %26 = load %struct.tree*, %struct.tree** %8, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 4
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %27, i64 0, i64 %29
  %31 = load %struct.bnode*, %struct.bnode** %30, align 8
  store %struct.bnode* %31, %struct.bnode** %6, align 8
  %32 = load %struct.bnode*, %struct.bnode** %6, align 8
  store %struct.bnode* %32, %struct.bnode** %11, align 8
  br label %33

33:                                               ; preds = %72, %25
  %34 = load %struct.bnode*, %struct.bnode** %11, align 8
  %35 = icmp ne %struct.bnode* %34, null
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = load %struct.bnode*, %struct.bnode** %11, align 8
  %38 = getelementptr inbounds %struct.bnode, %struct.bnode* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = fcmp une double %39, 0.000000e+00
  br i1 %40, label %41, label %71

41:                                               ; preds = %36
  %42 = load %struct.bnode*, %struct.bnode** %11, align 8
  %43 = load %struct.tree*, %struct.tree** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  call void @expandbox(%struct.bnode* %42, %struct.tree* %43, i32 %44, i32 %45)
  %46 = load %struct.bnode*, %struct.bnode** %11, align 8
  %47 = load %struct.tree*, %struct.tree** %8, align 8
  %48 = call { i64, i64 } @intcoord(%struct.bnode* %46, %struct.tree* %47)
  %49 = bitcast %struct.icstruct* %16 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = extractvalue { i64, i64 } %48, 0
  store i64 %51, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = extractvalue { i64, i64 } %48, 1
  store i64 %53, i64* %52, align 4
  %54 = bitcast %struct.icstruct* %14 to i8*
  %55 = bitcast %struct.icstruct* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 16, i1 false)
  %56 = load %struct.tree*, %struct.tree** %8, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 2
  %58 = load %struct.node*, %struct.node** %57, align 8
  store %struct.node* %58, %struct.node** %13, align 8
  %59 = load %struct.bnode*, %struct.bnode** %11, align 8
  %60 = load %struct.node*, %struct.node** %13, align 8
  %61 = load %struct.tree*, %struct.tree** %8, align 8
  %62 = bitcast %struct.icstruct* %14 to { i64, i64 }*
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 4
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 1
  %66 = load i64, i64* %65, align 4
  %67 = call %struct.node* @loadtree(%struct.bnode* %59, i64 %64, i64 %66, %struct.node* %60, i32 536870912, %struct.tree* %61)
  store %struct.node* %67, %struct.node** %13, align 8
  %68 = load %struct.node*, %struct.node** %13, align 8
  %69 = load %struct.tree*, %struct.tree** %8, align 8
  %70 = getelementptr inbounds %struct.tree, %struct.tree* %69, i32 0, i32 2
  store %struct.node* %68, %struct.node** %70, align 8
  br label %71

71:                                               ; preds = %41, %36
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.bnode*, %struct.bnode** %11, align 8
  %74 = getelementptr inbounds %struct.bnode, %struct.bnode* %73, i32 0, i32 10
  %75 = load %struct.bnode*, %struct.bnode** %74, align 8
  store %struct.bnode* %75, %struct.bnode** %11, align 8
  br label %33

76:                                               ; preds = %33
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %12, align 4
  br label %22

80:                                               ; preds = %22
  %81 = load %struct.tree*, %struct.tree** %8, align 8
  %82 = getelementptr inbounds %struct.tree, %struct.tree* %81, i32 0, i32 2
  %83 = load %struct.node*, %struct.node** %82, align 8
  %84 = call double @hackcofm(%struct.node* %83)
  %85 = load %struct.tree*, %struct.tree** %8, align 8
  %86 = getelementptr inbounds %struct.tree, %struct.tree* %85, i32 0, i32 2
  %87 = load %struct.node*, %struct.node** %86, align 8
  ret %struct.node* %87
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @computegrav(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.bnode*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.tree*, %struct.tree** %3, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %6, align 8
  store double 6.250000e-03, double* %7, align 8
  %13 = load i32, i32* @NumNodes, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.tree*, %struct.tree** %3, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 2
  %21 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %21, %struct.node** %8, align 8
  %22 = load %struct.tree*, %struct.tree** %3, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %23, i64 0, i64 %25
  %27 = load %struct.bnode*, %struct.bnode** %26, align 8
  store %struct.bnode* %27, %struct.bnode** %9, align 8
  %28 = load double, double* %6, align 8
  %29 = load %struct.node*, %struct.node** %8, align 8
  %30 = load %struct.bnode*, %struct.bnode** %9, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load double, double* %7, align 8
  call void @grav(double %28, %struct.node* %29, %struct.bnode* %30, i32 %31, double %32)
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @vp(%struct.bnode* %0, i32 %1) #0 {
  %3 = alloca %struct.bnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca %struct.bnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store %struct.bnode* %0, %struct.bnode** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 6.250000e-03, double* %5, align 8
  %36 = load %struct.bnode*, %struct.bnode** %3, align 8
  %37 = icmp ne %struct.bnode* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load %struct.bnode*, %struct.bnode** %3, align 8
  store %struct.bnode* %39, %struct.bnode** %11, align 8
  br label %40

40:                                               ; preds = %38, %2
  br label %41

41:                                               ; preds = %615, %40
  %42 = load %struct.bnode*, %struct.bnode** %3, align 8
  %43 = icmp ne %struct.bnode* %42, null
  br i1 %43, label %44, label %619

44:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.bnode*, %struct.bnode** %3, align 8
  %50 = getelementptr inbounds %struct.bnode, %struct.bnode* %49, i32 0, i32 7
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %56
  store double %54, double* %57, align 8
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %45

61:                                               ; preds = %45
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %70
  %72 = load double, double* %71, align 8
  %73 = load %struct.bnode*, %struct.bnode** %3, align 8
  %74 = getelementptr inbounds %struct.bnode, %struct.bnode* %73, i32 0, i32 6
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 0, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fsub double %72, %78
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %81
  store double %79, double* %82, align 8
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %65

86:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %92
  %94 = load double, double* %93, align 8
  %95 = load double, double* %5, align 8
  %96 = fmul double %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %98
  store double %96, double* %99, align 8
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %87

103:                                              ; preds = %87
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %122, %103
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load %struct.bnode*, %struct.bnode** %3, align 8
  %109 = getelementptr inbounds %struct.bnode, %struct.bnode* %108, i32 0, i32 5
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x double], [3 x double]* %109, i64 0, i64 %111
  %113 = load double, double* %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %115
  %117 = load double, double* %116, align 8
  %118 = fadd double %113, %117
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %120
  store double %118, double* %121, align 8
  br label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %104

125:                                              ; preds = %104
  store i32 0, i32* %16, align 4
  br label %126

126:                                              ; preds = %139, %125
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %131
  %133 = load double, double* %132, align 8
  %134 = load %struct.bnode*, %struct.bnode** %3, align 8
  %135 = getelementptr inbounds %struct.bnode, %struct.bnode* %134, i32 0, i32 5
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x double], [3 x double]* %135, i64 0, i64 %137
  store double %133, double* %138, align 8
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %126

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142, %61
  %144 = load %struct.bnode*, %struct.bnode** %3, align 8
  %145 = getelementptr inbounds %struct.bnode, %struct.bnode* %144, i32 0, i32 2
  %146 = getelementptr inbounds [3 x double], [3 x double]* %145, i64 0, i64 0
  %147 = load double, double* %146, align 8
  store double %147, double* %17, align 8
  %148 = load %struct.bnode*, %struct.bnode** %3, align 8
  %149 = getelementptr inbounds %struct.bnode, %struct.bnode* %148, i32 0, i32 2
  %150 = getelementptr inbounds [3 x double], [3 x double]* %149, i64 0, i64 1
  %151 = load double, double* %150, align 8
  store double %151, double* %18, align 8
  %152 = load %struct.bnode*, %struct.bnode** %3, align 8
  %153 = getelementptr inbounds %struct.bnode, %struct.bnode* %152, i32 0, i32 2
  %154 = getelementptr inbounds [3 x double], [3 x double]* %153, i64 0, i64 2
  %155 = load double, double* %154, align 8
  store double %155, double* %19, align 8
  br i1 false, label %156, label %161

156:                                              ; preds = %143
  %157 = load double, double* %17, align 8
  %158 = fptrunc double %157 to float
  %159 = call i32 @__isnanf(float %158) #10
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %173

161:                                              ; preds = %143
  br i1 true, label %162, label %166

162:                                              ; preds = %161
  %163 = load double, double* %17, align 8
  %164 = call i32 @__isnan(double %163) #10
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %173

166:                                              ; preds = %161
  %167 = load double, double* %17, align 8
  %168 = fpext double %167 to x86_fp80
  %169 = call i32 @__isnanl(x86_fp80 %168) #10
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166, %162, %156
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 99)
  call void @abort() #11
  unreachable

173:                                              ; preds = %166, %162, %156
  br i1 false, label %174, label %179

174:                                              ; preds = %173
  %175 = load double, double* %18, align 8
  %176 = fptrunc double %175 to float
  %177 = call i32 @__isnanf(float %176) #10
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %191

179:                                              ; preds = %173
  br i1 true, label %180, label %184

180:                                              ; preds = %179
  %181 = load double, double* %18, align 8
  %182 = call i32 @__isnan(double %181) #10
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %191

184:                                              ; preds = %179
  %185 = load double, double* %18, align 8
  %186 = fpext double %185 to x86_fp80
  %187 = call i32 @__isnanl(x86_fp80 %186) #10
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184, %180, %174
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 98)
  call void @abort() #11
  unreachable

191:                                              ; preds = %184, %180, %174
  br i1 false, label %192, label %197

192:                                              ; preds = %191
  %193 = load double, double* %19, align 8
  %194 = fptrunc double %193 to float
  %195 = call i32 @__isnanf(float %194) #10
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %207, label %209

197:                                              ; preds = %191
  br i1 true, label %198, label %202

198:                                              ; preds = %197
  %199 = load double, double* %19, align 8
  %200 = call i32 @__isnan(double %199) #10
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %207, label %209

202:                                              ; preds = %197
  %203 = load double, double* %19, align 8
  %204 = fpext double %203 to x86_fp80
  %205 = call i32 @__isnanl(x86_fp80 %204) #10
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202, %198, %192
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 97)
  call void @abort() #11
  unreachable

209:                                              ; preds = %202, %198, %192
  %210 = load double, double* %17, align 8
  %211 = call double @llvm.fabs.f64(double %210)
  %212 = fcmp olt double %211, 1.000000e+01
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 96)
  call void @abort() #11
  unreachable

215:                                              ; preds = %209
  %216 = load double, double* %18, align 8
  %217 = call double @llvm.fabs.f64(double %216)
  %218 = fcmp olt double %217, 1.000000e+01
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 95)
  call void @abort() #11
  unreachable

221:                                              ; preds = %215
  %222 = load double, double* %19, align 8
  %223 = call double @llvm.fabs.f64(double %222)
  %224 = fcmp olt double %223, 1.000000e+01
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 94)
  call void @abort() #11
  unreachable

227:                                              ; preds = %221
  store i32 0, i32* %20, align 4
  br label %228

228:                                              ; preds = %241, %227
  %229 = load i32, i32* %20, align 4
  %230 = icmp slt i32 %229, 3
  br i1 %230, label %231, label %244

231:                                              ; preds = %228
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %233
  %235 = load double, double* %234, align 8
  %236 = load %struct.bnode*, %struct.bnode** %3, align 8
  %237 = getelementptr inbounds %struct.bnode, %struct.bnode* %236, i32 0, i32 6
  %238 = load i32, i32* %20, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [3 x double], [3 x double]* %237, i64 0, i64 %239
  store double %235, double* %240, align 8
  br label %241

241:                                              ; preds = %231
  %242 = load i32, i32* %20, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %20, align 4
  br label %228

244:                                              ; preds = %228
  %245 = load %struct.bnode*, %struct.bnode** %3, align 8
  %246 = getelementptr inbounds %struct.bnode, %struct.bnode* %245, i32 0, i32 6
  %247 = getelementptr inbounds [3 x double], [3 x double]* %246, i64 0, i64 0
  %248 = load double, double* %247, align 8
  store double %248, double* %21, align 8
  %249 = load %struct.bnode*, %struct.bnode** %3, align 8
  %250 = getelementptr inbounds %struct.bnode, %struct.bnode* %249, i32 0, i32 6
  %251 = getelementptr inbounds [3 x double], [3 x double]* %250, i64 0, i64 1
  %252 = load double, double* %251, align 8
  store double %252, double* %22, align 8
  %253 = load %struct.bnode*, %struct.bnode** %3, align 8
  %254 = getelementptr inbounds %struct.bnode, %struct.bnode* %253, i32 0, i32 6
  %255 = getelementptr inbounds [3 x double], [3 x double]* %254, i64 0, i64 2
  %256 = load double, double* %255, align 8
  store double %256, double* %23, align 8
  br i1 false, label %257, label %262

257:                                              ; preds = %244
  %258 = load double, double* %21, align 8
  %259 = fptrunc double %258 to float
  %260 = call i32 @__isnanf(float %259) #10
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %272, label %274

262:                                              ; preds = %244
  br i1 true, label %263, label %267

263:                                              ; preds = %262
  %264 = load double, double* %21, align 8
  %265 = call i32 @__isnan(double %264) #10
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %274

267:                                              ; preds = %262
  %268 = load double, double* %21, align 8
  %269 = fpext double %268 to x86_fp80
  %270 = call i32 @__isnanl(x86_fp80 %269) #10
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %267, %263, %257
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 89)
  call void @abort() #11
  unreachable

274:                                              ; preds = %267, %263, %257
  br i1 false, label %275, label %280

275:                                              ; preds = %274
  %276 = load double, double* %22, align 8
  %277 = fptrunc double %276 to float
  %278 = call i32 @__isnanf(float %277) #10
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %290, label %292

280:                                              ; preds = %274
  br i1 true, label %281, label %285

281:                                              ; preds = %280
  %282 = load double, double* %22, align 8
  %283 = call i32 @__isnan(double %282) #10
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %290, label %292

285:                                              ; preds = %280
  %286 = load double, double* %22, align 8
  %287 = fpext double %286 to x86_fp80
  %288 = call i32 @__isnanl(x86_fp80 %287) #10
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %285, %281, %275
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 88)
  call void @abort() #11
  unreachable

292:                                              ; preds = %285, %281, %275
  br i1 false, label %293, label %298

293:                                              ; preds = %292
  %294 = load double, double* %23, align 8
  %295 = fptrunc double %294 to float
  %296 = call i32 @__isnanf(float %295) #10
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %308, label %310

298:                                              ; preds = %292
  br i1 true, label %299, label %303

299:                                              ; preds = %298
  %300 = load double, double* %23, align 8
  %301 = call i32 @__isnan(double %300) #10
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %308, label %310

303:                                              ; preds = %298
  %304 = load double, double* %23, align 8
  %305 = fpext double %304 to x86_fp80
  %306 = call i32 @__isnanl(x86_fp80 %305) #10
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303, %299, %293
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 87)
  call void @abort() #11
  unreachable

310:                                              ; preds = %303, %299, %293
  %311 = load double, double* %21, align 8
  %312 = call double @llvm.fabs.f64(double %311)
  %313 = fcmp olt double %312, 1.000000e+04
  br i1 %313, label %316, label %314

314:                                              ; preds = %310
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 86)
  call void @abort() #11
  unreachable

316:                                              ; preds = %310
  %317 = load double, double* %22, align 8
  %318 = call double @llvm.fabs.f64(double %317)
  %319 = fcmp olt double %318, 1.000000e+04
  br i1 %319, label %322, label %320

320:                                              ; preds = %316
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 85)
  call void @abort() #11
  unreachable

322:                                              ; preds = %316
  %323 = load double, double* %23, align 8
  %324 = call double @llvm.fabs.f64(double %323)
  %325 = fcmp olt double %324, 1.000000e+04
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 84)
  call void @abort() #11
  unreachable

328:                                              ; preds = %322
  store i32 0, i32* %24, align 4
  br label %329

329:                                              ; preds = %344, %328
  %330 = load i32, i32* %24, align 4
  %331 = icmp slt i32 %330, 3
  br i1 %331, label %332, label %347

332:                                              ; preds = %329
  %333 = load %struct.bnode*, %struct.bnode** %3, align 8
  %334 = getelementptr inbounds %struct.bnode, %struct.bnode* %333, i32 0, i32 6
  %335 = load i32, i32* %24, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [3 x double], [3 x double]* %334, i64 0, i64 %336
  %338 = load double, double* %337, align 8
  %339 = load double, double* %5, align 8
  %340 = fmul double %338, %339
  %341 = load i32, i32* %24, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %342
  store double %340, double* %343, align 8
  br label %344

344:                                              ; preds = %332
  %345 = load i32, i32* %24, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %24, align 4
  br label %329

347:                                              ; preds = %329
  %348 = load %struct.bnode*, %struct.bnode** %3, align 8
  %349 = getelementptr inbounds %struct.bnode, %struct.bnode* %348, i32 0, i32 5
  %350 = getelementptr inbounds [3 x double], [3 x double]* %349, i64 0, i64 0
  %351 = load double, double* %350, align 8
  store double %351, double* %25, align 8
  %352 = load %struct.bnode*, %struct.bnode** %3, align 8
  %353 = getelementptr inbounds %struct.bnode, %struct.bnode* %352, i32 0, i32 5
  %354 = getelementptr inbounds [3 x double], [3 x double]* %353, i64 0, i64 1
  %355 = load double, double* %354, align 8
  store double %355, double* %26, align 8
  %356 = load %struct.bnode*, %struct.bnode** %3, align 8
  %357 = getelementptr inbounds %struct.bnode, %struct.bnode* %356, i32 0, i32 5
  %358 = getelementptr inbounds [3 x double], [3 x double]* %357, i64 0, i64 2
  %359 = load double, double* %358, align 8
  store double %359, double* %27, align 8
  br i1 false, label %360, label %365

360:                                              ; preds = %347
  %361 = load double, double* %25, align 8
  %362 = fptrunc double %361 to float
  %363 = call i32 @__isnanf(float %362) #10
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %375, label %377

365:                                              ; preds = %347
  br i1 true, label %366, label %370

366:                                              ; preds = %365
  %367 = load double, double* %25, align 8
  %368 = call i32 @__isnan(double %367) #10
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %375, label %377

370:                                              ; preds = %365
  %371 = load double, double* %25, align 8
  %372 = fpext double %371 to x86_fp80
  %373 = call i32 @__isnanl(x86_fp80 %372) #10
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370, %366, %360
  %376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 79)
  call void @abort() #11
  unreachable

377:                                              ; preds = %370, %366, %360
  br i1 false, label %378, label %383

378:                                              ; preds = %377
  %379 = load double, double* %26, align 8
  %380 = fptrunc double %379 to float
  %381 = call i32 @__isnanf(float %380) #10
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %393, label %395

383:                                              ; preds = %377
  br i1 true, label %384, label %388

384:                                              ; preds = %383
  %385 = load double, double* %26, align 8
  %386 = call i32 @__isnan(double %385) #10
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %393, label %395

388:                                              ; preds = %383
  %389 = load double, double* %26, align 8
  %390 = fpext double %389 to x86_fp80
  %391 = call i32 @__isnanl(x86_fp80 %390) #10
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %388, %384, %378
  %394 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 78)
  call void @abort() #11
  unreachable

395:                                              ; preds = %388, %384, %378
  br i1 false, label %396, label %401

396:                                              ; preds = %395
  %397 = load double, double* %27, align 8
  %398 = fptrunc double %397 to float
  %399 = call i32 @__isnanf(float %398) #10
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %411, label %413

401:                                              ; preds = %395
  br i1 true, label %402, label %406

402:                                              ; preds = %401
  %403 = load double, double* %27, align 8
  %404 = call i32 @__isnan(double %403) #10
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %411, label %413

406:                                              ; preds = %401
  %407 = load double, double* %27, align 8
  %408 = fpext double %407 to x86_fp80
  %409 = call i32 @__isnanl(x86_fp80 %408) #10
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %406, %402, %396
  %412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 77)
  call void @abort() #11
  unreachable

413:                                              ; preds = %406, %402, %396
  %414 = load double, double* %25, align 8
  %415 = call double @llvm.fabs.f64(double %414)
  %416 = fcmp olt double %415, 1.000000e+04
  br i1 %416, label %419, label %417

417:                                              ; preds = %413
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 76)
  call void @abort() #11
  unreachable

419:                                              ; preds = %413
  %420 = load double, double* %26, align 8
  %421 = call double @llvm.fabs.f64(double %420)
  %422 = fcmp olt double %421, 1.000000e+04
  br i1 %422, label %425, label %423

423:                                              ; preds = %419
  %424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 75)
  call void @abort() #11
  unreachable

425:                                              ; preds = %419
  %426 = load double, double* %27, align 8
  %427 = call double @llvm.fabs.f64(double %426)
  %428 = fcmp olt double %427, 1.000000e+04
  br i1 %428, label %431, label %429

429:                                              ; preds = %425
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 74)
  call void @abort() #11
  unreachable

431:                                              ; preds = %425
  store i32 0, i32* %28, align 4
  br label %432

432:                                              ; preds = %450, %431
  %433 = load i32, i32* %28, align 4
  %434 = icmp slt i32 %433, 3
  br i1 %434, label %435, label %453

435:                                              ; preds = %432
  %436 = load %struct.bnode*, %struct.bnode** %3, align 8
  %437 = getelementptr inbounds %struct.bnode, %struct.bnode* %436, i32 0, i32 5
  %438 = load i32, i32* %28, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [3 x double], [3 x double]* %437, i64 0, i64 %439
  %441 = load double, double* %440, align 8
  %442 = load i32, i32* %28, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %443
  %445 = load double, double* %444, align 8
  %446 = fadd double %441, %445
  %447 = load i32, i32* %28, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %448
  store double %446, double* %449, align 8
  br label %450

450:                                              ; preds = %435
  %451 = load i32, i32* %28, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %28, align 4
  br label %432

453:                                              ; preds = %432
  store i32 0, i32* %29, align 4
  br label %454

454:                                              ; preds = %466, %453
  %455 = load i32, i32* %29, align 4
  %456 = icmp slt i32 %455, 3
  br i1 %456, label %457, label %469

457:                                              ; preds = %454
  %458 = load i32, i32* %29, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %459
  %461 = load double, double* %460, align 8
  %462 = fmul double %461, 1.250000e-02
  %463 = load i32, i32* %29, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %464
  store double %462, double* %465, align 8
  br label %466

466:                                              ; preds = %457
  %467 = load i32, i32* %29, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %29, align 4
  br label %454

469:                                              ; preds = %454
  store i32 0, i32* %30, align 4
  br label %470

470:                                              ; preds = %488, %469
  %471 = load i32, i32* %30, align 4
  %472 = icmp slt i32 %471, 3
  br i1 %472, label %473, label %491

473:                                              ; preds = %470
  %474 = load %struct.bnode*, %struct.bnode** %3, align 8
  %475 = getelementptr inbounds %struct.bnode, %struct.bnode* %474, i32 0, i32 2
  %476 = load i32, i32* %30, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [3 x double], [3 x double]* %475, i64 0, i64 %477
  %479 = load double, double* %478, align 8
  %480 = load i32, i32* %30, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %481
  %483 = load double, double* %482, align 8
  %484 = fadd double %479, %483
  %485 = load i32, i32* %30, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %486
  store double %484, double* %487, align 8
  br label %488

488:                                              ; preds = %473
  %489 = load i32, i32* %30, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %30, align 4
  br label %470

491:                                              ; preds = %470
  store i32 0, i32* %31, align 4
  br label %492

492:                                              ; preds = %505, %491
  %493 = load i32, i32* %31, align 4
  %494 = icmp slt i32 %493, 3
  br i1 %494, label %495, label %508

495:                                              ; preds = %492
  %496 = load i32, i32* %31, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %497
  %499 = load double, double* %498, align 8
  %500 = load %struct.bnode*, %struct.bnode** %3, align 8
  %501 = getelementptr inbounds %struct.bnode, %struct.bnode* %500, i32 0, i32 2
  %502 = load i32, i32* %31, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [3 x double], [3 x double]* %501, i64 0, i64 %503
  store double %499, double* %504, align 8
  br label %505

505:                                              ; preds = %495
  %506 = load i32, i32* %31, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %31, align 4
  br label %492

508:                                              ; preds = %492
  store i32 0, i32* %32, align 4
  br label %509

509:                                              ; preds = %527, %508
  %510 = load i32, i32* %32, align 4
  %511 = icmp slt i32 %510, 3
  br i1 %511, label %512, label %530

512:                                              ; preds = %509
  %513 = load i32, i32* %32, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %514
  %516 = load double, double* %515, align 8
  %517 = load i32, i32* %32, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %518
  %520 = load double, double* %519, align 8
  %521 = fadd double %516, %520
  %522 = load %struct.bnode*, %struct.bnode** %3, align 8
  %523 = getelementptr inbounds %struct.bnode, %struct.bnode* %522, i32 0, i32 5
  %524 = load i32, i32* %32, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [3 x double], [3 x double]* %523, i64 0, i64 %525
  store double %521, double* %526, align 8
  br label %527

527:                                              ; preds = %512
  %528 = load i32, i32* %32, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %32, align 4
  br label %509

530:                                              ; preds = %509
  %531 = load %struct.bnode*, %struct.bnode** %3, align 8
  %532 = getelementptr inbounds %struct.bnode, %struct.bnode* %531, i32 0, i32 2
  %533 = getelementptr inbounds [3 x double], [3 x double]* %532, i64 0, i64 0
  %534 = load double, double* %533, align 8
  store double %534, double* %33, align 8
  %535 = load %struct.bnode*, %struct.bnode** %3, align 8
  %536 = getelementptr inbounds %struct.bnode, %struct.bnode* %535, i32 0, i32 2
  %537 = getelementptr inbounds [3 x double], [3 x double]* %536, i64 0, i64 1
  %538 = load double, double* %537, align 8
  store double %538, double* %34, align 8
  %539 = load %struct.bnode*, %struct.bnode** %3, align 8
  %540 = getelementptr inbounds %struct.bnode, %struct.bnode* %539, i32 0, i32 2
  %541 = getelementptr inbounds [3 x double], [3 x double]* %540, i64 0, i64 2
  %542 = load double, double* %541, align 8
  store double %542, double* %35, align 8
  br i1 false, label %543, label %548

543:                                              ; preds = %530
  %544 = load double, double* %33, align 8
  %545 = fptrunc double %544 to float
  %546 = call i32 @__isnanf(float %545) #10
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %558, label %560

548:                                              ; preds = %530
  br i1 true, label %549, label %553

549:                                              ; preds = %548
  %550 = load double, double* %33, align 8
  %551 = call i32 @__isnan(double %550) #10
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %558, label %560

553:                                              ; preds = %548
  %554 = load double, double* %33, align 8
  %555 = fpext double %554 to x86_fp80
  %556 = call i32 @__isnanl(x86_fp80 %555) #10
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %560

558:                                              ; preds = %553, %549, %543
  %559 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 69)
  call void @abort() #11
  unreachable

560:                                              ; preds = %553, %549, %543
  br i1 false, label %561, label %566

561:                                              ; preds = %560
  %562 = load double, double* %34, align 8
  %563 = fptrunc double %562 to float
  %564 = call i32 @__isnanf(float %563) #10
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %576, label %578

566:                                              ; preds = %560
  br i1 true, label %567, label %571

567:                                              ; preds = %566
  %568 = load double, double* %34, align 8
  %569 = call i32 @__isnan(double %568) #10
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %576, label %578

571:                                              ; preds = %566
  %572 = load double, double* %34, align 8
  %573 = fpext double %572 to x86_fp80
  %574 = call i32 @__isnanl(x86_fp80 %573) #10
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %571, %567, %561
  %577 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 68)
  call void @abort() #11
  unreachable

578:                                              ; preds = %571, %567, %561
  br i1 false, label %579, label %584

579:                                              ; preds = %578
  %580 = load double, double* %35, align 8
  %581 = fptrunc double %580 to float
  %582 = call i32 @__isnanf(float %581) #10
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %594, label %596

584:                                              ; preds = %578
  br i1 true, label %585, label %589

585:                                              ; preds = %584
  %586 = load double, double* %35, align 8
  %587 = call i32 @__isnan(double %586) #10
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %594, label %596

589:                                              ; preds = %584
  %590 = load double, double* %35, align 8
  %591 = fpext double %590 to x86_fp80
  %592 = call i32 @__isnanl(x86_fp80 %591) #10
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %596

594:                                              ; preds = %589, %585, %579
  %595 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 67)
  call void @abort() #11
  unreachable

596:                                              ; preds = %589, %585, %579
  %597 = load double, double* %33, align 8
  %598 = call double @llvm.fabs.f64(double %597)
  %599 = fcmp olt double %598, 1.000000e+04
  br i1 %599, label %602, label %600

600:                                              ; preds = %596
  %601 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 66)
  call void @abort() #11
  unreachable

602:                                              ; preds = %596
  %603 = load double, double* %34, align 8
  %604 = call double @llvm.fabs.f64(double %603)
  %605 = fcmp olt double %604, 1.000000e+04
  br i1 %605, label %608, label %606

606:                                              ; preds = %602
  %607 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 65)
  call void @abort() #11
  unreachable

608:                                              ; preds = %602
  %609 = load double, double* %35, align 8
  %610 = call double @llvm.fabs.f64(double %609)
  %611 = fcmp olt double %610, 1.000000e+04
  br i1 %611, label %614, label %612

612:                                              ; preds = %608
  %613 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 64)
  call void @abort() #11
  unreachable

614:                                              ; preds = %608
  br label %615

615:                                              ; preds = %614
  %616 = load %struct.bnode*, %struct.bnode** %3, align 8
  %617 = getelementptr inbounds %struct.bnode, %struct.bnode* %616, i32 0, i32 10
  %618 = load %struct.bnode*, %struct.bnode** %617, align 8
  store %struct.bnode* %618, %struct.bnode** %3, align 8
  br label %41

619:                                              ; preds = %41
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @__isnanf(float) #5

; Function Attrs: nounwind readnone
declare dso_local i32 @__isnan(double) #5

; Function Attrs: nounwind readnone
declare dso_local i32 @__isnanl(x86_fp80) #5

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #6

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @grav(double %0, %struct.node* %1, %struct.bnode* %2, i32 %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.bnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.bnode*, align 8
  %12 = alloca %struct.bnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnode*, align 8
  store double %0, double* %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store %struct.bnode* %2, %struct.bnode** %8, align 8
  store i32 %3, i32* %9, align 4
  store double %4, double* %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.bnode*, %struct.bnode** %8, align 8
  %16 = icmp ne %struct.bnode* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load %struct.bnode*, %struct.bnode** %8, align 8
  store %struct.bnode* %18, %struct.bnode** %14, align 8
  br label %19

19:                                               ; preds = %17, %5
  %20 = load %struct.bnode*, %struct.bnode** %8, align 8
  store %struct.bnode* %20, %struct.bnode** %12, align 8
  br label %21

21:                                               ; preds = %24, %19
  %22 = load %struct.bnode*, %struct.bnode** %12, align 8
  %23 = icmp ne %struct.bnode* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load double, double* %6, align 8
  %26 = load %struct.node*, %struct.node** %7, align 8
  %27 = load %struct.bnode*, %struct.bnode** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load double, double* %10, align 8
  call void @gravstep(double %25, %struct.node* %26, %struct.bnode* %27, i32 %28, double %29)
  %30 = load %struct.bnode*, %struct.bnode** %12, align 8
  %31 = getelementptr inbounds %struct.bnode, %struct.bnode* %30, i32 0, i32 10
  %32 = load %struct.bnode*, %struct.bnode** %31, align 8
  store %struct.bnode* %32, %struct.bnode** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %13, align 4
  br label %21

35:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gravstep(double %0, %struct.node* %1, %struct.bnode* %2, i32 %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.bnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store double %0, double* %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store %struct.bnode* %2, %struct.bnode** %8, align 8
  store i32 %3, i32* %9, align 4
  store double %4, double* %10, align 8
  %11 = load %struct.bnode*, %struct.bnode** %8, align 8
  %12 = load double, double* %6, align 8
  %13 = load %struct.node*, %struct.node** %7, align 8
  call void @hackgrav(%struct.bnode* %11, double %12, %struct.node* %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hackgrav(%struct.bnode* %0, double %1, %struct.node* %2) #0 {
  %4 = alloca %struct.bnode*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.hgstruct, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hgstruct, align 8
  %12 = alloca i32, align 4
  store %struct.bnode* %0, %struct.bnode** %4, align 8
  store double %1, double* %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %13 = load %struct.bnode*, %struct.bnode** %4, align 8
  %14 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %7, i32 0, i32 0
  store %struct.bnode* %13, %struct.bnode** %14, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.bnode*, %struct.bnode** %4, align 8
  %20 = getelementptr inbounds %struct.bnode, %struct.bnode* %19, i32 0, i32 2
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %7, i32 0, i32 1
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x double], [3 x double]* %25, i64 0, i64 %27
  store double %24, double* %28, align 8
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %15

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %7, i32 0, i32 2
  store double 0.000000e+00, double* %33, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %42, %32
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %7, i32 0, i32 3
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 %40
  store double 0.000000e+00, double* %41, align 8
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load double, double* %5, align 8
  %47 = load double, double* %5, align 8
  %48 = fmul double %46, %47
  store double %48, double* %8, align 8
  %49 = load %struct.node*, %struct.node** %6, align 8
  %50 = load double, double* %8, align 8
  call void @walksub(%struct.hgstruct* sret %11, %struct.node* %49, double %50, double 1.000000e+00, %struct.hgstruct* byval(%struct.hgstruct) align 8 %7, i32 0)
  %51 = bitcast %struct.hgstruct* %7 to i8*
  %52 = bitcast %struct.hgstruct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 64, i1 false)
  %53 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %7, i32 0, i32 2
  %54 = load double, double* %53, align 8
  %55 = load %struct.bnode*, %struct.bnode** %4, align 8
  %56 = getelementptr inbounds %struct.bnode, %struct.bnode* %55, i32 0, i32 8
  store double %54, double* %56, align 8
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %71, %45
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %7, i32 0, i32 3
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 0, i64 %63
  %65 = load double, double* %64, align 8
  %66 = load %struct.bnode*, %struct.bnode** %4, align 8
  %67 = getelementptr inbounds %struct.bnode, %struct.bnode* %66, i32 0, i32 7
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 0, i64 %69
  store double %65, double* %70, align 8
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %57

74:                                               ; preds = %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expandbox(%struct.bnode* %0, %struct.tree* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnode*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.icstruct, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x double], align 16
  %12 = alloca %struct.cnode*, align 8
  %13 = alloca %struct.tree, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.icstruct, align 4
  store %struct.bnode* %0, %struct.bnode** %5, align 8
  store %struct.tree* %1, %struct.tree** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.bnode*, %struct.bnode** %5, align 8
  %21 = load %struct.tree*, %struct.tree** %6, align 8
  %22 = call i32 @ic_test(%struct.bnode* %20, %struct.tree* %21)
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %146, %4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %147

27:                                               ; preds = %23
  %28 = load %struct.tree*, %struct.tree** %6, align 8
  %29 = getelementptr inbounds %struct.tree, %struct.tree* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  store double %30, double* %14, align 8
  %31 = load double, double* %14, align 8
  %32 = fcmp olt double %31, 1.000000e+03
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 999)
  call void @abort() #11
  unreachable

35:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.tree*, %struct.tree** %6, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 %43
  %45 = load double, double* %44, align 8
  %46 = load double, double* %14, align 8
  %47 = fmul double 5.000000e-01, %46
  %48 = fadd double %45, %47
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %50
  store double %48, double* %51, align 8
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %36

55:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %87, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load %struct.bnode*, %struct.bnode** %5, align 8
  %61 = getelementptr inbounds %struct.bnode, %struct.bnode* %60, i32 0, i32 2
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 0, i64 %63
  %65 = load double, double* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fcmp olt double %65, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %59
  %72 = load %struct.tree*, %struct.tree** %6, align 8
  %73 = getelementptr inbounds %struct.tree, %struct.tree* %72, i32 0, i32 0
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x double], [3 x double]* %73, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  store double %77, double* %17, align 8
  %78 = load double, double* %17, align 8
  %79 = load double, double* %14, align 8
  %80 = fsub double %78, %79
  %81 = load %struct.tree*, %struct.tree** %6, align 8
  %82 = getelementptr inbounds %struct.tree, %struct.tree* %81, i32 0, i32 0
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 %84
  store double %80, double* %85, align 8
  br label %86

86:                                               ; preds = %71, %59
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %56

90:                                               ; preds = %56
  %91 = load double, double* %14, align 8
  %92 = fmul double 2.000000e+00, %91
  %93 = load %struct.tree*, %struct.tree** %6, align 8
  %94 = getelementptr inbounds %struct.tree, %struct.tree* %93, i32 0, i32 1
  store double %92, double* %94, align 8
  %95 = load %struct.tree*, %struct.tree** %6, align 8
  %96 = getelementptr inbounds %struct.tree, %struct.tree* %95, i32 0, i32 1
  %97 = load double, double* %96, align 8
  store double %97, double* %14, align 8
  %98 = load %struct.tree*, %struct.tree** %6, align 8
  %99 = getelementptr inbounds %struct.tree, %struct.tree* %98, i32 0, i32 2
  %100 = load %struct.node*, %struct.node** %99, align 8
  %101 = icmp ne %struct.node* %100, null
  br i1 %101, label %102, label %146

102:                                              ; preds = %90
  %103 = call %struct.cnode* @cell_alloc(i32 0)
  store %struct.cnode* %103, %struct.cnode** %12, align 8
  %104 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  %105 = load double, double* %104, align 16
  %106 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  %107 = load double, double* %106, align 8
  %108 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  %109 = load double, double* %108, align 16
  %110 = load %struct.tree*, %struct.tree** %6, align 8
  %111 = call { i64, i64 } @intcoord1(double %105, double %107, double %109, %struct.tree* %110)
  %112 = bitcast %struct.icstruct* %19 to { i64, i64 }*
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 0
  %114 = extractvalue { i64, i64 } %111, 0
  store i64 %114, i64* %113, align 4
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 1
  %116 = extractvalue { i64, i64 } %111, 1
  store i64 %116, i64* %115, align 4
  %117 = bitcast %struct.icstruct* %9 to i8*
  %118 = bitcast %struct.icstruct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 16, i1 false)
  %119 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %9, i32 0, i32 1
  %120 = load i16, i16* %119, align 4
  %121 = icmp ne i16 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %102
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 1)
  call void @abort() #11
  unreachable

124:                                              ; preds = %102
  %125 = bitcast %struct.icstruct* %9 to { i64, i64 }*
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 1
  %129 = load i64, i64* %128, align 4
  %130 = call i32 @old_subindex(i64 %127, i64 %129, i32 536870912)
  store i32 %130, i32* %10, align 4
  %131 = load %struct.tree*, %struct.tree** %6, align 8
  %132 = getelementptr inbounds %struct.tree, %struct.tree* %131, i32 0, i32 2
  %133 = load %struct.node*, %struct.node** %132, align 8
  %134 = load %struct.cnode*, %struct.cnode** %12, align 8
  %135 = getelementptr inbounds %struct.cnode, %struct.cnode* %134, i32 0, i32 5
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %135, i64 0, i64 %137
  store %struct.node* %133, %struct.node** %138, align 8
  %139 = load %struct.cnode*, %struct.cnode** %12, align 8
  %140 = bitcast %struct.cnode* %139 to %struct.node*
  %141 = load %struct.tree*, %struct.tree** %6, align 8
  %142 = getelementptr inbounds %struct.tree, %struct.tree* %141, i32 0, i32 2
  store %struct.node* %140, %struct.node** %142, align 8
  %143 = load %struct.bnode*, %struct.bnode** %5, align 8
  %144 = load %struct.tree*, %struct.tree** %6, align 8
  %145 = call i32 @ic_test(%struct.bnode* %143, %struct.tree* %144)
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %124, %90
  br label %23

147:                                              ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @loadtree(%struct.bnode* %0, i64 %1, i64 %2, %struct.node* %3, i32 %4, %struct.tree* %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.icstruct, align 4
  %9 = alloca %struct.bnode*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tree*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cnode*, align 8
  %15 = alloca %struct.node*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.icstruct, align 4
  %19 = alloca %struct.icstruct, align 4
  %20 = bitcast %struct.icstruct* %8 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %1, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %2, i64* %22, align 4
  store %struct.bnode* %0, %struct.bnode** %9, align 8
  store %struct.node* %3, %struct.node** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.tree* %5, %struct.tree** %12, align 8
  %23 = load %struct.node*, %struct.node** %10, align 8
  %24 = icmp eq %struct.node* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.bnode*, %struct.bnode** %9, align 8
  %27 = bitcast %struct.bnode* %26 to %struct.node*
  store %struct.node* %27, %struct.node** %7, align 8
  br label %89

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 2)
  call void @abort() #11
  unreachable

33:                                               ; preds = %28
  %34 = load %struct.node*, %struct.node** %10, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 8
  %37 = sext i16 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  store i32 0, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call %struct.cnode* @cell_alloc(i32 %40)
  store %struct.cnode* %41, %struct.cnode** %14, align 8
  %42 = load %struct.node*, %struct.node** %10, align 8
  %43 = bitcast %struct.node* %42 to %struct.bnode*
  %44 = load %struct.tree*, %struct.tree** %12, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @subindex(%struct.bnode* %43, %struct.tree* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.node*, %struct.node** %10, align 8
  %48 = load %struct.cnode*, %struct.cnode** %14, align 8
  %49 = getelementptr inbounds %struct.cnode, %struct.cnode* %48, i32 0, i32 5
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %49, i64 0, i64 %51
  store %struct.node* %47, %struct.node** %52, align 8
  %53 = load %struct.cnode*, %struct.cnode** %14, align 8
  %54 = bitcast %struct.cnode* %53 to %struct.node*
  store %struct.node* %54, %struct.node** %10, align 8
  br label %55

55:                                               ; preds = %39, %33
  %56 = load i32, i32* %11, align 4
  %57 = bitcast %struct.icstruct* %8 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 4
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60, align 4
  %62 = call i32 @old_subindex(i64 %59, i64 %61, i32 %56)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.node*, %struct.node** %10, align 8
  %64 = bitcast %struct.node* %63 to %struct.cnode*
  %65 = getelementptr inbounds %struct.cnode, %struct.cnode* %64, i32 0, i32 5
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %65, i64 0, i64 %67
  %69 = load %struct.node*, %struct.node** %68, align 8
  store %struct.node* %69, %struct.node** %15, align 8
  %70 = load %struct.bnode*, %struct.bnode** %9, align 8
  %71 = load %struct.node*, %struct.node** %15, align 8
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %72, 1
  %74 = load %struct.tree*, %struct.tree** %12, align 8
  %75 = bitcast %struct.icstruct* %8 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 4
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78, align 4
  %80 = call %struct.node* @loadtree(%struct.bnode* %70, i64 %77, i64 %79, %struct.node* %71, i32 %73, %struct.tree* %74)
  %81 = load %struct.node*, %struct.node** %10, align 8
  %82 = bitcast %struct.node* %81 to %struct.cnode*
  %83 = getelementptr inbounds %struct.cnode, %struct.cnode* %82, i32 0, i32 5
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %83, i64 0, i64 %85
  store %struct.node* %80, %struct.node** %86, align 8
  br label %87

87:                                               ; preds = %55
  %88 = load %struct.node*, %struct.node** %10, align 8
  store %struct.node* %88, %struct.node** %7, align 8
  br label %89

89:                                               ; preds = %87, %25
  %90 = load %struct.node*, %struct.node** %7, align 8
  ret %struct.node* %90
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @hackcofm(%struct.node* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  %14 = load %struct.node*, %struct.node** %3, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %136

19:                                               ; preds = %1
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %27, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %25
  store double 0.000000e+00, double* %26, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %20

30:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %90, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %93

34:                                               ; preds = %31
  %35 = load %struct.node*, %struct.node** %3, align 8
  %36 = bitcast %struct.node* %35 to %struct.cnode*
  %37 = getelementptr inbounds %struct.cnode, %struct.cnode* %36, i32 0, i32 5
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %37, i64 0, i64 %39
  %41 = load %struct.node*, %struct.node** %40, align 8
  store %struct.node* %41, %struct.node** %5, align 8
  %42 = load %struct.node*, %struct.node** %5, align 8
  %43 = icmp ne %struct.node* %42, null
  br i1 %43, label %44, label %89

44:                                               ; preds = %34
  %45 = load %struct.node*, %struct.node** %5, align 8
  %46 = call double @hackcofm(%struct.node* %45)
  store double %46, double* %9, align 8
  %47 = load double, double* %9, align 8
  %48 = load double, double* %8, align 8
  %49 = fadd double %47, %48
  store double %49, double* %8, align 8
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %65, %44
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.node*, %struct.node** %5, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 2
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 0, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load double, double* %9, align 8
  %61 = fmul double %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %63
  store double %61, double* %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %50

68:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %74
  %76 = load double, double* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %78
  %80 = load double, double* %79, align 8
  %81 = fadd double %76, %80
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %83
  store double %81, double* %84, align 8
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %69

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88, %34
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %31

93:                                               ; preds = %31
  %94 = load double, double* %8, align 8
  %95 = load %struct.node*, %struct.node** %3, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 1
  store double %94, double* %96, align 8
  %97 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %98 = load double, double* %97, align 16
  %99 = load %struct.node*, %struct.node** %3, align 8
  %100 = getelementptr inbounds %struct.node, %struct.node* %99, i32 0, i32 2
  %101 = getelementptr inbounds [3 x double], [3 x double]* %100, i64 0, i64 0
  store double %98, double* %101, align 8
  %102 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %103 = load double, double* %102, align 8
  %104 = load %struct.node*, %struct.node** %3, align 8
  %105 = getelementptr inbounds %struct.node, %struct.node* %104, i32 0, i32 2
  %106 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 1
  store double %103, double* %106, align 8
  %107 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %108 = load double, double* %107, align 16
  %109 = load %struct.node*, %struct.node** %3, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 2
  %111 = getelementptr inbounds [3 x double], [3 x double]* %110, i64 0, i64 2
  store double %108, double* %111, align 8
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %131, %93
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = load %struct.node*, %struct.node** %3, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 2
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x double], [3 x double]* %117, i64 0, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load %struct.node*, %struct.node** %3, align 8
  %123 = getelementptr inbounds %struct.node, %struct.node* %122, i32 0, i32 1
  %124 = load double, double* %123, align 8
  %125 = fdiv double %121, %124
  %126 = load %struct.node*, %struct.node** %3, align 8
  %127 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 2
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x double], [3 x double]* %127, i64 0, i64 %129
  store double %125, double* %130, align 8
  br label %131

131:                                              ; preds = %115
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %112

134:                                              ; preds = %112
  %135 = load double, double* %8, align 8
  store double %135, double* %2, align 8
  br label %141

136:                                              ; preds = %1
  %137 = load %struct.node*, %struct.node** %3, align 8
  %138 = getelementptr inbounds %struct.node, %struct.node* %137, i32 0, i32 1
  %139 = load double, double* %138, align 8
  store double %139, double* %8, align 8
  %140 = load double, double* %8, align 8
  store double %140, double* %2, align 8
  br label %141

141:                                              ; preds = %136, %134
  %142 = load double, double* %2, align 8
  ret double %142
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cnode* @cell_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnode*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %9 = bitcast %struct.node* %8 to %struct.cnode*
  store %struct.cnode* %9, %struct.cnode** %3, align 8
  %10 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %11 = bitcast %struct.node* %10 to %struct.cnode*
  %12 = getelementptr inbounds %struct.cnode, %struct.cnode* %11, i32 0, i32 6
  %13 = load %struct.cnode*, %struct.cnode** %12, align 8
  %14 = bitcast %struct.cnode* %13 to %struct.node*
  store %struct.node* %14, %struct.node** @cp_free_list, align 8
  br label %18

15:                                               ; preds = %1
  %16 = call noalias i8* @malloc(i64 120) #9
  %17 = bitcast i8* %16 to %struct.cnode*
  store %struct.cnode* %17, %struct.cnode** %3, align 8
  br label %18

18:                                               ; preds = %15, %7
  %19 = load %struct.cnode*, %struct.cnode** %3, align 8
  %20 = getelementptr inbounds %struct.cnode, %struct.cnode* %19, i32 0, i32 0
  store i16 2, i16* %20, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.cnode*, %struct.cnode** %3, align 8
  %23 = getelementptr inbounds %struct.cnode, %struct.cnode* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %33, %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.cnode*, %struct.cnode** %3, align 8
  %29 = getelementptr inbounds %struct.cnode, %struct.cnode* %28, i32 0, i32 5
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %29, i64 0, i64 %31
  store %struct.node* null, %struct.node** %32, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %24

36:                                               ; preds = %24
  %37 = load %struct.cnode*, %struct.cnode** %3, align 8
  ret %struct.cnode* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subindex(%struct.bnode* %0, %struct.tree* %1, i32 %2) #0 {
  %4 = alloca %struct.bnode*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x double], align 16
  store %struct.bnode* %0, %struct.bnode** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.bnode*, %struct.bnode** %4, align 8
  %14 = getelementptr inbounds %struct.bnode, %struct.bnode* %13, i32 0, i32 2
  %15 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  store double %16, double* %17, align 16
  %18 = load %struct.bnode*, %struct.bnode** %4, align 8
  %19 = getelementptr inbounds %struct.bnode, %struct.bnode* %18, i32 0, i32 2
  %20 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1
  store double %21, double* %22, align 8
  %23 = load %struct.bnode*, %struct.bnode** %4, align 8
  %24 = getelementptr inbounds %struct.bnode, %struct.bnode* %23, i32 0, i32 2
  %25 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 0, i64 2
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 2
  store double %26, double* %27, align 16
  %28 = load %struct.tree*, %struct.tree** %5, align 8
  %29 = getelementptr inbounds %struct.tree, %struct.tree* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  store double %30, double* %9, align 8
  %31 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  %32 = load double, double* %31, align 16
  %33 = load %struct.tree*, %struct.tree** %5, align 8
  %34 = getelementptr inbounds %struct.tree, %struct.tree* %33, i32 0, i32 0
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 0, i64 0
  %36 = load double, double* %35, align 8
  %37 = fsub double %32, %36
  %38 = load double, double* %9, align 8
  %39 = fdiv double %37, %38
  store double %39, double* %10, align 8
  %40 = load double, double* %10, align 8
  %41 = fcmp ole double 0.000000e+00, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load double, double* %10, align 8
  %44 = fcmp olt double %43, 1.000000e+00
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %3
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 5)
  call void @abort() #11
  unreachable

47:                                               ; preds = %42
  %48 = load double, double* %10, align 8
  %49 = fmul double 0x41D0000000000000, %48
  %50 = call double @llvm.floor.f64(double %49)
  %51 = fptosi double %50 to i32
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1
  %54 = load double, double* %53, align 8
  %55 = load %struct.tree*, %struct.tree** %5, align 8
  %56 = getelementptr inbounds %struct.tree, %struct.tree* %55, i32 0, i32 0
  %57 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 1
  %58 = load double, double* %57, align 8
  %59 = fsub double %54, %58
  %60 = load double, double* %9, align 8
  %61 = fdiv double %59, %60
  store double %61, double* %10, align 8
  %62 = load double, double* %10, align 8
  %63 = fcmp ole double 0.000000e+00, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load double, double* %10, align 8
  %66 = fcmp olt double %65, 1.000000e+00
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %47
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 6)
  call void @abort() #11
  unreachable

69:                                               ; preds = %64
  %70 = load double, double* %10, align 8
  %71 = fmul double 0x41D0000000000000, %70
  %72 = call double @llvm.floor.f64(double %71)
  %73 = fptosi double %72 to i32
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 2
  %76 = load double, double* %75, align 16
  %77 = load %struct.tree*, %struct.tree** %5, align 8
  %78 = getelementptr inbounds %struct.tree, %struct.tree* %77, i32 0, i32 0
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 2
  %80 = load double, double* %79, align 8
  %81 = fsub double %76, %80
  %82 = load double, double* %9, align 8
  %83 = fdiv double %81, %82
  store double %83, double* %10, align 8
  %84 = load double, double* %10, align 8
  %85 = fcmp ole double 0.000000e+00, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load double, double* %10, align 8
  %88 = fcmp olt double %87, 1.000000e+00
  br i1 %88, label %91, label %89

89:                                               ; preds = %86, %69
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 7)
  call void @abort() #11
  unreachable

91:                                               ; preds = %86
  %92 = load double, double* %10, align 8
  %93 = fmul double 0x41D0000000000000, %92
  %94 = call double @llvm.floor.f64(double %93)
  %95 = fptosi double %94 to i32
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %115, %91
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = ashr i32 8, %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %108, %100
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %97

118:                                              ; preds = %97
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ic_test(%struct.bnode* %0, %struct.tree* %1) #0 {
  %3 = alloca %struct.bnode*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x double], align 16
  store %struct.bnode* %0, %struct.bnode** %3, align 8
  store %struct.tree* %1, %struct.tree** %4, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.bnode*, %struct.bnode** %3, align 8
  %10 = getelementptr inbounds %struct.bnode, %struct.bnode* %9, i32 0, i32 2
  %11 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %12, double* %13, align 16
  %14 = load %struct.bnode*, %struct.bnode** %3, align 8
  %15 = getelementptr inbounds %struct.bnode, %struct.bnode* %14, i32 0, i32 2
  %16 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 1
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %17, double* %18, align 8
  %19 = load %struct.bnode*, %struct.bnode** %3, align 8
  %20 = getelementptr inbounds %struct.bnode, %struct.bnode* %19, i32 0, i32 2
  %21 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 2
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %22, double* %23, align 16
  %24 = load %struct.tree*, %struct.tree** %4, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  store double %26, double* %6, align 8
  %27 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %28 = load double, double* %27, align 16
  %29 = load %struct.tree*, %struct.tree** %4, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 0
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %32 = load double, double* %31, align 8
  %33 = fsub double %28, %32
  %34 = load double, double* %6, align 8
  %35 = fdiv double %33, %34
  store double %35, double* %5, align 8
  %36 = load double, double* %5, align 8
  %37 = fcmp ole double 0.000000e+00, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load double, double* %5, align 8
  %40 = fcmp olt double %39, 1.000000e+00
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %2
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %44 = load double, double* %43, align 8
  %45 = load %struct.tree*, %struct.tree** %4, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 0
  %47 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 1
  %48 = load double, double* %47, align 8
  %49 = fsub double %44, %48
  %50 = load double, double* %6, align 8
  %51 = fdiv double %49, %50
  store double %51, double* %5, align 8
  %52 = load double, double* %5, align 8
  %53 = fcmp ole double 0.000000e+00, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load double, double* %5, align 8
  %56 = fcmp olt double %55, 1.000000e+00
  br i1 %56, label %58, label %57

57:                                               ; preds = %54, %42
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %60 = load double, double* %59, align 16
  %61 = load %struct.tree*, %struct.tree** %4, align 8
  %62 = getelementptr inbounds %struct.tree, %struct.tree* %61, i32 0, i32 0
  %63 = getelementptr inbounds [3 x double], [3 x double]* %62, i64 0, i64 2
  %64 = load double, double* %63, align 8
  %65 = fsub double %60, %64
  %66 = load double, double* %6, align 8
  %67 = fdiv double %65, %66
  store double %67, double* %5, align 8
  %68 = load double, double* %5, align 8
  %69 = fcmp ole double 0.000000e+00, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load double, double* %5, align 8
  %72 = fcmp olt double %71, 1.000000e+00
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %58
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @intcoord1(double %0, double %1, double %2, %struct.tree* %3) #0 {
  %5 = alloca %struct.icstruct, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store %struct.tree* %3, %struct.tree** %9, align 8
  %11 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %5, i32 0, i32 1
  store i16 1, i16* %11, align 4
  %12 = load double, double* %6, align 8
  %13 = load %struct.tree*, %struct.tree** %9, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 0
  %15 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %16 = load double, double* %15, align 8
  %17 = fsub double %12, %16
  %18 = load %struct.tree*, %struct.tree** %9, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = fdiv double %17, %20
  store double %21, double* %10, align 8
  %22 = load double, double* %10, align 8
  %23 = fcmp ole double 0.000000e+00, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load double, double* %10, align 8
  %26 = fcmp olt double %25, 1.000000e+00
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load double, double* %10, align 8
  %29 = fmul double 0x41D0000000000000, %28
  %30 = call double @llvm.floor.f64(double %29)
  %31 = fptosi double %30 to i32
  %32 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %5, i32 0, i32 0
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %32, i64 0, i64 0
  store i32 %31, i32* %33, align 4
  br label %36

34:                                               ; preds = %24, %4
  %35 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %5, i32 0, i32 1
  store i16 0, i16* %35, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load double, double* %7, align 8
  %38 = load %struct.tree*, %struct.tree** %9, align 8
  %39 = getelementptr inbounds %struct.tree, %struct.tree* %38, i32 0, i32 0
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0, i64 1
  %41 = load double, double* %40, align 8
  %42 = fsub double %37, %41
  %43 = load %struct.tree*, %struct.tree** %9, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = fdiv double %42, %45
  store double %46, double* %10, align 8
  %47 = load double, double* %10, align 8
  %48 = fcmp ole double 0.000000e+00, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load double, double* %10, align 8
  %51 = fcmp olt double %50, 1.000000e+00
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load double, double* %10, align 8
  %54 = fmul double 0x41D0000000000000, %53
  %55 = call double @llvm.floor.f64(double %54)
  %56 = fptosi double %55 to i32
  %57 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %5, i32 0, i32 0
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %57, i64 0, i64 1
  store i32 %56, i32* %58, align 4
  br label %61

59:                                               ; preds = %49, %36
  %60 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %5, i32 0, i32 1
  store i16 0, i16* %60, align 4
  br label %61

61:                                               ; preds = %59, %52
  %62 = load double, double* %8, align 8
  %63 = load %struct.tree*, %struct.tree** %9, align 8
  %64 = getelementptr inbounds %struct.tree, %struct.tree* %63, i32 0, i32 0
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 2
  %66 = load double, double* %65, align 8
  %67 = fsub double %62, %66
  %68 = load %struct.tree*, %struct.tree** %9, align 8
  %69 = getelementptr inbounds %struct.tree, %struct.tree* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = fdiv double %67, %70
  store double %71, double* %10, align 8
  %72 = load double, double* %10, align 8
  %73 = fcmp ole double 0.000000e+00, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load double, double* %10, align 8
  %76 = fcmp olt double %75, 1.000000e+00
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load double, double* %10, align 8
  %79 = fmul double 0x41D0000000000000, %78
  %80 = call double @llvm.floor.f64(double %79)
  %81 = fptosi double %80 to i32
  %82 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %5, i32 0, i32 0
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 2
  store i32 %81, i32* %83, align 4
  br label %86

84:                                               ; preds = %74, %61
  %85 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %5, i32 0, i32 1
  store i16 0, i16* %85, align 4
  br label %86

86:                                               ; preds = %84, %77
  %87 = bitcast %struct.icstruct* %5 to { i64, i64 }*
  %88 = load { i64, i64 }, { i64, i64 }* %87, align 4
  ret { i64, i64 } %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freetree(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  %6 = icmp eq %struct.node* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 8
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  br label %36

14:                                               ; preds = %7
  store i32 7, i32* %4, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.node*, %struct.node** %2, align 8
  %20 = bitcast %struct.node* %19 to %struct.cnode*
  %21 = getelementptr inbounds %struct.cnode, %struct.cnode* %20, i32 0, i32 5
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %21, i64 0, i64 %23
  %25 = load %struct.node*, %struct.node** %24, align 8
  store %struct.node* %25, %struct.node** %3, align 8
  %26 = load %struct.node*, %struct.node** %3, align 8
  %27 = icmp ne %struct.node* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load %struct.node*, %struct.node** %3, align 8
  call void @freetree(%struct.node* %29)
  br label %30

30:                                               ; preds = %28, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.node*, %struct.node** %2, align 8
  call void @my_free(%struct.node* %35)
  br label %36

36:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_free(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %5 = load i16, i16* %4, align 8
  %6 = sext i16 %5 to i32
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.bnode*, %struct.bnode** @bp_free_list, align 8
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = bitcast %struct.node* %10 to %struct.bnode*
  %12 = getelementptr inbounds %struct.bnode, %struct.bnode* %11, i32 0, i32 9
  store %struct.bnode* %9, %struct.bnode** %12, align 8
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = bitcast %struct.node* %13 to %struct.bnode*
  store %struct.bnode* %14, %struct.bnode** @bp_free_list, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %17 = bitcast %struct.node* %16 to %struct.cnode*
  %18 = load %struct.node*, %struct.node** %2, align 8
  %19 = bitcast %struct.node* %18 to %struct.cnode*
  %20 = getelementptr inbounds %struct.cnode, %struct.cnode* %19, i32 0, i32 6
  store %struct.cnode* %17, %struct.cnode** %20, align 8
  %21 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %21, %struct.node** @cp_free_list, align 8
  br label %22

22:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bnode* @ubody_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnode*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 144) #9
  %5 = bitcast i8* %4 to %struct.bnode*
  store %struct.bnode* %5, %struct.bnode** %3, align 8
  %6 = load %struct.bnode*, %struct.bnode** %3, align 8
  %7 = getelementptr inbounds %struct.bnode, %struct.bnode* %6, i32 0, i32 0
  store i16 1, i16* %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.bnode*, %struct.bnode** %3, align 8
  %10 = getelementptr inbounds %struct.bnode, %struct.bnode* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.bnode*, %struct.bnode** %3, align 8
  %12 = getelementptr inbounds %struct.bnode, %struct.bnode* %11, i32 0, i32 10
  store %struct.bnode* null, %struct.bnode** %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.bnode*, %struct.bnode** %3, align 8
  %15 = getelementptr inbounds %struct.bnode, %struct.bnode* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bnode*, %struct.bnode** %3, align 8
  ret %struct.bnode* %16
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bnode* @testdata() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca %struct.bnode*, align 8
  %10 = alloca %struct.bnode*, align 8
  %11 = alloca %struct.bnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store double 1.230000e+02, double* %15, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 99)
  call void @abort() #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gravsub(%struct.hgstruct* noalias sret %0, %struct.node* %1, %struct.hgstruct* byval(%struct.hgstruct) align 8 %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [3 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.node* %1, %struct.node** %4, align 8
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %38, %3
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %2, i32 0, i32 1
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 %31
  %33 = load double, double* %32, align 8
  %34 = fsub double %28, %33
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 %36
  store double %34, double* %37, align 8
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %19

41:                                               ; preds = %19
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fmul double %49, %53
  %55 = load double, double* %14, align 8
  %56 = fadd double %55, %54
  store double %56, double* %14, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load double, double* %14, align 8
  %62 = fadd double %61, 0x3F647AE147AE147C
  store double %62, double* %14, align 8
  %63 = load double, double* %14, align 8
  %64 = call double @sqrt(double %63) #9
  store double %64, double* %5, align 8
  %65 = load %struct.node*, %struct.node** %4, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = load double, double* %5, align 8
  %69 = fdiv double %67, %68
  store double %69, double* %6, align 8
  %70 = load double, double* %6, align 8
  %71 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %2, i32 0, i32 2
  %72 = load double, double* %71, align 8
  %73 = fsub double %72, %70
  store double %73, double* %71, align 8
  %74 = load double, double* %6, align 8
  %75 = load double, double* %14, align 8
  %76 = fdiv double %74, %75
  store double %76, double* %7, align 8
  store i32 0, i32* %17, align 4
  br label %77

77:                                               ; preds = %90, %60
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load double, double* %7, align 8
  %86 = fmul double %84, %85
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %88
  store double %86, double* %89, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %77

93:                                               ; preds = %77
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %112, %93
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %2, i32 0, i32 3
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x double], [3 x double]* %98, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %104
  %106 = load double, double* %105, align 8
  %107 = fadd double %102, %106
  %108 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %2, i32 0, i32 3
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x double], [3 x double]* %108, i64 0, i64 %110
  store double %107, double* %111, align 8
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %18, align 4
  br label %94

115:                                              ; preds = %94
  %116 = load %struct.node*, %struct.node** %4, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 0
  %118 = load i16, i16* %117, align 8
  %119 = sext i16 %118 to i32
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %115
  %123 = bitcast %struct.hgstruct* %0 to i8*
  %124 = bitcast %struct.hgstruct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 %124, i64 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @subdivp(%struct.node* %0, double %1, double %2, %struct.hgstruct* byval(%struct.hgstruct) align 8 %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.node*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  %15 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %15, %struct.node** %9, align 8
  %16 = load %struct.node*, %struct.node** %9, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i16 0, i16* %5, align 2
  br label %72

22:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.node*, %struct.node** %9, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 2
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x double], [3 x double]* %28, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %3, i32 0, i32 1
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fsub double %32, %37
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %40
  store double %38, double* %41, align 8
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %23

45:                                               ; preds = %23
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fmul double %53, %57
  %59 = load double, double* %12, align 8
  %60 = fadd double %59, %58
  store double %60, double* %12, align 8
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load double, double* %8, align 8
  %66 = load double, double* %12, align 8
  %67 = fmul double %65, %66
  %68 = load double, double* %7, align 8
  %69 = fcmp olt double %67, %68
  %70 = zext i1 %69 to i32
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %5, align 2
  br label %72

72:                                               ; preds = %64, %21
  %73 = load i16, i16* %5, align 2
  ret i16 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printtree(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  call void @ptree(%struct.node* %3, i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ptree(%struct.node* %0, i32 %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = icmp ne %struct.node* %7, null
  br i1 %8, label %9, label %66

9:                                                ; preds = %2
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 8
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.node*, %struct.node** %3, align 8
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  %20 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %21 = load double, double* %20, align 8
  %22 = load %struct.node*, %struct.node** %3, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 2
  %24 = getelementptr inbounds [3 x double], [3 x double]* %23, i64 0, i64 1
  %25 = load double, double* %24, align 8
  %26 = load %struct.node*, %struct.node** %3, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 2
  %28 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 2
  %29 = load double, double* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %16, %struct.node* %17, double %21, double %25, double %29)
  br label %65

31:                                               ; preds = %9
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.node*, %struct.node** %3, align 8
  %34 = load %struct.node*, %struct.node** %3, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %36 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 0, i64 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.node*, %struct.node** %3, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 2
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0, i64 1
  %41 = load double, double* %40, align 8
  %42 = load %struct.node*, %struct.node** %3, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 2
  %44 = getelementptr inbounds [3 x double], [3 x double]* %43, i64 0, i64 2
  %45 = load double, double* %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %32, %struct.node* %33, double %37, double %41, double %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %61, %31
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.node*, %struct.node** %3, align 8
  %52 = bitcast %struct.node* %51 to %struct.cnode*
  %53 = getelementptr inbounds %struct.cnode, %struct.cnode* %52, i32 0, i32 5
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %53, i64 0, i64 %55
  %57 = load %struct.node*, %struct.node** %56, align 8
  store %struct.node* %57, %struct.node** %5, align 8
  %58 = load %struct.node*, %struct.node** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  call void @ptree(%struct.node* %58, i32 %60)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %47

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %15
  br label %69

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dis_number(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %4 = load i32, i32* @nbody, align 4
  %5 = sitofp i32 %4 to double
  %6 = load i32, i32* @NumNodes, align 4
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %5, %7
  %9 = call double @llvm.ceil.f64(double %8)
  %10 = fptosi double %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @dis2_number(%struct.node* %11, i32 -1, i32 %12)
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dis2_number(%struct.node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.node*, %struct.node** %5, align 8
  %11 = icmp eq %struct.node* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.node*, %struct.node** %5, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %22, %23
  %25 = load %struct.node*, %struct.node** %5, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %50

29:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.node*, %struct.node** %5, align 8
  %35 = bitcast %struct.node* %34 to %struct.cnode*
  %36 = getelementptr inbounds %struct.cnode, %struct.cnode* %35, i32 0, i32 5
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %36, i64 0, i64 %38
  %40 = load %struct.node*, %struct.node** %39, align 8
  store %struct.node* %40, %struct.node** %9, align 8
  %41 = load %struct.node*, %struct.node** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dis2_number(%struct.node* %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %20, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @my_rand(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fmul double 1.680700e+04, %4
  %6 = fadd double %5, 1.000000e+00
  store double %6, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = load double, double* %3, align 8
  %9 = fdiv double %8, 0x41DFFFFFFFC00000
  %10 = call double @llvm.floor.f64(double %9)
  %11 = fmul double 0x41DFFFFFFFC00000, %10
  %12 = fsub double %7, %11
  store double %12, double* %2, align 8
  %13 = load double, double* %2, align 8
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @xrand(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %4, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %4, align 8
  %11 = fsub double %9, %10
  %12 = load double, double* %6, align 8
  %13 = fmul double %11, %12
  %14 = fdiv double %13, 0x41DFFFFFFFC00000
  %15 = fadd double %8, %14
  store double %15, double* %7, align 8
  %16 = load double, double* %7, align 8
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %4)
  %6 = call i32* @__errno_location() #10
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %1
  call void @exit(i32 0) #11
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #5

declare dso_local void @perror(i8*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @walksub(%struct.hgstruct* noalias sret %0, %struct.node* %1, double %2, double %3, %struct.hgstruct* byval(%struct.hgstruct) align 8 %4, i32 %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.node*, align 8
  %14 = alloca [8 x %struct.node*], align 16
  %15 = alloca %struct.hgstruct, align 8
  %16 = alloca %struct.hgstruct, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store i32 %5, i32* %10, align 4
  %17 = load %struct.node*, %struct.node** %7, align 8
  %18 = load double, double* %8, align 8
  %19 = load double, double* %9, align 8
  %20 = call signext i16 @subdivp(%struct.node* %17, double %18, double %19, %struct.hgstruct* byval(%struct.hgstruct) align 8 %4)
  %21 = icmp ne i16 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %6
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load %struct.node*, %struct.node** %7, align 8
  %28 = bitcast %struct.node* %27 to %struct.cnode*
  %29 = getelementptr inbounds %struct.cnode, %struct.cnode* %28, i32 0, i32 5
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %29, i64 0, i64 %31
  %33 = load %struct.node*, %struct.node** %32, align 8
  store %struct.node* %33, %struct.node** %13, align 8
  %34 = load %struct.node*, %struct.node** %13, align 8
  %35 = icmp ne %struct.node* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.node*, %struct.node** %13, align 8
  %38 = load double, double* %8, align 8
  %39 = fdiv double %38, 4.000000e+00
  %40 = load double, double* %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  call void @walksub(%struct.hgstruct* sret %15, %struct.node* %37, double %39, double %40, %struct.hgstruct* byval(%struct.hgstruct) align 8 %4, i32 %42)
  %43 = bitcast %struct.hgstruct* %4 to i8*
  %44 = bitcast %struct.hgstruct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 64, i1 false)
  br label %45

45:                                               ; preds = %36, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %23

49:                                               ; preds = %23
  br label %61

50:                                               ; preds = %6
  %51 = load %struct.node*, %struct.node** %7, align 8
  %52 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %4, i32 0, i32 0
  %53 = load %struct.bnode*, %struct.bnode** %52, align 8
  %54 = bitcast %struct.bnode* %53 to %struct.node*
  %55 = icmp ne %struct.node* %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.node*, %struct.node** %7, align 8
  call void @gravsub(%struct.hgstruct* sret %16, %struct.node* %57, %struct.hgstruct* byval(%struct.hgstruct) align 8 %4)
  %58 = bitcast %struct.hgstruct* %4 to i8*
  %59 = bitcast %struct.hgstruct* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 64, i1 false)
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %49
  %62 = bitcast %struct.hgstruct* %0 to i8*
  %63 = bitcast %struct.hgstruct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 64, i1 false)
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
