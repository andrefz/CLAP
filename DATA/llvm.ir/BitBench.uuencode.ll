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

@.str = private unnamed_addr constant [6 x i8] c" \0Aend\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"begin 640 \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Usage: uuencode [infile]\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"uuencode.c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @encode_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = and i32 %4, 63
  %6 = add nsw i32 32, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @encode_line(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = trunc i32 %11 to i8
  %13 = call i32 @encode_char(i8 signext %12)
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 %14, i8* %18, align 1
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %225, %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %230

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 3
  br i1 %26, label %27, label %109

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = ashr i32 %33, 2
  %35 = trunc i32 %34 to i8
  %36 = call i32 @encode_char(i8 signext %35)
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %10, align 1
  %38 = load i8, i8* %10, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 %38, i8* %43, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = shl i32 %49, 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = ashr i32 %57, 4
  %59 = or i32 %50, %58
  %60 = trunc i32 %59 to i8
  %61 = call i32 @encode_char(i8 signext %60)
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %10, align 1
  %63 = load i8, i8* %10, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 %63, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = shl i32 %75, 2
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = ashr i32 %83, 6
  %85 = or i32 %76, %84
  %86 = trunc i32 %85 to i8
  %87 = call i32 @encode_char(i8 signext %86)
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %10, align 1
  %89 = load i8, i8* %10, align 1
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 %89, i8* %94, align 1
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @encode_char(i8 signext %100)
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %10, align 1
  %103 = load i8, i8* %10, align 1
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 %103, i8* %108, align 1
  br label %224

109:                                              ; preds = %24
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %155

112:                                              ; preds = %109
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = ashr i32 %118, 2
  %120 = trunc i32 %119 to i8
  %121 = call i32 @encode_char(i8 signext %120)
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %10, align 1
  %123 = load i8, i8* %10, align 1
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = shl i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = call i32 @encode_char(i8 signext %136)
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %10, align 1
  %139 = load i8, i8* %10, align 1
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  store i8 %139, i8* %144, align 1
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 61, i8* %149, align 1
  %150 = load i8*, i8** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 61, i8* %154, align 1
  br label %223

155:                                              ; preds = %109
  %156 = load i32, i32* %7, align 4
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %222

158:                                              ; preds = %155
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = ashr i32 %164, 2
  %166 = trunc i32 %165 to i8
  %167 = call i32 @encode_char(i8 signext %166)
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %10, align 1
  %169 = load i8, i8* %10, align 1
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 %169, i8* %174, align 1
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = shl i32 %180, 4
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = ashr i32 %188, 4
  %190 = or i32 %181, %189
  %191 = trunc i32 %190 to i8
  %192 = call i32 @encode_char(i8 signext %191)
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %10, align 1
  %194 = load i8, i8* %10, align 1
  %195 = load i8*, i8** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 %194, i8* %199, align 1
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = shl i32 %206, 2
  %208 = trunc i32 %207 to i8
  %209 = call i32 @encode_char(i8 signext %208)
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %10, align 1
  %211 = load i8, i8* %10, align 1
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %211, i8* %216, align 1
  %217 = load i8*, i8** %8, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 61, i8* %221, align 1
  br label %222

222:                                              ; preds = %158, %155
  br label %223

223:                                              ; preds = %222, %112
  br label %224

224:                                              ; preds = %223, %27
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 3
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %228, 3
  store i32 %229, i32* %7, align 4
  br label %21

230:                                              ; preds = %21
  %231 = load i8*, i8** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  store i8 10, i8* %235, align 1
  %236 = load i8*, i8** %8, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  store i8 0, i8* %239, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @encode(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [63 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sge i32 %16, 45
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds [63 x i8], [63 x i8]* %7, i64 0, i64 0
  call void @encode_line(i8* %19, i32 %20, i32 45, i8* %21)
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 45
  store i32 %23, i32* %8, align 4
  br label %32

24:                                               ; preds = %13
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  %30 = getelementptr inbounds [63 x i8], [63 x i8]* %7, i64 0, i64 0
  call void @encode_line(i8* %25, i32 %26, i32 %29, i8* %30)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %24, %18
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds [63 x i8], [63 x i8]* %7, i64 0, i64 0
  %35 = call i8* @strcat(i8* %33, i8* %34) #5
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37) #6
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %6, align 8
  br label %9

40:                                               ; preds = %9
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @strcat(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_encode(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #5
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @strcat(i8* %13, i8* %14) #5
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strcat(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strlen(i8* %18) #6
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* %24) #6
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  call void @encode(i8* %21, i32 %22, i8* %26)
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27) #6
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

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
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = call noalias i8* @malloc(i64 1000000) #5
  store i8* %18, i8** %12, align 8
  %19 = call noalias i8* @malloc(i64 2000000) #5
  store i8* %19, i8** %13, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct._IO_FILE* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** %6, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  call void @perror(i8* %31)
  call void @exit(i32 1) #7
  unreachable

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %36, %struct._IO_FILE** %6, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %37, %struct._IO_FILE** %7, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 2) #7
  unreachable

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @read_data(%struct._IO_FILE* %44, i8* %45)
  store i64 %46, i64* %9, align 8
  %47 = call i32 @gettimeofday(%struct.timeval* %15, %struct.timezone* null) #5
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %58, %43
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 1000
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i8*, i8** %17, align 8
  %57 = call i32 @do_encode(i8* %52, i8* %53, i32 %55, i8* %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %48

61:                                               ; preds = %48
  %62 = call i32 @gettimeofday(%struct.timeval* %16, %struct.timezone* null) #5
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = mul nsw i64 %64, 1000000
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %65, %67
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = mul nsw i64 %70, 1000000
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %71, %73
  %75 = sub nsw i64 %68, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  call void @exit(i32 0) #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %0, i8* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = call i64 @fread(i8* %5, i64 1, i64 1000000, %struct._IO_FILE* %6)
  ret i64 %7
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
