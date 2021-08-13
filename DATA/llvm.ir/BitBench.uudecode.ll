; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"begin %o %s \0A\00", align 1
@__const.main.postfix = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Usage: uudecode [infile]\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @skip_to_newline(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %13, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 10
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %5

16:                                               ; preds = %5
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decode_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sub nsw i32 %4, 32
  %6 = and i32 %5, 63
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decode(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %166, %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 32
  br i1 %17, label %18, label %170

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @decode_char(i8 signext %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %161, %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %166

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %104

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @decode_char(i8 signext %38)
  %40 = shl i32 %39, 2
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @decode_char(i8 signext %46)
  %48 = ashr i32 %47, 4
  %49 = or i32 %40, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  %51 = load i8, i8* %9, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 %51, i8* %56, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @decode_char(i8 signext %62)
  %64 = shl i32 %63, 4
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @decode_char(i8 signext %70)
  %72 = ashr i32 %71, 2
  %73 = or i32 %64, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %9, align 1
  %75 = load i8, i8* %9, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 %75, i8* %80, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @decode_char(i8 signext %86)
  %88 = shl i32 %87, 6
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @decode_char(i8 signext %94)
  %96 = or i32 %88, %95
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %9, align 1
  %98 = load i8, i8* %9, align 1
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 %98, i8* %103, align 1
  br label %160

104:                                              ; preds = %30
  %105 = load i32, i32* %8, align 4
  %106 = icmp sge i32 %105, 1
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @decode_char(i8 signext %112)
  %114 = shl i32 %113, 2
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @decode_char(i8 signext %120)
  %122 = ashr i32 %121, 4
  %123 = or i32 %114, %122
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %9, align 1
  %125 = load i8, i8* %9, align 1
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  store i8 %125, i8* %130, align 1
  br label %131

131:                                              ; preds = %107, %104
  %132 = load i32, i32* %8, align 4
  %133 = icmp sge i32 %132, 2
  br i1 %133, label %134, label %159

134:                                              ; preds = %131
  %135 = load i8*, i8** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @decode_char(i8 signext %140)
  %142 = shl i32 %141, 4
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = call i32 @decode_char(i8 signext %148)
  %150 = ashr i32 %149, 2
  %151 = or i32 %142, %150
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %9, align 1
  %153 = load i8, i8* %9, align 1
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8 %153, i8* %158, align 1
  br label %159

159:                                              ; preds = %134, %131
  br label %160

160:                                              ; preds = %159, %33
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 4
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %164, 3
  store i32 %165, i32* %8, align 4
  br label %27

166:                                              ; preds = %27
  %167 = load i8*, i8** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @skip_to_newline(i8* %167, i32 %168)
  store i32 %169, i32* %5, align 4
  br label %10

170:                                              ; preds = %10
  %171 = load i8*, i8** %4, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @skip_to_newline(i8* %171, i32 %172)
  store i32 %173, i32* %5, align 4
  %174 = load i8*, i8** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 101
  br i1 %180, label %181, label %201

181:                                              ; preds = %170
  %182 = load i8*, i8** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 110
  br i1 %189, label %190, label %201

190:                                              ; preds = %181
  %191 = load i8*, i8** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 100
  br i1 %198, label %199, label %201

199:                                              ; preds = %190
  %200 = load i32, i32* %7, align 4
  ret i32 %200

201:                                              ; preds = %190, %181, %170
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_decode(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %7, i8* %10) #7
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14) #8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 12
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @decode(i8* %17, i32 %19, i8* %20)
  ret i32 %21

22:                                               ; preds = %3
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = bitcast [3 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.main.postfix, i32 0, i32 0), i64 3, i1 false)
  %20 = call noalias i8* @malloc(i64 10000000) #7
  store i8* %20, i8** %12, align 8
  %21 = call noalias i8* @malloc(i64 10000000) #7
  store i8* %21, i8** %13, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %6, align 8
  %29 = icmp eq %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  call void @perror(i8* %33)
  call void @exit(i32 1) #6
  unreachable

34:                                               ; preds = %24
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %40, %struct._IO_FILE** %6, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %41, %struct._IO_FILE** %7, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 2) #6
  unreachable

47:                                               ; preds = %42
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i64 @read_data(%struct._IO_FILE* %48, i8* %49)
  store i64 %50, i64* %9, align 8
  %51 = call i32 @gettimeofday(%struct.timeval* %17, %struct.timezone* null) #7
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %60, %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 100
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %59 = call i32 @do_decode(i8* %56, i8* %57, i8* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #5

declare dso_local void @perror(i8*) #5

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %0, i8* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = call i64 @fread(i8* %5, i64 1, i64 10000000, %struct._IO_FILE* %6)
  ret i64 %7
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #5

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
