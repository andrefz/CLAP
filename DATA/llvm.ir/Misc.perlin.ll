; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1
@p = internal global [512 x i32] zeroinitializer, align 16
@permutation = internal global [256 x i32] [i32 151, i32 160, i32 137, i32 91, i32 90, i32 15, i32 131, i32 13, i32 201, i32 95, i32 96, i32 53, i32 194, i32 233, i32 7, i32 225, i32 140, i32 36, i32 103, i32 30, i32 69, i32 142, i32 8, i32 99, i32 37, i32 240, i32 21, i32 10, i32 23, i32 190, i32 6, i32 148, i32 247, i32 120, i32 234, i32 75, i32 0, i32 26, i32 197, i32 62, i32 94, i32 252, i32 219, i32 203, i32 117, i32 35, i32 11, i32 32, i32 57, i32 177, i32 33, i32 88, i32 237, i32 149, i32 56, i32 87, i32 174, i32 20, i32 125, i32 136, i32 171, i32 168, i32 68, i32 175, i32 74, i32 165, i32 71, i32 134, i32 139, i32 48, i32 27, i32 166, i32 77, i32 146, i32 158, i32 231, i32 83, i32 111, i32 229, i32 122, i32 60, i32 211, i32 133, i32 230, i32 220, i32 105, i32 92, i32 41, i32 55, i32 46, i32 245, i32 40, i32 244, i32 102, i32 143, i32 54, i32 65, i32 25, i32 63, i32 161, i32 1, i32 216, i32 80, i32 73, i32 209, i32 76, i32 132, i32 187, i32 208, i32 89, i32 18, i32 169, i32 200, i32 196, i32 135, i32 130, i32 116, i32 188, i32 159, i32 86, i32 164, i32 100, i32 109, i32 198, i32 173, i32 186, i32 3, i32 64, i32 52, i32 217, i32 226, i32 250, i32 124, i32 123, i32 5, i32 202, i32 38, i32 147, i32 118, i32 126, i32 255, i32 82, i32 85, i32 212, i32 207, i32 206, i32 59, i32 227, i32 47, i32 16, i32 58, i32 17, i32 182, i32 189, i32 28, i32 42, i32 223, i32 183, i32 170, i32 213, i32 119, i32 248, i32 152, i32 2, i32 44, i32 154, i32 163, i32 70, i32 221, i32 153, i32 101, i32 155, i32 167, i32 43, i32 172, i32 9, i32 129, i32 22, i32 39, i32 253, i32 19, i32 98, i32 108, i32 110, i32 79, i32 113, i32 224, i32 232, i32 178, i32 185, i32 112, i32 104, i32 218, i32 246, i32 97, i32 228, i32 251, i32 34, i32 242, i32 193, i32 238, i32 210, i32 144, i32 12, i32 191, i32 179, i32 162, i32 241, i32 81, i32 51, i32 145, i32 235, i32 249, i32 14, i32 239, i32 107, i32 49, i32 192, i32 214, i32 31, i32 181, i32 199, i32 106, i32 157, i32 184, i32 84, i32 204, i32 176, i32 115, i32 121, i32 50, i32 45, i32 127, i32 4, i32 150, i32 254, i32 138, i32 236, i32 205, i32 93, i32 222, i32 114, i32 67, i32 29, i32 24, i32 72, i32 243, i32 141, i32 128, i32 195, i32 78, i32 66, i32 215, i32 61, i32 156, i32 180], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 @init()
  store double 0.000000e+00, double* %5, align 8
  store double 0xC0C62C48F5C28F5C, double* %2, align 8
  br label %7

7:                                                ; preds = %33, %0
  %8 = load double, double* %2, align 8
  %9 = fcmp olt double %8, 0x40D702647AE147AE
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  store double 0xC075A1F9DB22D0E5, double* %3, align 8
  br label %11

11:                                               ; preds = %29, %10
  %12 = load double, double* %3, align 8
  %13 = fcmp olt double %12, 1.241240e+02
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  store double -1.562350e+02, double* %4, align 8
  br label %15

15:                                               ; preds = %25, %14
  %16 = load double, double* %3, align 8
  %17 = fcmp olt double %16, 2.323450e+01
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load double, double* %2, align 8
  %20 = load double, double* %3, align 8
  %21 = load double, double* %4, align 8
  %22 = call double @noise(double %19, double %20, double %21)
  %23 = load double, double* %5, align 8
  %24 = fadd double %23, %22
  store double %24, double* %5, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load double, double* %3, align 8
  %27 = fadd double %26, 2.450000e+00
  store double %27, double* %3, align 8
  br label %15

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load double, double* %3, align 8
  %31 = fadd double %30, 1.432500e+00
  store double %31, double* %3, align 8
  br label %11

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32
  %34 = load double, double* %2, align 8
  %35 = fadd double %34, 1.235000e-01
  store double %35, double* %2, align 8
  br label %7

36:                                               ; preds = %7
  %37 = load double, double* %5, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %37)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* @permutation, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 256, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %16
  store i32 %10, i32* %17, align 4
  br label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %3

21:                                               ; preds = %3
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define internal double @noise(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %19 = load double, double* %4, align 8
  %20 = call double @llvm.floor.f64(double %19)
  %21 = fptosi double %20 to i32
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load double, double* %5, align 8
  %24 = call double @llvm.floor.f64(double %23)
  %25 = fptosi double %24 to i32
  %26 = and i32 %25, 255
  store i32 %26, i32* %8, align 4
  %27 = load double, double* %6, align 8
  %28 = call double @llvm.floor.f64(double %27)
  %29 = fptosi double %28 to i32
  %30 = and i32 %29, 255
  store i32 %30, i32* %9, align 4
  %31 = load double, double* %4, align 8
  %32 = call double @llvm.floor.f64(double %31)
  %33 = load double, double* %4, align 8
  %34 = fsub double %33, %32
  store double %34, double* %4, align 8
  %35 = load double, double* %5, align 8
  %36 = call double @llvm.floor.f64(double %35)
  %37 = load double, double* %5, align 8
  %38 = fsub double %37, %36
  store double %38, double* %5, align 8
  %39 = load double, double* %6, align 8
  %40 = call double @llvm.floor.f64(double %39)
  %41 = load double, double* %6, align 8
  %42 = fsub double %41, %40
  store double %42, double* %6, align 8
  %43 = load double, double* %4, align 8
  %44 = call double @fade(double %43)
  store double %44, double* %10, align 8
  %45 = load double, double* %5, align 8
  %46 = call double @fade(double %45)
  store double %46, double* %11, align 8
  %47 = load double, double* %6, align 8
  %48 = call double @fade(double %47)
  store double %48, double* %12, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %18, align 4
  %88 = load double, double* %12, align 8
  %89 = load double, double* %11, align 8
  %90 = load double, double* %10, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load double, double* %4, align 8
  %96 = load double, double* %5, align 8
  %97 = load double, double* %6, align 8
  %98 = call double @grad(i32 %94, double %95, double %96, double %97)
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load double, double* %4, align 8
  %104 = fsub double %103, 1.000000e+00
  %105 = load double, double* %5, align 8
  %106 = load double, double* %6, align 8
  %107 = call double @grad(i32 %102, double %104, double %105, double %106)
  %108 = call double @lerp(double %90, double %98, double %107)
  %109 = load double, double* %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load double, double* %4, align 8
  %115 = load double, double* %5, align 8
  %116 = fsub double %115, 1.000000e+00
  %117 = load double, double* %6, align 8
  %118 = call double @grad(i32 %113, double %114, double %116, double %117)
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load double, double* %4, align 8
  %124 = fsub double %123, 1.000000e+00
  %125 = load double, double* %5, align 8
  %126 = fsub double %125, 1.000000e+00
  %127 = load double, double* %6, align 8
  %128 = call double @grad(i32 %122, double %124, double %126, double %127)
  %129 = call double @lerp(double %109, double %118, double %128)
  %130 = call double @lerp(double %89, double %108, double %129)
  %131 = load double, double* %11, align 8
  %132 = load double, double* %10, align 8
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load double, double* %4, align 8
  %139 = load double, double* %5, align 8
  %140 = load double, double* %6, align 8
  %141 = fsub double %140, 1.000000e+00
  %142 = call double @grad(i32 %137, double %138, double %139, double %141)
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load double, double* %4, align 8
  %149 = fsub double %148, 1.000000e+00
  %150 = load double, double* %5, align 8
  %151 = load double, double* %6, align 8
  %152 = fsub double %151, 1.000000e+00
  %153 = call double @grad(i32 %147, double %149, double %150, double %152)
  %154 = call double @lerp(double %132, double %142, double %153)
  %155 = load double, double* %10, align 8
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load double, double* %4, align 8
  %162 = load double, double* %5, align 8
  %163 = fsub double %162, 1.000000e+00
  %164 = load double, double* %6, align 8
  %165 = fsub double %164, 1.000000e+00
  %166 = call double @grad(i32 %160, double %161, double %163, double %165)
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load double, double* %4, align 8
  %173 = fsub double %172, 1.000000e+00
  %174 = load double, double* %5, align 8
  %175 = fsub double %174, 1.000000e+00
  %176 = load double, double* %6, align 8
  %177 = fsub double %176, 1.000000e+00
  %178 = call double @grad(i32 %171, double %173, double %175, double %177)
  %179 = call double @lerp(double %155, double %166, double %178)
  %180 = call double @lerp(double %131, double %154, double %179)
  %181 = call double @lerp(double %88, double %130, double %180)
  ret double %181
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define internal double @fade(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fmul double %3, %4
  %6 = load double, double* %2, align 8
  %7 = fmul double %5, %6
  %8 = load double, double* %2, align 8
  %9 = load double, double* %2, align 8
  %10 = fmul double %9, 6.000000e+00
  %11 = fsub double %10, 1.500000e+01
  %12 = fmul double %8, %11
  %13 = fadd double %12, 1.000000e+01
  %14 = fmul double %7, %13
  ret double %14
}

; Function Attrs: noinline nounwind uwtable
define internal double @grad(i32 %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load double, double* %6, align 8
  br label %20

18:                                               ; preds = %4
  %19 = load double, double* %7, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi double [ %17, %16 ], [ %19, %18 ]
  store double %21, double* %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load double, double* %7, align 8
  br label %38

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 14
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load double, double* %6, align 8
  br label %36

34:                                               ; preds = %29
  %35 = load double, double* %8, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi double [ %33, %32 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi double [ %25, %24 ], [ %37, %36 ]
  store double %39, double* %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load double, double* %10, align 8
  br label %48

45:                                               ; preds = %38
  %46 = load double, double* %10, align 8
  %47 = fneg double %46
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi double [ %44, %43 ], [ %47, %45 ]
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load double, double* %11, align 8
  br label %58

55:                                               ; preds = %48
  %56 = load double, double* %11, align 8
  %57 = fneg double %56
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi double [ %54, %53 ], [ %57, %55 ]
  %60 = fadd double %49, %59
  ret double %60
}

; Function Attrs: noinline nounwind uwtable
define internal double @lerp(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %5, align 8
  %8 = load double, double* %4, align 8
  %9 = load double, double* %6, align 8
  %10 = load double, double* %5, align 8
  %11 = fsub double %9, %10
  %12 = fmul double %8, %11
  %13 = fadd double %7, %12
  ret double %13
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
