; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"PI calculation to estimate the FFT benchmarks\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ERROR: Could not open indata file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"initializing...\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Allocation Failure!\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"nfft= %d\0Aradix= %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"calculating %d digits of PI...\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"0.125\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"0.625\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"AGM iteration\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"precision= %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"floating point operation: %g op.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cdft(i32 %0, i32 %1, double* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double* %2, double** %8, align 8
  store i32* %3, i32** %9, align 8
  store double* %4, double** %10, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %11, align 4
  %17 = shl i32 %16, 2
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 2
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load double*, double** %10, align 8
  call void @makewt(i32 %22, i32* %23, double* %24)
  br label %25

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load double*, double** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %11, align 4
  %34 = load double*, double** %10, align 8
  call void @cftfsub(i32 %29, double* %30, i32* %32, i32 %33, double* %34)
  br label %42

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load double*, double** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %11, align 4
  %41 = load double*, double** %10, align 8
  call void @cftbsub(i32 %36, double* %37, i32* %39, i32 %40, double* %41)
  br label %42

42:                                               ; preds = %35, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makewt(i32 %0, i32* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store double* %2, double** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %233

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = call double @atan(double 1.000000e+00) #4
  %28 = load i32, i32* %8, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %27, %29
  store double %30, double* %11, align 8
  %31 = load double, double* %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double %31, %33
  %35 = call double @cos(double %34) #4
  store double %35, double* %12, align 8
  %36 = load double*, double** %6, align 8
  %37 = getelementptr inbounds double, double* %36, i64 0
  store double 1.000000e+00, double* %37, align 8
  %38 = load double, double* %12, align 8
  %39 = load double*, double** %6, align 8
  %40 = getelementptr inbounds double, double* %39, i64 1
  store double %38, double* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %56

43:                                               ; preds = %24
  %44 = load double, double* %11, align 8
  %45 = fmul double %44, 2.000000e+00
  %46 = call double @cos(double %45) #4
  %47 = fdiv double 5.000000e-01, %46
  %48 = load double*, double** %6, align 8
  %49 = getelementptr inbounds double, double* %48, i64 2
  store double %47, double* %49, align 8
  %50 = load double, double* %11, align 8
  %51 = fmul double %50, 6.000000e+00
  %52 = call double @cos(double %51) #4
  %53 = fdiv double 5.000000e-01, %52
  %54 = load double*, double** %6, align 8
  %55 = getelementptr inbounds double, double* %54, i64 3
  store double %53, double* %55, align 8
  br label %56

56:                                               ; preds = %43, %24
  store i32 4, i32* %7, align 4
  br label %57

57:                                               ; preds = %103, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %57
  %62 = load double, double* %11, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sitofp i32 %63 to double
  %65 = fmul double %62, %64
  %66 = call double @cos(double %65) #4
  %67 = load double*, double** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double %66, double* %70, align 8
  %71 = load double, double* %11, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sitofp i32 %72 to double
  %74 = fmul double %71, %73
  %75 = call double @sin(double %74) #4
  %76 = load double*, double** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %76, i64 %79
  store double %75, double* %80, align 8
  %81 = load double, double* %11, align 8
  %82 = fmul double 3.000000e+00, %81
  %83 = load i32, i32* %7, align 4
  %84 = sitofp i32 %83 to double
  %85 = fmul double %82, %84
  %86 = call double @cos(double %85) #4
  %87 = load double*, double** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %87, i64 %90
  store double %86, double* %91, align 8
  %92 = load double, double* %11, align 8
  %93 = fmul double 3.000000e+00, %92
  %94 = load i32, i32* %7, align 4
  %95 = sitofp i32 %94 to double
  %96 = fmul double %93, %95
  %97 = call double @sin(double %96) #4
  %98 = load double*, double** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %98, i64 %101
  store double %97, double* %102, align 8
  br label %103

103:                                              ; preds = %61
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %7, align 4
  br label %57

106:                                              ; preds = %57
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %230, %106
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %108, 2
  br i1 %109, label %110, label %232

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load double*, double** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  store double 1.000000e+00, double* %119, align 8
  %120 = load double, double* %12, align 8
  %121 = load double*, double** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %121, i64 %124
  store double %120, double* %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = icmp sge i32 %126, 4
  br i1 %127, label %128, label %155

128:                                              ; preds = %110
  %129 = load double*, double** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %129, i64 %132
  %134 = load double, double* %133, align 8
  store double %134, double* %13, align 8
  %135 = load double*, double** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 6
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %135, i64 %138
  %140 = load double, double* %139, align 8
  store double %140, double* %15, align 8
  %141 = load double, double* %13, align 8
  %142 = fdiv double 5.000000e-01, %141
  %143 = load double*, double** %6, align 8
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %143, i64 %146
  store double %142, double* %147, align 8
  %148 = load double, double* %15, align 8
  %149 = fdiv double 5.000000e-01, %148
  %150 = load double*, double** %6, align 8
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %150, i64 %153
  store double %149, double* %154, align 8
  br label %155

155:                                              ; preds = %128, %110
  store i32 4, i32* %7, align 4
  br label %156

156:                                              ; preds = %227, %155
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %230

160:                                              ; preds = %156
  %161 = load double*, double** %6, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %7, align 4
  %164 = mul nsw i32 2, %163
  %165 = add nsw i32 %162, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %161, i64 %166
  %168 = load double, double* %167, align 8
  store double %168, double* %13, align 8
  %169 = load double*, double** %6, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %7, align 4
  %172 = mul nsw i32 2, %171
  %173 = add nsw i32 %170, %172
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %169, i64 %175
  %177 = load double, double* %176, align 8
  store double %177, double* %14, align 8
  %178 = load double*, double** %6, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %7, align 4
  %181 = mul nsw i32 2, %180
  %182 = add nsw i32 %179, %181
  %183 = add nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double, double* %178, i64 %184
  %186 = load double, double* %185, align 8
  store double %186, double* %15, align 8
  %187 = load double*, double** %6, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %7, align 4
  %190 = mul nsw i32 2, %189
  %191 = add nsw i32 %188, %190
  %192 = add nsw i32 %191, 3
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %187, i64 %193
  %195 = load double, double* %194, align 8
  store double %195, double* %16, align 8
  %196 = load double, double* %13, align 8
  %197 = load double*, double** %6, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %197, i64 %201
  store double %196, double* %202, align 8
  %203 = load double, double* %14, align 8
  %204 = load double*, double** %6, align 8
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %205, %206
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double, double* %204, i64 %209
  store double %203, double* %210, align 8
  %211 = load double, double* %15, align 8
  %212 = load double*, double** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %213, %214
  %216 = add nsw i32 %215, 2
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %212, i64 %217
  store double %211, double* %218, align 8
  %219 = load double, double* %16, align 8
  %220 = load double*, double** %6, align 8
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %221, %222
  %224 = add nsw i32 %223, 3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %220, i64 %225
  store double %219, double* %226, align 8
  br label %227

227:                                              ; preds = %160
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, 4
  store i32 %229, i32* %7, align 4
  br label %156

230:                                              ; preds = %156
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %9, align 4
  br label %107

232:                                              ; preds = %107
  br label %233

233:                                              ; preds = %232, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftfsub(i32 %0, double* %1, i32* %2, i32 %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store double* %4, double** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 32
  br i1 %13, label %14, label %73

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 2
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load double*, double** %7, align 8
  %19 = load double*, double** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %19, i64 %23
  call void @cftf1st(i32 %17, double* %18, double* %24)
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 512
  br i1 %26, label %27, label %55

27:                                               ; preds = %14
  %28 = load i32, i32* %11, align 4
  %29 = load double*, double** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load double*, double** %10, align 8
  call void @cftrec1(i32 %28, double* %29, i32 %30, double* %31)
  %32 = load i32, i32* %11, align 4
  %33 = load double*, double** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load i32, i32* %9, align 4
  %38 = load double*, double** %10, align 8
  call void @cftrec2(i32 %32, double* %36, i32 %37, double* %38)
  %39 = load i32, i32* %11, align 4
  %40 = load double*, double** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %40, i64 %43
  %45 = load i32, i32* %9, align 4
  %46 = load double*, double** %10, align 8
  call void @cftrec1(i32 %39, double* %44, i32 %45, double* %46)
  %47 = load i32, i32* %11, align 4
  %48 = load double*, double** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 3, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %48, i64 %51
  %53 = load i32, i32* %9, align 4
  %54 = load double*, double** %10, align 8
  call void @cftrec1(i32 %47, double* %52, i32 %53, double* %54)
  br label %69

55:                                               ; preds = %14
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 32
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load double*, double** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load double*, double** %10, align 8
  call void @cftexp1(i32 %59, double* %60, i32 %61, double* %62)
  br label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load double*, double** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load double*, double** %10, align 8
  call void @cftfx41(i32 %64, double* %65, i32 %66, double* %67)
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load double*, double** %7, align 8
  call void @bitrv2(i32 %70, i32* %71, double* %72)
  br label %105

73:                                               ; preds = %5
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 8
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load double*, double** %7, align 8
  %81 = load double*, double** %10, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %81, i64 %84
  call void @cftf161(double* %80, double* %85)
  %86 = load double*, double** %7, align 8
  call void @bitrv216(double* %86)
  br label %91

87:                                               ; preds = %76
  %88 = load double*, double** %7, align 8
  %89 = load double*, double** %10, align 8
  call void @cftf081(double* %88, double* %89)
  %90 = load double*, double** %7, align 8
  call void @bitrv208(double* %90)
  br label %91

91:                                               ; preds = %87, %79
  br label %104

92:                                               ; preds = %73
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 8
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load double*, double** %7, align 8
  call void @cftf040(double* %96)
  br label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load double*, double** %7, align 8
  call void @cftx020(double* %101)
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %102, %95
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftbsub(i32 %0, double* %1, i32* %2, i32 %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store double* %4, double** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 32
  br i1 %13, label %14, label %73

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 2
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load double*, double** %7, align 8
  %19 = load double*, double** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %19, i64 %23
  call void @cftb1st(i32 %17, double* %18, double* %24)
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 512
  br i1 %26, label %27, label %55

27:                                               ; preds = %14
  %28 = load i32, i32* %11, align 4
  %29 = load double*, double** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load double*, double** %10, align 8
  call void @cftrec1(i32 %28, double* %29, i32 %30, double* %31)
  %32 = load i32, i32* %11, align 4
  %33 = load double*, double** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load i32, i32* %9, align 4
  %38 = load double*, double** %10, align 8
  call void @cftrec2(i32 %32, double* %36, i32 %37, double* %38)
  %39 = load i32, i32* %11, align 4
  %40 = load double*, double** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %40, i64 %43
  %45 = load i32, i32* %9, align 4
  %46 = load double*, double** %10, align 8
  call void @cftrec1(i32 %39, double* %44, i32 %45, double* %46)
  %47 = load i32, i32* %11, align 4
  %48 = load double*, double** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 3, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %48, i64 %51
  %53 = load i32, i32* %9, align 4
  %54 = load double*, double** %10, align 8
  call void @cftrec1(i32 %47, double* %52, i32 %53, double* %54)
  br label %69

55:                                               ; preds = %14
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 32
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load double*, double** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load double*, double** %10, align 8
  call void @cftexp1(i32 %59, double* %60, i32 %61, double* %62)
  br label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load double*, double** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load double*, double** %10, align 8
  call void @cftfx41(i32 %64, double* %65, i32 %66, double* %67)
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load double*, double** %7, align 8
  call void @bitrv2conj(i32 %70, i32* %71, double* %72)
  br label %105

73:                                               ; preds = %5
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 8
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load double*, double** %7, align 8
  %81 = load double*, double** %10, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %81, i64 %84
  call void @cftf161(double* %80, double* %85)
  %86 = load double*, double** %7, align 8
  call void @bitrv216neg(double* %86)
  br label %91

87:                                               ; preds = %76
  %88 = load double*, double** %7, align 8
  %89 = load double*, double** %10, align 8
  call void @cftf081(double* %88, double* %89)
  %90 = load double*, double** %7, align 8
  call void @bitrv208neg(double* %90)
  br label %91

91:                                               ; preds = %87, %79
  br label %104

92:                                               ; preds = %73
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 8
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load double*, double** %7, align 8
  call void @cftb040(double* %96)
  br label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load double*, double** %7, align 8
  call void @cftx020(double* %101)
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %102, %95
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftb1st(i32 %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 3
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 2, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load double*, double** %5, align 8
  %54 = getelementptr inbounds double, double* %53, i64 0
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fadd double %55, %60
  store double %61, double* %26, align 8
  %62 = load double*, double** %5, align 8
  %63 = getelementptr inbounds double, double* %62, i64 1
  %64 = load double, double* %63, align 8
  %65 = fneg double %64
  %66 = load double*, double** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %66, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fsub double %65, %71
  store double %72, double* %27, align 8
  %73 = load double*, double** %5, align 8
  %74 = getelementptr inbounds double, double* %73, i64 0
  %75 = load double, double* %74, align 8
  %76 = load double*, double** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  %80 = load double, double* %79, align 8
  %81 = fsub double %75, %80
  store double %81, double* %28, align 8
  %82 = load double*, double** %5, align 8
  %83 = getelementptr inbounds double, double* %82, i64 1
  %84 = load double, double* %83, align 8
  %85 = fneg double %84
  %86 = load double*, double** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %86, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fadd double %85, %91
  store double %92, double* %29, align 8
  %93 = load double*, double** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  %97 = load double, double* %96, align 8
  %98 = load double*, double** %5, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  %103 = fadd double %97, %102
  store double %103, double* %30, align 8
  %104 = load double*, double** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %104, i64 %107
  %109 = load double, double* %108, align 8
  %110 = load double*, double** %5, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %110, i64 %113
  %115 = load double, double* %114, align 8
  %116 = fadd double %109, %115
  store double %116, double* %31, align 8
  %117 = load double*, double** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load double*, double** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %122, i64 %124
  %126 = load double, double* %125, align 8
  %127 = fsub double %121, %126
  store double %127, double* %32, align 8
  %128 = load double*, double** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %128, i64 %131
  %133 = load double, double* %132, align 8
  %134 = load double*, double** %5, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %134, i64 %137
  %139 = load double, double* %138, align 8
  %140 = fsub double %133, %139
  store double %140, double* %33, align 8
  %141 = load double, double* %26, align 8
  %142 = load double, double* %30, align 8
  %143 = fadd double %141, %142
  %144 = load double*, double** %5, align 8
  %145 = getelementptr inbounds double, double* %144, i64 0
  store double %143, double* %145, align 8
  %146 = load double, double* %27, align 8
  %147 = load double, double* %31, align 8
  %148 = fsub double %146, %147
  %149 = load double*, double** %5, align 8
  %150 = getelementptr inbounds double, double* %149, i64 1
  store double %148, double* %150, align 8
  %151 = load double, double* %26, align 8
  %152 = load double, double* %30, align 8
  %153 = fsub double %151, %152
  %154 = load double*, double** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  store double %153, double* %157, align 8
  %158 = load double, double* %27, align 8
  %159 = load double, double* %31, align 8
  %160 = fadd double %158, %159
  %161 = load double*, double** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %161, i64 %164
  store double %160, double* %165, align 8
  %166 = load double, double* %28, align 8
  %167 = load double, double* %33, align 8
  %168 = fadd double %166, %167
  %169 = load double*, double** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %169, i64 %171
  store double %168, double* %172, align 8
  %173 = load double, double* %29, align 8
  %174 = load double, double* %32, align 8
  %175 = fadd double %173, %174
  %176 = load double*, double** %5, align 8
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %176, i64 %179
  store double %175, double* %180, align 8
  %181 = load double, double* %28, align 8
  %182 = load double, double* %33, align 8
  %183 = fsub double %181, %182
  %184 = load double*, double** %5, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  store double %183, double* %187, align 8
  %188 = load double, double* %29, align 8
  %189 = load double, double* %32, align 8
  %190 = fsub double %188, %189
  %191 = load double*, double** %5, align 8
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %191, i64 %194
  store double %190, double* %195, align 8
  %196 = load double*, double** %6, align 8
  %197 = getelementptr inbounds double, double* %196, i64 1
  %198 = load double, double* %197, align 8
  store double %198, double* %15, align 8
  %199 = load double*, double** %6, align 8
  %200 = getelementptr inbounds double, double* %199, i64 2
  %201 = load double, double* %200, align 8
  store double %201, double* %16, align 8
  %202 = load double*, double** %6, align 8
  %203 = getelementptr inbounds double, double* %202, i64 3
  %204 = load double, double* %203, align 8
  store double %204, double* %17, align 8
  store double 1.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %23, align 8
  store double 1.000000e+00, double* %24, align 8
  store double 0.000000e+00, double* %25, align 8
  store i32 0, i32* %12, align 4
  store i32 2, i32* %7, align 4
  br label %205

205:                                              ; preds = %1065, %3
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* %14, align 4
  %208 = sub nsw i32 %207, 2
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %1068

210:                                              ; preds = %205
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 4
  store i32 %212, i32* %12, align 4
  %213 = load double, double* %16, align 8
  %214 = load double, double* %22, align 8
  %215 = load double*, double** %6, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %215, i64 %217
  %219 = load double, double* %218, align 8
  %220 = fadd double %214, %219
  %221 = fmul double %213, %220
  store double %221, double* %18, align 8
  %222 = load double, double* %16, align 8
  %223 = load double, double* %23, align 8
  %224 = load double*, double** %6, align 8
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double, double* %224, i64 %227
  %229 = load double, double* %228, align 8
  %230 = fadd double %223, %229
  %231 = fmul double %222, %230
  store double %231, double* %19, align 8
  %232 = load double, double* %17, align 8
  %233 = load double, double* %24, align 8
  %234 = load double*, double** %6, align 8
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 2
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double, double* %234, i64 %237
  %239 = load double, double* %238, align 8
  %240 = fadd double %233, %239
  %241 = fmul double %232, %240
  store double %241, double* %20, align 8
  %242 = load double, double* %17, align 8
  %243 = load double, double* %25, align 8
  %244 = load double*, double** %6, align 8
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 3
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, double* %244, i64 %247
  %249 = load double, double* %248, align 8
  %250 = fsub double %243, %249
  %251 = fmul double %242, %250
  store double %251, double* %21, align 8
  %252 = load double*, double** %6, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, double* %252, i64 %254
  %256 = load double, double* %255, align 8
  store double %256, double* %22, align 8
  %257 = load double*, double** %6, align 8
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds double, double* %257, i64 %260
  %262 = load double, double* %261, align 8
  store double %262, double* %23, align 8
  %263 = load double*, double** %6, align 8
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 2
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double, double* %263, i64 %266
  %268 = load double, double* %267, align 8
  store double %268, double* %24, align 8
  %269 = load double*, double** %6, align 8
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %270, 3
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, double* %269, i64 %272
  %274 = load double, double* %273, align 8
  %275 = fneg double %274
  store double %275, double* %25, align 8
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %276, %277
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %279, %280
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %282, %283
  store i32 %284, i32* %11, align 4
  %285 = load double*, double** %5, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds double, double* %285, i64 %287
  %289 = load double, double* %288, align 8
  %290 = load double*, double** %5, align 8
  %291 = load i32, i32* %10, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds double, double* %290, i64 %292
  %294 = load double, double* %293, align 8
  %295 = fadd double %289, %294
  store double %295, double* %26, align 8
  %296 = load double*, double** %5, align 8
  %297 = load i32, i32* %7, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds double, double* %296, i64 %299
  %301 = load double, double* %300, align 8
  %302 = fneg double %301
  %303 = load double*, double** %5, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double, double* %303, i64 %306
  %308 = load double, double* %307, align 8
  %309 = fsub double %302, %308
  store double %309, double* %27, align 8
  %310 = load double*, double** %5, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double, double* %310, i64 %312
  %314 = load double, double* %313, align 8
  %315 = load double*, double** %5, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, double* %315, i64 %317
  %319 = load double, double* %318, align 8
  %320 = fsub double %314, %319
  store double %320, double* %28, align 8
  %321 = load double*, double** %5, align 8
  %322 = load i32, i32* %7, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds double, double* %321, i64 %324
  %326 = load double, double* %325, align 8
  %327 = fneg double %326
  %328 = load double*, double** %5, align 8
  %329 = load i32, i32* %10, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds double, double* %328, i64 %331
  %333 = load double, double* %332, align 8
  %334 = fadd double %327, %333
  store double %334, double* %29, align 8
  %335 = load double*, double** %5, align 8
  %336 = load i32, i32* %7, align 4
  %337 = add nsw i32 %336, 2
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds double, double* %335, i64 %338
  %340 = load double, double* %339, align 8
  %341 = load double*, double** %5, align 8
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, 2
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds double, double* %341, i64 %344
  %346 = load double, double* %345, align 8
  %347 = fadd double %340, %346
  store double %347, double* %34, align 8
  %348 = load double*, double** %5, align 8
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 3
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds double, double* %348, i64 %351
  %353 = load double, double* %352, align 8
  %354 = fneg double %353
  %355 = load double*, double** %5, align 8
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, 3
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds double, double* %355, i64 %358
  %360 = load double, double* %359, align 8
  %361 = fsub double %354, %360
  store double %361, double* %35, align 8
  %362 = load double*, double** %5, align 8
  %363 = load i32, i32* %7, align 4
  %364 = add nsw i32 %363, 2
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, double* %362, i64 %365
  %367 = load double, double* %366, align 8
  %368 = load double*, double** %5, align 8
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 2
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds double, double* %368, i64 %371
  %373 = load double, double* %372, align 8
  %374 = fsub double %367, %373
  store double %374, double* %36, align 8
  %375 = load double*, double** %5, align 8
  %376 = load i32, i32* %7, align 4
  %377 = add nsw i32 %376, 3
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds double, double* %375, i64 %378
  %380 = load double, double* %379, align 8
  %381 = fneg double %380
  %382 = load double*, double** %5, align 8
  %383 = load i32, i32* %10, align 4
  %384 = add nsw i32 %383, 3
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds double, double* %382, i64 %385
  %387 = load double, double* %386, align 8
  %388 = fadd double %381, %387
  store double %388, double* %37, align 8
  %389 = load double*, double** %5, align 8
  %390 = load i32, i32* %9, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds double, double* %389, i64 %391
  %393 = load double, double* %392, align 8
  %394 = load double*, double** %5, align 8
  %395 = load i32, i32* %11, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, double* %394, i64 %396
  %398 = load double, double* %397, align 8
  %399 = fadd double %393, %398
  store double %399, double* %30, align 8
  %400 = load double*, double** %5, align 8
  %401 = load i32, i32* %9, align 4
  %402 = add nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %400, i64 %403
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %5, align 8
  %407 = load i32, i32* %11, align 4
  %408 = add nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds double, double* %406, i64 %409
  %411 = load double, double* %410, align 8
  %412 = fadd double %405, %411
  store double %412, double* %31, align 8
  %413 = load double*, double** %5, align 8
  %414 = load i32, i32* %9, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds double, double* %413, i64 %415
  %417 = load double, double* %416, align 8
  %418 = load double*, double** %5, align 8
  %419 = load i32, i32* %11, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds double, double* %418, i64 %420
  %422 = load double, double* %421, align 8
  %423 = fsub double %417, %422
  store double %423, double* %32, align 8
  %424 = load double*, double** %5, align 8
  %425 = load i32, i32* %9, align 4
  %426 = add nsw i32 %425, 1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds double, double* %424, i64 %427
  %429 = load double, double* %428, align 8
  %430 = load double*, double** %5, align 8
  %431 = load i32, i32* %11, align 4
  %432 = add nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %430, i64 %433
  %435 = load double, double* %434, align 8
  %436 = fsub double %429, %435
  store double %436, double* %33, align 8
  %437 = load double*, double** %5, align 8
  %438 = load i32, i32* %9, align 4
  %439 = add nsw i32 %438, 2
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %437, i64 %440
  %442 = load double, double* %441, align 8
  %443 = load double*, double** %5, align 8
  %444 = load i32, i32* %11, align 4
  %445 = add nsw i32 %444, 2
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds double, double* %443, i64 %446
  %448 = load double, double* %447, align 8
  %449 = fadd double %442, %448
  store double %449, double* %38, align 8
  %450 = load double*, double** %5, align 8
  %451 = load i32, i32* %9, align 4
  %452 = add nsw i32 %451, 3
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds double, double* %450, i64 %453
  %455 = load double, double* %454, align 8
  %456 = load double*, double** %5, align 8
  %457 = load i32, i32* %11, align 4
  %458 = add nsw i32 %457, 3
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds double, double* %456, i64 %459
  %461 = load double, double* %460, align 8
  %462 = fadd double %455, %461
  store double %462, double* %39, align 8
  %463 = load double*, double** %5, align 8
  %464 = load i32, i32* %9, align 4
  %465 = add nsw i32 %464, 2
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds double, double* %463, i64 %466
  %468 = load double, double* %467, align 8
  %469 = load double*, double** %5, align 8
  %470 = load i32, i32* %11, align 4
  %471 = add nsw i32 %470, 2
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds double, double* %469, i64 %472
  %474 = load double, double* %473, align 8
  %475 = fsub double %468, %474
  store double %475, double* %40, align 8
  %476 = load double*, double** %5, align 8
  %477 = load i32, i32* %9, align 4
  %478 = add nsw i32 %477, 3
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds double, double* %476, i64 %479
  %481 = load double, double* %480, align 8
  %482 = load double*, double** %5, align 8
  %483 = load i32, i32* %11, align 4
  %484 = add nsw i32 %483, 3
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds double, double* %482, i64 %485
  %487 = load double, double* %486, align 8
  %488 = fsub double %481, %487
  store double %488, double* %41, align 8
  %489 = load double, double* %26, align 8
  %490 = load double, double* %30, align 8
  %491 = fadd double %489, %490
  %492 = load double*, double** %5, align 8
  %493 = load i32, i32* %7, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds double, double* %492, i64 %494
  store double %491, double* %495, align 8
  %496 = load double, double* %27, align 8
  %497 = load double, double* %31, align 8
  %498 = fsub double %496, %497
  %499 = load double*, double** %5, align 8
  %500 = load i32, i32* %7, align 4
  %501 = add nsw i32 %500, 1
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds double, double* %499, i64 %502
  store double %498, double* %503, align 8
  %504 = load double, double* %34, align 8
  %505 = load double, double* %38, align 8
  %506 = fadd double %504, %505
  %507 = load double*, double** %5, align 8
  %508 = load i32, i32* %7, align 4
  %509 = add nsw i32 %508, 2
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds double, double* %507, i64 %510
  store double %506, double* %511, align 8
  %512 = load double, double* %35, align 8
  %513 = load double, double* %39, align 8
  %514 = fsub double %512, %513
  %515 = load double*, double** %5, align 8
  %516 = load i32, i32* %7, align 4
  %517 = add nsw i32 %516, 3
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds double, double* %515, i64 %518
  store double %514, double* %519, align 8
  %520 = load double, double* %26, align 8
  %521 = load double, double* %30, align 8
  %522 = fsub double %520, %521
  %523 = load double*, double** %5, align 8
  %524 = load i32, i32* %9, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds double, double* %523, i64 %525
  store double %522, double* %526, align 8
  %527 = load double, double* %27, align 8
  %528 = load double, double* %31, align 8
  %529 = fadd double %527, %528
  %530 = load double*, double** %5, align 8
  %531 = load i32, i32* %9, align 4
  %532 = add nsw i32 %531, 1
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds double, double* %530, i64 %533
  store double %529, double* %534, align 8
  %535 = load double, double* %34, align 8
  %536 = load double, double* %38, align 8
  %537 = fsub double %535, %536
  %538 = load double*, double** %5, align 8
  %539 = load i32, i32* %9, align 4
  %540 = add nsw i32 %539, 2
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds double, double* %538, i64 %541
  store double %537, double* %542, align 8
  %543 = load double, double* %35, align 8
  %544 = load double, double* %39, align 8
  %545 = fadd double %543, %544
  %546 = load double*, double** %5, align 8
  %547 = load i32, i32* %9, align 4
  %548 = add nsw i32 %547, 3
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds double, double* %546, i64 %549
  store double %545, double* %550, align 8
  %551 = load double, double* %28, align 8
  %552 = load double, double* %33, align 8
  %553 = fadd double %551, %552
  store double %553, double* %26, align 8
  %554 = load double, double* %29, align 8
  %555 = load double, double* %32, align 8
  %556 = fadd double %554, %555
  store double %556, double* %27, align 8
  %557 = load double, double* %18, align 8
  %558 = load double, double* %26, align 8
  %559 = fmul double %557, %558
  %560 = load double, double* %19, align 8
  %561 = load double, double* %27, align 8
  %562 = fmul double %560, %561
  %563 = fsub double %559, %562
  %564 = load double*, double** %5, align 8
  %565 = load i32, i32* %10, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds double, double* %564, i64 %566
  store double %563, double* %567, align 8
  %568 = load double, double* %18, align 8
  %569 = load double, double* %27, align 8
  %570 = fmul double %568, %569
  %571 = load double, double* %19, align 8
  %572 = load double, double* %26, align 8
  %573 = fmul double %571, %572
  %574 = fadd double %570, %573
  %575 = load double*, double** %5, align 8
  %576 = load i32, i32* %10, align 4
  %577 = add nsw i32 %576, 1
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds double, double* %575, i64 %578
  store double %574, double* %579, align 8
  %580 = load double, double* %36, align 8
  %581 = load double, double* %41, align 8
  %582 = fadd double %580, %581
  store double %582, double* %26, align 8
  %583 = load double, double* %37, align 8
  %584 = load double, double* %40, align 8
  %585 = fadd double %583, %584
  store double %585, double* %27, align 8
  %586 = load double, double* %22, align 8
  %587 = load double, double* %26, align 8
  %588 = fmul double %586, %587
  %589 = load double, double* %23, align 8
  %590 = load double, double* %27, align 8
  %591 = fmul double %589, %590
  %592 = fsub double %588, %591
  %593 = load double*, double** %5, align 8
  %594 = load i32, i32* %10, align 4
  %595 = add nsw i32 %594, 2
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds double, double* %593, i64 %596
  store double %592, double* %597, align 8
  %598 = load double, double* %22, align 8
  %599 = load double, double* %27, align 8
  %600 = fmul double %598, %599
  %601 = load double, double* %23, align 8
  %602 = load double, double* %26, align 8
  %603 = fmul double %601, %602
  %604 = fadd double %600, %603
  %605 = load double*, double** %5, align 8
  %606 = load i32, i32* %10, align 4
  %607 = add nsw i32 %606, 3
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds double, double* %605, i64 %608
  store double %604, double* %609, align 8
  %610 = load double, double* %28, align 8
  %611 = load double, double* %33, align 8
  %612 = fsub double %610, %611
  store double %612, double* %26, align 8
  %613 = load double, double* %29, align 8
  %614 = load double, double* %32, align 8
  %615 = fsub double %613, %614
  store double %615, double* %27, align 8
  %616 = load double, double* %20, align 8
  %617 = load double, double* %26, align 8
  %618 = fmul double %616, %617
  %619 = load double, double* %21, align 8
  %620 = load double, double* %27, align 8
  %621 = fmul double %619, %620
  %622 = fadd double %618, %621
  %623 = load double*, double** %5, align 8
  %624 = load i32, i32* %11, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds double, double* %623, i64 %625
  store double %622, double* %626, align 8
  %627 = load double, double* %20, align 8
  %628 = load double, double* %27, align 8
  %629 = fmul double %627, %628
  %630 = load double, double* %21, align 8
  %631 = load double, double* %26, align 8
  %632 = fmul double %630, %631
  %633 = fsub double %629, %632
  %634 = load double*, double** %5, align 8
  %635 = load i32, i32* %11, align 4
  %636 = add nsw i32 %635, 1
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds double, double* %634, i64 %637
  store double %633, double* %638, align 8
  %639 = load double, double* %36, align 8
  %640 = load double, double* %41, align 8
  %641 = fsub double %639, %640
  store double %641, double* %26, align 8
  %642 = load double, double* %37, align 8
  %643 = load double, double* %40, align 8
  %644 = fsub double %642, %643
  store double %644, double* %27, align 8
  %645 = load double, double* %24, align 8
  %646 = load double, double* %26, align 8
  %647 = fmul double %645, %646
  %648 = load double, double* %25, align 8
  %649 = load double, double* %27, align 8
  %650 = fmul double %648, %649
  %651 = fadd double %647, %650
  %652 = load double*, double** %5, align 8
  %653 = load i32, i32* %11, align 4
  %654 = add nsw i32 %653, 2
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds double, double* %652, i64 %655
  store double %651, double* %656, align 8
  %657 = load double, double* %24, align 8
  %658 = load double, double* %27, align 8
  %659 = fmul double %657, %658
  %660 = load double, double* %25, align 8
  %661 = load double, double* %26, align 8
  %662 = fmul double %660, %661
  %663 = fsub double %659, %662
  %664 = load double*, double** %5, align 8
  %665 = load i32, i32* %11, align 4
  %666 = add nsw i32 %665, 3
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds double, double* %664, i64 %667
  store double %663, double* %668, align 8
  %669 = load i32, i32* %13, align 4
  %670 = load i32, i32* %7, align 4
  %671 = sub nsw i32 %669, %670
  store i32 %671, i32* %8, align 4
  %672 = load i32, i32* %8, align 4
  %673 = load i32, i32* %13, align 4
  %674 = add nsw i32 %672, %673
  store i32 %674, i32* %9, align 4
  %675 = load i32, i32* %9, align 4
  %676 = load i32, i32* %13, align 4
  %677 = add nsw i32 %675, %676
  store i32 %677, i32* %10, align 4
  %678 = load i32, i32* %10, align 4
  %679 = load i32, i32* %13, align 4
  %680 = add nsw i32 %678, %679
  store i32 %680, i32* %11, align 4
  %681 = load double*, double** %5, align 8
  %682 = load i32, i32* %8, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds double, double* %681, i64 %683
  %685 = load double, double* %684, align 8
  %686 = load double*, double** %5, align 8
  %687 = load i32, i32* %10, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds double, double* %686, i64 %688
  %690 = load double, double* %689, align 8
  %691 = fadd double %685, %690
  store double %691, double* %26, align 8
  %692 = load double*, double** %5, align 8
  %693 = load i32, i32* %8, align 4
  %694 = add nsw i32 %693, 1
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds double, double* %692, i64 %695
  %697 = load double, double* %696, align 8
  %698 = fneg double %697
  %699 = load double*, double** %5, align 8
  %700 = load i32, i32* %10, align 4
  %701 = add nsw i32 %700, 1
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds double, double* %699, i64 %702
  %704 = load double, double* %703, align 8
  %705 = fsub double %698, %704
  store double %705, double* %27, align 8
  %706 = load double*, double** %5, align 8
  %707 = load i32, i32* %8, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds double, double* %706, i64 %708
  %710 = load double, double* %709, align 8
  %711 = load double*, double** %5, align 8
  %712 = load i32, i32* %10, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds double, double* %711, i64 %713
  %715 = load double, double* %714, align 8
  %716 = fsub double %710, %715
  store double %716, double* %28, align 8
  %717 = load double*, double** %5, align 8
  %718 = load i32, i32* %8, align 4
  %719 = add nsw i32 %718, 1
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds double, double* %717, i64 %720
  %722 = load double, double* %721, align 8
  %723 = fneg double %722
  %724 = load double*, double** %5, align 8
  %725 = load i32, i32* %10, align 4
  %726 = add nsw i32 %725, 1
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds double, double* %724, i64 %727
  %729 = load double, double* %728, align 8
  %730 = fadd double %723, %729
  store double %730, double* %29, align 8
  %731 = load double*, double** %5, align 8
  %732 = load i32, i32* %8, align 4
  %733 = sub nsw i32 %732, 2
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds double, double* %731, i64 %734
  %736 = load double, double* %735, align 8
  %737 = load double*, double** %5, align 8
  %738 = load i32, i32* %10, align 4
  %739 = sub nsw i32 %738, 2
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds double, double* %737, i64 %740
  %742 = load double, double* %741, align 8
  %743 = fadd double %736, %742
  store double %743, double* %34, align 8
  %744 = load double*, double** %5, align 8
  %745 = load i32, i32* %8, align 4
  %746 = sub nsw i32 %745, 1
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds double, double* %744, i64 %747
  %749 = load double, double* %748, align 8
  %750 = fneg double %749
  %751 = load double*, double** %5, align 8
  %752 = load i32, i32* %10, align 4
  %753 = sub nsw i32 %752, 1
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds double, double* %751, i64 %754
  %756 = load double, double* %755, align 8
  %757 = fsub double %750, %756
  store double %757, double* %35, align 8
  %758 = load double*, double** %5, align 8
  %759 = load i32, i32* %8, align 4
  %760 = sub nsw i32 %759, 2
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds double, double* %758, i64 %761
  %763 = load double, double* %762, align 8
  %764 = load double*, double** %5, align 8
  %765 = load i32, i32* %10, align 4
  %766 = sub nsw i32 %765, 2
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds double, double* %764, i64 %767
  %769 = load double, double* %768, align 8
  %770 = fsub double %763, %769
  store double %770, double* %36, align 8
  %771 = load double*, double** %5, align 8
  %772 = load i32, i32* %8, align 4
  %773 = sub nsw i32 %772, 1
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds double, double* %771, i64 %774
  %776 = load double, double* %775, align 8
  %777 = fneg double %776
  %778 = load double*, double** %5, align 8
  %779 = load i32, i32* %10, align 4
  %780 = sub nsw i32 %779, 1
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds double, double* %778, i64 %781
  %783 = load double, double* %782, align 8
  %784 = fadd double %777, %783
  store double %784, double* %37, align 8
  %785 = load double*, double** %5, align 8
  %786 = load i32, i32* %9, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds double, double* %785, i64 %787
  %789 = load double, double* %788, align 8
  %790 = load double*, double** %5, align 8
  %791 = load i32, i32* %11, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds double, double* %790, i64 %792
  %794 = load double, double* %793, align 8
  %795 = fadd double %789, %794
  store double %795, double* %30, align 8
  %796 = load double*, double** %5, align 8
  %797 = load i32, i32* %9, align 4
  %798 = add nsw i32 %797, 1
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds double, double* %796, i64 %799
  %801 = load double, double* %800, align 8
  %802 = load double*, double** %5, align 8
  %803 = load i32, i32* %11, align 4
  %804 = add nsw i32 %803, 1
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds double, double* %802, i64 %805
  %807 = load double, double* %806, align 8
  %808 = fadd double %801, %807
  store double %808, double* %31, align 8
  %809 = load double*, double** %5, align 8
  %810 = load i32, i32* %9, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds double, double* %809, i64 %811
  %813 = load double, double* %812, align 8
  %814 = load double*, double** %5, align 8
  %815 = load i32, i32* %11, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds double, double* %814, i64 %816
  %818 = load double, double* %817, align 8
  %819 = fsub double %813, %818
  store double %819, double* %32, align 8
  %820 = load double*, double** %5, align 8
  %821 = load i32, i32* %9, align 4
  %822 = add nsw i32 %821, 1
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds double, double* %820, i64 %823
  %825 = load double, double* %824, align 8
  %826 = load double*, double** %5, align 8
  %827 = load i32, i32* %11, align 4
  %828 = add nsw i32 %827, 1
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds double, double* %826, i64 %829
  %831 = load double, double* %830, align 8
  %832 = fsub double %825, %831
  store double %832, double* %33, align 8
  %833 = load double*, double** %5, align 8
  %834 = load i32, i32* %9, align 4
  %835 = sub nsw i32 %834, 2
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds double, double* %833, i64 %836
  %838 = load double, double* %837, align 8
  %839 = load double*, double** %5, align 8
  %840 = load i32, i32* %11, align 4
  %841 = sub nsw i32 %840, 2
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds double, double* %839, i64 %842
  %844 = load double, double* %843, align 8
  %845 = fadd double %838, %844
  store double %845, double* %38, align 8
  %846 = load double*, double** %5, align 8
  %847 = load i32, i32* %9, align 4
  %848 = sub nsw i32 %847, 1
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds double, double* %846, i64 %849
  %851 = load double, double* %850, align 8
  %852 = load double*, double** %5, align 8
  %853 = load i32, i32* %11, align 4
  %854 = sub nsw i32 %853, 1
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds double, double* %852, i64 %855
  %857 = load double, double* %856, align 8
  %858 = fadd double %851, %857
  store double %858, double* %39, align 8
  %859 = load double*, double** %5, align 8
  %860 = load i32, i32* %9, align 4
  %861 = sub nsw i32 %860, 2
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds double, double* %859, i64 %862
  %864 = load double, double* %863, align 8
  %865 = load double*, double** %5, align 8
  %866 = load i32, i32* %11, align 4
  %867 = sub nsw i32 %866, 2
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds double, double* %865, i64 %868
  %870 = load double, double* %869, align 8
  %871 = fsub double %864, %870
  store double %871, double* %40, align 8
  %872 = load double*, double** %5, align 8
  %873 = load i32, i32* %9, align 4
  %874 = sub nsw i32 %873, 1
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds double, double* %872, i64 %875
  %877 = load double, double* %876, align 8
  %878 = load double*, double** %5, align 8
  %879 = load i32, i32* %11, align 4
  %880 = sub nsw i32 %879, 1
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds double, double* %878, i64 %881
  %883 = load double, double* %882, align 8
  %884 = fsub double %877, %883
  store double %884, double* %41, align 8
  %885 = load double, double* %26, align 8
  %886 = load double, double* %30, align 8
  %887 = fadd double %885, %886
  %888 = load double*, double** %5, align 8
  %889 = load i32, i32* %8, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds double, double* %888, i64 %890
  store double %887, double* %891, align 8
  %892 = load double, double* %27, align 8
  %893 = load double, double* %31, align 8
  %894 = fsub double %892, %893
  %895 = load double*, double** %5, align 8
  %896 = load i32, i32* %8, align 4
  %897 = add nsw i32 %896, 1
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds double, double* %895, i64 %898
  store double %894, double* %899, align 8
  %900 = load double, double* %34, align 8
  %901 = load double, double* %38, align 8
  %902 = fadd double %900, %901
  %903 = load double*, double** %5, align 8
  %904 = load i32, i32* %8, align 4
  %905 = sub nsw i32 %904, 2
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds double, double* %903, i64 %906
  store double %902, double* %907, align 8
  %908 = load double, double* %35, align 8
  %909 = load double, double* %39, align 8
  %910 = fsub double %908, %909
  %911 = load double*, double** %5, align 8
  %912 = load i32, i32* %8, align 4
  %913 = sub nsw i32 %912, 1
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds double, double* %911, i64 %914
  store double %910, double* %915, align 8
  %916 = load double, double* %26, align 8
  %917 = load double, double* %30, align 8
  %918 = fsub double %916, %917
  %919 = load double*, double** %5, align 8
  %920 = load i32, i32* %9, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds double, double* %919, i64 %921
  store double %918, double* %922, align 8
  %923 = load double, double* %27, align 8
  %924 = load double, double* %31, align 8
  %925 = fadd double %923, %924
  %926 = load double*, double** %5, align 8
  %927 = load i32, i32* %9, align 4
  %928 = add nsw i32 %927, 1
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds double, double* %926, i64 %929
  store double %925, double* %930, align 8
  %931 = load double, double* %34, align 8
  %932 = load double, double* %38, align 8
  %933 = fsub double %931, %932
  %934 = load double*, double** %5, align 8
  %935 = load i32, i32* %9, align 4
  %936 = sub nsw i32 %935, 2
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds double, double* %934, i64 %937
  store double %933, double* %938, align 8
  %939 = load double, double* %35, align 8
  %940 = load double, double* %39, align 8
  %941 = fadd double %939, %940
  %942 = load double*, double** %5, align 8
  %943 = load i32, i32* %9, align 4
  %944 = sub nsw i32 %943, 1
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds double, double* %942, i64 %945
  store double %941, double* %946, align 8
  %947 = load double, double* %28, align 8
  %948 = load double, double* %33, align 8
  %949 = fadd double %947, %948
  store double %949, double* %26, align 8
  %950 = load double, double* %29, align 8
  %951 = load double, double* %32, align 8
  %952 = fadd double %950, %951
  store double %952, double* %27, align 8
  %953 = load double, double* %19, align 8
  %954 = load double, double* %26, align 8
  %955 = fmul double %953, %954
  %956 = load double, double* %18, align 8
  %957 = load double, double* %27, align 8
  %958 = fmul double %956, %957
  %959 = fsub double %955, %958
  %960 = load double*, double** %5, align 8
  %961 = load i32, i32* %10, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds double, double* %960, i64 %962
  store double %959, double* %963, align 8
  %964 = load double, double* %19, align 8
  %965 = load double, double* %27, align 8
  %966 = fmul double %964, %965
  %967 = load double, double* %18, align 8
  %968 = load double, double* %26, align 8
  %969 = fmul double %967, %968
  %970 = fadd double %966, %969
  %971 = load double*, double** %5, align 8
  %972 = load i32, i32* %10, align 4
  %973 = add nsw i32 %972, 1
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds double, double* %971, i64 %974
  store double %970, double* %975, align 8
  %976 = load double, double* %36, align 8
  %977 = load double, double* %41, align 8
  %978 = fadd double %976, %977
  store double %978, double* %26, align 8
  %979 = load double, double* %37, align 8
  %980 = load double, double* %40, align 8
  %981 = fadd double %979, %980
  store double %981, double* %27, align 8
  %982 = load double, double* %23, align 8
  %983 = load double, double* %26, align 8
  %984 = fmul double %982, %983
  %985 = load double, double* %22, align 8
  %986 = load double, double* %27, align 8
  %987 = fmul double %985, %986
  %988 = fsub double %984, %987
  %989 = load double*, double** %5, align 8
  %990 = load i32, i32* %10, align 4
  %991 = sub nsw i32 %990, 2
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds double, double* %989, i64 %992
  store double %988, double* %993, align 8
  %994 = load double, double* %23, align 8
  %995 = load double, double* %27, align 8
  %996 = fmul double %994, %995
  %997 = load double, double* %22, align 8
  %998 = load double, double* %26, align 8
  %999 = fmul double %997, %998
  %1000 = fadd double %996, %999
  %1001 = load double*, double** %5, align 8
  %1002 = load i32, i32* %10, align 4
  %1003 = sub nsw i32 %1002, 1
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds double, double* %1001, i64 %1004
  store double %1000, double* %1005, align 8
  %1006 = load double, double* %28, align 8
  %1007 = load double, double* %33, align 8
  %1008 = fsub double %1006, %1007
  store double %1008, double* %26, align 8
  %1009 = load double, double* %29, align 8
  %1010 = load double, double* %32, align 8
  %1011 = fsub double %1009, %1010
  store double %1011, double* %27, align 8
  %1012 = load double, double* %21, align 8
  %1013 = load double, double* %26, align 8
  %1014 = fmul double %1012, %1013
  %1015 = load double, double* %20, align 8
  %1016 = load double, double* %27, align 8
  %1017 = fmul double %1015, %1016
  %1018 = fadd double %1014, %1017
  %1019 = load double*, double** %5, align 8
  %1020 = load i32, i32* %11, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds double, double* %1019, i64 %1021
  store double %1018, double* %1022, align 8
  %1023 = load double, double* %21, align 8
  %1024 = load double, double* %27, align 8
  %1025 = fmul double %1023, %1024
  %1026 = load double, double* %20, align 8
  %1027 = load double, double* %26, align 8
  %1028 = fmul double %1026, %1027
  %1029 = fsub double %1025, %1028
  %1030 = load double*, double** %5, align 8
  %1031 = load i32, i32* %11, align 4
  %1032 = add nsw i32 %1031, 1
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds double, double* %1030, i64 %1033
  store double %1029, double* %1034, align 8
  %1035 = load double, double* %36, align 8
  %1036 = load double, double* %41, align 8
  %1037 = fsub double %1035, %1036
  store double %1037, double* %26, align 8
  %1038 = load double, double* %37, align 8
  %1039 = load double, double* %40, align 8
  %1040 = fsub double %1038, %1039
  store double %1040, double* %27, align 8
  %1041 = load double, double* %25, align 8
  %1042 = load double, double* %26, align 8
  %1043 = fmul double %1041, %1042
  %1044 = load double, double* %24, align 8
  %1045 = load double, double* %27, align 8
  %1046 = fmul double %1044, %1045
  %1047 = fadd double %1043, %1046
  %1048 = load double*, double** %5, align 8
  %1049 = load i32, i32* %11, align 4
  %1050 = sub nsw i32 %1049, 2
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds double, double* %1048, i64 %1051
  store double %1047, double* %1052, align 8
  %1053 = load double, double* %25, align 8
  %1054 = load double, double* %27, align 8
  %1055 = fmul double %1053, %1054
  %1056 = load double, double* %24, align 8
  %1057 = load double, double* %26, align 8
  %1058 = fmul double %1056, %1057
  %1059 = fsub double %1055, %1058
  %1060 = load double*, double** %5, align 8
  %1061 = load i32, i32* %11, align 4
  %1062 = sub nsw i32 %1061, 1
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds double, double* %1060, i64 %1063
  store double %1059, double* %1064, align 8
  br label %1065

1065:                                             ; preds = %210
  %1066 = load i32, i32* %7, align 4
  %1067 = add nsw i32 %1066, 4
  store i32 %1067, i32* %7, align 4
  br label %205

1068:                                             ; preds = %205
  %1069 = load double, double* %16, align 8
  %1070 = load double, double* %22, align 8
  %1071 = load double, double* %15, align 8
  %1072 = fadd double %1070, %1071
  %1073 = fmul double %1069, %1072
  store double %1073, double* %18, align 8
  %1074 = load double, double* %16, align 8
  %1075 = load double, double* %23, align 8
  %1076 = load double, double* %15, align 8
  %1077 = fadd double %1075, %1076
  %1078 = fmul double %1074, %1077
  store double %1078, double* %19, align 8
  %1079 = load double, double* %17, align 8
  %1080 = load double, double* %24, align 8
  %1081 = load double, double* %15, align 8
  %1082 = fsub double %1080, %1081
  %1083 = fmul double %1079, %1082
  store double %1083, double* %20, align 8
  %1084 = load double, double* %17, align 8
  %1085 = load double, double* %25, align 8
  %1086 = load double, double* %15, align 8
  %1087 = fsub double %1085, %1086
  %1088 = fmul double %1084, %1087
  store double %1088, double* %21, align 8
  %1089 = load i32, i32* %14, align 4
  store i32 %1089, i32* %8, align 4
  %1090 = load i32, i32* %8, align 4
  %1091 = load i32, i32* %13, align 4
  %1092 = add nsw i32 %1090, %1091
  store i32 %1092, i32* %9, align 4
  %1093 = load i32, i32* %9, align 4
  %1094 = load i32, i32* %13, align 4
  %1095 = add nsw i32 %1093, %1094
  store i32 %1095, i32* %10, align 4
  %1096 = load i32, i32* %10, align 4
  %1097 = load i32, i32* %13, align 4
  %1098 = add nsw i32 %1096, %1097
  store i32 %1098, i32* %11, align 4
  %1099 = load double*, double** %5, align 8
  %1100 = load i32, i32* %8, align 4
  %1101 = sub nsw i32 %1100, 2
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds double, double* %1099, i64 %1102
  %1104 = load double, double* %1103, align 8
  %1105 = load double*, double** %5, align 8
  %1106 = load i32, i32* %10, align 4
  %1107 = sub nsw i32 %1106, 2
  %1108 = sext i32 %1107 to i64
  %1109 = getelementptr inbounds double, double* %1105, i64 %1108
  %1110 = load double, double* %1109, align 8
  %1111 = fadd double %1104, %1110
  store double %1111, double* %26, align 8
  %1112 = load double*, double** %5, align 8
  %1113 = load i32, i32* %8, align 4
  %1114 = sub nsw i32 %1113, 1
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds double, double* %1112, i64 %1115
  %1117 = load double, double* %1116, align 8
  %1118 = fneg double %1117
  %1119 = load double*, double** %5, align 8
  %1120 = load i32, i32* %10, align 4
  %1121 = sub nsw i32 %1120, 1
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds double, double* %1119, i64 %1122
  %1124 = load double, double* %1123, align 8
  %1125 = fsub double %1118, %1124
  store double %1125, double* %27, align 8
  %1126 = load double*, double** %5, align 8
  %1127 = load i32, i32* %8, align 4
  %1128 = sub nsw i32 %1127, 2
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds double, double* %1126, i64 %1129
  %1131 = load double, double* %1130, align 8
  %1132 = load double*, double** %5, align 8
  %1133 = load i32, i32* %10, align 4
  %1134 = sub nsw i32 %1133, 2
  %1135 = sext i32 %1134 to i64
  %1136 = getelementptr inbounds double, double* %1132, i64 %1135
  %1137 = load double, double* %1136, align 8
  %1138 = fsub double %1131, %1137
  store double %1138, double* %28, align 8
  %1139 = load double*, double** %5, align 8
  %1140 = load i32, i32* %8, align 4
  %1141 = sub nsw i32 %1140, 1
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds double, double* %1139, i64 %1142
  %1144 = load double, double* %1143, align 8
  %1145 = fneg double %1144
  %1146 = load double*, double** %5, align 8
  %1147 = load i32, i32* %10, align 4
  %1148 = sub nsw i32 %1147, 1
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds double, double* %1146, i64 %1149
  %1151 = load double, double* %1150, align 8
  %1152 = fadd double %1145, %1151
  store double %1152, double* %29, align 8
  %1153 = load double*, double** %5, align 8
  %1154 = load i32, i32* %9, align 4
  %1155 = sub nsw i32 %1154, 2
  %1156 = sext i32 %1155 to i64
  %1157 = getelementptr inbounds double, double* %1153, i64 %1156
  %1158 = load double, double* %1157, align 8
  %1159 = load double*, double** %5, align 8
  %1160 = load i32, i32* %11, align 4
  %1161 = sub nsw i32 %1160, 2
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds double, double* %1159, i64 %1162
  %1164 = load double, double* %1163, align 8
  %1165 = fadd double %1158, %1164
  store double %1165, double* %30, align 8
  %1166 = load double*, double** %5, align 8
  %1167 = load i32, i32* %9, align 4
  %1168 = sub nsw i32 %1167, 1
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds double, double* %1166, i64 %1169
  %1171 = load double, double* %1170, align 8
  %1172 = load double*, double** %5, align 8
  %1173 = load i32, i32* %11, align 4
  %1174 = sub nsw i32 %1173, 1
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds double, double* %1172, i64 %1175
  %1177 = load double, double* %1176, align 8
  %1178 = fadd double %1171, %1177
  store double %1178, double* %31, align 8
  %1179 = load double*, double** %5, align 8
  %1180 = load i32, i32* %9, align 4
  %1181 = sub nsw i32 %1180, 2
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds double, double* %1179, i64 %1182
  %1184 = load double, double* %1183, align 8
  %1185 = load double*, double** %5, align 8
  %1186 = load i32, i32* %11, align 4
  %1187 = sub nsw i32 %1186, 2
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds double, double* %1185, i64 %1188
  %1190 = load double, double* %1189, align 8
  %1191 = fsub double %1184, %1190
  store double %1191, double* %32, align 8
  %1192 = load double*, double** %5, align 8
  %1193 = load i32, i32* %9, align 4
  %1194 = sub nsw i32 %1193, 1
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds double, double* %1192, i64 %1195
  %1197 = load double, double* %1196, align 8
  %1198 = load double*, double** %5, align 8
  %1199 = load i32, i32* %11, align 4
  %1200 = sub nsw i32 %1199, 1
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds double, double* %1198, i64 %1201
  %1203 = load double, double* %1202, align 8
  %1204 = fsub double %1197, %1203
  store double %1204, double* %33, align 8
  %1205 = load double, double* %26, align 8
  %1206 = load double, double* %30, align 8
  %1207 = fadd double %1205, %1206
  %1208 = load double*, double** %5, align 8
  %1209 = load i32, i32* %8, align 4
  %1210 = sub nsw i32 %1209, 2
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds double, double* %1208, i64 %1211
  store double %1207, double* %1212, align 8
  %1213 = load double, double* %27, align 8
  %1214 = load double, double* %31, align 8
  %1215 = fsub double %1213, %1214
  %1216 = load double*, double** %5, align 8
  %1217 = load i32, i32* %8, align 4
  %1218 = sub nsw i32 %1217, 1
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds double, double* %1216, i64 %1219
  store double %1215, double* %1220, align 8
  %1221 = load double, double* %26, align 8
  %1222 = load double, double* %30, align 8
  %1223 = fsub double %1221, %1222
  %1224 = load double*, double** %5, align 8
  %1225 = load i32, i32* %9, align 4
  %1226 = sub nsw i32 %1225, 2
  %1227 = sext i32 %1226 to i64
  %1228 = getelementptr inbounds double, double* %1224, i64 %1227
  store double %1223, double* %1228, align 8
  %1229 = load double, double* %27, align 8
  %1230 = load double, double* %31, align 8
  %1231 = fadd double %1229, %1230
  %1232 = load double*, double** %5, align 8
  %1233 = load i32, i32* %9, align 4
  %1234 = sub nsw i32 %1233, 1
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds double, double* %1232, i64 %1235
  store double %1231, double* %1236, align 8
  %1237 = load double, double* %28, align 8
  %1238 = load double, double* %33, align 8
  %1239 = fadd double %1237, %1238
  store double %1239, double* %26, align 8
  %1240 = load double, double* %29, align 8
  %1241 = load double, double* %32, align 8
  %1242 = fadd double %1240, %1241
  store double %1242, double* %27, align 8
  %1243 = load double, double* %18, align 8
  %1244 = load double, double* %26, align 8
  %1245 = fmul double %1243, %1244
  %1246 = load double, double* %19, align 8
  %1247 = load double, double* %27, align 8
  %1248 = fmul double %1246, %1247
  %1249 = fsub double %1245, %1248
  %1250 = load double*, double** %5, align 8
  %1251 = load i32, i32* %10, align 4
  %1252 = sub nsw i32 %1251, 2
  %1253 = sext i32 %1252 to i64
  %1254 = getelementptr inbounds double, double* %1250, i64 %1253
  store double %1249, double* %1254, align 8
  %1255 = load double, double* %18, align 8
  %1256 = load double, double* %27, align 8
  %1257 = fmul double %1255, %1256
  %1258 = load double, double* %19, align 8
  %1259 = load double, double* %26, align 8
  %1260 = fmul double %1258, %1259
  %1261 = fadd double %1257, %1260
  %1262 = load double*, double** %5, align 8
  %1263 = load i32, i32* %10, align 4
  %1264 = sub nsw i32 %1263, 1
  %1265 = sext i32 %1264 to i64
  %1266 = getelementptr inbounds double, double* %1262, i64 %1265
  store double %1261, double* %1266, align 8
  %1267 = load double, double* %28, align 8
  %1268 = load double, double* %33, align 8
  %1269 = fsub double %1267, %1268
  store double %1269, double* %26, align 8
  %1270 = load double, double* %29, align 8
  %1271 = load double, double* %32, align 8
  %1272 = fsub double %1270, %1271
  store double %1272, double* %27, align 8
  %1273 = load double, double* %20, align 8
  %1274 = load double, double* %26, align 8
  %1275 = fmul double %1273, %1274
  %1276 = load double, double* %21, align 8
  %1277 = load double, double* %27, align 8
  %1278 = fmul double %1276, %1277
  %1279 = fadd double %1275, %1278
  %1280 = load double*, double** %5, align 8
  %1281 = load i32, i32* %11, align 4
  %1282 = sub nsw i32 %1281, 2
  %1283 = sext i32 %1282 to i64
  %1284 = getelementptr inbounds double, double* %1280, i64 %1283
  store double %1279, double* %1284, align 8
  %1285 = load double, double* %20, align 8
  %1286 = load double, double* %27, align 8
  %1287 = fmul double %1285, %1286
  %1288 = load double, double* %21, align 8
  %1289 = load double, double* %26, align 8
  %1290 = fmul double %1288, %1289
  %1291 = fsub double %1287, %1290
  %1292 = load double*, double** %5, align 8
  %1293 = load i32, i32* %11, align 4
  %1294 = sub nsw i32 %1293, 1
  %1295 = sext i32 %1294 to i64
  %1296 = getelementptr inbounds double, double* %1292, i64 %1295
  store double %1291, double* %1296, align 8
  %1297 = load double*, double** %5, align 8
  %1298 = load i32, i32* %8, align 4
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds double, double* %1297, i64 %1299
  %1301 = load double, double* %1300, align 8
  %1302 = load double*, double** %5, align 8
  %1303 = load i32, i32* %10, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds double, double* %1302, i64 %1304
  %1306 = load double, double* %1305, align 8
  %1307 = fadd double %1301, %1306
  store double %1307, double* %26, align 8
  %1308 = load double*, double** %5, align 8
  %1309 = load i32, i32* %8, align 4
  %1310 = add nsw i32 %1309, 1
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds double, double* %1308, i64 %1311
  %1313 = load double, double* %1312, align 8
  %1314 = fneg double %1313
  %1315 = load double*, double** %5, align 8
  %1316 = load i32, i32* %10, align 4
  %1317 = add nsw i32 %1316, 1
  %1318 = sext i32 %1317 to i64
  %1319 = getelementptr inbounds double, double* %1315, i64 %1318
  %1320 = load double, double* %1319, align 8
  %1321 = fsub double %1314, %1320
  store double %1321, double* %27, align 8
  %1322 = load double*, double** %5, align 8
  %1323 = load i32, i32* %8, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds double, double* %1322, i64 %1324
  %1326 = load double, double* %1325, align 8
  %1327 = load double*, double** %5, align 8
  %1328 = load i32, i32* %10, align 4
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds double, double* %1327, i64 %1329
  %1331 = load double, double* %1330, align 8
  %1332 = fsub double %1326, %1331
  store double %1332, double* %28, align 8
  %1333 = load double*, double** %5, align 8
  %1334 = load i32, i32* %8, align 4
  %1335 = add nsw i32 %1334, 1
  %1336 = sext i32 %1335 to i64
  %1337 = getelementptr inbounds double, double* %1333, i64 %1336
  %1338 = load double, double* %1337, align 8
  %1339 = fneg double %1338
  %1340 = load double*, double** %5, align 8
  %1341 = load i32, i32* %10, align 4
  %1342 = add nsw i32 %1341, 1
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds double, double* %1340, i64 %1343
  %1345 = load double, double* %1344, align 8
  %1346 = fadd double %1339, %1345
  store double %1346, double* %29, align 8
  %1347 = load double*, double** %5, align 8
  %1348 = load i32, i32* %9, align 4
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds double, double* %1347, i64 %1349
  %1351 = load double, double* %1350, align 8
  %1352 = load double*, double** %5, align 8
  %1353 = load i32, i32* %11, align 4
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds double, double* %1352, i64 %1354
  %1356 = load double, double* %1355, align 8
  %1357 = fadd double %1351, %1356
  store double %1357, double* %30, align 8
  %1358 = load double*, double** %5, align 8
  %1359 = load i32, i32* %9, align 4
  %1360 = add nsw i32 %1359, 1
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds double, double* %1358, i64 %1361
  %1363 = load double, double* %1362, align 8
  %1364 = load double*, double** %5, align 8
  %1365 = load i32, i32* %11, align 4
  %1366 = add nsw i32 %1365, 1
  %1367 = sext i32 %1366 to i64
  %1368 = getelementptr inbounds double, double* %1364, i64 %1367
  %1369 = load double, double* %1368, align 8
  %1370 = fadd double %1363, %1369
  store double %1370, double* %31, align 8
  %1371 = load double*, double** %5, align 8
  %1372 = load i32, i32* %9, align 4
  %1373 = sext i32 %1372 to i64
  %1374 = getelementptr inbounds double, double* %1371, i64 %1373
  %1375 = load double, double* %1374, align 8
  %1376 = load double*, double** %5, align 8
  %1377 = load i32, i32* %11, align 4
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds double, double* %1376, i64 %1378
  %1380 = load double, double* %1379, align 8
  %1381 = fsub double %1375, %1380
  store double %1381, double* %32, align 8
  %1382 = load double*, double** %5, align 8
  %1383 = load i32, i32* %9, align 4
  %1384 = add nsw i32 %1383, 1
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds double, double* %1382, i64 %1385
  %1387 = load double, double* %1386, align 8
  %1388 = load double*, double** %5, align 8
  %1389 = load i32, i32* %11, align 4
  %1390 = add nsw i32 %1389, 1
  %1391 = sext i32 %1390 to i64
  %1392 = getelementptr inbounds double, double* %1388, i64 %1391
  %1393 = load double, double* %1392, align 8
  %1394 = fsub double %1387, %1393
  store double %1394, double* %33, align 8
  %1395 = load double, double* %26, align 8
  %1396 = load double, double* %30, align 8
  %1397 = fadd double %1395, %1396
  %1398 = load double*, double** %5, align 8
  %1399 = load i32, i32* %8, align 4
  %1400 = sext i32 %1399 to i64
  %1401 = getelementptr inbounds double, double* %1398, i64 %1400
  store double %1397, double* %1401, align 8
  %1402 = load double, double* %27, align 8
  %1403 = load double, double* %31, align 8
  %1404 = fsub double %1402, %1403
  %1405 = load double*, double** %5, align 8
  %1406 = load i32, i32* %8, align 4
  %1407 = add nsw i32 %1406, 1
  %1408 = sext i32 %1407 to i64
  %1409 = getelementptr inbounds double, double* %1405, i64 %1408
  store double %1404, double* %1409, align 8
  %1410 = load double, double* %26, align 8
  %1411 = load double, double* %30, align 8
  %1412 = fsub double %1410, %1411
  %1413 = load double*, double** %5, align 8
  %1414 = load i32, i32* %9, align 4
  %1415 = sext i32 %1414 to i64
  %1416 = getelementptr inbounds double, double* %1413, i64 %1415
  store double %1412, double* %1416, align 8
  %1417 = load double, double* %27, align 8
  %1418 = load double, double* %31, align 8
  %1419 = fadd double %1417, %1418
  %1420 = load double*, double** %5, align 8
  %1421 = load i32, i32* %9, align 4
  %1422 = add nsw i32 %1421, 1
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds double, double* %1420, i64 %1423
  store double %1419, double* %1424, align 8
  %1425 = load double, double* %28, align 8
  %1426 = load double, double* %33, align 8
  %1427 = fadd double %1425, %1426
  store double %1427, double* %26, align 8
  %1428 = load double, double* %29, align 8
  %1429 = load double, double* %32, align 8
  %1430 = fadd double %1428, %1429
  store double %1430, double* %27, align 8
  %1431 = load double, double* %15, align 8
  %1432 = load double, double* %26, align 8
  %1433 = load double, double* %27, align 8
  %1434 = fsub double %1432, %1433
  %1435 = fmul double %1431, %1434
  %1436 = load double*, double** %5, align 8
  %1437 = load i32, i32* %10, align 4
  %1438 = sext i32 %1437 to i64
  %1439 = getelementptr inbounds double, double* %1436, i64 %1438
  store double %1435, double* %1439, align 8
  %1440 = load double, double* %15, align 8
  %1441 = load double, double* %27, align 8
  %1442 = load double, double* %26, align 8
  %1443 = fadd double %1441, %1442
  %1444 = fmul double %1440, %1443
  %1445 = load double*, double** %5, align 8
  %1446 = load i32, i32* %10, align 4
  %1447 = add nsw i32 %1446, 1
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds double, double* %1445, i64 %1448
  store double %1444, double* %1449, align 8
  %1450 = load double, double* %28, align 8
  %1451 = load double, double* %33, align 8
  %1452 = fsub double %1450, %1451
  store double %1452, double* %26, align 8
  %1453 = load double, double* %29, align 8
  %1454 = load double, double* %32, align 8
  %1455 = fsub double %1453, %1454
  store double %1455, double* %27, align 8
  %1456 = load double, double* %15, align 8
  %1457 = fneg double %1456
  %1458 = load double, double* %26, align 8
  %1459 = load double, double* %27, align 8
  %1460 = fadd double %1458, %1459
  %1461 = fmul double %1457, %1460
  %1462 = load double*, double** %5, align 8
  %1463 = load i32, i32* %11, align 4
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds double, double* %1462, i64 %1464
  store double %1461, double* %1465, align 8
  %1466 = load double, double* %15, align 8
  %1467 = fneg double %1466
  %1468 = load double, double* %27, align 8
  %1469 = load double, double* %26, align 8
  %1470 = fsub double %1468, %1469
  %1471 = fmul double %1467, %1470
  %1472 = load double*, double** %5, align 8
  %1473 = load i32, i32* %11, align 4
  %1474 = add nsw i32 %1473, 1
  %1475 = sext i32 %1474 to i64
  %1476 = getelementptr inbounds double, double* %1472, i64 %1475
  store double %1471, double* %1476, align 8
  %1477 = load double*, double** %5, align 8
  %1478 = load i32, i32* %8, align 4
  %1479 = add nsw i32 %1478, 2
  %1480 = sext i32 %1479 to i64
  %1481 = getelementptr inbounds double, double* %1477, i64 %1480
  %1482 = load double, double* %1481, align 8
  %1483 = load double*, double** %5, align 8
  %1484 = load i32, i32* %10, align 4
  %1485 = add nsw i32 %1484, 2
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds double, double* %1483, i64 %1486
  %1488 = load double, double* %1487, align 8
  %1489 = fadd double %1482, %1488
  store double %1489, double* %26, align 8
  %1490 = load double*, double** %5, align 8
  %1491 = load i32, i32* %8, align 4
  %1492 = add nsw i32 %1491, 3
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds double, double* %1490, i64 %1493
  %1495 = load double, double* %1494, align 8
  %1496 = fneg double %1495
  %1497 = load double*, double** %5, align 8
  %1498 = load i32, i32* %10, align 4
  %1499 = add nsw i32 %1498, 3
  %1500 = sext i32 %1499 to i64
  %1501 = getelementptr inbounds double, double* %1497, i64 %1500
  %1502 = load double, double* %1501, align 8
  %1503 = fsub double %1496, %1502
  store double %1503, double* %27, align 8
  %1504 = load double*, double** %5, align 8
  %1505 = load i32, i32* %8, align 4
  %1506 = add nsw i32 %1505, 2
  %1507 = sext i32 %1506 to i64
  %1508 = getelementptr inbounds double, double* %1504, i64 %1507
  %1509 = load double, double* %1508, align 8
  %1510 = load double*, double** %5, align 8
  %1511 = load i32, i32* %10, align 4
  %1512 = add nsw i32 %1511, 2
  %1513 = sext i32 %1512 to i64
  %1514 = getelementptr inbounds double, double* %1510, i64 %1513
  %1515 = load double, double* %1514, align 8
  %1516 = fsub double %1509, %1515
  store double %1516, double* %28, align 8
  %1517 = load double*, double** %5, align 8
  %1518 = load i32, i32* %8, align 4
  %1519 = add nsw i32 %1518, 3
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds double, double* %1517, i64 %1520
  %1522 = load double, double* %1521, align 8
  %1523 = fneg double %1522
  %1524 = load double*, double** %5, align 8
  %1525 = load i32, i32* %10, align 4
  %1526 = add nsw i32 %1525, 3
  %1527 = sext i32 %1526 to i64
  %1528 = getelementptr inbounds double, double* %1524, i64 %1527
  %1529 = load double, double* %1528, align 8
  %1530 = fadd double %1523, %1529
  store double %1530, double* %29, align 8
  %1531 = load double*, double** %5, align 8
  %1532 = load i32, i32* %9, align 4
  %1533 = add nsw i32 %1532, 2
  %1534 = sext i32 %1533 to i64
  %1535 = getelementptr inbounds double, double* %1531, i64 %1534
  %1536 = load double, double* %1535, align 8
  %1537 = load double*, double** %5, align 8
  %1538 = load i32, i32* %11, align 4
  %1539 = add nsw i32 %1538, 2
  %1540 = sext i32 %1539 to i64
  %1541 = getelementptr inbounds double, double* %1537, i64 %1540
  %1542 = load double, double* %1541, align 8
  %1543 = fadd double %1536, %1542
  store double %1543, double* %30, align 8
  %1544 = load double*, double** %5, align 8
  %1545 = load i32, i32* %9, align 4
  %1546 = add nsw i32 %1545, 3
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds double, double* %1544, i64 %1547
  %1549 = load double, double* %1548, align 8
  %1550 = load double*, double** %5, align 8
  %1551 = load i32, i32* %11, align 4
  %1552 = add nsw i32 %1551, 3
  %1553 = sext i32 %1552 to i64
  %1554 = getelementptr inbounds double, double* %1550, i64 %1553
  %1555 = load double, double* %1554, align 8
  %1556 = fadd double %1549, %1555
  store double %1556, double* %31, align 8
  %1557 = load double*, double** %5, align 8
  %1558 = load i32, i32* %9, align 4
  %1559 = add nsw i32 %1558, 2
  %1560 = sext i32 %1559 to i64
  %1561 = getelementptr inbounds double, double* %1557, i64 %1560
  %1562 = load double, double* %1561, align 8
  %1563 = load double*, double** %5, align 8
  %1564 = load i32, i32* %11, align 4
  %1565 = add nsw i32 %1564, 2
  %1566 = sext i32 %1565 to i64
  %1567 = getelementptr inbounds double, double* %1563, i64 %1566
  %1568 = load double, double* %1567, align 8
  %1569 = fsub double %1562, %1568
  store double %1569, double* %32, align 8
  %1570 = load double*, double** %5, align 8
  %1571 = load i32, i32* %9, align 4
  %1572 = add nsw i32 %1571, 3
  %1573 = sext i32 %1572 to i64
  %1574 = getelementptr inbounds double, double* %1570, i64 %1573
  %1575 = load double, double* %1574, align 8
  %1576 = load double*, double** %5, align 8
  %1577 = load i32, i32* %11, align 4
  %1578 = add nsw i32 %1577, 3
  %1579 = sext i32 %1578 to i64
  %1580 = getelementptr inbounds double, double* %1576, i64 %1579
  %1581 = load double, double* %1580, align 8
  %1582 = fsub double %1575, %1581
  store double %1582, double* %33, align 8
  %1583 = load double, double* %26, align 8
  %1584 = load double, double* %30, align 8
  %1585 = fadd double %1583, %1584
  %1586 = load double*, double** %5, align 8
  %1587 = load i32, i32* %8, align 4
  %1588 = add nsw i32 %1587, 2
  %1589 = sext i32 %1588 to i64
  %1590 = getelementptr inbounds double, double* %1586, i64 %1589
  store double %1585, double* %1590, align 8
  %1591 = load double, double* %27, align 8
  %1592 = load double, double* %31, align 8
  %1593 = fsub double %1591, %1592
  %1594 = load double*, double** %5, align 8
  %1595 = load i32, i32* %8, align 4
  %1596 = add nsw i32 %1595, 3
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds double, double* %1594, i64 %1597
  store double %1593, double* %1598, align 8
  %1599 = load double, double* %26, align 8
  %1600 = load double, double* %30, align 8
  %1601 = fsub double %1599, %1600
  %1602 = load double*, double** %5, align 8
  %1603 = load i32, i32* %9, align 4
  %1604 = add nsw i32 %1603, 2
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds double, double* %1602, i64 %1605
  store double %1601, double* %1606, align 8
  %1607 = load double, double* %27, align 8
  %1608 = load double, double* %31, align 8
  %1609 = fadd double %1607, %1608
  %1610 = load double*, double** %5, align 8
  %1611 = load i32, i32* %9, align 4
  %1612 = add nsw i32 %1611, 3
  %1613 = sext i32 %1612 to i64
  %1614 = getelementptr inbounds double, double* %1610, i64 %1613
  store double %1609, double* %1614, align 8
  %1615 = load double, double* %28, align 8
  %1616 = load double, double* %33, align 8
  %1617 = fadd double %1615, %1616
  store double %1617, double* %26, align 8
  %1618 = load double, double* %29, align 8
  %1619 = load double, double* %32, align 8
  %1620 = fadd double %1618, %1619
  store double %1620, double* %27, align 8
  %1621 = load double, double* %19, align 8
  %1622 = load double, double* %26, align 8
  %1623 = fmul double %1621, %1622
  %1624 = load double, double* %18, align 8
  %1625 = load double, double* %27, align 8
  %1626 = fmul double %1624, %1625
  %1627 = fsub double %1623, %1626
  %1628 = load double*, double** %5, align 8
  %1629 = load i32, i32* %10, align 4
  %1630 = add nsw i32 %1629, 2
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds double, double* %1628, i64 %1631
  store double %1627, double* %1632, align 8
  %1633 = load double, double* %19, align 8
  %1634 = load double, double* %27, align 8
  %1635 = fmul double %1633, %1634
  %1636 = load double, double* %18, align 8
  %1637 = load double, double* %26, align 8
  %1638 = fmul double %1636, %1637
  %1639 = fadd double %1635, %1638
  %1640 = load double*, double** %5, align 8
  %1641 = load i32, i32* %10, align 4
  %1642 = add nsw i32 %1641, 3
  %1643 = sext i32 %1642 to i64
  %1644 = getelementptr inbounds double, double* %1640, i64 %1643
  store double %1639, double* %1644, align 8
  %1645 = load double, double* %28, align 8
  %1646 = load double, double* %33, align 8
  %1647 = fsub double %1645, %1646
  store double %1647, double* %26, align 8
  %1648 = load double, double* %29, align 8
  %1649 = load double, double* %32, align 8
  %1650 = fsub double %1648, %1649
  store double %1650, double* %27, align 8
  %1651 = load double, double* %21, align 8
  %1652 = load double, double* %26, align 8
  %1653 = fmul double %1651, %1652
  %1654 = load double, double* %20, align 8
  %1655 = load double, double* %27, align 8
  %1656 = fmul double %1654, %1655
  %1657 = fadd double %1653, %1656
  %1658 = load double*, double** %5, align 8
  %1659 = load i32, i32* %11, align 4
  %1660 = add nsw i32 %1659, 2
  %1661 = sext i32 %1660 to i64
  %1662 = getelementptr inbounds double, double* %1658, i64 %1661
  store double %1657, double* %1662, align 8
  %1663 = load double, double* %21, align 8
  %1664 = load double, double* %27, align 8
  %1665 = fmul double %1663, %1664
  %1666 = load double, double* %20, align 8
  %1667 = load double, double* %26, align 8
  %1668 = fmul double %1666, %1667
  %1669 = fsub double %1665, %1668
  %1670 = load double*, double** %5, align 8
  %1671 = load i32, i32* %11, align 4
  %1672 = add nsw i32 %1671, 3
  %1673 = sext i32 %1672 to i64
  %1674 = getelementptr inbounds double, double* %1670, i64 %1673
  store double %1669, double* %1674, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftrec1(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 2
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load double*, double** %6, align 8
  %14 = load double*, double** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 2, %16
  %18 = sub nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %14, i64 %19
  call void @cftmdl1(i32 %12, double* %13, double* %20)
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 512
  br i1 %22, label %23, label %51

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load double*, double** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load double*, double** %8, align 8
  call void @cftrec1(i32 %24, double* %25, i32 %26, double* %27)
  %28 = load i32, i32* %9, align 4
  %29 = load double*, double** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load i32, i32* %7, align 4
  %34 = load double*, double** %8, align 8
  call void @cftrec2(i32 %28, double* %32, i32 %33, double* %34)
  %35 = load i32, i32* %9, align 4
  %36 = load double*, double** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %36, i64 %39
  %41 = load i32, i32* %7, align 4
  %42 = load double*, double** %8, align 8
  call void @cftrec1(i32 %35, double* %40, i32 %41, double* %42)
  %43 = load i32, i32* %9, align 4
  %44 = load double*, double** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 3, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %44, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = load double*, double** %8, align 8
  call void @cftrec1(i32 %43, double* %48, i32 %49, double* %50)
  br label %56

51:                                               ; preds = %4
  %52 = load i32, i32* %5, align 4
  %53 = load double*, double** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load double*, double** %8, align 8
  call void @cftexp1(i32 %52, double* %53, i32 %54, double* %55)
  br label %56

56:                                               ; preds = %51, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftrec2(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 2
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load double*, double** %6, align 8
  %14 = load double*, double** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %14, i64 %18
  call void @cftmdl2(i32 %12, double* %13, double* %19)
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 512
  br i1 %21, label %22, label %50

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load double*, double** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load double*, double** %8, align 8
  call void @cftrec1(i32 %23, double* %24, i32 %25, double* %26)
  %27 = load i32, i32* %9, align 4
  %28 = load double*, double** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load i32, i32* %7, align 4
  %33 = load double*, double** %8, align 8
  call void @cftrec2(i32 %27, double* %31, i32 %32, double* %33)
  %34 = load i32, i32* %9, align 4
  %35 = load double*, double** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 2, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %35, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = load double*, double** %8, align 8
  call void @cftrec1(i32 %34, double* %39, i32 %40, double* %41)
  %42 = load i32, i32* %9, align 4
  %43 = load double*, double** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 3, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %43, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = load double*, double** %8, align 8
  call void @cftrec2(i32 %42, double* %47, i32 %48, double* %49)
  br label %55

50:                                               ; preds = %4
  %51 = load i32, i32* %5, align 4
  %52 = load double*, double** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load double*, double** %8, align 8
  call void @cftexp2(i32 %51, double* %52, i32 %53, double* %54)
  br label %55

55:                                               ; preds = %50, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftexp1(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 2
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %81, %4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sgt i32 %15, 128
  br i1 %16, label %17, label %98

17:                                               ; preds = %14
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %78, %17
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %72, %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = load double*, double** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double*, double** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 1
  %41 = sub nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %37, i64 %42
  call void @cftmdl1(i32 %32, double* %36, double* %43)
  %44 = load i32, i32* %11, align 4
  %45 = load double*, double** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %45, i64 %49
  %51 = load double*, double** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %51, i64 %55
  call void @cftmdl2(i32 %44, double* %50, double* %56)
  %57 = load i32, i32* %11, align 4
  %58 = load double*, double** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 2, %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %58, i64 %63
  %65 = load double*, double** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %11, align 4
  %68 = ashr i32 %67, 1
  %69 = sub nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %65, i64 %70
  call void @cftmdl1(i32 %57, double* %64, double* %71)
  br label %72

72:                                               ; preds = %31
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 4, %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %27

77:                                               ; preds = %27
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = shl i32 %79, 2
  store i32 %80, i32* %10, align 4
  br label %19

81:                                               ; preds = %19
  %82 = load i32, i32* %11, align 4
  %83 = load double*, double** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %83, i64 %87
  %89 = load double*, double** %8, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %91, 1
  %93 = sub nsw i32 %90, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %89, i64 %94
  call void @cftmdl1(i32 %82, double* %88, double* %95)
  %96 = load i32, i32* %11, align 4
  %97 = ashr i32 %96, 2
  store i32 %97, i32* %11, align 4
  br label %14

98:                                               ; preds = %14
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %185, %98
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %188

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %179, %104
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %184

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load double*, double** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double*, double** %8, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %11, align 4
  %121 = ashr i32 %120, 1
  %122 = sub nsw i32 %119, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %118, i64 %123
  call void @cftmdl1(i32 %113, double* %117, double* %124)
  %125 = load i32, i32* %11, align 4
  %126 = load double*, double** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  %130 = load i32, i32* %7, align 4
  %131 = load double*, double** %8, align 8
  call void @cftfx41(i32 %125, double* %129, i32 %130, double* %131)
  %132 = load i32, i32* %11, align 4
  %133 = load double*, double** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %133, i64 %137
  %139 = load double*, double** %8, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %139, i64 %143
  call void @cftmdl2(i32 %132, double* %138, double* %144)
  %145 = load i32, i32* %11, align 4
  %146 = load double*, double** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %146, i64 %150
  %152 = load i32, i32* %7, align 4
  %153 = load double*, double** %8, align 8
  call void @cftfx42(i32 %145, double* %151, i32 %152, double* %153)
  %154 = load i32, i32* %11, align 4
  %155 = load double*, double** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = mul nsw i32 2, %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %155, i64 %160
  %162 = load double*, double** %8, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %11, align 4
  %165 = ashr i32 %164, 1
  %166 = sub nsw i32 %163, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %162, i64 %167
  call void @cftmdl1(i32 %154, double* %161, double* %168)
  %169 = load i32, i32* %11, align 4
  %170 = load double*, double** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 2, %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %170, i64 %175
  %177 = load i32, i32* %7, align 4
  %178 = load double*, double** %8, align 8
  call void @cftfx41(i32 %169, double* %176, i32 %177, double* %178)
  br label %179

179:                                              ; preds = %112
  %180 = load i32, i32* %10, align 4
  %181 = mul nsw i32 4, %180
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %9, align 4
  br label %108

184:                                              ; preds = %108
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %10, align 4
  %187 = shl i32 %186, 2
  store i32 %187, i32* %10, align 4
  br label %100

188:                                              ; preds = %100
  %189 = load i32, i32* %11, align 4
  %190 = load double*, double** %6, align 8
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %190, i64 %194
  %196 = load double*, double** %8, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %11, align 4
  %199 = ashr i32 %198, 1
  %200 = sub nsw i32 %197, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %196, i64 %201
  call void @cftmdl1(i32 %189, double* %195, double* %202)
  %203 = load i32, i32* %11, align 4
  %204 = load double*, double** %6, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %204, i64 %208
  %210 = load i32, i32* %7, align 4
  %211 = load double*, double** %8, align 8
  call void @cftfx41(i32 %203, double* %209, i32 %210, double* %211)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftfx41(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 128
  br i1 %10, label %11, label %39

11:                                               ; preds = %4
  %12 = load double*, double** %6, align 8
  %13 = load double*, double** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %13, i64 %16
  call void @cftf161(double* %12, double* %17)
  %18 = load double*, double** %6, align 8
  %19 = getelementptr inbounds double, double* %18, i64 32
  %20 = load double*, double** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %20, i64 %23
  call void @cftf162(double* %19, double* %24)
  %25 = load double*, double** %6, align 8
  %26 = getelementptr inbounds double, double* %25, i64 64
  %27 = load double*, double** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %27, i64 %30
  call void @cftf161(double* %26, double* %31)
  %32 = load double*, double** %6, align 8
  %33 = getelementptr inbounds double, double* %32, i64 96
  %34 = load double*, double** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %34, i64 %37
  call void @cftf161(double* %33, double* %38)
  br label %67

39:                                               ; preds = %4
  %40 = load double*, double** %6, align 8
  %41 = load double*, double** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 16
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %41, i64 %44
  call void @cftf081(double* %40, double* %45)
  %46 = load double*, double** %6, align 8
  %47 = getelementptr inbounds double, double* %46, i64 16
  %48 = load double*, double** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 16
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %48, i64 %51
  call void @cftf082(double* %47, double* %52)
  %53 = load double*, double** %6, align 8
  %54 = getelementptr inbounds double, double* %53, i64 32
  %55 = load double*, double** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 16
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %55, i64 %58
  call void @cftf081(double* %54, double* %59)
  %60 = load double*, double** %6, align 8
  %61 = getelementptr inbounds double, double* %60, i64 48
  %62 = load double*, double** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 16
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %62, i64 %65
  call void @cftf081(double* %61, double* %66)
  br label %67

67:                                               ; preds = %39, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitrv2conj(i32 %0, i32* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store double* %2, double** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %21

21:                                               ; preds = %50, %3
  %22 = load i32, i32* %12, align 4
  %23 = shl i32 %22, 3
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %47, %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 2, %54
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 %56, 3
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %386

60:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %382, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %385

65:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %291, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %294

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 2, %71
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %72, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 2, %79
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %10, align 4
  %87 = load double*, double** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  %91 = load double, double* %90, align 8
  store double %91, double* %14, align 8
  %92 = load double*, double** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %92, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fneg double %97
  store double %98, double* %15, align 8
  %99 = load double*, double** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  %103 = load double, double* %102, align 8
  store double %103, double* %16, align 8
  %104 = load double*, double** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %104, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fneg double %109
  store double %110, double* %17, align 8
  %111 = load double, double* %16, align 8
  %112 = load double*, double** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  store double %111, double* %115, align 8
  %116 = load double, double* %17, align 8
  %117 = load double*, double** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %117, i64 %120
  store double %116, double* %121, align 8
  %122 = load double, double* %14, align 8
  %123 = load double*, double** %6, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %123, i64 %125
  store double %122, double* %126, align 8
  %127 = load double, double* %15, align 8
  %128 = load double*, double** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %128, i64 %131
  store double %127, double* %132, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %13, align 4
  %137 = mul nsw i32 2, %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load double*, double** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  %144 = load double, double* %143, align 8
  store double %144, double* %14, align 8
  %145 = load double*, double** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %145, i64 %148
  %150 = load double, double* %149, align 8
  %151 = fneg double %150
  store double %151, double* %15, align 8
  %152 = load double*, double** %6, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, double* %152, i64 %154
  %156 = load double, double* %155, align 8
  store double %156, double* %16, align 8
  %157 = load double*, double** %6, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %157, i64 %160
  %162 = load double, double* %161, align 8
  %163 = fneg double %162
  store double %163, double* %17, align 8
  %164 = load double, double* %16, align 8
  %165 = load double*, double** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %165, i64 %167
  store double %164, double* %168, align 8
  %169 = load double, double* %17, align 8
  %170 = load double*, double** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %170, i64 %173
  store double %169, double* %174, align 8
  %175 = load double, double* %14, align 8
  %176 = load double*, double** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %176, i64 %178
  store double %175, double* %179, align 8
  %180 = load double, double* %15, align 8
  %181 = load double*, double** %6, align 8
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double, double* %181, i64 %184
  store double %180, double* %185, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 %190, %189
  store i32 %191, i32* %10, align 4
  %192 = load double*, double** %6, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %192, i64 %194
  %196 = load double, double* %195, align 8
  store double %196, double* %14, align 8
  %197 = load double*, double** %6, align 8
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %197, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fneg double %202
  store double %203, double* %15, align 8
  %204 = load double*, double** %6, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  %208 = load double, double* %207, align 8
  store double %208, double* %16, align 8
  %209 = load double*, double** %6, align 8
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %209, i64 %212
  %214 = load double, double* %213, align 8
  %215 = fneg double %214
  store double %215, double* %17, align 8
  %216 = load double, double* %16, align 8
  %217 = load double*, double** %6, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds double, double* %217, i64 %219
  store double %216, double* %220, align 8
  %221 = load double, double* %17, align 8
  %222 = load double*, double** %6, align 8
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %222, i64 %225
  store double %221, double* %226, align 8
  %227 = load double, double* %14, align 8
  %228 = load double*, double** %6, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, double* %228, i64 %230
  store double %227, double* %231, align 8
  %232 = load double, double* %15, align 8
  %233 = load double*, double** %6, align 8
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds double, double* %233, i64 %236
  store double %232, double* %237, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %13, align 4
  %242 = mul nsw i32 2, %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load double*, double** %6, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, double* %245, i64 %247
  %249 = load double, double* %248, align 8
  store double %249, double* %14, align 8
  %250 = load double*, double** %6, align 8
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %250, i64 %253
  %255 = load double, double* %254, align 8
  %256 = fneg double %255
  store double %256, double* %15, align 8
  %257 = load double*, double** %6, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds double, double* %257, i64 %259
  %261 = load double, double* %260, align 8
  store double %261, double* %16, align 8
  %262 = load double*, double** %6, align 8
  %263 = load i32, i32* %10, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, double* %262, i64 %265
  %267 = load double, double* %266, align 8
  %268 = fneg double %267
  store double %268, double* %17, align 8
  %269 = load double, double* %16, align 8
  %270 = load double*, double** %6, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, double* %270, i64 %272
  store double %269, double* %273, align 8
  %274 = load double, double* %17, align 8
  %275 = load double*, double** %6, align 8
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %275, i64 %278
  store double %274, double* %279, align 8
  %280 = load double, double* %14, align 8
  %281 = load double*, double** %6, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double, double* %281, i64 %283
  store double %280, double* %284, align 8
  %285 = load double, double* %15, align 8
  %286 = load double*, double** %6, align 8
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds double, double* %286, i64 %289
  store double %285, double* %290, align 8
  br label %291

291:                                              ; preds = %70
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %7, align 4
  br label %66

294:                                              ; preds = %66
  %295 = load i32, i32* %9, align 4
  %296 = mul nsw i32 2, %295
  %297 = load i32*, i32** %5, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %296, %301
  store i32 %302, i32* %10, align 4
  %303 = load double*, double** %6, align 8
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double, double* %303, i64 %306
  %308 = load double, double* %307, align 8
  %309 = fneg double %308
  %310 = load double*, double** %6, align 8
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %310, i64 %313
  store double %309, double* %314, align 8
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %315, %316
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %318, %319
  store i32 %320, i32* %10, align 4
  %321 = load double*, double** %6, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds double, double* %321, i64 %323
  %325 = load double, double* %324, align 8
  store double %325, double* %14, align 8
  %326 = load double*, double** %6, align 8
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds double, double* %326, i64 %329
  %331 = load double, double* %330, align 8
  %332 = fneg double %331
  store double %332, double* %15, align 8
  %333 = load double*, double** %6, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds double, double* %333, i64 %335
  %337 = load double, double* %336, align 8
  store double %337, double* %16, align 8
  %338 = load double*, double** %6, align 8
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double, double* %338, i64 %341
  %343 = load double, double* %342, align 8
  %344 = fneg double %343
  store double %344, double* %17, align 8
  %345 = load double, double* %16, align 8
  %346 = load double*, double** %6, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds double, double* %346, i64 %348
  store double %345, double* %349, align 8
  %350 = load double, double* %17, align 8
  %351 = load double*, double** %6, align 8
  %352 = load i32, i32* %8, align 4
  %353 = add nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds double, double* %351, i64 %354
  store double %350, double* %355, align 8
  %356 = load double, double* %14, align 8
  %357 = load double*, double** %6, align 8
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds double, double* %357, i64 %359
  store double %356, double* %360, align 8
  %361 = load double, double* %15, align 8
  %362 = load double*, double** %6, align 8
  %363 = load i32, i32* %10, align 4
  %364 = add nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, double* %362, i64 %365
  store double %361, double* %366, align 8
  %367 = load i32, i32* %13, align 4
  %368 = load i32, i32* %10, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %10, align 4
  %370 = load double*, double** %6, align 8
  %371 = load i32, i32* %10, align 4
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds double, double* %370, i64 %373
  %375 = load double, double* %374, align 8
  %376 = fneg double %375
  %377 = load double*, double** %6, align 8
  %378 = load i32, i32* %10, align 4
  %379 = add nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double, double* %377, i64 %380
  store double %376, double* %381, align 8
  br label %382

382:                                              ; preds = %294
  %383 = load i32, i32* %9, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %9, align 4
  br label %61

385:                                              ; preds = %61
  br label %573

386:                                              ; preds = %53
  %387 = load double*, double** %6, align 8
  %388 = getelementptr inbounds double, double* %387, i64 1
  %389 = load double, double* %388, align 8
  %390 = fneg double %389
  %391 = load double*, double** %6, align 8
  %392 = getelementptr inbounds double, double* %391, i64 1
  store double %390, double* %392, align 8
  %393 = load double*, double** %6, align 8
  %394 = load i32, i32* %13, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, double* %393, i64 %396
  %398 = load double, double* %397, align 8
  %399 = fneg double %398
  %400 = load double*, double** %6, align 8
  %401 = load i32, i32* %13, align 4
  %402 = add nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %400, i64 %403
  store double %399, double* %404, align 8
  store i32 1, i32* %9, align 4
  br label %405

405:                                              ; preds = %569, %386
  %406 = load i32, i32* %9, align 4
  %407 = load i32, i32* %12, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %572

409:                                              ; preds = %405
  store i32 0, i32* %7, align 4
  br label %410

410:                                              ; preds = %529, %409
  %411 = load i32, i32* %7, align 4
  %412 = load i32, i32* %9, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %532

414:                                              ; preds = %410
  %415 = load i32, i32* %7, align 4
  %416 = mul nsw i32 2, %415
  %417 = load i32*, i32** %5, align 8
  %418 = load i32, i32* %9, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %416, %421
  store i32 %422, i32* %8, align 4
  %423 = load i32, i32* %9, align 4
  %424 = mul nsw i32 2, %423
  %425 = load i32*, i32** %5, align 8
  %426 = load i32, i32* %7, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %424, %429
  store i32 %430, i32* %10, align 4
  %431 = load double*, double** %6, align 8
  %432 = load i32, i32* %8, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %431, i64 %433
  %435 = load double, double* %434, align 8
  store double %435, double* %14, align 8
  %436 = load double*, double** %6, align 8
  %437 = load i32, i32* %8, align 4
  %438 = add nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds double, double* %436, i64 %439
  %441 = load double, double* %440, align 8
  %442 = fneg double %441
  store double %442, double* %15, align 8
  %443 = load double*, double** %6, align 8
  %444 = load i32, i32* %10, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %443, i64 %445
  %447 = load double, double* %446, align 8
  store double %447, double* %16, align 8
  %448 = load double*, double** %6, align 8
  %449 = load i32, i32* %10, align 4
  %450 = add nsw i32 %449, 1
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds double, double* %448, i64 %451
  %453 = load double, double* %452, align 8
  %454 = fneg double %453
  store double %454, double* %17, align 8
  %455 = load double, double* %16, align 8
  %456 = load double*, double** %6, align 8
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds double, double* %456, i64 %458
  store double %455, double* %459, align 8
  %460 = load double, double* %17, align 8
  %461 = load double*, double** %6, align 8
  %462 = load i32, i32* %8, align 4
  %463 = add nsw i32 %462, 1
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds double, double* %461, i64 %464
  store double %460, double* %465, align 8
  %466 = load double, double* %14, align 8
  %467 = load double*, double** %6, align 8
  %468 = load i32, i32* %10, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds double, double* %467, i64 %469
  store double %466, double* %470, align 8
  %471 = load double, double* %15, align 8
  %472 = load double*, double** %6, align 8
  %473 = load i32, i32* %10, align 4
  %474 = add nsw i32 %473, 1
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds double, double* %472, i64 %475
  store double %471, double* %476, align 8
  %477 = load i32, i32* %13, align 4
  %478 = load i32, i32* %8, align 4
  %479 = add nsw i32 %478, %477
  store i32 %479, i32* %8, align 4
  %480 = load i32, i32* %13, align 4
  %481 = load i32, i32* %10, align 4
  %482 = add nsw i32 %481, %480
  store i32 %482, i32* %10, align 4
  %483 = load double*, double** %6, align 8
  %484 = load i32, i32* %8, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds double, double* %483, i64 %485
  %487 = load double, double* %486, align 8
  store double %487, double* %14, align 8
  %488 = load double*, double** %6, align 8
  %489 = load i32, i32* %8, align 4
  %490 = add nsw i32 %489, 1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds double, double* %488, i64 %491
  %493 = load double, double* %492, align 8
  %494 = fneg double %493
  store double %494, double* %15, align 8
  %495 = load double*, double** %6, align 8
  %496 = load i32, i32* %10, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds double, double* %495, i64 %497
  %499 = load double, double* %498, align 8
  store double %499, double* %16, align 8
  %500 = load double*, double** %6, align 8
  %501 = load i32, i32* %10, align 4
  %502 = add nsw i32 %501, 1
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds double, double* %500, i64 %503
  %505 = load double, double* %504, align 8
  %506 = fneg double %505
  store double %506, double* %17, align 8
  %507 = load double, double* %16, align 8
  %508 = load double*, double** %6, align 8
  %509 = load i32, i32* %8, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds double, double* %508, i64 %510
  store double %507, double* %511, align 8
  %512 = load double, double* %17, align 8
  %513 = load double*, double** %6, align 8
  %514 = load i32, i32* %8, align 4
  %515 = add nsw i32 %514, 1
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds double, double* %513, i64 %516
  store double %512, double* %517, align 8
  %518 = load double, double* %14, align 8
  %519 = load double*, double** %6, align 8
  %520 = load i32, i32* %10, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds double, double* %519, i64 %521
  store double %518, double* %522, align 8
  %523 = load double, double* %15, align 8
  %524 = load double*, double** %6, align 8
  %525 = load i32, i32* %10, align 4
  %526 = add nsw i32 %525, 1
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds double, double* %524, i64 %527
  store double %523, double* %528, align 8
  br label %529

529:                                              ; preds = %414
  %530 = load i32, i32* %7, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %7, align 4
  br label %410

532:                                              ; preds = %410
  %533 = load i32, i32* %9, align 4
  %534 = mul nsw i32 2, %533
  %535 = load i32*, i32** %5, align 8
  %536 = load i32, i32* %9, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = add nsw i32 %534, %539
  store i32 %540, i32* %10, align 4
  %541 = load double*, double** %6, align 8
  %542 = load i32, i32* %10, align 4
  %543 = add nsw i32 %542, 1
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds double, double* %541, i64 %544
  %546 = load double, double* %545, align 8
  %547 = fneg double %546
  %548 = load double*, double** %6, align 8
  %549 = load i32, i32* %10, align 4
  %550 = add nsw i32 %549, 1
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds double, double* %548, i64 %551
  store double %547, double* %552, align 8
  %553 = load double*, double** %6, align 8
  %554 = load i32, i32* %10, align 4
  %555 = load i32, i32* %13, align 4
  %556 = add nsw i32 %554, %555
  %557 = add nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds double, double* %553, i64 %558
  %560 = load double, double* %559, align 8
  %561 = fneg double %560
  %562 = load double*, double** %6, align 8
  %563 = load i32, i32* %10, align 4
  %564 = load i32, i32* %13, align 4
  %565 = add nsw i32 %563, %564
  %566 = add nsw i32 %565, 1
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds double, double* %562, i64 %567
  store double %561, double* %568, align 8
  br label %569

569:                                              ; preds = %532
  %570 = load i32, i32* %9, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %9, align 4
  br label %405

572:                                              ; preds = %405
  br label %573

573:                                              ; preds = %572, %385
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftf161(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %48 = load double*, double** %4, align 8
  %49 = getelementptr inbounds double, double* %48, i64 1
  %50 = load double, double* %49, align 8
  store double %50, double* %5, align 8
  %51 = load double, double* %5, align 8
  %52 = load double*, double** %4, align 8
  %53 = getelementptr inbounds double, double* %52, i64 2
  %54 = load double, double* %53, align 8
  %55 = fmul double %51, %54
  store double %55, double* %7, align 8
  %56 = load double, double* %7, align 8
  %57 = load double*, double** %4, align 8
  %58 = getelementptr inbounds double, double* %57, i64 2
  %59 = load double, double* %58, align 8
  %60 = fadd double %56, %59
  store double %60, double* %6, align 8
  %61 = load double*, double** %3, align 8
  %62 = getelementptr inbounds double, double* %61, i64 0
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %3, align 8
  %65 = getelementptr inbounds double, double* %64, i64 16
  %66 = load double, double* %65, align 8
  %67 = fadd double %63, %66
  store double %67, double* %8, align 8
  %68 = load double*, double** %3, align 8
  %69 = getelementptr inbounds double, double* %68, i64 1
  %70 = load double, double* %69, align 8
  %71 = load double*, double** %3, align 8
  %72 = getelementptr inbounds double, double* %71, i64 17
  %73 = load double, double* %72, align 8
  %74 = fadd double %70, %73
  store double %74, double* %9, align 8
  %75 = load double*, double** %3, align 8
  %76 = getelementptr inbounds double, double* %75, i64 0
  %77 = load double, double* %76, align 8
  %78 = load double*, double** %3, align 8
  %79 = getelementptr inbounds double, double* %78, i64 16
  %80 = load double, double* %79, align 8
  %81 = fsub double %77, %80
  store double %81, double* %10, align 8
  %82 = load double*, double** %3, align 8
  %83 = getelementptr inbounds double, double* %82, i64 1
  %84 = load double, double* %83, align 8
  %85 = load double*, double** %3, align 8
  %86 = getelementptr inbounds double, double* %85, i64 17
  %87 = load double, double* %86, align 8
  %88 = fsub double %84, %87
  store double %88, double* %11, align 8
  %89 = load double*, double** %3, align 8
  %90 = getelementptr inbounds double, double* %89, i64 8
  %91 = load double, double* %90, align 8
  %92 = load double*, double** %3, align 8
  %93 = getelementptr inbounds double, double* %92, i64 24
  %94 = load double, double* %93, align 8
  %95 = fadd double %91, %94
  store double %95, double* %12, align 8
  %96 = load double*, double** %3, align 8
  %97 = getelementptr inbounds double, double* %96, i64 9
  %98 = load double, double* %97, align 8
  %99 = load double*, double** %3, align 8
  %100 = getelementptr inbounds double, double* %99, i64 25
  %101 = load double, double* %100, align 8
  %102 = fadd double %98, %101
  store double %102, double* %13, align 8
  %103 = load double*, double** %3, align 8
  %104 = getelementptr inbounds double, double* %103, i64 8
  %105 = load double, double* %104, align 8
  %106 = load double*, double** %3, align 8
  %107 = getelementptr inbounds double, double* %106, i64 24
  %108 = load double, double* %107, align 8
  %109 = fsub double %105, %108
  store double %109, double* %14, align 8
  %110 = load double*, double** %3, align 8
  %111 = getelementptr inbounds double, double* %110, i64 9
  %112 = load double, double* %111, align 8
  %113 = load double*, double** %3, align 8
  %114 = getelementptr inbounds double, double* %113, i64 25
  %115 = load double, double* %114, align 8
  %116 = fsub double %112, %115
  store double %116, double* %15, align 8
  %117 = load double, double* %8, align 8
  %118 = load double, double* %12, align 8
  %119 = fadd double %117, %118
  store double %119, double* %16, align 8
  %120 = load double, double* %9, align 8
  %121 = load double, double* %13, align 8
  %122 = fadd double %120, %121
  store double %122, double* %17, align 8
  %123 = load double, double* %8, align 8
  %124 = load double, double* %12, align 8
  %125 = fsub double %123, %124
  store double %125, double* %24, align 8
  %126 = load double, double* %9, align 8
  %127 = load double, double* %13, align 8
  %128 = fsub double %126, %127
  store double %128, double* %25, align 8
  %129 = load double, double* %10, align 8
  %130 = load double, double* %15, align 8
  %131 = fsub double %129, %130
  store double %131, double* %32, align 8
  %132 = load double, double* %11, align 8
  %133 = load double, double* %14, align 8
  %134 = fadd double %132, %133
  store double %134, double* %33, align 8
  %135 = load double, double* %10, align 8
  %136 = load double, double* %15, align 8
  %137 = fadd double %135, %136
  store double %137, double* %40, align 8
  %138 = load double, double* %11, align 8
  %139 = load double, double* %14, align 8
  %140 = fsub double %138, %139
  store double %140, double* %41, align 8
  %141 = load double*, double** %3, align 8
  %142 = getelementptr inbounds double, double* %141, i64 2
  %143 = load double, double* %142, align 8
  %144 = load double*, double** %3, align 8
  %145 = getelementptr inbounds double, double* %144, i64 18
  %146 = load double, double* %145, align 8
  %147 = fadd double %143, %146
  store double %147, double* %8, align 8
  %148 = load double*, double** %3, align 8
  %149 = getelementptr inbounds double, double* %148, i64 3
  %150 = load double, double* %149, align 8
  %151 = load double*, double** %3, align 8
  %152 = getelementptr inbounds double, double* %151, i64 19
  %153 = load double, double* %152, align 8
  %154 = fadd double %150, %153
  store double %154, double* %9, align 8
  %155 = load double*, double** %3, align 8
  %156 = getelementptr inbounds double, double* %155, i64 2
  %157 = load double, double* %156, align 8
  %158 = load double*, double** %3, align 8
  %159 = getelementptr inbounds double, double* %158, i64 18
  %160 = load double, double* %159, align 8
  %161 = fsub double %157, %160
  store double %161, double* %10, align 8
  %162 = load double*, double** %3, align 8
  %163 = getelementptr inbounds double, double* %162, i64 3
  %164 = load double, double* %163, align 8
  %165 = load double*, double** %3, align 8
  %166 = getelementptr inbounds double, double* %165, i64 19
  %167 = load double, double* %166, align 8
  %168 = fsub double %164, %167
  store double %168, double* %11, align 8
  %169 = load double*, double** %3, align 8
  %170 = getelementptr inbounds double, double* %169, i64 10
  %171 = load double, double* %170, align 8
  %172 = load double*, double** %3, align 8
  %173 = getelementptr inbounds double, double* %172, i64 26
  %174 = load double, double* %173, align 8
  %175 = fadd double %171, %174
  store double %175, double* %12, align 8
  %176 = load double*, double** %3, align 8
  %177 = getelementptr inbounds double, double* %176, i64 11
  %178 = load double, double* %177, align 8
  %179 = load double*, double** %3, align 8
  %180 = getelementptr inbounds double, double* %179, i64 27
  %181 = load double, double* %180, align 8
  %182 = fadd double %178, %181
  store double %182, double* %13, align 8
  %183 = load double*, double** %3, align 8
  %184 = getelementptr inbounds double, double* %183, i64 10
  %185 = load double, double* %184, align 8
  %186 = load double*, double** %3, align 8
  %187 = getelementptr inbounds double, double* %186, i64 26
  %188 = load double, double* %187, align 8
  %189 = fsub double %185, %188
  store double %189, double* %14, align 8
  %190 = load double*, double** %3, align 8
  %191 = getelementptr inbounds double, double* %190, i64 11
  %192 = load double, double* %191, align 8
  %193 = load double*, double** %3, align 8
  %194 = getelementptr inbounds double, double* %193, i64 27
  %195 = load double, double* %194, align 8
  %196 = fsub double %192, %195
  store double %196, double* %15, align 8
  %197 = load double, double* %8, align 8
  %198 = load double, double* %12, align 8
  %199 = fadd double %197, %198
  store double %199, double* %18, align 8
  %200 = load double, double* %9, align 8
  %201 = load double, double* %13, align 8
  %202 = fadd double %200, %201
  store double %202, double* %19, align 8
  %203 = load double, double* %8, align 8
  %204 = load double, double* %12, align 8
  %205 = fsub double %203, %204
  store double %205, double* %26, align 8
  %206 = load double, double* %9, align 8
  %207 = load double, double* %13, align 8
  %208 = fsub double %206, %207
  store double %208, double* %27, align 8
  %209 = load double, double* %10, align 8
  %210 = load double, double* %15, align 8
  %211 = fsub double %209, %210
  store double %211, double* %8, align 8
  %212 = load double, double* %11, align 8
  %213 = load double, double* %14, align 8
  %214 = fadd double %212, %213
  store double %214, double* %9, align 8
  %215 = load double, double* %6, align 8
  %216 = load double, double* %8, align 8
  %217 = fmul double %215, %216
  %218 = load double, double* %7, align 8
  %219 = load double, double* %9, align 8
  %220 = fmul double %218, %219
  %221 = fsub double %217, %220
  store double %221, double* %34, align 8
  %222 = load double, double* %6, align 8
  %223 = load double, double* %9, align 8
  %224 = fmul double %222, %223
  %225 = load double, double* %7, align 8
  %226 = load double, double* %8, align 8
  %227 = fmul double %225, %226
  %228 = fadd double %224, %227
  store double %228, double* %35, align 8
  %229 = load double, double* %10, align 8
  %230 = load double, double* %15, align 8
  %231 = fadd double %229, %230
  store double %231, double* %8, align 8
  %232 = load double, double* %11, align 8
  %233 = load double, double* %14, align 8
  %234 = fsub double %232, %233
  store double %234, double* %9, align 8
  %235 = load double, double* %7, align 8
  %236 = load double, double* %8, align 8
  %237 = fmul double %235, %236
  %238 = load double, double* %6, align 8
  %239 = load double, double* %9, align 8
  %240 = fmul double %238, %239
  %241 = fsub double %237, %240
  store double %241, double* %42, align 8
  %242 = load double, double* %7, align 8
  %243 = load double, double* %9, align 8
  %244 = fmul double %242, %243
  %245 = load double, double* %6, align 8
  %246 = load double, double* %8, align 8
  %247 = fmul double %245, %246
  %248 = fadd double %244, %247
  store double %248, double* %43, align 8
  %249 = load double*, double** %3, align 8
  %250 = getelementptr inbounds double, double* %249, i64 4
  %251 = load double, double* %250, align 8
  %252 = load double*, double** %3, align 8
  %253 = getelementptr inbounds double, double* %252, i64 20
  %254 = load double, double* %253, align 8
  %255 = fadd double %251, %254
  store double %255, double* %8, align 8
  %256 = load double*, double** %3, align 8
  %257 = getelementptr inbounds double, double* %256, i64 5
  %258 = load double, double* %257, align 8
  %259 = load double*, double** %3, align 8
  %260 = getelementptr inbounds double, double* %259, i64 21
  %261 = load double, double* %260, align 8
  %262 = fadd double %258, %261
  store double %262, double* %9, align 8
  %263 = load double*, double** %3, align 8
  %264 = getelementptr inbounds double, double* %263, i64 4
  %265 = load double, double* %264, align 8
  %266 = load double*, double** %3, align 8
  %267 = getelementptr inbounds double, double* %266, i64 20
  %268 = load double, double* %267, align 8
  %269 = fsub double %265, %268
  store double %269, double* %10, align 8
  %270 = load double*, double** %3, align 8
  %271 = getelementptr inbounds double, double* %270, i64 5
  %272 = load double, double* %271, align 8
  %273 = load double*, double** %3, align 8
  %274 = getelementptr inbounds double, double* %273, i64 21
  %275 = load double, double* %274, align 8
  %276 = fsub double %272, %275
  store double %276, double* %11, align 8
  %277 = load double*, double** %3, align 8
  %278 = getelementptr inbounds double, double* %277, i64 12
  %279 = load double, double* %278, align 8
  %280 = load double*, double** %3, align 8
  %281 = getelementptr inbounds double, double* %280, i64 28
  %282 = load double, double* %281, align 8
  %283 = fadd double %279, %282
  store double %283, double* %12, align 8
  %284 = load double*, double** %3, align 8
  %285 = getelementptr inbounds double, double* %284, i64 13
  %286 = load double, double* %285, align 8
  %287 = load double*, double** %3, align 8
  %288 = getelementptr inbounds double, double* %287, i64 29
  %289 = load double, double* %288, align 8
  %290 = fadd double %286, %289
  store double %290, double* %13, align 8
  %291 = load double*, double** %3, align 8
  %292 = getelementptr inbounds double, double* %291, i64 12
  %293 = load double, double* %292, align 8
  %294 = load double*, double** %3, align 8
  %295 = getelementptr inbounds double, double* %294, i64 28
  %296 = load double, double* %295, align 8
  %297 = fsub double %293, %296
  store double %297, double* %14, align 8
  %298 = load double*, double** %3, align 8
  %299 = getelementptr inbounds double, double* %298, i64 13
  %300 = load double, double* %299, align 8
  %301 = load double*, double** %3, align 8
  %302 = getelementptr inbounds double, double* %301, i64 29
  %303 = load double, double* %302, align 8
  %304 = fsub double %300, %303
  store double %304, double* %15, align 8
  %305 = load double, double* %8, align 8
  %306 = load double, double* %12, align 8
  %307 = fadd double %305, %306
  store double %307, double* %20, align 8
  %308 = load double, double* %9, align 8
  %309 = load double, double* %13, align 8
  %310 = fadd double %308, %309
  store double %310, double* %21, align 8
  %311 = load double, double* %8, align 8
  %312 = load double, double* %12, align 8
  %313 = fsub double %311, %312
  store double %313, double* %28, align 8
  %314 = load double, double* %9, align 8
  %315 = load double, double* %13, align 8
  %316 = fsub double %314, %315
  store double %316, double* %29, align 8
  %317 = load double, double* %10, align 8
  %318 = load double, double* %15, align 8
  %319 = fsub double %317, %318
  store double %319, double* %8, align 8
  %320 = load double, double* %11, align 8
  %321 = load double, double* %14, align 8
  %322 = fadd double %320, %321
  store double %322, double* %9, align 8
  %323 = load double, double* %5, align 8
  %324 = load double, double* %8, align 8
  %325 = load double, double* %9, align 8
  %326 = fsub double %324, %325
  %327 = fmul double %323, %326
  store double %327, double* %36, align 8
  %328 = load double, double* %5, align 8
  %329 = load double, double* %9, align 8
  %330 = load double, double* %8, align 8
  %331 = fadd double %329, %330
  %332 = fmul double %328, %331
  store double %332, double* %37, align 8
  %333 = load double, double* %10, align 8
  %334 = load double, double* %15, align 8
  %335 = fadd double %333, %334
  store double %335, double* %8, align 8
  %336 = load double, double* %11, align 8
  %337 = load double, double* %14, align 8
  %338 = fsub double %336, %337
  store double %338, double* %9, align 8
  %339 = load double, double* %5, align 8
  %340 = load double, double* %8, align 8
  %341 = load double, double* %9, align 8
  %342 = fadd double %340, %341
  %343 = fmul double %339, %342
  store double %343, double* %44, align 8
  %344 = load double, double* %5, align 8
  %345 = load double, double* %9, align 8
  %346 = load double, double* %8, align 8
  %347 = fsub double %345, %346
  %348 = fmul double %344, %347
  store double %348, double* %45, align 8
  %349 = load double*, double** %3, align 8
  %350 = getelementptr inbounds double, double* %349, i64 6
  %351 = load double, double* %350, align 8
  %352 = load double*, double** %3, align 8
  %353 = getelementptr inbounds double, double* %352, i64 22
  %354 = load double, double* %353, align 8
  %355 = fadd double %351, %354
  store double %355, double* %8, align 8
  %356 = load double*, double** %3, align 8
  %357 = getelementptr inbounds double, double* %356, i64 7
  %358 = load double, double* %357, align 8
  %359 = load double*, double** %3, align 8
  %360 = getelementptr inbounds double, double* %359, i64 23
  %361 = load double, double* %360, align 8
  %362 = fadd double %358, %361
  store double %362, double* %9, align 8
  %363 = load double*, double** %3, align 8
  %364 = getelementptr inbounds double, double* %363, i64 6
  %365 = load double, double* %364, align 8
  %366 = load double*, double** %3, align 8
  %367 = getelementptr inbounds double, double* %366, i64 22
  %368 = load double, double* %367, align 8
  %369 = fsub double %365, %368
  store double %369, double* %10, align 8
  %370 = load double*, double** %3, align 8
  %371 = getelementptr inbounds double, double* %370, i64 7
  %372 = load double, double* %371, align 8
  %373 = load double*, double** %3, align 8
  %374 = getelementptr inbounds double, double* %373, i64 23
  %375 = load double, double* %374, align 8
  %376 = fsub double %372, %375
  store double %376, double* %11, align 8
  %377 = load double*, double** %3, align 8
  %378 = getelementptr inbounds double, double* %377, i64 14
  %379 = load double, double* %378, align 8
  %380 = load double*, double** %3, align 8
  %381 = getelementptr inbounds double, double* %380, i64 30
  %382 = load double, double* %381, align 8
  %383 = fadd double %379, %382
  store double %383, double* %12, align 8
  %384 = load double*, double** %3, align 8
  %385 = getelementptr inbounds double, double* %384, i64 15
  %386 = load double, double* %385, align 8
  %387 = load double*, double** %3, align 8
  %388 = getelementptr inbounds double, double* %387, i64 31
  %389 = load double, double* %388, align 8
  %390 = fadd double %386, %389
  store double %390, double* %13, align 8
  %391 = load double*, double** %3, align 8
  %392 = getelementptr inbounds double, double* %391, i64 14
  %393 = load double, double* %392, align 8
  %394 = load double*, double** %3, align 8
  %395 = getelementptr inbounds double, double* %394, i64 30
  %396 = load double, double* %395, align 8
  %397 = fsub double %393, %396
  store double %397, double* %14, align 8
  %398 = load double*, double** %3, align 8
  %399 = getelementptr inbounds double, double* %398, i64 15
  %400 = load double, double* %399, align 8
  %401 = load double*, double** %3, align 8
  %402 = getelementptr inbounds double, double* %401, i64 31
  %403 = load double, double* %402, align 8
  %404 = fsub double %400, %403
  store double %404, double* %15, align 8
  %405 = load double, double* %8, align 8
  %406 = load double, double* %12, align 8
  %407 = fadd double %405, %406
  store double %407, double* %22, align 8
  %408 = load double, double* %9, align 8
  %409 = load double, double* %13, align 8
  %410 = fadd double %408, %409
  store double %410, double* %23, align 8
  %411 = load double, double* %8, align 8
  %412 = load double, double* %12, align 8
  %413 = fsub double %411, %412
  store double %413, double* %30, align 8
  %414 = load double, double* %9, align 8
  %415 = load double, double* %13, align 8
  %416 = fsub double %414, %415
  store double %416, double* %31, align 8
  %417 = load double, double* %10, align 8
  %418 = load double, double* %15, align 8
  %419 = fsub double %417, %418
  store double %419, double* %8, align 8
  %420 = load double, double* %11, align 8
  %421 = load double, double* %14, align 8
  %422 = fadd double %420, %421
  store double %422, double* %9, align 8
  %423 = load double, double* %7, align 8
  %424 = load double, double* %8, align 8
  %425 = fmul double %423, %424
  %426 = load double, double* %6, align 8
  %427 = load double, double* %9, align 8
  %428 = fmul double %426, %427
  %429 = fsub double %425, %428
  store double %429, double* %38, align 8
  %430 = load double, double* %7, align 8
  %431 = load double, double* %9, align 8
  %432 = fmul double %430, %431
  %433 = load double, double* %6, align 8
  %434 = load double, double* %8, align 8
  %435 = fmul double %433, %434
  %436 = fadd double %432, %435
  store double %436, double* %39, align 8
  %437 = load double, double* %10, align 8
  %438 = load double, double* %15, align 8
  %439 = fadd double %437, %438
  store double %439, double* %8, align 8
  %440 = load double, double* %11, align 8
  %441 = load double, double* %14, align 8
  %442 = fsub double %440, %441
  store double %442, double* %9, align 8
  %443 = load double, double* %6, align 8
  %444 = load double, double* %8, align 8
  %445 = fmul double %443, %444
  %446 = load double, double* %7, align 8
  %447 = load double, double* %9, align 8
  %448 = fmul double %446, %447
  %449 = fsub double %445, %448
  store double %449, double* %46, align 8
  %450 = load double, double* %6, align 8
  %451 = load double, double* %9, align 8
  %452 = fmul double %450, %451
  %453 = load double, double* %7, align 8
  %454 = load double, double* %8, align 8
  %455 = fmul double %453, %454
  %456 = fadd double %452, %455
  store double %456, double* %47, align 8
  %457 = load double, double* %40, align 8
  %458 = load double, double* %44, align 8
  %459 = fsub double %457, %458
  store double %459, double* %8, align 8
  %460 = load double, double* %41, align 8
  %461 = load double, double* %45, align 8
  %462 = fsub double %460, %461
  store double %462, double* %9, align 8
  %463 = load double, double* %40, align 8
  %464 = load double, double* %44, align 8
  %465 = fadd double %463, %464
  store double %465, double* %10, align 8
  %466 = load double, double* %41, align 8
  %467 = load double, double* %45, align 8
  %468 = fadd double %466, %467
  store double %468, double* %11, align 8
  %469 = load double, double* %42, align 8
  %470 = load double, double* %46, align 8
  %471 = fsub double %469, %470
  store double %471, double* %12, align 8
  %472 = load double, double* %43, align 8
  %473 = load double, double* %47, align 8
  %474 = fsub double %472, %473
  store double %474, double* %13, align 8
  %475 = load double, double* %42, align 8
  %476 = load double, double* %46, align 8
  %477 = fadd double %475, %476
  store double %477, double* %14, align 8
  %478 = load double, double* %43, align 8
  %479 = load double, double* %47, align 8
  %480 = fadd double %478, %479
  store double %480, double* %15, align 8
  %481 = load double, double* %8, align 8
  %482 = load double, double* %12, align 8
  %483 = fadd double %481, %482
  %484 = load double*, double** %3, align 8
  %485 = getelementptr inbounds double, double* %484, i64 24
  store double %483, double* %485, align 8
  %486 = load double, double* %9, align 8
  %487 = load double, double* %13, align 8
  %488 = fadd double %486, %487
  %489 = load double*, double** %3, align 8
  %490 = getelementptr inbounds double, double* %489, i64 25
  store double %488, double* %490, align 8
  %491 = load double, double* %8, align 8
  %492 = load double, double* %12, align 8
  %493 = fsub double %491, %492
  %494 = load double*, double** %3, align 8
  %495 = getelementptr inbounds double, double* %494, i64 26
  store double %493, double* %495, align 8
  %496 = load double, double* %9, align 8
  %497 = load double, double* %13, align 8
  %498 = fsub double %496, %497
  %499 = load double*, double** %3, align 8
  %500 = getelementptr inbounds double, double* %499, i64 27
  store double %498, double* %500, align 8
  %501 = load double, double* %10, align 8
  %502 = load double, double* %15, align 8
  %503 = fsub double %501, %502
  %504 = load double*, double** %3, align 8
  %505 = getelementptr inbounds double, double* %504, i64 28
  store double %503, double* %505, align 8
  %506 = load double, double* %11, align 8
  %507 = load double, double* %14, align 8
  %508 = fadd double %506, %507
  %509 = load double*, double** %3, align 8
  %510 = getelementptr inbounds double, double* %509, i64 29
  store double %508, double* %510, align 8
  %511 = load double, double* %10, align 8
  %512 = load double, double* %15, align 8
  %513 = fadd double %511, %512
  %514 = load double*, double** %3, align 8
  %515 = getelementptr inbounds double, double* %514, i64 30
  store double %513, double* %515, align 8
  %516 = load double, double* %11, align 8
  %517 = load double, double* %14, align 8
  %518 = fsub double %516, %517
  %519 = load double*, double** %3, align 8
  %520 = getelementptr inbounds double, double* %519, i64 31
  store double %518, double* %520, align 8
  %521 = load double, double* %32, align 8
  %522 = load double, double* %36, align 8
  %523 = fadd double %521, %522
  store double %523, double* %8, align 8
  %524 = load double, double* %33, align 8
  %525 = load double, double* %37, align 8
  %526 = fadd double %524, %525
  store double %526, double* %9, align 8
  %527 = load double, double* %32, align 8
  %528 = load double, double* %36, align 8
  %529 = fsub double %527, %528
  store double %529, double* %10, align 8
  %530 = load double, double* %33, align 8
  %531 = load double, double* %37, align 8
  %532 = fsub double %530, %531
  store double %532, double* %11, align 8
  %533 = load double, double* %34, align 8
  %534 = load double, double* %38, align 8
  %535 = fadd double %533, %534
  store double %535, double* %12, align 8
  %536 = load double, double* %35, align 8
  %537 = load double, double* %39, align 8
  %538 = fadd double %536, %537
  store double %538, double* %13, align 8
  %539 = load double, double* %34, align 8
  %540 = load double, double* %38, align 8
  %541 = fsub double %539, %540
  store double %541, double* %14, align 8
  %542 = load double, double* %35, align 8
  %543 = load double, double* %39, align 8
  %544 = fsub double %542, %543
  store double %544, double* %15, align 8
  %545 = load double, double* %8, align 8
  %546 = load double, double* %12, align 8
  %547 = fadd double %545, %546
  %548 = load double*, double** %3, align 8
  %549 = getelementptr inbounds double, double* %548, i64 16
  store double %547, double* %549, align 8
  %550 = load double, double* %9, align 8
  %551 = load double, double* %13, align 8
  %552 = fadd double %550, %551
  %553 = load double*, double** %3, align 8
  %554 = getelementptr inbounds double, double* %553, i64 17
  store double %552, double* %554, align 8
  %555 = load double, double* %8, align 8
  %556 = load double, double* %12, align 8
  %557 = fsub double %555, %556
  %558 = load double*, double** %3, align 8
  %559 = getelementptr inbounds double, double* %558, i64 18
  store double %557, double* %559, align 8
  %560 = load double, double* %9, align 8
  %561 = load double, double* %13, align 8
  %562 = fsub double %560, %561
  %563 = load double*, double** %3, align 8
  %564 = getelementptr inbounds double, double* %563, i64 19
  store double %562, double* %564, align 8
  %565 = load double, double* %10, align 8
  %566 = load double, double* %15, align 8
  %567 = fsub double %565, %566
  %568 = load double*, double** %3, align 8
  %569 = getelementptr inbounds double, double* %568, i64 20
  store double %567, double* %569, align 8
  %570 = load double, double* %11, align 8
  %571 = load double, double* %14, align 8
  %572 = fadd double %570, %571
  %573 = load double*, double** %3, align 8
  %574 = getelementptr inbounds double, double* %573, i64 21
  store double %572, double* %574, align 8
  %575 = load double, double* %10, align 8
  %576 = load double, double* %15, align 8
  %577 = fadd double %575, %576
  %578 = load double*, double** %3, align 8
  %579 = getelementptr inbounds double, double* %578, i64 22
  store double %577, double* %579, align 8
  %580 = load double, double* %11, align 8
  %581 = load double, double* %14, align 8
  %582 = fsub double %580, %581
  %583 = load double*, double** %3, align 8
  %584 = getelementptr inbounds double, double* %583, i64 23
  store double %582, double* %584, align 8
  %585 = load double, double* %26, align 8
  %586 = load double, double* %31, align 8
  %587 = fsub double %585, %586
  store double %587, double* %8, align 8
  %588 = load double, double* %27, align 8
  %589 = load double, double* %30, align 8
  %590 = fadd double %588, %589
  store double %590, double* %9, align 8
  %591 = load double, double* %5, align 8
  %592 = load double, double* %8, align 8
  %593 = load double, double* %9, align 8
  %594 = fsub double %592, %593
  %595 = fmul double %591, %594
  store double %595, double* %12, align 8
  %596 = load double, double* %5, align 8
  %597 = load double, double* %9, align 8
  %598 = load double, double* %8, align 8
  %599 = fadd double %597, %598
  %600 = fmul double %596, %599
  store double %600, double* %13, align 8
  %601 = load double, double* %26, align 8
  %602 = load double, double* %31, align 8
  %603 = fadd double %601, %602
  store double %603, double* %8, align 8
  %604 = load double, double* %27, align 8
  %605 = load double, double* %30, align 8
  %606 = fsub double %604, %605
  store double %606, double* %9, align 8
  %607 = load double, double* %5, align 8
  %608 = load double, double* %8, align 8
  %609 = load double, double* %9, align 8
  %610 = fsub double %608, %609
  %611 = fmul double %607, %610
  store double %611, double* %14, align 8
  %612 = load double, double* %5, align 8
  %613 = load double, double* %9, align 8
  %614 = load double, double* %8, align 8
  %615 = fadd double %613, %614
  %616 = fmul double %612, %615
  store double %616, double* %15, align 8
  %617 = load double, double* %24, align 8
  %618 = load double, double* %29, align 8
  %619 = fsub double %617, %618
  store double %619, double* %8, align 8
  %620 = load double, double* %25, align 8
  %621 = load double, double* %28, align 8
  %622 = fadd double %620, %621
  store double %622, double* %9, align 8
  %623 = load double, double* %24, align 8
  %624 = load double, double* %29, align 8
  %625 = fadd double %623, %624
  store double %625, double* %10, align 8
  %626 = load double, double* %25, align 8
  %627 = load double, double* %28, align 8
  %628 = fsub double %626, %627
  store double %628, double* %11, align 8
  %629 = load double, double* %8, align 8
  %630 = load double, double* %12, align 8
  %631 = fadd double %629, %630
  %632 = load double*, double** %3, align 8
  %633 = getelementptr inbounds double, double* %632, i64 8
  store double %631, double* %633, align 8
  %634 = load double, double* %9, align 8
  %635 = load double, double* %13, align 8
  %636 = fadd double %634, %635
  %637 = load double*, double** %3, align 8
  %638 = getelementptr inbounds double, double* %637, i64 9
  store double %636, double* %638, align 8
  %639 = load double, double* %8, align 8
  %640 = load double, double* %12, align 8
  %641 = fsub double %639, %640
  %642 = load double*, double** %3, align 8
  %643 = getelementptr inbounds double, double* %642, i64 10
  store double %641, double* %643, align 8
  %644 = load double, double* %9, align 8
  %645 = load double, double* %13, align 8
  %646 = fsub double %644, %645
  %647 = load double*, double** %3, align 8
  %648 = getelementptr inbounds double, double* %647, i64 11
  store double %646, double* %648, align 8
  %649 = load double, double* %10, align 8
  %650 = load double, double* %15, align 8
  %651 = fsub double %649, %650
  %652 = load double*, double** %3, align 8
  %653 = getelementptr inbounds double, double* %652, i64 12
  store double %651, double* %653, align 8
  %654 = load double, double* %11, align 8
  %655 = load double, double* %14, align 8
  %656 = fadd double %654, %655
  %657 = load double*, double** %3, align 8
  %658 = getelementptr inbounds double, double* %657, i64 13
  store double %656, double* %658, align 8
  %659 = load double, double* %10, align 8
  %660 = load double, double* %15, align 8
  %661 = fadd double %659, %660
  %662 = load double*, double** %3, align 8
  %663 = getelementptr inbounds double, double* %662, i64 14
  store double %661, double* %663, align 8
  %664 = load double, double* %11, align 8
  %665 = load double, double* %14, align 8
  %666 = fsub double %664, %665
  %667 = load double*, double** %3, align 8
  %668 = getelementptr inbounds double, double* %667, i64 15
  store double %666, double* %668, align 8
  %669 = load double, double* %16, align 8
  %670 = load double, double* %20, align 8
  %671 = fadd double %669, %670
  store double %671, double* %8, align 8
  %672 = load double, double* %17, align 8
  %673 = load double, double* %21, align 8
  %674 = fadd double %672, %673
  store double %674, double* %9, align 8
  %675 = load double, double* %16, align 8
  %676 = load double, double* %20, align 8
  %677 = fsub double %675, %676
  store double %677, double* %10, align 8
  %678 = load double, double* %17, align 8
  %679 = load double, double* %21, align 8
  %680 = fsub double %678, %679
  store double %680, double* %11, align 8
  %681 = load double, double* %18, align 8
  %682 = load double, double* %22, align 8
  %683 = fadd double %681, %682
  store double %683, double* %12, align 8
  %684 = load double, double* %19, align 8
  %685 = load double, double* %23, align 8
  %686 = fadd double %684, %685
  store double %686, double* %13, align 8
  %687 = load double, double* %18, align 8
  %688 = load double, double* %22, align 8
  %689 = fsub double %687, %688
  store double %689, double* %14, align 8
  %690 = load double, double* %19, align 8
  %691 = load double, double* %23, align 8
  %692 = fsub double %690, %691
  store double %692, double* %15, align 8
  %693 = load double, double* %8, align 8
  %694 = load double, double* %12, align 8
  %695 = fadd double %693, %694
  %696 = load double*, double** %3, align 8
  %697 = getelementptr inbounds double, double* %696, i64 0
  store double %695, double* %697, align 8
  %698 = load double, double* %9, align 8
  %699 = load double, double* %13, align 8
  %700 = fadd double %698, %699
  %701 = load double*, double** %3, align 8
  %702 = getelementptr inbounds double, double* %701, i64 1
  store double %700, double* %702, align 8
  %703 = load double, double* %8, align 8
  %704 = load double, double* %12, align 8
  %705 = fsub double %703, %704
  %706 = load double*, double** %3, align 8
  %707 = getelementptr inbounds double, double* %706, i64 2
  store double %705, double* %707, align 8
  %708 = load double, double* %9, align 8
  %709 = load double, double* %13, align 8
  %710 = fsub double %708, %709
  %711 = load double*, double** %3, align 8
  %712 = getelementptr inbounds double, double* %711, i64 3
  store double %710, double* %712, align 8
  %713 = load double, double* %10, align 8
  %714 = load double, double* %15, align 8
  %715 = fsub double %713, %714
  %716 = load double*, double** %3, align 8
  %717 = getelementptr inbounds double, double* %716, i64 4
  store double %715, double* %717, align 8
  %718 = load double, double* %11, align 8
  %719 = load double, double* %14, align 8
  %720 = fadd double %718, %719
  %721 = load double*, double** %3, align 8
  %722 = getelementptr inbounds double, double* %721, i64 5
  store double %720, double* %722, align 8
  %723 = load double, double* %10, align 8
  %724 = load double, double* %15, align 8
  %725 = fadd double %723, %724
  %726 = load double*, double** %3, align 8
  %727 = getelementptr inbounds double, double* %726, i64 6
  store double %725, double* %727, align 8
  %728 = load double, double* %11, align 8
  %729 = load double, double* %14, align 8
  %730 = fsub double %728, %729
  %731 = load double*, double** %3, align 8
  %732 = getelementptr inbounds double, double* %731, i64 7
  store double %730, double* %732, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitrv216neg(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  store double* %0, double** %2, align 8
  %33 = load double*, double** %2, align 8
  %34 = getelementptr inbounds double, double* %33, i64 2
  %35 = load double, double* %34, align 8
  store double %35, double* %3, align 8
  %36 = load double*, double** %2, align 8
  %37 = getelementptr inbounds double, double* %36, i64 3
  %38 = load double, double* %37, align 8
  store double %38, double* %4, align 8
  %39 = load double*, double** %2, align 8
  %40 = getelementptr inbounds double, double* %39, i64 4
  %41 = load double, double* %40, align 8
  store double %41, double* %5, align 8
  %42 = load double*, double** %2, align 8
  %43 = getelementptr inbounds double, double* %42, i64 5
  %44 = load double, double* %43, align 8
  store double %44, double* %6, align 8
  %45 = load double*, double** %2, align 8
  %46 = getelementptr inbounds double, double* %45, i64 6
  %47 = load double, double* %46, align 8
  store double %47, double* %7, align 8
  %48 = load double*, double** %2, align 8
  %49 = getelementptr inbounds double, double* %48, i64 7
  %50 = load double, double* %49, align 8
  store double %50, double* %8, align 8
  %51 = load double*, double** %2, align 8
  %52 = getelementptr inbounds double, double* %51, i64 8
  %53 = load double, double* %52, align 8
  store double %53, double* %9, align 8
  %54 = load double*, double** %2, align 8
  %55 = getelementptr inbounds double, double* %54, i64 9
  %56 = load double, double* %55, align 8
  store double %56, double* %10, align 8
  %57 = load double*, double** %2, align 8
  %58 = getelementptr inbounds double, double* %57, i64 10
  %59 = load double, double* %58, align 8
  store double %59, double* %11, align 8
  %60 = load double*, double** %2, align 8
  %61 = getelementptr inbounds double, double* %60, i64 11
  %62 = load double, double* %61, align 8
  store double %62, double* %12, align 8
  %63 = load double*, double** %2, align 8
  %64 = getelementptr inbounds double, double* %63, i64 12
  %65 = load double, double* %64, align 8
  store double %65, double* %13, align 8
  %66 = load double*, double** %2, align 8
  %67 = getelementptr inbounds double, double* %66, i64 13
  %68 = load double, double* %67, align 8
  store double %68, double* %14, align 8
  %69 = load double*, double** %2, align 8
  %70 = getelementptr inbounds double, double* %69, i64 14
  %71 = load double, double* %70, align 8
  store double %71, double* %15, align 8
  %72 = load double*, double** %2, align 8
  %73 = getelementptr inbounds double, double* %72, i64 15
  %74 = load double, double* %73, align 8
  store double %74, double* %16, align 8
  %75 = load double*, double** %2, align 8
  %76 = getelementptr inbounds double, double* %75, i64 16
  %77 = load double, double* %76, align 8
  store double %77, double* %17, align 8
  %78 = load double*, double** %2, align 8
  %79 = getelementptr inbounds double, double* %78, i64 17
  %80 = load double, double* %79, align 8
  store double %80, double* %18, align 8
  %81 = load double*, double** %2, align 8
  %82 = getelementptr inbounds double, double* %81, i64 18
  %83 = load double, double* %82, align 8
  store double %83, double* %19, align 8
  %84 = load double*, double** %2, align 8
  %85 = getelementptr inbounds double, double* %84, i64 19
  %86 = load double, double* %85, align 8
  store double %86, double* %20, align 8
  %87 = load double*, double** %2, align 8
  %88 = getelementptr inbounds double, double* %87, i64 20
  %89 = load double, double* %88, align 8
  store double %89, double* %21, align 8
  %90 = load double*, double** %2, align 8
  %91 = getelementptr inbounds double, double* %90, i64 21
  %92 = load double, double* %91, align 8
  store double %92, double* %22, align 8
  %93 = load double*, double** %2, align 8
  %94 = getelementptr inbounds double, double* %93, i64 22
  %95 = load double, double* %94, align 8
  store double %95, double* %23, align 8
  %96 = load double*, double** %2, align 8
  %97 = getelementptr inbounds double, double* %96, i64 23
  %98 = load double, double* %97, align 8
  store double %98, double* %24, align 8
  %99 = load double*, double** %2, align 8
  %100 = getelementptr inbounds double, double* %99, i64 24
  %101 = load double, double* %100, align 8
  store double %101, double* %25, align 8
  %102 = load double*, double** %2, align 8
  %103 = getelementptr inbounds double, double* %102, i64 25
  %104 = load double, double* %103, align 8
  store double %104, double* %26, align 8
  %105 = load double*, double** %2, align 8
  %106 = getelementptr inbounds double, double* %105, i64 26
  %107 = load double, double* %106, align 8
  store double %107, double* %27, align 8
  %108 = load double*, double** %2, align 8
  %109 = getelementptr inbounds double, double* %108, i64 27
  %110 = load double, double* %109, align 8
  store double %110, double* %28, align 8
  %111 = load double*, double** %2, align 8
  %112 = getelementptr inbounds double, double* %111, i64 28
  %113 = load double, double* %112, align 8
  store double %113, double* %29, align 8
  %114 = load double*, double** %2, align 8
  %115 = getelementptr inbounds double, double* %114, i64 29
  %116 = load double, double* %115, align 8
  store double %116, double* %30, align 8
  %117 = load double*, double** %2, align 8
  %118 = getelementptr inbounds double, double* %117, i64 30
  %119 = load double, double* %118, align 8
  store double %119, double* %31, align 8
  %120 = load double*, double** %2, align 8
  %121 = getelementptr inbounds double, double* %120, i64 31
  %122 = load double, double* %121, align 8
  store double %122, double* %32, align 8
  %123 = load double, double* %31, align 8
  %124 = load double*, double** %2, align 8
  %125 = getelementptr inbounds double, double* %124, i64 2
  store double %123, double* %125, align 8
  %126 = load double, double* %32, align 8
  %127 = load double*, double** %2, align 8
  %128 = getelementptr inbounds double, double* %127, i64 3
  store double %126, double* %128, align 8
  %129 = load double, double* %15, align 8
  %130 = load double*, double** %2, align 8
  %131 = getelementptr inbounds double, double* %130, i64 4
  store double %129, double* %131, align 8
  %132 = load double, double* %16, align 8
  %133 = load double*, double** %2, align 8
  %134 = getelementptr inbounds double, double* %133, i64 5
  store double %132, double* %134, align 8
  %135 = load double, double* %23, align 8
  %136 = load double*, double** %2, align 8
  %137 = getelementptr inbounds double, double* %136, i64 6
  store double %135, double* %137, align 8
  %138 = load double, double* %24, align 8
  %139 = load double*, double** %2, align 8
  %140 = getelementptr inbounds double, double* %139, i64 7
  store double %138, double* %140, align 8
  %141 = load double, double* %7, align 8
  %142 = load double*, double** %2, align 8
  %143 = getelementptr inbounds double, double* %142, i64 8
  store double %141, double* %143, align 8
  %144 = load double, double* %8, align 8
  %145 = load double*, double** %2, align 8
  %146 = getelementptr inbounds double, double* %145, i64 9
  store double %144, double* %146, align 8
  %147 = load double, double* %27, align 8
  %148 = load double*, double** %2, align 8
  %149 = getelementptr inbounds double, double* %148, i64 10
  store double %147, double* %149, align 8
  %150 = load double, double* %28, align 8
  %151 = load double*, double** %2, align 8
  %152 = getelementptr inbounds double, double* %151, i64 11
  store double %150, double* %152, align 8
  %153 = load double, double* %11, align 8
  %154 = load double*, double** %2, align 8
  %155 = getelementptr inbounds double, double* %154, i64 12
  store double %153, double* %155, align 8
  %156 = load double, double* %12, align 8
  %157 = load double*, double** %2, align 8
  %158 = getelementptr inbounds double, double* %157, i64 13
  store double %156, double* %158, align 8
  %159 = load double, double* %19, align 8
  %160 = load double*, double** %2, align 8
  %161 = getelementptr inbounds double, double* %160, i64 14
  store double %159, double* %161, align 8
  %162 = load double, double* %20, align 8
  %163 = load double*, double** %2, align 8
  %164 = getelementptr inbounds double, double* %163, i64 15
  store double %162, double* %164, align 8
  %165 = load double, double* %3, align 8
  %166 = load double*, double** %2, align 8
  %167 = getelementptr inbounds double, double* %166, i64 16
  store double %165, double* %167, align 8
  %168 = load double, double* %4, align 8
  %169 = load double*, double** %2, align 8
  %170 = getelementptr inbounds double, double* %169, i64 17
  store double %168, double* %170, align 8
  %171 = load double, double* %29, align 8
  %172 = load double*, double** %2, align 8
  %173 = getelementptr inbounds double, double* %172, i64 18
  store double %171, double* %173, align 8
  %174 = load double, double* %30, align 8
  %175 = load double*, double** %2, align 8
  %176 = getelementptr inbounds double, double* %175, i64 19
  store double %174, double* %176, align 8
  %177 = load double, double* %13, align 8
  %178 = load double*, double** %2, align 8
  %179 = getelementptr inbounds double, double* %178, i64 20
  store double %177, double* %179, align 8
  %180 = load double, double* %14, align 8
  %181 = load double*, double** %2, align 8
  %182 = getelementptr inbounds double, double* %181, i64 21
  store double %180, double* %182, align 8
  %183 = load double, double* %21, align 8
  %184 = load double*, double** %2, align 8
  %185 = getelementptr inbounds double, double* %184, i64 22
  store double %183, double* %185, align 8
  %186 = load double, double* %22, align 8
  %187 = load double*, double** %2, align 8
  %188 = getelementptr inbounds double, double* %187, i64 23
  store double %186, double* %188, align 8
  %189 = load double, double* %5, align 8
  %190 = load double*, double** %2, align 8
  %191 = getelementptr inbounds double, double* %190, i64 24
  store double %189, double* %191, align 8
  %192 = load double, double* %6, align 8
  %193 = load double*, double** %2, align 8
  %194 = getelementptr inbounds double, double* %193, i64 25
  store double %192, double* %194, align 8
  %195 = load double, double* %25, align 8
  %196 = load double*, double** %2, align 8
  %197 = getelementptr inbounds double, double* %196, i64 26
  store double %195, double* %197, align 8
  %198 = load double, double* %26, align 8
  %199 = load double*, double** %2, align 8
  %200 = getelementptr inbounds double, double* %199, i64 27
  store double %198, double* %200, align 8
  %201 = load double, double* %9, align 8
  %202 = load double*, double** %2, align 8
  %203 = getelementptr inbounds double, double* %202, i64 28
  store double %201, double* %203, align 8
  %204 = load double, double* %10, align 8
  %205 = load double*, double** %2, align 8
  %206 = getelementptr inbounds double, double* %205, i64 29
  store double %204, double* %206, align 8
  %207 = load double, double* %17, align 8
  %208 = load double*, double** %2, align 8
  %209 = getelementptr inbounds double, double* %208, i64 30
  store double %207, double* %209, align 8
  %210 = load double, double* %18, align 8
  %211 = load double*, double** %2, align 8
  %212 = getelementptr inbounds double, double* %211, i64 31
  store double %210, double* %212, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftf081(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %30 = load double*, double** %4, align 8
  %31 = getelementptr inbounds double, double* %30, i64 1
  %32 = load double, double* %31, align 8
  store double %32, double* %5, align 8
  %33 = load double*, double** %3, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  %35 = load double, double* %34, align 8
  %36 = load double*, double** %3, align 8
  %37 = getelementptr inbounds double, double* %36, i64 8
  %38 = load double, double* %37, align 8
  %39 = fadd double %35, %38
  store double %39, double* %6, align 8
  %40 = load double*, double** %3, align 8
  %41 = getelementptr inbounds double, double* %40, i64 1
  %42 = load double, double* %41, align 8
  %43 = load double*, double** %3, align 8
  %44 = getelementptr inbounds double, double* %43, i64 9
  %45 = load double, double* %44, align 8
  %46 = fadd double %42, %45
  store double %46, double* %7, align 8
  %47 = load double*, double** %3, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %3, align 8
  %51 = getelementptr inbounds double, double* %50, i64 8
  %52 = load double, double* %51, align 8
  %53 = fsub double %49, %52
  store double %53, double* %8, align 8
  %54 = load double*, double** %3, align 8
  %55 = getelementptr inbounds double, double* %54, i64 1
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %3, align 8
  %58 = getelementptr inbounds double, double* %57, i64 9
  %59 = load double, double* %58, align 8
  %60 = fsub double %56, %59
  store double %60, double* %9, align 8
  %61 = load double*, double** %3, align 8
  %62 = getelementptr inbounds double, double* %61, i64 4
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %3, align 8
  %65 = getelementptr inbounds double, double* %64, i64 12
  %66 = load double, double* %65, align 8
  %67 = fadd double %63, %66
  store double %67, double* %10, align 8
  %68 = load double*, double** %3, align 8
  %69 = getelementptr inbounds double, double* %68, i64 5
  %70 = load double, double* %69, align 8
  %71 = load double*, double** %3, align 8
  %72 = getelementptr inbounds double, double* %71, i64 13
  %73 = load double, double* %72, align 8
  %74 = fadd double %70, %73
  store double %74, double* %11, align 8
  %75 = load double*, double** %3, align 8
  %76 = getelementptr inbounds double, double* %75, i64 4
  %77 = load double, double* %76, align 8
  %78 = load double*, double** %3, align 8
  %79 = getelementptr inbounds double, double* %78, i64 12
  %80 = load double, double* %79, align 8
  %81 = fsub double %77, %80
  store double %81, double* %12, align 8
  %82 = load double*, double** %3, align 8
  %83 = getelementptr inbounds double, double* %82, i64 5
  %84 = load double, double* %83, align 8
  %85 = load double*, double** %3, align 8
  %86 = getelementptr inbounds double, double* %85, i64 13
  %87 = load double, double* %86, align 8
  %88 = fsub double %84, %87
  store double %88, double* %13, align 8
  %89 = load double, double* %6, align 8
  %90 = load double, double* %10, align 8
  %91 = fadd double %89, %90
  store double %91, double* %14, align 8
  %92 = load double, double* %7, align 8
  %93 = load double, double* %11, align 8
  %94 = fadd double %92, %93
  store double %94, double* %15, align 8
  %95 = load double, double* %6, align 8
  %96 = load double, double* %10, align 8
  %97 = fsub double %95, %96
  store double %97, double* %18, align 8
  %98 = load double, double* %7, align 8
  %99 = load double, double* %11, align 8
  %100 = fsub double %98, %99
  store double %100, double* %19, align 8
  %101 = load double, double* %8, align 8
  %102 = load double, double* %13, align 8
  %103 = fsub double %101, %102
  store double %103, double* %16, align 8
  %104 = load double, double* %9, align 8
  %105 = load double, double* %12, align 8
  %106 = fadd double %104, %105
  store double %106, double* %17, align 8
  %107 = load double, double* %8, align 8
  %108 = load double, double* %13, align 8
  %109 = fadd double %107, %108
  store double %109, double* %20, align 8
  %110 = load double, double* %9, align 8
  %111 = load double, double* %12, align 8
  %112 = fsub double %110, %111
  store double %112, double* %21, align 8
  %113 = load double*, double** %3, align 8
  %114 = getelementptr inbounds double, double* %113, i64 2
  %115 = load double, double* %114, align 8
  %116 = load double*, double** %3, align 8
  %117 = getelementptr inbounds double, double* %116, i64 10
  %118 = load double, double* %117, align 8
  %119 = fadd double %115, %118
  store double %119, double* %6, align 8
  %120 = load double*, double** %3, align 8
  %121 = getelementptr inbounds double, double* %120, i64 3
  %122 = load double, double* %121, align 8
  %123 = load double*, double** %3, align 8
  %124 = getelementptr inbounds double, double* %123, i64 11
  %125 = load double, double* %124, align 8
  %126 = fadd double %122, %125
  store double %126, double* %7, align 8
  %127 = load double*, double** %3, align 8
  %128 = getelementptr inbounds double, double* %127, i64 2
  %129 = load double, double* %128, align 8
  %130 = load double*, double** %3, align 8
  %131 = getelementptr inbounds double, double* %130, i64 10
  %132 = load double, double* %131, align 8
  %133 = fsub double %129, %132
  store double %133, double* %8, align 8
  %134 = load double*, double** %3, align 8
  %135 = getelementptr inbounds double, double* %134, i64 3
  %136 = load double, double* %135, align 8
  %137 = load double*, double** %3, align 8
  %138 = getelementptr inbounds double, double* %137, i64 11
  %139 = load double, double* %138, align 8
  %140 = fsub double %136, %139
  store double %140, double* %9, align 8
  %141 = load double*, double** %3, align 8
  %142 = getelementptr inbounds double, double* %141, i64 6
  %143 = load double, double* %142, align 8
  %144 = load double*, double** %3, align 8
  %145 = getelementptr inbounds double, double* %144, i64 14
  %146 = load double, double* %145, align 8
  %147 = fadd double %143, %146
  store double %147, double* %10, align 8
  %148 = load double*, double** %3, align 8
  %149 = getelementptr inbounds double, double* %148, i64 7
  %150 = load double, double* %149, align 8
  %151 = load double*, double** %3, align 8
  %152 = getelementptr inbounds double, double* %151, i64 15
  %153 = load double, double* %152, align 8
  %154 = fadd double %150, %153
  store double %154, double* %11, align 8
  %155 = load double*, double** %3, align 8
  %156 = getelementptr inbounds double, double* %155, i64 6
  %157 = load double, double* %156, align 8
  %158 = load double*, double** %3, align 8
  %159 = getelementptr inbounds double, double* %158, i64 14
  %160 = load double, double* %159, align 8
  %161 = fsub double %157, %160
  store double %161, double* %12, align 8
  %162 = load double*, double** %3, align 8
  %163 = getelementptr inbounds double, double* %162, i64 7
  %164 = load double, double* %163, align 8
  %165 = load double*, double** %3, align 8
  %166 = getelementptr inbounds double, double* %165, i64 15
  %167 = load double, double* %166, align 8
  %168 = fsub double %164, %167
  store double %168, double* %13, align 8
  %169 = load double, double* %6, align 8
  %170 = load double, double* %10, align 8
  %171 = fadd double %169, %170
  store double %171, double* %22, align 8
  %172 = load double, double* %7, align 8
  %173 = load double, double* %11, align 8
  %174 = fadd double %172, %173
  store double %174, double* %23, align 8
  %175 = load double, double* %6, align 8
  %176 = load double, double* %10, align 8
  %177 = fsub double %175, %176
  store double %177, double* %26, align 8
  %178 = load double, double* %7, align 8
  %179 = load double, double* %11, align 8
  %180 = fsub double %178, %179
  store double %180, double* %27, align 8
  %181 = load double, double* %8, align 8
  %182 = load double, double* %13, align 8
  %183 = fsub double %181, %182
  store double %183, double* %6, align 8
  %184 = load double, double* %9, align 8
  %185 = load double, double* %12, align 8
  %186 = fadd double %184, %185
  store double %186, double* %7, align 8
  %187 = load double, double* %8, align 8
  %188 = load double, double* %13, align 8
  %189 = fadd double %187, %188
  store double %189, double* %10, align 8
  %190 = load double, double* %9, align 8
  %191 = load double, double* %12, align 8
  %192 = fsub double %190, %191
  store double %192, double* %11, align 8
  %193 = load double, double* %5, align 8
  %194 = load double, double* %6, align 8
  %195 = load double, double* %7, align 8
  %196 = fsub double %194, %195
  %197 = fmul double %193, %196
  store double %197, double* %24, align 8
  %198 = load double, double* %5, align 8
  %199 = load double, double* %6, align 8
  %200 = load double, double* %7, align 8
  %201 = fadd double %199, %200
  %202 = fmul double %198, %201
  store double %202, double* %25, align 8
  %203 = load double, double* %5, align 8
  %204 = load double, double* %10, align 8
  %205 = load double, double* %11, align 8
  %206 = fsub double %204, %205
  %207 = fmul double %203, %206
  store double %207, double* %28, align 8
  %208 = load double, double* %5, align 8
  %209 = load double, double* %10, align 8
  %210 = load double, double* %11, align 8
  %211 = fadd double %209, %210
  %212 = fmul double %208, %211
  store double %212, double* %29, align 8
  %213 = load double, double* %16, align 8
  %214 = load double, double* %24, align 8
  %215 = fadd double %213, %214
  %216 = load double*, double** %3, align 8
  %217 = getelementptr inbounds double, double* %216, i64 8
  store double %215, double* %217, align 8
  %218 = load double, double* %17, align 8
  %219 = load double, double* %25, align 8
  %220 = fadd double %218, %219
  %221 = load double*, double** %3, align 8
  %222 = getelementptr inbounds double, double* %221, i64 9
  store double %220, double* %222, align 8
  %223 = load double, double* %16, align 8
  %224 = load double, double* %24, align 8
  %225 = fsub double %223, %224
  %226 = load double*, double** %3, align 8
  %227 = getelementptr inbounds double, double* %226, i64 10
  store double %225, double* %227, align 8
  %228 = load double, double* %17, align 8
  %229 = load double, double* %25, align 8
  %230 = fsub double %228, %229
  %231 = load double*, double** %3, align 8
  %232 = getelementptr inbounds double, double* %231, i64 11
  store double %230, double* %232, align 8
  %233 = load double, double* %20, align 8
  %234 = load double, double* %29, align 8
  %235 = fsub double %233, %234
  %236 = load double*, double** %3, align 8
  %237 = getelementptr inbounds double, double* %236, i64 12
  store double %235, double* %237, align 8
  %238 = load double, double* %21, align 8
  %239 = load double, double* %28, align 8
  %240 = fadd double %238, %239
  %241 = load double*, double** %3, align 8
  %242 = getelementptr inbounds double, double* %241, i64 13
  store double %240, double* %242, align 8
  %243 = load double, double* %20, align 8
  %244 = load double, double* %29, align 8
  %245 = fadd double %243, %244
  %246 = load double*, double** %3, align 8
  %247 = getelementptr inbounds double, double* %246, i64 14
  store double %245, double* %247, align 8
  %248 = load double, double* %21, align 8
  %249 = load double, double* %28, align 8
  %250 = fsub double %248, %249
  %251 = load double*, double** %3, align 8
  %252 = getelementptr inbounds double, double* %251, i64 15
  store double %250, double* %252, align 8
  %253 = load double, double* %14, align 8
  %254 = load double, double* %22, align 8
  %255 = fadd double %253, %254
  %256 = load double*, double** %3, align 8
  %257 = getelementptr inbounds double, double* %256, i64 0
  store double %255, double* %257, align 8
  %258 = load double, double* %15, align 8
  %259 = load double, double* %23, align 8
  %260 = fadd double %258, %259
  %261 = load double*, double** %3, align 8
  %262 = getelementptr inbounds double, double* %261, i64 1
  store double %260, double* %262, align 8
  %263 = load double, double* %14, align 8
  %264 = load double, double* %22, align 8
  %265 = fsub double %263, %264
  %266 = load double*, double** %3, align 8
  %267 = getelementptr inbounds double, double* %266, i64 2
  store double %265, double* %267, align 8
  %268 = load double, double* %15, align 8
  %269 = load double, double* %23, align 8
  %270 = fsub double %268, %269
  %271 = load double*, double** %3, align 8
  %272 = getelementptr inbounds double, double* %271, i64 3
  store double %270, double* %272, align 8
  %273 = load double, double* %18, align 8
  %274 = load double, double* %27, align 8
  %275 = fsub double %273, %274
  %276 = load double*, double** %3, align 8
  %277 = getelementptr inbounds double, double* %276, i64 4
  store double %275, double* %277, align 8
  %278 = load double, double* %19, align 8
  %279 = load double, double* %26, align 8
  %280 = fadd double %278, %279
  %281 = load double*, double** %3, align 8
  %282 = getelementptr inbounds double, double* %281, i64 5
  store double %280, double* %282, align 8
  %283 = load double, double* %18, align 8
  %284 = load double, double* %27, align 8
  %285 = fadd double %283, %284
  %286 = load double*, double** %3, align 8
  %287 = getelementptr inbounds double, double* %286, i64 6
  store double %285, double* %287, align 8
  %288 = load double, double* %19, align 8
  %289 = load double, double* %26, align 8
  %290 = fsub double %288, %289
  %291 = load double*, double** %3, align 8
  %292 = getelementptr inbounds double, double* %291, i64 7
  store double %290, double* %292, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitrv208neg(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store double* %0, double** %2, align 8
  %17 = load double*, double** %2, align 8
  %18 = getelementptr inbounds double, double* %17, i64 2
  %19 = load double, double* %18, align 8
  store double %19, double* %3, align 8
  %20 = load double*, double** %2, align 8
  %21 = getelementptr inbounds double, double* %20, i64 3
  %22 = load double, double* %21, align 8
  store double %22, double* %4, align 8
  %23 = load double*, double** %2, align 8
  %24 = getelementptr inbounds double, double* %23, i64 4
  %25 = load double, double* %24, align 8
  store double %25, double* %5, align 8
  %26 = load double*, double** %2, align 8
  %27 = getelementptr inbounds double, double* %26, i64 5
  %28 = load double, double* %27, align 8
  store double %28, double* %6, align 8
  %29 = load double*, double** %2, align 8
  %30 = getelementptr inbounds double, double* %29, i64 6
  %31 = load double, double* %30, align 8
  store double %31, double* %7, align 8
  %32 = load double*, double** %2, align 8
  %33 = getelementptr inbounds double, double* %32, i64 7
  %34 = load double, double* %33, align 8
  store double %34, double* %8, align 8
  %35 = load double*, double** %2, align 8
  %36 = getelementptr inbounds double, double* %35, i64 8
  %37 = load double, double* %36, align 8
  store double %37, double* %9, align 8
  %38 = load double*, double** %2, align 8
  %39 = getelementptr inbounds double, double* %38, i64 9
  %40 = load double, double* %39, align 8
  store double %40, double* %10, align 8
  %41 = load double*, double** %2, align 8
  %42 = getelementptr inbounds double, double* %41, i64 10
  %43 = load double, double* %42, align 8
  store double %43, double* %11, align 8
  %44 = load double*, double** %2, align 8
  %45 = getelementptr inbounds double, double* %44, i64 11
  %46 = load double, double* %45, align 8
  store double %46, double* %12, align 8
  %47 = load double*, double** %2, align 8
  %48 = getelementptr inbounds double, double* %47, i64 12
  %49 = load double, double* %48, align 8
  store double %49, double* %13, align 8
  %50 = load double*, double** %2, align 8
  %51 = getelementptr inbounds double, double* %50, i64 13
  %52 = load double, double* %51, align 8
  store double %52, double* %14, align 8
  %53 = load double*, double** %2, align 8
  %54 = getelementptr inbounds double, double* %53, i64 14
  %55 = load double, double* %54, align 8
  store double %55, double* %15, align 8
  %56 = load double*, double** %2, align 8
  %57 = getelementptr inbounds double, double* %56, i64 15
  %58 = load double, double* %57, align 8
  store double %58, double* %16, align 8
  %59 = load double, double* %15, align 8
  %60 = load double*, double** %2, align 8
  %61 = getelementptr inbounds double, double* %60, i64 2
  store double %59, double* %61, align 8
  %62 = load double, double* %16, align 8
  %63 = load double*, double** %2, align 8
  %64 = getelementptr inbounds double, double* %63, i64 3
  store double %62, double* %64, align 8
  %65 = load double, double* %7, align 8
  %66 = load double*, double** %2, align 8
  %67 = getelementptr inbounds double, double* %66, i64 4
  store double %65, double* %67, align 8
  %68 = load double, double* %8, align 8
  %69 = load double*, double** %2, align 8
  %70 = getelementptr inbounds double, double* %69, i64 5
  store double %68, double* %70, align 8
  %71 = load double, double* %11, align 8
  %72 = load double*, double** %2, align 8
  %73 = getelementptr inbounds double, double* %72, i64 6
  store double %71, double* %73, align 8
  %74 = load double, double* %12, align 8
  %75 = load double*, double** %2, align 8
  %76 = getelementptr inbounds double, double* %75, i64 7
  store double %74, double* %76, align 8
  %77 = load double, double* %3, align 8
  %78 = load double*, double** %2, align 8
  %79 = getelementptr inbounds double, double* %78, i64 8
  store double %77, double* %79, align 8
  %80 = load double, double* %4, align 8
  %81 = load double*, double** %2, align 8
  %82 = getelementptr inbounds double, double* %81, i64 9
  store double %80, double* %82, align 8
  %83 = load double, double* %13, align 8
  %84 = load double*, double** %2, align 8
  %85 = getelementptr inbounds double, double* %84, i64 10
  store double %83, double* %85, align 8
  %86 = load double, double* %14, align 8
  %87 = load double*, double** %2, align 8
  %88 = getelementptr inbounds double, double* %87, i64 11
  store double %86, double* %88, align 8
  %89 = load double, double* %5, align 8
  %90 = load double*, double** %2, align 8
  %91 = getelementptr inbounds double, double* %90, i64 12
  store double %89, double* %91, align 8
  %92 = load double, double* %6, align 8
  %93 = load double*, double** %2, align 8
  %94 = getelementptr inbounds double, double* %93, i64 13
  store double %92, double* %94, align 8
  %95 = load double, double* %9, align 8
  %96 = load double*, double** %2, align 8
  %97 = getelementptr inbounds double, double* %96, i64 14
  store double %95, double* %97, align 8
  %98 = load double, double* %10, align 8
  %99 = load double*, double** %2, align 8
  %100 = getelementptr inbounds double, double* %99, i64 15
  store double %98, double* %100, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftb040(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double* %0, double** %2, align 8
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 0
  %13 = load double, double* %12, align 8
  %14 = load double*, double** %2, align 8
  %15 = getelementptr inbounds double, double* %14, i64 4
  %16 = load double, double* %15, align 8
  %17 = fadd double %13, %16
  store double %17, double* %3, align 8
  %18 = load double*, double** %2, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load double, double* %19, align 8
  %21 = load double*, double** %2, align 8
  %22 = getelementptr inbounds double, double* %21, i64 5
  %23 = load double, double* %22, align 8
  %24 = fadd double %20, %23
  store double %24, double* %4, align 8
  %25 = load double*, double** %2, align 8
  %26 = getelementptr inbounds double, double* %25, i64 0
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %2, align 8
  %29 = getelementptr inbounds double, double* %28, i64 4
  %30 = load double, double* %29, align 8
  %31 = fsub double %27, %30
  store double %31, double* %5, align 8
  %32 = load double*, double** %2, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  %35 = load double*, double** %2, align 8
  %36 = getelementptr inbounds double, double* %35, i64 5
  %37 = load double, double* %36, align 8
  %38 = fsub double %34, %37
  store double %38, double* %6, align 8
  %39 = load double*, double** %2, align 8
  %40 = getelementptr inbounds double, double* %39, i64 2
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %2, align 8
  %43 = getelementptr inbounds double, double* %42, i64 6
  %44 = load double, double* %43, align 8
  %45 = fadd double %41, %44
  store double %45, double* %7, align 8
  %46 = load double*, double** %2, align 8
  %47 = getelementptr inbounds double, double* %46, i64 3
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %2, align 8
  %50 = getelementptr inbounds double, double* %49, i64 7
  %51 = load double, double* %50, align 8
  %52 = fadd double %48, %51
  store double %52, double* %8, align 8
  %53 = load double*, double** %2, align 8
  %54 = getelementptr inbounds double, double* %53, i64 2
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %2, align 8
  %57 = getelementptr inbounds double, double* %56, i64 6
  %58 = load double, double* %57, align 8
  %59 = fsub double %55, %58
  store double %59, double* %9, align 8
  %60 = load double*, double** %2, align 8
  %61 = getelementptr inbounds double, double* %60, i64 3
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %2, align 8
  %64 = getelementptr inbounds double, double* %63, i64 7
  %65 = load double, double* %64, align 8
  %66 = fsub double %62, %65
  store double %66, double* %10, align 8
  %67 = load double, double* %3, align 8
  %68 = load double, double* %7, align 8
  %69 = fadd double %67, %68
  %70 = load double*, double** %2, align 8
  %71 = getelementptr inbounds double, double* %70, i64 0
  store double %69, double* %71, align 8
  %72 = load double, double* %4, align 8
  %73 = load double, double* %8, align 8
  %74 = fadd double %72, %73
  %75 = load double*, double** %2, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  store double %74, double* %76, align 8
  %77 = load double, double* %3, align 8
  %78 = load double, double* %7, align 8
  %79 = fsub double %77, %78
  %80 = load double*, double** %2, align 8
  %81 = getelementptr inbounds double, double* %80, i64 4
  store double %79, double* %81, align 8
  %82 = load double, double* %4, align 8
  %83 = load double, double* %8, align 8
  %84 = fsub double %82, %83
  %85 = load double*, double** %2, align 8
  %86 = getelementptr inbounds double, double* %85, i64 5
  store double %84, double* %86, align 8
  %87 = load double, double* %5, align 8
  %88 = load double, double* %10, align 8
  %89 = fadd double %87, %88
  %90 = load double*, double** %2, align 8
  %91 = getelementptr inbounds double, double* %90, i64 2
  store double %89, double* %91, align 8
  %92 = load double, double* %6, align 8
  %93 = load double, double* %9, align 8
  %94 = fsub double %92, %93
  %95 = load double*, double** %2, align 8
  %96 = getelementptr inbounds double, double* %95, i64 3
  store double %94, double* %96, align 8
  %97 = load double, double* %5, align 8
  %98 = load double, double* %10, align 8
  %99 = fsub double %97, %98
  %100 = load double*, double** %2, align 8
  %101 = getelementptr inbounds double, double* %100, i64 6
  store double %99, double* %101, align 8
  %102 = load double, double* %6, align 8
  %103 = load double, double* %9, align 8
  %104 = fadd double %102, %103
  %105 = load double*, double** %2, align 8
  %106 = getelementptr inbounds double, double* %105, i64 7
  store double %104, double* %106, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftx020(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double* %0, double** %2, align 8
  %5 = load double*, double** %2, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %2, align 8
  %9 = getelementptr inbounds double, double* %8, i64 2
  %10 = load double, double* %9, align 8
  %11 = fsub double %7, %10
  store double %11, double* %3, align 8
  %12 = load double*, double** %2, align 8
  %13 = getelementptr inbounds double, double* %12, i64 1
  %14 = load double, double* %13, align 8
  %15 = load double*, double** %2, align 8
  %16 = getelementptr inbounds double, double* %15, i64 3
  %17 = load double, double* %16, align 8
  %18 = fsub double %14, %17
  store double %18, double* %4, align 8
  %19 = load double*, double** %2, align 8
  %20 = getelementptr inbounds double, double* %19, i64 2
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %2, align 8
  %23 = getelementptr inbounds double, double* %22, i64 0
  %24 = load double, double* %23, align 8
  %25 = fadd double %24, %21
  store double %25, double* %23, align 8
  %26 = load double*, double** %2, align 8
  %27 = getelementptr inbounds double, double* %26, i64 3
  %28 = load double, double* %27, align 8
  %29 = load double*, double** %2, align 8
  %30 = getelementptr inbounds double, double* %29, i64 1
  %31 = load double, double* %30, align 8
  %32 = fadd double %31, %28
  store double %32, double* %30, align 8
  %33 = load double, double* %3, align 8
  %34 = load double*, double** %2, align 8
  %35 = getelementptr inbounds double, double* %34, i64 2
  store double %33, double* %35, align 8
  %36 = load double, double* %4, align 8
  %37 = load double*, double** %2, align 8
  %38 = getelementptr inbounds double, double* %37, i64 3
  store double %36, double* %38, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftf162(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %50 = load double*, double** %4, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  %52 = load double, double* %51, align 8
  store double %52, double* %5, align 8
  %53 = load double*, double** %4, align 8
  %54 = getelementptr inbounds double, double* %53, i64 4
  %55 = load double, double* %54, align 8
  store double %55, double* %6, align 8
  %56 = load double*, double** %4, align 8
  %57 = getelementptr inbounds double, double* %56, i64 5
  %58 = load double, double* %57, align 8
  store double %58, double* %7, align 8
  %59 = load double*, double** %4, align 8
  %60 = getelementptr inbounds double, double* %59, i64 6
  %61 = load double, double* %60, align 8
  store double %61, double* %10, align 8
  %62 = load double*, double** %4, align 8
  %63 = getelementptr inbounds double, double* %62, i64 7
  %64 = load double, double* %63, align 8
  store double %64, double* %11, align 8
  %65 = load double*, double** %4, align 8
  %66 = getelementptr inbounds double, double* %65, i64 8
  %67 = load double, double* %66, align 8
  store double %67, double* %8, align 8
  %68 = load double*, double** %4, align 8
  %69 = getelementptr inbounds double, double* %68, i64 9
  %70 = load double, double* %69, align 8
  store double %70, double* %9, align 8
  %71 = load double*, double** %3, align 8
  %72 = getelementptr inbounds double, double* %71, i64 0
  %73 = load double, double* %72, align 8
  %74 = load double*, double** %3, align 8
  %75 = getelementptr inbounds double, double* %74, i64 17
  %76 = load double, double* %75, align 8
  %77 = fsub double %73, %76
  store double %77, double* %14, align 8
  %78 = load double*, double** %3, align 8
  %79 = getelementptr inbounds double, double* %78, i64 1
  %80 = load double, double* %79, align 8
  %81 = load double*, double** %3, align 8
  %82 = getelementptr inbounds double, double* %81, i64 16
  %83 = load double, double* %82, align 8
  %84 = fadd double %80, %83
  store double %84, double* %15, align 8
  %85 = load double*, double** %3, align 8
  %86 = getelementptr inbounds double, double* %85, i64 8
  %87 = load double, double* %86, align 8
  %88 = load double*, double** %3, align 8
  %89 = getelementptr inbounds double, double* %88, i64 25
  %90 = load double, double* %89, align 8
  %91 = fsub double %87, %90
  store double %91, double* %12, align 8
  %92 = load double*, double** %3, align 8
  %93 = getelementptr inbounds double, double* %92, i64 9
  %94 = load double, double* %93, align 8
  %95 = load double*, double** %3, align 8
  %96 = getelementptr inbounds double, double* %95, i64 24
  %97 = load double, double* %96, align 8
  %98 = fadd double %94, %97
  store double %98, double* %13, align 8
  %99 = load double, double* %5, align 8
  %100 = load double, double* %12, align 8
  %101 = load double, double* %13, align 8
  %102 = fsub double %100, %101
  %103 = fmul double %99, %102
  store double %103, double* %16, align 8
  %104 = load double, double* %5, align 8
  %105 = load double, double* %13, align 8
  %106 = load double, double* %12, align 8
  %107 = fadd double %105, %106
  %108 = fmul double %104, %107
  store double %108, double* %17, align 8
  %109 = load double, double* %14, align 8
  %110 = load double, double* %16, align 8
  %111 = fadd double %109, %110
  store double %111, double* %18, align 8
  %112 = load double, double* %15, align 8
  %113 = load double, double* %17, align 8
  %114 = fadd double %112, %113
  store double %114, double* %19, align 8
  %115 = load double, double* %14, align 8
  %116 = load double, double* %16, align 8
  %117 = fsub double %115, %116
  store double %117, double* %26, align 8
  %118 = load double, double* %15, align 8
  %119 = load double, double* %17, align 8
  %120 = fsub double %118, %119
  store double %120, double* %27, align 8
  %121 = load double*, double** %3, align 8
  %122 = getelementptr inbounds double, double* %121, i64 0
  %123 = load double, double* %122, align 8
  %124 = load double*, double** %3, align 8
  %125 = getelementptr inbounds double, double* %124, i64 17
  %126 = load double, double* %125, align 8
  %127 = fadd double %123, %126
  store double %127, double* %14, align 8
  %128 = load double*, double** %3, align 8
  %129 = getelementptr inbounds double, double* %128, i64 1
  %130 = load double, double* %129, align 8
  %131 = load double*, double** %3, align 8
  %132 = getelementptr inbounds double, double* %131, i64 16
  %133 = load double, double* %132, align 8
  %134 = fsub double %130, %133
  store double %134, double* %15, align 8
  %135 = load double*, double** %3, align 8
  %136 = getelementptr inbounds double, double* %135, i64 8
  %137 = load double, double* %136, align 8
  %138 = load double*, double** %3, align 8
  %139 = getelementptr inbounds double, double* %138, i64 25
  %140 = load double, double* %139, align 8
  %141 = fadd double %137, %140
  store double %141, double* %12, align 8
  %142 = load double*, double** %3, align 8
  %143 = getelementptr inbounds double, double* %142, i64 9
  %144 = load double, double* %143, align 8
  %145 = load double*, double** %3, align 8
  %146 = getelementptr inbounds double, double* %145, i64 24
  %147 = load double, double* %146, align 8
  %148 = fsub double %144, %147
  store double %148, double* %13, align 8
  %149 = load double, double* %5, align 8
  %150 = load double, double* %12, align 8
  %151 = load double, double* %13, align 8
  %152 = fsub double %150, %151
  %153 = fmul double %149, %152
  store double %153, double* %16, align 8
  %154 = load double, double* %5, align 8
  %155 = load double, double* %13, align 8
  %156 = load double, double* %12, align 8
  %157 = fadd double %155, %156
  %158 = fmul double %154, %157
  store double %158, double* %17, align 8
  %159 = load double, double* %14, align 8
  %160 = load double, double* %17, align 8
  %161 = fsub double %159, %160
  store double %161, double* %34, align 8
  %162 = load double, double* %15, align 8
  %163 = load double, double* %16, align 8
  %164 = fadd double %162, %163
  store double %164, double* %35, align 8
  %165 = load double, double* %14, align 8
  %166 = load double, double* %17, align 8
  %167 = fadd double %165, %166
  store double %167, double* %42, align 8
  %168 = load double, double* %15, align 8
  %169 = load double, double* %16, align 8
  %170 = fsub double %168, %169
  store double %170, double* %43, align 8
  %171 = load double*, double** %3, align 8
  %172 = getelementptr inbounds double, double* %171, i64 2
  %173 = load double, double* %172, align 8
  %174 = load double*, double** %3, align 8
  %175 = getelementptr inbounds double, double* %174, i64 19
  %176 = load double, double* %175, align 8
  %177 = fsub double %173, %176
  store double %177, double* %12, align 8
  %178 = load double*, double** %3, align 8
  %179 = getelementptr inbounds double, double* %178, i64 3
  %180 = load double, double* %179, align 8
  %181 = load double*, double** %3, align 8
  %182 = getelementptr inbounds double, double* %181, i64 18
  %183 = load double, double* %182, align 8
  %184 = fadd double %180, %183
  store double %184, double* %13, align 8
  %185 = load double, double* %6, align 8
  %186 = load double, double* %12, align 8
  %187 = fmul double %185, %186
  %188 = load double, double* %7, align 8
  %189 = load double, double* %13, align 8
  %190 = fmul double %188, %189
  %191 = fsub double %187, %190
  store double %191, double* %14, align 8
  %192 = load double, double* %6, align 8
  %193 = load double, double* %13, align 8
  %194 = fmul double %192, %193
  %195 = load double, double* %7, align 8
  %196 = load double, double* %12, align 8
  %197 = fmul double %195, %196
  %198 = fadd double %194, %197
  store double %198, double* %15, align 8
  %199 = load double*, double** %3, align 8
  %200 = getelementptr inbounds double, double* %199, i64 10
  %201 = load double, double* %200, align 8
  %202 = load double*, double** %3, align 8
  %203 = getelementptr inbounds double, double* %202, i64 27
  %204 = load double, double* %203, align 8
  %205 = fsub double %201, %204
  store double %205, double* %12, align 8
  %206 = load double*, double** %3, align 8
  %207 = getelementptr inbounds double, double* %206, i64 11
  %208 = load double, double* %207, align 8
  %209 = load double*, double** %3, align 8
  %210 = getelementptr inbounds double, double* %209, i64 26
  %211 = load double, double* %210, align 8
  %212 = fadd double %208, %211
  store double %212, double* %13, align 8
  %213 = load double, double* %11, align 8
  %214 = load double, double* %12, align 8
  %215 = fmul double %213, %214
  %216 = load double, double* %10, align 8
  %217 = load double, double* %13, align 8
  %218 = fmul double %216, %217
  %219 = fsub double %215, %218
  store double %219, double* %16, align 8
  %220 = load double, double* %11, align 8
  %221 = load double, double* %13, align 8
  %222 = fmul double %220, %221
  %223 = load double, double* %10, align 8
  %224 = load double, double* %12, align 8
  %225 = fmul double %223, %224
  %226 = fadd double %222, %225
  store double %226, double* %17, align 8
  %227 = load double, double* %14, align 8
  %228 = load double, double* %16, align 8
  %229 = fadd double %227, %228
  store double %229, double* %20, align 8
  %230 = load double, double* %15, align 8
  %231 = load double, double* %17, align 8
  %232 = fadd double %230, %231
  store double %232, double* %21, align 8
  %233 = load double, double* %14, align 8
  %234 = load double, double* %16, align 8
  %235 = fsub double %233, %234
  store double %235, double* %28, align 8
  %236 = load double, double* %15, align 8
  %237 = load double, double* %17, align 8
  %238 = fsub double %236, %237
  store double %238, double* %29, align 8
  %239 = load double*, double** %3, align 8
  %240 = getelementptr inbounds double, double* %239, i64 2
  %241 = load double, double* %240, align 8
  %242 = load double*, double** %3, align 8
  %243 = getelementptr inbounds double, double* %242, i64 19
  %244 = load double, double* %243, align 8
  %245 = fadd double %241, %244
  store double %245, double* %12, align 8
  %246 = load double*, double** %3, align 8
  %247 = getelementptr inbounds double, double* %246, i64 3
  %248 = load double, double* %247, align 8
  %249 = load double*, double** %3, align 8
  %250 = getelementptr inbounds double, double* %249, i64 18
  %251 = load double, double* %250, align 8
  %252 = fsub double %248, %251
  store double %252, double* %13, align 8
  %253 = load double, double* %10, align 8
  %254 = load double, double* %12, align 8
  %255 = fmul double %253, %254
  %256 = load double, double* %11, align 8
  %257 = load double, double* %13, align 8
  %258 = fmul double %256, %257
  %259 = fsub double %255, %258
  store double %259, double* %14, align 8
  %260 = load double, double* %10, align 8
  %261 = load double, double* %13, align 8
  %262 = fmul double %260, %261
  %263 = load double, double* %11, align 8
  %264 = load double, double* %12, align 8
  %265 = fmul double %263, %264
  %266 = fadd double %262, %265
  store double %266, double* %15, align 8
  %267 = load double*, double** %3, align 8
  %268 = getelementptr inbounds double, double* %267, i64 10
  %269 = load double, double* %268, align 8
  %270 = load double*, double** %3, align 8
  %271 = getelementptr inbounds double, double* %270, i64 27
  %272 = load double, double* %271, align 8
  %273 = fadd double %269, %272
  store double %273, double* %12, align 8
  %274 = load double*, double** %3, align 8
  %275 = getelementptr inbounds double, double* %274, i64 11
  %276 = load double, double* %275, align 8
  %277 = load double*, double** %3, align 8
  %278 = getelementptr inbounds double, double* %277, i64 26
  %279 = load double, double* %278, align 8
  %280 = fsub double %276, %279
  store double %280, double* %13, align 8
  %281 = load double, double* %6, align 8
  %282 = load double, double* %12, align 8
  %283 = fmul double %281, %282
  %284 = load double, double* %7, align 8
  %285 = load double, double* %13, align 8
  %286 = fmul double %284, %285
  %287 = fadd double %283, %286
  store double %287, double* %16, align 8
  %288 = load double, double* %6, align 8
  %289 = load double, double* %13, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %7, align 8
  %292 = load double, double* %12, align 8
  %293 = fmul double %291, %292
  %294 = fsub double %290, %293
  store double %294, double* %17, align 8
  %295 = load double, double* %14, align 8
  %296 = load double, double* %16, align 8
  %297 = fsub double %295, %296
  store double %297, double* %36, align 8
  %298 = load double, double* %15, align 8
  %299 = load double, double* %17, align 8
  %300 = fsub double %298, %299
  store double %300, double* %37, align 8
  %301 = load double, double* %14, align 8
  %302 = load double, double* %16, align 8
  %303 = fadd double %301, %302
  store double %303, double* %44, align 8
  %304 = load double, double* %15, align 8
  %305 = load double, double* %17, align 8
  %306 = fadd double %304, %305
  store double %306, double* %45, align 8
  %307 = load double*, double** %3, align 8
  %308 = getelementptr inbounds double, double* %307, i64 4
  %309 = load double, double* %308, align 8
  %310 = load double*, double** %3, align 8
  %311 = getelementptr inbounds double, double* %310, i64 21
  %312 = load double, double* %311, align 8
  %313 = fsub double %309, %312
  store double %313, double* %12, align 8
  %314 = load double*, double** %3, align 8
  %315 = getelementptr inbounds double, double* %314, i64 5
  %316 = load double, double* %315, align 8
  %317 = load double*, double** %3, align 8
  %318 = getelementptr inbounds double, double* %317, i64 20
  %319 = load double, double* %318, align 8
  %320 = fadd double %316, %319
  store double %320, double* %13, align 8
  %321 = load double, double* %8, align 8
  %322 = load double, double* %12, align 8
  %323 = fmul double %321, %322
  %324 = load double, double* %9, align 8
  %325 = load double, double* %13, align 8
  %326 = fmul double %324, %325
  %327 = fsub double %323, %326
  store double %327, double* %14, align 8
  %328 = load double, double* %8, align 8
  %329 = load double, double* %13, align 8
  %330 = fmul double %328, %329
  %331 = load double, double* %9, align 8
  %332 = load double, double* %12, align 8
  %333 = fmul double %331, %332
  %334 = fadd double %330, %333
  store double %334, double* %15, align 8
  %335 = load double*, double** %3, align 8
  %336 = getelementptr inbounds double, double* %335, i64 12
  %337 = load double, double* %336, align 8
  %338 = load double*, double** %3, align 8
  %339 = getelementptr inbounds double, double* %338, i64 29
  %340 = load double, double* %339, align 8
  %341 = fsub double %337, %340
  store double %341, double* %12, align 8
  %342 = load double*, double** %3, align 8
  %343 = getelementptr inbounds double, double* %342, i64 13
  %344 = load double, double* %343, align 8
  %345 = load double*, double** %3, align 8
  %346 = getelementptr inbounds double, double* %345, i64 28
  %347 = load double, double* %346, align 8
  %348 = fadd double %344, %347
  store double %348, double* %13, align 8
  %349 = load double, double* %9, align 8
  %350 = load double, double* %12, align 8
  %351 = fmul double %349, %350
  %352 = load double, double* %8, align 8
  %353 = load double, double* %13, align 8
  %354 = fmul double %352, %353
  %355 = fsub double %351, %354
  store double %355, double* %16, align 8
  %356 = load double, double* %9, align 8
  %357 = load double, double* %13, align 8
  %358 = fmul double %356, %357
  %359 = load double, double* %8, align 8
  %360 = load double, double* %12, align 8
  %361 = fmul double %359, %360
  %362 = fadd double %358, %361
  store double %362, double* %17, align 8
  %363 = load double, double* %14, align 8
  %364 = load double, double* %16, align 8
  %365 = fadd double %363, %364
  store double %365, double* %22, align 8
  %366 = load double, double* %15, align 8
  %367 = load double, double* %17, align 8
  %368 = fadd double %366, %367
  store double %368, double* %23, align 8
  %369 = load double, double* %14, align 8
  %370 = load double, double* %16, align 8
  %371 = fsub double %369, %370
  store double %371, double* %30, align 8
  %372 = load double, double* %15, align 8
  %373 = load double, double* %17, align 8
  %374 = fsub double %372, %373
  store double %374, double* %31, align 8
  %375 = load double*, double** %3, align 8
  %376 = getelementptr inbounds double, double* %375, i64 4
  %377 = load double, double* %376, align 8
  %378 = load double*, double** %3, align 8
  %379 = getelementptr inbounds double, double* %378, i64 21
  %380 = load double, double* %379, align 8
  %381 = fadd double %377, %380
  store double %381, double* %12, align 8
  %382 = load double*, double** %3, align 8
  %383 = getelementptr inbounds double, double* %382, i64 5
  %384 = load double, double* %383, align 8
  %385 = load double*, double** %3, align 8
  %386 = getelementptr inbounds double, double* %385, i64 20
  %387 = load double, double* %386, align 8
  %388 = fsub double %384, %387
  store double %388, double* %13, align 8
  %389 = load double, double* %9, align 8
  %390 = load double, double* %12, align 8
  %391 = fmul double %389, %390
  %392 = load double, double* %8, align 8
  %393 = load double, double* %13, align 8
  %394 = fmul double %392, %393
  %395 = fsub double %391, %394
  store double %395, double* %14, align 8
  %396 = load double, double* %9, align 8
  %397 = load double, double* %13, align 8
  %398 = fmul double %396, %397
  %399 = load double, double* %8, align 8
  %400 = load double, double* %12, align 8
  %401 = fmul double %399, %400
  %402 = fadd double %398, %401
  store double %402, double* %15, align 8
  %403 = load double*, double** %3, align 8
  %404 = getelementptr inbounds double, double* %403, i64 12
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %3, align 8
  %407 = getelementptr inbounds double, double* %406, i64 29
  %408 = load double, double* %407, align 8
  %409 = fadd double %405, %408
  store double %409, double* %12, align 8
  %410 = load double*, double** %3, align 8
  %411 = getelementptr inbounds double, double* %410, i64 13
  %412 = load double, double* %411, align 8
  %413 = load double*, double** %3, align 8
  %414 = getelementptr inbounds double, double* %413, i64 28
  %415 = load double, double* %414, align 8
  %416 = fsub double %412, %415
  store double %416, double* %13, align 8
  %417 = load double, double* %8, align 8
  %418 = load double, double* %12, align 8
  %419 = fmul double %417, %418
  %420 = load double, double* %9, align 8
  %421 = load double, double* %13, align 8
  %422 = fmul double %420, %421
  %423 = fsub double %419, %422
  store double %423, double* %16, align 8
  %424 = load double, double* %8, align 8
  %425 = load double, double* %13, align 8
  %426 = fmul double %424, %425
  %427 = load double, double* %9, align 8
  %428 = load double, double* %12, align 8
  %429 = fmul double %427, %428
  %430 = fadd double %426, %429
  store double %430, double* %17, align 8
  %431 = load double, double* %14, align 8
  %432 = load double, double* %16, align 8
  %433 = fsub double %431, %432
  store double %433, double* %38, align 8
  %434 = load double, double* %15, align 8
  %435 = load double, double* %17, align 8
  %436 = fsub double %434, %435
  store double %436, double* %39, align 8
  %437 = load double, double* %14, align 8
  %438 = load double, double* %16, align 8
  %439 = fadd double %437, %438
  store double %439, double* %46, align 8
  %440 = load double, double* %15, align 8
  %441 = load double, double* %17, align 8
  %442 = fadd double %440, %441
  store double %442, double* %47, align 8
  %443 = load double*, double** %3, align 8
  %444 = getelementptr inbounds double, double* %443, i64 6
  %445 = load double, double* %444, align 8
  %446 = load double*, double** %3, align 8
  %447 = getelementptr inbounds double, double* %446, i64 23
  %448 = load double, double* %447, align 8
  %449 = fsub double %445, %448
  store double %449, double* %12, align 8
  %450 = load double*, double** %3, align 8
  %451 = getelementptr inbounds double, double* %450, i64 7
  %452 = load double, double* %451, align 8
  %453 = load double*, double** %3, align 8
  %454 = getelementptr inbounds double, double* %453, i64 22
  %455 = load double, double* %454, align 8
  %456 = fadd double %452, %455
  store double %456, double* %13, align 8
  %457 = load double, double* %10, align 8
  %458 = load double, double* %12, align 8
  %459 = fmul double %457, %458
  %460 = load double, double* %11, align 8
  %461 = load double, double* %13, align 8
  %462 = fmul double %460, %461
  %463 = fsub double %459, %462
  store double %463, double* %14, align 8
  %464 = load double, double* %10, align 8
  %465 = load double, double* %13, align 8
  %466 = fmul double %464, %465
  %467 = load double, double* %11, align 8
  %468 = load double, double* %12, align 8
  %469 = fmul double %467, %468
  %470 = fadd double %466, %469
  store double %470, double* %15, align 8
  %471 = load double*, double** %3, align 8
  %472 = getelementptr inbounds double, double* %471, i64 14
  %473 = load double, double* %472, align 8
  %474 = load double*, double** %3, align 8
  %475 = getelementptr inbounds double, double* %474, i64 31
  %476 = load double, double* %475, align 8
  %477 = fsub double %473, %476
  store double %477, double* %12, align 8
  %478 = load double*, double** %3, align 8
  %479 = getelementptr inbounds double, double* %478, i64 15
  %480 = load double, double* %479, align 8
  %481 = load double*, double** %3, align 8
  %482 = getelementptr inbounds double, double* %481, i64 30
  %483 = load double, double* %482, align 8
  %484 = fadd double %480, %483
  store double %484, double* %13, align 8
  %485 = load double, double* %7, align 8
  %486 = load double, double* %12, align 8
  %487 = fmul double %485, %486
  %488 = load double, double* %6, align 8
  %489 = load double, double* %13, align 8
  %490 = fmul double %488, %489
  %491 = fsub double %487, %490
  store double %491, double* %16, align 8
  %492 = load double, double* %7, align 8
  %493 = load double, double* %13, align 8
  %494 = fmul double %492, %493
  %495 = load double, double* %6, align 8
  %496 = load double, double* %12, align 8
  %497 = fmul double %495, %496
  %498 = fadd double %494, %497
  store double %498, double* %17, align 8
  %499 = load double, double* %14, align 8
  %500 = load double, double* %16, align 8
  %501 = fadd double %499, %500
  store double %501, double* %24, align 8
  %502 = load double, double* %15, align 8
  %503 = load double, double* %17, align 8
  %504 = fadd double %502, %503
  store double %504, double* %25, align 8
  %505 = load double, double* %14, align 8
  %506 = load double, double* %16, align 8
  %507 = fsub double %505, %506
  store double %507, double* %32, align 8
  %508 = load double, double* %15, align 8
  %509 = load double, double* %17, align 8
  %510 = fsub double %508, %509
  store double %510, double* %33, align 8
  %511 = load double*, double** %3, align 8
  %512 = getelementptr inbounds double, double* %511, i64 6
  %513 = load double, double* %512, align 8
  %514 = load double*, double** %3, align 8
  %515 = getelementptr inbounds double, double* %514, i64 23
  %516 = load double, double* %515, align 8
  %517 = fadd double %513, %516
  store double %517, double* %12, align 8
  %518 = load double*, double** %3, align 8
  %519 = getelementptr inbounds double, double* %518, i64 7
  %520 = load double, double* %519, align 8
  %521 = load double*, double** %3, align 8
  %522 = getelementptr inbounds double, double* %521, i64 22
  %523 = load double, double* %522, align 8
  %524 = fsub double %520, %523
  store double %524, double* %13, align 8
  %525 = load double, double* %7, align 8
  %526 = load double, double* %12, align 8
  %527 = fmul double %525, %526
  %528 = load double, double* %6, align 8
  %529 = load double, double* %13, align 8
  %530 = fmul double %528, %529
  %531 = fadd double %527, %530
  store double %531, double* %14, align 8
  %532 = load double, double* %7, align 8
  %533 = load double, double* %13, align 8
  %534 = fmul double %532, %533
  %535 = load double, double* %6, align 8
  %536 = load double, double* %12, align 8
  %537 = fmul double %535, %536
  %538 = fsub double %534, %537
  store double %538, double* %15, align 8
  %539 = load double*, double** %3, align 8
  %540 = getelementptr inbounds double, double* %539, i64 14
  %541 = load double, double* %540, align 8
  %542 = load double*, double** %3, align 8
  %543 = getelementptr inbounds double, double* %542, i64 31
  %544 = load double, double* %543, align 8
  %545 = fadd double %541, %544
  store double %545, double* %12, align 8
  %546 = load double*, double** %3, align 8
  %547 = getelementptr inbounds double, double* %546, i64 15
  %548 = load double, double* %547, align 8
  %549 = load double*, double** %3, align 8
  %550 = getelementptr inbounds double, double* %549, i64 30
  %551 = load double, double* %550, align 8
  %552 = fsub double %548, %551
  store double %552, double* %13, align 8
  %553 = load double, double* %11, align 8
  %554 = load double, double* %12, align 8
  %555 = fmul double %553, %554
  %556 = load double, double* %10, align 8
  %557 = load double, double* %13, align 8
  %558 = fmul double %556, %557
  %559 = fsub double %555, %558
  store double %559, double* %16, align 8
  %560 = load double, double* %11, align 8
  %561 = load double, double* %13, align 8
  %562 = fmul double %560, %561
  %563 = load double, double* %10, align 8
  %564 = load double, double* %12, align 8
  %565 = fmul double %563, %564
  %566 = fadd double %562, %565
  store double %566, double* %17, align 8
  %567 = load double, double* %14, align 8
  %568 = load double, double* %16, align 8
  %569 = fadd double %567, %568
  store double %569, double* %40, align 8
  %570 = load double, double* %15, align 8
  %571 = load double, double* %17, align 8
  %572 = fadd double %570, %571
  store double %572, double* %41, align 8
  %573 = load double, double* %14, align 8
  %574 = load double, double* %16, align 8
  %575 = fsub double %573, %574
  store double %575, double* %48, align 8
  %576 = load double, double* %15, align 8
  %577 = load double, double* %17, align 8
  %578 = fsub double %576, %577
  store double %578, double* %49, align 8
  %579 = load double, double* %18, align 8
  %580 = load double, double* %22, align 8
  %581 = fadd double %579, %580
  store double %581, double* %14, align 8
  %582 = load double, double* %19, align 8
  %583 = load double, double* %23, align 8
  %584 = fadd double %582, %583
  store double %584, double* %15, align 8
  %585 = load double, double* %20, align 8
  %586 = load double, double* %24, align 8
  %587 = fadd double %585, %586
  store double %587, double* %16, align 8
  %588 = load double, double* %21, align 8
  %589 = load double, double* %25, align 8
  %590 = fadd double %588, %589
  store double %590, double* %17, align 8
  %591 = load double, double* %14, align 8
  %592 = load double, double* %16, align 8
  %593 = fadd double %591, %592
  %594 = load double*, double** %3, align 8
  %595 = getelementptr inbounds double, double* %594, i64 0
  store double %593, double* %595, align 8
  %596 = load double, double* %15, align 8
  %597 = load double, double* %17, align 8
  %598 = fadd double %596, %597
  %599 = load double*, double** %3, align 8
  %600 = getelementptr inbounds double, double* %599, i64 1
  store double %598, double* %600, align 8
  %601 = load double, double* %14, align 8
  %602 = load double, double* %16, align 8
  %603 = fsub double %601, %602
  %604 = load double*, double** %3, align 8
  %605 = getelementptr inbounds double, double* %604, i64 2
  store double %603, double* %605, align 8
  %606 = load double, double* %15, align 8
  %607 = load double, double* %17, align 8
  %608 = fsub double %606, %607
  %609 = load double*, double** %3, align 8
  %610 = getelementptr inbounds double, double* %609, i64 3
  store double %608, double* %610, align 8
  %611 = load double, double* %18, align 8
  %612 = load double, double* %22, align 8
  %613 = fsub double %611, %612
  store double %613, double* %14, align 8
  %614 = load double, double* %19, align 8
  %615 = load double, double* %23, align 8
  %616 = fsub double %614, %615
  store double %616, double* %15, align 8
  %617 = load double, double* %20, align 8
  %618 = load double, double* %24, align 8
  %619 = fsub double %617, %618
  store double %619, double* %16, align 8
  %620 = load double, double* %21, align 8
  %621 = load double, double* %25, align 8
  %622 = fsub double %620, %621
  store double %622, double* %17, align 8
  %623 = load double, double* %14, align 8
  %624 = load double, double* %17, align 8
  %625 = fsub double %623, %624
  %626 = load double*, double** %3, align 8
  %627 = getelementptr inbounds double, double* %626, i64 4
  store double %625, double* %627, align 8
  %628 = load double, double* %15, align 8
  %629 = load double, double* %16, align 8
  %630 = fadd double %628, %629
  %631 = load double*, double** %3, align 8
  %632 = getelementptr inbounds double, double* %631, i64 5
  store double %630, double* %632, align 8
  %633 = load double, double* %14, align 8
  %634 = load double, double* %17, align 8
  %635 = fadd double %633, %634
  %636 = load double*, double** %3, align 8
  %637 = getelementptr inbounds double, double* %636, i64 6
  store double %635, double* %637, align 8
  %638 = load double, double* %15, align 8
  %639 = load double, double* %16, align 8
  %640 = fsub double %638, %639
  %641 = load double*, double** %3, align 8
  %642 = getelementptr inbounds double, double* %641, i64 7
  store double %640, double* %642, align 8
  %643 = load double, double* %26, align 8
  %644 = load double, double* %31, align 8
  %645 = fsub double %643, %644
  store double %645, double* %14, align 8
  %646 = load double, double* %27, align 8
  %647 = load double, double* %30, align 8
  %648 = fadd double %646, %647
  store double %648, double* %15, align 8
  %649 = load double, double* %28, align 8
  %650 = load double, double* %33, align 8
  %651 = fsub double %649, %650
  store double %651, double* %12, align 8
  %652 = load double, double* %29, align 8
  %653 = load double, double* %32, align 8
  %654 = fadd double %652, %653
  store double %654, double* %13, align 8
  %655 = load double, double* %5, align 8
  %656 = load double, double* %12, align 8
  %657 = load double, double* %13, align 8
  %658 = fsub double %656, %657
  %659 = fmul double %655, %658
  store double %659, double* %16, align 8
  %660 = load double, double* %5, align 8
  %661 = load double, double* %13, align 8
  %662 = load double, double* %12, align 8
  %663 = fadd double %661, %662
  %664 = fmul double %660, %663
  store double %664, double* %17, align 8
  %665 = load double, double* %14, align 8
  %666 = load double, double* %16, align 8
  %667 = fadd double %665, %666
  %668 = load double*, double** %3, align 8
  %669 = getelementptr inbounds double, double* %668, i64 8
  store double %667, double* %669, align 8
  %670 = load double, double* %15, align 8
  %671 = load double, double* %17, align 8
  %672 = fadd double %670, %671
  %673 = load double*, double** %3, align 8
  %674 = getelementptr inbounds double, double* %673, i64 9
  store double %672, double* %674, align 8
  %675 = load double, double* %14, align 8
  %676 = load double, double* %16, align 8
  %677 = fsub double %675, %676
  %678 = load double*, double** %3, align 8
  %679 = getelementptr inbounds double, double* %678, i64 10
  store double %677, double* %679, align 8
  %680 = load double, double* %15, align 8
  %681 = load double, double* %17, align 8
  %682 = fsub double %680, %681
  %683 = load double*, double** %3, align 8
  %684 = getelementptr inbounds double, double* %683, i64 11
  store double %682, double* %684, align 8
  %685 = load double, double* %26, align 8
  %686 = load double, double* %31, align 8
  %687 = fadd double %685, %686
  store double %687, double* %14, align 8
  %688 = load double, double* %27, align 8
  %689 = load double, double* %30, align 8
  %690 = fsub double %688, %689
  store double %690, double* %15, align 8
  %691 = load double, double* %28, align 8
  %692 = load double, double* %33, align 8
  %693 = fadd double %691, %692
  store double %693, double* %12, align 8
  %694 = load double, double* %29, align 8
  %695 = load double, double* %32, align 8
  %696 = fsub double %694, %695
  store double %696, double* %13, align 8
  %697 = load double, double* %5, align 8
  %698 = load double, double* %12, align 8
  %699 = load double, double* %13, align 8
  %700 = fsub double %698, %699
  %701 = fmul double %697, %700
  store double %701, double* %16, align 8
  %702 = load double, double* %5, align 8
  %703 = load double, double* %13, align 8
  %704 = load double, double* %12, align 8
  %705 = fadd double %703, %704
  %706 = fmul double %702, %705
  store double %706, double* %17, align 8
  %707 = load double, double* %14, align 8
  %708 = load double, double* %17, align 8
  %709 = fsub double %707, %708
  %710 = load double*, double** %3, align 8
  %711 = getelementptr inbounds double, double* %710, i64 12
  store double %709, double* %711, align 8
  %712 = load double, double* %15, align 8
  %713 = load double, double* %16, align 8
  %714 = fadd double %712, %713
  %715 = load double*, double** %3, align 8
  %716 = getelementptr inbounds double, double* %715, i64 13
  store double %714, double* %716, align 8
  %717 = load double, double* %14, align 8
  %718 = load double, double* %17, align 8
  %719 = fadd double %717, %718
  %720 = load double*, double** %3, align 8
  %721 = getelementptr inbounds double, double* %720, i64 14
  store double %719, double* %721, align 8
  %722 = load double, double* %15, align 8
  %723 = load double, double* %16, align 8
  %724 = fsub double %722, %723
  %725 = load double*, double** %3, align 8
  %726 = getelementptr inbounds double, double* %725, i64 15
  store double %724, double* %726, align 8
  %727 = load double, double* %34, align 8
  %728 = load double, double* %38, align 8
  %729 = fadd double %727, %728
  store double %729, double* %14, align 8
  %730 = load double, double* %35, align 8
  %731 = load double, double* %39, align 8
  %732 = fadd double %730, %731
  store double %732, double* %15, align 8
  %733 = load double, double* %36, align 8
  %734 = load double, double* %40, align 8
  %735 = fsub double %733, %734
  store double %735, double* %16, align 8
  %736 = load double, double* %37, align 8
  %737 = load double, double* %41, align 8
  %738 = fsub double %736, %737
  store double %738, double* %17, align 8
  %739 = load double, double* %14, align 8
  %740 = load double, double* %16, align 8
  %741 = fadd double %739, %740
  %742 = load double*, double** %3, align 8
  %743 = getelementptr inbounds double, double* %742, i64 16
  store double %741, double* %743, align 8
  %744 = load double, double* %15, align 8
  %745 = load double, double* %17, align 8
  %746 = fadd double %744, %745
  %747 = load double*, double** %3, align 8
  %748 = getelementptr inbounds double, double* %747, i64 17
  store double %746, double* %748, align 8
  %749 = load double, double* %14, align 8
  %750 = load double, double* %16, align 8
  %751 = fsub double %749, %750
  %752 = load double*, double** %3, align 8
  %753 = getelementptr inbounds double, double* %752, i64 18
  store double %751, double* %753, align 8
  %754 = load double, double* %15, align 8
  %755 = load double, double* %17, align 8
  %756 = fsub double %754, %755
  %757 = load double*, double** %3, align 8
  %758 = getelementptr inbounds double, double* %757, i64 19
  store double %756, double* %758, align 8
  %759 = load double, double* %34, align 8
  %760 = load double, double* %38, align 8
  %761 = fsub double %759, %760
  store double %761, double* %14, align 8
  %762 = load double, double* %35, align 8
  %763 = load double, double* %39, align 8
  %764 = fsub double %762, %763
  store double %764, double* %15, align 8
  %765 = load double, double* %36, align 8
  %766 = load double, double* %40, align 8
  %767 = fadd double %765, %766
  store double %767, double* %16, align 8
  %768 = load double, double* %37, align 8
  %769 = load double, double* %41, align 8
  %770 = fadd double %768, %769
  store double %770, double* %17, align 8
  %771 = load double, double* %14, align 8
  %772 = load double, double* %17, align 8
  %773 = fsub double %771, %772
  %774 = load double*, double** %3, align 8
  %775 = getelementptr inbounds double, double* %774, i64 20
  store double %773, double* %775, align 8
  %776 = load double, double* %15, align 8
  %777 = load double, double* %16, align 8
  %778 = fadd double %776, %777
  %779 = load double*, double** %3, align 8
  %780 = getelementptr inbounds double, double* %779, i64 21
  store double %778, double* %780, align 8
  %781 = load double, double* %14, align 8
  %782 = load double, double* %17, align 8
  %783 = fadd double %781, %782
  %784 = load double*, double** %3, align 8
  %785 = getelementptr inbounds double, double* %784, i64 22
  store double %783, double* %785, align 8
  %786 = load double, double* %15, align 8
  %787 = load double, double* %16, align 8
  %788 = fsub double %786, %787
  %789 = load double*, double** %3, align 8
  %790 = getelementptr inbounds double, double* %789, i64 23
  store double %788, double* %790, align 8
  %791 = load double, double* %42, align 8
  %792 = load double, double* %47, align 8
  %793 = fsub double %791, %792
  store double %793, double* %14, align 8
  %794 = load double, double* %43, align 8
  %795 = load double, double* %46, align 8
  %796 = fadd double %794, %795
  store double %796, double* %15, align 8
  %797 = load double, double* %44, align 8
  %798 = load double, double* %49, align 8
  %799 = fadd double %797, %798
  store double %799, double* %12, align 8
  %800 = load double, double* %45, align 8
  %801 = load double, double* %48, align 8
  %802 = fsub double %800, %801
  store double %802, double* %13, align 8
  %803 = load double, double* %5, align 8
  %804 = load double, double* %12, align 8
  %805 = load double, double* %13, align 8
  %806 = fsub double %804, %805
  %807 = fmul double %803, %806
  store double %807, double* %16, align 8
  %808 = load double, double* %5, align 8
  %809 = load double, double* %13, align 8
  %810 = load double, double* %12, align 8
  %811 = fadd double %809, %810
  %812 = fmul double %808, %811
  store double %812, double* %17, align 8
  %813 = load double, double* %14, align 8
  %814 = load double, double* %16, align 8
  %815 = fadd double %813, %814
  %816 = load double*, double** %3, align 8
  %817 = getelementptr inbounds double, double* %816, i64 24
  store double %815, double* %817, align 8
  %818 = load double, double* %15, align 8
  %819 = load double, double* %17, align 8
  %820 = fadd double %818, %819
  %821 = load double*, double** %3, align 8
  %822 = getelementptr inbounds double, double* %821, i64 25
  store double %820, double* %822, align 8
  %823 = load double, double* %14, align 8
  %824 = load double, double* %16, align 8
  %825 = fsub double %823, %824
  %826 = load double*, double** %3, align 8
  %827 = getelementptr inbounds double, double* %826, i64 26
  store double %825, double* %827, align 8
  %828 = load double, double* %15, align 8
  %829 = load double, double* %17, align 8
  %830 = fsub double %828, %829
  %831 = load double*, double** %3, align 8
  %832 = getelementptr inbounds double, double* %831, i64 27
  store double %830, double* %832, align 8
  %833 = load double, double* %42, align 8
  %834 = load double, double* %47, align 8
  %835 = fadd double %833, %834
  store double %835, double* %14, align 8
  %836 = load double, double* %43, align 8
  %837 = load double, double* %46, align 8
  %838 = fsub double %836, %837
  store double %838, double* %15, align 8
  %839 = load double, double* %44, align 8
  %840 = load double, double* %49, align 8
  %841 = fsub double %839, %840
  store double %841, double* %12, align 8
  %842 = load double, double* %45, align 8
  %843 = load double, double* %48, align 8
  %844 = fadd double %842, %843
  store double %844, double* %13, align 8
  %845 = load double, double* %5, align 8
  %846 = load double, double* %12, align 8
  %847 = load double, double* %13, align 8
  %848 = fsub double %846, %847
  %849 = fmul double %845, %848
  store double %849, double* %16, align 8
  %850 = load double, double* %5, align 8
  %851 = load double, double* %13, align 8
  %852 = load double, double* %12, align 8
  %853 = fadd double %851, %852
  %854 = fmul double %850, %853
  store double %854, double* %17, align 8
  %855 = load double, double* %14, align 8
  %856 = load double, double* %17, align 8
  %857 = fsub double %855, %856
  %858 = load double*, double** %3, align 8
  %859 = getelementptr inbounds double, double* %858, i64 28
  store double %857, double* %859, align 8
  %860 = load double, double* %15, align 8
  %861 = load double, double* %16, align 8
  %862 = fadd double %860, %861
  %863 = load double*, double** %3, align 8
  %864 = getelementptr inbounds double, double* %863, i64 29
  store double %862, double* %864, align 8
  %865 = load double, double* %14, align 8
  %866 = load double, double* %17, align 8
  %867 = fadd double %865, %866
  %868 = load double*, double** %3, align 8
  %869 = getelementptr inbounds double, double* %868, i64 30
  store double %867, double* %869, align 8
  %870 = load double, double* %15, align 8
  %871 = load double, double* %16, align 8
  %872 = fsub double %870, %871
  %873 = load double*, double** %3, align 8
  %874 = getelementptr inbounds double, double* %873, i64 31
  store double %872, double* %874, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftf082(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %28 = load double*, double** %4, align 8
  %29 = getelementptr inbounds double, double* %28, i64 1
  %30 = load double, double* %29, align 8
  store double %30, double* %5, align 8
  %31 = load double*, double** %4, align 8
  %32 = getelementptr inbounds double, double* %31, i64 4
  %33 = load double, double* %32, align 8
  store double %33, double* %6, align 8
  %34 = load double*, double** %4, align 8
  %35 = getelementptr inbounds double, double* %34, i64 5
  %36 = load double, double* %35, align 8
  store double %36, double* %7, align 8
  %37 = load double*, double** %3, align 8
  %38 = getelementptr inbounds double, double* %37, i64 0
  %39 = load double, double* %38, align 8
  %40 = load double*, double** %3, align 8
  %41 = getelementptr inbounds double, double* %40, i64 9
  %42 = load double, double* %41, align 8
  %43 = fsub double %39, %42
  store double %43, double* %12, align 8
  %44 = load double*, double** %3, align 8
  %45 = getelementptr inbounds double, double* %44, i64 1
  %46 = load double, double* %45, align 8
  %47 = load double*, double** %3, align 8
  %48 = getelementptr inbounds double, double* %47, i64 8
  %49 = load double, double* %48, align 8
  %50 = fadd double %46, %49
  store double %50, double* %13, align 8
  %51 = load double*, double** %3, align 8
  %52 = getelementptr inbounds double, double* %51, i64 0
  %53 = load double, double* %52, align 8
  %54 = load double*, double** %3, align 8
  %55 = getelementptr inbounds double, double* %54, i64 9
  %56 = load double, double* %55, align 8
  %57 = fadd double %53, %56
  store double %57, double* %14, align 8
  %58 = load double*, double** %3, align 8
  %59 = getelementptr inbounds double, double* %58, i64 1
  %60 = load double, double* %59, align 8
  %61 = load double*, double** %3, align 8
  %62 = getelementptr inbounds double, double* %61, i64 8
  %63 = load double, double* %62, align 8
  %64 = fsub double %60, %63
  store double %64, double* %15, align 8
  %65 = load double*, double** %3, align 8
  %66 = getelementptr inbounds double, double* %65, i64 4
  %67 = load double, double* %66, align 8
  %68 = load double*, double** %3, align 8
  %69 = getelementptr inbounds double, double* %68, i64 13
  %70 = load double, double* %69, align 8
  %71 = fsub double %67, %70
  store double %71, double* %8, align 8
  %72 = load double*, double** %3, align 8
  %73 = getelementptr inbounds double, double* %72, i64 5
  %74 = load double, double* %73, align 8
  %75 = load double*, double** %3, align 8
  %76 = getelementptr inbounds double, double* %75, i64 12
  %77 = load double, double* %76, align 8
  %78 = fadd double %74, %77
  store double %78, double* %9, align 8
  %79 = load double, double* %5, align 8
  %80 = load double, double* %8, align 8
  %81 = load double, double* %9, align 8
  %82 = fsub double %80, %81
  %83 = fmul double %79, %82
  store double %83, double* %16, align 8
  %84 = load double, double* %5, align 8
  %85 = load double, double* %9, align 8
  %86 = load double, double* %8, align 8
  %87 = fadd double %85, %86
  %88 = fmul double %84, %87
  store double %88, double* %17, align 8
  %89 = load double*, double** %3, align 8
  %90 = getelementptr inbounds double, double* %89, i64 4
  %91 = load double, double* %90, align 8
  %92 = load double*, double** %3, align 8
  %93 = getelementptr inbounds double, double* %92, i64 13
  %94 = load double, double* %93, align 8
  %95 = fadd double %91, %94
  store double %95, double* %8, align 8
  %96 = load double*, double** %3, align 8
  %97 = getelementptr inbounds double, double* %96, i64 5
  %98 = load double, double* %97, align 8
  %99 = load double*, double** %3, align 8
  %100 = getelementptr inbounds double, double* %99, i64 12
  %101 = load double, double* %100, align 8
  %102 = fsub double %98, %101
  store double %102, double* %9, align 8
  %103 = load double, double* %5, align 8
  %104 = load double, double* %8, align 8
  %105 = load double, double* %9, align 8
  %106 = fsub double %104, %105
  %107 = fmul double %103, %106
  store double %107, double* %18, align 8
  %108 = load double, double* %5, align 8
  %109 = load double, double* %9, align 8
  %110 = load double, double* %8, align 8
  %111 = fadd double %109, %110
  %112 = fmul double %108, %111
  store double %112, double* %19, align 8
  %113 = load double*, double** %3, align 8
  %114 = getelementptr inbounds double, double* %113, i64 2
  %115 = load double, double* %114, align 8
  %116 = load double*, double** %3, align 8
  %117 = getelementptr inbounds double, double* %116, i64 11
  %118 = load double, double* %117, align 8
  %119 = fsub double %115, %118
  store double %119, double* %8, align 8
  %120 = load double*, double** %3, align 8
  %121 = getelementptr inbounds double, double* %120, i64 3
  %122 = load double, double* %121, align 8
  %123 = load double*, double** %3, align 8
  %124 = getelementptr inbounds double, double* %123, i64 10
  %125 = load double, double* %124, align 8
  %126 = fadd double %122, %125
  store double %126, double* %9, align 8
  %127 = load double, double* %6, align 8
  %128 = load double, double* %8, align 8
  %129 = fmul double %127, %128
  %130 = load double, double* %7, align 8
  %131 = load double, double* %9, align 8
  %132 = fmul double %130, %131
  %133 = fsub double %129, %132
  store double %133, double* %20, align 8
  %134 = load double, double* %6, align 8
  %135 = load double, double* %9, align 8
  %136 = fmul double %134, %135
  %137 = load double, double* %7, align 8
  %138 = load double, double* %8, align 8
  %139 = fmul double %137, %138
  %140 = fadd double %136, %139
  store double %140, double* %21, align 8
  %141 = load double*, double** %3, align 8
  %142 = getelementptr inbounds double, double* %141, i64 2
  %143 = load double, double* %142, align 8
  %144 = load double*, double** %3, align 8
  %145 = getelementptr inbounds double, double* %144, i64 11
  %146 = load double, double* %145, align 8
  %147 = fadd double %143, %146
  store double %147, double* %8, align 8
  %148 = load double*, double** %3, align 8
  %149 = getelementptr inbounds double, double* %148, i64 3
  %150 = load double, double* %149, align 8
  %151 = load double*, double** %3, align 8
  %152 = getelementptr inbounds double, double* %151, i64 10
  %153 = load double, double* %152, align 8
  %154 = fsub double %150, %153
  store double %154, double* %9, align 8
  %155 = load double, double* %7, align 8
  %156 = load double, double* %8, align 8
  %157 = fmul double %155, %156
  %158 = load double, double* %6, align 8
  %159 = load double, double* %9, align 8
  %160 = fmul double %158, %159
  %161 = fsub double %157, %160
  store double %161, double* %22, align 8
  %162 = load double, double* %7, align 8
  %163 = load double, double* %9, align 8
  %164 = fmul double %162, %163
  %165 = load double, double* %6, align 8
  %166 = load double, double* %8, align 8
  %167 = fmul double %165, %166
  %168 = fadd double %164, %167
  store double %168, double* %23, align 8
  %169 = load double*, double** %3, align 8
  %170 = getelementptr inbounds double, double* %169, i64 6
  %171 = load double, double* %170, align 8
  %172 = load double*, double** %3, align 8
  %173 = getelementptr inbounds double, double* %172, i64 15
  %174 = load double, double* %173, align 8
  %175 = fsub double %171, %174
  store double %175, double* %8, align 8
  %176 = load double*, double** %3, align 8
  %177 = getelementptr inbounds double, double* %176, i64 7
  %178 = load double, double* %177, align 8
  %179 = load double*, double** %3, align 8
  %180 = getelementptr inbounds double, double* %179, i64 14
  %181 = load double, double* %180, align 8
  %182 = fadd double %178, %181
  store double %182, double* %9, align 8
  %183 = load double, double* %7, align 8
  %184 = load double, double* %8, align 8
  %185 = fmul double %183, %184
  %186 = load double, double* %6, align 8
  %187 = load double, double* %9, align 8
  %188 = fmul double %186, %187
  %189 = fsub double %185, %188
  store double %189, double* %24, align 8
  %190 = load double, double* %7, align 8
  %191 = load double, double* %9, align 8
  %192 = fmul double %190, %191
  %193 = load double, double* %6, align 8
  %194 = load double, double* %8, align 8
  %195 = fmul double %193, %194
  %196 = fadd double %192, %195
  store double %196, double* %25, align 8
  %197 = load double*, double** %3, align 8
  %198 = getelementptr inbounds double, double* %197, i64 6
  %199 = load double, double* %198, align 8
  %200 = load double*, double** %3, align 8
  %201 = getelementptr inbounds double, double* %200, i64 15
  %202 = load double, double* %201, align 8
  %203 = fadd double %199, %202
  store double %203, double* %8, align 8
  %204 = load double*, double** %3, align 8
  %205 = getelementptr inbounds double, double* %204, i64 7
  %206 = load double, double* %205, align 8
  %207 = load double*, double** %3, align 8
  %208 = getelementptr inbounds double, double* %207, i64 14
  %209 = load double, double* %208, align 8
  %210 = fsub double %206, %209
  store double %210, double* %9, align 8
  %211 = load double, double* %6, align 8
  %212 = load double, double* %8, align 8
  %213 = fmul double %211, %212
  %214 = load double, double* %7, align 8
  %215 = load double, double* %9, align 8
  %216 = fmul double %214, %215
  %217 = fsub double %213, %216
  store double %217, double* %26, align 8
  %218 = load double, double* %6, align 8
  %219 = load double, double* %9, align 8
  %220 = fmul double %218, %219
  %221 = load double, double* %7, align 8
  %222 = load double, double* %8, align 8
  %223 = fmul double %221, %222
  %224 = fadd double %220, %223
  store double %224, double* %27, align 8
  %225 = load double, double* %12, align 8
  %226 = load double, double* %16, align 8
  %227 = fadd double %225, %226
  store double %227, double* %8, align 8
  %228 = load double, double* %13, align 8
  %229 = load double, double* %17, align 8
  %230 = fadd double %228, %229
  store double %230, double* %9, align 8
  %231 = load double, double* %20, align 8
  %232 = load double, double* %24, align 8
  %233 = fadd double %231, %232
  store double %233, double* %10, align 8
  %234 = load double, double* %21, align 8
  %235 = load double, double* %25, align 8
  %236 = fadd double %234, %235
  store double %236, double* %11, align 8
  %237 = load double, double* %8, align 8
  %238 = load double, double* %10, align 8
  %239 = fadd double %237, %238
  %240 = load double*, double** %3, align 8
  %241 = getelementptr inbounds double, double* %240, i64 0
  store double %239, double* %241, align 8
  %242 = load double, double* %9, align 8
  %243 = load double, double* %11, align 8
  %244 = fadd double %242, %243
  %245 = load double*, double** %3, align 8
  %246 = getelementptr inbounds double, double* %245, i64 1
  store double %244, double* %246, align 8
  %247 = load double, double* %8, align 8
  %248 = load double, double* %10, align 8
  %249 = fsub double %247, %248
  %250 = load double*, double** %3, align 8
  %251 = getelementptr inbounds double, double* %250, i64 2
  store double %249, double* %251, align 8
  %252 = load double, double* %9, align 8
  %253 = load double, double* %11, align 8
  %254 = fsub double %252, %253
  %255 = load double*, double** %3, align 8
  %256 = getelementptr inbounds double, double* %255, i64 3
  store double %254, double* %256, align 8
  %257 = load double, double* %12, align 8
  %258 = load double, double* %16, align 8
  %259 = fsub double %257, %258
  store double %259, double* %8, align 8
  %260 = load double, double* %13, align 8
  %261 = load double, double* %17, align 8
  %262 = fsub double %260, %261
  store double %262, double* %9, align 8
  %263 = load double, double* %20, align 8
  %264 = load double, double* %24, align 8
  %265 = fsub double %263, %264
  store double %265, double* %10, align 8
  %266 = load double, double* %21, align 8
  %267 = load double, double* %25, align 8
  %268 = fsub double %266, %267
  store double %268, double* %11, align 8
  %269 = load double, double* %8, align 8
  %270 = load double, double* %11, align 8
  %271 = fsub double %269, %270
  %272 = load double*, double** %3, align 8
  %273 = getelementptr inbounds double, double* %272, i64 4
  store double %271, double* %273, align 8
  %274 = load double, double* %9, align 8
  %275 = load double, double* %10, align 8
  %276 = fadd double %274, %275
  %277 = load double*, double** %3, align 8
  %278 = getelementptr inbounds double, double* %277, i64 5
  store double %276, double* %278, align 8
  %279 = load double, double* %8, align 8
  %280 = load double, double* %11, align 8
  %281 = fadd double %279, %280
  %282 = load double*, double** %3, align 8
  %283 = getelementptr inbounds double, double* %282, i64 6
  store double %281, double* %283, align 8
  %284 = load double, double* %9, align 8
  %285 = load double, double* %10, align 8
  %286 = fsub double %284, %285
  %287 = load double*, double** %3, align 8
  %288 = getelementptr inbounds double, double* %287, i64 7
  store double %286, double* %288, align 8
  %289 = load double, double* %14, align 8
  %290 = load double, double* %19, align 8
  %291 = fsub double %289, %290
  store double %291, double* %8, align 8
  %292 = load double, double* %15, align 8
  %293 = load double, double* %18, align 8
  %294 = fadd double %292, %293
  store double %294, double* %9, align 8
  %295 = load double, double* %22, align 8
  %296 = load double, double* %26, align 8
  %297 = fsub double %295, %296
  store double %297, double* %10, align 8
  %298 = load double, double* %23, align 8
  %299 = load double, double* %27, align 8
  %300 = fsub double %298, %299
  store double %300, double* %11, align 8
  %301 = load double, double* %8, align 8
  %302 = load double, double* %10, align 8
  %303 = fadd double %301, %302
  %304 = load double*, double** %3, align 8
  %305 = getelementptr inbounds double, double* %304, i64 8
  store double %303, double* %305, align 8
  %306 = load double, double* %9, align 8
  %307 = load double, double* %11, align 8
  %308 = fadd double %306, %307
  %309 = load double*, double** %3, align 8
  %310 = getelementptr inbounds double, double* %309, i64 9
  store double %308, double* %310, align 8
  %311 = load double, double* %8, align 8
  %312 = load double, double* %10, align 8
  %313 = fsub double %311, %312
  %314 = load double*, double** %3, align 8
  %315 = getelementptr inbounds double, double* %314, i64 10
  store double %313, double* %315, align 8
  %316 = load double, double* %9, align 8
  %317 = load double, double* %11, align 8
  %318 = fsub double %316, %317
  %319 = load double*, double** %3, align 8
  %320 = getelementptr inbounds double, double* %319, i64 11
  store double %318, double* %320, align 8
  %321 = load double, double* %14, align 8
  %322 = load double, double* %19, align 8
  %323 = fadd double %321, %322
  store double %323, double* %8, align 8
  %324 = load double, double* %15, align 8
  %325 = load double, double* %18, align 8
  %326 = fsub double %324, %325
  store double %326, double* %9, align 8
  %327 = load double, double* %22, align 8
  %328 = load double, double* %26, align 8
  %329 = fadd double %327, %328
  store double %329, double* %10, align 8
  %330 = load double, double* %23, align 8
  %331 = load double, double* %27, align 8
  %332 = fadd double %330, %331
  store double %332, double* %11, align 8
  %333 = load double, double* %8, align 8
  %334 = load double, double* %11, align 8
  %335 = fsub double %333, %334
  %336 = load double*, double** %3, align 8
  %337 = getelementptr inbounds double, double* %336, i64 12
  store double %335, double* %337, align 8
  %338 = load double, double* %9, align 8
  %339 = load double, double* %10, align 8
  %340 = fadd double %338, %339
  %341 = load double*, double** %3, align 8
  %342 = getelementptr inbounds double, double* %341, i64 13
  store double %340, double* %342, align 8
  %343 = load double, double* %8, align 8
  %344 = load double, double* %11, align 8
  %345 = fadd double %343, %344
  %346 = load double*, double** %3, align 8
  %347 = getelementptr inbounds double, double* %346, i64 14
  store double %345, double* %347, align 8
  %348 = load double, double* %9, align 8
  %349 = load double, double* %10, align 8
  %350 = fsub double %348, %349
  %351 = load double*, double** %3, align 8
  %352 = getelementptr inbounds double, double* %351, i64 15
  store double %350, double* %352, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftmdl1(i32 %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load double*, double** %5, align 8
  %40 = getelementptr inbounds double, double* %39, i64 0
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fadd double %41, %46
  store double %47, double* %20, align 8
  %48 = load double*, double** %5, align 8
  %49 = getelementptr inbounds double, double* %48, i64 1
  %50 = load double, double* %49, align 8
  %51 = load double*, double** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %51, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fadd double %50, %56
  store double %57, double* %21, align 8
  %58 = load double*, double** %5, align 8
  %59 = getelementptr inbounds double, double* %58, i64 0
  %60 = load double, double* %59, align 8
  %61 = load double*, double** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fsub double %60, %65
  store double %66, double* %22, align 8
  %67 = load double*, double** %5, align 8
  %68 = getelementptr inbounds double, double* %67, i64 1
  %69 = load double, double* %68, align 8
  %70 = load double*, double** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %70, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fsub double %69, %75
  store double %76, double* %23, align 8
  %77 = load double*, double** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  %81 = load double, double* %80, align 8
  %82 = load double*, double** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fadd double %81, %86
  store double %87, double* %24, align 8
  %88 = load double*, double** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %88, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %94, i64 %97
  %99 = load double, double* %98, align 8
  %100 = fadd double %93, %99
  store double %100, double* %25, align 8
  %101 = load double*, double** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double*, double** %5, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fsub double %105, %110
  store double %111, double* %26, align 8
  %112 = load double*, double** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %112, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load double*, double** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %118, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fsub double %117, %123
  store double %124, double* %27, align 8
  %125 = load double, double* %20, align 8
  %126 = load double, double* %24, align 8
  %127 = fadd double %125, %126
  %128 = load double*, double** %5, align 8
  %129 = getelementptr inbounds double, double* %128, i64 0
  store double %127, double* %129, align 8
  %130 = load double, double* %21, align 8
  %131 = load double, double* %25, align 8
  %132 = fadd double %130, %131
  %133 = load double*, double** %5, align 8
  %134 = getelementptr inbounds double, double* %133, i64 1
  store double %132, double* %134, align 8
  %135 = load double, double* %20, align 8
  %136 = load double, double* %24, align 8
  %137 = fsub double %135, %136
  %138 = load double*, double** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  store double %137, double* %141, align 8
  %142 = load double, double* %21, align 8
  %143 = load double, double* %25, align 8
  %144 = fsub double %142, %143
  %145 = load double*, double** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %145, i64 %148
  store double %144, double* %149, align 8
  %150 = load double, double* %22, align 8
  %151 = load double, double* %27, align 8
  %152 = fsub double %150, %151
  %153 = load double*, double** %5, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  store double %152, double* %156, align 8
  %157 = load double, double* %23, align 8
  %158 = load double, double* %26, align 8
  %159 = fadd double %157, %158
  %160 = load double*, double** %5, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %160, i64 %163
  store double %159, double* %164, align 8
  %165 = load double, double* %22, align 8
  %166 = load double, double* %27, align 8
  %167 = fadd double %165, %166
  %168 = load double*, double** %5, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %168, i64 %170
  store double %167, double* %171, align 8
  %172 = load double, double* %23, align 8
  %173 = load double, double* %26, align 8
  %174 = fsub double %172, %173
  %175 = load double*, double** %5, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %175, i64 %178
  store double %174, double* %179, align 8
  %180 = load double*, double** %6, align 8
  %181 = getelementptr inbounds double, double* %180, i64 1
  %182 = load double, double* %181, align 8
  store double %182, double* %15, align 8
  store i32 0, i32* %12, align 4
  store i32 2, i32* %7, align 4
  br label %183

183:                                              ; preds = %603, %3
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %606

187:                                              ; preds = %183
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 4
  store i32 %189, i32* %12, align 4
  %190 = load double*, double** %6, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  store double %194, double* %16, align 8
  %195 = load double*, double** %6, align 8
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %195, i64 %198
  %200 = load double, double* %199, align 8
  store double %200, double* %17, align 8
  %201 = load double*, double** %6, align 8
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %201, i64 %204
  %206 = load double, double* %205, align 8
  store double %206, double* %18, align 8
  %207 = load double*, double** %6, align 8
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 3
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %207, i64 %210
  %212 = load double, double* %211, align 8
  %213 = fneg double %212
  store double %213, double* %19, align 8
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %214, %215
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %220, %221
  store i32 %222, i32* %11, align 4
  %223 = load double*, double** %5, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %223, i64 %225
  %227 = load double, double* %226, align 8
  %228 = load double*, double** %5, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, double* %228, i64 %230
  %232 = load double, double* %231, align 8
  %233 = fadd double %227, %232
  store double %233, double* %20, align 8
  %234 = load double*, double** %5, align 8
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds double, double* %234, i64 %237
  %239 = load double, double* %238, align 8
  %240 = load double*, double** %5, align 8
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds double, double* %240, i64 %243
  %245 = load double, double* %244, align 8
  %246 = fadd double %239, %245
  store double %246, double* %21, align 8
  %247 = load double*, double** %5, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double, double* %247, i64 %249
  %251 = load double, double* %250, align 8
  %252 = load double*, double** %5, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, double* %252, i64 %254
  %256 = load double, double* %255, align 8
  %257 = fsub double %251, %256
  store double %257, double* %22, align 8
  %258 = load double*, double** %5, align 8
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %258, i64 %261
  %263 = load double, double* %262, align 8
  %264 = load double*, double** %5, align 8
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, double* %264, i64 %267
  %269 = load double, double* %268, align 8
  %270 = fsub double %263, %269
  store double %270, double* %23, align 8
  %271 = load double*, double** %5, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double, double* %271, i64 %273
  %275 = load double, double* %274, align 8
  %276 = load double*, double** %5, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %276, i64 %278
  %280 = load double, double* %279, align 8
  %281 = fadd double %275, %280
  store double %281, double* %24, align 8
  %282 = load double*, double** %5, align 8
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %282, i64 %285
  %287 = load double, double* %286, align 8
  %288 = load double*, double** %5, align 8
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %288, i64 %291
  %293 = load double, double* %292, align 8
  %294 = fadd double %287, %293
  store double %294, double* %25, align 8
  %295 = load double*, double** %5, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double, double* %295, i64 %297
  %299 = load double, double* %298, align 8
  %300 = load double*, double** %5, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds double, double* %300, i64 %302
  %304 = load double, double* %303, align 8
  %305 = fsub double %299, %304
  store double %305, double* %26, align 8
  %306 = load double*, double** %5, align 8
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double, double* %306, i64 %309
  %311 = load double, double* %310, align 8
  %312 = load double*, double** %5, align 8
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds double, double* %312, i64 %315
  %317 = load double, double* %316, align 8
  %318 = fsub double %311, %317
  store double %318, double* %27, align 8
  %319 = load double, double* %20, align 8
  %320 = load double, double* %24, align 8
  %321 = fadd double %319, %320
  %322 = load double*, double** %5, align 8
  %323 = load i32, i32* %7, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds double, double* %322, i64 %324
  store double %321, double* %325, align 8
  %326 = load double, double* %21, align 8
  %327 = load double, double* %25, align 8
  %328 = fadd double %326, %327
  %329 = load double*, double** %5, align 8
  %330 = load i32, i32* %7, align 4
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds double, double* %329, i64 %332
  store double %328, double* %333, align 8
  %334 = load double, double* %20, align 8
  %335 = load double, double* %24, align 8
  %336 = fsub double %334, %335
  %337 = load double*, double** %5, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double, double* %337, i64 %339
  store double %336, double* %340, align 8
  %341 = load double, double* %21, align 8
  %342 = load double, double* %25, align 8
  %343 = fsub double %341, %342
  %344 = load double*, double** %5, align 8
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double, double* %344, i64 %347
  store double %343, double* %348, align 8
  %349 = load double, double* %22, align 8
  %350 = load double, double* %27, align 8
  %351 = fsub double %349, %350
  store double %351, double* %20, align 8
  %352 = load double, double* %23, align 8
  %353 = load double, double* %26, align 8
  %354 = fadd double %352, %353
  store double %354, double* %21, align 8
  %355 = load double, double* %16, align 8
  %356 = load double, double* %20, align 8
  %357 = fmul double %355, %356
  %358 = load double, double* %17, align 8
  %359 = load double, double* %21, align 8
  %360 = fmul double %358, %359
  %361 = fsub double %357, %360
  %362 = load double*, double** %5, align 8
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, double* %362, i64 %364
  store double %361, double* %365, align 8
  %366 = load double, double* %16, align 8
  %367 = load double, double* %21, align 8
  %368 = fmul double %366, %367
  %369 = load double, double* %17, align 8
  %370 = load double, double* %20, align 8
  %371 = fmul double %369, %370
  %372 = fadd double %368, %371
  %373 = load double*, double** %5, align 8
  %374 = load i32, i32* %10, align 4
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds double, double* %373, i64 %376
  store double %372, double* %377, align 8
  %378 = load double, double* %22, align 8
  %379 = load double, double* %27, align 8
  %380 = fadd double %378, %379
  store double %380, double* %20, align 8
  %381 = load double, double* %23, align 8
  %382 = load double, double* %26, align 8
  %383 = fsub double %381, %382
  store double %383, double* %21, align 8
  %384 = load double, double* %18, align 8
  %385 = load double, double* %20, align 8
  %386 = fmul double %384, %385
  %387 = load double, double* %19, align 8
  %388 = load double, double* %21, align 8
  %389 = fmul double %387, %388
  %390 = fadd double %386, %389
  %391 = load double*, double** %5, align 8
  %392 = load i32, i32* %11, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds double, double* %391, i64 %393
  store double %390, double* %394, align 8
  %395 = load double, double* %18, align 8
  %396 = load double, double* %21, align 8
  %397 = fmul double %395, %396
  %398 = load double, double* %19, align 8
  %399 = load double, double* %20, align 8
  %400 = fmul double %398, %399
  %401 = fsub double %397, %400
  %402 = load double*, double** %5, align 8
  %403 = load i32, i32* %11, align 4
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds double, double* %402, i64 %405
  store double %401, double* %406, align 8
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* %7, align 4
  %409 = sub nsw i32 %407, %408
  store i32 %409, i32* %8, align 4
  %410 = load i32, i32* %8, align 4
  %411 = load i32, i32* %13, align 4
  %412 = add nsw i32 %410, %411
  store i32 %412, i32* %9, align 4
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %13, align 4
  %415 = add nsw i32 %413, %414
  store i32 %415, i32* %10, align 4
  %416 = load i32, i32* %10, align 4
  %417 = load i32, i32* %13, align 4
  %418 = add nsw i32 %416, %417
  store i32 %418, i32* %11, align 4
  %419 = load double*, double** %5, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds double, double* %419, i64 %421
  %423 = load double, double* %422, align 8
  %424 = load double*, double** %5, align 8
  %425 = load i32, i32* %10, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds double, double* %424, i64 %426
  %428 = load double, double* %427, align 8
  %429 = fadd double %423, %428
  store double %429, double* %20, align 8
  %430 = load double*, double** %5, align 8
  %431 = load i32, i32* %8, align 4
  %432 = add nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %430, i64 %433
  %435 = load double, double* %434, align 8
  %436 = load double*, double** %5, align 8
  %437 = load i32, i32* %10, align 4
  %438 = add nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds double, double* %436, i64 %439
  %441 = load double, double* %440, align 8
  %442 = fadd double %435, %441
  store double %442, double* %21, align 8
  %443 = load double*, double** %5, align 8
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %443, i64 %445
  %447 = load double, double* %446, align 8
  %448 = load double*, double** %5, align 8
  %449 = load i32, i32* %10, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds double, double* %448, i64 %450
  %452 = load double, double* %451, align 8
  %453 = fsub double %447, %452
  store double %453, double* %22, align 8
  %454 = load double*, double** %5, align 8
  %455 = load i32, i32* %8, align 4
  %456 = add nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds double, double* %454, i64 %457
  %459 = load double, double* %458, align 8
  %460 = load double*, double** %5, align 8
  %461 = load i32, i32* %10, align 4
  %462 = add nsw i32 %461, 1
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds double, double* %460, i64 %463
  %465 = load double, double* %464, align 8
  %466 = fsub double %459, %465
  store double %466, double* %23, align 8
  %467 = load double*, double** %5, align 8
  %468 = load i32, i32* %9, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds double, double* %467, i64 %469
  %471 = load double, double* %470, align 8
  %472 = load double*, double** %5, align 8
  %473 = load i32, i32* %11, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds double, double* %472, i64 %474
  %476 = load double, double* %475, align 8
  %477 = fadd double %471, %476
  store double %477, double* %24, align 8
  %478 = load double*, double** %5, align 8
  %479 = load i32, i32* %9, align 4
  %480 = add nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds double, double* %478, i64 %481
  %483 = load double, double* %482, align 8
  %484 = load double*, double** %5, align 8
  %485 = load i32, i32* %11, align 4
  %486 = add nsw i32 %485, 1
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds double, double* %484, i64 %487
  %489 = load double, double* %488, align 8
  %490 = fadd double %483, %489
  store double %490, double* %25, align 8
  %491 = load double*, double** %5, align 8
  %492 = load i32, i32* %9, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds double, double* %491, i64 %493
  %495 = load double, double* %494, align 8
  %496 = load double*, double** %5, align 8
  %497 = load i32, i32* %11, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds double, double* %496, i64 %498
  %500 = load double, double* %499, align 8
  %501 = fsub double %495, %500
  store double %501, double* %26, align 8
  %502 = load double*, double** %5, align 8
  %503 = load i32, i32* %9, align 4
  %504 = add nsw i32 %503, 1
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds double, double* %502, i64 %505
  %507 = load double, double* %506, align 8
  %508 = load double*, double** %5, align 8
  %509 = load i32, i32* %11, align 4
  %510 = add nsw i32 %509, 1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds double, double* %508, i64 %511
  %513 = load double, double* %512, align 8
  %514 = fsub double %507, %513
  store double %514, double* %27, align 8
  %515 = load double, double* %20, align 8
  %516 = load double, double* %24, align 8
  %517 = fadd double %515, %516
  %518 = load double*, double** %5, align 8
  %519 = load i32, i32* %8, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds double, double* %518, i64 %520
  store double %517, double* %521, align 8
  %522 = load double, double* %21, align 8
  %523 = load double, double* %25, align 8
  %524 = fadd double %522, %523
  %525 = load double*, double** %5, align 8
  %526 = load i32, i32* %8, align 4
  %527 = add nsw i32 %526, 1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds double, double* %525, i64 %528
  store double %524, double* %529, align 8
  %530 = load double, double* %20, align 8
  %531 = load double, double* %24, align 8
  %532 = fsub double %530, %531
  %533 = load double*, double** %5, align 8
  %534 = load i32, i32* %9, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds double, double* %533, i64 %535
  store double %532, double* %536, align 8
  %537 = load double, double* %21, align 8
  %538 = load double, double* %25, align 8
  %539 = fsub double %537, %538
  %540 = load double*, double** %5, align 8
  %541 = load i32, i32* %9, align 4
  %542 = add nsw i32 %541, 1
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds double, double* %540, i64 %543
  store double %539, double* %544, align 8
  %545 = load double, double* %22, align 8
  %546 = load double, double* %27, align 8
  %547 = fsub double %545, %546
  store double %547, double* %20, align 8
  %548 = load double, double* %23, align 8
  %549 = load double, double* %26, align 8
  %550 = fadd double %548, %549
  store double %550, double* %21, align 8
  %551 = load double, double* %17, align 8
  %552 = load double, double* %20, align 8
  %553 = fmul double %551, %552
  %554 = load double, double* %16, align 8
  %555 = load double, double* %21, align 8
  %556 = fmul double %554, %555
  %557 = fsub double %553, %556
  %558 = load double*, double** %5, align 8
  %559 = load i32, i32* %10, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds double, double* %558, i64 %560
  store double %557, double* %561, align 8
  %562 = load double, double* %17, align 8
  %563 = load double, double* %21, align 8
  %564 = fmul double %562, %563
  %565 = load double, double* %16, align 8
  %566 = load double, double* %20, align 8
  %567 = fmul double %565, %566
  %568 = fadd double %564, %567
  %569 = load double*, double** %5, align 8
  %570 = load i32, i32* %10, align 4
  %571 = add nsw i32 %570, 1
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %569, i64 %572
  store double %568, double* %573, align 8
  %574 = load double, double* %22, align 8
  %575 = load double, double* %27, align 8
  %576 = fadd double %574, %575
  store double %576, double* %20, align 8
  %577 = load double, double* %23, align 8
  %578 = load double, double* %26, align 8
  %579 = fsub double %577, %578
  store double %579, double* %21, align 8
  %580 = load double, double* %19, align 8
  %581 = load double, double* %20, align 8
  %582 = fmul double %580, %581
  %583 = load double, double* %18, align 8
  %584 = load double, double* %21, align 8
  %585 = fmul double %583, %584
  %586 = fadd double %582, %585
  %587 = load double*, double** %5, align 8
  %588 = load i32, i32* %11, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds double, double* %587, i64 %589
  store double %586, double* %590, align 8
  %591 = load double, double* %19, align 8
  %592 = load double, double* %21, align 8
  %593 = fmul double %591, %592
  %594 = load double, double* %18, align 8
  %595 = load double, double* %20, align 8
  %596 = fmul double %594, %595
  %597 = fsub double %593, %596
  %598 = load double*, double** %5, align 8
  %599 = load i32, i32* %11, align 4
  %600 = add nsw i32 %599, 1
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds double, double* %598, i64 %601
  store double %597, double* %602, align 8
  br label %603

603:                                              ; preds = %187
  %604 = load i32, i32* %7, align 4
  %605 = add nsw i32 %604, 2
  store i32 %605, i32* %7, align 4
  br label %183

606:                                              ; preds = %183
  %607 = load i32, i32* %14, align 4
  store i32 %607, i32* %8, align 4
  %608 = load i32, i32* %8, align 4
  %609 = load i32, i32* %13, align 4
  %610 = add nsw i32 %608, %609
  store i32 %610, i32* %9, align 4
  %611 = load i32, i32* %9, align 4
  %612 = load i32, i32* %13, align 4
  %613 = add nsw i32 %611, %612
  store i32 %613, i32* %10, align 4
  %614 = load i32, i32* %10, align 4
  %615 = load i32, i32* %13, align 4
  %616 = add nsw i32 %614, %615
  store i32 %616, i32* %11, align 4
  %617 = load double*, double** %5, align 8
  %618 = load i32, i32* %8, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds double, double* %617, i64 %619
  %621 = load double, double* %620, align 8
  %622 = load double*, double** %5, align 8
  %623 = load i32, i32* %10, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds double, double* %622, i64 %624
  %626 = load double, double* %625, align 8
  %627 = fadd double %621, %626
  store double %627, double* %20, align 8
  %628 = load double*, double** %5, align 8
  %629 = load i32, i32* %8, align 4
  %630 = add nsw i32 %629, 1
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds double, double* %628, i64 %631
  %633 = load double, double* %632, align 8
  %634 = load double*, double** %5, align 8
  %635 = load i32, i32* %10, align 4
  %636 = add nsw i32 %635, 1
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds double, double* %634, i64 %637
  %639 = load double, double* %638, align 8
  %640 = fadd double %633, %639
  store double %640, double* %21, align 8
  %641 = load double*, double** %5, align 8
  %642 = load i32, i32* %8, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds double, double* %641, i64 %643
  %645 = load double, double* %644, align 8
  %646 = load double*, double** %5, align 8
  %647 = load i32, i32* %10, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds double, double* %646, i64 %648
  %650 = load double, double* %649, align 8
  %651 = fsub double %645, %650
  store double %651, double* %22, align 8
  %652 = load double*, double** %5, align 8
  %653 = load i32, i32* %8, align 4
  %654 = add nsw i32 %653, 1
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds double, double* %652, i64 %655
  %657 = load double, double* %656, align 8
  %658 = load double*, double** %5, align 8
  %659 = load i32, i32* %10, align 4
  %660 = add nsw i32 %659, 1
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds double, double* %658, i64 %661
  %663 = load double, double* %662, align 8
  %664 = fsub double %657, %663
  store double %664, double* %23, align 8
  %665 = load double*, double** %5, align 8
  %666 = load i32, i32* %9, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds double, double* %665, i64 %667
  %669 = load double, double* %668, align 8
  %670 = load double*, double** %5, align 8
  %671 = load i32, i32* %11, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds double, double* %670, i64 %672
  %674 = load double, double* %673, align 8
  %675 = fadd double %669, %674
  store double %675, double* %24, align 8
  %676 = load double*, double** %5, align 8
  %677 = load i32, i32* %9, align 4
  %678 = add nsw i32 %677, 1
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds double, double* %676, i64 %679
  %681 = load double, double* %680, align 8
  %682 = load double*, double** %5, align 8
  %683 = load i32, i32* %11, align 4
  %684 = add nsw i32 %683, 1
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds double, double* %682, i64 %685
  %687 = load double, double* %686, align 8
  %688 = fadd double %681, %687
  store double %688, double* %25, align 8
  %689 = load double*, double** %5, align 8
  %690 = load i32, i32* %9, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds double, double* %689, i64 %691
  %693 = load double, double* %692, align 8
  %694 = load double*, double** %5, align 8
  %695 = load i32, i32* %11, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds double, double* %694, i64 %696
  %698 = load double, double* %697, align 8
  %699 = fsub double %693, %698
  store double %699, double* %26, align 8
  %700 = load double*, double** %5, align 8
  %701 = load i32, i32* %9, align 4
  %702 = add nsw i32 %701, 1
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds double, double* %700, i64 %703
  %705 = load double, double* %704, align 8
  %706 = load double*, double** %5, align 8
  %707 = load i32, i32* %11, align 4
  %708 = add nsw i32 %707, 1
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds double, double* %706, i64 %709
  %711 = load double, double* %710, align 8
  %712 = fsub double %705, %711
  store double %712, double* %27, align 8
  %713 = load double, double* %20, align 8
  %714 = load double, double* %24, align 8
  %715 = fadd double %713, %714
  %716 = load double*, double** %5, align 8
  %717 = load i32, i32* %8, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds double, double* %716, i64 %718
  store double %715, double* %719, align 8
  %720 = load double, double* %21, align 8
  %721 = load double, double* %25, align 8
  %722 = fadd double %720, %721
  %723 = load double*, double** %5, align 8
  %724 = load i32, i32* %8, align 4
  %725 = add nsw i32 %724, 1
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds double, double* %723, i64 %726
  store double %722, double* %727, align 8
  %728 = load double, double* %20, align 8
  %729 = load double, double* %24, align 8
  %730 = fsub double %728, %729
  %731 = load double*, double** %5, align 8
  %732 = load i32, i32* %9, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds double, double* %731, i64 %733
  store double %730, double* %734, align 8
  %735 = load double, double* %21, align 8
  %736 = load double, double* %25, align 8
  %737 = fsub double %735, %736
  %738 = load double*, double** %5, align 8
  %739 = load i32, i32* %9, align 4
  %740 = add nsw i32 %739, 1
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds double, double* %738, i64 %741
  store double %737, double* %742, align 8
  %743 = load double, double* %22, align 8
  %744 = load double, double* %27, align 8
  %745 = fsub double %743, %744
  store double %745, double* %20, align 8
  %746 = load double, double* %23, align 8
  %747 = load double, double* %26, align 8
  %748 = fadd double %746, %747
  store double %748, double* %21, align 8
  %749 = load double, double* %15, align 8
  %750 = load double, double* %20, align 8
  %751 = load double, double* %21, align 8
  %752 = fsub double %750, %751
  %753 = fmul double %749, %752
  %754 = load double*, double** %5, align 8
  %755 = load i32, i32* %10, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds double, double* %754, i64 %756
  store double %753, double* %757, align 8
  %758 = load double, double* %15, align 8
  %759 = load double, double* %21, align 8
  %760 = load double, double* %20, align 8
  %761 = fadd double %759, %760
  %762 = fmul double %758, %761
  %763 = load double*, double** %5, align 8
  %764 = load i32, i32* %10, align 4
  %765 = add nsw i32 %764, 1
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds double, double* %763, i64 %766
  store double %762, double* %767, align 8
  %768 = load double, double* %22, align 8
  %769 = load double, double* %27, align 8
  %770 = fadd double %768, %769
  store double %770, double* %20, align 8
  %771 = load double, double* %23, align 8
  %772 = load double, double* %26, align 8
  %773 = fsub double %771, %772
  store double %773, double* %21, align 8
  %774 = load double, double* %15, align 8
  %775 = fneg double %774
  %776 = load double, double* %20, align 8
  %777 = load double, double* %21, align 8
  %778 = fadd double %776, %777
  %779 = fmul double %775, %778
  %780 = load double*, double** %5, align 8
  %781 = load i32, i32* %11, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds double, double* %780, i64 %782
  store double %779, double* %783, align 8
  %784 = load double, double* %15, align 8
  %785 = fneg double %784
  %786 = load double, double* %21, align 8
  %787 = load double, double* %20, align 8
  %788 = fsub double %786, %787
  %789 = fmul double %785, %788
  %790 = load double*, double** %5, align 8
  %791 = load i32, i32* %11, align 4
  %792 = add nsw i32 %791, 1
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds double, double* %790, i64 %793
  store double %789, double* %794, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftmdl2(i32 %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 3
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = mul nsw i32 2, %39
  store i32 %40, i32* %14, align 4
  %41 = load double*, double** %6, align 8
  %42 = getelementptr inbounds double, double* %41, i64 1
  %43 = load double, double* %42, align 8
  store double %43, double* %16, align 8
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load double*, double** %5, align 8
  %52 = getelementptr inbounds double, double* %51, i64 0
  %53 = load double, double* %52, align 8
  %54 = load double*, double** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  %59 = load double, double* %58, align 8
  %60 = fsub double %53, %59
  store double %60, double* %25, align 8
  %61 = load double*, double** %5, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fadd double %63, %68
  store double %69, double* %26, align 8
  %70 = load double*, double** %5, align 8
  %71 = getelementptr inbounds double, double* %70, i64 0
  %72 = load double, double* %71, align 8
  %73 = load double*, double** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %73, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fadd double %72, %78
  store double %79, double* %27, align 8
  %80 = load double*, double** %5, align 8
  %81 = getelementptr inbounds double, double* %80, i64 1
  %82 = load double, double* %81, align 8
  %83 = load double*, double** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fsub double %82, %87
  store double %88, double* %28, align 8
  %89 = load double*, double** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %94, i64 %97
  %99 = load double, double* %98, align 8
  %100 = fsub double %93, %99
  store double %100, double* %29, align 8
  %101 = load double*, double** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %101, i64 %104
  %106 = load double, double* %105, align 8
  %107 = load double*, double** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = fadd double %106, %111
  store double %112, double* %30, align 8
  %113 = load double*, double** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load double*, double** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %118, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fadd double %117, %123
  store double %124, double* %31, align 8
  %125 = load double*, double** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %125, i64 %128
  %130 = load double, double* %129, align 8
  %131 = load double*, double** %5, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %131, i64 %133
  %135 = load double, double* %134, align 8
  %136 = fsub double %130, %135
  store double %136, double* %32, align 8
  %137 = load double, double* %16, align 8
  %138 = load double, double* %29, align 8
  %139 = load double, double* %30, align 8
  %140 = fsub double %138, %139
  %141 = fmul double %137, %140
  store double %141, double* %33, align 8
  %142 = load double, double* %16, align 8
  %143 = load double, double* %30, align 8
  %144 = load double, double* %29, align 8
  %145 = fadd double %143, %144
  %146 = fmul double %142, %145
  store double %146, double* %34, align 8
  %147 = load double, double* %25, align 8
  %148 = load double, double* %33, align 8
  %149 = fadd double %147, %148
  %150 = load double*, double** %5, align 8
  %151 = getelementptr inbounds double, double* %150, i64 0
  store double %149, double* %151, align 8
  %152 = load double, double* %26, align 8
  %153 = load double, double* %34, align 8
  %154 = fadd double %152, %153
  %155 = load double*, double** %5, align 8
  %156 = getelementptr inbounds double, double* %155, i64 1
  store double %154, double* %156, align 8
  %157 = load double, double* %25, align 8
  %158 = load double, double* %33, align 8
  %159 = fsub double %157, %158
  %160 = load double*, double** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %160, i64 %162
  store double %159, double* %163, align 8
  %164 = load double, double* %26, align 8
  %165 = load double, double* %34, align 8
  %166 = fsub double %164, %165
  %167 = load double*, double** %5, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %167, i64 %170
  store double %166, double* %171, align 8
  %172 = load double, double* %16, align 8
  %173 = load double, double* %31, align 8
  %174 = load double, double* %32, align 8
  %175 = fsub double %173, %174
  %176 = fmul double %172, %175
  store double %176, double* %33, align 8
  %177 = load double, double* %16, align 8
  %178 = load double, double* %32, align 8
  %179 = load double, double* %31, align 8
  %180 = fadd double %178, %179
  %181 = fmul double %177, %180
  store double %181, double* %34, align 8
  %182 = load double, double* %27, align 8
  %183 = load double, double* %34, align 8
  %184 = fsub double %182, %183
  %185 = load double*, double** %5, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %185, i64 %187
  store double %184, double* %188, align 8
  %189 = load double, double* %28, align 8
  %190 = load double, double* %33, align 8
  %191 = fadd double %189, %190
  %192 = load double*, double** %5, align 8
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, double* %192, i64 %195
  store double %191, double* %196, align 8
  %197 = load double, double* %27, align 8
  %198 = load double, double* %34, align 8
  %199 = fadd double %197, %198
  %200 = load double*, double** %5, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %200, i64 %202
  store double %199, double* %203, align 8
  %204 = load double, double* %28, align 8
  %205 = load double, double* %33, align 8
  %206 = fsub double %204, %205
  %207 = load double*, double** %5, align 8
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %207, i64 %210
  store double %206, double* %211, align 8
  store i32 0, i32* %12, align 4
  %212 = load i32, i32* %14, align 4
  %213 = mul nsw i32 2, %212
  store i32 %213, i32* %13, align 4
  store i32 2, i32* %7, align 4
  br label %214

214:                                              ; preds = %716, %3
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %719

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 4
  store i32 %220, i32* %12, align 4
  %221 = load double*, double** %6, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %221, i64 %223
  %225 = load double, double* %224, align 8
  store double %225, double* %17, align 8
  %226 = load double*, double** %6, align 8
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %226, i64 %229
  %231 = load double, double* %230, align 8
  store double %231, double* %18, align 8
  %232 = load double*, double** %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds double, double* %232, i64 %235
  %237 = load double, double* %236, align 8
  store double %237, double* %19, align 8
  %238 = load double*, double** %6, align 8
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 3
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %238, i64 %241
  %243 = load double, double* %242, align 8
  %244 = fneg double %243
  store double %244, double* %20, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sub nsw i32 %245, 4
  store i32 %246, i32* %13, align 4
  %247 = load double*, double** %6, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double, double* %247, i64 %249
  %251 = load double, double* %250, align 8
  store double %251, double* %22, align 8
  %252 = load double*, double** %6, align 8
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds double, double* %252, i64 %255
  %257 = load double, double* %256, align 8
  store double %257, double* %21, align 8
  %258 = load double*, double** %6, align 8
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %258, i64 %261
  %263 = load double, double* %262, align 8
  store double %263, double* %24, align 8
  %264 = load double*, double** %6, align 8
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 3
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, double* %264, i64 %267
  %269 = load double, double* %268, align 8
  %270 = fneg double %269
  store double %270, double* %23, align 8
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %271, %272
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %274, %275
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %277, %278
  store i32 %279, i32* %11, align 4
  %280 = load double*, double** %5, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %280, i64 %282
  %284 = load double, double* %283, align 8
  %285 = load double*, double** %5, align 8
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds double, double* %285, i64 %288
  %290 = load double, double* %289, align 8
  %291 = fsub double %284, %290
  store double %291, double* %25, align 8
  %292 = load double*, double** %5, align 8
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds double, double* %292, i64 %295
  %297 = load double, double* %296, align 8
  %298 = load double*, double** %5, align 8
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %298, i64 %300
  %302 = load double, double* %301, align 8
  %303 = fadd double %297, %302
  store double %303, double* %26, align 8
  %304 = load double*, double** %5, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double, double* %304, i64 %306
  %308 = load double, double* %307, align 8
  %309 = load double*, double** %5, align 8
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double, double* %309, i64 %312
  %314 = load double, double* %313, align 8
  %315 = fadd double %308, %314
  store double %315, double* %27, align 8
  %316 = load double*, double** %5, align 8
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds double, double* %316, i64 %319
  %321 = load double, double* %320, align 8
  %322 = load double*, double** %5, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds double, double* %322, i64 %324
  %326 = load double, double* %325, align 8
  %327 = fsub double %321, %326
  store double %327, double* %28, align 8
  %328 = load double*, double** %5, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds double, double* %328, i64 %330
  %332 = load double, double* %331, align 8
  %333 = load double*, double** %5, align 8
  %334 = load i32, i32* %11, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %333, i64 %336
  %338 = load double, double* %337, align 8
  %339 = fsub double %332, %338
  store double %339, double* %29, align 8
  %340 = load double*, double** %5, align 8
  %341 = load i32, i32* %9, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double, double* %340, i64 %343
  %345 = load double, double* %344, align 8
  %346 = load double*, double** %5, align 8
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds double, double* %346, i64 %348
  %350 = load double, double* %349, align 8
  %351 = fadd double %345, %350
  store double %351, double* %30, align 8
  %352 = load double*, double** %5, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds double, double* %352, i64 %354
  %356 = load double, double* %355, align 8
  %357 = load double*, double** %5, align 8
  %358 = load i32, i32* %11, align 4
  %359 = add nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds double, double* %357, i64 %360
  %362 = load double, double* %361, align 8
  %363 = fadd double %356, %362
  store double %363, double* %31, align 8
  %364 = load double*, double** %5, align 8
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds double, double* %364, i64 %367
  %369 = load double, double* %368, align 8
  %370 = load double*, double** %5, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds double, double* %370, i64 %372
  %374 = load double, double* %373, align 8
  %375 = fsub double %369, %374
  store double %375, double* %32, align 8
  %376 = load double, double* %17, align 8
  %377 = load double, double* %25, align 8
  %378 = fmul double %376, %377
  %379 = load double, double* %18, align 8
  %380 = load double, double* %26, align 8
  %381 = fmul double %379, %380
  %382 = fsub double %378, %381
  store double %382, double* %33, align 8
  %383 = load double, double* %17, align 8
  %384 = load double, double* %26, align 8
  %385 = fmul double %383, %384
  %386 = load double, double* %18, align 8
  %387 = load double, double* %25, align 8
  %388 = fmul double %386, %387
  %389 = fadd double %385, %388
  store double %389, double* %34, align 8
  %390 = load double, double* %21, align 8
  %391 = load double, double* %29, align 8
  %392 = fmul double %390, %391
  %393 = load double, double* %22, align 8
  %394 = load double, double* %30, align 8
  %395 = fmul double %393, %394
  %396 = fsub double %392, %395
  store double %396, double* %35, align 8
  %397 = load double, double* %21, align 8
  %398 = load double, double* %30, align 8
  %399 = fmul double %397, %398
  %400 = load double, double* %22, align 8
  %401 = load double, double* %29, align 8
  %402 = fmul double %400, %401
  %403 = fadd double %399, %402
  store double %403, double* %36, align 8
  %404 = load double, double* %33, align 8
  %405 = load double, double* %35, align 8
  %406 = fadd double %404, %405
  %407 = load double*, double** %5, align 8
  %408 = load i32, i32* %7, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds double, double* %407, i64 %409
  store double %406, double* %410, align 8
  %411 = load double, double* %34, align 8
  %412 = load double, double* %36, align 8
  %413 = fadd double %411, %412
  %414 = load double*, double** %5, align 8
  %415 = load i32, i32* %7, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds double, double* %414, i64 %417
  store double %413, double* %418, align 8
  %419 = load double, double* %33, align 8
  %420 = load double, double* %35, align 8
  %421 = fsub double %419, %420
  %422 = load double*, double** %5, align 8
  %423 = load i32, i32* %9, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds double, double* %422, i64 %424
  store double %421, double* %425, align 8
  %426 = load double, double* %34, align 8
  %427 = load double, double* %36, align 8
  %428 = fsub double %426, %427
  %429 = load double*, double** %5, align 8
  %430 = load i32, i32* %9, align 4
  %431 = add nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds double, double* %429, i64 %432
  store double %428, double* %433, align 8
  %434 = load double, double* %19, align 8
  %435 = load double, double* %27, align 8
  %436 = fmul double %434, %435
  %437 = load double, double* %20, align 8
  %438 = load double, double* %28, align 8
  %439 = fmul double %437, %438
  %440 = fadd double %436, %439
  store double %440, double* %33, align 8
  %441 = load double, double* %19, align 8
  %442 = load double, double* %28, align 8
  %443 = fmul double %441, %442
  %444 = load double, double* %20, align 8
  %445 = load double, double* %27, align 8
  %446 = fmul double %444, %445
  %447 = fsub double %443, %446
  store double %447, double* %34, align 8
  %448 = load double, double* %23, align 8
  %449 = load double, double* %31, align 8
  %450 = fmul double %448, %449
  %451 = load double, double* %24, align 8
  %452 = load double, double* %32, align 8
  %453 = fmul double %451, %452
  %454 = fadd double %450, %453
  store double %454, double* %35, align 8
  %455 = load double, double* %23, align 8
  %456 = load double, double* %32, align 8
  %457 = fmul double %455, %456
  %458 = load double, double* %24, align 8
  %459 = load double, double* %31, align 8
  %460 = fmul double %458, %459
  %461 = fsub double %457, %460
  store double %461, double* %36, align 8
  %462 = load double, double* %33, align 8
  %463 = load double, double* %35, align 8
  %464 = fadd double %462, %463
  %465 = load double*, double** %5, align 8
  %466 = load i32, i32* %10, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds double, double* %465, i64 %467
  store double %464, double* %468, align 8
  %469 = load double, double* %34, align 8
  %470 = load double, double* %36, align 8
  %471 = fadd double %469, %470
  %472 = load double*, double** %5, align 8
  %473 = load i32, i32* %10, align 4
  %474 = add nsw i32 %473, 1
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds double, double* %472, i64 %475
  store double %471, double* %476, align 8
  %477 = load double, double* %33, align 8
  %478 = load double, double* %35, align 8
  %479 = fsub double %477, %478
  %480 = load double*, double** %5, align 8
  %481 = load i32, i32* %11, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds double, double* %480, i64 %482
  store double %479, double* %483, align 8
  %484 = load double, double* %34, align 8
  %485 = load double, double* %36, align 8
  %486 = fsub double %484, %485
  %487 = load double*, double** %5, align 8
  %488 = load i32, i32* %11, align 4
  %489 = add nsw i32 %488, 1
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds double, double* %487, i64 %490
  store double %486, double* %491, align 8
  %492 = load i32, i32* %14, align 4
  %493 = load i32, i32* %7, align 4
  %494 = sub nsw i32 %492, %493
  store i32 %494, i32* %8, align 4
  %495 = load i32, i32* %8, align 4
  %496 = load i32, i32* %14, align 4
  %497 = add nsw i32 %495, %496
  store i32 %497, i32* %9, align 4
  %498 = load i32, i32* %9, align 4
  %499 = load i32, i32* %14, align 4
  %500 = add nsw i32 %498, %499
  store i32 %500, i32* %10, align 4
  %501 = load i32, i32* %10, align 4
  %502 = load i32, i32* %14, align 4
  %503 = add nsw i32 %501, %502
  store i32 %503, i32* %11, align 4
  %504 = load double*, double** %5, align 8
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds double, double* %504, i64 %506
  %508 = load double, double* %507, align 8
  %509 = load double*, double** %5, align 8
  %510 = load i32, i32* %10, align 4
  %511 = add nsw i32 %510, 1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds double, double* %509, i64 %512
  %514 = load double, double* %513, align 8
  %515 = fsub double %508, %514
  store double %515, double* %25, align 8
  %516 = load double*, double** %5, align 8
  %517 = load i32, i32* %8, align 4
  %518 = add nsw i32 %517, 1
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds double, double* %516, i64 %519
  %521 = load double, double* %520, align 8
  %522 = load double*, double** %5, align 8
  %523 = load i32, i32* %10, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds double, double* %522, i64 %524
  %526 = load double, double* %525, align 8
  %527 = fadd double %521, %526
  store double %527, double* %26, align 8
  %528 = load double*, double** %5, align 8
  %529 = load i32, i32* %8, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds double, double* %528, i64 %530
  %532 = load double, double* %531, align 8
  %533 = load double*, double** %5, align 8
  %534 = load i32, i32* %10, align 4
  %535 = add nsw i32 %534, 1
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds double, double* %533, i64 %536
  %538 = load double, double* %537, align 8
  %539 = fadd double %532, %538
  store double %539, double* %27, align 8
  %540 = load double*, double** %5, align 8
  %541 = load i32, i32* %8, align 4
  %542 = add nsw i32 %541, 1
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds double, double* %540, i64 %543
  %545 = load double, double* %544, align 8
  %546 = load double*, double** %5, align 8
  %547 = load i32, i32* %10, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds double, double* %546, i64 %548
  %550 = load double, double* %549, align 8
  %551 = fsub double %545, %550
  store double %551, double* %28, align 8
  %552 = load double*, double** %5, align 8
  %553 = load i32, i32* %9, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds double, double* %552, i64 %554
  %556 = load double, double* %555, align 8
  %557 = load double*, double** %5, align 8
  %558 = load i32, i32* %11, align 4
  %559 = add nsw i32 %558, 1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds double, double* %557, i64 %560
  %562 = load double, double* %561, align 8
  %563 = fsub double %556, %562
  store double %563, double* %29, align 8
  %564 = load double*, double** %5, align 8
  %565 = load i32, i32* %9, align 4
  %566 = add nsw i32 %565, 1
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds double, double* %564, i64 %567
  %569 = load double, double* %568, align 8
  %570 = load double*, double** %5, align 8
  %571 = load i32, i32* %11, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %570, i64 %572
  %574 = load double, double* %573, align 8
  %575 = fadd double %569, %574
  store double %575, double* %30, align 8
  %576 = load double*, double** %5, align 8
  %577 = load i32, i32* %9, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds double, double* %576, i64 %578
  %580 = load double, double* %579, align 8
  %581 = load double*, double** %5, align 8
  %582 = load i32, i32* %11, align 4
  %583 = add nsw i32 %582, 1
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %581, i64 %584
  %586 = load double, double* %585, align 8
  %587 = fadd double %580, %586
  store double %587, double* %31, align 8
  %588 = load double*, double** %5, align 8
  %589 = load i32, i32* %9, align 4
  %590 = add nsw i32 %589, 1
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds double, double* %588, i64 %591
  %593 = load double, double* %592, align 8
  %594 = load double*, double** %5, align 8
  %595 = load i32, i32* %11, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds double, double* %594, i64 %596
  %598 = load double, double* %597, align 8
  %599 = fsub double %593, %598
  store double %599, double* %32, align 8
  %600 = load double, double* %22, align 8
  %601 = load double, double* %25, align 8
  %602 = fmul double %600, %601
  %603 = load double, double* %21, align 8
  %604 = load double, double* %26, align 8
  %605 = fmul double %603, %604
  %606 = fsub double %602, %605
  store double %606, double* %33, align 8
  %607 = load double, double* %22, align 8
  %608 = load double, double* %26, align 8
  %609 = fmul double %607, %608
  %610 = load double, double* %21, align 8
  %611 = load double, double* %25, align 8
  %612 = fmul double %610, %611
  %613 = fadd double %609, %612
  store double %613, double* %34, align 8
  %614 = load double, double* %18, align 8
  %615 = load double, double* %29, align 8
  %616 = fmul double %614, %615
  %617 = load double, double* %17, align 8
  %618 = load double, double* %30, align 8
  %619 = fmul double %617, %618
  %620 = fsub double %616, %619
  store double %620, double* %35, align 8
  %621 = load double, double* %18, align 8
  %622 = load double, double* %30, align 8
  %623 = fmul double %621, %622
  %624 = load double, double* %17, align 8
  %625 = load double, double* %29, align 8
  %626 = fmul double %624, %625
  %627 = fadd double %623, %626
  store double %627, double* %36, align 8
  %628 = load double, double* %33, align 8
  %629 = load double, double* %35, align 8
  %630 = fadd double %628, %629
  %631 = load double*, double** %5, align 8
  %632 = load i32, i32* %8, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds double, double* %631, i64 %633
  store double %630, double* %634, align 8
  %635 = load double, double* %34, align 8
  %636 = load double, double* %36, align 8
  %637 = fadd double %635, %636
  %638 = load double*, double** %5, align 8
  %639 = load i32, i32* %8, align 4
  %640 = add nsw i32 %639, 1
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds double, double* %638, i64 %641
  store double %637, double* %642, align 8
  %643 = load double, double* %33, align 8
  %644 = load double, double* %35, align 8
  %645 = fsub double %643, %644
  %646 = load double*, double** %5, align 8
  %647 = load i32, i32* %9, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds double, double* %646, i64 %648
  store double %645, double* %649, align 8
  %650 = load double, double* %34, align 8
  %651 = load double, double* %36, align 8
  %652 = fsub double %650, %651
  %653 = load double*, double** %5, align 8
  %654 = load i32, i32* %9, align 4
  %655 = add nsw i32 %654, 1
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds double, double* %653, i64 %656
  store double %652, double* %657, align 8
  %658 = load double, double* %24, align 8
  %659 = load double, double* %27, align 8
  %660 = fmul double %658, %659
  %661 = load double, double* %23, align 8
  %662 = load double, double* %28, align 8
  %663 = fmul double %661, %662
  %664 = fadd double %660, %663
  store double %664, double* %33, align 8
  %665 = load double, double* %24, align 8
  %666 = load double, double* %28, align 8
  %667 = fmul double %665, %666
  %668 = load double, double* %23, align 8
  %669 = load double, double* %27, align 8
  %670 = fmul double %668, %669
  %671 = fsub double %667, %670
  store double %671, double* %34, align 8
  %672 = load double, double* %20, align 8
  %673 = load double, double* %31, align 8
  %674 = fmul double %672, %673
  %675 = load double, double* %19, align 8
  %676 = load double, double* %32, align 8
  %677 = fmul double %675, %676
  %678 = fadd double %674, %677
  store double %678, double* %35, align 8
  %679 = load double, double* %20, align 8
  %680 = load double, double* %32, align 8
  %681 = fmul double %679, %680
  %682 = load double, double* %19, align 8
  %683 = load double, double* %31, align 8
  %684 = fmul double %682, %683
  %685 = fsub double %681, %684
  store double %685, double* %36, align 8
  %686 = load double, double* %33, align 8
  %687 = load double, double* %35, align 8
  %688 = fadd double %686, %687
  %689 = load double*, double** %5, align 8
  %690 = load i32, i32* %10, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds double, double* %689, i64 %691
  store double %688, double* %692, align 8
  %693 = load double, double* %34, align 8
  %694 = load double, double* %36, align 8
  %695 = fadd double %693, %694
  %696 = load double*, double** %5, align 8
  %697 = load i32, i32* %10, align 4
  %698 = add nsw i32 %697, 1
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds double, double* %696, i64 %699
  store double %695, double* %700, align 8
  %701 = load double, double* %33, align 8
  %702 = load double, double* %35, align 8
  %703 = fsub double %701, %702
  %704 = load double*, double** %5, align 8
  %705 = load i32, i32* %11, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds double, double* %704, i64 %706
  store double %703, double* %707, align 8
  %708 = load double, double* %34, align 8
  %709 = load double, double* %36, align 8
  %710 = fsub double %708, %709
  %711 = load double*, double** %5, align 8
  %712 = load i32, i32* %11, align 4
  %713 = add nsw i32 %712, 1
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds double, double* %711, i64 %714
  store double %710, double* %715, align 8
  br label %716

716:                                              ; preds = %218
  %717 = load i32, i32* %7, align 4
  %718 = add nsw i32 %717, 2
  store i32 %718, i32* %7, align 4
  br label %214

719:                                              ; preds = %214
  %720 = load double*, double** %6, align 8
  %721 = load i32, i32* %14, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds double, double* %720, i64 %722
  %724 = load double, double* %723, align 8
  store double %724, double* %17, align 8
  %725 = load double*, double** %6, align 8
  %726 = load i32, i32* %14, align 4
  %727 = add nsw i32 %726, 1
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds double, double* %725, i64 %728
  %730 = load double, double* %729, align 8
  store double %730, double* %18, align 8
  %731 = load i32, i32* %15, align 4
  store i32 %731, i32* %8, align 4
  %732 = load i32, i32* %8, align 4
  %733 = load i32, i32* %14, align 4
  %734 = add nsw i32 %732, %733
  store i32 %734, i32* %9, align 4
  %735 = load i32, i32* %9, align 4
  %736 = load i32, i32* %14, align 4
  %737 = add nsw i32 %735, %736
  store i32 %737, i32* %10, align 4
  %738 = load i32, i32* %10, align 4
  %739 = load i32, i32* %14, align 4
  %740 = add nsw i32 %738, %739
  store i32 %740, i32* %11, align 4
  %741 = load double*, double** %5, align 8
  %742 = load i32, i32* %8, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds double, double* %741, i64 %743
  %745 = load double, double* %744, align 8
  %746 = load double*, double** %5, align 8
  %747 = load i32, i32* %10, align 4
  %748 = add nsw i32 %747, 1
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds double, double* %746, i64 %749
  %751 = load double, double* %750, align 8
  %752 = fsub double %745, %751
  store double %752, double* %25, align 8
  %753 = load double*, double** %5, align 8
  %754 = load i32, i32* %8, align 4
  %755 = add nsw i32 %754, 1
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds double, double* %753, i64 %756
  %758 = load double, double* %757, align 8
  %759 = load double*, double** %5, align 8
  %760 = load i32, i32* %10, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds double, double* %759, i64 %761
  %763 = load double, double* %762, align 8
  %764 = fadd double %758, %763
  store double %764, double* %26, align 8
  %765 = load double*, double** %5, align 8
  %766 = load i32, i32* %8, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds double, double* %765, i64 %767
  %769 = load double, double* %768, align 8
  %770 = load double*, double** %5, align 8
  %771 = load i32, i32* %10, align 4
  %772 = add nsw i32 %771, 1
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds double, double* %770, i64 %773
  %775 = load double, double* %774, align 8
  %776 = fadd double %769, %775
  store double %776, double* %27, align 8
  %777 = load double*, double** %5, align 8
  %778 = load i32, i32* %8, align 4
  %779 = add nsw i32 %778, 1
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds double, double* %777, i64 %780
  %782 = load double, double* %781, align 8
  %783 = load double*, double** %5, align 8
  %784 = load i32, i32* %10, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds double, double* %783, i64 %785
  %787 = load double, double* %786, align 8
  %788 = fsub double %782, %787
  store double %788, double* %28, align 8
  %789 = load double*, double** %5, align 8
  %790 = load i32, i32* %9, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds double, double* %789, i64 %791
  %793 = load double, double* %792, align 8
  %794 = load double*, double** %5, align 8
  %795 = load i32, i32* %11, align 4
  %796 = add nsw i32 %795, 1
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds double, double* %794, i64 %797
  %799 = load double, double* %798, align 8
  %800 = fsub double %793, %799
  store double %800, double* %29, align 8
  %801 = load double*, double** %5, align 8
  %802 = load i32, i32* %9, align 4
  %803 = add nsw i32 %802, 1
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds double, double* %801, i64 %804
  %806 = load double, double* %805, align 8
  %807 = load double*, double** %5, align 8
  %808 = load i32, i32* %11, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds double, double* %807, i64 %809
  %811 = load double, double* %810, align 8
  %812 = fadd double %806, %811
  store double %812, double* %30, align 8
  %813 = load double*, double** %5, align 8
  %814 = load i32, i32* %9, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds double, double* %813, i64 %815
  %817 = load double, double* %816, align 8
  %818 = load double*, double** %5, align 8
  %819 = load i32, i32* %11, align 4
  %820 = add nsw i32 %819, 1
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds double, double* %818, i64 %821
  %823 = load double, double* %822, align 8
  %824 = fadd double %817, %823
  store double %824, double* %31, align 8
  %825 = load double*, double** %5, align 8
  %826 = load i32, i32* %9, align 4
  %827 = add nsw i32 %826, 1
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds double, double* %825, i64 %828
  %830 = load double, double* %829, align 8
  %831 = load double*, double** %5, align 8
  %832 = load i32, i32* %11, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds double, double* %831, i64 %833
  %835 = load double, double* %834, align 8
  %836 = fsub double %830, %835
  store double %836, double* %32, align 8
  %837 = load double, double* %17, align 8
  %838 = load double, double* %25, align 8
  %839 = fmul double %837, %838
  %840 = load double, double* %18, align 8
  %841 = load double, double* %26, align 8
  %842 = fmul double %840, %841
  %843 = fsub double %839, %842
  store double %843, double* %33, align 8
  %844 = load double, double* %17, align 8
  %845 = load double, double* %26, align 8
  %846 = fmul double %844, %845
  %847 = load double, double* %18, align 8
  %848 = load double, double* %25, align 8
  %849 = fmul double %847, %848
  %850 = fadd double %846, %849
  store double %850, double* %34, align 8
  %851 = load double, double* %18, align 8
  %852 = load double, double* %29, align 8
  %853 = fmul double %851, %852
  %854 = load double, double* %17, align 8
  %855 = load double, double* %30, align 8
  %856 = fmul double %854, %855
  %857 = fsub double %853, %856
  store double %857, double* %35, align 8
  %858 = load double, double* %18, align 8
  %859 = load double, double* %30, align 8
  %860 = fmul double %858, %859
  %861 = load double, double* %17, align 8
  %862 = load double, double* %29, align 8
  %863 = fmul double %861, %862
  %864 = fadd double %860, %863
  store double %864, double* %36, align 8
  %865 = load double, double* %33, align 8
  %866 = load double, double* %35, align 8
  %867 = fadd double %865, %866
  %868 = load double*, double** %5, align 8
  %869 = load i32, i32* %8, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds double, double* %868, i64 %870
  store double %867, double* %871, align 8
  %872 = load double, double* %34, align 8
  %873 = load double, double* %36, align 8
  %874 = fadd double %872, %873
  %875 = load double*, double** %5, align 8
  %876 = load i32, i32* %8, align 4
  %877 = add nsw i32 %876, 1
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds double, double* %875, i64 %878
  store double %874, double* %879, align 8
  %880 = load double, double* %33, align 8
  %881 = load double, double* %35, align 8
  %882 = fsub double %880, %881
  %883 = load double*, double** %5, align 8
  %884 = load i32, i32* %9, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds double, double* %883, i64 %885
  store double %882, double* %886, align 8
  %887 = load double, double* %34, align 8
  %888 = load double, double* %36, align 8
  %889 = fsub double %887, %888
  %890 = load double*, double** %5, align 8
  %891 = load i32, i32* %9, align 4
  %892 = add nsw i32 %891, 1
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds double, double* %890, i64 %893
  store double %889, double* %894, align 8
  %895 = load double, double* %18, align 8
  %896 = load double, double* %27, align 8
  %897 = fmul double %895, %896
  %898 = load double, double* %17, align 8
  %899 = load double, double* %28, align 8
  %900 = fmul double %898, %899
  %901 = fsub double %897, %900
  store double %901, double* %33, align 8
  %902 = load double, double* %18, align 8
  %903 = load double, double* %28, align 8
  %904 = fmul double %902, %903
  %905 = load double, double* %17, align 8
  %906 = load double, double* %27, align 8
  %907 = fmul double %905, %906
  %908 = fadd double %904, %907
  store double %908, double* %34, align 8
  %909 = load double, double* %17, align 8
  %910 = load double, double* %31, align 8
  %911 = fmul double %909, %910
  %912 = load double, double* %18, align 8
  %913 = load double, double* %32, align 8
  %914 = fmul double %912, %913
  %915 = fsub double %911, %914
  store double %915, double* %35, align 8
  %916 = load double, double* %17, align 8
  %917 = load double, double* %32, align 8
  %918 = fmul double %916, %917
  %919 = load double, double* %18, align 8
  %920 = load double, double* %31, align 8
  %921 = fmul double %919, %920
  %922 = fadd double %918, %921
  store double %922, double* %36, align 8
  %923 = load double, double* %33, align 8
  %924 = load double, double* %35, align 8
  %925 = fsub double %923, %924
  %926 = load double*, double** %5, align 8
  %927 = load i32, i32* %10, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds double, double* %926, i64 %928
  store double %925, double* %929, align 8
  %930 = load double, double* %34, align 8
  %931 = load double, double* %36, align 8
  %932 = fsub double %930, %931
  %933 = load double*, double** %5, align 8
  %934 = load i32, i32* %10, align 4
  %935 = add nsw i32 %934, 1
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds double, double* %933, i64 %936
  store double %932, double* %937, align 8
  %938 = load double, double* %33, align 8
  %939 = load double, double* %35, align 8
  %940 = fadd double %938, %939
  %941 = load double*, double** %5, align 8
  %942 = load i32, i32* %11, align 4
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds double, double* %941, i64 %943
  store double %940, double* %944, align 8
  %945 = load double, double* %34, align 8
  %946 = load double, double* %36, align 8
  %947 = fadd double %945, %946
  %948 = load double*, double** %5, align 8
  %949 = load i32, i32* %11, align 4
  %950 = add nsw i32 %949, 1
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds double, double* %948, i64 %951
  store double %947, double* %952, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftfx42(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 128
  br i1 %10, label %11, label %39

11:                                               ; preds = %4
  %12 = load double*, double** %6, align 8
  %13 = load double*, double** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %13, i64 %16
  call void @cftf161(double* %12, double* %17)
  %18 = load double*, double** %6, align 8
  %19 = getelementptr inbounds double, double* %18, i64 32
  %20 = load double*, double** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %20, i64 %23
  call void @cftf162(double* %19, double* %24)
  %25 = load double*, double** %6, align 8
  %26 = getelementptr inbounds double, double* %25, i64 64
  %27 = load double*, double** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %27, i64 %30
  call void @cftf161(double* %26, double* %31)
  %32 = load double*, double** %6, align 8
  %33 = getelementptr inbounds double, double* %32, i64 96
  %34 = load double*, double** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %34, i64 %37
  call void @cftf162(double* %33, double* %38)
  br label %67

39:                                               ; preds = %4
  %40 = load double*, double** %6, align 8
  %41 = load double*, double** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 16
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %41, i64 %44
  call void @cftf081(double* %40, double* %45)
  %46 = load double*, double** %6, align 8
  %47 = getelementptr inbounds double, double* %46, i64 16
  %48 = load double*, double** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 16
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %48, i64 %51
  call void @cftf082(double* %47, double* %52)
  %53 = load double*, double** %6, align 8
  %54 = getelementptr inbounds double, double* %53, i64 32
  %55 = load double*, double** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 16
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %55, i64 %58
  call void @cftf081(double* %54, double* %59)
  %60 = load double*, double** %6, align 8
  %61 = getelementptr inbounds double, double* %60, i64 48
  %62 = load double*, double** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 16
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %62, i64 %65
  call void @cftf082(double* %61, double* %66)
  br label %67

67:                                               ; preds = %39, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftexp2(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 2
  store i32 %16, i32* %11, align 4
  br label %17

17:                                               ; preds = %109, %4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 128
  br i1 %19, label %20, label %112

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %106, %20
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %109

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %61, %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load double*, double** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double*, double** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 1
  %44 = sub nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %40, i64 %45
  call void @cftmdl1(i32 %35, double* %39, double* %46)
  %47 = load i32, i32* %11, align 4
  %48 = load double*, double** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %48, i64 %52
  %54 = load double*, double** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = ashr i32 %56, 1
  %58 = sub nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %54, i64 %59
  call void @cftmdl1(i32 %47, double* %53, double* %60)
  br label %61

61:                                               ; preds = %34
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 2, %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %30

66:                                               ; preds = %30
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 2, %67
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %100, %66
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = load double*, double** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  %81 = load double*, double** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %81, i64 %85
  call void @cftmdl2(i32 %76, double* %80, double* %86)
  %87 = load i32, i32* %11, align 4
  %88 = load double*, double** %6, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %88, i64 %92
  %94 = load double*, double** %8, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %94, i64 %98
  call void @cftmdl2(i32 %87, double* %93, double* %99)
  br label %100

100:                                              ; preds = %75
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 4, %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %71

105:                                              ; preds = %71
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = shl i32 %107, 2
  store i32 %108, i32* %10, align 4
  br label %22

109:                                              ; preds = %22
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 2
  store i32 %111, i32* %11, align 4
  br label %17

112:                                              ; preds = %17
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %230, %112
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %233

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %169, %118
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %174

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = load double*, double** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %128, i64 %130
  %132 = load double*, double** %8, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %11, align 4
  %135 = ashr i32 %134, 1
  %136 = sub nsw i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %132, i64 %137
  call void @cftmdl1(i32 %127, double* %131, double* %138)
  %139 = load i32, i32* %11, align 4
  %140 = load double*, double** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  %144 = load i32, i32* %7, align 4
  %145 = load double*, double** %8, align 8
  call void @cftfx41(i32 %139, double* %143, i32 %144, double* %145)
  %146 = load i32, i32* %11, align 4
  %147 = load double*, double** %6, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %147, i64 %151
  %153 = load double*, double** %8, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %11, align 4
  %156 = ashr i32 %155, 1
  %157 = sub nsw i32 %154, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %153, i64 %158
  call void @cftmdl1(i32 %146, double* %152, double* %159)
  %160 = load i32, i32* %11, align 4
  %161 = load double*, double** %6, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %161, i64 %165
  %167 = load i32, i32* %7, align 4
  %168 = load double*, double** %8, align 8
  call void @cftfx41(i32 %160, double* %166, i32 %167, double* %168)
  br label %169

169:                                              ; preds = %126
  %170 = load i32, i32* %10, align 4
  %171 = mul nsw i32 2, %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %122

174:                                              ; preds = %122
  %175 = load i32, i32* %10, align 4
  %176 = mul nsw i32 2, %175
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %176, %177
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %224, %174
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %229

183:                                              ; preds = %179
  %184 = load i32, i32* %11, align 4
  %185 = load double*, double** %6, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %185, i64 %187
  %189 = load double*, double** %8, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %189, i64 %193
  call void @cftmdl2(i32 %184, double* %188, double* %194)
  %195 = load i32, i32* %11, align 4
  %196 = load double*, double** %6, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %196, i64 %198
  %200 = load i32, i32* %7, align 4
  %201 = load double*, double** %8, align 8
  call void @cftfx42(i32 %195, double* %199, i32 %200, double* %201)
  %202 = load i32, i32* %11, align 4
  %203 = load double*, double** %6, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %203, i64 %207
  %209 = load double*, double** %8, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %11, align 4
  %212 = sub nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %209, i64 %213
  call void @cftmdl2(i32 %202, double* %208, double* %214)
  %215 = load i32, i32* %11, align 4
  %216 = load double*, double** %6, align 8
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds double, double* %216, i64 %220
  %222 = load i32, i32* %7, align 4
  %223 = load double*, double** %8, align 8
  call void @cftfx42(i32 %215, double* %221, i32 %222, double* %223)
  br label %224

224:                                              ; preds = %183
  %225 = load i32, i32* %10, align 4
  %226 = mul nsw i32 4, %225
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %9, align 4
  br label %179

229:                                              ; preds = %179
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %10, align 4
  %232 = shl i32 %231, 2
  store i32 %232, i32* %10, align 4
  br label %114

233:                                              ; preds = %114
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftf1st(i32 %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 3
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 2, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load double*, double** %5, align 8
  %54 = getelementptr inbounds double, double* %53, i64 0
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fadd double %55, %60
  store double %61, double* %26, align 8
  %62 = load double*, double** %5, align 8
  %63 = getelementptr inbounds double, double* %62, i64 1
  %64 = load double, double* %63, align 8
  %65 = load double*, double** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %65, i64 %68
  %70 = load double, double* %69, align 8
  %71 = fadd double %64, %70
  store double %71, double* %27, align 8
  %72 = load double*, double** %5, align 8
  %73 = getelementptr inbounds double, double* %72, i64 0
  %74 = load double, double* %73, align 8
  %75 = load double*, double** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fsub double %74, %79
  store double %80, double* %28, align 8
  %81 = load double*, double** %5, align 8
  %82 = getelementptr inbounds double, double* %81, i64 1
  %83 = load double, double* %82, align 8
  %84 = load double*, double** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %84, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fsub double %83, %89
  store double %90, double* %29, align 8
  %91 = load double*, double** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = load double*, double** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fadd double %95, %100
  store double %101, double* %30, align 8
  %102 = load double*, double** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %102, i64 %105
  %107 = load double, double* %106, align 8
  %108 = load double*, double** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %108, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fadd double %107, %113
  store double %114, double* %31, align 8
  %115 = load double*, double** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %115, i64 %117
  %119 = load double, double* %118, align 8
  %120 = load double*, double** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %120, i64 %122
  %124 = load double, double* %123, align 8
  %125 = fsub double %119, %124
  store double %125, double* %32, align 8
  %126 = load double*, double** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %126, i64 %129
  %131 = load double, double* %130, align 8
  %132 = load double*, double** %5, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %132, i64 %135
  %137 = load double, double* %136, align 8
  %138 = fsub double %131, %137
  store double %138, double* %33, align 8
  %139 = load double, double* %26, align 8
  %140 = load double, double* %30, align 8
  %141 = fadd double %139, %140
  %142 = load double*, double** %5, align 8
  %143 = getelementptr inbounds double, double* %142, i64 0
  store double %141, double* %143, align 8
  %144 = load double, double* %27, align 8
  %145 = load double, double* %31, align 8
  %146 = fadd double %144, %145
  %147 = load double*, double** %5, align 8
  %148 = getelementptr inbounds double, double* %147, i64 1
  store double %146, double* %148, align 8
  %149 = load double, double* %26, align 8
  %150 = load double, double* %30, align 8
  %151 = fsub double %149, %150
  %152 = load double*, double** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, double* %152, i64 %154
  store double %151, double* %155, align 8
  %156 = load double, double* %27, align 8
  %157 = load double, double* %31, align 8
  %158 = fsub double %156, %157
  %159 = load double*, double** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %159, i64 %162
  store double %158, double* %163, align 8
  %164 = load double, double* %28, align 8
  %165 = load double, double* %33, align 8
  %166 = fsub double %164, %165
  %167 = load double*, double** %5, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  store double %166, double* %170, align 8
  %171 = load double, double* %29, align 8
  %172 = load double, double* %32, align 8
  %173 = fadd double %171, %172
  %174 = load double*, double** %5, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, double* %174, i64 %177
  store double %173, double* %178, align 8
  %179 = load double, double* %28, align 8
  %180 = load double, double* %33, align 8
  %181 = fadd double %179, %180
  %182 = load double*, double** %5, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double, double* %182, i64 %184
  store double %181, double* %185, align 8
  %186 = load double, double* %29, align 8
  %187 = load double, double* %32, align 8
  %188 = fsub double %186, %187
  %189 = load double*, double** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %189, i64 %192
  store double %188, double* %193, align 8
  %194 = load double*, double** %6, align 8
  %195 = getelementptr inbounds double, double* %194, i64 1
  %196 = load double, double* %195, align 8
  store double %196, double* %15, align 8
  %197 = load double*, double** %6, align 8
  %198 = getelementptr inbounds double, double* %197, i64 2
  %199 = load double, double* %198, align 8
  store double %199, double* %16, align 8
  %200 = load double*, double** %6, align 8
  %201 = getelementptr inbounds double, double* %200, i64 3
  %202 = load double, double* %201, align 8
  store double %202, double* %17, align 8
  store double 1.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %23, align 8
  store double 1.000000e+00, double* %24, align 8
  store double 0.000000e+00, double* %25, align 8
  store i32 0, i32* %12, align 4
  store i32 2, i32* %7, align 4
  br label %203

203:                                              ; preds = %1055, %3
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %14, align 4
  %206 = sub nsw i32 %205, 2
  %207 = icmp slt i32 %204, %206
  br i1 %207, label %208, label %1058

208:                                              ; preds = %203
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 4
  store i32 %210, i32* %12, align 4
  %211 = load double, double* %16, align 8
  %212 = load double, double* %22, align 8
  %213 = load double*, double** %6, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %213, i64 %215
  %217 = load double, double* %216, align 8
  %218 = fadd double %212, %217
  %219 = fmul double %211, %218
  store double %219, double* %18, align 8
  %220 = load double, double* %16, align 8
  %221 = load double, double* %23, align 8
  %222 = load double*, double** %6, align 8
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %222, i64 %225
  %227 = load double, double* %226, align 8
  %228 = fadd double %221, %227
  %229 = fmul double %220, %228
  store double %229, double* %19, align 8
  %230 = load double, double* %17, align 8
  %231 = load double, double* %24, align 8
  %232 = load double*, double** %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds double, double* %232, i64 %235
  %237 = load double, double* %236, align 8
  %238 = fadd double %231, %237
  %239 = fmul double %230, %238
  store double %239, double* %20, align 8
  %240 = load double, double* %17, align 8
  %241 = load double, double* %25, align 8
  %242 = load double*, double** %6, align 8
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %242, i64 %245
  %247 = load double, double* %246, align 8
  %248 = fsub double %241, %247
  %249 = fmul double %240, %248
  store double %249, double* %21, align 8
  %250 = load double*, double** %6, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double, double* %250, i64 %252
  %254 = load double, double* %253, align 8
  store double %254, double* %22, align 8
  %255 = load double*, double** %6, align 8
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double, double* %255, i64 %258
  %260 = load double, double* %259, align 8
  store double %260, double* %23, align 8
  %261 = load double*, double** %6, align 8
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 2
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, double* %261, i64 %264
  %266 = load double, double* %265, align 8
  store double %266, double* %24, align 8
  %267 = load double*, double** %6, align 8
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %268, 3
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds double, double* %267, i64 %270
  %272 = load double, double* %271, align 8
  %273 = fneg double %272
  store double %273, double* %25, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %274, %275
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %277, %278
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %280, %281
  store i32 %282, i32* %11, align 4
  %283 = load double*, double** %5, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %283, i64 %285
  %287 = load double, double* %286, align 8
  %288 = load double*, double** %5, align 8
  %289 = load i32, i32* %10, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds double, double* %288, i64 %290
  %292 = load double, double* %291, align 8
  %293 = fadd double %287, %292
  store double %293, double* %26, align 8
  %294 = load double*, double** %5, align 8
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double, double* %294, i64 %297
  %299 = load double, double* %298, align 8
  %300 = load double*, double** %5, align 8
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds double, double* %300, i64 %303
  %305 = load double, double* %304, align 8
  %306 = fadd double %299, %305
  store double %306, double* %27, align 8
  %307 = load double*, double** %5, align 8
  %308 = load i32, i32* %7, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double, double* %307, i64 %309
  %311 = load double, double* %310, align 8
  %312 = load double*, double** %5, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds double, double* %312, i64 %314
  %316 = load double, double* %315, align 8
  %317 = fsub double %311, %316
  store double %317, double* %28, align 8
  %318 = load double*, double** %5, align 8
  %319 = load i32, i32* %7, align 4
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds double, double* %318, i64 %321
  %323 = load double, double* %322, align 8
  %324 = load double*, double** %5, align 8
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double, double* %324, i64 %327
  %329 = load double, double* %328, align 8
  %330 = fsub double %323, %329
  store double %330, double* %29, align 8
  %331 = load double*, double** %5, align 8
  %332 = load i32, i32* %7, align 4
  %333 = add nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %331, i64 %334
  %336 = load double, double* %335, align 8
  %337 = load double*, double** %5, align 8
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds double, double* %337, i64 %340
  %342 = load double, double* %341, align 8
  %343 = fadd double %336, %342
  store double %343, double* %34, align 8
  %344 = load double*, double** %5, align 8
  %345 = load i32, i32* %7, align 4
  %346 = add nsw i32 %345, 3
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double, double* %344, i64 %347
  %349 = load double, double* %348, align 8
  %350 = load double*, double** %5, align 8
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, 3
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds double, double* %350, i64 %353
  %355 = load double, double* %354, align 8
  %356 = fadd double %349, %355
  store double %356, double* %35, align 8
  %357 = load double*, double** %5, align 8
  %358 = load i32, i32* %7, align 4
  %359 = add nsw i32 %358, 2
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds double, double* %357, i64 %360
  %362 = load double, double* %361, align 8
  %363 = load double*, double** %5, align 8
  %364 = load i32, i32* %10, align 4
  %365 = add nsw i32 %364, 2
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, double* %363, i64 %366
  %368 = load double, double* %367, align 8
  %369 = fsub double %362, %368
  store double %369, double* %36, align 8
  %370 = load double*, double** %5, align 8
  %371 = load i32, i32* %7, align 4
  %372 = add nsw i32 %371, 3
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds double, double* %370, i64 %373
  %375 = load double, double* %374, align 8
  %376 = load double*, double** %5, align 8
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, 3
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds double, double* %376, i64 %379
  %381 = load double, double* %380, align 8
  %382 = fsub double %375, %381
  store double %382, double* %37, align 8
  %383 = load double*, double** %5, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds double, double* %383, i64 %385
  %387 = load double, double* %386, align 8
  %388 = load double*, double** %5, align 8
  %389 = load i32, i32* %11, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds double, double* %388, i64 %390
  %392 = load double, double* %391, align 8
  %393 = fadd double %387, %392
  store double %393, double* %30, align 8
  %394 = load double*, double** %5, align 8
  %395 = load i32, i32* %9, align 4
  %396 = add nsw i32 %395, 1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds double, double* %394, i64 %397
  %399 = load double, double* %398, align 8
  %400 = load double*, double** %5, align 8
  %401 = load i32, i32* %11, align 4
  %402 = add nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %400, i64 %403
  %405 = load double, double* %404, align 8
  %406 = fadd double %399, %405
  store double %406, double* %31, align 8
  %407 = load double*, double** %5, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds double, double* %407, i64 %409
  %411 = load double, double* %410, align 8
  %412 = load double*, double** %5, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds double, double* %412, i64 %414
  %416 = load double, double* %415, align 8
  %417 = fsub double %411, %416
  store double %417, double* %32, align 8
  %418 = load double*, double** %5, align 8
  %419 = load i32, i32* %9, align 4
  %420 = add nsw i32 %419, 1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds double, double* %418, i64 %421
  %423 = load double, double* %422, align 8
  %424 = load double*, double** %5, align 8
  %425 = load i32, i32* %11, align 4
  %426 = add nsw i32 %425, 1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds double, double* %424, i64 %427
  %429 = load double, double* %428, align 8
  %430 = fsub double %423, %429
  store double %430, double* %33, align 8
  %431 = load double*, double** %5, align 8
  %432 = load i32, i32* %9, align 4
  %433 = add nsw i32 %432, 2
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds double, double* %431, i64 %434
  %436 = load double, double* %435, align 8
  %437 = load double*, double** %5, align 8
  %438 = load i32, i32* %11, align 4
  %439 = add nsw i32 %438, 2
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %437, i64 %440
  %442 = load double, double* %441, align 8
  %443 = fadd double %436, %442
  store double %443, double* %38, align 8
  %444 = load double*, double** %5, align 8
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %445, 3
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds double, double* %444, i64 %447
  %449 = load double, double* %448, align 8
  %450 = load double*, double** %5, align 8
  %451 = load i32, i32* %11, align 4
  %452 = add nsw i32 %451, 3
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds double, double* %450, i64 %453
  %455 = load double, double* %454, align 8
  %456 = fadd double %449, %455
  store double %456, double* %39, align 8
  %457 = load double*, double** %5, align 8
  %458 = load i32, i32* %9, align 4
  %459 = add nsw i32 %458, 2
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds double, double* %457, i64 %460
  %462 = load double, double* %461, align 8
  %463 = load double*, double** %5, align 8
  %464 = load i32, i32* %11, align 4
  %465 = add nsw i32 %464, 2
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds double, double* %463, i64 %466
  %468 = load double, double* %467, align 8
  %469 = fsub double %462, %468
  store double %469, double* %40, align 8
  %470 = load double*, double** %5, align 8
  %471 = load i32, i32* %9, align 4
  %472 = add nsw i32 %471, 3
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds double, double* %470, i64 %473
  %475 = load double, double* %474, align 8
  %476 = load double*, double** %5, align 8
  %477 = load i32, i32* %11, align 4
  %478 = add nsw i32 %477, 3
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds double, double* %476, i64 %479
  %481 = load double, double* %480, align 8
  %482 = fsub double %475, %481
  store double %482, double* %41, align 8
  %483 = load double, double* %26, align 8
  %484 = load double, double* %30, align 8
  %485 = fadd double %483, %484
  %486 = load double*, double** %5, align 8
  %487 = load i32, i32* %7, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds double, double* %486, i64 %488
  store double %485, double* %489, align 8
  %490 = load double, double* %27, align 8
  %491 = load double, double* %31, align 8
  %492 = fadd double %490, %491
  %493 = load double*, double** %5, align 8
  %494 = load i32, i32* %7, align 4
  %495 = add nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds double, double* %493, i64 %496
  store double %492, double* %497, align 8
  %498 = load double, double* %34, align 8
  %499 = load double, double* %38, align 8
  %500 = fadd double %498, %499
  %501 = load double*, double** %5, align 8
  %502 = load i32, i32* %7, align 4
  %503 = add nsw i32 %502, 2
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds double, double* %501, i64 %504
  store double %500, double* %505, align 8
  %506 = load double, double* %35, align 8
  %507 = load double, double* %39, align 8
  %508 = fadd double %506, %507
  %509 = load double*, double** %5, align 8
  %510 = load i32, i32* %7, align 4
  %511 = add nsw i32 %510, 3
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds double, double* %509, i64 %512
  store double %508, double* %513, align 8
  %514 = load double, double* %26, align 8
  %515 = load double, double* %30, align 8
  %516 = fsub double %514, %515
  %517 = load double*, double** %5, align 8
  %518 = load i32, i32* %9, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds double, double* %517, i64 %519
  store double %516, double* %520, align 8
  %521 = load double, double* %27, align 8
  %522 = load double, double* %31, align 8
  %523 = fsub double %521, %522
  %524 = load double*, double** %5, align 8
  %525 = load i32, i32* %9, align 4
  %526 = add nsw i32 %525, 1
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds double, double* %524, i64 %527
  store double %523, double* %528, align 8
  %529 = load double, double* %34, align 8
  %530 = load double, double* %38, align 8
  %531 = fsub double %529, %530
  %532 = load double*, double** %5, align 8
  %533 = load i32, i32* %9, align 4
  %534 = add nsw i32 %533, 2
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds double, double* %532, i64 %535
  store double %531, double* %536, align 8
  %537 = load double, double* %35, align 8
  %538 = load double, double* %39, align 8
  %539 = fsub double %537, %538
  %540 = load double*, double** %5, align 8
  %541 = load i32, i32* %9, align 4
  %542 = add nsw i32 %541, 3
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds double, double* %540, i64 %543
  store double %539, double* %544, align 8
  %545 = load double, double* %28, align 8
  %546 = load double, double* %33, align 8
  %547 = fsub double %545, %546
  store double %547, double* %26, align 8
  %548 = load double, double* %29, align 8
  %549 = load double, double* %32, align 8
  %550 = fadd double %548, %549
  store double %550, double* %27, align 8
  %551 = load double, double* %18, align 8
  %552 = load double, double* %26, align 8
  %553 = fmul double %551, %552
  %554 = load double, double* %19, align 8
  %555 = load double, double* %27, align 8
  %556 = fmul double %554, %555
  %557 = fsub double %553, %556
  %558 = load double*, double** %5, align 8
  %559 = load i32, i32* %10, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds double, double* %558, i64 %560
  store double %557, double* %561, align 8
  %562 = load double, double* %18, align 8
  %563 = load double, double* %27, align 8
  %564 = fmul double %562, %563
  %565 = load double, double* %19, align 8
  %566 = load double, double* %26, align 8
  %567 = fmul double %565, %566
  %568 = fadd double %564, %567
  %569 = load double*, double** %5, align 8
  %570 = load i32, i32* %10, align 4
  %571 = add nsw i32 %570, 1
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %569, i64 %572
  store double %568, double* %573, align 8
  %574 = load double, double* %36, align 8
  %575 = load double, double* %41, align 8
  %576 = fsub double %574, %575
  store double %576, double* %26, align 8
  %577 = load double, double* %37, align 8
  %578 = load double, double* %40, align 8
  %579 = fadd double %577, %578
  store double %579, double* %27, align 8
  %580 = load double, double* %22, align 8
  %581 = load double, double* %26, align 8
  %582 = fmul double %580, %581
  %583 = load double, double* %23, align 8
  %584 = load double, double* %27, align 8
  %585 = fmul double %583, %584
  %586 = fsub double %582, %585
  %587 = load double*, double** %5, align 8
  %588 = load i32, i32* %10, align 4
  %589 = add nsw i32 %588, 2
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds double, double* %587, i64 %590
  store double %586, double* %591, align 8
  %592 = load double, double* %22, align 8
  %593 = load double, double* %27, align 8
  %594 = fmul double %592, %593
  %595 = load double, double* %23, align 8
  %596 = load double, double* %26, align 8
  %597 = fmul double %595, %596
  %598 = fadd double %594, %597
  %599 = load double*, double** %5, align 8
  %600 = load i32, i32* %10, align 4
  %601 = add nsw i32 %600, 3
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds double, double* %599, i64 %602
  store double %598, double* %603, align 8
  %604 = load double, double* %28, align 8
  %605 = load double, double* %33, align 8
  %606 = fadd double %604, %605
  store double %606, double* %26, align 8
  %607 = load double, double* %29, align 8
  %608 = load double, double* %32, align 8
  %609 = fsub double %607, %608
  store double %609, double* %27, align 8
  %610 = load double, double* %20, align 8
  %611 = load double, double* %26, align 8
  %612 = fmul double %610, %611
  %613 = load double, double* %21, align 8
  %614 = load double, double* %27, align 8
  %615 = fmul double %613, %614
  %616 = fadd double %612, %615
  %617 = load double*, double** %5, align 8
  %618 = load i32, i32* %11, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds double, double* %617, i64 %619
  store double %616, double* %620, align 8
  %621 = load double, double* %20, align 8
  %622 = load double, double* %27, align 8
  %623 = fmul double %621, %622
  %624 = load double, double* %21, align 8
  %625 = load double, double* %26, align 8
  %626 = fmul double %624, %625
  %627 = fsub double %623, %626
  %628 = load double*, double** %5, align 8
  %629 = load i32, i32* %11, align 4
  %630 = add nsw i32 %629, 1
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds double, double* %628, i64 %631
  store double %627, double* %632, align 8
  %633 = load double, double* %36, align 8
  %634 = load double, double* %41, align 8
  %635 = fadd double %633, %634
  store double %635, double* %26, align 8
  %636 = load double, double* %37, align 8
  %637 = load double, double* %40, align 8
  %638 = fsub double %636, %637
  store double %638, double* %27, align 8
  %639 = load double, double* %24, align 8
  %640 = load double, double* %26, align 8
  %641 = fmul double %639, %640
  %642 = load double, double* %25, align 8
  %643 = load double, double* %27, align 8
  %644 = fmul double %642, %643
  %645 = fadd double %641, %644
  %646 = load double*, double** %5, align 8
  %647 = load i32, i32* %11, align 4
  %648 = add nsw i32 %647, 2
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds double, double* %646, i64 %649
  store double %645, double* %650, align 8
  %651 = load double, double* %24, align 8
  %652 = load double, double* %27, align 8
  %653 = fmul double %651, %652
  %654 = load double, double* %25, align 8
  %655 = load double, double* %26, align 8
  %656 = fmul double %654, %655
  %657 = fsub double %653, %656
  %658 = load double*, double** %5, align 8
  %659 = load i32, i32* %11, align 4
  %660 = add nsw i32 %659, 3
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds double, double* %658, i64 %661
  store double %657, double* %662, align 8
  %663 = load i32, i32* %13, align 4
  %664 = load i32, i32* %7, align 4
  %665 = sub nsw i32 %663, %664
  store i32 %665, i32* %8, align 4
  %666 = load i32, i32* %8, align 4
  %667 = load i32, i32* %13, align 4
  %668 = add nsw i32 %666, %667
  store i32 %668, i32* %9, align 4
  %669 = load i32, i32* %9, align 4
  %670 = load i32, i32* %13, align 4
  %671 = add nsw i32 %669, %670
  store i32 %671, i32* %10, align 4
  %672 = load i32, i32* %10, align 4
  %673 = load i32, i32* %13, align 4
  %674 = add nsw i32 %672, %673
  store i32 %674, i32* %11, align 4
  %675 = load double*, double** %5, align 8
  %676 = load i32, i32* %8, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds double, double* %675, i64 %677
  %679 = load double, double* %678, align 8
  %680 = load double*, double** %5, align 8
  %681 = load i32, i32* %10, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds double, double* %680, i64 %682
  %684 = load double, double* %683, align 8
  %685 = fadd double %679, %684
  store double %685, double* %26, align 8
  %686 = load double*, double** %5, align 8
  %687 = load i32, i32* %8, align 4
  %688 = add nsw i32 %687, 1
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds double, double* %686, i64 %689
  %691 = load double, double* %690, align 8
  %692 = load double*, double** %5, align 8
  %693 = load i32, i32* %10, align 4
  %694 = add nsw i32 %693, 1
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds double, double* %692, i64 %695
  %697 = load double, double* %696, align 8
  %698 = fadd double %691, %697
  store double %698, double* %27, align 8
  %699 = load double*, double** %5, align 8
  %700 = load i32, i32* %8, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds double, double* %699, i64 %701
  %703 = load double, double* %702, align 8
  %704 = load double*, double** %5, align 8
  %705 = load i32, i32* %10, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds double, double* %704, i64 %706
  %708 = load double, double* %707, align 8
  %709 = fsub double %703, %708
  store double %709, double* %28, align 8
  %710 = load double*, double** %5, align 8
  %711 = load i32, i32* %8, align 4
  %712 = add nsw i32 %711, 1
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds double, double* %710, i64 %713
  %715 = load double, double* %714, align 8
  %716 = load double*, double** %5, align 8
  %717 = load i32, i32* %10, align 4
  %718 = add nsw i32 %717, 1
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds double, double* %716, i64 %719
  %721 = load double, double* %720, align 8
  %722 = fsub double %715, %721
  store double %722, double* %29, align 8
  %723 = load double*, double** %5, align 8
  %724 = load i32, i32* %8, align 4
  %725 = sub nsw i32 %724, 2
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds double, double* %723, i64 %726
  %728 = load double, double* %727, align 8
  %729 = load double*, double** %5, align 8
  %730 = load i32, i32* %10, align 4
  %731 = sub nsw i32 %730, 2
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds double, double* %729, i64 %732
  %734 = load double, double* %733, align 8
  %735 = fadd double %728, %734
  store double %735, double* %34, align 8
  %736 = load double*, double** %5, align 8
  %737 = load i32, i32* %8, align 4
  %738 = sub nsw i32 %737, 1
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds double, double* %736, i64 %739
  %741 = load double, double* %740, align 8
  %742 = load double*, double** %5, align 8
  %743 = load i32, i32* %10, align 4
  %744 = sub nsw i32 %743, 1
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds double, double* %742, i64 %745
  %747 = load double, double* %746, align 8
  %748 = fadd double %741, %747
  store double %748, double* %35, align 8
  %749 = load double*, double** %5, align 8
  %750 = load i32, i32* %8, align 4
  %751 = sub nsw i32 %750, 2
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds double, double* %749, i64 %752
  %754 = load double, double* %753, align 8
  %755 = load double*, double** %5, align 8
  %756 = load i32, i32* %10, align 4
  %757 = sub nsw i32 %756, 2
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds double, double* %755, i64 %758
  %760 = load double, double* %759, align 8
  %761 = fsub double %754, %760
  store double %761, double* %36, align 8
  %762 = load double*, double** %5, align 8
  %763 = load i32, i32* %8, align 4
  %764 = sub nsw i32 %763, 1
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds double, double* %762, i64 %765
  %767 = load double, double* %766, align 8
  %768 = load double*, double** %5, align 8
  %769 = load i32, i32* %10, align 4
  %770 = sub nsw i32 %769, 1
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds double, double* %768, i64 %771
  %773 = load double, double* %772, align 8
  %774 = fsub double %767, %773
  store double %774, double* %37, align 8
  %775 = load double*, double** %5, align 8
  %776 = load i32, i32* %9, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds double, double* %775, i64 %777
  %779 = load double, double* %778, align 8
  %780 = load double*, double** %5, align 8
  %781 = load i32, i32* %11, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds double, double* %780, i64 %782
  %784 = load double, double* %783, align 8
  %785 = fadd double %779, %784
  store double %785, double* %30, align 8
  %786 = load double*, double** %5, align 8
  %787 = load i32, i32* %9, align 4
  %788 = add nsw i32 %787, 1
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds double, double* %786, i64 %789
  %791 = load double, double* %790, align 8
  %792 = load double*, double** %5, align 8
  %793 = load i32, i32* %11, align 4
  %794 = add nsw i32 %793, 1
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds double, double* %792, i64 %795
  %797 = load double, double* %796, align 8
  %798 = fadd double %791, %797
  store double %798, double* %31, align 8
  %799 = load double*, double** %5, align 8
  %800 = load i32, i32* %9, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds double, double* %799, i64 %801
  %803 = load double, double* %802, align 8
  %804 = load double*, double** %5, align 8
  %805 = load i32, i32* %11, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds double, double* %804, i64 %806
  %808 = load double, double* %807, align 8
  %809 = fsub double %803, %808
  store double %809, double* %32, align 8
  %810 = load double*, double** %5, align 8
  %811 = load i32, i32* %9, align 4
  %812 = add nsw i32 %811, 1
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds double, double* %810, i64 %813
  %815 = load double, double* %814, align 8
  %816 = load double*, double** %5, align 8
  %817 = load i32, i32* %11, align 4
  %818 = add nsw i32 %817, 1
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds double, double* %816, i64 %819
  %821 = load double, double* %820, align 8
  %822 = fsub double %815, %821
  store double %822, double* %33, align 8
  %823 = load double*, double** %5, align 8
  %824 = load i32, i32* %9, align 4
  %825 = sub nsw i32 %824, 2
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds double, double* %823, i64 %826
  %828 = load double, double* %827, align 8
  %829 = load double*, double** %5, align 8
  %830 = load i32, i32* %11, align 4
  %831 = sub nsw i32 %830, 2
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds double, double* %829, i64 %832
  %834 = load double, double* %833, align 8
  %835 = fadd double %828, %834
  store double %835, double* %38, align 8
  %836 = load double*, double** %5, align 8
  %837 = load i32, i32* %9, align 4
  %838 = sub nsw i32 %837, 1
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds double, double* %836, i64 %839
  %841 = load double, double* %840, align 8
  %842 = load double*, double** %5, align 8
  %843 = load i32, i32* %11, align 4
  %844 = sub nsw i32 %843, 1
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds double, double* %842, i64 %845
  %847 = load double, double* %846, align 8
  %848 = fadd double %841, %847
  store double %848, double* %39, align 8
  %849 = load double*, double** %5, align 8
  %850 = load i32, i32* %9, align 4
  %851 = sub nsw i32 %850, 2
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds double, double* %849, i64 %852
  %854 = load double, double* %853, align 8
  %855 = load double*, double** %5, align 8
  %856 = load i32, i32* %11, align 4
  %857 = sub nsw i32 %856, 2
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds double, double* %855, i64 %858
  %860 = load double, double* %859, align 8
  %861 = fsub double %854, %860
  store double %861, double* %40, align 8
  %862 = load double*, double** %5, align 8
  %863 = load i32, i32* %9, align 4
  %864 = sub nsw i32 %863, 1
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds double, double* %862, i64 %865
  %867 = load double, double* %866, align 8
  %868 = load double*, double** %5, align 8
  %869 = load i32, i32* %11, align 4
  %870 = sub nsw i32 %869, 1
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds double, double* %868, i64 %871
  %873 = load double, double* %872, align 8
  %874 = fsub double %867, %873
  store double %874, double* %41, align 8
  %875 = load double, double* %26, align 8
  %876 = load double, double* %30, align 8
  %877 = fadd double %875, %876
  %878 = load double*, double** %5, align 8
  %879 = load i32, i32* %8, align 4
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds double, double* %878, i64 %880
  store double %877, double* %881, align 8
  %882 = load double, double* %27, align 8
  %883 = load double, double* %31, align 8
  %884 = fadd double %882, %883
  %885 = load double*, double** %5, align 8
  %886 = load i32, i32* %8, align 4
  %887 = add nsw i32 %886, 1
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds double, double* %885, i64 %888
  store double %884, double* %889, align 8
  %890 = load double, double* %34, align 8
  %891 = load double, double* %38, align 8
  %892 = fadd double %890, %891
  %893 = load double*, double** %5, align 8
  %894 = load i32, i32* %8, align 4
  %895 = sub nsw i32 %894, 2
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds double, double* %893, i64 %896
  store double %892, double* %897, align 8
  %898 = load double, double* %35, align 8
  %899 = load double, double* %39, align 8
  %900 = fadd double %898, %899
  %901 = load double*, double** %5, align 8
  %902 = load i32, i32* %8, align 4
  %903 = sub nsw i32 %902, 1
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds double, double* %901, i64 %904
  store double %900, double* %905, align 8
  %906 = load double, double* %26, align 8
  %907 = load double, double* %30, align 8
  %908 = fsub double %906, %907
  %909 = load double*, double** %5, align 8
  %910 = load i32, i32* %9, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds double, double* %909, i64 %911
  store double %908, double* %912, align 8
  %913 = load double, double* %27, align 8
  %914 = load double, double* %31, align 8
  %915 = fsub double %913, %914
  %916 = load double*, double** %5, align 8
  %917 = load i32, i32* %9, align 4
  %918 = add nsw i32 %917, 1
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds double, double* %916, i64 %919
  store double %915, double* %920, align 8
  %921 = load double, double* %34, align 8
  %922 = load double, double* %38, align 8
  %923 = fsub double %921, %922
  %924 = load double*, double** %5, align 8
  %925 = load i32, i32* %9, align 4
  %926 = sub nsw i32 %925, 2
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds double, double* %924, i64 %927
  store double %923, double* %928, align 8
  %929 = load double, double* %35, align 8
  %930 = load double, double* %39, align 8
  %931 = fsub double %929, %930
  %932 = load double*, double** %5, align 8
  %933 = load i32, i32* %9, align 4
  %934 = sub nsw i32 %933, 1
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds double, double* %932, i64 %935
  store double %931, double* %936, align 8
  %937 = load double, double* %28, align 8
  %938 = load double, double* %33, align 8
  %939 = fsub double %937, %938
  store double %939, double* %26, align 8
  %940 = load double, double* %29, align 8
  %941 = load double, double* %32, align 8
  %942 = fadd double %940, %941
  store double %942, double* %27, align 8
  %943 = load double, double* %19, align 8
  %944 = load double, double* %26, align 8
  %945 = fmul double %943, %944
  %946 = load double, double* %18, align 8
  %947 = load double, double* %27, align 8
  %948 = fmul double %946, %947
  %949 = fsub double %945, %948
  %950 = load double*, double** %5, align 8
  %951 = load i32, i32* %10, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds double, double* %950, i64 %952
  store double %949, double* %953, align 8
  %954 = load double, double* %19, align 8
  %955 = load double, double* %27, align 8
  %956 = fmul double %954, %955
  %957 = load double, double* %18, align 8
  %958 = load double, double* %26, align 8
  %959 = fmul double %957, %958
  %960 = fadd double %956, %959
  %961 = load double*, double** %5, align 8
  %962 = load i32, i32* %10, align 4
  %963 = add nsw i32 %962, 1
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds double, double* %961, i64 %964
  store double %960, double* %965, align 8
  %966 = load double, double* %36, align 8
  %967 = load double, double* %41, align 8
  %968 = fsub double %966, %967
  store double %968, double* %26, align 8
  %969 = load double, double* %37, align 8
  %970 = load double, double* %40, align 8
  %971 = fadd double %969, %970
  store double %971, double* %27, align 8
  %972 = load double, double* %23, align 8
  %973 = load double, double* %26, align 8
  %974 = fmul double %972, %973
  %975 = load double, double* %22, align 8
  %976 = load double, double* %27, align 8
  %977 = fmul double %975, %976
  %978 = fsub double %974, %977
  %979 = load double*, double** %5, align 8
  %980 = load i32, i32* %10, align 4
  %981 = sub nsw i32 %980, 2
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds double, double* %979, i64 %982
  store double %978, double* %983, align 8
  %984 = load double, double* %23, align 8
  %985 = load double, double* %27, align 8
  %986 = fmul double %984, %985
  %987 = load double, double* %22, align 8
  %988 = load double, double* %26, align 8
  %989 = fmul double %987, %988
  %990 = fadd double %986, %989
  %991 = load double*, double** %5, align 8
  %992 = load i32, i32* %10, align 4
  %993 = sub nsw i32 %992, 1
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds double, double* %991, i64 %994
  store double %990, double* %995, align 8
  %996 = load double, double* %28, align 8
  %997 = load double, double* %33, align 8
  %998 = fadd double %996, %997
  store double %998, double* %26, align 8
  %999 = load double, double* %29, align 8
  %1000 = load double, double* %32, align 8
  %1001 = fsub double %999, %1000
  store double %1001, double* %27, align 8
  %1002 = load double, double* %21, align 8
  %1003 = load double, double* %26, align 8
  %1004 = fmul double %1002, %1003
  %1005 = load double, double* %20, align 8
  %1006 = load double, double* %27, align 8
  %1007 = fmul double %1005, %1006
  %1008 = fadd double %1004, %1007
  %1009 = load double*, double** %5, align 8
  %1010 = load i32, i32* %11, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds double, double* %1009, i64 %1011
  store double %1008, double* %1012, align 8
  %1013 = load double, double* %21, align 8
  %1014 = load double, double* %27, align 8
  %1015 = fmul double %1013, %1014
  %1016 = load double, double* %20, align 8
  %1017 = load double, double* %26, align 8
  %1018 = fmul double %1016, %1017
  %1019 = fsub double %1015, %1018
  %1020 = load double*, double** %5, align 8
  %1021 = load i32, i32* %11, align 4
  %1022 = add nsw i32 %1021, 1
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds double, double* %1020, i64 %1023
  store double %1019, double* %1024, align 8
  %1025 = load double, double* %36, align 8
  %1026 = load double, double* %41, align 8
  %1027 = fadd double %1025, %1026
  store double %1027, double* %26, align 8
  %1028 = load double, double* %37, align 8
  %1029 = load double, double* %40, align 8
  %1030 = fsub double %1028, %1029
  store double %1030, double* %27, align 8
  %1031 = load double, double* %25, align 8
  %1032 = load double, double* %26, align 8
  %1033 = fmul double %1031, %1032
  %1034 = load double, double* %24, align 8
  %1035 = load double, double* %27, align 8
  %1036 = fmul double %1034, %1035
  %1037 = fadd double %1033, %1036
  %1038 = load double*, double** %5, align 8
  %1039 = load i32, i32* %11, align 4
  %1040 = sub nsw i32 %1039, 2
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds double, double* %1038, i64 %1041
  store double %1037, double* %1042, align 8
  %1043 = load double, double* %25, align 8
  %1044 = load double, double* %27, align 8
  %1045 = fmul double %1043, %1044
  %1046 = load double, double* %24, align 8
  %1047 = load double, double* %26, align 8
  %1048 = fmul double %1046, %1047
  %1049 = fsub double %1045, %1048
  %1050 = load double*, double** %5, align 8
  %1051 = load i32, i32* %11, align 4
  %1052 = sub nsw i32 %1051, 1
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds double, double* %1050, i64 %1053
  store double %1049, double* %1054, align 8
  br label %1055

1055:                                             ; preds = %208
  %1056 = load i32, i32* %7, align 4
  %1057 = add nsw i32 %1056, 4
  store i32 %1057, i32* %7, align 4
  br label %203

1058:                                             ; preds = %203
  %1059 = load double, double* %16, align 8
  %1060 = load double, double* %22, align 8
  %1061 = load double, double* %15, align 8
  %1062 = fadd double %1060, %1061
  %1063 = fmul double %1059, %1062
  store double %1063, double* %18, align 8
  %1064 = load double, double* %16, align 8
  %1065 = load double, double* %23, align 8
  %1066 = load double, double* %15, align 8
  %1067 = fadd double %1065, %1066
  %1068 = fmul double %1064, %1067
  store double %1068, double* %19, align 8
  %1069 = load double, double* %17, align 8
  %1070 = load double, double* %24, align 8
  %1071 = load double, double* %15, align 8
  %1072 = fsub double %1070, %1071
  %1073 = fmul double %1069, %1072
  store double %1073, double* %20, align 8
  %1074 = load double, double* %17, align 8
  %1075 = load double, double* %25, align 8
  %1076 = load double, double* %15, align 8
  %1077 = fsub double %1075, %1076
  %1078 = fmul double %1074, %1077
  store double %1078, double* %21, align 8
  %1079 = load i32, i32* %14, align 4
  store i32 %1079, i32* %8, align 4
  %1080 = load i32, i32* %8, align 4
  %1081 = load i32, i32* %13, align 4
  %1082 = add nsw i32 %1080, %1081
  store i32 %1082, i32* %9, align 4
  %1083 = load i32, i32* %9, align 4
  %1084 = load i32, i32* %13, align 4
  %1085 = add nsw i32 %1083, %1084
  store i32 %1085, i32* %10, align 4
  %1086 = load i32, i32* %10, align 4
  %1087 = load i32, i32* %13, align 4
  %1088 = add nsw i32 %1086, %1087
  store i32 %1088, i32* %11, align 4
  %1089 = load double*, double** %5, align 8
  %1090 = load i32, i32* %8, align 4
  %1091 = sub nsw i32 %1090, 2
  %1092 = sext i32 %1091 to i64
  %1093 = getelementptr inbounds double, double* %1089, i64 %1092
  %1094 = load double, double* %1093, align 8
  %1095 = load double*, double** %5, align 8
  %1096 = load i32, i32* %10, align 4
  %1097 = sub nsw i32 %1096, 2
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds double, double* %1095, i64 %1098
  %1100 = load double, double* %1099, align 8
  %1101 = fadd double %1094, %1100
  store double %1101, double* %26, align 8
  %1102 = load double*, double** %5, align 8
  %1103 = load i32, i32* %8, align 4
  %1104 = sub nsw i32 %1103, 1
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds double, double* %1102, i64 %1105
  %1107 = load double, double* %1106, align 8
  %1108 = load double*, double** %5, align 8
  %1109 = load i32, i32* %10, align 4
  %1110 = sub nsw i32 %1109, 1
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds double, double* %1108, i64 %1111
  %1113 = load double, double* %1112, align 8
  %1114 = fadd double %1107, %1113
  store double %1114, double* %27, align 8
  %1115 = load double*, double** %5, align 8
  %1116 = load i32, i32* %8, align 4
  %1117 = sub nsw i32 %1116, 2
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds double, double* %1115, i64 %1118
  %1120 = load double, double* %1119, align 8
  %1121 = load double*, double** %5, align 8
  %1122 = load i32, i32* %10, align 4
  %1123 = sub nsw i32 %1122, 2
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds double, double* %1121, i64 %1124
  %1126 = load double, double* %1125, align 8
  %1127 = fsub double %1120, %1126
  store double %1127, double* %28, align 8
  %1128 = load double*, double** %5, align 8
  %1129 = load i32, i32* %8, align 4
  %1130 = sub nsw i32 %1129, 1
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds double, double* %1128, i64 %1131
  %1133 = load double, double* %1132, align 8
  %1134 = load double*, double** %5, align 8
  %1135 = load i32, i32* %10, align 4
  %1136 = sub nsw i32 %1135, 1
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds double, double* %1134, i64 %1137
  %1139 = load double, double* %1138, align 8
  %1140 = fsub double %1133, %1139
  store double %1140, double* %29, align 8
  %1141 = load double*, double** %5, align 8
  %1142 = load i32, i32* %9, align 4
  %1143 = sub nsw i32 %1142, 2
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds double, double* %1141, i64 %1144
  %1146 = load double, double* %1145, align 8
  %1147 = load double*, double** %5, align 8
  %1148 = load i32, i32* %11, align 4
  %1149 = sub nsw i32 %1148, 2
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds double, double* %1147, i64 %1150
  %1152 = load double, double* %1151, align 8
  %1153 = fadd double %1146, %1152
  store double %1153, double* %30, align 8
  %1154 = load double*, double** %5, align 8
  %1155 = load i32, i32* %9, align 4
  %1156 = sub nsw i32 %1155, 1
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds double, double* %1154, i64 %1157
  %1159 = load double, double* %1158, align 8
  %1160 = load double*, double** %5, align 8
  %1161 = load i32, i32* %11, align 4
  %1162 = sub nsw i32 %1161, 1
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds double, double* %1160, i64 %1163
  %1165 = load double, double* %1164, align 8
  %1166 = fadd double %1159, %1165
  store double %1166, double* %31, align 8
  %1167 = load double*, double** %5, align 8
  %1168 = load i32, i32* %9, align 4
  %1169 = sub nsw i32 %1168, 2
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds double, double* %1167, i64 %1170
  %1172 = load double, double* %1171, align 8
  %1173 = load double*, double** %5, align 8
  %1174 = load i32, i32* %11, align 4
  %1175 = sub nsw i32 %1174, 2
  %1176 = sext i32 %1175 to i64
  %1177 = getelementptr inbounds double, double* %1173, i64 %1176
  %1178 = load double, double* %1177, align 8
  %1179 = fsub double %1172, %1178
  store double %1179, double* %32, align 8
  %1180 = load double*, double** %5, align 8
  %1181 = load i32, i32* %9, align 4
  %1182 = sub nsw i32 %1181, 1
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds double, double* %1180, i64 %1183
  %1185 = load double, double* %1184, align 8
  %1186 = load double*, double** %5, align 8
  %1187 = load i32, i32* %11, align 4
  %1188 = sub nsw i32 %1187, 1
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds double, double* %1186, i64 %1189
  %1191 = load double, double* %1190, align 8
  %1192 = fsub double %1185, %1191
  store double %1192, double* %33, align 8
  %1193 = load double, double* %26, align 8
  %1194 = load double, double* %30, align 8
  %1195 = fadd double %1193, %1194
  %1196 = load double*, double** %5, align 8
  %1197 = load i32, i32* %8, align 4
  %1198 = sub nsw i32 %1197, 2
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds double, double* %1196, i64 %1199
  store double %1195, double* %1200, align 8
  %1201 = load double, double* %27, align 8
  %1202 = load double, double* %31, align 8
  %1203 = fadd double %1201, %1202
  %1204 = load double*, double** %5, align 8
  %1205 = load i32, i32* %8, align 4
  %1206 = sub nsw i32 %1205, 1
  %1207 = sext i32 %1206 to i64
  %1208 = getelementptr inbounds double, double* %1204, i64 %1207
  store double %1203, double* %1208, align 8
  %1209 = load double, double* %26, align 8
  %1210 = load double, double* %30, align 8
  %1211 = fsub double %1209, %1210
  %1212 = load double*, double** %5, align 8
  %1213 = load i32, i32* %9, align 4
  %1214 = sub nsw i32 %1213, 2
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds double, double* %1212, i64 %1215
  store double %1211, double* %1216, align 8
  %1217 = load double, double* %27, align 8
  %1218 = load double, double* %31, align 8
  %1219 = fsub double %1217, %1218
  %1220 = load double*, double** %5, align 8
  %1221 = load i32, i32* %9, align 4
  %1222 = sub nsw i32 %1221, 1
  %1223 = sext i32 %1222 to i64
  %1224 = getelementptr inbounds double, double* %1220, i64 %1223
  store double %1219, double* %1224, align 8
  %1225 = load double, double* %28, align 8
  %1226 = load double, double* %33, align 8
  %1227 = fsub double %1225, %1226
  store double %1227, double* %26, align 8
  %1228 = load double, double* %29, align 8
  %1229 = load double, double* %32, align 8
  %1230 = fadd double %1228, %1229
  store double %1230, double* %27, align 8
  %1231 = load double, double* %18, align 8
  %1232 = load double, double* %26, align 8
  %1233 = fmul double %1231, %1232
  %1234 = load double, double* %19, align 8
  %1235 = load double, double* %27, align 8
  %1236 = fmul double %1234, %1235
  %1237 = fsub double %1233, %1236
  %1238 = load double*, double** %5, align 8
  %1239 = load i32, i32* %10, align 4
  %1240 = sub nsw i32 %1239, 2
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds double, double* %1238, i64 %1241
  store double %1237, double* %1242, align 8
  %1243 = load double, double* %18, align 8
  %1244 = load double, double* %27, align 8
  %1245 = fmul double %1243, %1244
  %1246 = load double, double* %19, align 8
  %1247 = load double, double* %26, align 8
  %1248 = fmul double %1246, %1247
  %1249 = fadd double %1245, %1248
  %1250 = load double*, double** %5, align 8
  %1251 = load i32, i32* %10, align 4
  %1252 = sub nsw i32 %1251, 1
  %1253 = sext i32 %1252 to i64
  %1254 = getelementptr inbounds double, double* %1250, i64 %1253
  store double %1249, double* %1254, align 8
  %1255 = load double, double* %28, align 8
  %1256 = load double, double* %33, align 8
  %1257 = fadd double %1255, %1256
  store double %1257, double* %26, align 8
  %1258 = load double, double* %29, align 8
  %1259 = load double, double* %32, align 8
  %1260 = fsub double %1258, %1259
  store double %1260, double* %27, align 8
  %1261 = load double, double* %20, align 8
  %1262 = load double, double* %26, align 8
  %1263 = fmul double %1261, %1262
  %1264 = load double, double* %21, align 8
  %1265 = load double, double* %27, align 8
  %1266 = fmul double %1264, %1265
  %1267 = fadd double %1263, %1266
  %1268 = load double*, double** %5, align 8
  %1269 = load i32, i32* %11, align 4
  %1270 = sub nsw i32 %1269, 2
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds double, double* %1268, i64 %1271
  store double %1267, double* %1272, align 8
  %1273 = load double, double* %20, align 8
  %1274 = load double, double* %27, align 8
  %1275 = fmul double %1273, %1274
  %1276 = load double, double* %21, align 8
  %1277 = load double, double* %26, align 8
  %1278 = fmul double %1276, %1277
  %1279 = fsub double %1275, %1278
  %1280 = load double*, double** %5, align 8
  %1281 = load i32, i32* %11, align 4
  %1282 = sub nsw i32 %1281, 1
  %1283 = sext i32 %1282 to i64
  %1284 = getelementptr inbounds double, double* %1280, i64 %1283
  store double %1279, double* %1284, align 8
  %1285 = load double*, double** %5, align 8
  %1286 = load i32, i32* %8, align 4
  %1287 = sext i32 %1286 to i64
  %1288 = getelementptr inbounds double, double* %1285, i64 %1287
  %1289 = load double, double* %1288, align 8
  %1290 = load double*, double** %5, align 8
  %1291 = load i32, i32* %10, align 4
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds double, double* %1290, i64 %1292
  %1294 = load double, double* %1293, align 8
  %1295 = fadd double %1289, %1294
  store double %1295, double* %26, align 8
  %1296 = load double*, double** %5, align 8
  %1297 = load i32, i32* %8, align 4
  %1298 = add nsw i32 %1297, 1
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds double, double* %1296, i64 %1299
  %1301 = load double, double* %1300, align 8
  %1302 = load double*, double** %5, align 8
  %1303 = load i32, i32* %10, align 4
  %1304 = add nsw i32 %1303, 1
  %1305 = sext i32 %1304 to i64
  %1306 = getelementptr inbounds double, double* %1302, i64 %1305
  %1307 = load double, double* %1306, align 8
  %1308 = fadd double %1301, %1307
  store double %1308, double* %27, align 8
  %1309 = load double*, double** %5, align 8
  %1310 = load i32, i32* %8, align 4
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds double, double* %1309, i64 %1311
  %1313 = load double, double* %1312, align 8
  %1314 = load double*, double** %5, align 8
  %1315 = load i32, i32* %10, align 4
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds double, double* %1314, i64 %1316
  %1318 = load double, double* %1317, align 8
  %1319 = fsub double %1313, %1318
  store double %1319, double* %28, align 8
  %1320 = load double*, double** %5, align 8
  %1321 = load i32, i32* %8, align 4
  %1322 = add nsw i32 %1321, 1
  %1323 = sext i32 %1322 to i64
  %1324 = getelementptr inbounds double, double* %1320, i64 %1323
  %1325 = load double, double* %1324, align 8
  %1326 = load double*, double** %5, align 8
  %1327 = load i32, i32* %10, align 4
  %1328 = add nsw i32 %1327, 1
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds double, double* %1326, i64 %1329
  %1331 = load double, double* %1330, align 8
  %1332 = fsub double %1325, %1331
  store double %1332, double* %29, align 8
  %1333 = load double*, double** %5, align 8
  %1334 = load i32, i32* %9, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = getelementptr inbounds double, double* %1333, i64 %1335
  %1337 = load double, double* %1336, align 8
  %1338 = load double*, double** %5, align 8
  %1339 = load i32, i32* %11, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds double, double* %1338, i64 %1340
  %1342 = load double, double* %1341, align 8
  %1343 = fadd double %1337, %1342
  store double %1343, double* %30, align 8
  %1344 = load double*, double** %5, align 8
  %1345 = load i32, i32* %9, align 4
  %1346 = add nsw i32 %1345, 1
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds double, double* %1344, i64 %1347
  %1349 = load double, double* %1348, align 8
  %1350 = load double*, double** %5, align 8
  %1351 = load i32, i32* %11, align 4
  %1352 = add nsw i32 %1351, 1
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds double, double* %1350, i64 %1353
  %1355 = load double, double* %1354, align 8
  %1356 = fadd double %1349, %1355
  store double %1356, double* %31, align 8
  %1357 = load double*, double** %5, align 8
  %1358 = load i32, i32* %9, align 4
  %1359 = sext i32 %1358 to i64
  %1360 = getelementptr inbounds double, double* %1357, i64 %1359
  %1361 = load double, double* %1360, align 8
  %1362 = load double*, double** %5, align 8
  %1363 = load i32, i32* %11, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds double, double* %1362, i64 %1364
  %1366 = load double, double* %1365, align 8
  %1367 = fsub double %1361, %1366
  store double %1367, double* %32, align 8
  %1368 = load double*, double** %5, align 8
  %1369 = load i32, i32* %9, align 4
  %1370 = add nsw i32 %1369, 1
  %1371 = sext i32 %1370 to i64
  %1372 = getelementptr inbounds double, double* %1368, i64 %1371
  %1373 = load double, double* %1372, align 8
  %1374 = load double*, double** %5, align 8
  %1375 = load i32, i32* %11, align 4
  %1376 = add nsw i32 %1375, 1
  %1377 = sext i32 %1376 to i64
  %1378 = getelementptr inbounds double, double* %1374, i64 %1377
  %1379 = load double, double* %1378, align 8
  %1380 = fsub double %1373, %1379
  store double %1380, double* %33, align 8
  %1381 = load double, double* %26, align 8
  %1382 = load double, double* %30, align 8
  %1383 = fadd double %1381, %1382
  %1384 = load double*, double** %5, align 8
  %1385 = load i32, i32* %8, align 4
  %1386 = sext i32 %1385 to i64
  %1387 = getelementptr inbounds double, double* %1384, i64 %1386
  store double %1383, double* %1387, align 8
  %1388 = load double, double* %27, align 8
  %1389 = load double, double* %31, align 8
  %1390 = fadd double %1388, %1389
  %1391 = load double*, double** %5, align 8
  %1392 = load i32, i32* %8, align 4
  %1393 = add nsw i32 %1392, 1
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds double, double* %1391, i64 %1394
  store double %1390, double* %1395, align 8
  %1396 = load double, double* %26, align 8
  %1397 = load double, double* %30, align 8
  %1398 = fsub double %1396, %1397
  %1399 = load double*, double** %5, align 8
  %1400 = load i32, i32* %9, align 4
  %1401 = sext i32 %1400 to i64
  %1402 = getelementptr inbounds double, double* %1399, i64 %1401
  store double %1398, double* %1402, align 8
  %1403 = load double, double* %27, align 8
  %1404 = load double, double* %31, align 8
  %1405 = fsub double %1403, %1404
  %1406 = load double*, double** %5, align 8
  %1407 = load i32, i32* %9, align 4
  %1408 = add nsw i32 %1407, 1
  %1409 = sext i32 %1408 to i64
  %1410 = getelementptr inbounds double, double* %1406, i64 %1409
  store double %1405, double* %1410, align 8
  %1411 = load double, double* %28, align 8
  %1412 = load double, double* %33, align 8
  %1413 = fsub double %1411, %1412
  store double %1413, double* %26, align 8
  %1414 = load double, double* %29, align 8
  %1415 = load double, double* %32, align 8
  %1416 = fadd double %1414, %1415
  store double %1416, double* %27, align 8
  %1417 = load double, double* %15, align 8
  %1418 = load double, double* %26, align 8
  %1419 = load double, double* %27, align 8
  %1420 = fsub double %1418, %1419
  %1421 = fmul double %1417, %1420
  %1422 = load double*, double** %5, align 8
  %1423 = load i32, i32* %10, align 4
  %1424 = sext i32 %1423 to i64
  %1425 = getelementptr inbounds double, double* %1422, i64 %1424
  store double %1421, double* %1425, align 8
  %1426 = load double, double* %15, align 8
  %1427 = load double, double* %27, align 8
  %1428 = load double, double* %26, align 8
  %1429 = fadd double %1427, %1428
  %1430 = fmul double %1426, %1429
  %1431 = load double*, double** %5, align 8
  %1432 = load i32, i32* %10, align 4
  %1433 = add nsw i32 %1432, 1
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds double, double* %1431, i64 %1434
  store double %1430, double* %1435, align 8
  %1436 = load double, double* %28, align 8
  %1437 = load double, double* %33, align 8
  %1438 = fadd double %1436, %1437
  store double %1438, double* %26, align 8
  %1439 = load double, double* %29, align 8
  %1440 = load double, double* %32, align 8
  %1441 = fsub double %1439, %1440
  store double %1441, double* %27, align 8
  %1442 = load double, double* %15, align 8
  %1443 = fneg double %1442
  %1444 = load double, double* %26, align 8
  %1445 = load double, double* %27, align 8
  %1446 = fadd double %1444, %1445
  %1447 = fmul double %1443, %1446
  %1448 = load double*, double** %5, align 8
  %1449 = load i32, i32* %11, align 4
  %1450 = sext i32 %1449 to i64
  %1451 = getelementptr inbounds double, double* %1448, i64 %1450
  store double %1447, double* %1451, align 8
  %1452 = load double, double* %15, align 8
  %1453 = fneg double %1452
  %1454 = load double, double* %27, align 8
  %1455 = load double, double* %26, align 8
  %1456 = fsub double %1454, %1455
  %1457 = fmul double %1453, %1456
  %1458 = load double*, double** %5, align 8
  %1459 = load i32, i32* %11, align 4
  %1460 = add nsw i32 %1459, 1
  %1461 = sext i32 %1460 to i64
  %1462 = getelementptr inbounds double, double* %1458, i64 %1461
  store double %1457, double* %1462, align 8
  %1463 = load double*, double** %5, align 8
  %1464 = load i32, i32* %8, align 4
  %1465 = add nsw i32 %1464, 2
  %1466 = sext i32 %1465 to i64
  %1467 = getelementptr inbounds double, double* %1463, i64 %1466
  %1468 = load double, double* %1467, align 8
  %1469 = load double*, double** %5, align 8
  %1470 = load i32, i32* %10, align 4
  %1471 = add nsw i32 %1470, 2
  %1472 = sext i32 %1471 to i64
  %1473 = getelementptr inbounds double, double* %1469, i64 %1472
  %1474 = load double, double* %1473, align 8
  %1475 = fadd double %1468, %1474
  store double %1475, double* %26, align 8
  %1476 = load double*, double** %5, align 8
  %1477 = load i32, i32* %8, align 4
  %1478 = add nsw i32 %1477, 3
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds double, double* %1476, i64 %1479
  %1481 = load double, double* %1480, align 8
  %1482 = load double*, double** %5, align 8
  %1483 = load i32, i32* %10, align 4
  %1484 = add nsw i32 %1483, 3
  %1485 = sext i32 %1484 to i64
  %1486 = getelementptr inbounds double, double* %1482, i64 %1485
  %1487 = load double, double* %1486, align 8
  %1488 = fadd double %1481, %1487
  store double %1488, double* %27, align 8
  %1489 = load double*, double** %5, align 8
  %1490 = load i32, i32* %8, align 4
  %1491 = add nsw i32 %1490, 2
  %1492 = sext i32 %1491 to i64
  %1493 = getelementptr inbounds double, double* %1489, i64 %1492
  %1494 = load double, double* %1493, align 8
  %1495 = load double*, double** %5, align 8
  %1496 = load i32, i32* %10, align 4
  %1497 = add nsw i32 %1496, 2
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds double, double* %1495, i64 %1498
  %1500 = load double, double* %1499, align 8
  %1501 = fsub double %1494, %1500
  store double %1501, double* %28, align 8
  %1502 = load double*, double** %5, align 8
  %1503 = load i32, i32* %8, align 4
  %1504 = add nsw i32 %1503, 3
  %1505 = sext i32 %1504 to i64
  %1506 = getelementptr inbounds double, double* %1502, i64 %1505
  %1507 = load double, double* %1506, align 8
  %1508 = load double*, double** %5, align 8
  %1509 = load i32, i32* %10, align 4
  %1510 = add nsw i32 %1509, 3
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds double, double* %1508, i64 %1511
  %1513 = load double, double* %1512, align 8
  %1514 = fsub double %1507, %1513
  store double %1514, double* %29, align 8
  %1515 = load double*, double** %5, align 8
  %1516 = load i32, i32* %9, align 4
  %1517 = add nsw i32 %1516, 2
  %1518 = sext i32 %1517 to i64
  %1519 = getelementptr inbounds double, double* %1515, i64 %1518
  %1520 = load double, double* %1519, align 8
  %1521 = load double*, double** %5, align 8
  %1522 = load i32, i32* %11, align 4
  %1523 = add nsw i32 %1522, 2
  %1524 = sext i32 %1523 to i64
  %1525 = getelementptr inbounds double, double* %1521, i64 %1524
  %1526 = load double, double* %1525, align 8
  %1527 = fadd double %1520, %1526
  store double %1527, double* %30, align 8
  %1528 = load double*, double** %5, align 8
  %1529 = load i32, i32* %9, align 4
  %1530 = add nsw i32 %1529, 3
  %1531 = sext i32 %1530 to i64
  %1532 = getelementptr inbounds double, double* %1528, i64 %1531
  %1533 = load double, double* %1532, align 8
  %1534 = load double*, double** %5, align 8
  %1535 = load i32, i32* %11, align 4
  %1536 = add nsw i32 %1535, 3
  %1537 = sext i32 %1536 to i64
  %1538 = getelementptr inbounds double, double* %1534, i64 %1537
  %1539 = load double, double* %1538, align 8
  %1540 = fadd double %1533, %1539
  store double %1540, double* %31, align 8
  %1541 = load double*, double** %5, align 8
  %1542 = load i32, i32* %9, align 4
  %1543 = add nsw i32 %1542, 2
  %1544 = sext i32 %1543 to i64
  %1545 = getelementptr inbounds double, double* %1541, i64 %1544
  %1546 = load double, double* %1545, align 8
  %1547 = load double*, double** %5, align 8
  %1548 = load i32, i32* %11, align 4
  %1549 = add nsw i32 %1548, 2
  %1550 = sext i32 %1549 to i64
  %1551 = getelementptr inbounds double, double* %1547, i64 %1550
  %1552 = load double, double* %1551, align 8
  %1553 = fsub double %1546, %1552
  store double %1553, double* %32, align 8
  %1554 = load double*, double** %5, align 8
  %1555 = load i32, i32* %9, align 4
  %1556 = add nsw i32 %1555, 3
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds double, double* %1554, i64 %1557
  %1559 = load double, double* %1558, align 8
  %1560 = load double*, double** %5, align 8
  %1561 = load i32, i32* %11, align 4
  %1562 = add nsw i32 %1561, 3
  %1563 = sext i32 %1562 to i64
  %1564 = getelementptr inbounds double, double* %1560, i64 %1563
  %1565 = load double, double* %1564, align 8
  %1566 = fsub double %1559, %1565
  store double %1566, double* %33, align 8
  %1567 = load double, double* %26, align 8
  %1568 = load double, double* %30, align 8
  %1569 = fadd double %1567, %1568
  %1570 = load double*, double** %5, align 8
  %1571 = load i32, i32* %8, align 4
  %1572 = add nsw i32 %1571, 2
  %1573 = sext i32 %1572 to i64
  %1574 = getelementptr inbounds double, double* %1570, i64 %1573
  store double %1569, double* %1574, align 8
  %1575 = load double, double* %27, align 8
  %1576 = load double, double* %31, align 8
  %1577 = fadd double %1575, %1576
  %1578 = load double*, double** %5, align 8
  %1579 = load i32, i32* %8, align 4
  %1580 = add nsw i32 %1579, 3
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds double, double* %1578, i64 %1581
  store double %1577, double* %1582, align 8
  %1583 = load double, double* %26, align 8
  %1584 = load double, double* %30, align 8
  %1585 = fsub double %1583, %1584
  %1586 = load double*, double** %5, align 8
  %1587 = load i32, i32* %9, align 4
  %1588 = add nsw i32 %1587, 2
  %1589 = sext i32 %1588 to i64
  %1590 = getelementptr inbounds double, double* %1586, i64 %1589
  store double %1585, double* %1590, align 8
  %1591 = load double, double* %27, align 8
  %1592 = load double, double* %31, align 8
  %1593 = fsub double %1591, %1592
  %1594 = load double*, double** %5, align 8
  %1595 = load i32, i32* %9, align 4
  %1596 = add nsw i32 %1595, 3
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds double, double* %1594, i64 %1597
  store double %1593, double* %1598, align 8
  %1599 = load double, double* %28, align 8
  %1600 = load double, double* %33, align 8
  %1601 = fsub double %1599, %1600
  store double %1601, double* %26, align 8
  %1602 = load double, double* %29, align 8
  %1603 = load double, double* %32, align 8
  %1604 = fadd double %1602, %1603
  store double %1604, double* %27, align 8
  %1605 = load double, double* %19, align 8
  %1606 = load double, double* %26, align 8
  %1607 = fmul double %1605, %1606
  %1608 = load double, double* %18, align 8
  %1609 = load double, double* %27, align 8
  %1610 = fmul double %1608, %1609
  %1611 = fsub double %1607, %1610
  %1612 = load double*, double** %5, align 8
  %1613 = load i32, i32* %10, align 4
  %1614 = add nsw i32 %1613, 2
  %1615 = sext i32 %1614 to i64
  %1616 = getelementptr inbounds double, double* %1612, i64 %1615
  store double %1611, double* %1616, align 8
  %1617 = load double, double* %19, align 8
  %1618 = load double, double* %27, align 8
  %1619 = fmul double %1617, %1618
  %1620 = load double, double* %18, align 8
  %1621 = load double, double* %26, align 8
  %1622 = fmul double %1620, %1621
  %1623 = fadd double %1619, %1622
  %1624 = load double*, double** %5, align 8
  %1625 = load i32, i32* %10, align 4
  %1626 = add nsw i32 %1625, 3
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds double, double* %1624, i64 %1627
  store double %1623, double* %1628, align 8
  %1629 = load double, double* %28, align 8
  %1630 = load double, double* %33, align 8
  %1631 = fadd double %1629, %1630
  store double %1631, double* %26, align 8
  %1632 = load double, double* %29, align 8
  %1633 = load double, double* %32, align 8
  %1634 = fsub double %1632, %1633
  store double %1634, double* %27, align 8
  %1635 = load double, double* %21, align 8
  %1636 = load double, double* %26, align 8
  %1637 = fmul double %1635, %1636
  %1638 = load double, double* %20, align 8
  %1639 = load double, double* %27, align 8
  %1640 = fmul double %1638, %1639
  %1641 = fadd double %1637, %1640
  %1642 = load double*, double** %5, align 8
  %1643 = load i32, i32* %11, align 4
  %1644 = add nsw i32 %1643, 2
  %1645 = sext i32 %1644 to i64
  %1646 = getelementptr inbounds double, double* %1642, i64 %1645
  store double %1641, double* %1646, align 8
  %1647 = load double, double* %21, align 8
  %1648 = load double, double* %27, align 8
  %1649 = fmul double %1647, %1648
  %1650 = load double, double* %20, align 8
  %1651 = load double, double* %26, align 8
  %1652 = fmul double %1650, %1651
  %1653 = fsub double %1649, %1652
  %1654 = load double*, double** %5, align 8
  %1655 = load i32, i32* %11, align 4
  %1656 = add nsw i32 %1655, 3
  %1657 = sext i32 %1656 to i64
  %1658 = getelementptr inbounds double, double* %1654, i64 %1657
  store double %1653, double* %1658, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitrv2(i32 %0, i32* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store double* %2, double** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %21

21:                                               ; preds = %50, %3
  %22 = load i32, i32* %12, align 4
  %23 = shl i32 %22, 3
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %47, %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 2, %54
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 %56, 3
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %348

60:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %344, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %347

65:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %283, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %286

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 2, %71
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %72, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 2, %79
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %10, align 4
  %87 = load double*, double** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  %91 = load double, double* %90, align 8
  store double %91, double* %14, align 8
  %92 = load double*, double** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %92, i64 %95
  %97 = load double, double* %96, align 8
  store double %97, double* %15, align 8
  %98 = load double*, double** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  store double %102, double* %16, align 8
  %103 = load double*, double** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %103, i64 %106
  %108 = load double, double* %107, align 8
  store double %108, double* %17, align 8
  %109 = load double, double* %16, align 8
  %110 = load double*, double** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %110, i64 %112
  store double %109, double* %113, align 8
  %114 = load double, double* %17, align 8
  %115 = load double*, double** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %115, i64 %118
  store double %114, double* %119, align 8
  %120 = load double, double* %14, align 8
  %121 = load double*, double** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  store double %120, double* %124, align 8
  %125 = load double, double* %15, align 8
  %126 = load double*, double** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %126, i64 %129
  store double %125, double* %130, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 2, %134
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load double*, double** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  %142 = load double, double* %141, align 8
  store double %142, double* %14, align 8
  %143 = load double*, double** %6, align 8
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %143, i64 %146
  %148 = load double, double* %147, align 8
  store double %148, double* %15, align 8
  %149 = load double*, double** %6, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %149, i64 %151
  %153 = load double, double* %152, align 8
  store double %153, double* %16, align 8
  %154 = load double*, double** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %154, i64 %157
  %159 = load double, double* %158, align 8
  store double %159, double* %17, align 8
  %160 = load double, double* %16, align 8
  %161 = load double*, double** %6, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  store double %160, double* %164, align 8
  %165 = load double, double* %17, align 8
  %166 = load double*, double** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %166, i64 %169
  store double %165, double* %170, align 8
  %171 = load double, double* %14, align 8
  %172 = load double*, double** %6, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %172, i64 %174
  store double %171, double* %175, align 8
  %176 = load double, double* %15, align 8
  %177 = load double*, double** %6, align 8
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %177, i64 %180
  store double %176, double* %181, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %10, align 4
  %188 = load double*, double** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds double, double* %188, i64 %190
  %192 = load double, double* %191, align 8
  store double %192, double* %14, align 8
  %193 = load double*, double** %6, align 8
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %193, i64 %196
  %198 = load double, double* %197, align 8
  store double %198, double* %15, align 8
  %199 = load double*, double** %6, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %199, i64 %201
  %203 = load double, double* %202, align 8
  store double %203, double* %16, align 8
  %204 = load double*, double** %6, align 8
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %204, i64 %207
  %209 = load double, double* %208, align 8
  store double %209, double* %17, align 8
  %210 = load double, double* %16, align 8
  %211 = load double*, double** %6, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %211, i64 %213
  store double %210, double* %214, align 8
  %215 = load double, double* %17, align 8
  %216 = load double*, double** %6, align 8
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds double, double* %216, i64 %219
  store double %215, double* %220, align 8
  %221 = load double, double* %14, align 8
  %222 = load double*, double** %6, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, double* %222, i64 %224
  store double %221, double* %225, align 8
  %226 = load double, double* %15, align 8
  %227 = load double*, double** %6, align 8
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, double* %227, i64 %230
  store double %226, double* %231, align 8
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %13, align 4
  %236 = mul nsw i32 2, %235
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %10, align 4
  %239 = load double*, double** %6, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %239, i64 %241
  %243 = load double, double* %242, align 8
  store double %243, double* %14, align 8
  %244 = load double*, double** %6, align 8
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, double* %244, i64 %247
  %249 = load double, double* %248, align 8
  store double %249, double* %15, align 8
  %250 = load double*, double** %6, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double, double* %250, i64 %252
  %254 = load double, double* %253, align 8
  store double %254, double* %16, align 8
  %255 = load double*, double** %6, align 8
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double, double* %255, i64 %258
  %260 = load double, double* %259, align 8
  store double %260, double* %17, align 8
  %261 = load double, double* %16, align 8
  %262 = load double*, double** %6, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, double* %262, i64 %264
  store double %261, double* %265, align 8
  %266 = load double, double* %17, align 8
  %267 = load double*, double** %6, align 8
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds double, double* %267, i64 %270
  store double %266, double* %271, align 8
  %272 = load double, double* %14, align 8
  %273 = load double*, double** %6, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds double, double* %273, i64 %275
  store double %272, double* %276, align 8
  %277 = load double, double* %15, align 8
  %278 = load double*, double** %6, align 8
  %279 = load i32, i32* %10, align 4
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double, double* %278, i64 %281
  store double %277, double* %282, align 8
  br label %283

283:                                              ; preds = %70
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  br label %66

286:                                              ; preds = %66
  %287 = load i32, i32* %9, align 4
  %288 = mul nsw i32 2, %287
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %288, %289
  %291 = load i32*, i32** %5, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %290, %295
  store i32 %296, i32* %8, align 4
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %297, %298
  store i32 %299, i32* %10, align 4
  %300 = load double*, double** %6, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds double, double* %300, i64 %302
  %304 = load double, double* %303, align 8
  store double %304, double* %14, align 8
  %305 = load double*, double** %6, align 8
  %306 = load i32, i32* %8, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, double* %305, i64 %308
  %310 = load double, double* %309, align 8
  store double %310, double* %15, align 8
  %311 = load double*, double** %6, align 8
  %312 = load i32, i32* %10, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %311, i64 %313
  %315 = load double, double* %314, align 8
  store double %315, double* %16, align 8
  %316 = load double*, double** %6, align 8
  %317 = load i32, i32* %10, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds double, double* %316, i64 %319
  %321 = load double, double* %320, align 8
  store double %321, double* %17, align 8
  %322 = load double, double* %16, align 8
  %323 = load double*, double** %6, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds double, double* %323, i64 %325
  store double %322, double* %326, align 8
  %327 = load double, double* %17, align 8
  %328 = load double*, double** %6, align 8
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds double, double* %328, i64 %331
  store double %327, double* %332, align 8
  %333 = load double, double* %14, align 8
  %334 = load double*, double** %6, align 8
  %335 = load i32, i32* %10, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %334, i64 %336
  store double %333, double* %337, align 8
  %338 = load double, double* %15, align 8
  %339 = load double*, double** %6, align 8
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, double* %339, i64 %342
  store double %338, double* %343, align 8
  br label %344

344:                                              ; preds = %286
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %9, align 4
  br label %61

347:                                              ; preds = %61
  br label %477

348:                                              ; preds = %53
  store i32 1, i32* %9, align 4
  br label %349

349:                                              ; preds = %473, %348
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* %12, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %476

353:                                              ; preds = %349
  store i32 0, i32* %7, align 4
  br label %354

354:                                              ; preds = %469, %353
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* %9, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %472

358:                                              ; preds = %354
  %359 = load i32, i32* %7, align 4
  %360 = mul nsw i32 2, %359
  %361 = load i32*, i32** %5, align 8
  %362 = load i32, i32* %9, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %360, %365
  store i32 %366, i32* %8, align 4
  %367 = load i32, i32* %9, align 4
  %368 = mul nsw i32 2, %367
  %369 = load i32*, i32** %5, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %368, %373
  store i32 %374, i32* %10, align 4
  %375 = load double*, double** %6, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds double, double* %375, i64 %377
  %379 = load double, double* %378, align 8
  store double %379, double* %14, align 8
  %380 = load double*, double** %6, align 8
  %381 = load i32, i32* %8, align 4
  %382 = add nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds double, double* %380, i64 %383
  %385 = load double, double* %384, align 8
  store double %385, double* %15, align 8
  %386 = load double*, double** %6, align 8
  %387 = load i32, i32* %10, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds double, double* %386, i64 %388
  %390 = load double, double* %389, align 8
  store double %390, double* %16, align 8
  %391 = load double*, double** %6, align 8
  %392 = load i32, i32* %10, align 4
  %393 = add nsw i32 %392, 1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds double, double* %391, i64 %394
  %396 = load double, double* %395, align 8
  store double %396, double* %17, align 8
  %397 = load double, double* %16, align 8
  %398 = load double*, double** %6, align 8
  %399 = load i32, i32* %8, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds double, double* %398, i64 %400
  store double %397, double* %401, align 8
  %402 = load double, double* %17, align 8
  %403 = load double*, double** %6, align 8
  %404 = load i32, i32* %8, align 4
  %405 = add nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds double, double* %403, i64 %406
  store double %402, double* %407, align 8
  %408 = load double, double* %14, align 8
  %409 = load double*, double** %6, align 8
  %410 = load i32, i32* %10, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds double, double* %409, i64 %411
  store double %408, double* %412, align 8
  %413 = load double, double* %15, align 8
  %414 = load double*, double** %6, align 8
  %415 = load i32, i32* %10, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds double, double* %414, i64 %417
  store double %413, double* %418, align 8
  %419 = load i32, i32* %13, align 4
  %420 = load i32, i32* %8, align 4
  %421 = add nsw i32 %420, %419
  store i32 %421, i32* %8, align 4
  %422 = load i32, i32* %13, align 4
  %423 = load i32, i32* %10, align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* %10, align 4
  %425 = load double*, double** %6, align 8
  %426 = load i32, i32* %8, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds double, double* %425, i64 %427
  %429 = load double, double* %428, align 8
  store double %429, double* %14, align 8
  %430 = load double*, double** %6, align 8
  %431 = load i32, i32* %8, align 4
  %432 = add nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %430, i64 %433
  %435 = load double, double* %434, align 8
  store double %435, double* %15, align 8
  %436 = load double*, double** %6, align 8
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds double, double* %436, i64 %438
  %440 = load double, double* %439, align 8
  store double %440, double* %16, align 8
  %441 = load double*, double** %6, align 8
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds double, double* %441, i64 %444
  %446 = load double, double* %445, align 8
  store double %446, double* %17, align 8
  %447 = load double, double* %16, align 8
  %448 = load double*, double** %6, align 8
  %449 = load i32, i32* %8, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds double, double* %448, i64 %450
  store double %447, double* %451, align 8
  %452 = load double, double* %17, align 8
  %453 = load double*, double** %6, align 8
  %454 = load i32, i32* %8, align 4
  %455 = add nsw i32 %454, 1
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds double, double* %453, i64 %456
  store double %452, double* %457, align 8
  %458 = load double, double* %14, align 8
  %459 = load double*, double** %6, align 8
  %460 = load i32, i32* %10, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds double, double* %459, i64 %461
  store double %458, double* %462, align 8
  %463 = load double, double* %15, align 8
  %464 = load double*, double** %6, align 8
  %465 = load i32, i32* %10, align 4
  %466 = add nsw i32 %465, 1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds double, double* %464, i64 %467
  store double %463, double* %468, align 8
  br label %469

469:                                              ; preds = %358
  %470 = load i32, i32* %7, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %7, align 4
  br label %354

472:                                              ; preds = %354
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %9, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %9, align 4
  br label %349

476:                                              ; preds = %349
  br label %477

477:                                              ; preds = %476, %347
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitrv216(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double* %0, double** %2, align 8
  %27 = load double*, double** %2, align 8
  %28 = getelementptr inbounds double, double* %27, i64 2
  %29 = load double, double* %28, align 8
  store double %29, double* %3, align 8
  %30 = load double*, double** %2, align 8
  %31 = getelementptr inbounds double, double* %30, i64 3
  %32 = load double, double* %31, align 8
  store double %32, double* %4, align 8
  %33 = load double*, double** %2, align 8
  %34 = getelementptr inbounds double, double* %33, i64 4
  %35 = load double, double* %34, align 8
  store double %35, double* %5, align 8
  %36 = load double*, double** %2, align 8
  %37 = getelementptr inbounds double, double* %36, i64 5
  %38 = load double, double* %37, align 8
  store double %38, double* %6, align 8
  %39 = load double*, double** %2, align 8
  %40 = getelementptr inbounds double, double* %39, i64 6
  %41 = load double, double* %40, align 8
  store double %41, double* %7, align 8
  %42 = load double*, double** %2, align 8
  %43 = getelementptr inbounds double, double* %42, i64 7
  %44 = load double, double* %43, align 8
  store double %44, double* %8, align 8
  %45 = load double*, double** %2, align 8
  %46 = getelementptr inbounds double, double* %45, i64 8
  %47 = load double, double* %46, align 8
  store double %47, double* %9, align 8
  %48 = load double*, double** %2, align 8
  %49 = getelementptr inbounds double, double* %48, i64 9
  %50 = load double, double* %49, align 8
  store double %50, double* %10, align 8
  %51 = load double*, double** %2, align 8
  %52 = getelementptr inbounds double, double* %51, i64 10
  %53 = load double, double* %52, align 8
  store double %53, double* %11, align 8
  %54 = load double*, double** %2, align 8
  %55 = getelementptr inbounds double, double* %54, i64 11
  %56 = load double, double* %55, align 8
  store double %56, double* %12, align 8
  %57 = load double*, double** %2, align 8
  %58 = getelementptr inbounds double, double* %57, i64 14
  %59 = load double, double* %58, align 8
  store double %59, double* %13, align 8
  %60 = load double*, double** %2, align 8
  %61 = getelementptr inbounds double, double* %60, i64 15
  %62 = load double, double* %61, align 8
  store double %62, double* %14, align 8
  %63 = load double*, double** %2, align 8
  %64 = getelementptr inbounds double, double* %63, i64 16
  %65 = load double, double* %64, align 8
  store double %65, double* %15, align 8
  %66 = load double*, double** %2, align 8
  %67 = getelementptr inbounds double, double* %66, i64 17
  %68 = load double, double* %67, align 8
  store double %68, double* %16, align 8
  %69 = load double*, double** %2, align 8
  %70 = getelementptr inbounds double, double* %69, i64 20
  %71 = load double, double* %70, align 8
  store double %71, double* %17, align 8
  %72 = load double*, double** %2, align 8
  %73 = getelementptr inbounds double, double* %72, i64 21
  %74 = load double, double* %73, align 8
  store double %74, double* %18, align 8
  %75 = load double*, double** %2, align 8
  %76 = getelementptr inbounds double, double* %75, i64 22
  %77 = load double, double* %76, align 8
  store double %77, double* %19, align 8
  %78 = load double*, double** %2, align 8
  %79 = getelementptr inbounds double, double* %78, i64 23
  %80 = load double, double* %79, align 8
  store double %80, double* %20, align 8
  %81 = load double*, double** %2, align 8
  %82 = getelementptr inbounds double, double* %81, i64 24
  %83 = load double, double* %82, align 8
  store double %83, double* %21, align 8
  %84 = load double*, double** %2, align 8
  %85 = getelementptr inbounds double, double* %84, i64 25
  %86 = load double, double* %85, align 8
  store double %86, double* %22, align 8
  %87 = load double*, double** %2, align 8
  %88 = getelementptr inbounds double, double* %87, i64 26
  %89 = load double, double* %88, align 8
  store double %89, double* %23, align 8
  %90 = load double*, double** %2, align 8
  %91 = getelementptr inbounds double, double* %90, i64 27
  %92 = load double, double* %91, align 8
  store double %92, double* %24, align 8
  %93 = load double*, double** %2, align 8
  %94 = getelementptr inbounds double, double* %93, i64 28
  %95 = load double, double* %94, align 8
  store double %95, double* %25, align 8
  %96 = load double*, double** %2, align 8
  %97 = getelementptr inbounds double, double* %96, i64 29
  %98 = load double, double* %97, align 8
  store double %98, double* %26, align 8
  %99 = load double, double* %15, align 8
  %100 = load double*, double** %2, align 8
  %101 = getelementptr inbounds double, double* %100, i64 2
  store double %99, double* %101, align 8
  %102 = load double, double* %16, align 8
  %103 = load double*, double** %2, align 8
  %104 = getelementptr inbounds double, double* %103, i64 3
  store double %102, double* %104, align 8
  %105 = load double, double* %9, align 8
  %106 = load double*, double** %2, align 8
  %107 = getelementptr inbounds double, double* %106, i64 4
  store double %105, double* %107, align 8
  %108 = load double, double* %10, align 8
  %109 = load double*, double** %2, align 8
  %110 = getelementptr inbounds double, double* %109, i64 5
  store double %108, double* %110, align 8
  %111 = load double, double* %21, align 8
  %112 = load double*, double** %2, align 8
  %113 = getelementptr inbounds double, double* %112, i64 6
  store double %111, double* %113, align 8
  %114 = load double, double* %22, align 8
  %115 = load double*, double** %2, align 8
  %116 = getelementptr inbounds double, double* %115, i64 7
  store double %114, double* %116, align 8
  %117 = load double, double* %5, align 8
  %118 = load double*, double** %2, align 8
  %119 = getelementptr inbounds double, double* %118, i64 8
  store double %117, double* %119, align 8
  %120 = load double, double* %6, align 8
  %121 = load double*, double** %2, align 8
  %122 = getelementptr inbounds double, double* %121, i64 9
  store double %120, double* %122, align 8
  %123 = load double, double* %17, align 8
  %124 = load double*, double** %2, align 8
  %125 = getelementptr inbounds double, double* %124, i64 10
  store double %123, double* %125, align 8
  %126 = load double, double* %18, align 8
  %127 = load double*, double** %2, align 8
  %128 = getelementptr inbounds double, double* %127, i64 11
  store double %126, double* %128, align 8
  %129 = load double, double* %25, align 8
  %130 = load double*, double** %2, align 8
  %131 = getelementptr inbounds double, double* %130, i64 14
  store double %129, double* %131, align 8
  %132 = load double, double* %26, align 8
  %133 = load double*, double** %2, align 8
  %134 = getelementptr inbounds double, double* %133, i64 15
  store double %132, double* %134, align 8
  %135 = load double, double* %3, align 8
  %136 = load double*, double** %2, align 8
  %137 = getelementptr inbounds double, double* %136, i64 16
  store double %135, double* %137, align 8
  %138 = load double, double* %4, align 8
  %139 = load double*, double** %2, align 8
  %140 = getelementptr inbounds double, double* %139, i64 17
  store double %138, double* %140, align 8
  %141 = load double, double* %11, align 8
  %142 = load double*, double** %2, align 8
  %143 = getelementptr inbounds double, double* %142, i64 20
  store double %141, double* %143, align 8
  %144 = load double, double* %12, align 8
  %145 = load double*, double** %2, align 8
  %146 = getelementptr inbounds double, double* %145, i64 21
  store double %144, double* %146, align 8
  %147 = load double, double* %23, align 8
  %148 = load double*, double** %2, align 8
  %149 = getelementptr inbounds double, double* %148, i64 22
  store double %147, double* %149, align 8
  %150 = load double, double* %24, align 8
  %151 = load double*, double** %2, align 8
  %152 = getelementptr inbounds double, double* %151, i64 23
  store double %150, double* %152, align 8
  %153 = load double, double* %7, align 8
  %154 = load double*, double** %2, align 8
  %155 = getelementptr inbounds double, double* %154, i64 24
  store double %153, double* %155, align 8
  %156 = load double, double* %8, align 8
  %157 = load double*, double** %2, align 8
  %158 = getelementptr inbounds double, double* %157, i64 25
  store double %156, double* %158, align 8
  %159 = load double, double* %19, align 8
  %160 = load double*, double** %2, align 8
  %161 = getelementptr inbounds double, double* %160, i64 26
  store double %159, double* %161, align 8
  %162 = load double, double* %20, align 8
  %163 = load double*, double** %2, align 8
  %164 = getelementptr inbounds double, double* %163, i64 27
  store double %162, double* %164, align 8
  %165 = load double, double* %13, align 8
  %166 = load double*, double** %2, align 8
  %167 = getelementptr inbounds double, double* %166, i64 28
  store double %165, double* %167, align 8
  %168 = load double, double* %14, align 8
  %169 = load double*, double** %2, align 8
  %170 = getelementptr inbounds double, double* %169, i64 29
  store double %168, double* %170, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitrv208(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double* %0, double** %2, align 8
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 2
  %13 = load double, double* %12, align 8
  store double %13, double* %3, align 8
  %14 = load double*, double** %2, align 8
  %15 = getelementptr inbounds double, double* %14, i64 3
  %16 = load double, double* %15, align 8
  store double %16, double* %4, align 8
  %17 = load double*, double** %2, align 8
  %18 = getelementptr inbounds double, double* %17, i64 6
  %19 = load double, double* %18, align 8
  store double %19, double* %5, align 8
  %20 = load double*, double** %2, align 8
  %21 = getelementptr inbounds double, double* %20, i64 7
  %22 = load double, double* %21, align 8
  store double %22, double* %6, align 8
  %23 = load double*, double** %2, align 8
  %24 = getelementptr inbounds double, double* %23, i64 8
  %25 = load double, double* %24, align 8
  store double %25, double* %7, align 8
  %26 = load double*, double** %2, align 8
  %27 = getelementptr inbounds double, double* %26, i64 9
  %28 = load double, double* %27, align 8
  store double %28, double* %8, align 8
  %29 = load double*, double** %2, align 8
  %30 = getelementptr inbounds double, double* %29, i64 12
  %31 = load double, double* %30, align 8
  store double %31, double* %9, align 8
  %32 = load double*, double** %2, align 8
  %33 = getelementptr inbounds double, double* %32, i64 13
  %34 = load double, double* %33, align 8
  store double %34, double* %10, align 8
  %35 = load double, double* %7, align 8
  %36 = load double*, double** %2, align 8
  %37 = getelementptr inbounds double, double* %36, i64 2
  store double %35, double* %37, align 8
  %38 = load double, double* %8, align 8
  %39 = load double*, double** %2, align 8
  %40 = getelementptr inbounds double, double* %39, i64 3
  store double %38, double* %40, align 8
  %41 = load double, double* %9, align 8
  %42 = load double*, double** %2, align 8
  %43 = getelementptr inbounds double, double* %42, i64 6
  store double %41, double* %43, align 8
  %44 = load double, double* %10, align 8
  %45 = load double*, double** %2, align 8
  %46 = getelementptr inbounds double, double* %45, i64 7
  store double %44, double* %46, align 8
  %47 = load double, double* %3, align 8
  %48 = load double*, double** %2, align 8
  %49 = getelementptr inbounds double, double* %48, i64 8
  store double %47, double* %49, align 8
  %50 = load double, double* %4, align 8
  %51 = load double*, double** %2, align 8
  %52 = getelementptr inbounds double, double* %51, i64 9
  store double %50, double* %52, align 8
  %53 = load double, double* %5, align 8
  %54 = load double*, double** %2, align 8
  %55 = getelementptr inbounds double, double* %54, i64 12
  store double %53, double* %55, align 8
  %56 = load double, double* %6, align 8
  %57 = load double*, double** %2, align 8
  %58 = getelementptr inbounds double, double* %57, i64 13
  store double %56, double* %58, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cftf040(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double* %0, double** %2, align 8
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 0
  %13 = load double, double* %12, align 8
  %14 = load double*, double** %2, align 8
  %15 = getelementptr inbounds double, double* %14, i64 4
  %16 = load double, double* %15, align 8
  %17 = fadd double %13, %16
  store double %17, double* %3, align 8
  %18 = load double*, double** %2, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load double, double* %19, align 8
  %21 = load double*, double** %2, align 8
  %22 = getelementptr inbounds double, double* %21, i64 5
  %23 = load double, double* %22, align 8
  %24 = fadd double %20, %23
  store double %24, double* %4, align 8
  %25 = load double*, double** %2, align 8
  %26 = getelementptr inbounds double, double* %25, i64 0
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %2, align 8
  %29 = getelementptr inbounds double, double* %28, i64 4
  %30 = load double, double* %29, align 8
  %31 = fsub double %27, %30
  store double %31, double* %5, align 8
  %32 = load double*, double** %2, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  %35 = load double*, double** %2, align 8
  %36 = getelementptr inbounds double, double* %35, i64 5
  %37 = load double, double* %36, align 8
  %38 = fsub double %34, %37
  store double %38, double* %6, align 8
  %39 = load double*, double** %2, align 8
  %40 = getelementptr inbounds double, double* %39, i64 2
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %2, align 8
  %43 = getelementptr inbounds double, double* %42, i64 6
  %44 = load double, double* %43, align 8
  %45 = fadd double %41, %44
  store double %45, double* %7, align 8
  %46 = load double*, double** %2, align 8
  %47 = getelementptr inbounds double, double* %46, i64 3
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %2, align 8
  %50 = getelementptr inbounds double, double* %49, i64 7
  %51 = load double, double* %50, align 8
  %52 = fadd double %48, %51
  store double %52, double* %8, align 8
  %53 = load double*, double** %2, align 8
  %54 = getelementptr inbounds double, double* %53, i64 2
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %2, align 8
  %57 = getelementptr inbounds double, double* %56, i64 6
  %58 = load double, double* %57, align 8
  %59 = fsub double %55, %58
  store double %59, double* %9, align 8
  %60 = load double*, double** %2, align 8
  %61 = getelementptr inbounds double, double* %60, i64 3
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %2, align 8
  %64 = getelementptr inbounds double, double* %63, i64 7
  %65 = load double, double* %64, align 8
  %66 = fsub double %62, %65
  store double %66, double* %10, align 8
  %67 = load double, double* %3, align 8
  %68 = load double, double* %7, align 8
  %69 = fadd double %67, %68
  %70 = load double*, double** %2, align 8
  %71 = getelementptr inbounds double, double* %70, i64 0
  store double %69, double* %71, align 8
  %72 = load double, double* %4, align 8
  %73 = load double, double* %8, align 8
  %74 = fadd double %72, %73
  %75 = load double*, double** %2, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  store double %74, double* %76, align 8
  %77 = load double, double* %3, align 8
  %78 = load double, double* %7, align 8
  %79 = fsub double %77, %78
  %80 = load double*, double** %2, align 8
  %81 = getelementptr inbounds double, double* %80, i64 4
  store double %79, double* %81, align 8
  %82 = load double, double* %4, align 8
  %83 = load double, double* %8, align 8
  %84 = fsub double %82, %83
  %85 = load double*, double** %2, align 8
  %86 = getelementptr inbounds double, double* %85, i64 5
  store double %84, double* %86, align 8
  %87 = load double, double* %5, align 8
  %88 = load double, double* %10, align 8
  %89 = fsub double %87, %88
  %90 = load double*, double** %2, align 8
  %91 = getelementptr inbounds double, double* %90, i64 2
  store double %89, double* %91, align 8
  %92 = load double, double* %6, align 8
  %93 = load double, double* %9, align 8
  %94 = fadd double %92, %93
  %95 = load double*, double** %2, align 8
  %96 = getelementptr inbounds double, double* %95, i64 3
  store double %94, double* %96, align 8
  %97 = load double, double* %5, align 8
  %98 = load double, double* %10, align 8
  %99 = fadd double %97, %98
  %100 = load double*, double** %2, align 8
  %101 = getelementptr inbounds double, double* %100, i64 6
  store double %99, double* %101, align 8
  %102 = load double, double* %6, align 8
  %103 = load double, double* %9, align 8
  %104 = fsub double %102, %103
  %105 = load double*, double** %2, align 8
  %106 = getelementptr inbounds double, double* %105, i64 7
  store double %104, double* %106, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @atan(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @rdft(i32 %0, i32 %1, double* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double* %2, double** %8, align 8
  store i32* %3, i32** %9, align 8
  store double* %4, double** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %11, align 4
  %19 = shl i32 %18, 2
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load double*, double** %10, align 8
  call void @makewt(i32 %24, i32* %25, double* %26)
  br label %27

27:                                               ; preds = %21, %5
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %12, align 4
  %33 = shl i32 %32, 2
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 2
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load double*, double** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  call void @makect(i32 %38, i32* %39, double* %43)
  br label %44

44:                                               ; preds = %35, %27
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load double*, double** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %11, align 4
  %56 = load double*, double** %10, align 8
  call void @cftfsub(i32 %51, double* %52, i32* %54, i32 %55, double* %56)
  %57 = load i32, i32* %6, align 4
  %58 = load double*, double** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load double*, double** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  call void @rftfsub(i32 %57, double* %58, i32 %59, double* %63)
  br label %75

64:                                               ; preds = %47
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load double*, double** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %11, align 4
  %73 = load double*, double** %10, align 8
  call void @cftfsub(i32 %68, double* %69, i32* %71, i32 %72, double* %73)
  br label %74

74:                                               ; preds = %67, %64
  br label %75

75:                                               ; preds = %74, %50
  %76 = load double*, double** %8, align 8
  %77 = getelementptr inbounds double, double* %76, i64 0
  %78 = load double, double* %77, align 8
  %79 = load double*, double** %8, align 8
  %80 = getelementptr inbounds double, double* %79, i64 1
  %81 = load double, double* %80, align 8
  %82 = fsub double %78, %81
  store double %82, double* %13, align 8
  %83 = load double*, double** %8, align 8
  %84 = getelementptr inbounds double, double* %83, i64 1
  %85 = load double, double* %84, align 8
  %86 = load double*, double** %8, align 8
  %87 = getelementptr inbounds double, double* %86, i64 0
  %88 = load double, double* %87, align 8
  %89 = fadd double %88, %85
  store double %89, double* %87, align 8
  %90 = load double, double* %13, align 8
  %91 = load double*, double** %8, align 8
  %92 = getelementptr inbounds double, double* %91, i64 1
  store double %90, double* %92, align 8
  br label %139

93:                                               ; preds = %44
  %94 = load double*, double** %8, align 8
  %95 = getelementptr inbounds double, double* %94, i64 0
  %96 = load double, double* %95, align 8
  %97 = load double*, double** %8, align 8
  %98 = getelementptr inbounds double, double* %97, i64 1
  %99 = load double, double* %98, align 8
  %100 = fsub double %96, %99
  %101 = fmul double 5.000000e-01, %100
  %102 = load double*, double** %8, align 8
  %103 = getelementptr inbounds double, double* %102, i64 1
  store double %101, double* %103, align 8
  %104 = load double*, double** %8, align 8
  %105 = getelementptr inbounds double, double* %104, i64 1
  %106 = load double, double* %105, align 8
  %107 = load double*, double** %8, align 8
  %108 = getelementptr inbounds double, double* %107, i64 0
  %109 = load double, double* %108, align 8
  %110 = fsub double %109, %106
  store double %110, double* %108, align 8
  %111 = load i32, i32* %6, align 4
  %112 = icmp sgt i32 %111, 4
  br i1 %112, label %113, label %127

113:                                              ; preds = %93
  %114 = load i32, i32* %6, align 4
  %115 = load double*, double** %8, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load double*, double** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  call void @rftbsub(i32 %114, double* %115, i32 %116, double* %120)
  %121 = load i32, i32* %6, align 4
  %122 = load double*, double** %8, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %11, align 4
  %126 = load double*, double** %10, align 8
  call void @cftbsub(i32 %121, double* %122, i32* %124, i32 %125, double* %126)
  br label %138

127:                                              ; preds = %93
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = load double*, double** %8, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %11, align 4
  %136 = load double*, double** %10, align 8
  call void @cftbsub(i32 %131, double* %132, i32* %134, i32 %135, double* %136)
  br label %137

137:                                              ; preds = %130, %127
  br label %138

138:                                              ; preds = %137, %113
  br label %139

139:                                              ; preds = %138, %75
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makect(i32 %0, i32* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store double* %2, double** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %68

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = call double @atan(double 1.000000e+00) #4
  %19 = load i32, i32* %8, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  store double %21, double* %9, align 8
  %22 = load double, double* %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double %22, %24
  %26 = call double @cos(double %25) #4
  %27 = load double*, double** %6, align 8
  %28 = getelementptr inbounds double, double* %27, i64 0
  store double %26, double* %28, align 8
  %29 = load double*, double** %6, align 8
  %30 = getelementptr inbounds double, double* %29, i64 0
  %31 = load double, double* %30, align 8
  %32 = fmul double 5.000000e-01, %31
  %33 = load double*, double** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  store double %32, double* %36, align 8
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %64, %15
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load double, double* %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %42, %44
  %46 = call double @cos(double %45) #4
  %47 = fmul double 5.000000e-01, %46
  %48 = load double*, double** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %47, double* %51, align 8
  %52 = load double, double* %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sitofp i32 %53 to double
  %55 = fmul double %52, %54
  %56 = call double @sin(double %55) #4
  %57 = fmul double 5.000000e-01, %56
  %58 = load double*, double** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %58, i64 %62
  store double %57, double* %63, align 8
  br label %64

64:                                               ; preds = %41
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %37

67:                                               ; preds = %37
  br label %68

68:                                               ; preds = %67, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rftfsub(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* %13, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 2, i32* %9, align 4
  br label %26

26:                                               ; preds = %118, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %121

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load double*, double** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %37, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fsub double 5.000000e-01, %43
  store double %44, double* %14, align 8
  %45 = load double*, double** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  store double %49, double* %15, align 8
  %50 = load double*, double** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = fsub double %54, %59
  store double %60, double* %16, align 8
  %61 = load double*, double** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %61, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %67, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fadd double %66, %72
  store double %73, double* %17, align 8
  %74 = load double, double* %14, align 8
  %75 = load double, double* %16, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %15, align 8
  %78 = load double, double* %17, align 8
  %79 = fmul double %77, %78
  %80 = fsub double %76, %79
  store double %80, double* %18, align 8
  %81 = load double, double* %14, align 8
  %82 = load double, double* %17, align 8
  %83 = fmul double %81, %82
  %84 = load double, double* %15, align 8
  %85 = load double, double* %16, align 8
  %86 = fmul double %84, %85
  %87 = fadd double %83, %86
  store double %87, double* %19, align 8
  %88 = load double, double* %18, align 8
  %89 = load double*, double** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fsub double %93, %88
  store double %94, double* %92, align 8
  %95 = load double, double* %19, align 8
  %96 = load double*, double** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fsub double %101, %95
  store double %102, double* %100, align 8
  %103 = load double, double* %18, align 8
  %104 = load double*, double** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fadd double %108, %103
  store double %109, double* %107, align 8
  %110 = load double, double* %19, align 8
  %111 = load double*, double** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %111, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fsub double %116, %110
  store double %117, double* %115, align 8
  br label %118

118:                                              ; preds = %30
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %9, align 4
  br label %26

121:                                              ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rftbsub(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* %13, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 2, i32* %9, align 4
  br label %26

26:                                               ; preds = %118, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %121

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load double*, double** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %37, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fsub double 5.000000e-01, %43
  store double %44, double* %14, align 8
  %45 = load double*, double** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  store double %49, double* %15, align 8
  %50 = load double*, double** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = fsub double %54, %59
  store double %60, double* %16, align 8
  %61 = load double*, double** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %61, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %67, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fadd double %66, %72
  store double %73, double* %17, align 8
  %74 = load double, double* %14, align 8
  %75 = load double, double* %16, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %15, align 8
  %78 = load double, double* %17, align 8
  %79 = fmul double %77, %78
  %80 = fadd double %76, %79
  store double %80, double* %18, align 8
  %81 = load double, double* %14, align 8
  %82 = load double, double* %17, align 8
  %83 = fmul double %81, %82
  %84 = load double, double* %15, align 8
  %85 = load double, double* %16, align 8
  %86 = fmul double %84, %85
  %87 = fsub double %83, %86
  store double %87, double* %19, align 8
  %88 = load double, double* %18, align 8
  %89 = load double*, double** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fsub double %93, %88
  store double %94, double* %92, align 8
  %95 = load double, double* %19, align 8
  %96 = load double*, double** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fsub double %101, %95
  store double %102, double* %100, align 8
  %103 = load double, double* %18, align 8
  %104 = load double*, double** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fadd double %108, %103
  store double %109, double* %107, align 8
  %110 = load double, double* %19, align 8
  %111 = load double*, double** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %111, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fsub double %116, %110
  store double %117, double* %115, align 8
  br label %118

118:                                              ; preds = %30
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %9, align 4
  br label %26

121:                                              ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ddct(i32 %0, i32 %1, double* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double* %2, double** %8, align 8
  store i32* %3, i32** %9, align 8
  store double* %4, double** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %12, align 4
  %20 = shl i32 %19, 2
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 2
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load double*, double** %10, align 8
  call void @makewt(i32 %25, i32* %26, double* %27)
  br label %28

28:                                               ; preds = %22, %5
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load double*, double** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  call void @makect(i32 %37, i32* %38, double* %42)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %132

46:                                               ; preds = %43
  %47 = load double*, double** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %47, i64 %50
  %52 = load double, double* %51, align 8
  store double %52, double* %14, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 2
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %88, %46
  %56 = load i32, i32* %11, align 4
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load double*, double** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fsub double %63, %69
  %71 = load double*, double** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %71, i64 %74
  store double %70, double* %75, align 8
  %76 = load double*, double** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %76, i64 %79
  %81 = load double, double* %80, align 8
  %82 = load double*, double** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fadd double %86, %81
  store double %87, double* %85, align 8
  br label %88

88:                                               ; preds = %58
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %11, align 4
  br label %55

91:                                               ; preds = %55
  %92 = load double*, double** %8, align 8
  %93 = getelementptr inbounds double, double* %92, i64 0
  %94 = load double, double* %93, align 8
  %95 = load double, double* %14, align 8
  %96 = fsub double %94, %95
  %97 = load double*, double** %8, align 8
  %98 = getelementptr inbounds double, double* %97, i64 1
  store double %96, double* %98, align 8
  %99 = load double, double* %14, align 8
  %100 = load double*, double** %8, align 8
  %101 = getelementptr inbounds double, double* %100, i64 0
  %102 = load double, double* %101, align 8
  %103 = fadd double %102, %99
  store double %103, double* %101, align 8
  %104 = load i32, i32* %6, align 4
  %105 = icmp sgt i32 %104, 4
  br i1 %105, label %106, label %120

106:                                              ; preds = %91
  %107 = load i32, i32* %6, align 4
  %108 = load double*, double** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load double*, double** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %110, i64 %112
  call void @rftbsub(i32 %107, double* %108, i32 %109, double* %113)
  %114 = load i32, i32* %6, align 4
  %115 = load double*, double** %8, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %12, align 4
  %119 = load double*, double** %10, align 8
  call void @cftbsub(i32 %114, double* %115, i32* %117, i32 %118, double* %119)
  br label %131

120:                                              ; preds = %91
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = load double*, double** %8, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %12, align 4
  %129 = load double*, double** %10, align 8
  call void @cftbsub(i32 %124, double* %125, i32* %127, i32 %128, double* %129)
  br label %130

130:                                              ; preds = %123, %120
  br label %131

131:                                              ; preds = %130, %106
  br label %132

132:                                              ; preds = %131, %43
  %133 = load i32, i32* %6, align 4
  %134 = load double*, double** %8, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load double*, double** %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %136, i64 %138
  call void @dctsub(i32 %133, double* %134, i32 %135, double* %139)
  %140 = load i32, i32* %7, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %229

142:                                              ; preds = %132
  %143 = load i32, i32* %6, align 4
  %144 = icmp sgt i32 %143, 4
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = load double*, double** %8, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %12, align 4
  %151 = load double*, double** %10, align 8
  call void @cftfsub(i32 %146, double* %147, i32* %149, i32 %150, double* %151)
  %152 = load i32, i32* %6, align 4
  %153 = load double*, double** %8, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load double*, double** %10, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %155, i64 %157
  call void @rftfsub(i32 %152, double* %153, i32 %154, double* %158)
  br label %170

159:                                              ; preds = %142
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 4
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, i32* %6, align 4
  %164 = load double*, double** %8, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %12, align 4
  %168 = load double*, double** %10, align 8
  call void @cftfsub(i32 %163, double* %164, i32* %166, i32 %167, double* %168)
  br label %169

169:                                              ; preds = %162, %159
  br label %170

170:                                              ; preds = %169, %145
  %171 = load double*, double** %8, align 8
  %172 = getelementptr inbounds double, double* %171, i64 0
  %173 = load double, double* %172, align 8
  %174 = load double*, double** %8, align 8
  %175 = getelementptr inbounds double, double* %174, i64 1
  %176 = load double, double* %175, align 8
  %177 = fsub double %173, %176
  store double %177, double* %14, align 8
  %178 = load double*, double** %8, align 8
  %179 = getelementptr inbounds double, double* %178, i64 1
  %180 = load double, double* %179, align 8
  %181 = load double*, double** %8, align 8
  %182 = getelementptr inbounds double, double* %181, i64 0
  %183 = load double, double* %182, align 8
  %184 = fadd double %183, %180
  store double %184, double* %182, align 8
  store i32 2, i32* %11, align 4
  br label %185

185:                                              ; preds = %219, %170
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %222

189:                                              ; preds = %185
  %190 = load double*, double** %8, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  %195 = load double*, double** %8, align 8
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %195, i64 %198
  %200 = load double, double* %199, align 8
  %201 = fsub double %194, %200
  %202 = load double*, double** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds double, double* %202, i64 %205
  store double %201, double* %206, align 8
  %207 = load double*, double** %8, align 8
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %207, i64 %210
  %212 = load double, double* %211, align 8
  %213 = load double*, double** %8, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %213, i64 %215
  %217 = load double, double* %216, align 8
  %218 = fadd double %217, %212
  store double %218, double* %216, align 8
  br label %219

219:                                              ; preds = %189
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 2
  store i32 %221, i32* %11, align 4
  br label %185

222:                                              ; preds = %185
  %223 = load double, double* %14, align 8
  %224 = load double*, double** %8, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double, double* %224, i64 %227
  store double %223, double* %228, align 8
  br label %229

229:                                              ; preds = %222, %132
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dctsub(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %98, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load double*, double** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load double*, double** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %38, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fsub double %37, %44
  store double %45, double* %14, align 8
  %46 = load double*, double** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double*, double** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %51, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fadd double %50, %57
  store double %58, double* %15, align 8
  %59 = load double, double* %15, align 8
  %60 = load double*, double** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = fmul double %59, %64
  %66 = load double, double* %14, align 8
  %67 = load double*, double** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fmul double %66, %71
  %73 = fsub double %65, %72
  store double %73, double* %16, align 8
  %74 = load double, double* %14, align 8
  %75 = load double*, double** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fmul double %74, %79
  %81 = load double, double* %15, align 8
  %82 = load double*, double** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fmul double %81, %86
  %88 = fadd double %80, %87
  %89 = load double*, double** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  store double %88, double* %92, align 8
  %93 = load double, double* %16, align 8
  %94 = load double*, double** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  store double %93, double* %97, align 8
  br label %98

98:                                               ; preds = %26
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %22

101:                                              ; preds = %22
  %102 = load double*, double** %8, align 8
  %103 = getelementptr inbounds double, double* %102, i64 0
  %104 = load double, double* %103, align 8
  %105 = load double*, double** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %105, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fmul double %109, %104
  store double %110, double* %108, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ddst(i32 %0, i32 %1, double* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double* %2, double** %8, align 8
  store i32* %3, i32** %9, align 8
  store double* %4, double** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %12, align 4
  %20 = shl i32 %19, 2
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 2
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load double*, double** %10, align 8
  call void @makewt(i32 %25, i32* %26, double* %27)
  br label %28

28:                                               ; preds = %22, %5
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load double*, double** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  call void @makect(i32 %37, i32* %38, double* %42)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %133

46:                                               ; preds = %43
  %47 = load double*, double** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %47, i64 %50
  %52 = load double, double* %51, align 8
  store double %52, double* %14, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 2
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %89, %46
  %56 = load i32, i32* %11, align 4
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load double*, double** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fneg double %63
  %65 = load double*, double** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %65, i64 %68
  %70 = load double, double* %69, align 8
  %71 = fsub double %64, %70
  %72 = load double*, double** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %72, i64 %75
  store double %71, double* %76, align 8
  %77 = load double*, double** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %77, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load double*, double** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fsub double %87, %82
  store double %88, double* %86, align 8
  br label %89

89:                                               ; preds = %58
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 2
  store i32 %91, i32* %11, align 4
  br label %55

92:                                               ; preds = %55
  %93 = load double*, double** %8, align 8
  %94 = getelementptr inbounds double, double* %93, i64 0
  %95 = load double, double* %94, align 8
  %96 = load double, double* %14, align 8
  %97 = fadd double %95, %96
  %98 = load double*, double** %8, align 8
  %99 = getelementptr inbounds double, double* %98, i64 1
  store double %97, double* %99, align 8
  %100 = load double, double* %14, align 8
  %101 = load double*, double** %8, align 8
  %102 = getelementptr inbounds double, double* %101, i64 0
  %103 = load double, double* %102, align 8
  %104 = fsub double %103, %100
  store double %104, double* %102, align 8
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %105, 4
  br i1 %106, label %107, label %121

107:                                              ; preds = %92
  %108 = load i32, i32* %6, align 4
  %109 = load double*, double** %8, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load double*, double** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %111, i64 %113
  call void @rftbsub(i32 %108, double* %109, i32 %110, double* %114)
  %115 = load i32, i32* %6, align 4
  %116 = load double*, double** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %12, align 4
  %120 = load double*, double** %10, align 8
  call void @cftbsub(i32 %115, double* %116, i32* %118, i32 %119, double* %120)
  br label %132

121:                                              ; preds = %92
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = load double*, double** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %12, align 4
  %130 = load double*, double** %10, align 8
  call void @cftbsub(i32 %125, double* %126, i32* %128, i32 %129, double* %130)
  br label %131

131:                                              ; preds = %124, %121
  br label %132

132:                                              ; preds = %131, %107
  br label %133

133:                                              ; preds = %132, %43
  %134 = load i32, i32* %6, align 4
  %135 = load double*, double** %8, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load double*, double** %10, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %137, i64 %139
  call void @dstsub(i32 %134, double* %135, i32 %136, double* %140)
  %141 = load i32, i32* %7, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %232

143:                                              ; preds = %133
  %144 = load i32, i32* %6, align 4
  %145 = icmp sgt i32 %144, 4
  br i1 %145, label %146, label %160

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = load double*, double** %8, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %12, align 4
  %152 = load double*, double** %10, align 8
  call void @cftfsub(i32 %147, double* %148, i32* %150, i32 %151, double* %152)
  %153 = load i32, i32* %6, align 4
  %154 = load double*, double** %8, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load double*, double** %10, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  call void @rftfsub(i32 %153, double* %154, i32 %155, double* %159)
  br label %171

160:                                              ; preds = %143
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 4
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = load double*, double** %8, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %12, align 4
  %169 = load double*, double** %10, align 8
  call void @cftfsub(i32 %164, double* %165, i32* %167, i32 %168, double* %169)
  br label %170

170:                                              ; preds = %163, %160
  br label %171

171:                                              ; preds = %170, %146
  %172 = load double*, double** %8, align 8
  %173 = getelementptr inbounds double, double* %172, i64 0
  %174 = load double, double* %173, align 8
  %175 = load double*, double** %8, align 8
  %176 = getelementptr inbounds double, double* %175, i64 1
  %177 = load double, double* %176, align 8
  %178 = fsub double %174, %177
  store double %178, double* %14, align 8
  %179 = load double*, double** %8, align 8
  %180 = getelementptr inbounds double, double* %179, i64 1
  %181 = load double, double* %180, align 8
  %182 = load double*, double** %8, align 8
  %183 = getelementptr inbounds double, double* %182, i64 0
  %184 = load double, double* %183, align 8
  %185 = fadd double %184, %181
  store double %185, double* %183, align 8
  store i32 2, i32* %11, align 4
  br label %186

186:                                              ; preds = %221, %171
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %224

190:                                              ; preds = %186
  %191 = load double*, double** %8, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %191, i64 %193
  %195 = load double, double* %194, align 8
  %196 = fneg double %195
  %197 = load double*, double** %8, align 8
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %197, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fsub double %196, %202
  %204 = load double*, double** %8, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %204, i64 %207
  store double %203, double* %208, align 8
  %209 = load double*, double** %8, align 8
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %209, i64 %212
  %214 = load double, double* %213, align 8
  %215 = load double*, double** %8, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %215, i64 %217
  %219 = load double, double* %218, align 8
  %220 = fsub double %219, %214
  store double %220, double* %218, align 8
  br label %221

221:                                              ; preds = %190
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %11, align 4
  br label %186

224:                                              ; preds = %186
  %225 = load double, double* %14, align 8
  %226 = fneg double %225
  %227 = load double*, double** %8, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, double* %227, i64 %230
  store double %226, double* %231, align 8
  br label %232

232:                                              ; preds = %224, %133
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dstsub(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %98, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load double*, double** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load double*, double** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %38, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fsub double %37, %44
  store double %45, double* %14, align 8
  %46 = load double*, double** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double*, double** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %51, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fadd double %50, %57
  store double %58, double* %15, align 8
  %59 = load double, double* %15, align 8
  %60 = load double*, double** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = fmul double %59, %64
  %66 = load double, double* %14, align 8
  %67 = load double*, double** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fmul double %66, %71
  %73 = fsub double %65, %72
  store double %73, double* %16, align 8
  %74 = load double, double* %14, align 8
  %75 = load double*, double** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fmul double %74, %79
  %81 = load double, double* %15, align 8
  %82 = load double*, double** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fmul double %81, %86
  %88 = fadd double %80, %87
  %89 = load double*, double** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  store double %88, double* %92, align 8
  %93 = load double, double* %16, align 8
  %94 = load double*, double** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  store double %93, double* %97, align 8
  br label %98

98:                                               ; preds = %26
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %22

101:                                              ; preds = %22
  %102 = load double*, double** %8, align 8
  %103 = getelementptr inbounds double, double* %102, i64 0
  %104 = load double, double* %103, align 8
  %105 = load double*, double** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %105, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fmul double %109, %104
  store double %110, double* %108, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dfct(i32 %0, double* %1, double* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store i32* %3, i32** %9, align 8
  store double* %4, double** %10, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %16, align 4
  %27 = shl i32 %26, 3
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load double*, double** %10, align 8
  call void @makewt(i32 %32, i32* %33, double* %34)
  br label %35

35:                                               ; preds = %29, %5
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %17, align 4
  %41 = shl i32 %40, 1
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load double*, double** %10, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  call void @makect(i32 %46, i32* %47, double* %51)
  br label %52

52:                                               ; preds = %43, %35
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %14, align 4
  %55 = load double*, double** %7, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  store double %59, double* %21, align 8
  %60 = load double*, double** %7, align 8
  %61 = getelementptr inbounds double, double* %60, i64 0
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fadd double %62, %67
  store double %68, double* %19, align 8
  %69 = load double*, double** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = load double*, double** %7, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  %76 = load double, double* %75, align 8
  %77 = fsub double %76, %73
  store double %77, double* %75, align 8
  %78 = load double, double* %19, align 8
  %79 = load double, double* %21, align 8
  %80 = fsub double %78, %79
  %81 = load double*, double** %8, align 8
  %82 = getelementptr inbounds double, double* %81, i64 0
  store double %80, double* %82, align 8
  %83 = load double, double* %19, align 8
  %84 = load double, double* %21, align 8
  %85 = fadd double %83, %84
  %86 = load double*, double** %8, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  store double %85, double* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 2
  br i1 %91, label %92, label %522

92:                                               ; preds = %52
  %93 = load i32, i32* %14, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %15, align 4
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %179, %92
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %182

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = load double*, double** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %103, i64 %105
  %107 = load double, double* %106, align 8
  %108 = load double*, double** %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %108, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fsub double %107, %114
  store double %115, double* %18, align 8
  %116 = load double*, double** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load double*, double** %7, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %121, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fadd double %120, %127
  store double %128, double* %19, align 8
  %129 = load double*, double** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  %133 = load double, double* %132, align 8
  %134 = load double*, double** %7, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %134, i64 %138
  %140 = load double, double* %139, align 8
  %141 = fsub double %133, %140
  store double %141, double* %20, align 8
  %142 = load double*, double** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %142, i64 %144
  %146 = load double, double* %145, align 8
  %147 = load double*, double** %7, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %147, i64 %151
  %153 = load double, double* %152, align 8
  %154 = fadd double %146, %153
  store double %154, double* %21, align 8
  %155 = load double, double* %18, align 8
  %156 = load double*, double** %7, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  store double %155, double* %159, align 8
  %160 = load double, double* %20, align 8
  %161 = load double*, double** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  store double %160, double* %164, align 8
  %165 = load double, double* %19, align 8
  %166 = load double, double* %21, align 8
  %167 = fsub double %165, %166
  %168 = load double*, double** %8, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %168, i64 %170
  store double %167, double* %171, align 8
  %172 = load double, double* %19, align 8
  %173 = load double, double* %21, align 8
  %174 = fadd double %172, %173
  %175 = load double*, double** %8, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, double* %175, i64 %177
  store double %174, double* %178, align 8
  br label %179

179:                                              ; preds = %99
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %95

182:                                              ; preds = %95
  %183 = load double*, double** %7, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %183, i64 %185
  %187 = load double, double* %186, align 8
  %188 = load double*, double** %7, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %15, align 4
  %191 = sub nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %188, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fadd double %187, %194
  %196 = load double*, double** %8, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %196, i64 %198
  store double %195, double* %199, align 8
  %200 = load double*, double** %7, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %15, align 4
  %203 = sub nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %200, i64 %204
  %206 = load double, double* %205, align 8
  %207 = load double*, double** %7, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double, double* %207, i64 %209
  %211 = load double, double* %210, align 8
  %212 = fsub double %211, %206
  store double %212, double* %210, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load double*, double** %7, align 8
  %215 = load i32, i32* %17, align 4
  %216 = load double*, double** %10, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds double, double* %216, i64 %218
  call void @dctsub(i32 %213, double* %214, i32 %215, double* %219)
  %220 = load i32, i32* %14, align 4
  %221 = icmp sgt i32 %220, 4
  br i1 %221, label %222, label %236

222:                                              ; preds = %182
  %223 = load i32, i32* %14, align 4
  %224 = load double*, double** %7, align 8
  %225 = load i32*, i32** %9, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %16, align 4
  %228 = load double*, double** %10, align 8
  call void @cftfsub(i32 %223, double* %224, i32* %226, i32 %227, double* %228)
  %229 = load i32, i32* %14, align 4
  %230 = load double*, double** %7, align 8
  %231 = load i32, i32* %17, align 4
  %232 = load double*, double** %10, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %232, i64 %234
  call void @rftfsub(i32 %229, double* %230, i32 %231, double* %235)
  br label %247

236:                                              ; preds = %182
  %237 = load i32, i32* %14, align 4
  %238 = icmp eq i32 %237, 4
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load i32, i32* %14, align 4
  %241 = load double*, double** %7, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %16, align 4
  %245 = load double*, double** %10, align 8
  call void @cftfsub(i32 %240, double* %241, i32* %243, i32 %244, double* %245)
  br label %246

246:                                              ; preds = %239, %236
  br label %247

247:                                              ; preds = %246, %222
  %248 = load double*, double** %7, align 8
  %249 = getelementptr inbounds double, double* %248, i64 0
  %250 = load double, double* %249, align 8
  %251 = load double*, double** %7, align 8
  %252 = getelementptr inbounds double, double* %251, i64 1
  %253 = load double, double* %252, align 8
  %254 = fsub double %250, %253
  %255 = load double*, double** %7, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double, double* %255, i64 %258
  store double %254, double* %259, align 8
  %260 = load double*, double** %7, align 8
  %261 = getelementptr inbounds double, double* %260, i64 0
  %262 = load double, double* %261, align 8
  %263 = load double*, double** %7, align 8
  %264 = getelementptr inbounds double, double* %263, i64 1
  %265 = load double, double* %264, align 8
  %266 = fadd double %262, %265
  %267 = load double*, double** %7, align 8
  %268 = getelementptr inbounds double, double* %267, i64 1
  store double %266, double* %268, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sub nsw i32 %269, 2
  store i32 %270, i32* %11, align 4
  br label %271

271:                                              ; preds = %311, %247
  %272 = load i32, i32* %11, align 4
  %273 = icmp sge i32 %272, 2
  br i1 %273, label %274, label %314

274:                                              ; preds = %271
  %275 = load double*, double** %7, align 8
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = load double, double* %278, align 8
  %280 = load double*, double** %7, align 8
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double, double* %280, i64 %283
  %285 = load double, double* %284, align 8
  %286 = fadd double %279, %285
  %287 = load double*, double** %7, align 8
  %288 = load i32, i32* %11, align 4
  %289 = mul nsw i32 2, %288
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %287, i64 %291
  store double %286, double* %292, align 8
  %293 = load double*, double** %7, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds double, double* %293, i64 %295
  %297 = load double, double* %296, align 8
  %298 = load double*, double** %7, align 8
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds double, double* %298, i64 %301
  %303 = load double, double* %302, align 8
  %304 = fsub double %297, %303
  %305 = load double*, double** %7, align 8
  %306 = load i32, i32* %11, align 4
  %307 = mul nsw i32 2, %306
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double, double* %305, i64 %309
  store double %304, double* %310, align 8
  br label %311

311:                                              ; preds = %274
  %312 = load i32, i32* %11, align 4
  %313 = sub nsw i32 %312, 2
  store i32 %313, i32* %11, align 4
  br label %271

314:                                              ; preds = %271
  store i32 2, i32* %13, align 4
  %315 = load i32, i32* %15, align 4
  store i32 %315, i32* %14, align 4
  br label %316

316:                                              ; preds = %481, %314
  %317 = load i32, i32* %14, align 4
  %318 = icmp sge i32 %317, 2
  br i1 %318, label %319, label %494

319:                                              ; preds = %316
  %320 = load i32, i32* %14, align 4
  %321 = load double*, double** %8, align 8
  %322 = load i32, i32* %17, align 4
  %323 = load double*, double** %10, align 8
  %324 = load i32, i32* %16, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds double, double* %323, i64 %325
  call void @dctsub(i32 %320, double* %321, i32 %322, double* %326)
  %327 = load i32, i32* %14, align 4
  %328 = icmp sgt i32 %327, 4
  br i1 %328, label %329, label %343

329:                                              ; preds = %319
  %330 = load i32, i32* %14, align 4
  %331 = load double*, double** %8, align 8
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %16, align 4
  %335 = load double*, double** %10, align 8
  call void @cftfsub(i32 %330, double* %331, i32* %333, i32 %334, double* %335)
  %336 = load i32, i32* %14, align 4
  %337 = load double*, double** %8, align 8
  %338 = load i32, i32* %17, align 4
  %339 = load double*, double** %10, align 8
  %340 = load i32, i32* %16, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double, double* %339, i64 %341
  call void @rftfsub(i32 %336, double* %337, i32 %338, double* %342)
  br label %354

343:                                              ; preds = %319
  %344 = load i32, i32* %14, align 4
  %345 = icmp eq i32 %344, 4
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  %347 = load i32, i32* %14, align 4
  %348 = load double*, double** %8, align 8
  %349 = load i32*, i32** %9, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 2
  %351 = load i32, i32* %16, align 4
  %352 = load double*, double** %10, align 8
  call void @cftfsub(i32 %347, double* %348, i32* %350, i32 %351, double* %352)
  br label %353

353:                                              ; preds = %346, %343
  br label %354

354:                                              ; preds = %353, %329
  %355 = load double*, double** %8, align 8
  %356 = getelementptr inbounds double, double* %355, i64 0
  %357 = load double, double* %356, align 8
  %358 = load double*, double** %8, align 8
  %359 = getelementptr inbounds double, double* %358, i64 1
  %360 = load double, double* %359, align 8
  %361 = fsub double %357, %360
  %362 = load double*, double** %7, align 8
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* %13, align 4
  %365 = sub nsw i32 %363, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, double* %362, i64 %366
  store double %361, double* %367, align 8
  %368 = load double*, double** %8, align 8
  %369 = getelementptr inbounds double, double* %368, i64 0
  %370 = load double, double* %369, align 8
  %371 = load double*, double** %8, align 8
  %372 = getelementptr inbounds double, double* %371, i64 1
  %373 = load double, double* %372, align 8
  %374 = fadd double %370, %373
  %375 = load double*, double** %7, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds double, double* %375, i64 %377
  store double %374, double* %378, align 8
  store i32 0, i32* %12, align 4
  store i32 2, i32* %11, align 4
  br label %379

379:                                              ; preds = %424, %354
  %380 = load i32, i32* %11, align 4
  %381 = load i32, i32* %14, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %427

383:                                              ; preds = %379
  %384 = load i32, i32* %13, align 4
  %385 = shl i32 %384, 2
  %386 = load i32, i32* %12, align 4
  %387 = add nsw i32 %386, %385
  store i32 %387, i32* %12, align 4
  %388 = load double*, double** %8, align 8
  %389 = load i32, i32* %11, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds double, double* %388, i64 %390
  %392 = load double, double* %391, align 8
  %393 = load double*, double** %8, align 8
  %394 = load i32, i32* %11, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, double* %393, i64 %396
  %398 = load double, double* %397, align 8
  %399 = fsub double %392, %398
  %400 = load double*, double** %7, align 8
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %13, align 4
  %403 = sub nsw i32 %401, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds double, double* %400, i64 %404
  store double %399, double* %405, align 8
  %406 = load double*, double** %8, align 8
  %407 = load i32, i32* %11, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds double, double* %406, i64 %408
  %410 = load double, double* %409, align 8
  %411 = load double*, double** %8, align 8
  %412 = load i32, i32* %11, align 4
  %413 = add nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds double, double* %411, i64 %414
  %416 = load double, double* %415, align 8
  %417 = fadd double %410, %416
  %418 = load double*, double** %7, align 8
  %419 = load i32, i32* %12, align 4
  %420 = load i32, i32* %13, align 4
  %421 = add nsw i32 %419, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds double, double* %418, i64 %422
  store double %417, double* %423, align 8
  br label %424

424:                                              ; preds = %383
  %425 = load i32, i32* %11, align 4
  %426 = add nsw i32 %425, 2
  store i32 %426, i32* %11, align 4
  br label %379

427:                                              ; preds = %379
  %428 = load i32, i32* %13, align 4
  %429 = shl i32 %428, 1
  store i32 %429, i32* %13, align 4
  %430 = load i32, i32* %14, align 4
  %431 = ashr i32 %430, 1
  store i32 %431, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %432

432:                                              ; preds = %478, %427
  %433 = load i32, i32* %11, align 4
  %434 = load i32, i32* %15, align 4
  %435 = icmp slt i32 %433, %434
  br i1 %435, label %436, label %481

436:                                              ; preds = %432
  %437 = load i32, i32* %14, align 4
  %438 = load i32, i32* %11, align 4
  %439 = sub nsw i32 %437, %438
  store i32 %439, i32* %12, align 4
  %440 = load double*, double** %8, align 8
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* %12, align 4
  %443 = add nsw i32 %441, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds double, double* %440, i64 %444
  %446 = load double, double* %445, align 8
  %447 = load double*, double** %8, align 8
  %448 = load i32, i32* %14, align 4
  %449 = load i32, i32* %11, align 4
  %450 = add nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds double, double* %447, i64 %451
  %453 = load double, double* %452, align 8
  %454 = fsub double %446, %453
  %455 = load double*, double** %8, align 8
  %456 = load i32, i32* %11, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds double, double* %455, i64 %457
  store double %454, double* %458, align 8
  %459 = load double*, double** %8, align 8
  %460 = load i32, i32* %14, align 4
  %461 = load i32, i32* %12, align 4
  %462 = add nsw i32 %460, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds double, double* %459, i64 %463
  %465 = load double, double* %464, align 8
  %466 = load double*, double** %8, align 8
  %467 = load i32, i32* %14, align 4
  %468 = load i32, i32* %11, align 4
  %469 = add nsw i32 %467, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds double, double* %466, i64 %470
  %472 = load double, double* %471, align 8
  %473 = fadd double %465, %472
  %474 = load double*, double** %8, align 8
  %475 = load i32, i32* %12, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds double, double* %474, i64 %476
  store double %473, double* %477, align 8
  br label %478

478:                                              ; preds = %436
  %479 = load i32, i32* %11, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %11, align 4
  br label %432

481:                                              ; preds = %432
  %482 = load double*, double** %8, align 8
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* %15, align 4
  %485 = add nsw i32 %483, %484
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds double, double* %482, i64 %486
  %488 = load double, double* %487, align 8
  %489 = load double*, double** %8, align 8
  %490 = load i32, i32* %15, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds double, double* %489, i64 %491
  store double %488, double* %492, align 8
  %493 = load i32, i32* %15, align 4
  store i32 %493, i32* %14, align 4
  br label %316

494:                                              ; preds = %316
  %495 = load double*, double** %8, align 8
  %496 = getelementptr inbounds double, double* %495, i64 0
  %497 = load double, double* %496, align 8
  %498 = load double*, double** %7, align 8
  %499 = load i32, i32* %13, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds double, double* %498, i64 %500
  store double %497, double* %501, align 8
  %502 = load double*, double** %8, align 8
  %503 = getelementptr inbounds double, double* %502, i64 2
  %504 = load double, double* %503, align 8
  %505 = load double*, double** %8, align 8
  %506 = getelementptr inbounds double, double* %505, i64 1
  %507 = load double, double* %506, align 8
  %508 = fsub double %504, %507
  %509 = load double*, double** %7, align 8
  %510 = load i32, i32* %6, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds double, double* %509, i64 %511
  store double %508, double* %512, align 8
  %513 = load double*, double** %8, align 8
  %514 = getelementptr inbounds double, double* %513, i64 2
  %515 = load double, double* %514, align 8
  %516 = load double*, double** %8, align 8
  %517 = getelementptr inbounds double, double* %516, i64 1
  %518 = load double, double* %517, align 8
  %519 = fadd double %515, %518
  %520 = load double*, double** %7, align 8
  %521 = getelementptr inbounds double, double* %520, i64 0
  store double %519, double* %521, align 8
  br label %538

522:                                              ; preds = %52
  %523 = load double*, double** %7, align 8
  %524 = getelementptr inbounds double, double* %523, i64 0
  %525 = load double, double* %524, align 8
  %526 = load double*, double** %7, align 8
  %527 = getelementptr inbounds double, double* %526, i64 1
  store double %525, double* %527, align 8
  %528 = load double*, double** %8, align 8
  %529 = getelementptr inbounds double, double* %528, i64 0
  %530 = load double, double* %529, align 8
  %531 = load double*, double** %7, align 8
  %532 = getelementptr inbounds double, double* %531, i64 2
  store double %530, double* %532, align 8
  %533 = load double*, double** %8, align 8
  %534 = getelementptr inbounds double, double* %533, i64 1
  %535 = load double, double* %534, align 8
  %536 = load double*, double** %7, align 8
  %537 = getelementptr inbounds double, double* %536, i64 0
  store double %535, double* %537, align 8
  br label %538

538:                                              ; preds = %522, %494
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dfst(i32 %0, double* %1, double* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store i32* %3, i32** %9, align 8
  store double* %4, double** %10, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %16, align 4
  %27 = shl i32 %26, 3
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load double*, double** %10, align 8
  call void @makewt(i32 %32, i32* %33, double* %34)
  br label %35

35:                                               ; preds = %29, %5
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %17, align 4
  %41 = shl i32 %40, 1
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load double*, double** %10, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  call void @makect(i32 %46, i32* %47, double* %51)
  br label %52

52:                                               ; preds = %43, %35
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %472

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %15, align 4
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %144, %55
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %147

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load double*, double** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  %73 = load double*, double** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %73, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fadd double %72, %79
  store double %80, double* %18, align 8
  %81 = load double*, double** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load double*, double** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %86, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fsub double %85, %92
  store double %93, double* %19, align 8
  %94 = load double*, double** %7, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = load double*, double** %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %99, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fadd double %98, %105
  store double %106, double* %20, align 8
  %107 = load double*, double** %7, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = load double*, double** %7, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %112, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fsub double %111, %118
  store double %119, double* %21, align 8
  %120 = load double, double* %18, align 8
  %121 = load double*, double** %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  store double %120, double* %124, align 8
  %125 = load double, double* %20, align 8
  %126 = load double*, double** %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  store double %125, double* %129, align 8
  %130 = load double, double* %19, align 8
  %131 = load double, double* %21, align 8
  %132 = fadd double %130, %131
  %133 = load double*, double** %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %133, i64 %135
  store double %132, double* %136, align 8
  %137 = load double, double* %19, align 8
  %138 = load double, double* %21, align 8
  %139 = fsub double %137, %138
  %140 = load double*, double** %8, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  store double %139, double* %143, align 8
  br label %144

144:                                              ; preds = %64
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %60

147:                                              ; preds = %60
  %148 = load double*, double** %7, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  %152 = load double, double* %151, align 8
  %153 = load double*, double** %7, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %153, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fsub double %152, %159
  %161 = load double*, double** %8, align 8
  %162 = getelementptr inbounds double, double* %161, i64 0
  store double %160, double* %162, align 8
  %163 = load double*, double** %7, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %15, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %163, i64 %167
  %169 = load double, double* %168, align 8
  %170 = load double*, double** %7, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %170, i64 %172
  %174 = load double, double* %173, align 8
  %175 = fadd double %174, %169
  store double %175, double* %173, align 8
  %176 = load double*, double** %7, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %176, i64 %178
  %180 = load double, double* %179, align 8
  %181 = load double*, double** %7, align 8
  %182 = getelementptr inbounds double, double* %181, i64 0
  store double %180, double* %182, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load double*, double** %7, align 8
  %185 = load i32, i32* %17, align 4
  %186 = load double*, double** %10, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, double* %186, i64 %188
  call void @dstsub(i32 %183, double* %184, i32 %185, double* %189)
  %190 = load i32, i32* %14, align 4
  %191 = icmp sgt i32 %190, 4
  br i1 %191, label %192, label %206

192:                                              ; preds = %147
  %193 = load i32, i32* %14, align 4
  %194 = load double*, double** %7, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %16, align 4
  %198 = load double*, double** %10, align 8
  call void @cftfsub(i32 %193, double* %194, i32* %196, i32 %197, double* %198)
  %199 = load i32, i32* %14, align 4
  %200 = load double*, double** %7, align 8
  %201 = load i32, i32* %17, align 4
  %202 = load double*, double** %10, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %202, i64 %204
  call void @rftfsub(i32 %199, double* %200, i32 %201, double* %205)
  br label %217

206:                                              ; preds = %147
  %207 = load i32, i32* %14, align 4
  %208 = icmp eq i32 %207, 4
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load i32, i32* %14, align 4
  %211 = load double*, double** %7, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = load i32, i32* %16, align 4
  %215 = load double*, double** %10, align 8
  call void @cftfsub(i32 %210, double* %211, i32* %213, i32 %214, double* %215)
  br label %216

216:                                              ; preds = %209, %206
  br label %217

217:                                              ; preds = %216, %192
  %218 = load double*, double** %7, align 8
  %219 = getelementptr inbounds double, double* %218, i64 1
  %220 = load double, double* %219, align 8
  %221 = load double*, double** %7, align 8
  %222 = getelementptr inbounds double, double* %221, i64 0
  %223 = load double, double* %222, align 8
  %224 = fsub double %220, %223
  %225 = load double*, double** %7, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %225, i64 %228
  store double %224, double* %229, align 8
  %230 = load double*, double** %7, align 8
  %231 = getelementptr inbounds double, double* %230, i64 0
  %232 = load double, double* %231, align 8
  %233 = load double*, double** %7, align 8
  %234 = getelementptr inbounds double, double* %233, i64 1
  %235 = load double, double* %234, align 8
  %236 = fadd double %232, %235
  %237 = load double*, double** %7, align 8
  %238 = getelementptr inbounds double, double* %237, i64 1
  store double %236, double* %238, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sub nsw i32 %239, 2
  store i32 %240, i32* %11, align 4
  br label %241

241:                                              ; preds = %282, %217
  %242 = load i32, i32* %11, align 4
  %243 = icmp sge i32 %242, 2
  br i1 %243, label %244, label %285

244:                                              ; preds = %241
  %245 = load double*, double** %7, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, double* %245, i64 %247
  %249 = load double, double* %248, align 8
  %250 = load double*, double** %7, align 8
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %250, i64 %253
  %255 = load double, double* %254, align 8
  %256 = fsub double %249, %255
  %257 = load double*, double** %7, align 8
  %258 = load i32, i32* %11, align 4
  %259 = mul nsw i32 2, %258
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %257, i64 %261
  store double %256, double* %262, align 8
  %263 = load double*, double** %7, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, double* %263, i64 %265
  %267 = load double, double* %266, align 8
  %268 = fneg double %267
  %269 = load double*, double** %7, align 8
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, double* %269, i64 %272
  %274 = load double, double* %273, align 8
  %275 = fsub double %268, %274
  %276 = load double*, double** %7, align 8
  %277 = load i32, i32* %11, align 4
  %278 = mul nsw i32 2, %277
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds double, double* %276, i64 %280
  store double %275, double* %281, align 8
  br label %282

282:                                              ; preds = %244
  %283 = load i32, i32* %11, align 4
  %284 = sub nsw i32 %283, 2
  store i32 %284, i32* %11, align 4
  br label %241

285:                                              ; preds = %241
  store i32 2, i32* %13, align 4
  %286 = load i32, i32* %15, align 4
  store i32 %286, i32* %14, align 4
  br label %287

287:                                              ; preds = %453, %285
  %288 = load i32, i32* %14, align 4
  %289 = icmp sge i32 %288, 2
  br i1 %289, label %290, label %464

290:                                              ; preds = %287
  %291 = load i32, i32* %14, align 4
  %292 = load double*, double** %8, align 8
  %293 = load i32, i32* %17, align 4
  %294 = load double*, double** %10, align 8
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds double, double* %294, i64 %296
  call void @dstsub(i32 %291, double* %292, i32 %293, double* %297)
  %298 = load i32, i32* %14, align 4
  %299 = icmp sgt i32 %298, 4
  br i1 %299, label %300, label %314

300:                                              ; preds = %290
  %301 = load i32, i32* %14, align 4
  %302 = load double*, double** %8, align 8
  %303 = load i32*, i32** %9, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  %305 = load i32, i32* %16, align 4
  %306 = load double*, double** %10, align 8
  call void @cftfsub(i32 %301, double* %302, i32* %304, i32 %305, double* %306)
  %307 = load i32, i32* %14, align 4
  %308 = load double*, double** %8, align 8
  %309 = load i32, i32* %17, align 4
  %310 = load double*, double** %10, align 8
  %311 = load i32, i32* %16, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double, double* %310, i64 %312
  call void @rftfsub(i32 %307, double* %308, i32 %309, double* %313)
  br label %325

314:                                              ; preds = %290
  %315 = load i32, i32* %14, align 4
  %316 = icmp eq i32 %315, 4
  br i1 %316, label %317, label %324

317:                                              ; preds = %314
  %318 = load i32, i32* %14, align 4
  %319 = load double*, double** %8, align 8
  %320 = load i32*, i32** %9, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load i32, i32* %16, align 4
  %323 = load double*, double** %10, align 8
  call void @cftfsub(i32 %318, double* %319, i32* %321, i32 %322, double* %323)
  br label %324

324:                                              ; preds = %317, %314
  br label %325

325:                                              ; preds = %324, %300
  %326 = load double*, double** %8, align 8
  %327 = getelementptr inbounds double, double* %326, i64 1
  %328 = load double, double* %327, align 8
  %329 = load double*, double** %8, align 8
  %330 = getelementptr inbounds double, double* %329, i64 0
  %331 = load double, double* %330, align 8
  %332 = fsub double %328, %331
  %333 = load double*, double** %7, align 8
  %334 = load i32, i32* %6, align 4
  %335 = load i32, i32* %13, align 4
  %336 = sub nsw i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds double, double* %333, i64 %337
  store double %332, double* %338, align 8
  %339 = load double*, double** %8, align 8
  %340 = getelementptr inbounds double, double* %339, i64 0
  %341 = load double, double* %340, align 8
  %342 = load double*, double** %8, align 8
  %343 = getelementptr inbounds double, double* %342, i64 1
  %344 = load double, double* %343, align 8
  %345 = fadd double %341, %344
  %346 = load double*, double** %7, align 8
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds double, double* %346, i64 %348
  store double %345, double* %349, align 8
  store i32 0, i32* %12, align 4
  store i32 2, i32* %11, align 4
  br label %350

350:                                              ; preds = %396, %325
  %351 = load i32, i32* %11, align 4
  %352 = load i32, i32* %14, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %399

354:                                              ; preds = %350
  %355 = load i32, i32* %13, align 4
  %356 = shl i32 %355, 2
  %357 = load i32, i32* %12, align 4
  %358 = add nsw i32 %357, %356
  store i32 %358, i32* %12, align 4
  %359 = load double*, double** %8, align 8
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds double, double* %359, i64 %361
  %363 = load double, double* %362, align 8
  %364 = fneg double %363
  %365 = load double*, double** %8, align 8
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds double, double* %365, i64 %368
  %370 = load double, double* %369, align 8
  %371 = fsub double %364, %370
  %372 = load double*, double** %7, align 8
  %373 = load i32, i32* %12, align 4
  %374 = load i32, i32* %13, align 4
  %375 = sub nsw i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds double, double* %372, i64 %376
  store double %371, double* %377, align 8
  %378 = load double*, double** %8, align 8
  %379 = load i32, i32* %11, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double, double* %378, i64 %380
  %382 = load double, double* %381, align 8
  %383 = load double*, double** %8, align 8
  %384 = load i32, i32* %11, align 4
  %385 = add nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %383, i64 %386
  %388 = load double, double* %387, align 8
  %389 = fsub double %382, %388
  %390 = load double*, double** %7, align 8
  %391 = load i32, i32* %12, align 4
  %392 = load i32, i32* %13, align 4
  %393 = add nsw i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds double, double* %390, i64 %394
  store double %389, double* %395, align 8
  br label %396

396:                                              ; preds = %354
  %397 = load i32, i32* %11, align 4
  %398 = add nsw i32 %397, 2
  store i32 %398, i32* %11, align 4
  br label %350

399:                                              ; preds = %350
  %400 = load i32, i32* %13, align 4
  %401 = shl i32 %400, 1
  store i32 %401, i32* %13, align 4
  %402 = load i32, i32* %14, align 4
  %403 = ashr i32 %402, 1
  store i32 %403, i32* %15, align 4
  store i32 1, i32* %11, align 4
  br label %404

404:                                              ; preds = %450, %399
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* %15, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %453

408:                                              ; preds = %404
  %409 = load i32, i32* %14, align 4
  %410 = load i32, i32* %11, align 4
  %411 = sub nsw i32 %409, %410
  store i32 %411, i32* %12, align 4
  %412 = load double*, double** %8, align 8
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %413, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds double, double* %412, i64 %416
  %418 = load double, double* %417, align 8
  %419 = load double*, double** %8, align 8
  %420 = load i32, i32* %14, align 4
  %421 = load i32, i32* %11, align 4
  %422 = add nsw i32 %420, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds double, double* %419, i64 %423
  %425 = load double, double* %424, align 8
  %426 = fadd double %418, %425
  %427 = load double*, double** %8, align 8
  %428 = load i32, i32* %11, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds double, double* %427, i64 %429
  store double %426, double* %430, align 8
  %431 = load double*, double** %8, align 8
  %432 = load i32, i32* %14, align 4
  %433 = load i32, i32* %12, align 4
  %434 = add nsw i32 %432, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds double, double* %431, i64 %435
  %437 = load double, double* %436, align 8
  %438 = load double*, double** %8, align 8
  %439 = load i32, i32* %14, align 4
  %440 = load i32, i32* %11, align 4
  %441 = add nsw i32 %439, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds double, double* %438, i64 %442
  %444 = load double, double* %443, align 8
  %445 = fsub double %437, %444
  %446 = load double*, double** %8, align 8
  %447 = load i32, i32* %12, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds double, double* %446, i64 %448
  store double %445, double* %449, align 8
  br label %450

450:                                              ; preds = %408
  %451 = load i32, i32* %11, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %11, align 4
  br label %404

453:                                              ; preds = %404
  %454 = load double*, double** %8, align 8
  %455 = load i32, i32* %14, align 4
  %456 = load i32, i32* %15, align 4
  %457 = add nsw i32 %455, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds double, double* %454, i64 %458
  %460 = load double, double* %459, align 8
  %461 = load double*, double** %8, align 8
  %462 = getelementptr inbounds double, double* %461, i64 0
  store double %460, double* %462, align 8
  %463 = load i32, i32* %15, align 4
  store i32 %463, i32* %14, align 4
  br label %287

464:                                              ; preds = %287
  %465 = load double*, double** %8, align 8
  %466 = getelementptr inbounds double, double* %465, i64 0
  %467 = load double, double* %466, align 8
  %468 = load double*, double** %7, align 8
  %469 = load i32, i32* %13, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds double, double* %468, i64 %470
  store double %467, double* %471, align 8
  br label %472

472:                                              ; preds = %464, %52
  %473 = load double*, double** %7, align 8
  %474 = getelementptr inbounds double, double* %473, i64 0
  store double 0.000000e+00, double* %474, align 8
  ret void
}

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
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  call void @exit(i32 1) #5
  unreachable

35:                                               ; preds = %2
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call %struct._IO_FILE* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %40, %struct._IO_FILE** %27, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %27, align 8
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

46:                                               ; preds = %35
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %27, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %6)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %56, %46
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %50

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 1, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sitofp i32 %64 to double
  %66 = fmul double 5.000000e-01, %65
  %67 = call double @sqrt(double %66) #4
  %68 = fptosi double %67 to i32
  %69 = add nsw i32 3, %68
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = call noalias i8* @malloc(i64 %71) #4
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** %21, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = call noalias i8* @malloc(i64 %77) #4
  %79 = bitcast i8* %78 to double*
  store double* %79, double** %25, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = call noalias i8* @malloc(i64 %83) #4
  %85 = bitcast i8* %84 to i32*
  store i32* %85, i32** %15, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = call noalias i8* @malloc(i64 %89) #4
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %16, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = call noalias i8* @malloc(i64 %95) #4
  %97 = bitcast i8* %96 to i32*
  store i32* %97, i32** %17, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = call noalias i8* @malloc(i64 %101) #4
  %103 = bitcast i8* %102 to i32*
  store i32* %103, i32** %18, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = call noalias i8* @malloc(i64 %107) #4
  %109 = bitcast i8* %108 to i32*
  store i32* %109, i32** %19, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = call noalias i8* @malloc(i64 %113) #4
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %20, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 8
  %120 = call noalias i8* @malloc(i64 %119) #4
  %121 = bitcast i8* %120 to double*
  store double* %121, double** %22, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 8
  %126 = call noalias i8* @malloc(i64 %125) #4
  %127 = bitcast i8* %126 to double*
  store double* %127, double** %23, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = call noalias i8* @malloc(i64 %131) #4
  %133 = bitcast i8* %132 to double*
  store double* %133, double** %24, align 8
  %134 = load double*, double** %24, align 8
  %135 = icmp eq double* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %59
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

139:                                              ; preds = %59
  %140 = load i32*, i32** %21, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 0, i32* %141, align 4
  store i32 1, i32* %9, align 4
  store i32 10, i32* %8, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load double*, double** %22, align 8
  %146 = load i32*, i32** %21, align 8
  %147 = load double*, double** %25, align 8
  %148 = call double @mp_mul_radix_test(i32 %142, i32 %143, i32 %144, double* %145, i32* %146, double* %147)
  store double %148, double* %13, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %8, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sdiv i32 %153, 4
  %155 = sitofp i32 %154 to double
  %156 = fmul double 0x3CB0000000000000, %155
  %157 = load double, double* %13, align 8
  %158 = fadd double %157, %156
  store double %158, double* %13, align 8
  br label %159

159:                                              ; preds = %168, %139
  %160 = load double, double* %13, align 8
  %161 = fmul double 1.000000e+02, %160
  %162 = fcmp olt double %161, 3.000000e-01
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* %8, align 4
  %165 = icmp sle i32 %164, 107374182
  br label %166

166:                                              ; preds = %163, %159
  %167 = phi i1 [ false, %159 ], [ %165, %163 ]
  br i1 %167, label %168, label %175

168:                                              ; preds = %166
  %169 = load double, double* %13, align 8
  %170 = fmul double %169, 1.000000e+02
  store double %170, double* %13, align 8
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %8, align 4
  %174 = mul nsw i32 %173, 10
  store i32 %174, i32* %8, align 4
  br label %159

175:                                              ; preds = %166
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = sub nsw i32 %180, 2
  %182 = mul nsw i32 %179, %181
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32*, i32** %15, align 8
  call void @mp_sscanf(i32 %184, i32 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32* %186)
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32*, i32** %15, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = load i32*, i32** %19, align 8
  %192 = load i32*, i32** %20, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load double*, double** %22, align 8
  %195 = load double*, double** %23, align 8
  %196 = load i32*, i32** %21, align 8
  %197 = load double*, double** %25, align 8
  %198 = call i32 @mp_sqrt(i32 %187, i32 %188, i32* %189, i32* %190, i32* %191, i32* %192, i32 %193, double* %194, double* %195, i32* %196, double* %197)
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load i32*, i32** %17, align 8
  %202 = load i32*, i32** %18, align 8
  call void @mp_imul(i32 %199, i32 %200, i32* %201, i32 3, i32* %202)
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32*, i32** %15, align 8
  call void @mp_sscanf(i32 %203, i32 %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32* %205)
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32*, i32** %15, align 8
  %209 = load i32*, i32** %18, align 8
  %210 = load i32*, i32** %15, align 8
  call void @mp_add(i32 %206, i32 %207, i32* %208, i32* %209, i32* %210)
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load i32*, i32** %15, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = load i32*, i32** %19, align 8
  %216 = load i32*, i32** %20, align 8
  %217 = load i32, i32* %6, align 4
  %218 = load double*, double** %22, align 8
  %219 = load double*, double** %23, align 8
  %220 = load i32*, i32** %21, align 8
  %221 = load double*, double** %25, align 8
  %222 = call i32 @mp_sqrt(i32 %211, i32 %212, i32* %213, i32* %214, i32* %215, i32* %216, i32 %217, double* %218, double* %219, i32* %220, double* %221)
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %9, align 4
  %225 = load i32*, i32** %18, align 8
  call void @mp_sscanf(i32 %223, i32 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32* %225)
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32*, i32** %16, align 8
  %229 = load i32*, i32** %18, align 8
  %230 = load i32*, i32** %18, align 8
  call void @mp_sub(i32 %226, i32 %227, i32* %228, i32* %229, i32* %230)
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32*, i32** %16, align 8
  %234 = load i32*, i32** %16, align 8
  %235 = load i32*, i32** %16, align 8
  call void @mp_add(i32 %231, i32 %232, i32* %233, i32* %234, i32* %235)
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i32*, i32** %18, align 8
  %239 = load i32*, i32** %17, align 8
  %240 = load i32*, i32** %17, align 8
  call void @mp_sub(i32 %236, i32 %237, i32* %238, i32* %239, i32* %240)
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32*, i32** %15, align 8
  %244 = load i32*, i32** %18, align 8
  %245 = load i32*, i32** %15, align 8
  call void @mp_add(i32 %241, i32 %242, i32* %243, i32* %244, i32* %245)
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i32 4, i32* %11, align 4
  br label %247

247:                                              ; preds = %319, %175
  %248 = load i32, i32* %11, align 4
  %249 = mul nsw i32 %248, 2
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %8, align 4
  %252 = load i32*, i32** %15, align 8
  %253 = load i32*, i32** %16, align 8
  %254 = load i32*, i32** %18, align 8
  call void @mp_add(i32 %250, i32 %251, i32* %252, i32* %253, i32* %254)
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load i32*, i32** %18, align 8
  %258 = load i32*, i32** %18, align 8
  call void @mp_idiv_2(i32 %255, i32 %256, i32* %257, i32* %258)
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %8, align 4
  %261 = load i32*, i32** %15, align 8
  %262 = load i32*, i32** %16, align 8
  %263 = load i32*, i32** %15, align 8
  %264 = load i32*, i32** %19, align 8
  %265 = load i32, i32* %6, align 4
  %266 = load double*, double** %22, align 8
  %267 = load double*, double** %23, align 8
  %268 = load double*, double** %24, align 8
  %269 = load i32*, i32** %21, align 8
  %270 = load double*, double** %25, align 8
  call void @mp_mul(i32 %259, i32 %260, i32* %261, i32* %262, i32* %263, i32* %264, i32 %265, double* %266, double* %267, double* %268, i32* %269, double* %270)
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load i32*, i32** %15, align 8
  %274 = load i32*, i32** %16, align 8
  %275 = load i32*, i32** %19, align 8
  %276 = load i32*, i32** %20, align 8
  %277 = load i32, i32* %6, align 4
  %278 = load double*, double** %22, align 8
  %279 = load double*, double** %23, align 8
  %280 = load i32*, i32** %21, align 8
  %281 = load double*, double** %25, align 8
  %282 = call i32 @mp_sqrt(i32 %271, i32 %272, i32* %273, i32* %274, i32* %275, i32* %276, i32 %277, double* %278, double* %279, i32* %280, double* %281)
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %8, align 4
  %285 = load i32*, i32** %18, align 8
  %286 = load i32*, i32** %16, align 8
  %287 = load i32*, i32** %18, align 8
  call void @mp_sub(i32 %283, i32 %284, i32* %285, i32* %286, i32* %287)
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %8, align 4
  %290 = load i32*, i32** %16, align 8
  %291 = load i32*, i32** %16, align 8
  %292 = load i32*, i32** %16, align 8
  call void @mp_add(i32 %288, i32 %289, i32* %290, i32* %291, i32* %292)
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* %8, align 4
  %295 = load i32*, i32** %17, align 8
  %296 = load i32*, i32** %18, align 8
  %297 = load i32*, i32** %17, align 8
  call void @mp_sub(i32 %293, i32 %294, i32* %295, i32* %296, i32* %297)
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %8, align 4
  %300 = load i32*, i32** %18, align 8
  %301 = load i32*, i32** %16, align 8
  %302 = load i32*, i32** %15, align 8
  call void @mp_add(i32 %298, i32 %299, i32* %300, i32* %301, i32* %302)
  %303 = load i32*, i32** %18, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %12, align 4
  %307 = load i32*, i32** %18, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %247
  %312 = load i32, i32* %10, align 4
  store i32 %312, i32* %12, align 4
  br label %313

313:                                              ; preds = %311, %247
  %314 = load i32, i32* %12, align 4
  %315 = mul nsw i32 4, %314
  %316 = load i32, i32* %9, align 4
  %317 = mul nsw i32 %315, %316
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %313
  %320 = load i32, i32* %12, align 4
  %321 = mul nsw i32 4, %320
  %322 = load i32, i32* %10, align 4
  %323 = icmp sle i32 %321, %322
  br i1 %323, label %247, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* %8, align 4
  %327 = load i32*, i32** %18, align 8
  %328 = load i32*, i32** %18, align 8
  call void @mp_idiv_2(i32 %325, i32 %326, i32* %327, i32* %328)
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %8, align 4
  %331 = load i32*, i32** %18, align 8
  %332 = load i32*, i32** %18, align 8
  %333 = load i32, i32* %6, align 4
  %334 = load double*, double** %22, align 8
  %335 = load i32*, i32** %21, align 8
  %336 = load double*, double** %25, align 8
  call void @mp_squh(i32 %329, i32 %330, i32* %331, i32* %332, i32 %333, double* %334, i32* %335, double* %336)
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %8, align 4
  %339 = load i32*, i32** %15, align 8
  %340 = load i32*, i32** %16, align 8
  %341 = load i32*, i32** %15, align 8
  call void @mp_add(i32 %337, i32 %338, i32* %339, i32* %340, i32* %341)
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* %8, align 4
  %344 = load i32*, i32** %15, align 8
  %345 = load i32*, i32** %17, align 8
  %346 = load i32*, i32** %17, align 8
  %347 = load i32*, i32** %19, align 8
  %348 = load i32, i32* %6, align 4
  %349 = load double*, double** %22, align 8
  %350 = load double*, double** %23, align 8
  %351 = load double*, double** %24, align 8
  %352 = load i32*, i32** %21, align 8
  %353 = load double*, double** %25, align 8
  call void @mp_mul(i32 %342, i32 %343, i32* %344, i32* %345, i32* %346, i32* %347, i32 %348, double* %349, double* %350, double* %351, i32* %352, double* %353)
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* %8, align 4
  %356 = load i32*, i32** %17, align 8
  %357 = load i32*, i32** %18, align 8
  %358 = load i32*, i32** %17, align 8
  call void @mp_sub(i32 %354, i32 %355, i32* %356, i32* %357, i32* %358)
  %359 = load i32, i32* %10, align 4
  %360 = load i32, i32* %8, align 4
  %361 = load i32*, i32** %17, align 8
  %362 = load i32*, i32** %16, align 8
  %363 = load i32*, i32** %19, align 8
  %364 = load i32*, i32** %20, align 8
  %365 = load i32, i32* %6, align 4
  %366 = load double*, double** %22, align 8
  %367 = load double*, double** %23, align 8
  %368 = load i32*, i32** %21, align 8
  %369 = load double*, double** %25, align 8
  %370 = call i32 @mp_inv(i32 %359, i32 %360, i32* %361, i32* %362, i32* %363, i32* %364, i32 %365, double* %366, double* %367, i32* %368, double* %369)
  %371 = load i32, i32* %10, align 4
  %372 = load i32, i32* %8, align 4
  %373 = load i32*, i32** %15, align 8
  %374 = load i32*, i32** %15, align 8
  %375 = load i32*, i32** %19, align 8
  %376 = load i32, i32* %6, align 4
  %377 = load double*, double** %22, align 8
  %378 = load double*, double** %23, align 8
  %379 = load i32*, i32** %21, align 8
  %380 = load double*, double** %25, align 8
  call void @mp_squ(i32 %371, i32 %372, i32* %373, i32* %374, i32* %375, i32 %376, double* %377, double* %378, i32* %379, double* %380)
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* %8, align 4
  %383 = load i32*, i32** %15, align 8
  %384 = load i32*, i32** %18, align 8
  %385 = load i32*, i32** %15, align 8
  call void @mp_sub(i32 %381, i32 %382, i32* %383, i32* %384, i32* %385)
  %386 = load i32, i32* %10, align 4
  %387 = load i32, i32* %8, align 4
  %388 = load i32*, i32** %18, align 8
  %389 = load i32*, i32** %18, align 8
  call void @mp_idiv_2(i32 %386, i32 %387, i32* %388, i32* %389)
  %390 = load i32, i32* %10, align 4
  %391 = load i32, i32* %8, align 4
  %392 = load i32*, i32** %15, align 8
  %393 = load i32*, i32** %18, align 8
  %394 = load i32*, i32** %15, align 8
  call void @mp_sub(i32 %390, i32 %391, i32* %392, i32* %393, i32* %394)
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %8, align 4
  %397 = load i32*, i32** %15, align 8
  %398 = load i32*, i32** %16, align 8
  %399 = load i32*, i32** %15, align 8
  %400 = load i32*, i32** %19, align 8
  %401 = load i32, i32* %6, align 4
  %402 = load double*, double** %22, align 8
  %403 = load double*, double** %23, align 8
  %404 = load double*, double** %24, align 8
  %405 = load i32*, i32** %21, align 8
  %406 = load double*, double** %25, align 8
  call void @mp_mul(i32 %395, i32 %396, i32* %397, i32* %398, i32* %399, i32* %400, i32 %401, double* %402, double* %403, double* %404, i32* %405, double* %406)
  %407 = load i32, i32* %10, align 4
  %408 = load i32, i32* %8, align 4
  %409 = load i32*, i32** %15, align 8
  %410 = load i32, i32* %11, align 4
  %411 = load i32*, i32** %15, align 8
  %412 = call i32 @mp_idiv(i32 %407, i32 %408, i32* %409, i32 %410, i32* %411)
  %413 = load double*, double** %24, align 8
  %414 = bitcast double* %413 to i8*
  call void @free(i8* %414) #4
  %415 = load double*, double** %23, align 8
  %416 = bitcast double* %415 to i8*
  call void @free(i8* %416) #4
  %417 = load double*, double** %22, align 8
  %418 = bitcast double* %417 to i8*
  call void @free(i8* %418) #4
  %419 = load i32, i32* %9, align 4
  %420 = load i32, i32* %10, align 4
  %421 = mul nsw i32 %419, %420
  %422 = add nsw i32 %421, 32
  %423 = sext i32 %422 to i64
  %424 = mul i64 %423, 1
  %425 = call noalias i8* @malloc(i64 %424) #4
  store i8* %425, i8** %26, align 8
  %426 = load i32, i32* %10, align 4
  %427 = sub nsw i32 %426, 1
  %428 = load i32, i32* %9, align 4
  %429 = load i32*, i32** %15, align 8
  %430 = load i8*, i8** %26, align 8
  call void @mp_sprintf(i32 %427, i32 %428, i32* %429, i8* %430)
  %431 = load i8*, i8** %26, align 8
  %432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %431)
  %433 = load i8*, i8** %26, align 8
  call void @free(i8* %433) #4
  %434 = load i32*, i32** %20, align 8
  %435 = bitcast i32* %434 to i8*
  call void @free(i8* %435) #4
  %436 = load i32*, i32** %19, align 8
  %437 = bitcast i32* %436 to i8*
  call void @free(i8* %437) #4
  %438 = load i32*, i32** %18, align 8
  %439 = bitcast i32* %438 to i8*
  call void @free(i8* %439) #4
  %440 = load i32*, i32** %17, align 8
  %441 = bitcast i32* %440 to i8*
  call void @free(i8* %441) #4
  %442 = load i32*, i32** %16, align 8
  %443 = bitcast i32* %442 to i8*
  call void @free(i8* %443) #4
  %444 = load i32*, i32** %15, align 8
  %445 = bitcast i32* %444 to i8*
  call void @free(i8* %445) #4
  %446 = load double*, double** %25, align 8
  %447 = bitcast double* %446 to i8*
  call void @free(i8* %447) #4
  %448 = load i32*, i32** %21, align 8
  %449 = bitcast i32* %448 to i8*
  call void @free(i8* %449) #4
  %450 = load i32, i32* %6, align 4
  %451 = sitofp i32 %450 to double
  %452 = fmul double 5.000000e+01, %451
  %453 = load i32, i32* %7, align 4
  %454 = sitofp i32 %453 to double
  %455 = fmul double %452, %454
  %456 = load i32, i32* %7, align 4
  %457 = sitofp i32 %456 to double
  %458 = fmul double %455, %457
  store double %458, double* %14, align 8
  %459 = load double, double* %14, align 8
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), double %459)
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @mp_mul_radix_test(i32 %0, i32 %1, i32 %2, double* %3, i32* %4, double* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store double* %3, double** %10, align 8
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = ashr i32 %16, 1
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sitofp i32 %26 to double
  %28 = load double*, double** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %28, i64 %31
  store double %27, double* %32, align 8
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %43, %24
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load double*, double** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  store double 0.000000e+00, double* %42, align 8
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %13, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %61, %46
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = sitofp i32 %55 to double
  %57 = load double*, double** %10, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  store double %56, double* %60, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %13, align 4
  br label %51

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = sitofp i32 %65 to double
  %67 = load double*, double** %10, align 8
  %68 = getelementptr inbounds double, double* %67, i64 2
  store double %66, double* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sitofp i32 %70 to double
  %72 = load double*, double** %10, align 8
  %73 = getelementptr inbounds double, double* %72, i64 1
  store double %71, double* %73, align 8
  %74 = load double*, double** %10, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  store double 0.000000e+00, double* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load double*, double** %10, align 8
  %78 = getelementptr inbounds double, double* %77, i64 1
  %79 = load i32*, i32** %11, align 8
  %80 = load double*, double** %12, align 8
  call void @rdft(i32 %76, i32 1, double* %78, i32* %79, double* %80)
  %81 = load i32, i32* %9, align 4
  %82 = load double*, double** %10, align 8
  call void @mp_mul_csqu(i32 %81, double* %82)
  %83 = load i32, i32* %9, align 4
  %84 = load double*, double** %10, align 8
  %85 = getelementptr inbounds double, double* %84, i64 1
  %86 = load i32*, i32** %11, align 8
  %87 = load double*, double** %12, align 8
  call void @rdft(i32 %83, i32 -1, double* %85, i32* %86, double* %87)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load double*, double** %10, align 8
  %91 = call double @mp_mul_d2i_test(i32 %88, i32 %89, double* %90)
  %92 = fmul double 2.000000e+00, %91
  ret double %92
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_sscanf(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %14

14:                                               ; preds = %19, %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 1, i32* %24, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 -1, i32* %31, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  br label %43

34:                                               ; preds = %22
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %56, %43
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 48
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ true, %44 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  br label %44

59:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  %60 = load i8*, i8** %7, align 8
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %94, %59
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 101
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 69
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 100
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 68
  br i1 %85, label %86, label %93

86:                                               ; preds = %81, %76, %71, %66
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  %89 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %12) #4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %91, %86
  br label %97

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  br label %61

97:                                               ; preds = %92, %61
  %98 = load i8*, i8** %7, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 46
  br i1 %101, label %102, label %127

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %112, %103
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 32
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %106

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %7, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 48
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i1 [ false, %114 ], [ %123, %119 ]
  br i1 %125, label %103, label %126

126:                                              ; preds = %124
  br label %172

127:                                              ; preds = %97
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %127
  %133 = load i8*, i8** %7, align 8
  store i8* %133, i8** %9, align 8
  br label %134

134:                                              ; preds = %140, %132
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %134

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %169, %141
  %143 = load i8*, i8** %9, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp sge i32 %145, 48
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load i8*, i8** %9, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp sle i32 %150, 57
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i8*, i8** %9, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %152, %147, %142
  %158 = phi i1 [ false, %147 ], [ false, %142 ], [ %156, %152 ]
  br i1 %158, label %159, label %170

159:                                              ; preds = %157
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %168, %159
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 32
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %162

169:                                              ; preds = %162
  br label %142

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %127
  br label %172

172:                                              ; preds = %171, %126
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %6, align 4
  %175 = sdiv i32 %173, %174
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %11, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sub nsw i32 %176, %179
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %172
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %183, %172
  %190 = load i32, i32* %11, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 %190, i32* %192, align 4
  store i32 0, i32* %11, align 4
  store i32 2, i32* %10, align 4
  %193 = load i8*, i8** %7, align 8
  store i8* %193, i8** %9, align 8
  br label %194

194:                                              ; preds = %248, %189
  %195 = load i8*, i8** %9, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %251

199:                                              ; preds = %194
  %200 = load i8*, i8** %9, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 46
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = load i8*, i8** %9, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 32
  br i1 %208, label %209, label %210

209:                                              ; preds = %204, %199
  br label %248

210:                                              ; preds = %204
  %211 = load i8*, i8** %9, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp slt i32 %213, 48
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = load i8*, i8** %9, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp sgt i32 %218, 57
  br i1 %219, label %220, label %221

220:                                              ; preds = %215, %210
  br label %251

221:                                              ; preds = %215
  %222 = load i32, i32* %11, align 4
  %223 = mul nsw i32 10, %222
  %224 = load i8*, i8** %9, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = sub nsw i32 %226, 48
  %228 = add nsw i32 %223, %227
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %13, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %221
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 1
  %236 = icmp sgt i32 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %251

238:                                              ; preds = %232
  %239 = load i32, i32* %11, align 4
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %10, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 %239, i32* %244, align 4
  store i32 0, i32* %11, align 4
  %245 = load i32, i32* %6, align 4
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %247

247:                                              ; preds = %238, %221
  br label %248

248:                                              ; preds = %247, %209
  %249 = load i8*, i8** %9, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %9, align 8
  br label %194

251:                                              ; preds = %237, %220, %194
  br label %252

252:                                              ; preds = %256, %251
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %13, align 4
  %255 = icmp sge i32 %253, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load i32, i32* %11, align 4
  %258 = mul nsw i32 %257, 10
  store i32 %258, i32* %11, align 4
  br label %252

259:                                              ; preds = %252
  br label %260

260:                                              ; preds = %265, %259
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 1
  %264 = icmp sle i32 %261, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %260
  %266 = load i32, i32* %11, align 4
  %267 = load i32*, i32** %8, align 8
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %10, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 %266, i32* %271, align 4
  store i32 0, i32* %11, align 4
  br label %260

272:                                              ; preds = %260
  %273 = load i32*, i32** %8, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load i32*, i32** %8, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  store i32 0, i32* %279, align 4
  %280 = load i32*, i32** %8, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  store i32 0, i32* %281, align 4
  br label %282

282:                                              ; preds = %277, %272
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_sqrt(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, double* %7, double* %8, i32* %9, double* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store double* %7, double** %20, align 8
  store double* %8, double** %21, align 8
  store i32* %9, i32** %22, align 8
  store double* %10, double** %23, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %11
  store i32 -1, i32* %12, align 4
  br label %115

34:                                               ; preds = %11
  %35 = load i32*, i32** %15, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %16, align 8
  call void @mp_load_0(i32 %40, i32 %41, i32* %42)
  store i32 0, i32* %12, align 4
  br label %115

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @mp_get_nfft_init(i32 %45, i32 %46)
  store i32 %47, i32* %25, align 4
  %48 = load i32, i32* %25, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %24, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %24, align 4
  br label %55

55:                                               ; preds = %53, %44
  %56 = load i32, i32* %24, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %17, align 8
  call void @mp_sqrt_init(i32 %56, i32 %57, i32* %58, i32* %59, i32* %60)
  store i32 0, i32* %28, align 4
  store i32 8, i32* %26, align 4
  br label %61

61:                                               ; preds = %110, %55
  %62 = load i32, i32* %25, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %24, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %25, align 4
  %77 = load double*, double** %20, align 8
  %78 = load double*, double** %21, align 8
  %79 = load i32*, i32** %22, align 8
  %80 = load double*, double** %23, align 8
  %81 = call i32 @mp_sqrt_newton(i32 %70, i32 %71, i32* %72, i32* %73, i32* %74, i32* %75, i32 %76, double* %77, double* %78, i32* %79, double* %80, i32* %28)
  store i32 %81, i32* %27, align 4
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* %25, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %19, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %69
  store i32 0, i32* %26, align 4
  %88 = load i32, i32* %27, align 4
  %89 = mul nsw i32 2, %88
  %90 = load i32, i32* %24, align 4
  %91 = sub nsw i32 %90, 2
  %92 = icmp sle i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %25, align 4
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %25, align 4
  br label %96

96:                                               ; preds = %93, %87
  br label %107

97:                                               ; preds = %69
  %98 = load i32, i32* %27, align 4
  %99 = mul nsw i32 3, %98
  %100 = load i32, i32* %24, align 4
  %101 = sub nsw i32 %100, 2
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* %25, align 4
  %105 = ashr i32 %104, 1
  store i32 %105, i32* %25, align 4
  br label %106

106:                                              ; preds = %103, %97
  br label %107

107:                                              ; preds = %106, %96
  %108 = load i32, i32* %25, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %25, align 4
  br label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %25, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %61, label %114

114:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %114, %39, %33
  %116 = load i32, i32* %12, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_imul(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  br label %35

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 0, %25
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %19
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sitofp i32 %37 to double
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %9, align 4
  %42 = sitofp i32 %41 to double
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  call void @mp_unsgn_imul(i32 %36, double %38, i32* %40, double %42, i32* %44)
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_add(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  br label %62

47:                                               ; preds = %40
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %47, %43
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = call i32 @mp_unexp_add(i32 %66, i32 %67, i32 %68, i32* %70, i32* %72, i32* %74)
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %92

78:                                               ; preds = %62
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = call i32 @mp_unexp_add(i32 %79, i32 %80, i32 %82, i32* %84, i32* %86, i32* %88)
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %78, %65
  br label %139

93:                                               ; preds = %30
  %94 = load i32, i32* %6, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = call i32 @mp_unsgn_cmp(i32 %94, i32* %96, i32* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = call i32 @mp_unexp_sub(i32 %103, i32 %104, i32 %105, i32* %107, i32* %109, i32* %111)
  store i32 %112, i32* %13, align 4
  br label %125

113:                                              ; preds = %93
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 0, %116
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = call i32 @mp_unexp_sub(i32 %114, i32 %115, i32 %117, i32* %119, i32* %121, i32* %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %113, %102
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %137, %125
  br label %139

139:                                              ; preds = %138, %92
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, i32* %11, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %147, i32* %149, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_sub(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  br label %62

47:                                               ; preds = %40
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %47, %43
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = call i32 @mp_unexp_add(i32 %66, i32 %67, i32 %68, i32* %70, i32* %72, i32* %74)
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %92

78:                                               ; preds = %62
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = call i32 @mp_unexp_add(i32 %79, i32 %80, i32 %82, i32* %84, i32* %86, i32* %88)
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %78, %65
  br label %139

93:                                               ; preds = %30
  %94 = load i32, i32* %6, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = call i32 @mp_unsgn_cmp(i32 %94, i32* %96, i32* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = call i32 @mp_unexp_sub(i32 %103, i32 %104, i32 %105, i32* %107, i32* %109, i32* %111)
  store i32 %112, i32* %13, align 4
  br label %125

113:                                              ; preds = %93
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 0, %116
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = call i32 @mp_unexp_sub(i32 %114, i32 %115, i32 %117, i32* %119, i32* %121, i32* %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %113, %102
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %137, %125
  br label %139

139:                                              ; preds = %138, %92
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, i32* %11, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %147, i32* %149, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_idiv_2(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  store i32 2, i32* %9, align 4
  br label %33

33:                                               ; preds = %61, %23
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sle i32 %34, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %48, %49
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 1
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 1
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %40
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %33

64:                                               ; preds = %33
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 1
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %64
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, double* %7, double* %8, double* %9, i32* %10, double* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store double* %7, double** %20, align 8
  store double* %8, double** %21, align 8
  store double* %9, double** %22, align 8
  store i32* %10, i32** %23, align 8
  store double* %11, double** %24, align 8
  %27 = load i32, i32* %19, align 4
  %28 = ashr i32 %27, 1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %26, align 4
  br label %30

30:                                               ; preds = %50, %12
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %26, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %26, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %16, align 8
  %42 = load i32, i32* %26, align 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %40, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %53

50:                                               ; preds = %34
  %51 = load i32, i32* %26, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %26, align 4
  br label %30

53:                                               ; preds = %49, %30
  %54 = load i32, i32* %13, align 4
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %25, align 4
  %57 = load i32, i32* %25, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %26, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %26, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %25, align 4
  br label %66

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load double*, double** %20, align 8
  call void @mp_mul_i2d(i32 %67, i32 %68, i32 %69, i32 0, i32* %70, double* %71)
  %72 = load i32, i32* %19, align 4
  %73 = load double*, double** %20, align 8
  %74 = getelementptr inbounds double, double* %73, i64 1
  %75 = load i32*, i32** %23, align 8
  %76 = load double*, double** %24, align 8
  call void @rdft(i32 %72, i32 1, double* %74, i32* %75, double* %76)
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %26, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = load double*, double** %22, align 8
  call void @mp_mul_i2d(i32 %77, i32 %78, i32 %79, i32 %80, i32* %81, double* %82)
  %83 = load i32, i32* %19, align 4
  %84 = load double*, double** %22, align 8
  %85 = getelementptr inbounds double, double* %84, i64 1
  %86 = load i32*, i32** %23, align 8
  %87 = load double*, double** %24, align 8
  call void @rdft(i32 %83, i32 1, double* %85, i32* %86, double* %87)
  %88 = load i32, i32* %19, align 4
  %89 = load double*, double** %20, align 8
  %90 = load double*, double** %22, align 8
  call void @mp_mul_cmul(i32 %88, double* %89, double* %90)
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = load double*, double** %21, align 8
  call void @mp_mul_i2d(i32 %91, i32 %92, i32 %93, i32 0, i32* %94, double* %95)
  %96 = load i32, i32* %19, align 4
  %97 = load double*, double** %21, align 8
  %98 = getelementptr inbounds double, double* %97, i64 1
  %99 = load i32*, i32** %23, align 8
  %100 = load double*, double** %24, align 8
  call void @rdft(i32 %96, i32 1, double* %98, i32* %99, double* %100)
  %101 = load i32, i32* %19, align 4
  %102 = load double*, double** %21, align 8
  %103 = load double*, double** %20, align 8
  call void @mp_mul_cmul(i32 %101, double* %102, double* %103)
  %104 = load i32, i32* %19, align 4
  %105 = load double*, double** %20, align 8
  %106 = getelementptr inbounds double, double* %105, i64 1
  %107 = load i32*, i32** %23, align 8
  %108 = load double*, double** %24, align 8
  call void @rdft(i32 %104, i32 -1, double* %106, i32* %107, double* %108)
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load double*, double** %20, align 8
  %113 = load i32*, i32** %18, align 8
  call void @mp_mul_d2i(i32 %109, i32 %110, i32 %111, double* %112, i32* %113)
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = load double*, double** %20, align 8
  call void @mp_mul_i2d(i32 %114, i32 %115, i32 %116, i32 %117, i32* %118, double* %119)
  %120 = load i32, i32* %19, align 4
  %121 = load double*, double** %20, align 8
  %122 = getelementptr inbounds double, double* %121, i64 1
  %123 = load i32*, i32** %23, align 8
  %124 = load double*, double** %24, align 8
  call void @rdft(i32 %120, i32 1, double* %122, i32* %123, double* %124)
  %125 = load i32, i32* %19, align 4
  %126 = load double*, double** %20, align 8
  %127 = load double*, double** %21, align 8
  %128 = load double*, double** %22, align 8
  call void @mp_mul_cmuladd(i32 %125, double* %126, double* %127, double* %128)
  %129 = load i32, i32* %19, align 4
  %130 = load double*, double** %22, align 8
  %131 = getelementptr inbounds double, double* %130, i64 1
  %132 = load i32*, i32** %23, align 8
  %133 = load double*, double** %24, align 8
  call void @rdft(i32 %129, i32 -1, double* %131, i32* %132, double* %133)
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load double*, double** %22, align 8
  %138 = load i32*, i32** %17, align 8
  call void @mp_mul_d2i(i32 %134, i32 %135, i32 %136, double* %137, i32* %138)
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32*, i32** %17, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = load i32*, i32** %17, align 8
  call void @mp_add(i32 %139, i32 %140, i32* %141, i32* %142, i32* %143)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_squh(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, double* %5, i32* %6, double* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store double* %5, double** %14, align 8
  store i32* %6, i32** %15, align 8
  store double* %7, double** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load double*, double** %14, align 8
  call void @mp_mul_i2d(i32 %17, i32 %18, i32 %19, i32 0, i32* %20, double* %21)
  %22 = load i32, i32* %13, align 4
  %23 = load double*, double** %14, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  %25 = load i32*, i32** %15, align 8
  %26 = load double*, double** %16, align 8
  call void @rdft(i32 %22, i32 1, double* %24, i32* %25, double* %26)
  %27 = load i32, i32* %13, align 4
  %28 = load double*, double** %14, align 8
  call void @mp_mul_csqu(i32 %27, double* %28)
  %29 = load i32, i32* %13, align 4
  %30 = load double*, double** %14, align 8
  %31 = getelementptr inbounds double, double* %30, i64 1
  %32 = load i32*, i32** %15, align 8
  %33 = load double*, double** %16, align 8
  call void @rdft(i32 %29, i32 -1, double* %31, i32* %32, double* %33)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load double*, double** %14, align 8
  %38 = load i32*, i32** %12, align 8
  call void @mp_mul_d2i(i32 %34, i32 %35, i32 %36, double* %37, i32* %38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_inv(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, double* %7, double* %8, i32* %9, double* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store double* %7, double** %20, align 8
  store double* %8, double** %21, align 8
  store i32* %9, i32** %22, align 8
  store double* %10, double** %23, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %11
  store i32 -1, i32* %12, align 4
  br label %103

33:                                               ; preds = %11
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %19, align 4
  %36 = call i32 @mp_get_nfft_init(i32 %34, i32 %35)
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %24, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %24, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %16, align 8
  call void @mp_inv_init(i32 %45, i32 %46, i32* %47, i32* %48)
  store i32 8, i32* %26, align 4
  br label %49

49:                                               ; preds = %98, %44
  %50 = load i32, i32* %25, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %24, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %25, align 4
  %65 = load double*, double** %20, align 8
  %66 = load double*, double** %21, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = load double*, double** %23, align 8
  %69 = call i32 @mp_inv_newton(i32 %58, i32 %59, i32* %60, i32* %61, i32* %62, i32* %63, i32 %64, double* %65, double* %66, i32* %67, double* %68)
  store i32 %69, i32* %27, align 4
  %70 = load i32, i32* %26, align 4
  %71 = load i32, i32* %25, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %19, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %57
  store i32 0, i32* %26, align 4
  %76 = load i32, i32* %27, align 4
  %77 = mul nsw i32 2, %76
  %78 = load i32, i32* %24, align 4
  %79 = sub nsw i32 %78, 2
  %80 = icmp sle i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %25, align 4
  %83 = ashr i32 %82, 1
  store i32 %83, i32* %25, align 4
  br label %84

84:                                               ; preds = %81, %75
  br label %95

85:                                               ; preds = %57
  %86 = load i32, i32* %27, align 4
  %87 = mul nsw i32 3, %86
  %88 = load i32, i32* %24, align 4
  %89 = sub nsw i32 %88, 2
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %25, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %25, align 4
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32, i32* %25, align 4
  %97 = shl i32 %96, 1
  store i32 %97, i32* %25, align 4
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %49, label %102

102:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %102, %32
  %104 = load i32, i32* %12, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_squ(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, double* %6, double* %7, i32* %8, double* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store double* %6, double** %17, align 8
  store double* %7, double** %18, align 8
  store i32* %8, i32** %19, align 8
  store double* %9, double** %20, align 8
  %23 = load i32, i32* %16, align 4
  %24 = ashr i32 %23, 1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %22, align 4
  br label %26

26:                                               ; preds = %39, %10
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %22, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %22, align 4
  %33 = add nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %22, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %22, align 4
  br label %26

42:                                               ; preds = %38, %26
  %43 = load i32, i32* %11, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %22, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %22, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %21, align 4
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load double*, double** %17, align 8
  call void @mp_mul_i2d(i32 %56, i32 %57, i32 %58, i32 0, i32* %59, double* %60)
  %61 = load i32, i32* %16, align 4
  %62 = load double*, double** %17, align 8
  %63 = getelementptr inbounds double, double* %62, i64 1
  %64 = load i32*, i32** %19, align 8
  %65 = load double*, double** %20, align 8
  call void @rdft(i32 %61, i32 1, double* %63, i32* %64, double* %65)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = load double*, double** %18, align 8
  call void @mp_mul_i2d(i32 %66, i32 %67, i32 %68, i32 %69, i32* %70, double* %71)
  %72 = load i32, i32* %16, align 4
  %73 = load double*, double** %18, align 8
  %74 = getelementptr inbounds double, double* %73, i64 1
  %75 = load i32*, i32** %19, align 8
  %76 = load double*, double** %20, align 8
  call void @rdft(i32 %72, i32 1, double* %74, i32* %75, double* %76)
  %77 = load i32, i32* %16, align 4
  %78 = load double*, double** %17, align 8
  %79 = load double*, double** %18, align 8
  call void @mp_mul_cmul(i32 %77, double* %78, double* %79)
  %80 = load i32, i32* %16, align 4
  %81 = load double*, double** %18, align 8
  %82 = getelementptr inbounds double, double* %81, i64 1
  %83 = load i32*, i32** %19, align 8
  %84 = load double*, double** %20, align 8
  call void @rdft(i32 %80, i32 -1, double* %82, i32* %83, double* %84)
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load double*, double** %18, align 8
  %89 = load i32*, i32** %15, align 8
  call void @mp_mul_d2i(i32 %85, i32 %86, i32 %87, double* %88, i32* %89)
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load i32*, i32** %15, align 8
  call void @mp_add(i32 %90, i32 %91, i32* %92, i32* %93, i32* %94)
  %95 = load i32, i32* %16, align 4
  %96 = load double*, double** %17, align 8
  call void @mp_mul_csqu(i32 %95, double* %96)
  %97 = load i32, i32* %16, align 4
  %98 = load double*, double** %17, align 8
  %99 = getelementptr inbounds double, double* %98, i64 1
  %100 = load i32*, i32** %19, align 8
  %101 = load double*, double** %20, align 8
  call void @rdft(i32 %97, i32 -1, double* %99, i32* %100, double* %101)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load double*, double** %17, align 8
  %106 = load i32*, i32** %14, align 8
  call void @mp_mul_d2i(i32 %102, i32 %103, i32 %104, double* %105, i32* %106)
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = load i32*, i32** %14, align 8
  call void @mp_add(i32 %107, i32 %108, i32* %109, i32* %110, i32* %111)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_idiv(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %52

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  br label %33

24:                                               ; preds = %15
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %24, %18
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %11, align 8
  call void @mp_load_0(i32 %39, i32 %40, i32* %41)
  store i32 0, i32* %6, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sitofp i32 %44 to double
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %10, align 4
  %49 = sitofp i32 %48 to double
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  call void @mp_unsgn_idiv(i32 %43, double %45, i32* %47, double %49, i32* %51)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %42, %38, %14
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_sprintf(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  store i8 45, i8* %20, align 1
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %48, %22
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = srem i32 %32, 10
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %34, 10
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 48, %36
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %45, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %10, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %56, i8* %58, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 46, i8* %60, align 1
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %80, %51
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp sle i32 %62, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %74, i8* %79, align 1
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 2
  %89 = load i8*, i8** %8, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %8, align 8
  store i32 3, i32* %9, align 4
  br label %92

92:                                               ; preds = %128, %83
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  %96 = icmp sle i32 %93, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %92
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %120, %97
  %106 = load i32, i32* %10, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = srem i32 %109, 10
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sdiv i32 %111, 10
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 48, %113
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 %115, i8* %119, align 1
  br label %120

120:                                              ; preds = %108
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %10, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load i32, i32* %6, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %8, align 8
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %92

131:                                              ; preds = %92
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  store i8 101, i8* %132, align 1
  %134 = load i32, i32* %6, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %13, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %142) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_load_0(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %18, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  %12 = icmp sle i32 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %8

21:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_unsgn_idiv(i32 %0, double %1, i32* %2, double %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store i32* %2, i32** %8, align 8
  store double %3, double* %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load double, double* %9, align 8
  %18 = fdiv double 1.000000e+00, %17
  store double %18, double* %16, align 8
  store i32 0, i32* %14, align 4
  store double 0.000000e+00, double* %15, align 8
  br label %19

19:                                               ; preds = %38, %5
  %20 = load i32, i32* %14, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %14, align 4
  %22 = load double, double* %7, align 8
  %23 = load double, double* %15, align 8
  %24 = fmul double %23, %22
  store double %24, double* %15, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to double
  %35 = load double, double* %15, align 8
  %36 = fadd double %35, %34
  store double %36, double* %15, align 8
  br label %37

37:                                               ; preds = %28, %19
  br label %38

38:                                               ; preds = %37
  %39 = load double, double* %15, align 8
  %40 = load double, double* %9, align 8
  %41 = fsub double %40, 5.000000e-01
  %42 = fcmp olt double %39, %41
  br i1 %42, label %19, label %43

43:                                               ; preds = %38
  %44 = load double, double* %15, align 8
  %45 = fadd double %44, 5.000000e-01
  store double %45, double* %15, align 8
  %46 = load double, double* %16, align 8
  %47 = load double, double* %15, align 8
  %48 = fmul double %46, %47
  %49 = fptosi double %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load double, double* %15, align 8
  %51 = load double, double* %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sitofp i32 %52 to double
  %54 = fmul double %51, %53
  %55 = fsub double %50, %54
  %56 = fptosi double %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %14, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %43
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %72, %43
  store i32 2, i32* %11, align 4
  br label %76

76:                                               ; preds = %113, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %78, %79
  %81 = icmp sle i32 %77, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sitofp i32 %92 to double
  %94 = fmul double %91, %93
  %95 = fadd double %90, %94
  %96 = fadd double %95, 5.000000e-01
  store double %96, double* %15, align 8
  %97 = load double, double* %16, align 8
  %98 = load double, double* %15, align 8
  %99 = fmul double %97, %98
  %100 = fptosi double %99 to i32
  store i32 %100, i32* %12, align 4
  %101 = load double, double* %15, align 8
  %102 = load double, double* %9, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sitofp i32 %103 to double
  %105 = fmul double %102, %104
  %106 = fsub double %101, %105
  %107 = fptosi double %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %82
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %76

116:                                              ; preds = %76
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %14, align 4
  %119 = sub nsw i32 %117, %118
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %147, %116
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %150

125:                                              ; preds = %121
  %126 = load double, double* %7, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sitofp i32 %127 to double
  %129 = fmul double %126, %128
  %130 = fadd double %129, 5.000000e-01
  store double %130, double* %15, align 8
  %131 = load double, double* %16, align 8
  %132 = load double, double* %15, align 8
  %133 = fmul double %131, %132
  %134 = fptosi double %133 to i32
  store i32 %134, i32* %12, align 4
  %135 = load double, double* %15, align 8
  %136 = load double, double* %9, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sitofp i32 %137 to double
  %139 = fmul double %136, %138
  %140 = fsub double %135, %139
  %141 = fptosi double %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %125
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %121

150:                                              ; preds = %121
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul_i2d(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, double* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %6
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 1
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %37, %22
  br label %42

42:                                               ; preds = %41, %6
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %18, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  %49 = load double*, double** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %49, i64 %52
  store double %48, double* %53, align 8
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %64, %42
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load double*, double** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double 0.000000e+00, double* %63, align 8
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %13, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load i32, i32* %16, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %119

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %17, align 4
  store i32 0, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %104, %70
  %76 = load i32, i32* %13, align 4
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %78, label %107

78:                                               ; preds = %75
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp sge i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 -1, i32 0
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %94, %95
  %97 = sub nsw i32 %93, %96
  %98 = sitofp i32 %97 to double
  %99 = load double*, double** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %99, i64 %102
  store double %98, double* %103, align 8
  br label %104

104:                                              ; preds = %78
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %13, align 4
  br label %75

107:                                              ; preds = %75
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sitofp i32 %115 to double
  %117 = load double*, double** %12, align 8
  %118 = getelementptr inbounds double, double* %117, i64 2
  store double %116, double* %118, align 8
  br label %119

119:                                              ; preds = %107, %67
  %120 = load i32, i32* %18, align 4
  %121 = sitofp i32 %120 to double
  %122 = load double*, double** %12, align 8
  %123 = getelementptr inbounds double, double* %122, i64 1
  store double %121, double* %123, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sitofp i32 %128 to double
  %130 = load double*, double** %12, align 8
  %131 = getelementptr inbounds double, double* %130, i64 0
  store double %129, double* %131, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul_cmul(i32 %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %12 = load double*, double** %5, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  %14 = load double, double* %13, align 8
  %15 = load double*, double** %6, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  %17 = load double, double* %16, align 8
  %18 = fadd double %17, %14
  store double %18, double* %16, align 8
  %19 = load double*, double** %5, align 8
  %20 = getelementptr inbounds double, double* %19, i64 1
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %6, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, %21
  store double %25, double* %23, align 8
  %26 = load double*, double** %5, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  %28 = load double, double* %27, align 8
  %29 = load double*, double** %6, align 8
  %30 = getelementptr inbounds double, double* %29, i64 2
  %31 = load double, double* %30, align 8
  %32 = fmul double %31, %28
  store double %32, double* %30, align 8
  store i32 3, i32* %7, align 4
  br label %33

33:                                               ; preds = %83, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %33
  %38 = load double*, double** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  %42 = load double, double* %41, align 8
  store double %42, double* %8, align 8
  %43 = load double*, double** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %43, i64 %46
  %48 = load double, double* %47, align 8
  store double %48, double* %9, align 8
  %49 = load double*, double** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  store double %53, double* %10, align 8
  %54 = load double*, double** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  %59 = load double, double* %58, align 8
  store double %59, double* %11, align 8
  %60 = load double, double* %8, align 8
  %61 = load double, double* %10, align 8
  %62 = fmul double %60, %61
  %63 = load double, double* %9, align 8
  %64 = load double, double* %11, align 8
  %65 = fmul double %63, %64
  %66 = fsub double %62, %65
  %67 = load double*, double** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double %66, double* %70, align 8
  %71 = load double, double* %8, align 8
  %72 = load double, double* %11, align 8
  %73 = fmul double %71, %72
  %74 = load double, double* %9, align 8
  %75 = load double, double* %10, align 8
  %76 = fmul double %74, %75
  %77 = fadd double %73, %76
  %78 = load double*, double** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %78, i64 %81
  store double %77, double* %82, align 8
  br label %83

83:                                               ; preds = %37
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %7, align 4
  br label %33

86:                                               ; preds = %33
  %87 = load double*, double** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %87, i64 %90
  %92 = load double, double* %91, align 8
  %93 = load double*, double** %6, align 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %93, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fmul double %98, %92
  store double %99, double* %97, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul_d2i(i32 %0, i32 %1, i32 %2, double* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double* %3, double** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sitofp i32 %23 to double
  %25 = fdiv double 2.000000e+00, %24
  store double %25, double* %18, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double 1.000000e+00, %27
  store double %28, double* %19, align 8
  %29 = load double, double* %19, align 8
  %30 = load double, double* %19, align 8
  %31 = fmul double %29, %30
  store double %31, double* %20, align 8
  %32 = load double*, double** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %32, i64 %35
  %37 = load double, double* %36, align 8
  store double %37, double* %22, align 8
  %38 = load double, double* %22, align 8
  %39 = fcmp olt double %38, 0.000000e+00
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load double, double* %22, align 8
  %42 = fneg double %41
  br label %45

43:                                               ; preds = %5
  %44 = load double, double* %22, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi double [ %42, %40 ], [ %44, %43 ]
  store double %46, double* %17, align 8
  %47 = load double, double* %17, align 8
  %48 = fadd double %47, 5.000000e-01
  %49 = load i32, i32* %7, align 4
  %50 = sitofp i32 %49 to double
  %51 = fcmp oge double %48, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double %55, 5.000000e-01
  %57 = load double, double* %17, align 8
  %58 = fmul double %57, %56
  store double %58, double* %17, align 8
  %59 = load double*, double** %9, align 8
  %60 = getelementptr inbounds double, double* %59, i64 1
  %61 = load double, double* %60, align 8
  %62 = load double, double* %17, align 8
  %63 = fsub double %61, %62
  %64 = load double*, double** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  store double %63, double* %68, align 8
  %69 = load double, double* %17, align 8
  %70 = load double*, double** %9, align 8
  %71 = getelementptr inbounds double, double* %70, i64 1
  store double %69, double* %71, align 8
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %45
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %96, %79
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %11, align 4
  br label %86

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %45
  store double 0.000000e+00, double* %17, align 8
  store double 1.000000e+00, double* %21, align 8
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %127, %100
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = icmp sle i32 %106, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %105
  %111 = load double, double* %21, align 8
  %112 = load double*, double** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fmul double %111, %116
  %118 = load double, double* %17, align 8
  %119 = fadd double %118, %117
  store double %119, double* %17, align 8
  %120 = load double, double* %19, align 8
  %121 = load double, double* %21, align 8
  %122 = fmul double %121, %120
  store double %122, double* %21, align 8
  %123 = load double, double* %21, align 8
  %124 = fcmp olt double %123, 0x3CB0000000000000
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  br label %130

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %105

130:                                              ; preds = %125, %105
  %131 = load double, double* %20, align 8
  %132 = load double, double* %18, align 8
  %133 = load double, double* %17, align 8
  %134 = fmul double %132, %133
  %135 = fadd double %134, 5.000000e-01
  %136 = fmul double %131, %135
  store double %136, double* %17, align 8
  %137 = load double, double* %17, align 8
  %138 = fptosi double %137 to i32
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sitofp i32 %140 to double
  %142 = load double, double* %17, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sitofp i32 %143 to double
  %145 = fsub double %142, %144
  %146 = fmul double %141, %145
  %147 = fadd double %146, 5.000000e-01
  %148 = fptosi double %147 to i32
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %198, %130
  %151 = load i32, i32* %11, align 4
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %153, label %201

153:                                              ; preds = %150
  %154 = load double, double* %20, align 8
  %155 = load double, double* %18, align 8
  %156 = load double*, double** %9, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %156, i64 %160
  %162 = load double, double* %161, align 8
  %163 = fmul double %155, %162
  %164 = load i32, i32* %12, align 4
  %165 = sitofp i32 %164 to double
  %166 = fadd double %163, %165
  %167 = fadd double %166, 5.000000e-01
  %168 = fmul double %154, %167
  store double %168, double* %17, align 8
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %12, align 4
  %170 = load double, double* %17, align 8
  %171 = fptosi double %170 to i32
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %7, align 4
  %174 = sitofp i32 %173 to double
  %175 = load double, double* %17, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sitofp i32 %176 to double
  %178 = fsub double %175, %177
  %179 = fmul double %174, %178
  store double %179, double* %17, align 8
  %180 = load double, double* %17, align 8
  %181 = fptosi double %180 to i32
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %7, align 4
  %183 = sitofp i32 %182 to double
  %184 = load double, double* %17, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sitofp i32 %185 to double
  %187 = fsub double %184, %186
  %188 = fmul double %183, %187
  %189 = fptosi double %188 to i32
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %153
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %11, align 4
  br label %150

201:                                              ; preds = %150
  %202 = load i32, i32* %12, align 4
  %203 = sitofp i32 %202 to double
  %204 = load i32, i32* %7, align 4
  %205 = sitofp i32 %204 to double
  %206 = load i32, i32* %14, align 4
  %207 = sitofp i32 %206 to double
  %208 = fmul double %205, %207
  %209 = fadd double %203, %208
  %210 = fadd double %209, 5.000000e-01
  store double %210, double* %17, align 8
  %211 = load i32, i32* %15, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %201
  %214 = load double, double* %18, align 8
  %215 = load double*, double** %9, align 8
  %216 = getelementptr inbounds double, double* %215, i64 1
  %217 = load double, double* %216, align 8
  %218 = fmul double %214, %217
  %219 = load double, double* %17, align 8
  %220 = fadd double %219, %218
  store double %220, double* %17, align 8
  br label %221

221:                                              ; preds = %213, %201
  %222 = load double, double* %19, align 8
  %223 = load double, double* %17, align 8
  %224 = fmul double %222, %223
  %225 = fptosi double %224 to i32
  store i32 %225, i32* %12, align 4
  %226 = load double, double* %17, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sitofp i32 %227 to double
  %229 = load i32, i32* %12, align 4
  %230 = sitofp i32 %229 to double
  %231 = fmul double %228, %230
  %232 = fsub double %226, %231
  %233 = fptosi double %232 to i32
  %234 = load i32*, i32** %10, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %264

238:                                              ; preds = %221
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %241

241:                                              ; preds = %255, %238
  %242 = load i32, i32* %11, align 4
  %243 = icmp sgt i32 %242, 2
  br i1 %243, label %244, label %258

244:                                              ; preds = %241
  %245 = load i32*, i32** %10, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %10, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %250, i32* %254, align 4
  br label %255

255:                                              ; preds = %244
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %11, align 4
  br label %241

258:                                              ; preds = %241
  %259 = load i32, i32* %12, align 4
  %260 = load i32*, i32** %10, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %15, align 4
  br label %264

264:                                              ; preds = %258, %221
  %265 = load double*, double** %9, align 8
  %266 = getelementptr inbounds double, double* %265, i64 0
  %267 = load double, double* %266, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sitofp i32 %268 to double
  %270 = fadd double %267, %269
  %271 = fadd double %270, 5.000000e-01
  store double %271, double* %17, align 8
  %272 = load double, double* %17, align 8
  %273 = fptosi double %272 to i32
  %274 = sub nsw i32 %273, 1
  store i32 %274, i32* %15, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load double, double* %17, align 8
  %277 = load i32, i32* %15, align 4
  %278 = sitofp i32 %277 to double
  %279 = fsub double %276, %278
  %280 = fptosi double %279 to i32
  %281 = add nsw i32 %275, %280
  %282 = load i32*, i32** %10, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  store i32 %281, i32* %283, align 4
  %284 = load double, double* %22, align 8
  %285 = fcmp ogt double %284, 5.000000e-01
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 1, i32 -1
  %288 = load i32*, i32** %10, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 %287, i32* %289, align 4
  %290 = load i32*, i32** %10, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 2
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %264
  %295 = load i32*, i32** %10, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  store i32 0, i32* %296, align 4
  %297 = load i32*, i32** %10, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  store i32 0, i32* %298, align 4
  br label %299

299:                                              ; preds = %294, %264
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul_csqu(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %8 = load double*, double** %4, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = load double, double* %9, align 8
  %11 = fmul double %10, 2.000000e+00
  store double %11, double* %9, align 8
  %12 = load double*, double** %4, align 8
  %13 = getelementptr inbounds double, double* %12, i64 1
  %14 = load double, double* %13, align 8
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %17, %14
  store double %18, double* %16, align 8
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds double, double* %19, i64 2
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %4, align 8
  %23 = getelementptr inbounds double, double* %22, i64 2
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, %21
  store double %25, double* %23, align 8
  store i32 3, i32* %5, align 4
  br label %26

26:                                               ; preds = %62, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load double*, double** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  store double %35, double* %6, align 8
  %36 = load double*, double** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %36, i64 %39
  %41 = load double, double* %40, align 8
  store double %41, double* %7, align 8
  %42 = load double, double* %6, align 8
  %43 = load double, double* %6, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %7, align 8
  %46 = load double, double* %7, align 8
  %47 = fmul double %45, %46
  %48 = fsub double %44, %47
  %49 = load double*, double** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  store double %48, double* %52, align 8
  %53 = load double, double* %6, align 8
  %54 = fmul double 2.000000e+00, %53
  %55 = load double, double* %7, align 8
  %56 = fmul double %54, %55
  %57 = load double*, double** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %57, i64 %60
  store double %56, double* %61, align 8
  br label %62

62:                                               ; preds = %30
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %5, align 4
  br label %26

65:                                               ; preds = %26
  %66 = load double*, double** %4, align 8
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %66, i64 %69
  %71 = load double, double* %70, align 8
  %72 = load double*, double** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %72, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fmul double %77, %71
  store double %78, double* %76, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_get_nfft_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sitofp i32 %7 to double
  store double %8, double* %6, align 8
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load double, double* %6, align 8
  %11 = load double, double* %6, align 8
  %12 = fmul double %11, %10
  store double %12, double* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load double, double* %6, align 8
  %17 = fmul double 0x3CB0000000000000, %16
  %18 = fcmp olt double %17, 1.000000e+00
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %9, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_inv_init(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = call double @mp_unexp_mp2d(i32 %20, i32 %21, i32* %23)
  %25 = fdiv double 1.000000e+00, %24
  store double %25, double* %10, align 8
  br label %26

26:                                               ; preds = %29, %4
  %27 = load double, double* %10, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = sitofp i32 %30 to double
  %32 = load double, double* %10, align 8
  %33 = fmul double %32, %31
  store double %33, double* %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load double, double* %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  call void @mp_unexp_d2mp(i32 %40, i32 %41, double %42, i32* %44)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_inv_newton(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, double* %7, double* %8, i32* %9, double* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca double*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store double* %7, double** %19, align 8
  store double* %8, double** %20, align 8
  store i32* %9, i32** %21, align 8
  store double* %10, double** %22, align 8
  %26 = load i32, i32* %18, align 4
  %27 = ashr i32 %26, 1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %24, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %23, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %24, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %11
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %24, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %23, align 4
  br label %41

41:                                               ; preds = %37, %11
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %24, align 4
  %45 = load i32*, i32** %15, align 8
  call void @mp_round(i32 %42, i32 %43, i32 %44, i32* %45)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load double*, double** %19, align 8
  %53 = load double*, double** %20, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = load double*, double** %22, align 8
  call void @mp_mulh(i32 %46, i32 %47, i32* %48, i32* %49, i32* %50, i32 %51, double* %52, double* %53, i32* %54, double* %55)
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %17, align 8
  call void @mp_load_1(i32 %56, i32 %57, i32* %58)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %17, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i32*, i32** %17, align 8
  call void @mp_sub(i32 %59, i32 %60, i32* %61, i32* %62, i32* %63)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load double*, double** %19, align 8
  %67 = load i32, i32* %24, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load double*, double** %20, align 8
  %72 = load i32*, i32** %21, align 8
  %73 = load double*, double** %22, align 8
  call void @mp_mulh_use_in1fft(i32 %64, i32 %65, double* %66, i32 %67, i32* %68, i32* %69, i32 %70, double* %71, i32* %72, double* %73)
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i32*, i32** %17, align 8
  call void @mp_sub(i32 %74, i32 %75, i32* %76, i32* %77, i32* %78)
  %79 = load i32*, i32** %17, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %25, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %41
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %25, align 4
  br label %90

90:                                               ; preds = %87, %41
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load double*, double** %19, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load double*, double** %20, align 8
  %98 = load i32*, i32** %21, align 8
  %99 = load double*, double** %22, align 8
  call void @mp_mulh_use_in1fft(i32 %91, i32 %92, double* %93, i32 0, i32* %94, i32* %95, i32 %96, double* %97, i32* %98, double* %99)
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %15, align 8
  call void @mp_add(i32 %100, i32 %101, i32* %102, i32* %103, i32* %104)
  %105 = load i32, i32* %25, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_round(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %89

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %27, %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 2
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  br label %17

30:                                               ; preds = %17
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 2, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %30
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %73, %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %76

68:                                               ; preds = %52
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  br label %49

76:                                               ; preds = %62, %49
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 1, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %76
  br label %88

88:                                               ; preds = %87, %30
  br label %89

89:                                               ; preds = %88, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mulh(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, double* %6, double* %7, i32* %8, double* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca double*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store double* %6, double** %17, align 8
  store double* %7, double** %18, align 8
  store i32* %8, i32** %19, align 8
  store double* %9, double** %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load double*, double** %17, align 8
  call void @mp_mul_i2d(i32 %21, i32 %22, i32 %23, i32 0, i32* %24, double* %25)
  %26 = load i32, i32* %16, align 4
  %27 = load double*, double** %17, align 8
  %28 = getelementptr inbounds double, double* %27, i64 1
  %29 = load i32*, i32** %19, align 8
  %30 = load double*, double** %20, align 8
  call void @rdft(i32 %26, i32 1, double* %28, i32* %29, double* %30)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load double*, double** %18, align 8
  call void @mp_mul_i2d(i32 %31, i32 %32, i32 %33, i32 0, i32* %34, double* %35)
  %36 = load i32, i32* %16, align 4
  %37 = load double*, double** %18, align 8
  %38 = getelementptr inbounds double, double* %37, i64 1
  %39 = load i32*, i32** %19, align 8
  %40 = load double*, double** %20, align 8
  call void @rdft(i32 %36, i32 1, double* %38, i32* %39, double* %40)
  %41 = load i32, i32* %16, align 4
  %42 = load double*, double** %17, align 8
  %43 = load double*, double** %18, align 8
  call void @mp_mul_cmul(i32 %41, double* %42, double* %43)
  %44 = load i32, i32* %16, align 4
  %45 = load double*, double** %18, align 8
  %46 = getelementptr inbounds double, double* %45, i64 1
  %47 = load i32*, i32** %19, align 8
  %48 = load double*, double** %20, align 8
  call void @rdft(i32 %44, i32 -1, double* %46, i32* %47, double* %48)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load double*, double** %18, align 8
  %53 = load i32*, i32** %15, align 8
  call void @mp_mul_d2i(i32 %49, i32 %50, i32 %51, double* %52, i32* %53)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_load_1(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 1, i32* %13, align 4
  store i32 3, i32* %7, align 4
  br label %14

14:                                               ; preds = %24, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp sle i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %14

27:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mulh_use_in1fft(i32 %0, i32 %1, double* %2, i32 %3, i32* %4, i32* %5, i32 %6, double* %7, i32* %8, double* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca double*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store double* %2, double** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store double* %7, double** %18, align 8
  store i32* %8, i32** %19, align 8
  store double* %9, double** %20, align 8
  br label %21

21:                                               ; preds = %34, %10
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %14, align 4
  %28 = add nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %14, align 4
  br label %21

37:                                               ; preds = %33, %21
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load double*, double** %18, align 8
  call void @mp_mul_i2d(i32 %38, i32 %39, i32 %40, i32 %41, i32* %42, double* %43)
  %44 = load i32, i32* %17, align 4
  %45 = load double*, double** %18, align 8
  %46 = getelementptr inbounds double, double* %45, i64 1
  %47 = load i32*, i32** %19, align 8
  %48 = load double*, double** %20, align 8
  call void @rdft(i32 %44, i32 1, double* %46, i32* %47, double* %48)
  %49 = load i32, i32* %17, align 4
  %50 = load double*, double** %13, align 8
  %51 = load double*, double** %18, align 8
  call void @mp_mul_cmul(i32 %49, double* %50, double* %51)
  %52 = load i32, i32* %17, align 4
  %53 = load double*, double** %18, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load i32*, i32** %19, align 8
  %56 = load double*, double** %20, align 8
  call void @rdft(i32 %52, i32 -1, double* %54, i32* %55, double* %56)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load double*, double** %18, align 8
  %61 = load i32*, i32** %16, align 8
  call void @mp_mul_d2i(i32 %57, i32 %58, i32 %59, double* %60, i32* %61)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @mp_unexp_mp2d(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sitofp i32 %10 to double
  %12 = fdiv double 1.000000e+00, %11
  store double %12, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load double, double* %8, align 8
  %20 = load double, double* %9, align 8
  %21 = fmul double %19, %20
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sitofp i32 %26 to double
  %28 = fadd double %21, %27
  store double %28, double* %9, align 8
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load double, double* %9, align 8
  ret double %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_unexp_d2mp(i32 %0, i32 %1, double %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %39, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load double, double* %7, align 8
  %17 = fptosi double %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sitofp i32 %24 to double
  store double %25, double* %7, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %6, align 4
  %28 = sitofp i32 %27 to double
  %29 = load double, double* %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sitofp i32 %30 to double
  %32 = fsub double %29, %31
  %33 = fmul double %28, %32
  store double %33, double* %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %11

42:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul_cmuladd(i32 %0, double* %1, double* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %14 = load double*, double** %6, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %7, align 8
  %18 = getelementptr inbounds double, double* %17, i64 1
  %19 = load double, double* %18, align 8
  %20 = fmul double %16, %19
  %21 = load double*, double** %8, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  %23 = load double, double* %22, align 8
  %24 = fadd double %23, %20
  store double %24, double* %22, align 8
  %25 = load double*, double** %6, align 8
  %26 = getelementptr inbounds double, double* %25, i64 2
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %7, align 8
  %29 = getelementptr inbounds double, double* %28, i64 2
  %30 = load double, double* %29, align 8
  %31 = fmul double %27, %30
  %32 = load double*, double** %8, align 8
  %33 = getelementptr inbounds double, double* %32, i64 2
  %34 = load double, double* %33, align 8
  %35 = fadd double %34, %31
  store double %35, double* %33, align 8
  store i32 3, i32* %9, align 4
  br label %36

36:                                               ; preds = %90, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = load double*, double** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  store double %45, double* %10, align 8
  %46 = load double*, double** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %46, i64 %49
  %51 = load double, double* %50, align 8
  store double %51, double* %11, align 8
  %52 = load double*, double** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  store double %56, double* %12, align 8
  %57 = load double*, double** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %57, i64 %60
  %62 = load double, double* %61, align 8
  store double %62, double* %13, align 8
  %63 = load double, double* %10, align 8
  %64 = load double, double* %12, align 8
  %65 = fmul double %63, %64
  %66 = load double, double* %11, align 8
  %67 = load double, double* %13, align 8
  %68 = fmul double %66, %67
  %69 = fsub double %65, %68
  %70 = load double*, double** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fadd double %74, %69
  store double %75, double* %73, align 8
  %76 = load double, double* %10, align 8
  %77 = load double, double* %13, align 8
  %78 = fmul double %76, %77
  %79 = load double, double* %11, align 8
  %80 = load double, double* %12, align 8
  %81 = fmul double %79, %80
  %82 = fadd double %78, %81
  %83 = load double*, double** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %83, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fadd double %88, %82
  store double %89, double* %87, align 8
  br label %90

90:                                               ; preds = %40
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %9, align 4
  br label %36

93:                                               ; preds = %36
  %94 = load double*, double** %6, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %94, i64 %97
  %99 = load double, double* %98, align 8
  %100 = load double*, double** %7, align 8
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %100, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fmul double %99, %105
  %107 = load double*, double** %8, align 8
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %107, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fadd double %112, %106
  store double %113, double* %111, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_unexp_add(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %6
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %18
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %34, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -1, i32 0
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %82, %28
  %50 = load i32, i32* %13, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %58, %64
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 -1, i32 0
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %15, align 4
  %76 = and i32 %74, %75
  %77 = sub nsw i32 %73, %76
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %52
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %13, align 4
  br label %49

85:                                               ; preds = %49
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 0, %86
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  br label %196

90:                                               ; preds = %18, %6
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %133, %96
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %108, %115
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 -1, i32 0
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %125, %126
  %128 = sub nsw i32 %124, %127
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  br label %133

133:                                              ; preds = %103
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %13, align 4
  br label %99

136:                                              ; preds = %99
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %164, %136
  %140 = load i32, i32* %13, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %139
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp sge i32 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 -1, i32 0
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %15, align 4
  %158 = and i32 %156, %157
  %159 = sub nsw i32 %155, %158
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %142
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %13, align 4
  br label %139

167:                                              ; preds = %139
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %195

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %187, %170
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %176
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %13, align 4
  br label %173

190:                                              ; preds = %173
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 0, %191
  %193 = load i32*, i32** %12, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %190, %167
  br label %196

196:                                              ; preds = %195, %85
  %197 = load i32, i32* %15, align 4
  %198 = sub nsw i32 0, %197
  ret i32 %198
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_unsgn_cmp(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %9

33:                                               ; preds = %16
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_unexp_sub(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %6
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %58, %22
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %34, %41
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 -1, i32 0
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %15, align 4
  %52 = and i32 %50, %51
  %53 = add nsw i32 %49, %52
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %13, align 4
  br label %25

61:                                               ; preds = %25
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %88, %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 -1, i32 0
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %15, align 4
  %82 = and i32 %80, %81
  %83 = add nsw i32 %79, %82
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %13, align 4
  br label %64

91:                                               ; preds = %64
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %108, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br label %103

103:                                              ; preds = %96, %92
  %104 = phi i1 [ false, %92 ], [ %102, %96 ]
  br i1 %104, label %105, label %111

105:                                              ; preds = %103
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %92

111:                                              ; preds = %103
  %112 = load i32, i32* %16, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %157

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %137, %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %16, align 4
  %123 = sub nsw i32 %121, %122
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %125
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %119

140:                                              ; preds = %119
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %153, %140
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %144

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %114, %111
  %158 = load i32, i32* %16, align 4
  ret i32 %158
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_unsgn_imul(i32 %0, double %1, i32* %2, double %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store i32* %2, i32** %8, align 8
  store double %3, double* %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load double, double* %7, align 8
  %17 = fdiv double 1.000000e+00, %16
  store double %17, double* %15, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %50, %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load double, double* %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sitofp i32 %28 to double
  %30 = fmul double %23, %29
  %31 = load i32, i32* %12, align 4
  %32 = sitofp i32 %31 to double
  %33 = fadd double %30, %32
  %34 = fadd double %33, 5.000000e-01
  store double %34, double* %14, align 8
  %35 = load double, double* %15, align 8
  %36 = load double, double* %14, align 8
  %37 = fmul double %35, %36
  %38 = fptosi double %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load double, double* %14, align 8
  %40 = load double, double* %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sitofp i32 %41 to double
  %43 = fmul double %40, %42
  %44 = fsub double %39, %43
  %45 = fptosi double %44 to i32
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  br label %19

53:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sitofp i32 %54 to double
  %56 = fadd double %55, 5.000000e-01
  store double %56, double* %14, align 8
  br label %57

57:                                               ; preds = %60, %53
  %58 = load double, double* %14, align 8
  %59 = fcmp ogt double %58, 1.000000e+00
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load double, double* %15, align 8
  %62 = load double, double* %14, align 8
  %63 = fmul double %62, %61
  store double %63, double* %14, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %57

66:                                               ; preds = %57
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %140

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load double, double* %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sitofp i32 %83 to double
  %85 = fmul double %82, %84
  %86 = fadd double %85, 5.000000e-01
  %87 = fptosi double %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %13, align 4
  br label %77

90:                                               ; preds = %77
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %109, %90
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = icmp sge i32 %93, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %11, align 4
  br label %92

112:                                              ; preds = %92
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %136, %112
  %115 = load i32, i32* %11, align 4
  %116 = icmp sge i32 %115, 1
  br i1 %116, label %117, label %139

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = sitofp i32 %118 to double
  %120 = fadd double %119, 5.000000e-01
  store double %120, double* %14, align 8
  %121 = load double, double* %15, align 8
  %122 = load double, double* %14, align 8
  %123 = fmul double %121, %122
  %124 = fptosi double %123 to i32
  store i32 %124, i32* %12, align 4
  %125 = load double, double* %14, align 8
  %126 = load double, double* %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sitofp i32 %127 to double
  %129 = fmul double %126, %128
  %130 = fsub double %125, %129
  %131 = fptosi double %130 to i32
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %11, align 4
  br label %114

139:                                              ; preds = %114
  br label %140

140:                                              ; preds = %139, %66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_sqrt_init(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 1, i32* %14, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = call double @mp_unexp_mp2d(i32 %20, i32 %21, i32* %23)
  store double %24, double* %12, align 8
  %25 = load i32, i32* %11, align 4
  %26 = srem i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = sitofp i32 %29 to double
  %31 = load double, double* %12, align 8
  %32 = fmul double %31, %30
  store double %32, double* %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %28, %5
  %36 = load i32, i32* %11, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %11, align 4
  %38 = load double, double* %12, align 8
  %39 = call double @sqrt(double %38) #4
  store double %39, double* %12, align 8
  %40 = load double, double* %12, align 8
  %41 = fcmp olt double %40, 1.000000e+00
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = sitofp i32 %43 to double
  %45 = load double, double* %12, align 8
  %46 = fmul double %45, %44
  store double %46, double* %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load double, double* %12, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  call void @mp_unexp_d2mp(i32 %53, i32 %54, double %55, i32* %57)
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load double, double* %12, align 8
  %61 = fdiv double 1.000000e+00, %60
  store double %61, double* %12, align 8
  br label %62

62:                                               ; preds = %65, %49
  %63 = load double, double* %12, align 8
  %64 = fcmp olt double %63, 1.000000e+00
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = sitofp i32 %66 to double
  %68 = load double, double* %12, align 8
  %69 = fmul double %68, %67
  store double %69, double* %12, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  br label %62

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load double, double* %12, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  call void @mp_unexp_d2mp(i32 %76, i32 %77, double %78, i32* %80)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_sqrt_newton(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, double* %7, double* %8, i32* %9, double* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store double* %7, double** %20, align 8
  store double* %8, double** %21, align 8
  store i32* %9, i32** %22, align 8
  store double* %10, double** %23, align 8
  store i32* %11, i32** %24, align 8
  %29 = load i32, i32* %19, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* %26, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %27, align 4
  %33 = load i32, i32* %26, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %12
  store i32 2, i32* %26, align 4
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, i32* %13, align 4
  %38 = sdiv i32 %37, 2
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %25, align 4
  %40 = load i32, i32* %25, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %27, align 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %27, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %25, align 4
  br label %49

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %26, align 4
  %53 = ashr i32 %52, 1
  %54 = add nsw i32 %53, 1
  %55 = load i32*, i32** %17, align 8
  call void @mp_round(i32 %50, i32 %51, i32 %54, i32* %55)
  %56 = load i32*, i32** %24, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %26, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load i32, i32* %25, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %17, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = load i32, i32* %26, align 4
  %66 = load double*, double** %20, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = load double*, double** %23, align 8
  call void @mp_squh(i32 %61, i32 %62, i32* %63, i32* %64, i32 %65, double* %66, i32* %67, double* %68)
  br label %77

69:                                               ; preds = %49
  %70 = load i32, i32* %25, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load double*, double** %20, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %26, align 4
  %75 = load i32*, i32** %22, align 8
  %76 = load double*, double** %23, align 8
  call void @mp_squh_use_in1fft(i32 %70, i32 %71, double* %72, i32* %73, i32 %74, i32* %75, double* %76)
  br label %77

77:                                               ; preds = %69, %60
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %27, align 4
  %81 = load i32*, i32** %16, align 8
  call void @mp_round(i32 %78, i32 %79, i32 %80, i32* %81)
  %82 = load i32, i32* %25, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load double*, double** %20, align 8
  %89 = load double*, double** %21, align 8
  %90 = load i32*, i32** %22, align 8
  %91 = load double*, double** %23, align 8
  call void @mp_mulh(i32 %82, i32 %83, i32* %84, i32* %85, i32* %86, i32 %87, double* %88, double* %89, i32* %90, double* %91)
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = load i32*, i32** %18, align 8
  call void @mp_sub(i32 %92, i32 %93, i32* %94, i32* %95, i32* %96)
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = load i32*, i32** %17, align 8
  call void @mp_add(i32 %97, i32 %98, i32* %99, i32* %100, i32* %101)
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load double*, double** %20, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %19, align 4
  %107 = load i32*, i32** %22, align 8
  %108 = load double*, double** %23, align 8
  call void @mp_squh_use_in1fft(i32 %102, i32 %103, double* %104, i32* %105, i32 %106, i32* %107, double* %108)
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %15, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = load i32*, i32** %18, align 8
  call void @mp_sub(i32 %109, i32 %110, i32* %111, i32* %112, i32* %113)
  %114 = load i32*, i32** %15, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %28, align 4
  %121 = load i32*, i32** %15, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %18, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %77
  %129 = load i32, i32* %28, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %28, align 4
  br label %131

131:                                              ; preds = %128, %77
  %132 = load i32*, i32** %18, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %28, align 4
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %27, align 4
  %143 = load i32*, i32** %17, align 8
  call void @mp_round(i32 %140, i32 %141, i32 %142, i32* %143)
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32*, i32** %17, align 8
  %147 = load i32*, i32** %18, align 8
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* %19, align 4
  %150 = load double*, double** %20, align 8
  %151 = load double*, double** %21, align 8
  %152 = load i32*, i32** %22, align 8
  %153 = load double*, double** %23, align 8
  call void @mp_mulh(i32 %144, i32 %145, i32* %146, i32* %147, i32* %148, i32 %149, double* %150, double* %151, i32* %152, double* %153)
  %154 = load i32, i32* %19, align 4
  %155 = load i32*, i32** %24, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = load i32*, i32** %18, align 8
  call void @mp_idiv_2(i32 %156, i32 %157, i32* %158, i32* %159)
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32*, i32** %16, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = load i32*, i32** %16, align 8
  call void @mp_add(i32 %160, i32 %161, i32* %162, i32* %163, i32* %164)
  %165 = load i32, i32* %28, align 4
  ret i32 %165
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_squh_use_in1fft(i32 %0, i32 %1, double* %2, i32* %3, i32 %4, i32* %5, double* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca double*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store double* %2, double** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store double* %6, double** %14, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load double*, double** %10, align 8
  call void @mp_mul_csqu(i32 %15, double* %16)
  %17 = load i32, i32* %12, align 4
  %18 = load double*, double** %10, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load i32*, i32** %13, align 8
  %21 = load double*, double** %14, align 8
  call void @rdft(i32 %17, i32 -1, double* %19, i32* %20, double* %21)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load double*, double** %10, align 8
  %26 = load i32*, i32** %11, align 8
  call void @mp_mul_d2i(i32 %22, i32 %23, i32 %24, double* %25, i32* %26)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @mp_mul_d2i_test(i32 %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double 2.000000e+00, %17
  store double %18, double* %12, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double 1.000000e+00, %20
  store double %21, double* %13, align 8
  %22 = load double, double* %13, align 8
  %23 = load double, double* %13, align 8
  %24 = fmul double %22, %23
  store double %24, double* %14, align 8
  %25 = load double*, double** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %25, i64 %28
  %30 = load double, double* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sitofp i32 %31 to double
  %33 = fmul double %30, %32
  %34 = fmul double %33, 5.000000e-01
  store double %34, double* %11, align 8
  %35 = load double, double* %11, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load double, double* %11, align 8
  %39 = fneg double %38
  store double %39, double* %11, align 8
  br label %40

40:                                               ; preds = %37, %3
  %41 = load double*, double** %6, align 8
  %42 = getelementptr inbounds double, double* %41, i64 1
  %43 = load double, double* %42, align 8
  %44 = load double, double* %11, align 8
  %45 = fsub double %43, %44
  %46 = load double*, double** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %46, i64 %49
  store double %45, double* %50, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %114, %40
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %117

56:                                               ; preds = %53
  %57 = load double, double* %14, align 8
  %58 = load double, double* %12, align 8
  %59 = load double*, double** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fmul double %58, %63
  %65 = load i32, i32* %8, align 4
  %66 = sitofp i32 %65 to double
  %67 = fadd double %64, %66
  %68 = fadd double %67, 5.000000e-01
  %69 = fmul double %57, %68
  store double %69, double* %11, align 8
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %8, align 4
  %71 = load double, double* %11, align 8
  %72 = fptosi double %71 to i32
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sitofp i32 %74 to double
  %76 = load double, double* %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sitofp i32 %77 to double
  %79 = fsub double %76, %78
  %80 = fmul double %75, %79
  store double %80, double* %11, align 8
  %81 = load double, double* %11, align 8
  %82 = fptosi double %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sitofp i32 %83 to double
  %85 = load double, double* %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sitofp i32 %86 to double
  %88 = fsub double %85, %87
  %89 = fmul double %84, %88
  store double %89, double* %11, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load double, double* %11, align 8
  %94 = fsub double %93, 5.000000e-01
  %95 = load double, double* %11, align 8
  %96 = fptosi double %95 to i32
  %97 = sitofp i32 %96 to double
  %98 = fsub double %94, %97
  store double %98, double* %11, align 8
  %99 = load double, double* %11, align 8
  %100 = load double, double* %15, align 8
  %101 = fcmp ogt double %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %56
  %103 = load double, double* %11, align 8
  store double %103, double* %15, align 8
  br label %113

104:                                              ; preds = %56
  %105 = load double, double* %11, align 8
  %106 = fneg double %105
  %107 = load double, double* %15, align 8
  %108 = fcmp ogt double %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load double, double* %11, align 8
  %111 = fneg double %110
  store double %111, double* %15, align 8
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %7, align 4
  br label %53

117:                                              ; preds = %53
  %118 = load double, double* %15, align 8
  ret double %118
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_cmp(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %39

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @mp_unsgn_cmp(i32 %32, i32* %34, i32* %36)
  %38 = mul nsw i32 %31, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %28, %26, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
