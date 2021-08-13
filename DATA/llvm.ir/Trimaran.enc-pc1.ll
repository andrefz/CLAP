; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@cle = common dso_local global [32 x i8] zeroinitializer, align 16
@x1a0 = common dso_local global [16 x i16] zeroinitializer, align 16
@res = common dso_local global i16 0, align 2
@inter = common dso_local global i16 0, align 2
@i = common dso_local global i16 0, align 2
@x1a2 = common dso_local global i16 0, align 2
@dx = common dso_local global i16 0, align 2
@ax = common dso_local global i16 0, align 2
@cx = common dso_local global i16 0, align 2
@bx = common dso_local global i16 0, align 2
@tmp = common dso_local global i16 0, align 2
@si = common dso_local global i16 0, align 2
@buff = common dso_local global [32 x i8] zeroinitializer, align 16
@count = common dso_local global i32 0, align 4
@c1 = common dso_local global i32 0, align 4
@c = common dso_local global i16 0, align 2
@cfc = common dso_local global i16 0, align 2
@cfd = common dso_local global i16 0, align 2
@compte = common dso_local global i16 0, align 2
@d = common dso_local global i16 0, align 2
@e = common dso_local global i16 0, align 2
@in = common dso_local global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"abcdefghijklmnopqrstuvwxyz012345\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"PC1 Cipher 256 bits \0AENCRYPT file IN.BIN to OUT.BIN\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assemble() #0 {
  %1 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 0), align 16
  %2 = zext i8 %1 to i32
  %3 = mul nsw i32 %2, 256
  %4 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 1), align 1
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %3, %5
  %7 = trunc i32 %6 to i16
  store i16 %7, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 0), align 16
  %8 = call i32 @code()
  %9 = load i16, i16* @res, align 2
  store i16 %9, i16* @inter, align 2
  %10 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 0), align 16
  %11 = zext i16 %10 to i32
  %12 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 2), align 2
  %13 = zext i8 %12 to i32
  %14 = mul nsw i32 %13, 256
  %15 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 3), align 1
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %14, %16
  %18 = xor i32 %11, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 1), align 2
  %20 = call i32 @code()
  %21 = load i16, i16* @inter, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @res, align 2
  %24 = zext i16 %23 to i32
  %25 = xor i32 %22, %24
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* @inter, align 2
  %27 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 1), align 2
  %28 = zext i16 %27 to i32
  %29 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 4), align 4
  %30 = zext i8 %29 to i32
  %31 = mul nsw i32 %30, 256
  %32 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 5), align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = xor i32 %28, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 2), align 4
  %37 = call i32 @code()
  %38 = load i16, i16* @inter, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @res, align 2
  %41 = zext i16 %40 to i32
  %42 = xor i32 %39, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* @inter, align 2
  %44 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 2), align 4
  %45 = zext i16 %44 to i32
  %46 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 6), align 2
  %47 = zext i8 %46 to i32
  %48 = mul nsw i32 %47, 256
  %49 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 7), align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %48, %50
  %52 = xor i32 %45, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 3), align 2
  %54 = call i32 @code()
  %55 = load i16, i16* @inter, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @res, align 2
  %58 = zext i16 %57 to i32
  %59 = xor i32 %56, %58
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* @inter, align 2
  %61 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 3), align 2
  %62 = zext i16 %61 to i32
  %63 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 8), align 8
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %64, 256
  %66 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 9), align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = xor i32 %62, %68
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 4), align 8
  %71 = call i32 @code()
  %72 = load i16, i16* @inter, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* @res, align 2
  %75 = zext i16 %74 to i32
  %76 = xor i32 %73, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* @inter, align 2
  %78 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 4), align 8
  %79 = zext i16 %78 to i32
  %80 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 10), align 2
  %81 = zext i8 %80 to i32
  %82 = mul nsw i32 %81, 256
  %83 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 11), align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = xor i32 %79, %85
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 5), align 2
  %88 = call i32 @code()
  %89 = load i16, i16* @inter, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* @res, align 2
  %92 = zext i16 %91 to i32
  %93 = xor i32 %90, %92
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* @inter, align 2
  %95 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 5), align 2
  %96 = zext i16 %95 to i32
  %97 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 12), align 4
  %98 = zext i8 %97 to i32
  %99 = mul nsw i32 %98, 256
  %100 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 13), align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %99, %101
  %103 = xor i32 %96, %102
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 6), align 4
  %105 = call i32 @code()
  %106 = load i16, i16* @inter, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @res, align 2
  %109 = zext i16 %108 to i32
  %110 = xor i32 %107, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* @inter, align 2
  %112 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 6), align 4
  %113 = zext i16 %112 to i32
  %114 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 14), align 2
  %115 = zext i8 %114 to i32
  %116 = mul nsw i32 %115, 256
  %117 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 15), align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %116, %118
  %120 = xor i32 %113, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 7), align 2
  %122 = call i32 @code()
  %123 = load i16, i16* @inter, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @res, align 2
  %126 = zext i16 %125 to i32
  %127 = xor i32 %124, %126
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* @inter, align 2
  %129 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 7), align 2
  %130 = zext i16 %129 to i32
  %131 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 16), align 16
  %132 = zext i8 %131 to i32
  %133 = mul nsw i32 %132, 256
  %134 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 17), align 1
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %133, %135
  %137 = xor i32 %130, %136
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 8), align 16
  %139 = call i32 @code()
  %140 = load i16, i16* @inter, align 2
  %141 = zext i16 %140 to i32
  %142 = load i16, i16* @res, align 2
  %143 = zext i16 %142 to i32
  %144 = xor i32 %141, %143
  %145 = trunc i32 %144 to i16
  store i16 %145, i16* @inter, align 2
  %146 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 8), align 16
  %147 = zext i16 %146 to i32
  %148 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 18), align 2
  %149 = zext i8 %148 to i32
  %150 = mul nsw i32 %149, 256
  %151 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 19), align 1
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %150, %152
  %154 = xor i32 %147, %153
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 9), align 2
  %156 = call i32 @code()
  %157 = load i16, i16* @inter, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* @res, align 2
  %160 = zext i16 %159 to i32
  %161 = xor i32 %158, %160
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* @inter, align 2
  %163 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 9), align 2
  %164 = zext i16 %163 to i32
  %165 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 20), align 4
  %166 = zext i8 %165 to i32
  %167 = mul nsw i32 %166, 256
  %168 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 21), align 1
  %169 = zext i8 %168 to i32
  %170 = add nsw i32 %167, %169
  %171 = xor i32 %164, %170
  %172 = trunc i32 %171 to i16
  store i16 %172, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 10), align 4
  %173 = call i32 @code()
  %174 = load i16, i16* @inter, align 2
  %175 = zext i16 %174 to i32
  %176 = load i16, i16* @res, align 2
  %177 = zext i16 %176 to i32
  %178 = xor i32 %175, %177
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* @inter, align 2
  %180 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 10), align 4
  %181 = zext i16 %180 to i32
  %182 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 22), align 2
  %183 = zext i8 %182 to i32
  %184 = mul nsw i32 %183, 256
  %185 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 23), align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %184, %186
  %188 = xor i32 %181, %187
  %189 = trunc i32 %188 to i16
  store i16 %189, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 11), align 2
  %190 = call i32 @code()
  %191 = load i16, i16* @inter, align 2
  %192 = zext i16 %191 to i32
  %193 = load i16, i16* @res, align 2
  %194 = zext i16 %193 to i32
  %195 = xor i32 %192, %194
  %196 = trunc i32 %195 to i16
  store i16 %196, i16* @inter, align 2
  %197 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 11), align 2
  %198 = zext i16 %197 to i32
  %199 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 24), align 8
  %200 = zext i8 %199 to i32
  %201 = mul nsw i32 %200, 256
  %202 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 25), align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %201, %203
  %205 = xor i32 %198, %204
  %206 = trunc i32 %205 to i16
  store i16 %206, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 12), align 8
  %207 = call i32 @code()
  %208 = load i16, i16* @inter, align 2
  %209 = zext i16 %208 to i32
  %210 = load i16, i16* @res, align 2
  %211 = zext i16 %210 to i32
  %212 = xor i32 %209, %211
  %213 = trunc i32 %212 to i16
  store i16 %213, i16* @inter, align 2
  %214 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 12), align 8
  %215 = zext i16 %214 to i32
  %216 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 26), align 2
  %217 = zext i8 %216 to i32
  %218 = mul nsw i32 %217, 256
  %219 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 27), align 1
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %218, %220
  %222 = xor i32 %215, %221
  %223 = trunc i32 %222 to i16
  store i16 %223, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 13), align 2
  %224 = call i32 @code()
  %225 = load i16, i16* @inter, align 2
  %226 = zext i16 %225 to i32
  %227 = load i16, i16* @res, align 2
  %228 = zext i16 %227 to i32
  %229 = xor i32 %226, %228
  %230 = trunc i32 %229 to i16
  store i16 %230, i16* @inter, align 2
  %231 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 13), align 2
  %232 = zext i16 %231 to i32
  %233 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 28), align 4
  %234 = zext i8 %233 to i32
  %235 = mul nsw i32 %234, 256
  %236 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 29), align 1
  %237 = zext i8 %236 to i32
  %238 = add nsw i32 %235, %237
  %239 = xor i32 %232, %238
  %240 = trunc i32 %239 to i16
  store i16 %240, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 14), align 4
  %241 = call i32 @code()
  %242 = load i16, i16* @inter, align 2
  %243 = zext i16 %242 to i32
  %244 = load i16, i16* @res, align 2
  %245 = zext i16 %244 to i32
  %246 = xor i32 %243, %245
  %247 = trunc i32 %246 to i16
  store i16 %247, i16* @inter, align 2
  %248 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 14), align 4
  %249 = zext i16 %248 to i32
  %250 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 30), align 2
  %251 = zext i8 %250 to i32
  %252 = mul nsw i32 %251, 256
  %253 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 31), align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %252, %254
  %256 = xor i32 %249, %255
  %257 = trunc i32 %256 to i16
  store i16 %257, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 15), align 2
  %258 = call i32 @code()
  %259 = load i16, i16* @inter, align 2
  %260 = zext i16 %259 to i32
  %261 = load i16, i16* @res, align 2
  %262 = zext i16 %261 to i32
  %263 = xor i32 %260, %262
  %264 = trunc i32 %263 to i16
  store i16 %264, i16* @inter, align 2
  store i16 0, i16* @i, align 2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @code() #0 {
  %1 = load i16, i16* @x1a2, align 2
  %2 = zext i16 %1 to i32
  %3 = load i16, i16* @i, align 2
  %4 = zext i16 %3 to i32
  %5 = add nsw i32 %2, %4
  %6 = trunc i32 %5 to i16
  store i16 %6, i16* @dx, align 2
  %7 = load i16, i16* @i, align 2
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds [16 x i16], [16 x i16]* @x1a0, i64 0, i64 %8
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* @ax, align 2
  store i16 346, i16* @cx, align 2
  store i16 20021, i16* @bx, align 2
  %11 = load i16, i16* @ax, align 2
  store i16 %11, i16* @tmp, align 2
  %12 = load i16, i16* @si, align 2
  store i16 %12, i16* @ax, align 2
  %13 = load i16, i16* @tmp, align 2
  store i16 %13, i16* @si, align 2
  %14 = load i16, i16* @ax, align 2
  store i16 %14, i16* @tmp, align 2
  %15 = load i16, i16* @dx, align 2
  store i16 %15, i16* @ax, align 2
  %16 = load i16, i16* @tmp, align 2
  store i16 %16, i16* @dx, align 2
  %17 = load i16, i16* @ax, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %0
  %21 = load i16, i16* @ax, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @bx, align 2
  %24 = zext i16 %23 to i32
  %25 = mul nsw i32 %22, %24
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* @ax, align 2
  br label %27

27:                                               ; preds = %20, %0
  %28 = load i16, i16* @ax, align 2
  store i16 %28, i16* @tmp, align 2
  %29 = load i16, i16* @cx, align 2
  store i16 %29, i16* @ax, align 2
  %30 = load i16, i16* @tmp, align 2
  store i16 %30, i16* @cx, align 2
  %31 = load i16, i16* @ax, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load i16, i16* @ax, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* @si, align 2
  %38 = zext i16 %37 to i32
  %39 = mul nsw i32 %36, %38
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* @ax, align 2
  %41 = load i16, i16* @ax, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @cx, align 2
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %42, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* @cx, align 2
  br label %47

47:                                               ; preds = %34, %27
  %48 = load i16, i16* @ax, align 2
  store i16 %48, i16* @tmp, align 2
  %49 = load i16, i16* @si, align 2
  store i16 %49, i16* @ax, align 2
  %50 = load i16, i16* @tmp, align 2
  store i16 %50, i16* @si, align 2
  %51 = load i16, i16* @ax, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @bx, align 2
  %54 = zext i16 %53 to i32
  %55 = mul nsw i32 %52, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* @ax, align 2
  %57 = load i16, i16* @cx, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* @dx, align 2
  %60 = zext i16 %59 to i32
  %61 = add nsw i32 %58, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* @dx, align 2
  %63 = load i16, i16* @ax, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 %64, 1
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* @ax, align 2
  %67 = load i16, i16* @dx, align 2
  store i16 %67, i16* @x1a2, align 2
  %68 = load i16, i16* @ax, align 2
  %69 = load i16, i16* @i, align 2
  %70 = zext i16 %69 to i64
  %71 = getelementptr inbounds [16 x i16], [16 x i16]* @x1a0, i64 0, i64 %70
  store i16 %68, i16* %71, align 2
  %72 = load i16, i16* @ax, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* @dx, align 2
  %75 = zext i16 %74 to i32
  %76 = xor i32 %73, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* @res, align 2
  %78 = load i16, i16* @i, align 2
  %79 = zext i16 %78 to i32
  %80 = add nsw i32 %79, 1
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* @i, align 2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_rand_r(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %5, 1664525
  %7 = add nsw i32 %6, 1013904223
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 32767
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 20000, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @atoi(i8* %14) #4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %11, %2
  store i16 0, i16* @si, align 2
  store i16 0, i16* @x1a2, align 2
  store i16 0, i16* @i, align 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 0), i8* align 1 getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 32, i1 false)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i64 0, i64 1), align 1
  %18 = call i64 @strlen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i64 0, i64 0)) #4
  %19 = icmp ugt i64 %18, 32
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 32, i32* @count, align 4
  br label %24

21:                                               ; preds = %16
  %22 = call i64 @strlen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i64 0, i64 0)) #4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @count, align 4
  br label %24

24:                                               ; preds = %21, %20
  store i32 0, i32* @c1, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* @c1, align 4
  %27 = load i32, i32* @count, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, i32* @c1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* @buff, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* @c1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i64 0, i64 %35
  store i8 %33, i8* %36, align 1
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @c1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @c1, align 4
  br label %25

40:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %105, %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %106

45:                                               ; preds = %41
  %46 = call i32 @my_rand_r(i32* %8)
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* @c, align 2
  %48 = call i32 @assemble()
  %49 = load i16, i16* @inter, align 2
  %50 = zext i16 %49 to i32
  %51 = ashr i32 %50, 8
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* @cfc, align 2
  %53 = load i16, i16* @inter, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* @cfd, align 2
  store i16 0, i16* @compte, align 2
  br label %57

57:                                               ; preds = %74, %45
  %58 = load i16, i16* @compte, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp sle i32 %59, 31
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i16, i16* @compte, align 2
  %63 = zext i16 %62 to i64
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i16, i16* @c, align 2
  %68 = sext i16 %67 to i32
  %69 = xor i32 %66, %68
  %70 = trunc i32 %69 to i8
  %71 = load i16, i16* @compte, align 2
  %72 = zext i16 %71 to i64
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i64 0, i64 %72
  store i8 %70, i8* %73, align 1
  br label %74

74:                                               ; preds = %61
  %75 = load i16, i16* @compte, align 2
  %76 = add i16 %75, 1
  store i16 %76, i16* @compte, align 2
  br label %57

77:                                               ; preds = %57
  %78 = load i16, i16* @c, align 2
  %79 = sext i16 %78 to i32
  %80 = load i16, i16* @cfc, align 2
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* @cfd, align 2
  %83 = zext i16 %82 to i32
  %84 = xor i32 %81, %83
  %85 = xor i32 %79, %84
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* @c, align 2
  %87 = load i16, i16* @c, align 2
  %88 = sext i16 %87 to i32
  %89 = ashr i32 %88, 4
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* @d, align 2
  %91 = load i16, i16* @c, align 2
  %92 = sext i16 %91 to i32
  %93 = and i32 %92, 15
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* @e, align 2
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  %97 = and i32 %96, 2047
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %77
  %100 = load i16, i16* @d, align 2
  %101 = sext i16 %100 to i32
  %102 = load i16, i16* @e, align 2
  %103 = sext i16 %102 to i32
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %77
  br label %41

106:                                              ; preds = %41
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
