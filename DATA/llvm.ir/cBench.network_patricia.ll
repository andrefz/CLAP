; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }
%struct.in_addr = type { i32 }
%struct.MyNode = type { i32, double }

@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.6 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4.8 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Found.\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %6, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %8)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %18 = call i32 @fclose(%struct._IO_FILE* %17)
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %32, %14
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @main1(i32 %24, i8** %25, i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %19

35:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ptree* @pat_insert(%struct.ptree* %0, %struct.ptree* %1) #0 {
  %3 = alloca %struct.ptree*, align 8
  %4 = alloca %struct.ptree*, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree_mask*, align 8
  %8 = alloca %struct.ptree_mask*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  %11 = load %struct.ptree*, %struct.ptree** %5, align 8
  %12 = icmp ne %struct.ptree* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ptree*, %struct.ptree** %4, align 8
  %15 = icmp ne %struct.ptree* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.ptree*, %struct.ptree** %4, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 8
  %20 = icmp ne %struct.ptree_mask* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %13, %2
  store %struct.ptree* null, %struct.ptree** %3, align 8
  br label %262

22:                                               ; preds = %16
  %23 = load %struct.ptree*, %struct.ptree** %4, align 8
  %24 = getelementptr inbounds %struct.ptree, %struct.ptree* %23, i32 0, i32 1
  %25 = load %struct.ptree_mask*, %struct.ptree_mask** %24, align 8
  %26 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ptree*, %struct.ptree** %4, align 8
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %32, %struct.ptree** %6, align 8
  br label %33

33:                                               ; preds = %57, %22
  %34 = load %struct.ptree*, %struct.ptree** %6, align 8
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ptree*, %struct.ptree** %6, align 8
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 3
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct.ptree*, %struct.ptree** %4, align 8
  %43 = getelementptr inbounds %struct.ptree, %struct.ptree* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @bit(i32 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.ptree*, %struct.ptree** %6, align 8
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 5
  %50 = load %struct.ptree*, %struct.ptree** %49, align 8
  br label %55

51:                                               ; preds = %33
  %52 = load %struct.ptree*, %struct.ptree** %6, align 8
  %53 = getelementptr inbounds %struct.ptree, %struct.ptree* %52, i32 0, i32 4
  %54 = load %struct.ptree*, %struct.ptree** %53, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi %struct.ptree* [ %50, %47 ], [ %54, %51 ]
  store %struct.ptree* %56, %struct.ptree** %6, align 8
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ptree*, %struct.ptree** %6, align 8
  %60 = getelementptr inbounds %struct.ptree, %struct.ptree* %59, i32 0, i32 3
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %33, label %64

64:                                               ; preds = %57
  %65 = load %struct.ptree*, %struct.ptree** %4, align 8
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ptree*, %struct.ptree** %6, align 8
  %69 = getelementptr inbounds %struct.ptree, %struct.ptree* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %208

72:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %116, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ptree*, %struct.ptree** %6, align 8
  %76 = getelementptr inbounds %struct.ptree, %struct.ptree* %75, i32 0, i32 2
  %77 = load i8, i8* %76, align 8
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %73
  %81 = load %struct.ptree*, %struct.ptree** %4, align 8
  %82 = getelementptr inbounds %struct.ptree, %struct.ptree* %81, i32 0, i32 1
  %83 = load %struct.ptree_mask*, %struct.ptree_mask** %82, align 8
  %84 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ptree*, %struct.ptree** %6, align 8
  %87 = getelementptr inbounds %struct.ptree, %struct.ptree* %86, i32 0, i32 1
  %88 = load %struct.ptree_mask*, %struct.ptree_mask** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %88, i64 %90
  %92 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %85, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %80
  %96 = load %struct.ptree*, %struct.ptree** %4, align 8
  %97 = getelementptr inbounds %struct.ptree, %struct.ptree* %96, i32 0, i32 1
  %98 = load %struct.ptree_mask*, %struct.ptree_mask** %97, align 8
  %99 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.ptree*, %struct.ptree** %6, align 8
  %102 = getelementptr inbounds %struct.ptree, %struct.ptree* %101, i32 0, i32 1
  %103 = load %struct.ptree_mask*, %struct.ptree_mask** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %103, i64 %105
  %107 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %106, i32 0, i32 1
  store i8* %100, i8** %107, align 8
  %108 = load %struct.ptree*, %struct.ptree** %4, align 8
  %109 = getelementptr inbounds %struct.ptree, %struct.ptree* %108, i32 0, i32 1
  %110 = load %struct.ptree_mask*, %struct.ptree_mask** %109, align 8
  %111 = bitcast %struct.ptree_mask* %110 to i8*
  call void @free(i8* %111) #5
  %112 = load %struct.ptree*, %struct.ptree** %4, align 8
  %113 = bitcast %struct.ptree* %112 to i8*
  call void @free(i8* %113) #5
  store %struct.ptree* null, %struct.ptree** %4, align 8
  %114 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %114, %struct.ptree** %3, align 8
  br label %262

115:                                              ; preds = %80
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %73

119:                                              ; preds = %73
  %120 = load %struct.ptree*, %struct.ptree** %6, align 8
  %121 = getelementptr inbounds %struct.ptree, %struct.ptree* %120, i32 0, i32 2
  %122 = load i8, i8* %121, align 8
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = mul i64 16, %125
  %127 = call noalias i8* @malloc(i64 %126) #5
  %128 = bitcast i8* %127 to %struct.ptree_mask*
  store %struct.ptree_mask* %128, %struct.ptree_mask** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %129 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 8
  store %struct.ptree_mask* %129, %struct.ptree_mask** %8, align 8
  br label %130

130:                                              ; preds = %176, %119
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.ptree*, %struct.ptree** %6, align 8
  %133 = getelementptr inbounds %struct.ptree, %struct.ptree* %132, i32 0, i32 2
  %134 = load i8, i8* %133, align 8
  %135 = zext i8 %134 to i32
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %179

137:                                              ; preds = %130
  %138 = load %struct.ptree*, %struct.ptree** %4, align 8
  %139 = getelementptr inbounds %struct.ptree, %struct.ptree* %138, i32 0, i32 1
  %140 = load %struct.ptree_mask*, %struct.ptree_mask** %139, align 8
  %141 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ptree*, %struct.ptree** %6, align 8
  %144 = getelementptr inbounds %struct.ptree, %struct.ptree* %143, i32 0, i32 1
  %145 = load %struct.ptree_mask*, %struct.ptree_mask** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %145, i64 %147
  %149 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ugt i64 %142, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %137
  %153 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %154 = bitcast %struct.ptree_mask* %153 to i8*
  %155 = load %struct.ptree*, %struct.ptree** %6, align 8
  %156 = getelementptr inbounds %struct.ptree, %struct.ptree* %155, i32 0, i32 1
  %157 = load %struct.ptree_mask*, %struct.ptree_mask** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %157, i64 %159
  %161 = bitcast %struct.ptree_mask* %160 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %161, i64 16, i1 false)
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %175

164:                                              ; preds = %137
  %165 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %166 = bitcast %struct.ptree_mask* %165 to i8*
  %167 = load %struct.ptree*, %struct.ptree** %4, align 8
  %168 = getelementptr inbounds %struct.ptree, %struct.ptree* %167, i32 0, i32 1
  %169 = load %struct.ptree_mask*, %struct.ptree_mask** %168, align 8
  %170 = bitcast %struct.ptree_mask* %169 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %170, i64 16, i1 false)
  %171 = load %struct.ptree*, %struct.ptree** %4, align 8
  %172 = getelementptr inbounds %struct.ptree, %struct.ptree* %171, i32 0, i32 1
  %173 = load %struct.ptree_mask*, %struct.ptree_mask** %172, align 8
  %174 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %173, i32 0, i32 0
  store i64 4294967295, i64* %174, align 8
  store i32 1, i32* %10, align 4
  br label %175

175:                                              ; preds = %164, %152
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %178 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %177, i32 1
  store %struct.ptree_mask* %178, %struct.ptree_mask** %8, align 8
  br label %130

179:                                              ; preds = %130
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %184 = bitcast %struct.ptree_mask* %183 to i8*
  %185 = load %struct.ptree*, %struct.ptree** %4, align 8
  %186 = getelementptr inbounds %struct.ptree, %struct.ptree* %185, i32 0, i32 1
  %187 = load %struct.ptree_mask*, %struct.ptree_mask** %186, align 8
  %188 = bitcast %struct.ptree_mask* %187 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %188, i64 16, i1 false)
  br label %189

189:                                              ; preds = %182, %179
  %190 = load %struct.ptree*, %struct.ptree** %4, align 8
  %191 = getelementptr inbounds %struct.ptree, %struct.ptree* %190, i32 0, i32 1
  %192 = load %struct.ptree_mask*, %struct.ptree_mask** %191, align 8
  %193 = bitcast %struct.ptree_mask* %192 to i8*
  call void @free(i8* %193) #5
  %194 = load %struct.ptree*, %struct.ptree** %4, align 8
  %195 = bitcast %struct.ptree* %194 to i8*
  call void @free(i8* %195) #5
  store %struct.ptree* null, %struct.ptree** %4, align 8
  %196 = load %struct.ptree*, %struct.ptree** %6, align 8
  %197 = getelementptr inbounds %struct.ptree, %struct.ptree* %196, i32 0, i32 2
  %198 = load i8, i8* %197, align 8
  %199 = add i8 %198, 1
  store i8 %199, i8* %197, align 8
  %200 = load %struct.ptree*, %struct.ptree** %6, align 8
  %201 = getelementptr inbounds %struct.ptree, %struct.ptree* %200, i32 0, i32 1
  %202 = load %struct.ptree_mask*, %struct.ptree_mask** %201, align 8
  %203 = bitcast %struct.ptree_mask* %202 to i8*
  call void @free(i8* %203) #5
  %204 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 8
  %205 = load %struct.ptree*, %struct.ptree** %6, align 8
  %206 = getelementptr inbounds %struct.ptree, %struct.ptree* %205, i32 0, i32 1
  store %struct.ptree_mask* %204, %struct.ptree_mask** %206, align 8
  %207 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %207, %struct.ptree** %3, align 8
  br label %262

208:                                              ; preds = %64
  store i32 1, i32* %9, align 4
  br label %209

209:                                              ; preds = %227, %208
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 32
  br i1 %211, label %212, label %224

212:                                              ; preds = %209
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.ptree*, %struct.ptree** %4, align 8
  %215 = getelementptr inbounds %struct.ptree, %struct.ptree* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @bit(i32 %213, i64 %216)
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.ptree*, %struct.ptree** %6, align 8
  %220 = getelementptr inbounds %struct.ptree, %struct.ptree* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i64 @bit(i32 %218, i64 %221)
  %223 = icmp eq i64 %217, %222
  br label %224

224:                                              ; preds = %212, %209
  %225 = phi i1 [ false, %209 ], [ %223, %212 ]
  br i1 %225, label %226, label %230

226:                                              ; preds = %224
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  br label %209

230:                                              ; preds = %224
  %231 = load %struct.ptree*, %struct.ptree** %5, align 8
  %232 = getelementptr inbounds %struct.ptree, %struct.ptree* %231, i32 0, i32 3
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = load %struct.ptree*, %struct.ptree** %4, align 8
  %236 = getelementptr inbounds %struct.ptree, %struct.ptree* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i64 @bit(i32 %234, i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %230
  %241 = load %struct.ptree*, %struct.ptree** %5, align 8
  %242 = getelementptr inbounds %struct.ptree, %struct.ptree* %241, i32 0, i32 5
  %243 = load %struct.ptree*, %struct.ptree** %242, align 8
  %244 = load %struct.ptree*, %struct.ptree** %4, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.ptree*, %struct.ptree** %5, align 8
  %247 = call %struct.ptree* @insertR(%struct.ptree* %243, %struct.ptree* %244, i32 %245, %struct.ptree* %246)
  %248 = load %struct.ptree*, %struct.ptree** %5, align 8
  %249 = getelementptr inbounds %struct.ptree, %struct.ptree* %248, i32 0, i32 5
  store %struct.ptree* %247, %struct.ptree** %249, align 8
  br label %260

250:                                              ; preds = %230
  %251 = load %struct.ptree*, %struct.ptree** %5, align 8
  %252 = getelementptr inbounds %struct.ptree, %struct.ptree* %251, i32 0, i32 4
  %253 = load %struct.ptree*, %struct.ptree** %252, align 8
  %254 = load %struct.ptree*, %struct.ptree** %4, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load %struct.ptree*, %struct.ptree** %5, align 8
  %257 = call %struct.ptree* @insertR(%struct.ptree* %253, %struct.ptree* %254, i32 %255, %struct.ptree* %256)
  %258 = load %struct.ptree*, %struct.ptree** %5, align 8
  %259 = getelementptr inbounds %struct.ptree, %struct.ptree* %258, i32 0, i32 4
  store %struct.ptree* %257, %struct.ptree** %259, align 8
  br label %260

260:                                              ; preds = %250, %240
  %261 = load %struct.ptree*, %struct.ptree** %4, align 8
  store %struct.ptree* %261, %struct.ptree** %3, align 8
  br label %262

262:                                              ; preds = %260, %189, %95, %21
  %263 = load %struct.ptree*, %struct.ptree** %3, align 8
  ret %struct.ptree* %263
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @bit(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 31, %6
  %8 = shl i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = and i64 %5, %9
  ret i64 %10
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal %struct.ptree* @insertR(%struct.ptree* %0, %struct.ptree* %1, i32 %2, %struct.ptree* %3) #0 {
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ptree*, align 8
  store %struct.ptree* %0, %struct.ptree** %6, align 8
  store %struct.ptree* %1, %struct.ptree** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ptree* %3, %struct.ptree** %9, align 8
  %10 = load %struct.ptree*, %struct.ptree** %6, align 8
  %11 = getelementptr inbounds %struct.ptree, %struct.ptree* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load %struct.ptree*, %struct.ptree** %6, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 3
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct.ptree*, %struct.ptree** %9, align 8
  %22 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %16, %4
  %27 = load i32, i32* %8, align 4
  %28 = trunc i32 %27 to i8
  %29 = load %struct.ptree*, %struct.ptree** %7, align 8
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ptree*, %struct.ptree** %7, align 8
  %33 = getelementptr inbounds %struct.ptree, %struct.ptree* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @bit(i32 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load %struct.ptree*, %struct.ptree** %6, align 8
  br label %41

39:                                               ; preds = %26
  %40 = load %struct.ptree*, %struct.ptree** %7, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi %struct.ptree* [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.ptree*, %struct.ptree** %7, align 8
  %44 = getelementptr inbounds %struct.ptree, %struct.ptree* %43, i32 0, i32 4
  store %struct.ptree* %42, %struct.ptree** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ptree*, %struct.ptree** %7, align 8
  %47 = getelementptr inbounds %struct.ptree, %struct.ptree* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @bit(i32 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load %struct.ptree*, %struct.ptree** %7, align 8
  br label %55

53:                                               ; preds = %41
  %54 = load %struct.ptree*, %struct.ptree** %6, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi %struct.ptree* [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.ptree*, %struct.ptree** %7, align 8
  %58 = getelementptr inbounds %struct.ptree, %struct.ptree* %57, i32 0, i32 5
  store %struct.ptree* %56, %struct.ptree** %58, align 8
  %59 = load %struct.ptree*, %struct.ptree** %7, align 8
  store %struct.ptree* %59, %struct.ptree** %5, align 8
  br label %92

60:                                               ; preds = %16
  %61 = load %struct.ptree*, %struct.ptree** %6, align 8
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 3
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load %struct.ptree*, %struct.ptree** %7, align 8
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @bit(i32 %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load %struct.ptree*, %struct.ptree** %6, align 8
  %72 = getelementptr inbounds %struct.ptree, %struct.ptree* %71, i32 0, i32 5
  %73 = load %struct.ptree*, %struct.ptree** %72, align 8
  %74 = load %struct.ptree*, %struct.ptree** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ptree*, %struct.ptree** %6, align 8
  %77 = call %struct.ptree* @insertR(%struct.ptree* %73, %struct.ptree* %74, i32 %75, %struct.ptree* %76)
  %78 = load %struct.ptree*, %struct.ptree** %6, align 8
  %79 = getelementptr inbounds %struct.ptree, %struct.ptree* %78, i32 0, i32 5
  store %struct.ptree* %77, %struct.ptree** %79, align 8
  br label %90

80:                                               ; preds = %60
  %81 = load %struct.ptree*, %struct.ptree** %6, align 8
  %82 = getelementptr inbounds %struct.ptree, %struct.ptree* %81, i32 0, i32 4
  %83 = load %struct.ptree*, %struct.ptree** %82, align 8
  %84 = load %struct.ptree*, %struct.ptree** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ptree*, %struct.ptree** %6, align 8
  %87 = call %struct.ptree* @insertR(%struct.ptree* %83, %struct.ptree* %84, i32 %85, %struct.ptree* %86)
  %88 = load %struct.ptree*, %struct.ptree** %6, align 8
  %89 = getelementptr inbounds %struct.ptree, %struct.ptree* %88, i32 0, i32 4
  store %struct.ptree* %87, %struct.ptree** %89, align 8
  br label %90

90:                                               ; preds = %80, %70
  %91 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %91, %struct.ptree** %5, align 8
  br label %92

92:                                               ; preds = %90, %55
  %93 = load %struct.ptree*, %struct.ptree** %5, align 8
  ret %struct.ptree* %93
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pat_remove(%struct.ptree* %0, %struct.ptree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptree*, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca %struct.ptree*, align 8
  %9 = alloca %struct.ptree*, align 8
  %10 = alloca %struct.ptree*, align 8
  %11 = alloca %struct.ptree_mask*, align 8
  %12 = alloca %struct.ptree_mask*, align 8
  %13 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  %14 = load %struct.ptree*, %struct.ptree** %4, align 8
  %15 = icmp ne %struct.ptree* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.ptree*, %struct.ptree** %4, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 8
  %20 = icmp ne %struct.ptree_mask* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.ptree*, %struct.ptree** %10, align 8
  %23 = icmp ne %struct.ptree* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %16, %2
  store i32 0, i32* %3, align 4
  br label %337

25:                                               ; preds = %21
  %26 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %26, %struct.ptree** %10, align 8
  store %struct.ptree* %26, %struct.ptree** %6, align 8
  store %struct.ptree* %26, %struct.ptree** %7, align 8
  br label %27

27:                                               ; preds = %53, %25
  %28 = load %struct.ptree*, %struct.ptree** %10, align 8
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %32, %struct.ptree** %7, align 8
  %33 = load %struct.ptree*, %struct.ptree** %10, align 8
  store %struct.ptree* %33, %struct.ptree** %6, align 8
  %34 = load %struct.ptree*, %struct.ptree** %10, align 8
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load %struct.ptree*, %struct.ptree** %4, align 8
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @bit(i32 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load %struct.ptree*, %struct.ptree** %10, align 8
  %45 = getelementptr inbounds %struct.ptree, %struct.ptree* %44, i32 0, i32 5
  %46 = load %struct.ptree*, %struct.ptree** %45, align 8
  br label %51

47:                                               ; preds = %27
  %48 = load %struct.ptree*, %struct.ptree** %10, align 8
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 4
  %50 = load %struct.ptree*, %struct.ptree** %49, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi %struct.ptree* [ %46, %43 ], [ %50, %47 ]
  store %struct.ptree* %52, %struct.ptree** %10, align 8
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ptree*, %struct.ptree** %10, align 8
  %56 = getelementptr inbounds %struct.ptree, %struct.ptree* %55, i32 0, i32 3
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %27, label %60

60:                                               ; preds = %53
  %61 = load %struct.ptree*, %struct.ptree** %10, align 8
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ptree*, %struct.ptree** %4, align 8
  %65 = getelementptr inbounds %struct.ptree, %struct.ptree* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %337

69:                                               ; preds = %60
  %70 = load %struct.ptree*, %struct.ptree** %10, align 8
  %71 = getelementptr inbounds %struct.ptree, %struct.ptree* %70, i32 0, i32 2
  %72 = load i8, i8* %71, align 8
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %241

75:                                               ; preds = %69
  %76 = load %struct.ptree*, %struct.ptree** %10, align 8
  %77 = getelementptr inbounds %struct.ptree, %struct.ptree* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %337

82:                                               ; preds = %75
  %83 = load %struct.ptree*, %struct.ptree** %10, align 8
  %84 = getelementptr inbounds %struct.ptree, %struct.ptree* %83, i32 0, i32 1
  %85 = load %struct.ptree_mask*, %struct.ptree_mask** %84, align 8
  %86 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ptree*, %struct.ptree** %4, align 8
  %89 = getelementptr inbounds %struct.ptree, %struct.ptree* %88, i32 0, i32 1
  %90 = load %struct.ptree_mask*, %struct.ptree_mask** %89, align 8
  %91 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %87, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %337

95:                                               ; preds = %82
  %96 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %96, %struct.ptree** %8, align 8
  store %struct.ptree* %96, %struct.ptree** %9, align 8
  br label %97

97:                                               ; preds = %122, %95
  %98 = load %struct.ptree*, %struct.ptree** %8, align 8
  %99 = getelementptr inbounds %struct.ptree, %struct.ptree* %98, i32 0, i32 3
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load %struct.ptree*, %struct.ptree** %8, align 8
  store %struct.ptree* %102, %struct.ptree** %9, align 8
  %103 = load %struct.ptree*, %struct.ptree** %8, align 8
  %104 = getelementptr inbounds %struct.ptree, %struct.ptree* %103, i32 0, i32 3
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load %struct.ptree*, %struct.ptree** %6, align 8
  %108 = getelementptr inbounds %struct.ptree, %struct.ptree* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @bit(i32 %106, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %97
  %113 = load %struct.ptree*, %struct.ptree** %8, align 8
  %114 = getelementptr inbounds %struct.ptree, %struct.ptree* %113, i32 0, i32 5
  %115 = load %struct.ptree*, %struct.ptree** %114, align 8
  br label %120

116:                                              ; preds = %97
  %117 = load %struct.ptree*, %struct.ptree** %8, align 8
  %118 = getelementptr inbounds %struct.ptree, %struct.ptree* %117, i32 0, i32 4
  %119 = load %struct.ptree*, %struct.ptree** %118, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi %struct.ptree* [ %115, %112 ], [ %119, %116 ]
  store %struct.ptree* %121, %struct.ptree** %8, align 8
  br label %122

122:                                              ; preds = %120
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.ptree*, %struct.ptree** %8, align 8
  %125 = getelementptr inbounds %struct.ptree, %struct.ptree* %124, i32 0, i32 3
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %97, label %129

129:                                              ; preds = %122
  %130 = load %struct.ptree*, %struct.ptree** %9, align 8
  %131 = getelementptr inbounds %struct.ptree, %struct.ptree* %130, i32 0, i32 3
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = load %struct.ptree*, %struct.ptree** %6, align 8
  %135 = getelementptr inbounds %struct.ptree, %struct.ptree* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @bit(i32 %133, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load %struct.ptree*, %struct.ptree** %10, align 8
  %141 = load %struct.ptree*, %struct.ptree** %9, align 8
  %142 = getelementptr inbounds %struct.ptree, %struct.ptree* %141, i32 0, i32 5
  store %struct.ptree* %140, %struct.ptree** %142, align 8
  br label %147

143:                                              ; preds = %129
  %144 = load %struct.ptree*, %struct.ptree** %10, align 8
  %145 = load %struct.ptree*, %struct.ptree** %9, align 8
  %146 = getelementptr inbounds %struct.ptree, %struct.ptree* %145, i32 0, i32 4
  store %struct.ptree* %144, %struct.ptree** %146, align 8
  br label %147

147:                                              ; preds = %143, %139
  %148 = load %struct.ptree*, %struct.ptree** %7, align 8
  %149 = getelementptr inbounds %struct.ptree, %struct.ptree* %148, i32 0, i32 3
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load %struct.ptree*, %struct.ptree** %4, align 8
  %153 = getelementptr inbounds %struct.ptree, %struct.ptree* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @bit(i32 %151, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %147
  %158 = load %struct.ptree*, %struct.ptree** %6, align 8
  %159 = getelementptr inbounds %struct.ptree, %struct.ptree* %158, i32 0, i32 3
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load %struct.ptree*, %struct.ptree** %4, align 8
  %163 = getelementptr inbounds %struct.ptree, %struct.ptree* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @bit(i32 %161, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load %struct.ptree*, %struct.ptree** %6, align 8
  %169 = getelementptr inbounds %struct.ptree, %struct.ptree* %168, i32 0, i32 4
  %170 = load %struct.ptree*, %struct.ptree** %169, align 8
  br label %175

171:                                              ; preds = %157
  %172 = load %struct.ptree*, %struct.ptree** %6, align 8
  %173 = getelementptr inbounds %struct.ptree, %struct.ptree* %172, i32 0, i32 5
  %174 = load %struct.ptree*, %struct.ptree** %173, align 8
  br label %175

175:                                              ; preds = %171, %167
  %176 = phi %struct.ptree* [ %170, %167 ], [ %174, %171 ]
  %177 = load %struct.ptree*, %struct.ptree** %7, align 8
  %178 = getelementptr inbounds %struct.ptree, %struct.ptree* %177, i32 0, i32 5
  store %struct.ptree* %176, %struct.ptree** %178, align 8
  br label %201

179:                                              ; preds = %147
  %180 = load %struct.ptree*, %struct.ptree** %6, align 8
  %181 = getelementptr inbounds %struct.ptree, %struct.ptree* %180, i32 0, i32 3
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = load %struct.ptree*, %struct.ptree** %4, align 8
  %185 = getelementptr inbounds %struct.ptree, %struct.ptree* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @bit(i32 %183, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %179
  %190 = load %struct.ptree*, %struct.ptree** %6, align 8
  %191 = getelementptr inbounds %struct.ptree, %struct.ptree* %190, i32 0, i32 4
  %192 = load %struct.ptree*, %struct.ptree** %191, align 8
  br label %197

193:                                              ; preds = %179
  %194 = load %struct.ptree*, %struct.ptree** %6, align 8
  %195 = getelementptr inbounds %struct.ptree, %struct.ptree* %194, i32 0, i32 5
  %196 = load %struct.ptree*, %struct.ptree** %195, align 8
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi %struct.ptree* [ %192, %189 ], [ %196, %193 ]
  %199 = load %struct.ptree*, %struct.ptree** %7, align 8
  %200 = getelementptr inbounds %struct.ptree, %struct.ptree* %199, i32 0, i32 4
  store %struct.ptree* %198, %struct.ptree** %200, align 8
  br label %201

201:                                              ; preds = %197, %175
  %202 = load %struct.ptree*, %struct.ptree** %10, align 8
  %203 = getelementptr inbounds %struct.ptree, %struct.ptree* %202, i32 0, i32 1
  %204 = load %struct.ptree_mask*, %struct.ptree_mask** %203, align 8
  %205 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load %struct.ptree*, %struct.ptree** %10, align 8
  %210 = getelementptr inbounds %struct.ptree, %struct.ptree* %209, i32 0, i32 1
  %211 = load %struct.ptree_mask*, %struct.ptree_mask** %210, align 8
  %212 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  call void @free(i8* %213) #5
  br label %214

214:                                              ; preds = %208, %201
  %215 = load %struct.ptree*, %struct.ptree** %10, align 8
  %216 = getelementptr inbounds %struct.ptree, %struct.ptree* %215, i32 0, i32 1
  %217 = load %struct.ptree_mask*, %struct.ptree_mask** %216, align 8
  %218 = bitcast %struct.ptree_mask* %217 to i8*
  call void @free(i8* %218) #5
  %219 = load %struct.ptree*, %struct.ptree** %10, align 8
  %220 = load %struct.ptree*, %struct.ptree** %6, align 8
  %221 = icmp ne %struct.ptree* %219, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %214
  %223 = load %struct.ptree*, %struct.ptree** %6, align 8
  %224 = getelementptr inbounds %struct.ptree, %struct.ptree* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.ptree*, %struct.ptree** %10, align 8
  %227 = getelementptr inbounds %struct.ptree, %struct.ptree* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.ptree*, %struct.ptree** %6, align 8
  %229 = getelementptr inbounds %struct.ptree, %struct.ptree* %228, i32 0, i32 1
  %230 = load %struct.ptree_mask*, %struct.ptree_mask** %229, align 8
  %231 = load %struct.ptree*, %struct.ptree** %10, align 8
  %232 = getelementptr inbounds %struct.ptree, %struct.ptree* %231, i32 0, i32 1
  store %struct.ptree_mask* %230, %struct.ptree_mask** %232, align 8
  %233 = load %struct.ptree*, %struct.ptree** %6, align 8
  %234 = getelementptr inbounds %struct.ptree, %struct.ptree* %233, i32 0, i32 2
  %235 = load i8, i8* %234, align 8
  %236 = load %struct.ptree*, %struct.ptree** %10, align 8
  %237 = getelementptr inbounds %struct.ptree, %struct.ptree* %236, i32 0, i32 2
  store i8 %235, i8* %237, align 8
  br label %238

238:                                              ; preds = %222, %214
  %239 = load %struct.ptree*, %struct.ptree** %6, align 8
  %240 = bitcast %struct.ptree* %239 to i8*
  call void @free(i8* %240) #5
  store i32 1, i32* %3, align 4
  br label %337

241:                                              ; preds = %69
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %266, %241
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.ptree*, %struct.ptree** %10, align 8
  %245 = getelementptr inbounds %struct.ptree, %struct.ptree* %244, i32 0, i32 2
  %246 = load i8, i8* %245, align 8
  %247 = zext i8 %246 to i32
  %248 = icmp slt i32 %243, %247
  br i1 %248, label %249, label %269

249:                                              ; preds = %242
  %250 = load %struct.ptree*, %struct.ptree** %4, align 8
  %251 = getelementptr inbounds %struct.ptree, %struct.ptree* %250, i32 0, i32 1
  %252 = load %struct.ptree_mask*, %struct.ptree_mask** %251, align 8
  %253 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.ptree*, %struct.ptree** %10, align 8
  %256 = getelementptr inbounds %struct.ptree, %struct.ptree* %255, i32 0, i32 1
  %257 = load %struct.ptree_mask*, %struct.ptree_mask** %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %257, i64 %259
  %261 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %254, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %249
  br label %269

265:                                              ; preds = %249
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %13, align 4
  br label %242

269:                                              ; preds = %264, %242
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.ptree*, %struct.ptree** %10, align 8
  %272 = getelementptr inbounds %struct.ptree, %struct.ptree* %271, i32 0, i32 2
  %273 = load i8, i8* %272, align 8
  %274 = zext i8 %273 to i32
  %275 = icmp sge i32 %270, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %269
  store i32 0, i32* %3, align 4
  br label %337

277:                                              ; preds = %269
  %278 = load %struct.ptree*, %struct.ptree** %10, align 8
  %279 = getelementptr inbounds %struct.ptree, %struct.ptree* %278, i32 0, i32 2
  %280 = load i8, i8* %279, align 8
  %281 = zext i8 %280 to i32
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = mul i64 16, %283
  %285 = call noalias i8* @malloc(i64 %284) #5
  %286 = bitcast i8* %285 to %struct.ptree_mask*
  store %struct.ptree_mask* %286, %struct.ptree_mask** %11, align 8
  store i32 0, i32* %13, align 4
  %287 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 8
  store %struct.ptree_mask* %287, %struct.ptree_mask** %12, align 8
  br label %288

288:                                              ; preds = %322, %277
  %289 = load i32, i32* %13, align 4
  %290 = load %struct.ptree*, %struct.ptree** %10, align 8
  %291 = getelementptr inbounds %struct.ptree, %struct.ptree* %290, i32 0, i32 2
  %292 = load i8, i8* %291, align 8
  %293 = zext i8 %292 to i32
  %294 = icmp slt i32 %289, %293
  br i1 %294, label %295, label %325

295:                                              ; preds = %288
  %296 = load %struct.ptree*, %struct.ptree** %4, align 8
  %297 = getelementptr inbounds %struct.ptree, %struct.ptree* %296, i32 0, i32 1
  %298 = load %struct.ptree_mask*, %struct.ptree_mask** %297, align 8
  %299 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.ptree*, %struct.ptree** %10, align 8
  %302 = getelementptr inbounds %struct.ptree, %struct.ptree* %301, i32 0, i32 1
  %303 = load %struct.ptree_mask*, %struct.ptree_mask** %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %303, i64 %305
  %307 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %300, %308
  br i1 %309, label %310, label %321

310:                                              ; preds = %295
  %311 = load %struct.ptree_mask*, %struct.ptree_mask** %12, align 8
  %312 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %311, i32 1
  store %struct.ptree_mask* %312, %struct.ptree_mask** %12, align 8
  %313 = bitcast %struct.ptree_mask* %311 to i8*
  %314 = load %struct.ptree*, %struct.ptree** %10, align 8
  %315 = getelementptr inbounds %struct.ptree, %struct.ptree* %314, i32 0, i32 1
  %316 = load %struct.ptree_mask*, %struct.ptree_mask** %315, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %316, i64 %318
  %320 = bitcast %struct.ptree_mask* %319 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %313, i8* align 8 %320, i64 16, i1 false)
  br label %321

321:                                              ; preds = %310, %295
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %13, align 4
  br label %288

325:                                              ; preds = %288
  %326 = load %struct.ptree*, %struct.ptree** %10, align 8
  %327 = getelementptr inbounds %struct.ptree, %struct.ptree* %326, i32 0, i32 2
  %328 = load i8, i8* %327, align 8
  %329 = add i8 %328, -1
  store i8 %329, i8* %327, align 8
  %330 = load %struct.ptree*, %struct.ptree** %10, align 8
  %331 = getelementptr inbounds %struct.ptree, %struct.ptree* %330, i32 0, i32 1
  %332 = load %struct.ptree_mask*, %struct.ptree_mask** %331, align 8
  %333 = bitcast %struct.ptree_mask* %332 to i8*
  call void @free(i8* %333) #5
  %334 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 8
  %335 = load %struct.ptree*, %struct.ptree** %10, align 8
  %336 = getelementptr inbounds %struct.ptree, %struct.ptree* %335, i32 0, i32 1
  store %struct.ptree_mask* %334, %struct.ptree_mask** %336, align 8
  store i32 1, i32* %3, align 4
  br label %337

337:                                              ; preds = %325, %276, %238, %94, %81, %68, %24
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ptree* @pat_search(i64 %0, %struct.ptree* %1) #0 {
  %3 = alloca %struct.ptree*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  store %struct.ptree* null, %struct.ptree** %6, align 8
  %9 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %9, %struct.ptree** %7, align 8
  %10 = load %struct.ptree*, %struct.ptree** %7, align 8
  %11 = icmp ne %struct.ptree* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.ptree* null, %struct.ptree** %3, align 8
  br label %75

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %50, %13
  %15 = load %struct.ptree*, %struct.ptree** %7, align 8
  %16 = getelementptr inbounds %struct.ptree, %struct.ptree* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.ptree*, %struct.ptree** %7, align 8
  %20 = getelementptr inbounds %struct.ptree, %struct.ptree* %19, i32 0, i32 1
  %21 = load %struct.ptree_mask*, %struct.ptree_mask** %20, align 8
  %22 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %18, %23
  %25 = icmp eq i64 %17, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load %struct.ptree*, %struct.ptree** %7, align 8
  store %struct.ptree* %27, %struct.ptree** %6, align 8
  br label %28

28:                                               ; preds = %26, %14
  %29 = load %struct.ptree*, %struct.ptree** %7, align 8
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ptree*, %struct.ptree** %7, align 8
  %34 = getelementptr inbounds %struct.ptree, %struct.ptree* %33, i32 0, i32 3
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @bit(i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.ptree*, %struct.ptree** %7, align 8
  %42 = getelementptr inbounds %struct.ptree, %struct.ptree* %41, i32 0, i32 5
  %43 = load %struct.ptree*, %struct.ptree** %42, align 8
  br label %48

44:                                               ; preds = %28
  %45 = load %struct.ptree*, %struct.ptree** %7, align 8
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %45, i32 0, i32 4
  %47 = load %struct.ptree*, %struct.ptree** %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi %struct.ptree* [ %43, %40 ], [ %47, %44 ]
  store %struct.ptree* %49, %struct.ptree** %7, align 8
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ptree*, %struct.ptree** %7, align 8
  %53 = getelementptr inbounds %struct.ptree, %struct.ptree* %52, i32 0, i32 3
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %14, label %57

57:                                               ; preds = %50
  %58 = load %struct.ptree*, %struct.ptree** %7, align 8
  %59 = getelementptr inbounds %struct.ptree, %struct.ptree* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.ptree*, %struct.ptree** %7, align 8
  %63 = getelementptr inbounds %struct.ptree, %struct.ptree* %62, i32 0, i32 1
  %64 = load %struct.ptree_mask*, %struct.ptree_mask** %63, align 8
  %65 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %61, %66
  %68 = icmp eq i64 %60, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load %struct.ptree*, %struct.ptree** %7, align 8
  br label %73

71:                                               ; preds = %57
  %72 = load %struct.ptree*, %struct.ptree** %6, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi %struct.ptree* [ %70, %69 ], [ %72, %71 ]
  store %struct.ptree* %74, %struct.ptree** %3, align 8
  br label %75

75:                                               ; preds = %73, %12
  %76 = load %struct.ptree*, %struct.ptree** %3, align 8
  ret %struct.ptree* %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main1(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca %struct.ptree*, align 8
  %9 = alloca %struct.ptree*, align 8
  %10 = alloca %struct.ptree_mask*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca [16 x i8], align 16
  %14 = alloca %struct.in_addr, align 4
  %15 = alloca i64, align 8
  %16 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 4294967295, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  call void @exit(i32 1) #6
  unreachable

24:                                               ; preds = %3
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %11, align 8
  %29 = icmp eq %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.6, i64 0, i64 0), i8* %33)
  call void @exit(i32 1) #6
  unreachable

35:                                               ; preds = %24
  %36 = call noalias i8* @malloc(i64 40) #5
  %37 = bitcast i8* %36 to %struct.ptree*
  store %struct.ptree* %37, %struct.ptree** %7, align 8
  %38 = load %struct.ptree*, %struct.ptree** %7, align 8
  %39 = icmp ne %struct.ptree* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.7, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

41:                                               ; preds = %35
  %42 = load %struct.ptree*, %struct.ptree** %7, align 8
  %43 = bitcast %struct.ptree* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 40, i1 false)
  %44 = call noalias i8* @malloc(i64 16) #5
  %45 = bitcast i8* %44 to %struct.ptree_mask*
  %46 = load %struct.ptree*, %struct.ptree** %7, align 8
  %47 = getelementptr inbounds %struct.ptree, %struct.ptree* %46, i32 0, i32 1
  store %struct.ptree_mask* %45, %struct.ptree_mask** %47, align 8
  %48 = load %struct.ptree*, %struct.ptree** %7, align 8
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 1
  %50 = load %struct.ptree_mask*, %struct.ptree_mask** %49, align 8
  %51 = icmp ne %struct.ptree_mask* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.8, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

53:                                               ; preds = %41
  %54 = load %struct.ptree*, %struct.ptree** %7, align 8
  %55 = getelementptr inbounds %struct.ptree, %struct.ptree* %54, i32 0, i32 1
  %56 = load %struct.ptree_mask*, %struct.ptree_mask** %55, align 8
  %57 = bitcast %struct.ptree_mask* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 16, i1 false)
  %58 = load %struct.ptree*, %struct.ptree** %7, align 8
  %59 = getelementptr inbounds %struct.ptree, %struct.ptree* %58, i32 0, i32 1
  %60 = load %struct.ptree_mask*, %struct.ptree_mask** %59, align 8
  store %struct.ptree_mask* %60, %struct.ptree_mask** %10, align 8
  %61 = call noalias i8* @malloc(i64 16) #5
  %62 = bitcast i8* %61 to %struct.MyNode*
  %63 = bitcast %struct.MyNode* %62 to i8*
  %64 = load %struct.ptree_mask*, %struct.ptree_mask** %10, align 8
  %65 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ptree_mask*, %struct.ptree_mask** %10, align 8
  %67 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %53
  call void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

71:                                               ; preds = %53
  %72 = load %struct.ptree_mask*, %struct.ptree_mask** %10, align 8
  %73 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %74, i8 0, i64 1, i1 false)
  %75 = load %struct.ptree*, %struct.ptree** %7, align 8
  %76 = getelementptr inbounds %struct.ptree, %struct.ptree* %75, i32 0, i32 2
  store i8 1, i8* %76, align 8
  %77 = load %struct.ptree*, %struct.ptree** %7, align 8
  %78 = load %struct.ptree*, %struct.ptree** %7, align 8
  %79 = getelementptr inbounds %struct.ptree, %struct.ptree* %78, i32 0, i32 5
  store %struct.ptree* %77, %struct.ptree** %79, align 8
  %80 = load %struct.ptree*, %struct.ptree** %7, align 8
  %81 = getelementptr inbounds %struct.ptree, %struct.ptree* %80, i32 0, i32 4
  store %struct.ptree* %77, %struct.ptree** %81, align 8
  br label %82

82:                                               ; preds = %186, %71
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %85 = call i8* @fgets(i8* %83, i32 128, %struct._IO_FILE* %84)
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %187

87:                                               ; preds = %82
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %89 = bitcast %struct.in_addr* %14 to i32*
  %90 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), float* %16, i32* %89) #5
  %91 = call noalias i8* @malloc(i64 40) #5
  %92 = bitcast i8* %91 to %struct.ptree*
  store %struct.ptree* %92, %struct.ptree** %8, align 8
  %93 = load %struct.ptree*, %struct.ptree** %8, align 8
  %94 = icmp ne %struct.ptree* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.7, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

96:                                               ; preds = %87
  %97 = load %struct.ptree*, %struct.ptree** %8, align 8
  %98 = bitcast %struct.ptree* %97 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %98, i8 0, i64 40, i1 false)
  %99 = call noalias i8* @malloc(i64 16) #5
  %100 = bitcast i8* %99 to %struct.ptree_mask*
  %101 = load %struct.ptree*, %struct.ptree** %8, align 8
  %102 = getelementptr inbounds %struct.ptree, %struct.ptree* %101, i32 0, i32 1
  store %struct.ptree_mask* %100, %struct.ptree_mask** %102, align 8
  %103 = load %struct.ptree*, %struct.ptree** %8, align 8
  %104 = getelementptr inbounds %struct.ptree, %struct.ptree* %103, i32 0, i32 1
  %105 = load %struct.ptree_mask*, %struct.ptree_mask** %104, align 8
  %106 = icmp ne %struct.ptree_mask* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.8, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

108:                                              ; preds = %96
  %109 = load %struct.ptree*, %struct.ptree** %8, align 8
  %110 = getelementptr inbounds %struct.ptree, %struct.ptree* %109, i32 0, i32 1
  %111 = load %struct.ptree_mask*, %struct.ptree_mask** %110, align 8
  %112 = bitcast %struct.ptree_mask* %111 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %112, i8 0, i64 16, i1 false)
  %113 = load %struct.ptree*, %struct.ptree** %8, align 8
  %114 = getelementptr inbounds %struct.ptree, %struct.ptree* %113, i32 0, i32 1
  %115 = load %struct.ptree_mask*, %struct.ptree_mask** %114, align 8
  store %struct.ptree_mask* %115, %struct.ptree_mask** %10, align 8
  %116 = call noalias i8* @malloc(i64 16) #5
  %117 = bitcast i8* %116 to %struct.MyNode*
  %118 = bitcast %struct.MyNode* %117 to i8*
  %119 = load %struct.ptree_mask*, %struct.ptree_mask** %10, align 8
  %120 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ptree_mask*, %struct.ptree_mask** %10, align 8
  %122 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %108
  call void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

126:                                              ; preds = %108
  %127 = load %struct.ptree_mask*, %struct.ptree_mask** %10, align 8
  %128 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %129, i8 0, i64 1, i1 false)
  %130 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = load %struct.ptree*, %struct.ptree** %8, align 8
  %134 = getelementptr inbounds %struct.ptree, %struct.ptree* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %15, align 8
  %136 = and i64 %135, 4278190080
  %137 = lshr i64 %136, 24
  %138 = load i64, i64* %15, align 8
  %139 = and i64 %138, 16711680
  %140 = lshr i64 %139, 8
  %141 = or i64 %137, %140
  %142 = load i64, i64* %15, align 8
  %143 = and i64 %142, 65280
  %144 = shl i64 %143, 8
  %145 = or i64 %141, %144
  %146 = load i64, i64* %15, align 8
  %147 = and i64 %146, 255
  %148 = shl i64 %147, 24
  %149 = or i64 %145, %148
  %150 = load %struct.ptree*, %struct.ptree** %8, align 8
  %151 = getelementptr inbounds %struct.ptree, %struct.ptree* %150, i32 0, i32 1
  %152 = load %struct.ptree_mask*, %struct.ptree_mask** %151, align 8
  %153 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  %154 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = zext i32 %155 to i64
  %157 = load %struct.ptree*, %struct.ptree** %7, align 8
  %158 = call %struct.ptree* @pat_search(i64 %156, %struct.ptree* %157)
  store %struct.ptree* %158, %struct.ptree** %9, align 8
  %159 = load %struct.ptree*, %struct.ptree** %9, align 8
  %160 = getelementptr inbounds %struct.ptree, %struct.ptree* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = zext i32 %163 to i64
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %126
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load float, float* %16, align 4
  %171 = fpext float %170 to double
  %172 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), double %171, i32 %173)
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %180

176:                                              ; preds = %166, %126
  %177 = load %struct.ptree*, %struct.ptree** %8, align 8
  %178 = load %struct.ptree*, %struct.ptree** %7, align 8
  %179 = call %struct.ptree* @pat_insert(%struct.ptree* %177, %struct.ptree* %178)
  store %struct.ptree* %179, %struct.ptree** %8, align 8
  br label %180

180:                                              ; preds = %176, %169
  %181 = load %struct.ptree*, %struct.ptree** %8, align 8
  %182 = icmp ne %struct.ptree* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

186:                                              ; preds = %180
  br label %82

187:                                              ; preds = %82
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %189 = call i32 @fclose(%struct._IO_FILE* %188)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

declare dso_local void @perror(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
