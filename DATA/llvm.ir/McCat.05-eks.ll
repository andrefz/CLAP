; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [30 x i8] c"m=%i, rowstart=%i, rowend=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1
@A = common dso_local global double** null, align 8
@U = common dso_local global double** null, align 8
@Q = common dso_local global double** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.1.4 = private unnamed_addr constant [4 x i8] c"%i\00\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%i %e\0A\00", align 1
@.str.3.5 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"filename = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Step: %i !! The frobenius norm of X-T is %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Is A symmetric? %e\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1.27 = private unnamed_addr constant [4 x i8] c"%f \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @HouseMatrix(double** %0, double* %1, i32 %2, i32 %3) #0 {
  %5 = alloca double**, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store double** %0, double*** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load double*, double** %6, align 8
  %13 = load double*, double** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call double @xty(double* %12, double* %13, i32 %14, i32 %15)
  %17 = fdiv double 2.000000e+00, %16
  store double %17, double* %11, align 8
  %18 = load double**, double*** %5, align 8
  call void @MakeID(double** %18)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %58, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %54, %24
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load double, double* %11, align 8
  %32 = load double*, double** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %31, %36
  %38 = load double*, double** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  %42 = load double, double* %41, align 8
  %43 = fmul double %37, %42
  %44 = load double**, double*** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double*, double** %44, i64 %46
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fsub double %52, %43
  store double %53, double* %51, align 8
  br label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %26

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %20

61:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ApplyHouse(double** %0, double* %1, i32 %2, i32 %3) #0 {
  %5 = alloca double**, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double**, align 8
  %10 = alloca double**, align 8
  store double** %0, double*** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call double** @newMatrix()
  store double** %11, double*** %9, align 8
  %12 = call double** @newMatrix()
  store double** %12, double*** %10, align 8
  %13 = load double**, double*** %10, align 8
  %14 = load double*, double** %6, align 8
  call void @HouseMatrix(double** %13, double* %14, i32 0, i32 50)
  %15 = load double**, double*** %9, align 8
  %16 = load double**, double*** %5, align 8
  %17 = load double**, double*** %10, align 8
  call void @matrixMult(double** %15, double** %16, double** %17)
  %18 = load double**, double*** %5, align 8
  %19 = load double**, double*** %10, align 8
  %20 = load double**, double*** %9, align 8
  call void @matrixMult(double** %18, double** %19, double** %20)
  %21 = load double**, double*** %10, align 8
  call void @freeMatrix(double** %21)
  %22 = load double**, double*** %9, align 8
  call void @freeMatrix(double** %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @WeirdHouse(double** %0, double* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca double**, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double** %0, double*** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store double 0.000000e+00, double* %12, align 8
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %41, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load double**, double*** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double*, double** %20, i64 %22
  %24 = load double*, double** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = load double**, double*** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double*, double** %29, i64 %31
  %33 = load double*, double** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fmul double %28, %37
  %39 = load double, double* %12, align 8
  %40 = fadd double %39, %38
  store double %40, double* %12, align 8
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load double**, double*** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double*, double** %45, i64 %47
  %49 = load double*, double** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load double**, double*** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double*, double** %54, i64 %56
  %58 = load double*, double** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = call i32 @sign(double %62)
  %64 = sitofp i32 %63 to double
  %65 = load double, double* %12, align 8
  %66 = call double @sqrt(double %65) #5
  %67 = fmul double %64, %66
  %68 = fadd double %53, %67
  %69 = fdiv double 1.000000e+00, %68
  store double %69, double* %13, align 8
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %91, %44
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load double**, double*** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double*, double** %76, i64 %78
  %80 = load double*, double** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load double, double* %13, align 8
  %86 = fmul double %84, %85
  %87 = load double*, double** %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  store double %86, double* %90, align 8
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %71

94:                                               ; preds = %71
  %95 = load double*, double** %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  store double 1.000000e+00, double* %98, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double** @DivideAndSolve(double** %0, i32 %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca double**, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double**, align 8
  %30 = alloca double**, align 8
  %31 = alloca double**, align 8
  %32 = alloca double**, align 8
  %33 = alloca double**, align 8
  %34 = alloca double**, align 8
  %35 = alloca double**, align 8
  store double** %0, double*** %4, align 8
  store i32 %1, i32* %5, align 4
  %36 = call double** @newIdMatrix()
  store double** %36, double*** %34, align 8
  %37 = call double** @newMatrix()
  store double** %37, double*** %35, align 8
  %38 = call double* @newVector()
  store double* %38, double** %24, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = sitofp i32 %40 to double
  store double %41, double* %13, align 8
  %42 = load double, double* %13, align 8
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %44

44:                                               ; preds = %272, %2
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %45, 51
  br i1 %46, label %47, label %283

47:                                               ; preds = %44
  %48 = load i32, i32* %20, align 4
  %49 = sitofp i32 %48 to double
  %50 = load double, double* %13, align 8
  %51 = fadd double %49, %50
  %52 = fsub double %51, 1.000000e+00
  %53 = fcmp olt double %52, 5.000000e+01
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* %20, align 4
  %56 = sitofp i32 %55 to double
  %57 = load double, double* %13, align 8
  %58 = fadd double %56, %57
  %59 = fsub double %58, 1.000000e+00
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi double [ %59, %54 ], [ 5.000000e+01, %60 ]
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %20, align 4
  %65 = sitofp i32 %64 to double
  %66 = load double, double* %13, align 8
  %67 = fsub double %65, %66
  %68 = fptosi double %67 to i32
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %21, align 4
  %70 = sitofp i32 %69 to double
  %71 = load double, double* %13, align 8
  %72 = fadd double %70, %71
  %73 = fsub double %72, 1.000000e+00
  %74 = fptosi double %73 to i32
  store i32 %74, i32* %23, align 4
  %75 = load i32, i32* %21, align 4
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %131, %61
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %23, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %134

80:                                               ; preds = %76
  %81 = load double**, double*** %4, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %22, align 4
  %85 = call double @norm(double** %81, i32 %82, i32 %83, i32 %84)
  %86 = fcmp une double %85, 0.000000e+00
  br i1 %86, label %87, label %124

87:                                               ; preds = %80
  %88 = load double**, double*** %4, align 8
  %89 = load double*, double** %24, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %22, align 4
  call void @House(double** %88, double* %89, i32 %90, i32 %91, i32 %92)
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %102, %87
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load double*, double** %24, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  store double 0.000000e+00, double* %101, align 8
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %93

105:                                              ; preds = %93
  %106 = load i32, i32* %22, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %116, %105
  %109 = load i32, i32* %19, align 4
  %110 = icmp slt i32 %109, 51
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load double*, double** %24, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  store double 0.000000e+00, double* %115, align 8
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %108

119:                                              ; preds = %108
  %120 = load double**, double*** %4, align 8
  %121 = load double*, double** %24, align 8
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %22, align 4
  call void @ApplyHouse(double** %120, double* %121, i32 %122, i32 %123)
  br label %124

124:                                              ; preds = %119, %80
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %22, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %126, i32 %127)
  %129 = load double*, double** %24, align 8
  call void @printVector(double* %129)
  %130 = load double**, double*** %4, align 8
  call void @printMatrix(double** %130)
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %76

134:                                              ; preds = %76
  %135 = load double**, double*** %4, align 8
  %136 = load double*, double** %24, align 8
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %23, align 4
  call void @WeirdHouse(double** %135, double* %136, i32 %137, i32 %138, i32 %139)
  %140 = load double**, double*** %4, align 8
  %141 = load double*, double** %24, align 8
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %23, align 4
  call void @ApplyHouse(double** %140, double* %141, i32 %142, i32 %143)
  br label %144

144:                                              ; preds = %177, %134
  %145 = load double**, double*** %4, align 8
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double*, double** %145, i64 %147
  %149 = load double*, double** %148, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %149, i64 %151
  %153 = load double, double* %152, align 8
  %154 = load double**, double*** %4, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double*, double** %154, i64 %157
  %159 = load double*, double** %158, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %159, i64 %161
  %163 = load double, double* %162, align 8
  %164 = load double**, double*** %4, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double*, double** %164, i64 %166
  %168 = load double*, double** %167, align 8
  %169 = load i32, i32* %23, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %168, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fsub double %163, %173
  %175 = fmul double %174, 1.000000e-10
  %176 = fcmp ogt double %153, %175
  br i1 %176, label %177, label %272

177:                                              ; preds = %144
  %178 = load double**, double*** %4, align 8
  call void @printMatrix(double** %178)
  %179 = load double**, double*** %4, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double*, double** %179, i64 %182
  %184 = load double*, double** %183, align 8
  %185 = load i32, i32* %23, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  %188 = load double, double* %187, align 8
  %189 = load double**, double*** %4, align 8
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double*, double** %189, i64 %191
  %193 = load double*, double** %192, align 8
  %194 = load i32, i32* %23, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %193, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fsub double %188, %198
  %200 = fdiv double %199, 2.000000e+00
  store double %200, double* %8, align 8
  %201 = load double**, double*** %4, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double*, double** %201, i64 %203
  %205 = load double*, double** %204, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %205, i64 %207
  %209 = load double, double* %208, align 8
  store double %209, double* %7, align 8
  %210 = load double**, double*** %4, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double*, double** %210, i64 %212
  %214 = load double*, double** %213, align 8
  %215 = load i32, i32* %23, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %214, i64 %217
  %219 = load double, double* %218, align 8
  %220 = load double, double* %8, align 8
  %221 = fadd double %219, %220
  %222 = load double, double* %8, align 8
  %223 = call i32 @sign(double %222)
  %224 = sitofp i32 %223 to double
  %225 = load double, double* %8, align 8
  %226 = load double, double* %8, align 8
  %227 = fmul double %225, %226
  %228 = load double, double* %7, align 8
  %229 = load double, double* %7, align 8
  %230 = fmul double %228, %229
  %231 = fadd double %227, %230
  %232 = call double @sqrt(double %231) #5
  %233 = fmul double %224, %232
  %234 = fsub double %221, %233
  store double %234, double* %12, align 8
  %235 = load double**, double*** %4, align 8
  %236 = load i32, i32* %20, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds double*, double** %235, i64 %238
  %240 = load double*, double** %239, align 8
  %241 = load i32, i32* %23, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double, double* %240, i64 %242
  %244 = load double, double* %243, align 8
  %245 = load double, double* %12, align 8
  %246 = fsub double %244, %245
  %247 = load double**, double*** %4, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double*, double** %247, i64 %249
  %251 = load double*, double** %250, align 8
  %252 = load i32, i32* %23, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %251, i64 %253
  %255 = load double, double* %254, align 8
  call void @Givens(double %246, double %255, double* %10, double* %11)
  %256 = load double**, double*** %4, align 8
  %257 = load double, double* %10, align 8
  %258 = load double, double* %11, align 8
  %259 = load i32, i32* %20, align 4
  %260 = sub nsw i32 %259, 1
  %261 = load i32, i32* %20, align 4
  call void @ApplyGivens(double** %256, double %257, double %258, i32 %260, i32 %261, i32 0, i32 50)
  %262 = load double**, double*** %4, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double*, double** %262, i64 %264
  %266 = load double*, double** %265, align 8
  %267 = load i32, i32* %23, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds double, double* %266, i64 %268
  %270 = load double, double* %269, align 8
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double %270)
  br label %144

272:                                              ; preds = %144
  %273 = load double, double* %13, align 8
  %274 = load i32, i32* %20, align 4
  %275 = sitofp i32 %274 to double
  %276 = fadd double %275, %273
  %277 = fptosi double %276 to i32
  store i32 %277, i32* %20, align 4
  %278 = load double, double* %13, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sitofp i32 %279 to double
  %281 = fadd double %280, %278
  %282 = fptosi double %281 to i32
  store i32 %282, i32* %21, align 4
  br label %44

283:                                              ; preds = %44
  %284 = load double**, double*** %3, align 8
  ret double** %284
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ApplyGivens(double** %0, double %1, double %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca double**, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store double** %0, double*** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %17, align 4
  br label %19

19:                                               ; preds = %72, %7
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = load double**, double*** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double*, double** %24, i64 %26
  %28 = load double*, double** %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  store double %32, double* %15, align 8
  %33 = load double**, double*** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double*, double** %33, i64 %35
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  store double %41, double* %16, align 8
  %42 = load double, double* %10, align 8
  %43 = load double, double* %15, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %9, align 8
  %46 = load double, double* %16, align 8
  %47 = fmul double %45, %46
  %48 = fsub double %44, %47
  %49 = load double**, double*** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double*, double** %49, i64 %51
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  store double %48, double* %56, align 8
  %57 = load double, double* %9, align 8
  %58 = load double, double* %15, align 8
  %59 = fmul double %57, %58
  %60 = load double, double* %10, align 8
  %61 = load double, double* %16, align 8
  %62 = fmul double %60, %61
  %63 = fadd double %59, %62
  %64 = load double**, double*** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double*, double** %64, i64 %66
  %68 = load double*, double** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  store double %63, double* %71, align 8
  br label %72

72:                                               ; preds = %23
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %19

75:                                               ; preds = %19
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %130, %75
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %77
  %82 = load double**, double*** %8, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double*, double** %82, i64 %84
  %86 = load double*, double** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  store double %90, double* %15, align 8
  %91 = load double**, double*** %8, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double*, double** %91, i64 %93
  %95 = load double*, double** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  %99 = load double, double* %98, align 8
  store double %99, double* %16, align 8
  %100 = load double, double* %10, align 8
  %101 = load double, double* %15, align 8
  %102 = fmul double %100, %101
  %103 = load double, double* %9, align 8
  %104 = load double, double* %16, align 8
  %105 = fmul double %103, %104
  %106 = fsub double %102, %105
  %107 = load double**, double*** %8, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double*, double** %107, i64 %109
  %111 = load double*, double** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %111, i64 %113
  store double %106, double* %114, align 8
  %115 = load double, double* %9, align 8
  %116 = load double, double* %15, align 8
  %117 = fmul double %115, %116
  %118 = load double, double* %10, align 8
  %119 = load double, double* %16, align 8
  %120 = fmul double %118, %119
  %121 = fadd double %117, %120
  %122 = load double**, double*** %8, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double*, double** %122, i64 %124
  %126 = load double*, double** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  store double %121, double* %129, align 8
  br label %130

130:                                              ; preds = %81
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %77

133:                                              ; preds = %77
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @Jacobi(double** %0, i32 %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double**, align 8
  store double** %0, double*** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = call double** @newIdMatrix()
  store double** %15, double*** %14, align 8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %161, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %164

20:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %157, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 51, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %160

26:                                               ; preds = %21
  %27 = load double**, double*** %3, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double*, double** %27, i64 %29
  %31 = load double*, double** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %31, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double**, double*** %3, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %43, i64 %47
  %49 = load double, double* %48, align 8
  call void @Givens(double %38, double %49, double* %7, double* %8)
  %50 = load double**, double*** %3, align 8
  %51 = load double, double* %7, align 8
  %52 = load double, double* %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %61, %63
  %65 = icmp slt i32 %64, 51
  br i1 %65, label %66, label %71

66:                                               ; preds = %26
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %67, %69
  br label %72

71:                                               ; preds = %26
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i32 [ %70, %66 ], [ 50, %71 ]
  call void @ApplyGivens(double** %50, double %51, double %52, i32 %56, i32 %59, i32 %60, i32 %73)
  %74 = load double**, double*** %14, align 8
  %75 = load double, double* %7, align 8
  %76 = load double, double* %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  call void @ApplyRGivens(double** %74, double %75, double %76, i32 %80, i32 %83)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %141, %72
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 51, %89
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %156

92:                                               ; preds = %87
  %93 = load double**, double*** %3, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double*, double** %93, i64 %96
  %98 = load double*, double** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %98, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double**, double*** %3, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double*, double** %106, i64 %109
  %111 = load double*, double** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %111, i64 %115
  %117 = load double, double* %116, align 8
  call void @Givens(double %105, double %117, double* %7, double* %8)
  %118 = load double**, double*** %3, align 8
  %119 = load double, double* %7, align 8
  %120 = load double, double* %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 2, %131
  %133 = add nsw i32 %130, %132
  %134 = icmp slt i32 %133, 51
  br i1 %134, label %135, label %140

135:                                              ; preds = %92
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 2, %137
  %139 = add nsw i32 %136, %138
  br label %141

140:                                              ; preds = %92
  br label %141

141:                                              ; preds = %140, %135
  %142 = phi i32 [ %139, %135 ], [ 50, %140 ]
  call void @ApplyGivens(double** %118, double %119, double %120, i32 %124, i32 %127, i32 %129, i32 %142)
  %143 = load double**, double*** %14, align 8
  %144 = load double, double* %7, align 8
  %145 = load double, double* %8, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %150, %151
  call void @ApplyRGivens(double** %143, double %144, double %145, i32 %149, i32 %152)
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %13, align 4
  br label %87

156:                                              ; preds = %87
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %21

160:                                              ; preds = %21
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %9, align 4
  br label %17

164:                                              ; preds = %17
  %165 = load double**, double*** %14, align 8
  ret double** %165
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @comp(double* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  %6 = load double*, double** %4, align 8
  %7 = load double, double* %6, align 8
  %8 = call double @llvm.fabs.f64(double %7)
  %9 = load double*, double** %5, align 8
  %10 = load double, double* %9, align 8
  %11 = call double @llvm.fabs.f64(double %10)
  %12 = fcmp olt double %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load double*, double** %4, align 8
  %16 = load double, double* %15, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = load double*, double** %5, align 8
  %19 = load double, double* %18, align 8
  %20 = call double @llvm.fabs.f64(double %19)
  %21 = fcmp ogt double %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double**, align 8
  %16 = alloca double**, align 8
  %17 = alloca double**, align 8
  %18 = alloca double**, align 8
  %19 = alloca %struct._IO_FILE*, align 8
  %20 = alloca [20 x i8], align 16
  %21 = alloca [3 x i8], align 1
  store i32 0, i32* %1, align 4
  store i32 2, i32* %9, align 4
  br label %22

22:                                               ; preds = %146, %0
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 5
  br i1 %24, label %25, label %149

25:                                               ; preds = %22
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %27 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #5
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i32 %29) #5
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %33 = call i8* @strcat(i8* %31, i8* %32) #5
  %34 = load i32, i32* %9, align 4
  %35 = call double** @MakeMatrix(i32 %34)
  store double** %35, double*** @A, align 8
  %36 = load double**, double*** @A, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call double** @Jacobi(double** %36, i32 %37)
  store double** %38, double*** @U, align 8
  %39 = load double**, double*** @A, align 8
  %40 = load double**, double*** @U, align 8
  %41 = call double** @QRiterate(double** %39, double** %40)
  %42 = call double* @newVector()
  store double* %42, double** %11, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %60, %25
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 51
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load double**, double*** @A, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double*, double** %47, i64 %49
  %51 = load double*, double** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double %55, double* %59, align 8
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load double*, double** %11, align 8
  %65 = bitcast double* %64 to i8*
  call void @qsort(i8* %65, i64 51, i64 8, i32 (i8*, i8*)* bitcast (i32 (double*, double*)* @comp to i32 (i8*, i8*)*))
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %78, %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 51
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load double*, double** %11, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %72, i64 %74
  %76 = load double, double* %75, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %71, double %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %66

81:                                               ; preds = %66
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %143

84:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %139, %84
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 51
  br i1 %87, label %88, label %142

88:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %105, %88
  %90 = load double*, double** %11, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = load double**, double*** @A, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double*, double** %95, i64 %97
  %99 = load double*, double** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  %103 = load double, double* %102, align 8
  %104 = fcmp une double %94, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %89
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %89

108:                                              ; preds = %89
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %110 = call i8* @strcpy(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.5, i64 0, i64 0)) #5
  %111 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.4, i64 0, i64 0), i32 %112) #5
  %114 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %115 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %116 = call i8* @strcat(i8* %114, i8* %115) #5
  %117 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %135, %108
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 51
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load double**, double*** @U, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double*, double** %125, i64 %127
  %129 = load double*, double** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  %133 = load double, double* %132, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %124, double %133)
  br label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %119

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %85

142:                                              ; preds = %85
  br label %143

143:                                              ; preds = %142, %81
  %144 = load double**, double*** @U, align 8
  call void @freeMatrix(double** %144)
  %145 = load double**, double*** @A, align 8
  call void @freeMatrix(double** %145)
  br label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %22

149:                                              ; preds = %22
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Check(double** %0, double** %1, i32 %2) #0 {
  %4 = alloca double**, align 8
  %5 = alloca double**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store double** %1, double*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call double** @newMatrix()
  store double** %12, double*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call double** @MakeMatrix(i32 %13)
  store double** %14, double*** %8, align 8
  %15 = load double**, double*** %7, align 8
  %16 = load double**, double*** %8, align 8
  %17 = load double**, double*** %5, align 8
  call void @matrixMult(double** %15, double** %16, double** %17)
  %18 = load double**, double*** %5, align 8
  call void @matrixTranspose(double** %18)
  %19 = load double**, double*** %8, align 8
  %20 = load double**, double*** %5, align 8
  %21 = load double**, double*** %7, align 8
  call void @matrixMult(double** %19, double** %20, double** %21)
  %22 = load double**, double*** %5, align 8
  call void @matrixTranspose(double** %22)
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %76, %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 51
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 51
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load double**, double*** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double*, double** %31, i64 %33
  %35 = load double*, double** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = load double**, double*** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double*, double** %40, i64 %42
  %44 = load double*, double** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fsub double %39, %48
  %50 = load double**, double*** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double*, double** %50, i64 %52
  %54 = load double*, double** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  %58 = load double, double* %57, align 8
  %59 = load double**, double*** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double*, double** %59, i64 %61
  %63 = load double*, double** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fsub double %58, %67
  %69 = fmul double %49, %68
  %70 = load double, double* %9, align 8
  %71 = fadd double %70, %69
  store double %71, double* %9, align 8
  br label %72

72:                                               ; preds = %30
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %27

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %23

79:                                               ; preds = %23
  %80 = load i32, i32* %6, align 4
  %81 = load double, double* %9, align 8
  %82 = call double @sqrt(double %81) #5
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %80, double %82)
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %120, %79
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 51
  br i1 %86, label %87, label %123

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %116, %87
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 51
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = load double**, double*** %4, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double*, double** %94, i64 %96
  %98 = load double*, double** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load double**, double*** %4, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double*, double** %103, i64 %105
  %107 = load double*, double** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = fsub double %102, %111
  %113 = call double @llvm.fabs.f64(double %112)
  %114 = load double, double* %9, align 8
  %115 = fadd double %114, %113
  store double %115, double* %9, align 8
  br label %116

116:                                              ; preds = %93
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %90

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %84

123:                                              ; preds = %84
  %124 = load double, double* %9, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), double %124)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %127 = load double**, double*** %7, align 8
  call void @freeMatrix(double** %127)
  %128 = load double**, double*** %8, align 8
  call void @freeMatrix(double** %128)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @MakeMatrix(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double**, align 8
  store i32 %0, i32* %2, align 4
  %6 = call double** @newMatrix()
  store double** %6, double*** %5, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %76, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 51
  br i1 %9, label %10, label %79

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %72, %10
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 51
  br i1 %14, label %15, label %75

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @abs(i32 %18) #6
  %20 = load i32, i32* %2, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load double**, double*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double*, double** %23, i64 %25
  %27 = load double*, double** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  store double 0.000000e+00, double* %30, align 8
  %31 = load double**, double*** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double*, double** %31, i64 %33
  %35 = load double*, double** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  store double 0.000000e+00, double* %38, align 8
  br label %71

39:                                               ; preds = %15
  %40 = call double @sqrt(double 0x401921FB54442D18) #5
  %41 = fmul double 5.000000e+00, %40
  %42 = fdiv double 4.000000e+00, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sitofp i32 %45 to double
  %47 = fmul double -3.200000e-01, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sitofp i32 %50 to double
  %52 = fmul double %47, %51
  %53 = call double @exp(double %52) #5
  %54 = fmul double %42, %53
  %55 = load double**, double*** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double*, double** %55, i64 %57
  %59 = load double*, double** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double %54, double* %62, align 8
  %63 = load double**, double*** %5, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double*, double** %63, i64 %65
  %67 = load double*, double** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double %54, double* %70, align 8
  br label %71

71:                                               ; preds = %39, %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %12

75:                                               ; preds = %12
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %7

79:                                               ; preds = %7
  %80 = load double**, double*** %5, align 8
  ret double** %80
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @newMatrix() #0 {
  %1 = alloca double**, align 8
  %2 = alloca i32, align 4
  %3 = call noalias i8* @malloc(i64 408) #5
  %4 = bitcast i8* %3 to double**
  store double** %4, double*** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 51
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = call noalias i8* @malloc(i64 408) #5
  %10 = bitcast i8* %9 to double*
  %11 = load double**, double*** %1, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double*, double** %11, i64 %13
  store double* %10, double** %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %5

18:                                               ; preds = %5
  %19 = load double**, double*** %1, align 8
  ret double** %19
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #4

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double* @newVector() #0 {
  %1 = alloca double*, align 8
  %2 = call noalias i8* @malloc(i64 408) #5
  %3 = bitcast i8* %2 to double*
  store double* %3, double** %1, align 8
  %4 = load double*, double** %1, align 8
  ret double* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrixMult(double** %0, double** %1, double** %2) #0 {
  %4 = alloca double**, align 8
  %5 = alloca double**, align 8
  %6 = alloca double**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store double** %1, double*** %5, align 8
  store double** %2, double*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %67, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 51
  br i1 %12, label %13, label %70

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %63, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 51
  br i1 %16, label %17, label %66

17:                                               ; preds = %14
  %18 = load double**, double*** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  store double 0.000000e+00, double* %25, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %59, %17
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 51
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load double**, double*** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double**, double*** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = fmul double %38, %47
  %49 = load double**, double*** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double*, double** %49, i64 %51
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fadd double %57, %48
  store double %58, double* %56, align 8
  br label %59

59:                                               ; preds = %29
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %26

62:                                               ; preds = %26
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %14

66:                                               ; preds = %14
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %10

70:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrixTranspose(double** %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store double** %0, double*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 51
  br i1 %8, label %9, label %58

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %51, %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 51
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load double**, double*** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double*, double** %16, i64 %18
  %20 = load double*, double** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %20, i64 %22
  %24 = load double, double* %23, align 8
  store double %24, double* %5, align 8
  %25 = load double**, double*** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double*, double** %25, i64 %27
  %29 = load double*, double** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = load double**, double*** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double*, double** %34, i64 %36
  %38 = load double*, double** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  store double %33, double* %41, align 8
  %42 = load double, double* %5, align 8
  %43 = load double**, double*** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double*, double** %43, i64 %45
  %47 = load double*, double** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  store double %42, double* %50, align 8
  br label %51

51:                                               ; preds = %15
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %12

54:                                               ; preds = %12
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %6

58:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @newIdMatrix() #0 {
  %1 = alloca double**, align 8
  %2 = call double** @newMatrix()
  store double** %2, double*** %1, align 8
  %3 = load double**, double*** %1, align 8
  call void @MakeID(double** %3)
  %4 = load double**, double*** %1, align 8
  ret double** %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MakeID(double** %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %48, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 51
  br i1 %7, label %8, label %51

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %44, %8
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 51
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load double**, double*** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  store double 1.000000e+00, double* %25, align 8
  br label %43

26:                                               ; preds = %13
  %27 = load double**, double*** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double*, double** %27, i64 %29
  %31 = load double*, double** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  store double 0.000000e+00, double* %34, align 8
  %35 = load double**, double*** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double*, double** %35, i64 %37
  %39 = load double*, double** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  store double 0.000000e+00, double* %42, align 8
  br label %43

43:                                               ; preds = %26, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %10

47:                                               ; preds = %10
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %5

51:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeMatrix(double** %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 51
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load double**, double*** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double*, double** %8, i64 %10
  %12 = load double*, double** %11, align 8
  %13 = bitcast double* %12 to i8*
  call void @free(i8* %13) #5
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

17:                                               ; preds = %4
  %18 = load double**, double*** %2, align 8
  %19 = bitcast double** %18 to i8*
  call void @free(i8* %19) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @NormInf(double** %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 51
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 51
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load double**, double*** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double*, double** %15, i64 %17
  %19 = load double*, double** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = load double, double* %4, align 8
  %26 = fadd double %25, %24
  store double %26, double* %4, align 8
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load double, double* %4, align 8
  %32 = load double, double* %3, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load double, double* %4, align 8
  store double %35, double* %3, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load double, double* %3, align 8
  ret double %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @NormOne(double** %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 51
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 51
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load double**, double*** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double*, double** %15, i64 %17
  %19 = load double*, double** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = load double, double* %4, align 8
  %26 = fadd double %25, %24
  store double %26, double* %4, align 8
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load double, double* %4, align 8
  %32 = load double, double* %3, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load double, double* %4, align 8
  store double %35, double* %3, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load double, double* %3, align 8
  ret double %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printMatrix(double** %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 51
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load double**, double*** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double*, double** %8, i64 %10
  %12 = load double*, double** %11, align 8
  call void @printVector(double* %12)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4

16:                                               ; preds = %4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printVector(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  store double* %0, double** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 51
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load double*, double** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, double* %8, i64 %10
  %12 = load double, double* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.27, i64 0, i64 0), double %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Givens(double %0, double %1, double* %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load double*, double** %8, align 8
  store double 1.000000e+00, double* %13, align 8
  %14 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %14, align 8
  br label %56

15:                                               ; preds = %4
  %16 = load double, double* %6, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = load double, double* %5, align 8
  %19 = call double @llvm.fabs.f64(double %18)
  %20 = fcmp ogt double %17, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load double, double* %5, align 8
  %23 = fneg double %22
  %24 = load double, double* %6, align 8
  %25 = fdiv double %23, %24
  store double %25, double* %9, align 8
  %26 = load double, double* %9, align 8
  %27 = load double, double* %9, align 8
  %28 = fmul double %26, %27
  %29 = fadd double 1.000000e+00, %28
  %30 = call double @sqrt(double %29) #5
  %31 = fdiv double 1.000000e+00, %30
  %32 = load double*, double** %7, align 8
  store double %31, double* %32, align 8
  %33 = load double*, double** %7, align 8
  %34 = load double, double* %33, align 8
  %35 = load double, double* %9, align 8
  %36 = fmul double %34, %35
  %37 = load double*, double** %8, align 8
  store double %36, double* %37, align 8
  br label %55

38:                                               ; preds = %15
  %39 = load double, double* %6, align 8
  %40 = fneg double %39
  %41 = load double, double* %5, align 8
  %42 = fdiv double %40, %41
  store double %42, double* %9, align 8
  %43 = load double, double* %9, align 8
  %44 = load double, double* %9, align 8
  %45 = fmul double %43, %44
  %46 = fadd double 1.000000e+00, %45
  %47 = call double @sqrt(double %46) #5
  %48 = fdiv double 1.000000e+00, %47
  %49 = load double*, double** %8, align 8
  store double %48, double* %49, align 8
  %50 = load double*, double** %8, align 8
  %51 = load double, double* %50, align 8
  %52 = load double, double* %9, align 8
  %53 = fmul double %51, %52
  %54 = load double*, double** %7, align 8
  store double %53, double* %54, align 8
  br label %55

55:                                               ; preds = %38, %21
  br label %56

56:                                               ; preds = %55, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sign(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ApplyRGivens(double** %0, double %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca double**, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double** %0, double*** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %66, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 51
  br i1 %16, label %17, label %69

17:                                               ; preds = %14
  %18 = load double**, double*** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  store double %26, double* %12, align 8
  %27 = load double**, double*** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double*, double** %27, i64 %29
  %31 = load double*, double** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  store double %35, double* %13, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* %12, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* %7, align 8
  %40 = load double, double* %13, align 8
  %41 = fmul double %39, %40
  %42 = fsub double %38, %41
  %43 = load double**, double*** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double*, double** %43, i64 %45
  %47 = load double*, double** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  store double %42, double* %50, align 8
  %51 = load double, double* %7, align 8
  %52 = load double, double* %12, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %8, align 8
  %55 = load double, double* %13, align 8
  %56 = fmul double %54, %55
  %57 = fadd double %53, %56
  %58 = load double**, double*** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double*, double** %58, i64 %60
  %62 = load double*, double** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  store double %57, double* %65, align 8
  br label %66

66:                                               ; preds = %17
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %14

69:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @QRiterate(double** %0, double** %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca double**, align 8
  %5 = alloca double**, align 8
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store double** %1, double*** %5, align 8
  store i32 1, i32* %27, align 4
  br label %32

32:                                               ; preds = %417, %2
  %33 = load i32, i32* %27, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %418

35:                                               ; preds = %32
  store i32 0, i32* %24, align 4
  br label %36

36:                                               ; preds = %96, %35
  %37 = load i32, i32* %24, align 4
  %38 = icmp slt i32 %37, 50
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  %40 = load double**, double*** %4, align 8
  %41 = load i32, i32* %24, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double*, double** %40, i64 %43
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %24, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = load double**, double*** %4, align 8
  %52 = load i32, i32* %24, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double*, double** %51, i64 %53
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %24, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = call double @llvm.fabs.f64(double %59)
  %61 = load double**, double*** %4, align 8
  %62 = load i32, i32* %24, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double*, double** %61, i64 %64
  %66 = load double*, double** %65, align 8
  %67 = load i32, i32* %24, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %66, i64 %69
  %71 = load double, double* %70, align 8
  %72 = call double @llvm.fabs.f64(double %71)
  %73 = fadd double %60, %72
  %74 = fmul double %73, 1.000000e-10
  %75 = fcmp olt double %50, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %39
  %77 = load double**, double*** %4, align 8
  %78 = load i32, i32* %24, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double*, double** %77, i64 %79
  %81 = load double*, double** %80, align 8
  %82 = load i32, i32* %24, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %81, i64 %84
  store double 0.000000e+00, double* %85, align 8
  %86 = load double**, double*** %4, align 8
  %87 = load i32, i32* %24, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double*, double** %86, i64 %89
  %91 = load double*, double** %90, align 8
  %92 = load i32, i32* %24, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %91, i64 %93
  store double 0.000000e+00, double* %94, align 8
  br label %95

95:                                               ; preds = %76, %39
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %24, align 4
  br label %36

99:                                               ; preds = %36
  store i32 50, i32* %29, align 4
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i32, i32* %29, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load double**, double*** %4, align 8
  %105 = load i32, i32* %29, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double*, double** %104, i64 %107
  %109 = load double*, double** %108, align 8
  %110 = load i32, i32* %29, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %109, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fcmp oeq double %113, 0.000000e+00
  br label %115

115:                                              ; preds = %103, %100
  %116 = phi i1 [ false, %100 ], [ %114, %103 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i32, i32* %29, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %29, align 4
  br label %100

120:                                              ; preds = %115
  %121 = load i32, i32* %29, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %27, align 4
  br label %147

124:                                              ; preds = %120
  %125 = load i32, i32* %29, align 4
  store i32 %125, i32* %28, align 4
  br label %126

126:                                              ; preds = %143, %124
  %127 = load i32, i32* %28, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load double**, double*** %4, align 8
  %131 = load i32, i32* %28, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double*, double** %130, i64 %133
  %135 = load double*, double** %134, align 8
  %136 = load i32, i32* %28, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %135, i64 %137
  %139 = load double, double* %138, align 8
  %140 = fcmp une double %139, 0.000000e+00
  br label %141

141:                                              ; preds = %129, %126
  %142 = phi i1 [ false, %126 ], [ %140, %129 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i32, i32* %28, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %28, align 4
  br label %126

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %123
  %148 = load i32, i32* %27, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  br label %418

151:                                              ; preds = %147
  %152 = load double**, double*** %4, align 8
  %153 = load i32, i32* %29, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double*, double** %152, i64 %155
  %157 = load double*, double** %156, align 8
  %158 = load i32, i32* %29, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %157, i64 %160
  %162 = load double, double* %161, align 8
  %163 = load double**, double*** %4, align 8
  %164 = load i32, i32* %29, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double*, double** %163, i64 %165
  %167 = load double*, double** %166, align 8
  %168 = load i32, i32* %29, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  %171 = load double, double* %170, align 8
  %172 = fsub double %162, %171
  %173 = fdiv double %172, 2.000000e+00
  store double %173, double* %18, align 8
  %174 = load double**, double*** %4, align 8
  %175 = load i32, i32* %29, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double*, double** %174, i64 %176
  %178 = load double*, double** %177, align 8
  %179 = load i32, i32* %29, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %178, i64 %181
  %183 = load double, double* %182, align 8
  store double %183, double* %8, align 8
  %184 = load double, double* %8, align 8
  %185 = load double, double* %8, align 8
  %186 = fmul double %184, %185
  store double %186, double* %8, align 8
  %187 = load double**, double*** %4, align 8
  %188 = load i32, i32* %29, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double*, double** %187, i64 %189
  %191 = load double*, double** %190, align 8
  %192 = load i32, i32* %29, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %191, i64 %193
  %195 = load double, double* %194, align 8
  %196 = load double, double* %8, align 8
  %197 = load double, double* %18, align 8
  %198 = load double, double* %18, align 8
  %199 = call i32 @sign(double %198)
  %200 = sitofp i32 %199 to double
  %201 = load double, double* %18, align 8
  %202 = load double, double* %18, align 8
  %203 = fmul double %201, %202
  %204 = load double, double* %8, align 8
  %205 = fadd double %203, %204
  %206 = call double @sqrt(double %205) #5
  %207 = fmul double %200, %206
  %208 = fadd double %197, %207
  %209 = fdiv double %196, %208
  %210 = fsub double %195, %209
  store double %210, double* %19, align 8
  %211 = load double**, double*** %4, align 8
  %212 = load i32, i32* %28, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double*, double** %211, i64 %213
  %215 = load double*, double** %214, align 8
  %216 = load i32, i32* %28, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %215, i64 %217
  %219 = load double, double* %218, align 8
  %220 = load double, double* %19, align 8
  %221 = fsub double %219, %220
  store double %221, double* %20, align 8
  %222 = load double**, double*** %4, align 8
  %223 = load i32, i32* %28, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double*, double** %222, i64 %225
  %227 = load double*, double** %226, align 8
  %228 = load i32, i32* %28, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %227, i64 %229
  %231 = load double, double* %230, align 8
  store double %231, double* %21, align 8
  %232 = load i32, i32* %28, align 4
  store i32 %232, i32* %24, align 4
  br label %233

233:                                              ; preds = %414, %151
  %234 = load i32, i32* %24, align 4
  %235 = load i32, i32* %29, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %417

237:                                              ; preds = %233
  %238 = load double, double* %20, align 8
  %239 = load double, double* %21, align 8
  call void @Givens(double %238, double %239, double* %7, double* %6)
  %240 = load i32, i32* %24, align 4
  %241 = sub nsw i32 %240, 1
  %242 = load i32, i32* %28, align 4
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i32, i32* %24, align 4
  %246 = sub nsw i32 %245, 1
  br label %249

247:                                              ; preds = %237
  %248 = load i32, i32* %28, align 4
  br label %249

249:                                              ; preds = %247, %244
  %250 = phi i32 [ %246, %244 ], [ %248, %247 ]
  store i32 %250, i32* %30, align 4
  %251 = load i32, i32* %29, align 4
  %252 = load i32, i32* %24, align 4
  %253 = add nsw i32 %252, 2
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i32, i32* %29, align 4
  br label %260

257:                                              ; preds = %249
  %258 = load i32, i32* %24, align 4
  %259 = add nsw i32 %258, 2
  br label %260

260:                                              ; preds = %257, %255
  %261 = phi i32 [ %256, %255 ], [ %259, %257 ]
  store i32 %261, i32* %31, align 4
  %262 = load i32, i32* %30, align 4
  store i32 %262, i32* %26, align 4
  br label %263

263:                                              ; preds = %318, %260
  %264 = load i32, i32* %26, align 4
  %265 = load i32, i32* %31, align 4
  %266 = icmp sle i32 %264, %265
  br i1 %266, label %267, label %321

267:                                              ; preds = %263
  %268 = load double**, double*** %4, align 8
  %269 = load i32, i32* %24, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds double*, double** %268, i64 %270
  %272 = load double*, double** %271, align 8
  %273 = load i32, i32* %26, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds double, double* %272, i64 %274
  %276 = load double, double* %275, align 8
  store double %276, double* %22, align 8
  %277 = load double**, double*** %4, align 8
  %278 = load i32, i32* %24, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds double*, double** %277, i64 %280
  %282 = load double*, double** %281, align 8
  %283 = load i32, i32* %26, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, double* %282, i64 %284
  %286 = load double, double* %285, align 8
  store double %286, double* %23, align 8
  %287 = load double, double* %6, align 8
  %288 = load double, double* %22, align 8
  %289 = fmul double %287, %288
  %290 = load double, double* %7, align 8
  %291 = load double, double* %23, align 8
  %292 = fmul double %290, %291
  %293 = fsub double %289, %292
  %294 = load double**, double*** %4, align 8
  %295 = load i32, i32* %24, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds double*, double** %294, i64 %296
  %298 = load double*, double** %297, align 8
  %299 = load i32, i32* %26, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %298, i64 %300
  store double %293, double* %301, align 8
  %302 = load double, double* %7, align 8
  %303 = load double, double* %22, align 8
  %304 = fmul double %302, %303
  %305 = load double, double* %6, align 8
  %306 = load double, double* %23, align 8
  %307 = fmul double %305, %306
  %308 = fadd double %304, %307
  %309 = load double**, double*** %4, align 8
  %310 = load i32, i32* %24, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double*, double** %309, i64 %312
  %314 = load double*, double** %313, align 8
  %315 = load i32, i32* %26, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds double, double* %314, i64 %316
  store double %308, double* %317, align 8
  br label %318

318:                                              ; preds = %267
  %319 = load i32, i32* %26, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %26, align 4
  br label %263

321:                                              ; preds = %263
  %322 = load i32, i32* %30, align 4
  store i32 %322, i32* %26, align 4
  br label %323

323:                                              ; preds = %378, %321
  %324 = load i32, i32* %26, align 4
  %325 = load i32, i32* %31, align 4
  %326 = icmp sle i32 %324, %325
  br i1 %326, label %327, label %381

327:                                              ; preds = %323
  %328 = load double**, double*** %4, align 8
  %329 = load i32, i32* %26, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds double*, double** %328, i64 %330
  %332 = load double*, double** %331, align 8
  %333 = load i32, i32* %24, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %332, i64 %334
  %336 = load double, double* %335, align 8
  store double %336, double* %22, align 8
  %337 = load double**, double*** %4, align 8
  %338 = load i32, i32* %26, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double*, double** %337, i64 %339
  %341 = load double*, double** %340, align 8
  %342 = load i32, i32* %24, align 4
  %343 = add nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds double, double* %341, i64 %344
  %346 = load double, double* %345, align 8
  store double %346, double* %23, align 8
  %347 = load double, double* %6, align 8
  %348 = load double, double* %22, align 8
  %349 = fmul double %347, %348
  %350 = load double, double* %7, align 8
  %351 = load double, double* %23, align 8
  %352 = fmul double %350, %351
  %353 = fsub double %349, %352
  %354 = load double**, double*** %4, align 8
  %355 = load i32, i32* %26, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds double*, double** %354, i64 %356
  %358 = load double*, double** %357, align 8
  %359 = load i32, i32* %24, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds double, double* %358, i64 %360
  store double %353, double* %361, align 8
  %362 = load double, double* %7, align 8
  %363 = load double, double* %22, align 8
  %364 = fmul double %362, %363
  %365 = load double, double* %6, align 8
  %366 = load double, double* %23, align 8
  %367 = fmul double %365, %366
  %368 = fadd double %364, %367
  %369 = load double**, double*** %4, align 8
  %370 = load i32, i32* %26, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds double*, double** %369, i64 %371
  %373 = load double*, double** %372, align 8
  %374 = load i32, i32* %24, align 4
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds double, double* %373, i64 %376
  store double %368, double* %377, align 8
  br label %378

378:                                              ; preds = %327
  %379 = load i32, i32* %26, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %26, align 4
  br label %323

381:                                              ; preds = %323
  %382 = load double**, double*** %5, align 8
  %383 = load double, double* %7, align 8
  %384 = load double, double* %6, align 8
  %385 = load i32, i32* %24, align 4
  %386 = load i32, i32* %24, align 4
  %387 = add nsw i32 %386, 1
  call void @ApplyRGivens(double** %382, double %383, double %384, i32 %385, i32 %387)
  %388 = load i32, i32* %24, align 4
  %389 = load i32, i32* %29, align 4
  %390 = sub nsw i32 %389, 1
  %391 = icmp slt i32 %388, %390
  br i1 %391, label %392, label %413

392:                                              ; preds = %381
  %393 = load double**, double*** %4, align 8
  %394 = load i32, i32* %24, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double*, double** %393, i64 %396
  %398 = load double*, double** %397, align 8
  %399 = load i32, i32* %24, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds double, double* %398, i64 %400
  %402 = load double, double* %401, align 8
  store double %402, double* %20, align 8
  %403 = load double**, double*** %4, align 8
  %404 = load i32, i32* %24, align 4
  %405 = add nsw i32 %404, 2
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds double*, double** %403, i64 %406
  %408 = load double*, double** %407, align 8
  %409 = load i32, i32* %24, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds double, double* %408, i64 %410
  %412 = load double, double* %411, align 8
  store double %412, double* %21, align 8
  br label %413

413:                                              ; preds = %392, %381
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %24, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %24, align 4
  br label %233

417:                                              ; preds = %233
  br label %32

418:                                              ; preds = %150, %32
  %419 = load double**, double*** %3, align 8
  ret double** %419
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @norm(double** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca double**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double** %0, double*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %38, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load double**, double*** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double*, double** %17, i64 %19
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double**, double*** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double*, double** %26, i64 %28
  %30 = load double*, double** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fmul double %25, %34
  %36 = load double, double* %9, align 8
  %37 = fadd double %36, %35
  store double %37, double* %9, align 8
  br label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load double, double* %9, align 8
  %43 = call double @sqrt(double %42) #5
  ret double %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @House(double** %0, double* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca double**, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store double** %0, double*** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load double**, double*** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call double @norm(double** %14, i32 %15, i32 %16, i32 %17)
  store double %18, double* %11, align 8
  %19 = load double**, double*** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double*, double** %19, i64 %21
  %23 = load double*, double** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  %28 = load double**, double*** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double*, double** %28, i64 %30
  %32 = load double*, double** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = call i32 @sign(double %36)
  %38 = sitofp i32 %37 to double
  %39 = load double, double* %11, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %27, %40
  %42 = fdiv double 1.000000e+00, %41
  store double %42, double* %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %65, %5
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load double**, double*** %6, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double*, double** %50, i64 %52
  %54 = load double*, double** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  %58 = load double, double* %57, align 8
  %59 = load double, double* %12, align 8
  %60 = fmul double %58, %59
  %61 = load double*, double** %7, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  store double %60, double* %64, align 8
  br label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %45

68:                                               ; preds = %45
  %69 = load double*, double** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  store double 1.000000e+00, double* %72, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @xty(double* %0, double* %1, i32 %2, i32 %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %30, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load double*, double** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = fmul double %21, %26
  %28 = load double, double* %9, align 8
  %29 = fadd double %28, %27
  store double %29, double* %9, align 8
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load double, double* %9, align 8
  ret double %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @Trianglelise(double** %0, i32 %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca double**, align 8
  %5 = alloca i32, align 4
  %6 = alloca double**, align 8
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = call double** @newMatrix()
  store double** %19, double*** %7, align 8
  %20 = call double** @newIdMatrix()
  store double** %20, double*** %6, align 8
  %21 = call noalias i8* @malloc(i64 408) #5
  %22 = bitcast i8* %21 to double*
  store double* %22, double** %11, align 8
  %23 = call noalias i8* @malloc(i64 408) #5
  %24 = bitcast i8* %23 to double*
  store double* %24, double** %12, align 8
  %25 = call noalias i8* @malloc(i64 408) #5
  %26 = bitcast i8* %25 to double*
  store double* %26, double** %13, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load double**, double*** %4, align 8
  store double** %30, double*** %3, align 8
  br label %353

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %342, %31
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 49
  br i1 %35, label %36, label %345

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp slt i32 %41, 50
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 50, %49 ]
  store i32 %51, i32* %18, align 4
  %52 = load double**, double*** %4, align 8
  %53 = load double*, double** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %18, align 4
  call void @House(double** %52, double* %53, i32 %54, i32 %56, i32 %57)
  %58 = load double*, double** %11, align 8
  %59 = load double*, double** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %18, align 4
  %63 = call double @xty(double* %58, double* %59, i32 %61, i32 %62)
  %64 = fdiv double 1.000000e+00, %63
  store double %64, double* %10, align 8
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %88, %50
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load double**, double*** %4, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double*, double** %71, i64 %73
  %75 = load double*, double** %74, align 8
  %76 = load double*, double** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %18, align 4
  %80 = call double @xty(double* %75, double* %76, i32 %78, i32 %79)
  %81 = fmul double 2.000000e+00, %80
  %82 = load double, double* %10, align 8
  %83 = fmul double %81, %82
  %84 = load double*, double** %13, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  store double %83, double* %87, align 8
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load double*, double** %13, align 8
  %93 = load double*, double** %11, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %18, align 4
  %97 = call double @xty(double* %92, double* %93, i32 %95, i32 %96)
  %98 = load double, double* %10, align 8
  %99 = fmul double %97, %98
  store double %99, double* %9, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %124, %91
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load double*, double** %13, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = load double, double* %9, align 8
  %113 = load double*, double** %11, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = fmul double %112, %117
  %119 = fsub double %111, %118
  %120 = load double*, double** %12, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %120, i64 %122
  store double %119, double* %123, align 8
  br label %124

124:                                              ; preds = %106
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %102

127:                                              ; preds = %102
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %195, %127
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %198

134:                                              ; preds = %130
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %191, %134
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %194

140:                                              ; preds = %136
  %141 = load double*, double** %11, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = load double*, double** %12, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %146, i64 %148
  %150 = load double, double* %149, align 8
  %151 = fmul double %145, %150
  %152 = load double*, double** %12, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, double* %152, i64 %154
  %156 = load double, double* %155, align 8
  %157 = load double*, double** %11, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, double* %157, i64 %159
  %161 = load double, double* %160, align 8
  %162 = fmul double %156, %161
  %163 = fadd double %151, %162
  %164 = load double**, double*** %4, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double*, double** %164, i64 %166
  %168 = load double*, double** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %168, i64 %170
  %172 = load double, double* %171, align 8
  %173 = fsub double %172, %163
  store double %173, double* %171, align 8
  %174 = load double**, double*** %4, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double*, double** %174, i64 %176
  %178 = load double*, double** %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = load double, double* %181, align 8
  %183 = load double**, double*** %4, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double*, double** %183, i64 %185
  %187 = load double*, double** %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, double* %187, i64 %189
  store double %182, double* %190, align 8
  br label %191

191:                                              ; preds = %140
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %15, align 4
  br label %136

194:                                              ; preds = %136
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  br label %130

198:                                              ; preds = %130
  %199 = load double**, double*** %4, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double*, double** %199, i64 %201
  %203 = load double*, double** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %203, i64 %206
  %208 = load double, double* %207, align 8
  %209 = load double*, double** %13, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, double* %209, i64 %211
  %213 = load double, double* %212, align 8
  %214 = fsub double %208, %213
  %215 = load double**, double*** %4, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double*, double** %215, i64 %217
  %219 = load double*, double** %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %219, i64 %222
  store double %214, double* %223, align 8
  %224 = load double**, double*** %4, align 8
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double*, double** %224, i64 %227
  %229 = load double*, double** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds double, double* %229, i64 %231
  store double %214, double* %232, align 8
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 2
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %256, %198
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %18, align 4
  %238 = icmp sle i32 %236, %237
  br i1 %238, label %239, label %259

239:                                              ; preds = %235
  %240 = load double**, double*** %4, align 8
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double*, double** %240, i64 %242
  %244 = load double*, double** %243, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, double* %244, i64 %246
  store double 0.000000e+00, double* %247, align 8
  %248 = load double**, double*** %4, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double*, double** %248, i64 %250
  %252 = load double*, double** %251, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, double* %252, i64 %254
  store double 0.000000e+00, double* %255, align 8
  br label %256

256:                                              ; preds = %239
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %235

259:                                              ; preds = %235
  store i32 0, i32* %17, align 4
  br label %260

260:                                              ; preds = %281, %259
  %261 = load i32, i32* %17, align 4
  %262 = icmp slt i32 %261, 51
  br i1 %262, label %263, label %284

263:                                              ; preds = %260
  %264 = load double, double* %10, align 8
  %265 = fmul double 2.000000e+00, %264
  %266 = load double**, double*** %6, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds double*, double** %266, i64 %268
  %270 = load double*, double** %269, align 8
  %271 = load double*, double** %11, align 8
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %272, 1
  %274 = load i32, i32* %18, align 4
  %275 = call double @xty(double* %270, double* %271, i32 %273, i32 %274)
  %276 = fmul double %265, %275
  %277 = load double*, double** %12, align 8
  %278 = load i32, i32* %17, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds double, double* %277, i64 %279
  store double %276, double* %280, align 8
  br label %281

281:                                              ; preds = %263
  %282 = load i32, i32* %17, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %17, align 4
  br label %260

284:                                              ; preds = %260
  store i32 0, i32* %17, align 4
  br label %285

285:                                              ; preds = %321, %284
  %286 = load i32, i32* %17, align 4
  %287 = icmp slt i32 %286, 51
  br i1 %287, label %288, label %324

288:                                              ; preds = %285
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %15, align 4
  br label %291

291:                                              ; preds = %317, %288
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* %18, align 4
  %294 = icmp sle i32 %292, %293
  br i1 %294, label %295, label %320

295:                                              ; preds = %291
  %296 = load double*, double** %12, align 8
  %297 = load i32, i32* %17, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %296, i64 %298
  %300 = load double, double* %299, align 8
  %301 = load double*, double** %11, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds double, double* %301, i64 %303
  %305 = load double, double* %304, align 8
  %306 = fmul double %300, %305
  %307 = load double**, double*** %6, align 8
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double*, double** %307, i64 %309
  %311 = load double*, double** %310, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %311, i64 %313
  %315 = load double, double* %314, align 8
  %316 = fsub double %315, %306
  store double %316, double* %314, align 8
  br label %317

317:                                              ; preds = %295
  %318 = load i32, i32* %15, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %15, align 4
  br label %291

320:                                              ; preds = %291
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %17, align 4
  br label %285

324:                                              ; preds = %285
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %16, align 4
  %327 = add nsw i32 %325, %326
  %328 = load i32, i32* %5, align 4
  %329 = sub nsw i32 %328, 1
  %330 = add nsw i32 %327, %329
  %331 = icmp slt i32 %330, 50
  br i1 %331, label %332, label %337

332:                                              ; preds = %324
  %333 = load i32, i32* %5, align 4
  %334 = sub nsw i32 %333, 1
  %335 = load i32, i32* %16, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %16, align 4
  br label %341

337:                                              ; preds = %324
  %338 = load i32, i32* %14, align 4
  %339 = add nsw i32 %338, 1
  %340 = sub nsw i32 50, %339
  store i32 %340, i32* %16, align 4
  br label %341

341:                                              ; preds = %337, %332
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %14, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %14, align 4
  br label %33

345:                                              ; preds = %33
  %346 = load double*, double** %11, align 8
  %347 = bitcast double* %346 to i8*
  call void @free(i8* %347) #5
  %348 = load double*, double** %12, align 8
  %349 = bitcast double* %348 to i8*
  call void @free(i8* %349) #5
  %350 = load double*, double** %13, align 8
  %351 = bitcast double* %350 to i8*
  call void @free(i8* %351) #5
  %352 = load double**, double*** %6, align 8
  store double** %352, double*** %3, align 8
  br label %353

353:                                              ; preds = %345, %29
  %354 = load double**, double*** %3, align 8
  ret double** %354
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
