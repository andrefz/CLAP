; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [26 x i8] c"INSERT COMPILER NAME HERE\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"INSERT OPTIMISATION OPTIONS HERE\00", align 1
@main.lda = internal global i32 0, align 4
@main.ldaa = internal global i32 0, align 4
@main.n = internal global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Rolled \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Single \00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Precision Linpack Benchmark - PC Version in 'C/C++'\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Compiler     %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Optimisation %s\0A\0A\00", align 1
@main.a = internal global [40200 x float] zeroinitializer, align 16
@main.b = internal global [200 x float] zeroinitializer, align 16
@main.ipvt = internal global [200 x i32] zeroinitializer, align 16
@main.info = internal global i32 0, align 4
@atime = internal global [9 x [15 x float]] zeroinitializer, align 16
@main.i = internal global i32 0, align 4
@main.x = internal global [200 x float] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [39 x i8] c"norm resid      resid           machep\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"         x[0]-1          x[n-1]-1\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%6.1f %17.8e%17.8e%17.8e%17.8e\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Times are reported for matrices of order        %5d\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"1 pass times for array with leading dimension of%5d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"      dgefa      dgesl      total     Mflops       unit\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"      ratio\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\0ACalculating matgen overhead\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"%10d times %6.2f seconds\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Overhead for 1 matgen %12.5f seconds\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Calculating matgen/dgefa passes for 5 seconds\0A\00", align 1
@main.ntimes = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"Passes used %10d \0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Times for array with leading dimension of%4d\0A\0A\00", align 1
@main.j = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [41 x i8] c"Average                          %11.2f\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\0ACalculating matgen2 overhead\0A\00", align 1
@main.aa = internal global [40000 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local float @second() #0 {
  %1 = alloca float, align 4
  %2 = alloca i64, align 8
  %3 = call i64 @clock() #5
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = sitofp i64 %4 to float
  %6 = fdiv float %5, 1.000000e+06
  store float %6, float* %1, align 4
  %7 = load float, float* %1, align 4
  ret float %7
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @what_date() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca [9 x [80 x i8]], align 16
  store i32 0, i32* %1, align 4
  %25 = bitcast [9 x [80 x i8]]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 720, i1 false)
  %26 = bitcast i8* %25 to <{ [80 x i8], [8 x [80 x i8]] }>*
  %27 = getelementptr inbounds <{ [80 x i8], [8 x [80 x i8]] }>, <{ [80 x i8], [8 x [80 x i8]] }>* %26, i32 0, i32 0
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %27, i32 0, i32 0
  store i8 32, i8* %28, align 16
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  store i32 201, i32* @main.lda, align 4
  store i32 200, i32* @main.ldaa, align 4
  store float 0x3FACAC0840000000, float* %2, align 4
  store i32 100, i32* @main.n, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** %22, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i8*, i8** %23, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @main.n, align 4
  %42 = load i32, i32* @main.n, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @main.n, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sitofp i32 %45 to double
  %47 = fmul double 2.000000e+00, %46
  %48 = fdiv double %47, 3.000000e+00
  %49 = load i32, i32* @main.n, align 4
  %50 = load i32, i32* @main.n, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sitofp i32 %51 to double
  %53 = fmul double 2.000000e+00, %52
  %54 = fadd double %48, %53
  %55 = fptrunc double %54 to float
  store float %55, float* %3, align 4
  %56 = load i32, i32* @main.lda, align 4
  %57 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %56, i32 %57, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), float* %5)
  %58 = call float @second()
  store float %58, float* %10, align 4
  %59 = load i32, i32* @main.lda, align 4
  %60 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %59, i32 %60, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i64 0, i64 0), i32* @main.info)
  %61 = call float @second()
  %62 = load float, float* %10, align 4
  %63 = fsub float %61, %62
  store float %63, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 0, i64 0), align 16
  %64 = call float @second()
  store float %64, float* %10, align 4
  %65 = load i32, i32* @main.lda, align 4
  %66 = load i32, i32* @main.n, align 4
  call void @dgesl(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %65, i32 %66, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i64 0, i64 0), float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), i32 0)
  %67 = call float @second()
  %68 = load float, float* %10, align 4
  %69 = fsub float %67, %68
  store float %69, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 1, i64 0), align 4
  %70 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 0, i64 0), align 16
  %71 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 1, i64 0), align 4
  %72 = fadd float %70, %71
  store float %72, float* %4, align 4
  store i32 0, i32* @main.i, align 4
  br label %73

73:                                               ; preds = %85, %0
  %74 = load i32, i32* @main.i, align 4
  %75 = load i32, i32* @main.n, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32, i32* @main.i, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i64 0, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load i32, i32* @main.i, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i64 0, i64 %83
  store float %81, float* %84, align 4
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @main.i, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @main.i, align 4
  br label %73

88:                                               ; preds = %73
  %89 = load i32, i32* @main.lda, align 4
  %90 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %89, i32 %90, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), float* %5)
  store i32 0, i32* @main.i, align 4
  br label %91

91:                                               ; preds = %104, %88
  %92 = load i32, i32* @main.i, align 4
  %93 = load i32, i32* @main.n, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i32, i32* @main.i, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i64 0, i64 %97
  %99 = load float, float* %98, align 4
  %100 = fneg float %99
  %101 = load i32, i32* @main.i, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i64 0, i64 %102
  store float %100, float* %103, align 4
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* @main.i, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @main.i, align 4
  br label %91

107:                                              ; preds = %91
  %108 = load i32, i32* @main.n, align 4
  %109 = load i32, i32* @main.n, align 4
  %110 = load i32, i32* @main.lda, align 4
  call void @dmxpy(i32 %108, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), i32 %109, i32 %110, float* getelementptr inbounds ([200 x float], [200 x float]* @main.x, i64 0, i64 0), float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0))
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* @main.i, align 4
  br label %111

111:                                              ; preds = %160, %107
  %112 = load i32, i32* @main.i, align 4
  %113 = load i32, i32* @main.n, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %163

115:                                              ; preds = %111
  %116 = load float, float* %7, align 4
  %117 = fpext float %116 to double
  %118 = load i32, i32* @main.i, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i64 0, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fpext float %121 to double
  %123 = call double @llvm.fabs.f64(double %122)
  %124 = fcmp ogt double %117, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load float, float* %7, align 4
  %127 = fpext float %126 to double
  br label %135

128:                                              ; preds = %115
  %129 = load i32, i32* @main.i, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i64 0, i64 %130
  %132 = load float, float* %131, align 4
  %133 = fpext float %132 to double
  %134 = call double @llvm.fabs.f64(double %133)
  br label %135

135:                                              ; preds = %128, %125
  %136 = phi double [ %127, %125 ], [ %134, %128 ]
  %137 = fptrunc double %136 to float
  store float %137, float* %7, align 4
  %138 = load float, float* %6, align 4
  %139 = fpext float %138 to double
  %140 = load i32, i32* @main.i, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i64 0, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fpext float %143 to double
  %145 = call double @llvm.fabs.f64(double %144)
  %146 = fcmp ogt double %139, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load float, float* %6, align 4
  %149 = fpext float %148 to double
  br label %157

150:                                              ; preds = %135
  %151 = load i32, i32* @main.i, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i64 0, i64 %152
  %154 = load float, float* %153, align 4
  %155 = fpext float %154 to double
  %156 = call double @llvm.fabs.f64(double %155)
  br label %157

157:                                              ; preds = %150, %147
  %158 = phi double [ %149, %147 ], [ %156, %150 ]
  %159 = fptrunc double %158 to float
  store float %159, float* %6, align 4
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @main.i, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* @main.i, align 4
  br label %111

163:                                              ; preds = %111
  %164 = call float @epslon(float 1.000000e+00)
  store float %164, float* %9, align 4
  %165 = load float, float* %7, align 4
  %166 = load i32, i32* @main.n, align 4
  %167 = sitofp i32 %166 to float
  %168 = load float, float* %5, align 4
  %169 = fmul float %167, %168
  %170 = load float, float* %6, align 4
  %171 = fmul float %169, %170
  %172 = load float, float* %9, align 4
  %173 = fmul float %171, %172
  %174 = fdiv float %165, %173
  store float %174, float* %8, align 4
  %175 = load float, float* %9, align 4
  store float %175, float* %12, align 4
  %176 = load float, float* getelementptr inbounds ([200 x float], [200 x float]* @main.x, i64 0, i64 0), align 16
  %177 = fsub float %176, 1.000000e+00
  store float %177, float* %13, align 4
  %178 = load i32, i32* @main.n, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i64 0, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fsub float %182, 1.000000e+00
  store float %183, float* %14, align 4
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %189 = load float, float* %8, align 4
  %190 = fpext float %189 to double
  %191 = load float, float* %7, align 4
  %192 = fpext float %191 to double
  %193 = load float, float* %12, align 4
  %194 = fpext float %193 to double
  %195 = load float, float* %13, align 4
  %196 = fpext float %195 to double
  %197 = load float, float* %14, align 4
  %198 = fpext float %197 to double
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), double %190, double %192, double %194, double %196, double %198)
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %201 = load i32, i32* @main.n, align 4
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %201)
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %204 = load i32, i32* @main.lda, align 4
  %205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %204)
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %210 = load float, float* %4, align 4
  store float %210, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 2, i64 0), align 8
  %211 = load float, float* %4, align 4
  %212 = fpext float %211 to double
  %213 = fcmp ogt double %212, 0.000000e+00
  br i1 %213, label %214, label %226

214:                                              ; preds = %163
  %215 = load float, float* %3, align 4
  %216 = fpext float %215 to double
  %217 = load float, float* %4, align 4
  %218 = fpext float %217 to double
  %219 = fmul double 1.000000e+06, %218
  %220 = fdiv double %216, %219
  %221 = fptrunc double %220 to float
  store float %221, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 0), align 4
  %222 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 0), align 4
  %223 = fpext float %222 to double
  %224 = fdiv double 2.000000e+00, %223
  %225 = fptrunc double %224 to float
  store float %225, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 4, i64 0), align 16
  br label %227

226:                                              ; preds = %163
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 0), align 4
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 4, i64 0), align 16
  br label %227

227:                                              ; preds = %226, %214
  %228 = load float, float* %4, align 4
  %229 = load float, float* %2, align 4
  %230 = fdiv float %228, %229
  store float %230, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 5, i64 0), align 4
  call void @print_time(i32 0)
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  store i32 -3, i32* %16, align 4
  store i32 100, i32* %17, align 4
  br label %233

233:                                              ; preds = %261, %227
  %234 = call float @second()
  store float %234, float* %20, align 4
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %16, align 4
  store i32 0, i32* @main.i, align 4
  br label %237

237:                                              ; preds = %244, %233
  %238 = load i32, i32* @main.i, align 4
  %239 = load i32, i32* %17, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load i32, i32* @main.lda, align 4
  %243 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %242, i32 %243, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), float* %5)
  br label %244

244:                                              ; preds = %241
  %245 = load i32, i32* @main.i, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* @main.i, align 4
  br label %237

247:                                              ; preds = %237
  %248 = call float @second()
  store float %248, float* %21, align 4
  %249 = load float, float* %21, align 4
  %250 = load float, float* %20, align 4
  %251 = fsub float %249, %250
  store float %251, float* %18, align 4
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %253 = load i32, i32* %17, align 4
  %254 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %253, double 0.000000e+00)
  %255 = load i32, i32* %16, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %247
  %258 = load i32, i32* %17, align 4
  %259 = mul nsw i32 %258, 2
  store i32 %259, i32* %17, align 4
  br label %260

260:                                              ; preds = %257, %247
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %16, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %233, label %264

264:                                              ; preds = %261
  %265 = load float, float* %18, align 4
  %266 = fpext float %265 to double
  %267 = load i32, i32* %17, align 4
  %268 = sitofp i32 %267 to double
  %269 = fdiv double %266, %268
  %270 = fptrunc double %269 to float
  store float %270, float* %18, align 4
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %271, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), double 0.000000e+00)
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  store i32 -3, i32* %16, align 4
  store i32 100, i32* @main.ntimes, align 4
  br label %275

275:                                              ; preds = %304, %264
  %276 = call float @second()
  store float %276, float* %20, align 4
  %277 = load i32, i32* %16, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %16, align 4
  store i32 0, i32* @main.i, align 4
  br label %279

279:                                              ; preds = %288, %275
  %280 = load i32, i32* @main.i, align 4
  %281 = load i32, i32* @main.ntimes, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %291

283:                                              ; preds = %279
  %284 = load i32, i32* @main.lda, align 4
  %285 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %284, i32 %285, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), float* %5)
  %286 = load i32, i32* @main.lda, align 4
  %287 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %286, i32 %287, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i64 0, i64 0), i32* @main.info)
  br label %288

288:                                              ; preds = %283
  %289 = load i32, i32* @main.i, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* @main.i, align 4
  br label %279

291:                                              ; preds = %279
  %292 = call float @second()
  %293 = load float, float* %20, align 4
  %294 = fsub float %292, %293
  store float %294, float* %21, align 4
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %296 = load i32, i32* @main.ntimes, align 4
  %297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %296, double 0.000000e+00)
  %298 = load i32, i32* %16, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %291
  %301 = load i32, i32* @main.ntimes, align 4
  %302 = mul nsw i32 %301, 2
  store i32 %302, i32* @main.ntimes, align 4
  br label %303

303:                                              ; preds = %300, %291
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %16, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %275, label %307

307:                                              ; preds = %304
  store i32 1000, i32* @main.ntimes, align 4
  %308 = load i32, i32* @main.ntimes, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i32 1, i32* @main.ntimes, align 4
  br label %311

311:                                              ; preds = %310, %307
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %313 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %312, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %315 = load i32, i32* @main.lda, align 4
  %316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %314, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %315)
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %317, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %321 = load i32, i32* @main.ntimes, align 4
  %322 = sitofp i32 %321 to float
  %323 = load float, float* %18, align 4
  %324 = fmul float %322, %323
  store float %324, float* %11, align 4
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 6), align 4
  store i32 1, i32* @main.j, align 4
  br label %325

325:                                              ; preds = %421, %311
  %326 = load i32, i32* @main.j, align 4
  %327 = icmp slt i32 %326, 6
  br i1 %327, label %328, label %424

328:                                              ; preds = %325
  %329 = call float @second()
  store float %329, float* %10, align 4
  store i32 0, i32* @main.i, align 4
  br label %330

330:                                              ; preds = %339, %328
  %331 = load i32, i32* @main.i, align 4
  %332 = load i32, i32* @main.ntimes, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %330
  %335 = load i32, i32* @main.lda, align 4
  %336 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %335, i32 %336, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), float* %5)
  %337 = load i32, i32* @main.lda, align 4
  %338 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %337, i32 %338, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i64 0, i64 0), i32* @main.info)
  br label %339

339:                                              ; preds = %334
  %340 = load i32, i32* @main.i, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* @main.i, align 4
  br label %330

342:                                              ; preds = %330
  %343 = call float @second()
  %344 = load float, float* %10, align 4
  %345 = fsub float %343, %344
  %346 = load float, float* %11, align 4
  %347 = fsub float %345, %346
  %348 = load i32, i32* @main.ntimes, align 4
  %349 = sitofp i32 %348 to float
  %350 = fdiv float %347, %349
  %351 = load i32, i32* @main.j, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 0), i64 0, i64 %352
  store float %350, float* %353, align 4
  %354 = call float @second()
  store float %354, float* %10, align 4
  store i32 0, i32* @main.i, align 4
  br label %355

355:                                              ; preds = %362, %342
  %356 = load i32, i32* @main.i, align 4
  %357 = load i32, i32* @main.ntimes, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %355
  %360 = load i32, i32* @main.lda, align 4
  %361 = load i32, i32* @main.n, align 4
  call void @dgesl(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i64 0, i64 0), i32 %360, i32 %361, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i64 0, i64 0), float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), i32 0)
  br label %362

362:                                              ; preds = %359
  %363 = load i32, i32* @main.i, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* @main.i, align 4
  br label %355

365:                                              ; preds = %355
  %366 = call float @second()
  %367 = load float, float* %10, align 4
  %368 = fsub float %366, %367
  %369 = load i32, i32* @main.ntimes, align 4
  %370 = sitofp i32 %369 to float
  %371 = fdiv float %368, %370
  %372 = load i32, i32* @main.j, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 1), i64 0, i64 %373
  store float %371, float* %374, align 4
  %375 = load i32, i32* @main.j, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 0), i64 0, i64 %376
  %378 = load float, float* %377, align 4
  %379 = load i32, i32* @main.j, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 1), i64 0, i64 %380
  %382 = load float, float* %381, align 4
  %383 = fadd float %378, %382
  store float %383, float* %4, align 4
  %384 = load float, float* %4, align 4
  %385 = load i32, i32* @main.j, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 2), i64 0, i64 %386
  store float %384, float* %387, align 4
  %388 = load float, float* %3, align 4
  %389 = fpext float %388 to double
  %390 = load float, float* %4, align 4
  %391 = fpext float %390 to double
  %392 = fmul double 1.000000e+06, %391
  %393 = fdiv double %389, %392
  %394 = fptrunc double %393 to float
  %395 = load i32, i32* @main.j, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3), i64 0, i64 %396
  store float %394, float* %397, align 4
  %398 = load i32, i32* @main.j, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3), i64 0, i64 %399
  %401 = load float, float* %400, align 4
  %402 = fpext float %401 to double
  %403 = fdiv double 2.000000e+00, %402
  %404 = fptrunc double %403 to float
  %405 = load i32, i32* @main.j, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 4), i64 0, i64 %406
  store float %404, float* %407, align 4
  %408 = load float, float* %4, align 4
  %409 = load float, float* %2, align 4
  %410 = fdiv float %408, %409
  %411 = load i32, i32* @main.j, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 5), i64 0, i64 %412
  store float %410, float* %413, align 4
  %414 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 6), align 4
  %415 = load i32, i32* @main.j, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3), i64 0, i64 %416
  %418 = load float, float* %417, align 4
  %419 = fadd float %414, %418
  store float %419, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 6), align 4
  %420 = load i32, i32* @main.j, align 4
  call void @print_time(i32 %420)
  br label %421

421:                                              ; preds = %365
  %422 = load i32, i32* @main.j, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* @main.j, align 4
  br label %325

424:                                              ; preds = %325
  %425 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 6), align 4
  %426 = fpext float %425 to double
  %427 = fdiv double %426, 5.000000e+00
  %428 = fptrunc double %427 to float
  store float %428, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 6), align 4
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %430 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %429, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), double 0.000000e+00)
  %431 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %432 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %431, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %433 = call float @second()
  store float %433, float* %20, align 4
  store i32 0, i32* @main.i, align 4
  br label %434

434:                                              ; preds = %441, %424
  %435 = load i32, i32* @main.i, align 4
  %436 = load i32, i32* %17, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %444

438:                                              ; preds = %434
  %439 = load i32, i32* @main.ldaa, align 4
  %440 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i64 0, i64 0), i32 %439, i32 %440, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), float* %5)
  br label %441

441:                                              ; preds = %438
  %442 = load i32, i32* @main.i, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* @main.i, align 4
  br label %434

444:                                              ; preds = %434
  %445 = call float @second()
  store float %445, float* %21, align 4
  %446 = load float, float* %21, align 4
  %447 = load float, float* %20, align 4
  %448 = fsub float %446, %447
  store float %448, float* %19, align 4
  %449 = load float, float* %19, align 4
  %450 = fpext float %449 to double
  %451 = load i32, i32* %17, align 4
  %452 = sitofp i32 %451 to double
  %453 = fdiv double %450, %452
  %454 = fptrunc double %453 to float
  store float %454, float* %19, align 4
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %456 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), double 0.000000e+00)
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %458 = load i32, i32* @main.ldaa, align 4
  %459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %457, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %458)
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %460, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  %462 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %463 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %462, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %464 = load i32, i32* @main.ntimes, align 4
  %465 = sitofp i32 %464 to float
  %466 = load float, float* %19, align 4
  %467 = fmul float %465, %466
  store float %467, float* %11, align 4
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 12), align 4
  store i32 7, i32* @main.j, align 4
  br label %468

468:                                              ; preds = %564, %444
  %469 = load i32, i32* @main.j, align 4
  %470 = icmp slt i32 %469, 12
  br i1 %470, label %471, label %567

471:                                              ; preds = %468
  %472 = call float @second()
  store float %472, float* %10, align 4
  store i32 0, i32* @main.i, align 4
  br label %473

473:                                              ; preds = %482, %471
  %474 = load i32, i32* @main.i, align 4
  %475 = load i32, i32* @main.ntimes, align 4
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %477, label %485

477:                                              ; preds = %473
  %478 = load i32, i32* @main.ldaa, align 4
  %479 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i64 0, i64 0), i32 %478, i32 %479, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), float* %5)
  %480 = load i32, i32* @main.ldaa, align 4
  %481 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i64 0, i64 0), i32 %480, i32 %481, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i64 0, i64 0), i32* @main.info)
  br label %482

482:                                              ; preds = %477
  %483 = load i32, i32* @main.i, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* @main.i, align 4
  br label %473

485:                                              ; preds = %473
  %486 = call float @second()
  %487 = load float, float* %10, align 4
  %488 = fsub float %486, %487
  %489 = load float, float* %11, align 4
  %490 = fsub float %488, %489
  %491 = load i32, i32* @main.ntimes, align 4
  %492 = sitofp i32 %491 to float
  %493 = fdiv float %490, %492
  %494 = load i32, i32* @main.j, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 0), i64 0, i64 %495
  store float %493, float* %496, align 4
  %497 = call float @second()
  store float %497, float* %10, align 4
  store i32 0, i32* @main.i, align 4
  br label %498

498:                                              ; preds = %505, %485
  %499 = load i32, i32* @main.i, align 4
  %500 = load i32, i32* @main.ntimes, align 4
  %501 = icmp slt i32 %499, %500
  br i1 %501, label %502, label %508

502:                                              ; preds = %498
  %503 = load i32, i32* @main.ldaa, align 4
  %504 = load i32, i32* @main.n, align 4
  call void @dgesl(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i64 0, i64 0), i32 %503, i32 %504, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i64 0, i64 0), float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i64 0, i64 0), i32 0)
  br label %505

505:                                              ; preds = %502
  %506 = load i32, i32* @main.i, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* @main.i, align 4
  br label %498

508:                                              ; preds = %498
  %509 = call float @second()
  %510 = load float, float* %10, align 4
  %511 = fsub float %509, %510
  %512 = load i32, i32* @main.ntimes, align 4
  %513 = sitofp i32 %512 to float
  %514 = fdiv float %511, %513
  %515 = load i32, i32* @main.j, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 1), i64 0, i64 %516
  store float %514, float* %517, align 4
  %518 = load i32, i32* @main.j, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 0), i64 0, i64 %519
  %521 = load float, float* %520, align 4
  %522 = load i32, i32* @main.j, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 1), i64 0, i64 %523
  %525 = load float, float* %524, align 4
  %526 = fadd float %521, %525
  store float %526, float* %4, align 4
  %527 = load float, float* %4, align 4
  %528 = load i32, i32* @main.j, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 2), i64 0, i64 %529
  store float %527, float* %530, align 4
  %531 = load float, float* %3, align 4
  %532 = fpext float %531 to double
  %533 = load float, float* %4, align 4
  %534 = fpext float %533 to double
  %535 = fmul double 1.000000e+06, %534
  %536 = fdiv double %532, %535
  %537 = fptrunc double %536 to float
  %538 = load i32, i32* @main.j, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3), i64 0, i64 %539
  store float %537, float* %540, align 4
  %541 = load i32, i32* @main.j, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3), i64 0, i64 %542
  %544 = load float, float* %543, align 4
  %545 = fpext float %544 to double
  %546 = fdiv double 2.000000e+00, %545
  %547 = fptrunc double %546 to float
  %548 = load i32, i32* @main.j, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 4), i64 0, i64 %549
  store float %547, float* %550, align 4
  %551 = load float, float* %4, align 4
  %552 = load float, float* %2, align 4
  %553 = fdiv float %551, %552
  %554 = load i32, i32* @main.j, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 5), i64 0, i64 %555
  store float %553, float* %556, align 4
  %557 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 12), align 4
  %558 = load i32, i32* @main.j, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3), i64 0, i64 %559
  %561 = load float, float* %560, align 4
  %562 = fadd float %557, %561
  store float %562, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 12), align 4
  %563 = load i32, i32* @main.j, align 4
  call void @print_time(i32 %563)
  br label %564

564:                                              ; preds = %508
  %565 = load i32, i32* @main.j, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* @main.j, align 4
  br label %468

567:                                              ; preds = %468
  %568 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 12), align 4
  %569 = fpext float %568 to double
  %570 = fdiv double %569, 5.000000e+00
  %571 = fptrunc double %570 to float
  store float %571, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i64 0, i64 3, i64 12), align 4
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %573 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %572, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), double 0.000000e+00)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(float* %0, i32 %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  store i32 1325, i32* %11, align 4
  %14 = load float*, float** %10, align 8
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %73, %5
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %69, %19
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 3125, %25
  %27 = srem i32 %26, 65536
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sitofp i32 %28 to double
  %30 = fsub double %29, 3.276800e+04
  %31 = fdiv double %30, 1.638400e+04
  %32 = fptrunc double %31 to float
  %33 = load float*, float** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %33, i64 %39
  store float %32, float* %40, align 4
  %41 = load float*, float** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %13, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %41, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %10, align 8
  %51 = load float, float* %50, align 4
  %52 = fcmp ogt float %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %24
  %54 = load float*, float** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %54, i64 %60
  %62 = load float, float* %61, align 4
  br label %66

63:                                               ; preds = %24
  %64 = load float*, float** %10, align 8
  %65 = load float, float* %64, align 4
  br label %66

66:                                               ; preds = %63, %53
  %67 = phi float [ %62, %53 ], [ %65, %63 ]
  %68 = load float*, float** %10, align 8
  store float %67, float* %68, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %20

72:                                               ; preds = %20
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %15

76:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %86, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load float*, float** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  store float 0.000000e+00, float* %85, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %77

89:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %123, %89
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %119, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load float*, float** %9, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = load float*, float** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %13, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %105, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fadd float %104, %113
  %115 = load float*, float** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  store float %114, float* %118, align 4
  br label %119

119:                                              ; preds = %99
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %95

122:                                              ; preds = %95
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %90

126:                                              ; preds = %90
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(float* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %208

22:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %204, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %207

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load float*, float** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %33, i64 %39
  %41 = call i32 @idamax(i32 %32, float* %40, i32 1)
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load float*, float** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %49, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fpext float %57 to double
  %59 = fcmp une double %58, 0.000000e+00
  br i1 %59, label %60, label %200

60:                                               ; preds = %27
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %60
  %65 = load float*, float** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %65, i64 %71
  %73 = load float, float* %72, align 4
  store float %73, float* %11, align 4
  %74 = load float*, float** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %74, i64 %80
  %82 = load float, float* %81, align 4
  %83 = load float*, float** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %13, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %83, i64 %89
  store float %82, float* %90, align 4
  %91 = load float, float* %11, align 4
  %92 = load float*, float** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %92, i64 %98
  store float %91, float* %99, align 4
  br label %100

100:                                              ; preds = %64, %60
  %101 = load float*, float** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %101, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fpext float %109 to double
  %111 = fdiv double -1.000000e+00, %110
  %112 = fptrunc double %111 to float
  store float %112, float* %11, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  %116 = sub nsw i32 %113, %115
  %117 = load float, float* %11, align 4
  %118 = load float*, float** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %13, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %118, i64 %125
  call void @dscal(i32 %116, float %117, float* %126, i32 1)
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %196, %100
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %199

132:                                              ; preds = %128
  %133 = load float*, float** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %12, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %133, i64 %139
  %141 = load float, float* %140, align 4
  store float %141, float* %11, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %132
  %146 = load float*, float** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %146, i64 %152
  %154 = load float, float* %153, align 4
  %155 = load float*, float** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %12, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %155, i64 %161
  store float %154, float* %162, align 4
  %163 = load float, float* %11, align 4
  %164 = load float*, float** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %12, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %164, i64 %170
  store float %163, float* %171, align 4
  br label %172

172:                                              ; preds = %145, %132
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  %176 = sub nsw i32 %173, %175
  %177 = load float, float* %11, align 4
  %178 = load float*, float** %6, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %13, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %181, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %178, i64 %185
  %187 = load float*, float** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %12, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %190, %191
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %187, i64 %194
  call void @daxpy(i32 %176, float %177, float* %186, i32 1, float* %195, i32 1)
  br label %196

196:                                              ; preds = %172
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %128

199:                                              ; preds = %128
  br label %203

200:                                              ; preds = %27
  %201 = load i32, i32* %13, align 4
  %202 = load i32*, i32** %10, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %199
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %23

207:                                              ; preds = %23
  br label %208

208:                                              ; preds = %207, %5
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 %209, 1
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 %210, i32* %215, align 4
  %216 = load float*, float** %6, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = sub nsw i32 %218, 1
  %220 = mul nsw i32 %217, %219
  %221 = load i32, i32* %8, align 4
  %222 = sub nsw i32 %221, 1
  %223 = add nsw i32 %220, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %216, i64 %224
  %226 = load float, float* %225, align 4
  %227 = fpext float %226 to double
  %228 = fcmp oeq double %227, 0.000000e+00
  br i1 %228, label %229, label %233

229:                                              ; preds = %208
  %230 = load i32, i32* %8, align 4
  %231 = sub nsw i32 %230, 1
  %232 = load i32*, i32** %10, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %229, %208
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(float* %0, i32 %1, i32 %2, i32* %3, float* %4, i32 %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %133

22:                                               ; preds = %6
  %23 = load i32, i32* %17, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %79, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load float*, float** %11, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  store float %40, float* %13, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %30
  %45 = load float*, float** %11, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %11, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float %49, float* %53, align 4
  %54 = load float, float* %13, align 4
  %55 = load float*, float** %11, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float %54, float* %58, align 4
  br label %59

59:                                               ; preds = %44, %30
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = sub nsw i32 %60, %62
  %64 = load float, float* %13, align 4
  %65 = load float*, float** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %68, %69
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %65, i64 %72
  %74 = load float*, float** %11, align 8
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %74, i64 %77
  call void @daxpy(i32 %63, float %64, float* %73, i32 1, float* %78, i32 1)
  br label %79

79:                                               ; preds = %59
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %26

82:                                               ; preds = %26
  br label %83

83:                                               ; preds = %82, %22
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %129, %83
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  %92 = sub nsw i32 %89, %91
  store i32 %92, i32* %14, align 4
  %93 = load float*, float** %11, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %98, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fdiv float %97, %106
  %108 = load float*, float** %11, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  store float %107, float* %111, align 4
  %112 = load float*, float** %11, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fneg float %116
  store float %117, float* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load float, float* %13, align 4
  %120 = load float*, float** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %14, align 4
  %123 = mul nsw i32 %121, %122
  %124 = add nsw i32 %123, 0
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %120, i64 %125
  %127 = load float*, float** %11, align 8
  %128 = getelementptr inbounds float, float* %127, i64 0
  call void @daxpy(i32 %118, float %119, float* %126, i32 1, float* %128, i32 1)
  br label %129

129:                                              ; preds = %88
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %84

132:                                              ; preds = %84
  br label %250

133:                                              ; preds = %6
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %171, %133
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %174

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = load float*, float** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %143, 0
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %140, i64 %145
  %147 = load float*, float** %11, align 8
  %148 = getelementptr inbounds float, float* %147, i64 0
  %149 = call float @ddot(i32 %139, float* %146, i32 1, float* %148, i32 1)
  store float %149, float* %13, align 4
  %150 = load float*, float** %11, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %150, i64 %152
  %154 = load float, float* %153, align 4
  %155 = load float, float* %13, align 4
  %156 = fsub float %154, %155
  %157 = load float*, float** %7, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %14, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %157, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fdiv float %156, %165
  %167 = load float*, float** %11, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %167, i64 %169
  store float %166, float* %170, align 4
  br label %171

171:                                              ; preds = %138
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %134

174:                                              ; preds = %134
  %175 = load i32, i32* %17, align 4
  %176 = icmp sge i32 %175, 1
  br i1 %176, label %177, label %249

177:                                              ; preds = %174
  store i32 1, i32* %15, align 4
  br label %178

178:                                              ; preds = %245, %177
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %248

182:                                              ; preds = %178
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, 1
  %186 = sub nsw i32 %183, %185
  store i32 %186, i32* %14, align 4
  %187 = load float*, float** %11, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  %195 = sub nsw i32 %192, %194
  %196 = load float*, float** %7, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %196, i64 %203
  %205 = load float*, float** %11, align 8
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %205, i64 %208
  %210 = call float @ddot(i32 %195, float* %204, i32 1, float* %209, i32 1)
  %211 = fadd float %191, %210
  %212 = load float*, float** %11, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  store float %211, float* %215, align 4
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %244

224:                                              ; preds = %182
  %225 = load float*, float** %11, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  %229 = load float, float* %228, align 4
  store float %229, float* %13, align 4
  %230 = load float*, float** %11, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  %234 = load float, float* %233, align 4
  %235 = load float*, float** %11, align 8
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %235, i64 %237
  store float %234, float* %238, align 4
  %239 = load float, float* %13, align 4
  %240 = load float*, float** %11, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  store float %239, float* %243, align 4
  br label %244

244:                                              ; preds = %224, %182
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %178

248:                                              ; preds = %178
  br label %249

249:                                              ; preds = %248, %174
  br label %250

250:                                              ; preds = %249, %132
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dmxpy(i32 %0, float* %1, i32 %2, i32 %3, float* %4, float* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = srem i32 %16, 2
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %57

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %53, %20
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load float*, float** %8, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %38, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fmul float %37, %46
  %48 = fadd float %32, %47
  %49 = load float*, float** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %48, float* %52, align 4
  br label %53

53:                                               ; preds = %27
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %23

56:                                               ; preds = %23
  br label %57

57:                                               ; preds = %56, %6
  %58 = load i32, i32* %9, align 4
  %59 = srem i32 %58, 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp sge i32 %60, 2
  br i1 %61, label %62, label %117

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %113, %62
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %65
  %70 = load float*, float** %8, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %11, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %75, i64 %78
  %80 = load float, float* %79, align 4
  %81 = load float*, float** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %83, 1
  %85 = mul nsw i32 %82, %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %81, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fmul float %80, %90
  %92 = fadd float %74, %91
  %93 = load float*, float** %11, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %12, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %13, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %98, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fmul float %97, %106
  %108 = fadd float %92, %107
  %109 = load float*, float** %8, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  store float %108, float* %112, align 4
  br label %113

113:                                              ; preds = %69
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %65

116:                                              ; preds = %65
  br label %117

117:                                              ; preds = %116, %57
  %118 = load i32, i32* %9, align 4
  %119 = srem i32 %118, 8
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp sge i32 %120, 4
  br i1 %121, label %122, label %213

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %209, %122
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %212

129:                                              ; preds = %125
  %130 = load float*, float** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = load float*, float** %11, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %135, i64 %138
  %140 = load float, float* %139, align 4
  %141 = load float*, float** %12, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 3
  %145 = mul nsw i32 %142, %144
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %141, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fmul float %140, %150
  %152 = fadd float %134, %151
  %153 = load float*, float** %11, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  %158 = load float, float* %157, align 4
  %159 = load float*, float** %12, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 %161, 2
  %163 = mul nsw i32 %160, %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %159, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fmul float %158, %168
  %170 = fadd float %152, %169
  %171 = load float*, float** %11, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %171, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %12, align 8
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %179, 1
  %181 = mul nsw i32 %178, %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %177, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fmul float %176, %186
  %188 = fadd float %170, %187
  %189 = load float*, float** %11, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %189, i64 %191
  %193 = load float, float* %192, align 4
  %194 = load float*, float** %12, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %13, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %194, i64 %200
  %202 = load float, float* %201, align 4
  %203 = fmul float %193, %202
  %204 = fadd float %188, %203
  %205 = load float*, float** %8, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  store float %204, float* %208, align 4
  br label %209

209:                                              ; preds = %129
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %125

212:                                              ; preds = %125
  br label %213

213:                                              ; preds = %212, %117
  %214 = load i32, i32* %9, align 4
  %215 = srem i32 %214, 16
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp sge i32 %216, 8
  br i1 %217, label %218, label %381

218:                                              ; preds = %213
  %219 = load i32, i32* %13, align 4
  %220 = sub nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %221

221:                                              ; preds = %377, %218
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %380

225:                                              ; preds = %221
  %226 = load float*, float** %8, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  %230 = load float, float* %229, align 4
  %231 = load float*, float** %11, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sub nsw i32 %232, 7
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %231, i64 %234
  %236 = load float, float* %235, align 4
  %237 = load float*, float** %12, align 8
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %13, align 4
  %240 = sub nsw i32 %239, 7
  %241 = mul nsw i32 %238, %240
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %237, i64 %244
  %246 = load float, float* %245, align 4
  %247 = fmul float %236, %246
  %248 = fadd float %230, %247
  %249 = load float*, float** %11, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sub nsw i32 %250, 6
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %249, i64 %252
  %254 = load float, float* %253, align 4
  %255 = load float*, float** %12, align 8
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %13, align 4
  %258 = sub nsw i32 %257, 6
  %259 = mul nsw i32 %256, %258
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %255, i64 %262
  %264 = load float, float* %263, align 4
  %265 = fmul float %254, %264
  %266 = fadd float %248, %265
  %267 = load float*, float** %11, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sub nsw i32 %268, 5
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %267, i64 %270
  %272 = load float, float* %271, align 4
  %273 = load float*, float** %12, align 8
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* %13, align 4
  %276 = sub nsw i32 %275, 5
  %277 = mul nsw i32 %274, %276
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %273, i64 %280
  %282 = load float, float* %281, align 4
  %283 = fmul float %272, %282
  %284 = fadd float %266, %283
  %285 = load float*, float** %11, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sub nsw i32 %286, 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %285, i64 %288
  %290 = load float, float* %289, align 4
  %291 = load float*, float** %12, align 8
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* %13, align 4
  %294 = sub nsw i32 %293, 4
  %295 = mul nsw i32 %292, %294
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %291, i64 %298
  %300 = load float, float* %299, align 4
  %301 = fmul float %290, %300
  %302 = fadd float %284, %301
  %303 = load float*, float** %11, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sub nsw i32 %304, 3
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %303, i64 %306
  %308 = load float, float* %307, align 4
  %309 = load float*, float** %12, align 8
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %13, align 4
  %312 = sub nsw i32 %311, 3
  %313 = mul nsw i32 %310, %312
  %314 = load i32, i32* %14, align 4
  %315 = add nsw i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %309, i64 %316
  %318 = load float, float* %317, align 4
  %319 = fmul float %308, %318
  %320 = fadd float %302, %319
  %321 = load float*, float** %11, align 8
  %322 = load i32, i32* %13, align 4
  %323 = sub nsw i32 %322, 2
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %321, i64 %324
  %326 = load float, float* %325, align 4
  %327 = load float*, float** %12, align 8
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* %13, align 4
  %330 = sub nsw i32 %329, 2
  %331 = mul nsw i32 %328, %330
  %332 = load i32, i32* %14, align 4
  %333 = add nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %327, i64 %334
  %336 = load float, float* %335, align 4
  %337 = fmul float %326, %336
  %338 = fadd float %320, %337
  %339 = load float*, float** %11, align 8
  %340 = load i32, i32* %13, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %339, i64 %342
  %344 = load float, float* %343, align 4
  %345 = load float*, float** %12, align 8
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* %13, align 4
  %348 = sub nsw i32 %347, 1
  %349 = mul nsw i32 %346, %348
  %350 = load i32, i32* %14, align 4
  %351 = add nsw i32 %349, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %345, i64 %352
  %354 = load float, float* %353, align 4
  %355 = fmul float %344, %354
  %356 = fadd float %338, %355
  %357 = load float*, float** %11, align 8
  %358 = load i32, i32* %13, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, float* %357, i64 %359
  %361 = load float, float* %360, align 4
  %362 = load float*, float** %12, align 8
  %363 = load i32, i32* %10, align 4
  %364 = load i32, i32* %13, align 4
  %365 = mul nsw i32 %363, %364
  %366 = load i32, i32* %14, align 4
  %367 = add nsw i32 %365, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %362, i64 %368
  %370 = load float, float* %369, align 4
  %371 = fmul float %361, %370
  %372 = fadd float %356, %371
  %373 = load float*, float** %8, align 8
  %374 = load i32, i32* %14, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %373, i64 %375
  store float %372, float* %376, align 4
  br label %377

377:                                              ; preds = %225
  %378 = load i32, i32* %14, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %14, align 4
  br label %221

380:                                              ; preds = %221
  br label %381

381:                                              ; preds = %380, %213
  %382 = load i32, i32* %9, align 4
  %383 = srem i32 %382, 16
  %384 = add nsw i32 %383, 16
  store i32 %384, i32* %15, align 4
  %385 = load i32, i32* %15, align 4
  %386 = sub nsw i32 %385, 1
  store i32 %386, i32* %13, align 4
  br label %387

387:                                              ; preds = %696, %381
  %388 = load i32, i32* %13, align 4
  %389 = load i32, i32* %9, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %699

391:                                              ; preds = %387
  store i32 0, i32* %14, align 4
  br label %392

392:                                              ; preds = %692, %391
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* %7, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %695

396:                                              ; preds = %392
  %397 = load float*, float** %8, align 8
  %398 = load i32, i32* %14, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %397, i64 %399
  %401 = load float, float* %400, align 4
  %402 = load float*, float** %11, align 8
  %403 = load i32, i32* %13, align 4
  %404 = sub nsw i32 %403, 15
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %402, i64 %405
  %407 = load float, float* %406, align 4
  %408 = load float*, float** %12, align 8
  %409 = load i32, i32* %10, align 4
  %410 = load i32, i32* %13, align 4
  %411 = sub nsw i32 %410, 15
  %412 = mul nsw i32 %409, %411
  %413 = load i32, i32* %14, align 4
  %414 = add nsw i32 %412, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %408, i64 %415
  %417 = load float, float* %416, align 4
  %418 = fmul float %407, %417
  %419 = fadd float %401, %418
  %420 = load float*, float** %11, align 8
  %421 = load i32, i32* %13, align 4
  %422 = sub nsw i32 %421, 14
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds float, float* %420, i64 %423
  %425 = load float, float* %424, align 4
  %426 = load float*, float** %12, align 8
  %427 = load i32, i32* %10, align 4
  %428 = load i32, i32* %13, align 4
  %429 = sub nsw i32 %428, 14
  %430 = mul nsw i32 %427, %429
  %431 = load i32, i32* %14, align 4
  %432 = add nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds float, float* %426, i64 %433
  %435 = load float, float* %434, align 4
  %436 = fmul float %425, %435
  %437 = fadd float %419, %436
  %438 = load float*, float** %11, align 8
  %439 = load i32, i32* %13, align 4
  %440 = sub nsw i32 %439, 13
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %438, i64 %441
  %443 = load float, float* %442, align 4
  %444 = load float*, float** %12, align 8
  %445 = load i32, i32* %10, align 4
  %446 = load i32, i32* %13, align 4
  %447 = sub nsw i32 %446, 13
  %448 = mul nsw i32 %445, %447
  %449 = load i32, i32* %14, align 4
  %450 = add nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds float, float* %444, i64 %451
  %453 = load float, float* %452, align 4
  %454 = fmul float %443, %453
  %455 = fadd float %437, %454
  %456 = load float*, float** %11, align 8
  %457 = load i32, i32* %13, align 4
  %458 = sub nsw i32 %457, 12
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds float, float* %456, i64 %459
  %461 = load float, float* %460, align 4
  %462 = load float*, float** %12, align 8
  %463 = load i32, i32* %10, align 4
  %464 = load i32, i32* %13, align 4
  %465 = sub nsw i32 %464, 12
  %466 = mul nsw i32 %463, %465
  %467 = load i32, i32* %14, align 4
  %468 = add nsw i32 %466, %467
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds float, float* %462, i64 %469
  %471 = load float, float* %470, align 4
  %472 = fmul float %461, %471
  %473 = fadd float %455, %472
  %474 = load float*, float** %11, align 8
  %475 = load i32, i32* %13, align 4
  %476 = sub nsw i32 %475, 11
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %474, i64 %477
  %479 = load float, float* %478, align 4
  %480 = load float*, float** %12, align 8
  %481 = load i32, i32* %10, align 4
  %482 = load i32, i32* %13, align 4
  %483 = sub nsw i32 %482, 11
  %484 = mul nsw i32 %481, %483
  %485 = load i32, i32* %14, align 4
  %486 = add nsw i32 %484, %485
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds float, float* %480, i64 %487
  %489 = load float, float* %488, align 4
  %490 = fmul float %479, %489
  %491 = fadd float %473, %490
  %492 = load float*, float** %11, align 8
  %493 = load i32, i32* %13, align 4
  %494 = sub nsw i32 %493, 10
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds float, float* %492, i64 %495
  %497 = load float, float* %496, align 4
  %498 = load float*, float** %12, align 8
  %499 = load i32, i32* %10, align 4
  %500 = load i32, i32* %13, align 4
  %501 = sub nsw i32 %500, 10
  %502 = mul nsw i32 %499, %501
  %503 = load i32, i32* %14, align 4
  %504 = add nsw i32 %502, %503
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds float, float* %498, i64 %505
  %507 = load float, float* %506, align 4
  %508 = fmul float %497, %507
  %509 = fadd float %491, %508
  %510 = load float*, float** %11, align 8
  %511 = load i32, i32* %13, align 4
  %512 = sub nsw i32 %511, 9
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds float, float* %510, i64 %513
  %515 = load float, float* %514, align 4
  %516 = load float*, float** %12, align 8
  %517 = load i32, i32* %10, align 4
  %518 = load i32, i32* %13, align 4
  %519 = sub nsw i32 %518, 9
  %520 = mul nsw i32 %517, %519
  %521 = load i32, i32* %14, align 4
  %522 = add nsw i32 %520, %521
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds float, float* %516, i64 %523
  %525 = load float, float* %524, align 4
  %526 = fmul float %515, %525
  %527 = fadd float %509, %526
  %528 = load float*, float** %11, align 8
  %529 = load i32, i32* %13, align 4
  %530 = sub nsw i32 %529, 8
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds float, float* %528, i64 %531
  %533 = load float, float* %532, align 4
  %534 = load float*, float** %12, align 8
  %535 = load i32, i32* %10, align 4
  %536 = load i32, i32* %13, align 4
  %537 = sub nsw i32 %536, 8
  %538 = mul nsw i32 %535, %537
  %539 = load i32, i32* %14, align 4
  %540 = add nsw i32 %538, %539
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds float, float* %534, i64 %541
  %543 = load float, float* %542, align 4
  %544 = fmul float %533, %543
  %545 = fadd float %527, %544
  %546 = load float*, float** %11, align 8
  %547 = load i32, i32* %13, align 4
  %548 = sub nsw i32 %547, 7
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds float, float* %546, i64 %549
  %551 = load float, float* %550, align 4
  %552 = load float*, float** %12, align 8
  %553 = load i32, i32* %10, align 4
  %554 = load i32, i32* %13, align 4
  %555 = sub nsw i32 %554, 7
  %556 = mul nsw i32 %553, %555
  %557 = load i32, i32* %14, align 4
  %558 = add nsw i32 %556, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds float, float* %552, i64 %559
  %561 = load float, float* %560, align 4
  %562 = fmul float %551, %561
  %563 = fadd float %545, %562
  %564 = load float*, float** %11, align 8
  %565 = load i32, i32* %13, align 4
  %566 = sub nsw i32 %565, 6
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds float, float* %564, i64 %567
  %569 = load float, float* %568, align 4
  %570 = load float*, float** %12, align 8
  %571 = load i32, i32* %10, align 4
  %572 = load i32, i32* %13, align 4
  %573 = sub nsw i32 %572, 6
  %574 = mul nsw i32 %571, %573
  %575 = load i32, i32* %14, align 4
  %576 = add nsw i32 %574, %575
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds float, float* %570, i64 %577
  %579 = load float, float* %578, align 4
  %580 = fmul float %569, %579
  %581 = fadd float %563, %580
  %582 = load float*, float** %11, align 8
  %583 = load i32, i32* %13, align 4
  %584 = sub nsw i32 %583, 5
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds float, float* %582, i64 %585
  %587 = load float, float* %586, align 4
  %588 = load float*, float** %12, align 8
  %589 = load i32, i32* %10, align 4
  %590 = load i32, i32* %13, align 4
  %591 = sub nsw i32 %590, 5
  %592 = mul nsw i32 %589, %591
  %593 = load i32, i32* %14, align 4
  %594 = add nsw i32 %592, %593
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds float, float* %588, i64 %595
  %597 = load float, float* %596, align 4
  %598 = fmul float %587, %597
  %599 = fadd float %581, %598
  %600 = load float*, float** %11, align 8
  %601 = load i32, i32* %13, align 4
  %602 = sub nsw i32 %601, 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds float, float* %600, i64 %603
  %605 = load float, float* %604, align 4
  %606 = load float*, float** %12, align 8
  %607 = load i32, i32* %10, align 4
  %608 = load i32, i32* %13, align 4
  %609 = sub nsw i32 %608, 4
  %610 = mul nsw i32 %607, %609
  %611 = load i32, i32* %14, align 4
  %612 = add nsw i32 %610, %611
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds float, float* %606, i64 %613
  %615 = load float, float* %614, align 4
  %616 = fmul float %605, %615
  %617 = fadd float %599, %616
  %618 = load float*, float** %11, align 8
  %619 = load i32, i32* %13, align 4
  %620 = sub nsw i32 %619, 3
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds float, float* %618, i64 %621
  %623 = load float, float* %622, align 4
  %624 = load float*, float** %12, align 8
  %625 = load i32, i32* %10, align 4
  %626 = load i32, i32* %13, align 4
  %627 = sub nsw i32 %626, 3
  %628 = mul nsw i32 %625, %627
  %629 = load i32, i32* %14, align 4
  %630 = add nsw i32 %628, %629
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds float, float* %624, i64 %631
  %633 = load float, float* %632, align 4
  %634 = fmul float %623, %633
  %635 = fadd float %617, %634
  %636 = load float*, float** %11, align 8
  %637 = load i32, i32* %13, align 4
  %638 = sub nsw i32 %637, 2
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds float, float* %636, i64 %639
  %641 = load float, float* %640, align 4
  %642 = load float*, float** %12, align 8
  %643 = load i32, i32* %10, align 4
  %644 = load i32, i32* %13, align 4
  %645 = sub nsw i32 %644, 2
  %646 = mul nsw i32 %643, %645
  %647 = load i32, i32* %14, align 4
  %648 = add nsw i32 %646, %647
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds float, float* %642, i64 %649
  %651 = load float, float* %650, align 4
  %652 = fmul float %641, %651
  %653 = fadd float %635, %652
  %654 = load float*, float** %11, align 8
  %655 = load i32, i32* %13, align 4
  %656 = sub nsw i32 %655, 1
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds float, float* %654, i64 %657
  %659 = load float, float* %658, align 4
  %660 = load float*, float** %12, align 8
  %661 = load i32, i32* %10, align 4
  %662 = load i32, i32* %13, align 4
  %663 = sub nsw i32 %662, 1
  %664 = mul nsw i32 %661, %663
  %665 = load i32, i32* %14, align 4
  %666 = add nsw i32 %664, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds float, float* %660, i64 %667
  %669 = load float, float* %668, align 4
  %670 = fmul float %659, %669
  %671 = fadd float %653, %670
  %672 = load float*, float** %11, align 8
  %673 = load i32, i32* %13, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds float, float* %672, i64 %674
  %676 = load float, float* %675, align 4
  %677 = load float*, float** %12, align 8
  %678 = load i32, i32* %10, align 4
  %679 = load i32, i32* %13, align 4
  %680 = mul nsw i32 %678, %679
  %681 = load i32, i32* %14, align 4
  %682 = add nsw i32 %680, %681
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds float, float* %677, i64 %683
  %685 = load float, float* %684, align 4
  %686 = fmul float %676, %685
  %687 = fadd float %671, %686
  %688 = load float*, float** %8, align 8
  %689 = load i32, i32* %14, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds float, float* %688, i64 %690
  store float %687, float* %691, align 4
  br label %692

692:                                              ; preds = %396
  %693 = load i32, i32* %14, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %14, align 4
  br label %392

695:                                              ; preds = %392
  br label %696

696:                                              ; preds = %695
  %697 = load i32, i32* %13, align 4
  %698 = add nsw i32 %697, 16
  store i32 %698, i32* %13, align 4
  br label %387

699:                                              ; preds = %387
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local float @epslon(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %2, align 4
  store float 0x3FF5555560000000, float* %3, align 4
  store float 0.000000e+00, float* %6, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = load float, float* %6, align 4
  %9 = fpext float %8 to double
  %10 = fcmp oeq double %9, 0.000000e+00
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load float, float* %3, align 4
  %13 = fpext float %12 to double
  %14 = fsub double %13, 1.000000e+00
  %15 = fptrunc double %14 to float
  store float %15, float* %4, align 4
  %16 = load float, float* %4, align 4
  %17 = load float, float* %4, align 4
  %18 = fadd float %16, %17
  %19 = load float, float* %4, align 4
  %20 = fadd float %18, %19
  store float %20, float* %5, align 4
  %21 = load float, float* %5, align 4
  %22 = fpext float %21 to double
  %23 = fsub double %22, 1.000000e+00
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fptrunc double %24 to float
  store float %25, float* %6, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load float, float* %6, align 4
  %28 = fpext float %27 to double
  %29 = load float, float* %2, align 4
  %30 = fpext float %29 to double
  %31 = call double @llvm.fabs.f64(double %30)
  %32 = fmul double %28, %31
  %33 = fptrunc double %32 to float
  ret float %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 %0, float %1, float* %2, i32 %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float %1, float* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %110

21:                                               ; preds = %6
  %22 = load float, float* %8, align 4
  %23 = fpext float %22 to double
  %24 = fcmp oeq double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %110

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %83

32:                                               ; preds = %29, %26
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 0, %36
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 0, %45
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %44, %41
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = load float*, float** %11, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = load float, float* %8, align 4
  %62 = load float*, float** %9, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fmul float %61, %66
  %68 = fadd float %60, %67
  %69 = load float*, float** %11, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  store float %68, float* %72, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %55
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %51

82:                                               ; preds = %51
  br label %110

83:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %106, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load float*, float** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float, float* %8, align 4
  %95 = load float*, float** %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load float, float* %98, align 4
  %100 = fmul float %94, %99
  %101 = fadd float %93, %100
  %102 = load float*, float** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  store float %101, float* %105, align 4
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %84

109:                                              ; preds = %84
  br label %110

110:                                              ; preds = %109, %82, %25, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @ddot(i32 %0, float* %1, i32 %2, float* %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store float 0.000000e+00, float* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store float 0.000000e+00, float* %6, align 4
  br label %99

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %75

27:                                               ; preds = %24, %21
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 0, %31
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 0, %40
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %39, %36
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load float, float* %12, align 4
  %52 = load float*, float** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %10, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fmul float %56, %61
  %63 = fadd float %51, %62
  store float %63, float* %12, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load float, float* %12, align 4
  store float %74, float* %6, align 4
  br label %99

75:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load float, float* %12, align 4
  %82 = load float*, float** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load float*, float** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fmul float %86, %91
  %93 = fadd float %81, %92
  store float %93, float* %12, align 4
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %76

97:                                               ; preds = %76
  %98 = load float, float* %12, align 4
  store float %98, float* %6, align 4
  br label %99

99:                                               ; preds = %97, %73, %20
  %100 = load float, float* %6, align 4
  ret float %100
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %104

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %104

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  %23 = load float*, float** %6, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  %25 = load float, float* %24, align 4
  %26 = fpext float %25 to double
  %27 = call double @llvm.fabs.f64(double %26)
  %28 = fptrunc double %27 to float
  store float %28, float* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %61, %22
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load float*, float** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fpext float %41 to double
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = load float, float* %8, align 4
  %45 = fpext float %44 to double
  %46 = fcmp ogt double %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %11, align 4
  %49 = load float*, float** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fpext float %53 to double
  %55 = call double @llvm.fabs.f64(double %54)
  %56 = fptrunc double %55 to float
  store float %56, float* %8, align 4
  br label %57

57:                                               ; preds = %47, %36
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %32

64:                                               ; preds = %32
  br label %102

65:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  %66 = load float*, float** %6, align 8
  %67 = getelementptr inbounds float, float* %66, i64 0
  %68 = load float, float* %67, align 4
  %69 = fpext float %68 to double
  %70 = call double @llvm.fabs.f64(double %69)
  %71 = fptrunc double %70 to float
  store float %71, float* %8, align 4
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %98, %65
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load float*, float** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  %83 = call double @llvm.fabs.f64(double %82)
  %84 = load float, float* %8, align 4
  %85 = fpext float %84 to double
  %86 = fcmp ogt double %83, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %11, align 4
  %89 = load float*, float** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  %95 = call double @llvm.fabs.f64(double %94)
  %96 = fptrunc double %95 to float
  store float %96, float* %8, align 4
  br label %97

97:                                               ; preds = %87, %76
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %72

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %101, %64
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %18, %14
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 %0, float %1, float* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %64

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %39, %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load float, float* %6, align 4
  %29 = load float*, float** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fmul float %28, %33
  %35 = load float*, float** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  store float %34, float* %38, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %9, align 4
  br label %23

43:                                               ; preds = %23
  br label %64

44:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load float, float* %6, align 4
  %51 = load float*, float** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fmul float %50, %55
  %57 = load float*, float** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  store float %56, float* %60, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %45

64:                                               ; preds = %45, %43, %15
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
