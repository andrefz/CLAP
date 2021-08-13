; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GlobalData = type { [32000 x float], [3 x i32], [4 x i8], [32000 x float], [5 x i32], [12 x i8], [32000 x float], [7 x i32], [4 x i8], [32000 x float], [11 x i32], [4 x i8], [32000 x float], [13 x i32], [12 x i8], [256 x [256 x float]], [17 x i32], [12 x i8], [256 x [256 x float]], [19 x i32], [4 x i8], [256 x [256 x float]], [23 x i32], [4 x i8], [256 x [256 x float]] }

@global_data = common dso_local global %struct.GlobalData zeroinitializer, align 16
@a = dso_local constant float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), align 16
@b = dso_local constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), align 16
@c = dso_local constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), align 16
@d = dso_local constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), align 16
@e = dso_local constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), align 16
@aa = dso_local constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), align 16
@bb = dso_local constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), align 16
@cc = dso_local constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), align 16
@tt = dso_local constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1426880) to [256 x float]*), align 16
@array = common dso_local global [65536 x float] zeroinitializer, align 16
@temp = common dso_local global float 0.000000e+00, align 4
@X = common dso_local global [32000 x float] zeroinitializer, align 16
@Y = common dso_local global [32000 x float] zeroinitializer, align 16
@Z = common dso_local global [32000 x float] zeroinitializer, align 16
@U = common dso_local global [32000 x float] zeroinitializer, align 16
@V = common dso_local global [32000 x float] zeroinitializer, align 16
@xx = common dso_local global float* null, align 8
@indx = common dso_local global [32000 x i32] zeroinitializer, align 16
@x = common dso_local global [32000 x float] zeroinitializer, align 16
@temp_int = common dso_local global i32 0, align 4
@yy = common dso_local global float* null, align 8
@digits = internal global i32 6, align 4
@.str = private unnamed_addr constant [7 x i8] c"%.*g \0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"s000 \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"s111 \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"s112 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"s113 \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"s114 \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"s115 \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"s116 \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"s118 \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"s119 \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"s121 \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"s122 \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"s123 \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"s124 \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"s125 \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"s126 \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"s127 \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"s128 \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"s131 \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"s132 \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"s141 \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"s151 \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"s152 \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"s161 \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"s162 \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"s171 \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"s172 \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"s173 \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"s174 \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"s175 \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"s176 \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"s211 \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"s212 \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"s221 \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"s222 \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"s231 \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"s232 \00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"s233 \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"s234 \00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"s235 \00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"s241 \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"s242 \00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"s243 \00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"s244 \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"s251 \00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"s252 \00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"s253 \00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"s254 \00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"s255 \00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"s256 \00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"s257 \00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"s258 \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"s261 \00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"s271 \00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"s272 \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"s273 \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"s274 \00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"s275 \00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"s276 \00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"s277 \00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"s278 \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"s279 \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"s2710\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"s2711\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"s2712\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"s281 \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"s291 \00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"s292 \00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"s293 \00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"s2101\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"s2102\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"s2111\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"s311 \00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"s312 \00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"s313 \00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"s314 \00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"s315 \00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"s316 \00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"s317 \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"s318 \00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"s319 \00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"s3110\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"s3111\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"s3112\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"s3113\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"s321 \00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"s322 \00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"s323 \00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"s331 \00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"s332 \00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"s341 \00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"s342 \00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"s343 \00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"s351 \00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"s352 \00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"s353 \00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"s411 \00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"s412 \00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"s413 \00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"s414 \00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"s415 \00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"s421 \00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"s422 \00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"s423 \00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"s424 \00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"s431 \00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"s432 \00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"s441 \00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"s442 \00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"s443 \00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"s451 \00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"s452 \00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"s453 \00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"s471 \00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"s481 \00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"s482 \00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"s491 \00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"s4112\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"s4113\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"s4114\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"s4115\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"s4116\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"s4117\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"s4121\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"va\09\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"vag  \00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"vas  \00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"vif  \00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"vpv  \00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"vtv  \00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"vpvtv\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"vpvts\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"vpvpv\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"vtvtv\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"vsumr\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"vdotr\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"vbor \00", align 1
@ntimes = internal global i32 200000, align 4
@.str.137 = private unnamed_addr constant [14 x i8] c"S351\09 %.2f \09\09\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"S1351\09 %.2f \09\09\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"S352\09 %.2f \09\09\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"S353\09 %.2f \09\09\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"Running each loop %d times...\0A\00", align 1
@.str.143 = private unnamed_addr constant [30 x i8] c"Loop \09 Time(Sec) \09 Checksum \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dummy(float* %0, float* %1, float* %2, float* %3, float* %4, [256 x float]* %5, [256 x float]* %6, [256 x float]* %7, float %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca [256 x float]*, align 8
  %16 = alloca [256 x float]*, align 8
  %17 = alloca [256 x float]*, align 8
  %18 = alloca float, align 4
  store float* %0, float** %10, align 8
  store float* %1, float** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store float* %4, float** %14, align 8
  store [256 x float]* %5, [256 x float]** %15, align 8
  store [256 x float]* %6, [256 x float]** %16, align 8
  store [256 x float]* %7, [256 x float]** %17, align 8
  store float %8, float* %18, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set1d(float* %0, float %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 32000
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = sitofp i32 %18 to float
  %20 = fpext float %19 to double
  %21 = fdiv double 1.000000e+00, %20
  %22 = fptrunc double %21 to float
  %23 = load float*, float** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  store float %22, float* %26, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %13

30:                                               ; preds = %13
  br label %72

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -2
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 32000
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %40, %42
  %44 = sitofp i32 %43 to float
  %45 = fpext float %44 to double
  %46 = fdiv double 1.000000e+00, %45
  %47 = fptrunc double %46 to float
  %48 = load float*, float** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  store float %47, float* %51, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %35

55:                                               ; preds = %35
  br label %71

56:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 32000
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load float, float* %5, align 4
  %62 = load float*, float** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  store float %61, float* %65, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %57

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %30
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set1ds(i32 %0, float* %1, float %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  %21 = sitofp i32 %20 to float
  %22 = fpext float %21 to double
  %23 = fdiv double 1.000000e+00, %22
  %24 = fptrunc double %23 to float
  %25 = load float*, float** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float %24, float* %28, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %15

32:                                               ; preds = %15
  br label %74

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 32000
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %42, %44
  %46 = sitofp i32 %45 to float
  %47 = fpext float %46 to double
  %48 = fdiv double 1.000000e+00, %47
  %49 = fptrunc double %48 to float
  %50 = load float*, float** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float %49, float* %53, align 4
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %37

57:                                               ; preds = %37
  br label %73

58:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 32000
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load float, float* %7, align 4
  %64 = load float*, float** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  store float %63, float* %67, align 4
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %59

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %32
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set2d([256 x float]* %0, float %1, i32 %2) #0 {
  %4 = alloca [256 x float]*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store [256 x float]* %0, [256 x float]** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %45

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sitofp i32 %25 to float
  %27 = fpext float %26 to double
  %28 = fdiv double 1.000000e+00, %27
  %29 = fptrunc double %28 to float
  %30 = load [256 x float]*, [256 x float]** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x float], [256 x float]* %30, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], [256 x float]* %33, i64 0, i64 %35
  store float %29, float* %36, align 4
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %20

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %16

44:                                               ; preds = %16
  br label %108

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, -2
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %77, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  %62 = sitofp i32 %61 to float
  %63 = fpext float %62 to double
  %64 = fdiv double 1.000000e+00, %63
  %65 = fptrunc double %64 to float
  %66 = load [256 x float]*, [256 x float]** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x float], [256 x float]* %66, i64 %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [256 x float], [256 x float]* %69, i64 0, i64 %71
  store float %65, float* %72, align 4
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %53

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %49

80:                                               ; preds = %49
  br label %107

81:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 256
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %98, %85
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 256
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load float, float* %5, align 4
  %91 = load [256 x float]*, [256 x float]** %4, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x float], [256 x float]* %91, i64 %93
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x float], [256 x float]* %94, i64 0, i64 %96
  store float %90, float* %97, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %86

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %82

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106, %80
  br label %108

108:                                              ; preds = %107, %44
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @sum1d(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float* %0, float** %2, align 8
  store float 0.000000e+00, float* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 32000
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load float*, float** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, float* %9, i64 %11
  %13 = load float, float* %12, align 4
  %14 = load float, float* %3, align 4
  %15 = fadd float %14, %13
  store float %15, float* %3, align 4
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %5

19:                                               ; preds = %5
  %20 = load float, float* %3, align 4
  ret float %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  store float 0.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %50, %1
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %21
  %23 = load float, float* %22, align 4
  %24 = load float, float* %3, align 4
  %25 = fadd float %24, %23
  store float %25, float* %3, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %27
  %29 = load float, float* %28, align 4
  %30 = load float, float* %4, align 4
  %31 = fadd float %30, %29
  store float %31, float* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float, float* %5, align 4
  %37 = fadd float %36, %35
  store float %37, float* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* %6, align 4
  %43 = fadd float %42, %41
  store float %43, float* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float, float* %7, align 4
  %49 = fadd float %48, %47
  store float %49, float* %7, align 4
  br label %50

50:                                               ; preds = %19
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %16

53:                                               ; preds = %16
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %93, %53
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %89, %57
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 256
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [256 x float], [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), i64 %63
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x float], [256 x float]* %64, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float, float* %9, align 4
  %70 = fadd float %69, %68
  store float %70, float* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [256 x float], [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), i64 %72
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x float], [256 x float]* %73, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load float, float* %10, align 4
  %79 = fadd float %78, %77
  store float %79, float* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x float], [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), i64 %81
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [256 x float], [256 x float]* %82, i64 0, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load float, float* %11, align 4
  %88 = fadd float %87, %86
  store float %88, float* %11, align 4
  br label %89

89:                                               ; preds = %61
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %58

92:                                               ; preds = %58
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %54

96:                                               ; preds = %54
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %107, %96
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 65536
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [65536 x float], [65536 x float]* @array, i64 0, i64 %102
  %104 = load float, float* %103, align 4
  %105 = load float, float* %14, align 4
  %106 = fadd float %105, %104
  store float %106, float* %14, align 4
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %97

110:                                              ; preds = %97
  %111 = load i32, i32* %2, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @digits, align 4
  %115 = load float, float* %3, align 4
  %116 = fpext float %115 to double
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %114, double %116)
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32, i32* %2, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* @digits, align 4
  %123 = load float, float* %4, align 4
  %124 = fpext float %123 to double
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %122, double %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %2, align 4
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* @digits, align 4
  %131 = load float, float* %5, align 4
  %132 = fpext float %131 to double
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %130, double %132)
  br label %134

134:                                              ; preds = %129, %126
  %135 = load i32, i32* %2, align 4
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* @digits, align 4
  %139 = load float, float* %6, align 4
  %140 = fpext float %139 to double
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %138, double %140)
  br label %142

142:                                              ; preds = %137, %134
  %143 = load i32, i32* %2, align 4
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* @digits, align 4
  %147 = load float, float* %7, align 4
  %148 = fpext float %147 to double
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %146, double %148)
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %2, align 4
  %152 = icmp eq i32 %151, 11
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32, i32* @digits, align 4
  %155 = load float, float* %9, align 4
  %156 = fpext float %155 to double
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %154, double %156)
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i32, i32* %2, align 4
  %160 = icmp eq i32 %159, 22
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, i32* @digits, align 4
  %163 = load float, float* %10, align 4
  %164 = fpext float %163 to double
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %162, double %164)
  br label %166

166:                                              ; preds = %161, %158
  %167 = load i32, i32* %2, align 4
  %168 = icmp eq i32 %167, 33
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load i32, i32* @digits, align 4
  %171 = load float, float* %11, align 4
  %172 = fpext float %171 to double
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %170, double %172)
  br label %174

174:                                              ; preds = %169, %166
  %175 = load i32, i32* %2, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, i32* @digits, align 4
  %179 = load float, float* %14, align 4
  %180 = fpext float %179 to double
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %178, double %180)
  br label %182

182:                                              ; preds = %177, %174
  %183 = load i32, i32* %2, align 4
  %184 = icmp eq i32 %183, 12
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i32, i32* @digits, align 4
  %187 = load float, float* %3, align 4
  %188 = load float, float* %4, align 4
  %189 = fadd float %187, %188
  %190 = fpext float %189 to double
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %186, double %190)
  br label %192

192:                                              ; preds = %185, %182
  %193 = load i32, i32* %2, align 4
  %194 = icmp eq i32 %193, 25
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32, i32* @digits, align 4
  %197 = load float, float* %4, align 4
  %198 = load float, float* %7, align 4
  %199 = fadd float %197, %198
  %200 = fpext float %199 to double
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %196, double %200)
  br label %202

202:                                              ; preds = %195, %192
  %203 = load i32, i32* %2, align 4
  %204 = icmp eq i32 %203, 13
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32, i32* @digits, align 4
  %207 = load float, float* %3, align 4
  %208 = load float, float* %5, align 4
  %209 = fadd float %207, %208
  %210 = fpext float %209 to double
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %206, double %210)
  br label %212

212:                                              ; preds = %205, %202
  %213 = load i32, i32* %2, align 4
  %214 = icmp eq i32 %213, 123
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i32, i32* @digits, align 4
  %217 = load float, float* %3, align 4
  %218 = load float, float* %4, align 4
  %219 = fadd float %217, %218
  %220 = load float, float* %5, align 4
  %221 = fadd float %219, %220
  %222 = fpext float %221 to double
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %216, double %222)
  br label %224

224:                                              ; preds = %215, %212
  %225 = load i32, i32* %2, align 4
  %226 = icmp eq i32 %225, 1122
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32, i32* @digits, align 4
  %229 = load float, float* %9, align 4
  %230 = load float, float* %10, align 4
  %231 = fadd float %229, %230
  %232 = fpext float %231 to double
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %228, double %232)
  br label %234

234:                                              ; preds = %227, %224
  %235 = load i32, i32* %2, align 4
  %236 = icmp eq i32 %235, 112233
  br i1 %236, label %237, label %246

237:                                              ; preds = %234
  %238 = load i32, i32* @digits, align 4
  %239 = load float, float* %9, align 4
  %240 = load float, float* %10, align 4
  %241 = fadd float %239, %240
  %242 = load float, float* %11, align 4
  %243 = fadd float %241, %242
  %244 = fpext float %243 to double
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %238, double %244)
  br label %246

246:                                              ; preds = %237, %234
  %247 = load i32, i32* %2, align 4
  %248 = icmp eq i32 %247, 111
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load i32, i32* @digits, align 4
  %251 = load float, float* %9, align 4
  %252 = load float, float* %3, align 4
  %253 = fadd float %251, %252
  %254 = fpext float %253 to double
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %250, double %254)
  br label %256

256:                                              ; preds = %249, %246
  %257 = load i32, i32* %2, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load i32, i32* @digits, align 4
  %261 = load float, float* @temp, align 4
  %262 = fpext float %261 to double
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %260, double %262)
  br label %264

264:                                              ; preds = %259, %256
  %265 = load i32, i32* %2, align 4
  %266 = icmp eq i32 %265, -12
  br i1 %266, label %267, label %274

267:                                              ; preds = %264
  %268 = load i32, i32* @digits, align 4
  %269 = load float, float* @temp, align 4
  %270 = load float, float* %4, align 4
  %271 = fadd float %269, %270
  %272 = fpext float %271 to double
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %268, double %272)
  br label %274

274:                                              ; preds = %267, %264
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store float 0.000000e+00, float* %3, align 4
  store float 0.000000e+00, float* %4, align 4
  store float 5.000000e-01, float* %5, align 4
  store float 1.000000e+00, float* %6, align 4
  store float 2.000000e+00, float* %7, align 4
  store float 0x3EB0C6F7A0000000, float* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -2, i32* %11, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 1, %21
  %23 = sitofp i32 %22 to float
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], [32000 x float]* @X, i64 0, i64 %25
  store float %23, float* %26, align 4
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 2, %27
  %29 = sitofp i32 %28 to float
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], [32000 x float]* @Y, i64 0, i64 %31
  store float %29, float* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 3, %33
  %35 = sitofp i32 %34 to float
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], [32000 x float]* @Z, i64 0, i64 %37
  store float %35, float* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 4, %39
  %41 = sitofp i32 %40 to float
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], [32000 x float]* @U, i64 0, i64 %43
  store float %41, float* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 5, %45
  %47 = sitofp i32 %46 to float
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], [32000 x float]* @V, i64 0, i64 %49
  store float %47, float* %50, align 4
  br label %51

51:                                               ; preds = %20
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %17

54:                                               ; preds = %17
  br label %2058

55:                                               ; preds = %1
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  %60 = load float, float* %6, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %60, i32 %61)
  %63 = load float, float* %3, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %63, i32 %64)
  %66 = load float, float* %3, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %66, i32 %67)
  %69 = load float, float* %3, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %69, i32 %70)
  %72 = load float, float* %3, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %72, i32 %73)
  br label %2057

75:                                               ; preds = %55
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load float, float* %6, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %80, i32 %81)
  %83 = load float, float* %3, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %83, i32 %84)
  br label %2056

86:                                               ; preds = %75
  %87 = load i8*, i8** %2, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load float, float* %6, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %91, i32 %92)
  %94 = load float, float* %3, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %94, i32 %95)
  br label %2055

97:                                               ; preds = %86
  %98 = load i8*, i8** %2, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load float, float* %3, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %102, i32 %103)
  %105 = load float, float* %3, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %105, i32 %106)
  br label %2054

108:                                              ; preds = %97
  %109 = load i8*, i8** %2, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %108
  %113 = load float, float* %6, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %113, i32 %114)
  %116 = load float, float* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %116, i32 %117)
  %119 = load float, float* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %119, i32 %120)
  %122 = load float, float* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %122, i32 %123)
  br label %2053

125:                                              ; preds = %108
  %126 = load i8*, i8** %2, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load float, float* %6, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %130, i32 %131)
  br label %2052

133:                                              ; preds = %125
  %134 = load i8*, i8** %2, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = load float, float* %6, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %138, i32 %139)
  %141 = load float, float* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %141, i32 %142)
  br label %2051

144:                                              ; preds = %133
  %145 = load i8*, i8** %2, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load float, float* %6, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %149, i32 %150)
  %152 = load float, float* %3, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %152, i32 %153)
  br label %2050

155:                                              ; preds = %144
  %156 = load i8*, i8** %2, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = load float, float* %6, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %160, i32 %161)
  %163 = load float, float* %3, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %163, i32 %164)
  br label %2049

166:                                              ; preds = %155
  %167 = load i8*, i8** %2, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load float, float* %6, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %171, i32 %172)
  %174 = load float, float* %3, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %174, i32 %175)
  br label %2048

177:                                              ; preds = %166
  %178 = load i8*, i8** %2, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %197, label %181

181:                                              ; preds = %177
  %182 = load float, float* %4, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %182, i32 %183)
  %185 = load float, float* %6, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %185, i32 %186)
  %188 = load float, float* %6, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %188, i32 %189)
  %191 = load float, float* %3, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %191, i32 %192)
  %194 = load float, float* %3, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %194, i32 %195)
  br label %2047

197:                                              ; preds = %177
  %198 = load i8*, i8** %2, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %217, label %201

201:                                              ; preds = %197
  %202 = load float, float* %4, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %202, i32 %203)
  %205 = load float, float* %6, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %205, i32 %206)
  %208 = load float, float* %6, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %208, i32 %209)
  %211 = load float, float* %3, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %211, i32 %212)
  %214 = load float, float* %3, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %214, i32 %215)
  br label %2046

217:                                              ; preds = %197
  %218 = load i8*, i8** %2, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %234, label %221

221:                                              ; preds = %217
  %222 = load float, float* %4, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @set1ds(i32 1024000000, float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i64 0, i64 0), float %222, i32 %223)
  %225 = load float, float* %6, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %225, i32 %226)
  %228 = load float, float* %5, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %228, i32 %229)
  %231 = load float, float* %7, align 4
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %231, i32 %232)
  br label %2045

234:                                              ; preds = %217
  %235 = load i8*, i8** %2, align 8
  %236 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %234
  %239 = load float, float* %6, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %239, i32 %240)
  %242 = load float, float* %3, align 4
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @set1ds(i32 1024000000, float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i64 0, i64 0), float %242, i32 %243)
  %245 = load float, float* %3, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %245, i32 %246)
  br label %2044

248:                                              ; preds = %234
  %249 = load i8*, i8** %2, align 8
  %250 = call i32 @strcmp(i8* %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %268, label %252

252:                                              ; preds = %248
  %253 = load float, float* %4, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %253, i32 %254)
  %256 = load float, float* %6, align 4
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %256, i32 %257)
  %259 = load float, float* %3, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %259, i32 %260)
  %262 = load float, float* %3, align 4
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %262, i32 %263)
  %265 = load float, float* %3, align 4
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %265, i32 %266)
  br label %2043

268:                                              ; preds = %248
  %269 = load i8*, i8** %2, align 8
  %270 = call i32 @strcmp(i8* %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %285, label %272

272:                                              ; preds = %268
  %273 = load float, float* %4, align 4
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %273, i32 %274)
  %276 = load float, float* %7, align 4
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %276, i32 %277)
  %279 = load float, float* %6, align 4
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %279, i32 %280)
  %282 = load float, float* %6, align 4
  %283 = load i32, i32* %9, align 4
  %284 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %282, i32 %283)
  br label %2042

285:                                              ; preds = %268
  %286 = load i8*, i8** %2, align 8
  %287 = call i32 @strcmp(i8* %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %285
  %290 = load float, float* %6, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %290, i32 %291)
  %293 = load float, float* %3, align 4
  %294 = load i32, i32* %11, align 4
  %295 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %293, i32 %294)
  br label %2041

296:                                              ; preds = %285
  %297 = load i8*, i8** %2, align 8
  %298 = call i32 @strcmp(i8* %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %296
  %301 = load float, float* %6, align 4
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %301, i32 %302)
  %304 = load float, float* %3, align 4
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %304, i32 %305)
  %307 = load float, float* %3, align 4
  %308 = load i32, i32* %10, align 4
  %309 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %307, i32 %308)
  br label %2040

310:                                              ; preds = %296
  %311 = load i8*, i8** %2, align 8
  %312 = call i32 @strcmp(i8* %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %310
  %315 = load float, float* %6, align 4
  %316 = load i32, i32* %9, align 4
  %317 = call i32 @set1ds(i32 1024000000, float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i64 0, i64 0), float %315, i32 %316)
  %318 = load float, float* %3, align 4
  %319 = load i32, i32* %11, align 4
  %320 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %318, i32 %319)
  br label %2039

321:                                              ; preds = %310
  %322 = load i8*, i8** %2, align 8
  %323 = call i32 @strcmp(i8* %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %321
  %326 = load float, float* %6, align 4
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %326, i32 %327)
  %329 = load float, float* %3, align 4
  %330 = load i32, i32* %11, align 4
  %331 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %329, i32 %330)
  br label %2038

332:                                              ; preds = %321
  %333 = load i8*, i8** %2, align 8
  %334 = call i32 @strcmp(i8* %333, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %352, label %336

336:                                              ; preds = %332
  %337 = load float, float* %6, align 4
  %338 = load i32, i32* %9, align 4
  %339 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %337, i32 %338)
  %340 = load float, float* %4, align 4
  %341 = load i32, i32* %9, align 4
  %342 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %340, i32 %341)
  %343 = load float, float* %3, align 4
  %344 = load i32, i32* %10, align 4
  %345 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %343, i32 %344)
  %346 = load float, float* %3, align 4
  %347 = load i32, i32* %10, align 4
  %348 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %346, i32 %347)
  %349 = load float, float* %3, align 4
  %350 = load i32, i32* %10, align 4
  %351 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %349, i32 %350)
  br label %2037

352:                                              ; preds = %332
  %353 = load i8*, i8** %2, align 8
  %354 = call i32 @strcmp(i8* %353, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %374, label %356

356:                                              ; preds = %352
  %357 = load float, float* %6, align 4
  %358 = load i32, i32* %9, align 4
  %359 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %357, i32 %358)
  %360 = load float, float* %6, align 4
  %361 = call i32 @set1ds(i32 16000, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %360, i32 2)
  %362 = load float, float* %6, align 4
  %363 = fneg float %362
  %364 = call i32 @set1ds(i32 16000, float* getelementptr inbounds (float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 1), float %363, i32 2)
  %365 = load float, float* %6, align 4
  %366 = load i32, i32* %9, align 4
  %367 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %365, i32 %366)
  %368 = load float, float* %3, align 4
  %369 = load i32, i32* %10, align 4
  %370 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %368, i32 %369)
  %371 = load float, float* %3, align 4
  %372 = load i32, i32* %10, align 4
  %373 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %371, i32 %372)
  br label %2036

374:                                              ; preds = %352
  %375 = load i8*, i8** %2, align 8
  %376 = call i32 @strcmp(i8* %375, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %388, label %378

378:                                              ; preds = %374
  %379 = load float, float* %6, align 4
  %380 = load i32, i32* %9, align 4
  %381 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %379, i32 %380)
  %382 = load float, float* %3, align 4
  %383 = load i32, i32* %10, align 4
  %384 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %382, i32 %383)
  %385 = load float, float* %3, align 4
  %386 = load i32, i32* %10, align 4
  %387 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %385, i32 %386)
  br label %2035

388:                                              ; preds = %374
  %389 = load i8*, i8** %2, align 8
  %390 = call i32 @strcmp(i8* %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %399, label %392

392:                                              ; preds = %388
  %393 = load float, float* %6, align 4
  %394 = load i32, i32* %9, align 4
  %395 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %393, i32 %394)
  %396 = load float, float* %3, align 4
  %397 = load i32, i32* %11, align 4
  %398 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %396, i32 %397)
  br label %2034

399:                                              ; preds = %388
  %400 = load i8*, i8** %2, align 8
  %401 = call i32 @strcmp(i8* %400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %410, label %403

403:                                              ; preds = %399
  %404 = load float, float* %6, align 4
  %405 = load i32, i32* %9, align 4
  %406 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %404, i32 %405)
  %407 = load float, float* %3, align 4
  %408 = load i32, i32* %11, align 4
  %409 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %407, i32 %408)
  br label %2033

410:                                              ; preds = %399
  %411 = load i8*, i8** %2, align 8
  %412 = call i32 @strcmp(i8* %411, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %421, label %414

414:                                              ; preds = %410
  %415 = load float, float* %6, align 4
  %416 = load i32, i32* %9, align 4
  %417 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %415, i32 %416)
  %418 = load float, float* %3, align 4
  %419 = load i32, i32* %11, align 4
  %420 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %418, i32 %419)
  br label %2032

421:                                              ; preds = %410
  %422 = load i8*, i8** %2, align 8
  %423 = call i32 @strcmp(i8* %422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)) #4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %432, label %425

425:                                              ; preds = %421
  %426 = load float, float* %6, align 4
  %427 = load i32, i32* %9, align 4
  %428 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %426, i32 %427)
  %429 = load float, float* %3, align 4
  %430 = load i32, i32* %11, align 4
  %431 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %429, i32 %430)
  br label %2031

432:                                              ; preds = %421
  %433 = load i8*, i8** %2, align 8
  %434 = call i32 @strcmp(i8* %433, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %443, label %436

436:                                              ; preds = %432
  %437 = load float, float* %6, align 4
  %438 = load i32, i32* %9, align 4
  %439 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %437, i32 %438)
  %440 = load float, float* %3, align 4
  %441 = load i32, i32* %11, align 4
  %442 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %440, i32 %441)
  br label %2030

443:                                              ; preds = %432
  %444 = load i8*, i8** %2, align 8
  %445 = call i32 @strcmp(i8* %444, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %457, label %447

447:                                              ; preds = %443
  %448 = load float, float* %6, align 4
  %449 = load i32, i32* %9, align 4
  %450 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %448, i32 %449)
  %451 = load float, float* %3, align 4
  %452 = load i32, i32* %10, align 4
  %453 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %451, i32 %452)
  %454 = load float, float* %3, align 4
  %455 = load i32, i32* %10, align 4
  %456 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %454, i32 %455)
  br label %2029

457:                                              ; preds = %443
  %458 = load i8*, i8** %2, align 8
  %459 = call i32 @strcmp(i8* %458, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %477, label %461

461:                                              ; preds = %457
  %462 = load float, float* %4, align 4
  %463 = load i32, i32* %9, align 4
  %464 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %462, i32 %463)
  %465 = load float, float* %6, align 4
  %466 = load i32, i32* %9, align 4
  %467 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %465, i32 %466)
  %468 = load float, float* %3, align 4
  %469 = load i32, i32* %10, align 4
  %470 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %468, i32 %469)
  %471 = load float, float* %3, align 4
  %472 = load i32, i32* %10, align 4
  %473 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %471, i32 %472)
  %474 = load float, float* %3, align 4
  %475 = load i32, i32* %10, align 4
  %476 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %474, i32 %475)
  br label %2028

477:                                              ; preds = %457
  %478 = load i8*, i8** %2, align 8
  %479 = call i32 @strcmp(i8* %478, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %494, label %481

481:                                              ; preds = %477
  %482 = load float, float* %3, align 4
  %483 = load i32, i32* %10, align 4
  %484 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %482, i32 %483)
  %485 = load float, float* %6, align 4
  %486 = load i32, i32* %9, align 4
  %487 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %485, i32 %486)
  %488 = load float, float* %6, align 4
  %489 = load i32, i32* %9, align 4
  %490 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %488, i32 %489)
  %491 = load float, float* %3, align 4
  %492 = load i32, i32* %10, align 4
  %493 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %491, i32 %492)
  br label %2027

494:                                              ; preds = %477
  %495 = load i8*, i8** %2, align 8
  %496 = call i32 @strcmp(i8* %495, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %511, label %498

498:                                              ; preds = %494
  %499 = load float, float* %6, align 4
  %500 = load i32, i32* %9, align 4
  %501 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %499, i32 %500)
  %502 = load float, float* %3, align 4
  %503 = load i32, i32* %10, align 4
  %504 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %502, i32 %503)
  %505 = load float, float* %3, align 4
  %506 = load i32, i32* %10, align 4
  %507 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %505, i32 %506)
  %508 = load float, float* %3, align 4
  %509 = load i32, i32* %10, align 4
  %510 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %508, i32 %509)
  br label %2026

511:                                              ; preds = %494
  %512 = load i8*, i8** %2, align 8
  %513 = call i32 @strcmp(i8* %512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %525, label %515

515:                                              ; preds = %511
  %516 = load float, float* %4, align 4
  %517 = load i32, i32* %9, align 4
  %518 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %516, i32 %517)
  %519 = load float, float* %6, align 4
  %520 = load i32, i32* %9, align 4
  %521 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %519, i32 %520)
  %522 = load float, float* %6, align 4
  %523 = load i32, i32* %9, align 4
  %524 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %522, i32 %523)
  br label %2025

525:                                              ; preds = %511
  %526 = load i8*, i8** %2, align 8
  %527 = call i32 @strcmp(i8* %526, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %536, label %529

529:                                              ; preds = %525
  %530 = load float, float* %6, align 4
  %531 = load i32, i32* %9, align 4
  %532 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %530, i32 %531)
  %533 = load float, float* %3, align 4
  %534 = load i32, i32* %11, align 4
  %535 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %533, i32 %534)
  br label %2024

536:                                              ; preds = %525
  %537 = load i8*, i8** %2, align 8
  %538 = call i32 @strcmp(i8* %537, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %547, label %540

540:                                              ; preds = %536
  %541 = load float, float* %6, align 4
  %542 = load i32, i32* %9, align 4
  %543 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %541, i32 %542)
  %544 = load float, float* %4, align 4
  %545 = load i32, i32* %9, align 4
  %546 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %544, i32 %545)
  br label %2023

547:                                              ; preds = %536
  %548 = load i8*, i8** %2, align 8
  %549 = call i32 @strcmp(i8* %548, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %561, label %551

551:                                              ; preds = %547
  %552 = load float, float* %3, align 4
  %553 = load i32, i32* %10, align 4
  %554 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %552, i32 %553)
  %555 = load float, float* %3, align 4
  %556 = load i32, i32* %10, align 4
  %557 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %555, i32 %556)
  %558 = load float, float* %3, align 4
  %559 = load i32, i32* %10, align 4
  %560 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %558, i32 %559)
  br label %2022

561:                                              ; preds = %547
  %562 = load i8*, i8** %2, align 8
  %563 = call i32 @strcmp(i8* %562, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %575, label %565

565:                                              ; preds = %561
  %566 = load float, float* %6, align 4
  %567 = load i32, i32* %9, align 4
  %568 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %566, i32 %567)
  %569 = load float, float* %3, align 4
  %570 = load i32, i32* %10, align 4
  %571 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %569, i32 %570)
  %572 = load float, float* %3, align 4
  %573 = load i32, i32* %10, align 4
  %574 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %572, i32 %573)
  br label %2021

575:                                              ; preds = %561
  %576 = load i8*, i8** %2, align 8
  %577 = call i32 @strcmp(i8* %576, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0)) #4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %595, label %579

579:                                              ; preds = %575
  %580 = load float, float* %6, align 4
  %581 = load i32, i32* %9, align 4
  %582 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %580, i32 %581)
  %583 = load float, float* %3, align 4
  %584 = load i32, i32* %10, align 4
  %585 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %583, i32 %584)
  %586 = load float, float* %3, align 4
  %587 = load i32, i32* %10, align 4
  %588 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %586, i32 %587)
  %589 = load float, float* %6, align 4
  %590 = load i32, i32* %9, align 4
  %591 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %589, i32 %590)
  %592 = load float, float* %3, align 4
  %593 = load i32, i32* %11, align 4
  %594 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %592, i32 %593)
  br label %2020

595:                                              ; preds = %575
  %596 = load i8*, i8** %2, align 8
  %597 = call i32 @strcmp(i8* %596, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %612, label %599

599:                                              ; preds = %595
  %600 = load float, float* %6, align 4
  %601 = load i32, i32* %9, align 4
  %602 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %600, i32 %601)
  %603 = load float, float* %6, align 4
  %604 = load i32, i32* %9, align 4
  %605 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %603, i32 %604)
  %606 = load float, float* %6, align 4
  %607 = load i32, i32* %9, align 4
  %608 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %606, i32 %607)
  %609 = load float, float* %6, align 4
  %610 = load i32, i32* %9, align 4
  %611 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %609, i32 %610)
  br label %2019

612:                                              ; preds = %595
  %613 = load i8*, i8** %2, align 8
  %614 = call i32 @strcmp(i8* %613, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0)) #4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %629, label %616

616:                                              ; preds = %612
  %617 = load float, float* %8, align 4
  %618 = load i32, i32* %9, align 4
  %619 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %617, i32 %618)
  %620 = load float, float* %8, align 4
  %621 = load i32, i32* %9, align 4
  %622 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %620, i32 %621)
  %623 = load float, float* %8, align 4
  %624 = load i32, i32* %9, align 4
  %625 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %623, i32 %624)
  %626 = load float, float* %8, align 4
  %627 = load i32, i32* %9, align 4
  %628 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %626, i32 %627)
  br label %2018

629:                                              ; preds = %612
  %630 = load i8*, i8** %2, align 8
  %631 = call i32 @strcmp(i8* %630, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0)) #4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %649, label %633

633:                                              ; preds = %629
  %634 = load float, float* %4, align 4
  %635 = load i32, i32* %9, align 4
  %636 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %634, i32 %635)
  %637 = load float, float* %6, align 4
  %638 = load i32, i32* %9, align 4
  %639 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %637, i32 %638)
  %640 = load float, float* %3, align 4
  %641 = load i32, i32* %10, align 4
  %642 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %640, i32 %641)
  %643 = load float, float* %3, align 4
  %644 = load i32, i32* %10, align 4
  %645 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %643, i32 %644)
  %646 = load float, float* %3, align 4
  %647 = load i32, i32* %10, align 4
  %648 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %646, i32 %647)
  br label %2017

649:                                              ; preds = %629
  %650 = load i8*, i8** %2, align 8
  %651 = call i32 @strcmp(i8* %650, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #4
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %666, label %653

653:                                              ; preds = %649
  %654 = load float, float* %4, align 4
  %655 = load i32, i32* %9, align 4
  %656 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %654, i32 %655)
  %657 = load float, float* %6, align 4
  %658 = load i32, i32* %9, align 4
  %659 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %657, i32 %658)
  %660 = load float, float* %8, align 4
  %661 = load i32, i32* %9, align 4
  %662 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %660, i32 %661)
  %663 = load float, float* %8, align 4
  %664 = load i32, i32* %9, align 4
  %665 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %663, i32 %664)
  br label %2016

666:                                              ; preds = %649
  %667 = load i8*, i8** %2, align 8
  %668 = call i32 @strcmp(i8* %667, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %686, label %670

670:                                              ; preds = %666
  %671 = load float, float* %4, align 4
  %672 = load i32, i32* %9, align 4
  %673 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %671, i32 %672)
  %674 = load float, float* %6, align 4
  %675 = load i32, i32* %9, align 4
  %676 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %674, i32 %675)
  %677 = load float, float* %3, align 4
  %678 = load i32, i32* %10, align 4
  %679 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %677, i32 %678)
  %680 = load float, float* %3, align 4
  %681 = load i32, i32* %10, align 4
  %682 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %680, i32 %681)
  %683 = load float, float* %3, align 4
  %684 = load i32, i32* %10, align 4
  %685 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %683, i32 %684)
  br label %2015

686:                                              ; preds = %666
  %687 = load i8*, i8** %2, align 8
  %688 = call i32 @strcmp(i8* %687, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %700, label %690

690:                                              ; preds = %686
  %691 = load float, float* %4, align 4
  %692 = load i32, i32* %9, align 4
  %693 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %691, i32 %692)
  %694 = load float, float* %6, align 4
  %695 = load i32, i32* %9, align 4
  %696 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %694, i32 %695)
  %697 = load float, float* %6, align 4
  %698 = load i32, i32* %9, align 4
  %699 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %697, i32 %698)
  br label %2014

700:                                              ; preds = %686
  %701 = load i8*, i8** %2, align 8
  %702 = call i32 @strcmp(i8* %701, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0)) #4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %717, label %704

704:                                              ; preds = %700
  %705 = load float, float* %6, align 4
  %706 = load i32, i32* %9, align 4
  %707 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %705, i32 %706)
  %708 = load float, float* %8, align 4
  %709 = load i32, i32* %9, align 4
  %710 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %708, i32 %709)
  %711 = load float, float* %6, align 4
  %712 = load i32, i32* %9, align 4
  %713 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %711, i32 %712)
  %714 = load float, float* %3, align 4
  %715 = load i32, i32* %10, align 4
  %716 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %714, i32 %715)
  br label %2013

717:                                              ; preds = %700
  %718 = load i8*, i8** %2, align 8
  %719 = call i32 @strcmp(i8* %718, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0)) #4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %728, label %721

721:                                              ; preds = %717
  %722 = load float, float* %4, align 4
  %723 = load i32, i32* %9, align 4
  %724 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %722, i32 %723)
  %725 = load float, float* %6, align 4
  %726 = load i32, i32* %9, align 4
  %727 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %725, i32 %726)
  br label %2012

728:                                              ; preds = %717
  %729 = load i8*, i8** %2, align 8
  %730 = call i32 @strcmp(i8* %729, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0)) #4
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %739, label %732

732:                                              ; preds = %728
  %733 = load float, float* %4, align 4
  %734 = load i32, i32* %9, align 4
  %735 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %733, i32 %734)
  %736 = load float, float* %6, align 4
  %737 = load i32, i32* %9, align 4
  %738 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %736, i32 %737)
  br label %2011

739:                                              ; preds = %728
  %740 = load i8*, i8** %2, align 8
  %741 = call i32 @strcmp(i8* %740, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0)) #4
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %753, label %743

743:                                              ; preds = %739
  %744 = load float, float* %6, align 4
  %745 = load i32, i32* %9, align 4
  %746 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %744, i32 %745)
  %747 = load float, float* %7, align 4
  %748 = load i32, i32* %9, align 4
  %749 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %747, i32 %748)
  %750 = load float, float* %6, align 4
  %751 = load i32, i32* %9, align 4
  %752 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %750, i32 %751)
  br label %2010

753:                                              ; preds = %739
  %754 = load i8*, i8** %2, align 8
  %755 = call i32 @strcmp(i8* %754, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)) #4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %767, label %757

757:                                              ; preds = %753
  %758 = load float, float* %6, align 4
  %759 = load i32, i32* %9, align 4
  %760 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %758, i32 %759)
  %761 = load float, float* %7, align 4
  %762 = load i32, i32* %9, align 4
  %763 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %761, i32 %762)
  %764 = load float, float* %6, align 4
  %765 = load i32, i32* %9, align 4
  %766 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %764, i32 %765)
  br label %2009

767:                                              ; preds = %753
  %768 = load i8*, i8** %2, align 8
  %769 = call i32 @strcmp(i8* %768, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0)) #4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %790, label %771

771:                                              ; preds = %767
  %772 = load float, float* %3, align 4
  %773 = load i32, i32* %10, align 4
  %774 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %772, i32 %773)
  %775 = load float, float* %4, align 4
  %776 = load i32, i32* %9, align 4
  %777 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %775, i32 %776)
  %778 = load float, float* %3, align 4
  %779 = load i32, i32* %10, align 4
  %780 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %778, i32 %779)
  %781 = load float, float* %3, align 4
  %782 = load i32, i32* %10, align 4
  %783 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %781, i32 %782)
  %784 = load float, float* %4, align 4
  %785 = load i32, i32* %9, align 4
  %786 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %784, i32 %785)
  %787 = load float, float* %3, align 4
  %788 = load i32, i32* %10, align 4
  %789 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %787, i32 %788)
  br label %2008

790:                                              ; preds = %767
  %791 = load i8*, i8** %2, align 8
  %792 = call i32 @strcmp(i8* %791, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0)) #4
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %807, label %794

794:                                              ; preds = %790
  %795 = load float, float* %6, align 4
  %796 = load i32, i32* %9, align 4
  %797 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %795, i32 %796)
  %798 = load float, float* %3, align 4
  %799 = load i32, i32* %11, align 4
  %800 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %798, i32 %799)
  %801 = load float, float* %3, align 4
  %802 = load i32, i32* %11, align 4
  %803 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %801, i32 %802)
  %804 = load float, float* %6, align 4
  %805 = load i32, i32* %9, align 4
  %806 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %804, i32 %805)
  br label %2007

807:                                              ; preds = %790
  %808 = load i8*, i8** %2, align 8
  %809 = call i32 @strcmp(i8* %808, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)) #4
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %821, label %811

811:                                              ; preds = %807
  %812 = load float, float* %6, align 4
  %813 = load i32, i32* %9, align 4
  %814 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %812, i32 %813)
  %815 = load float, float* %3, align 4
  %816 = load i32, i32* %10, align 4
  %817 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %815, i32 %816)
  %818 = load float, float* %3, align 4
  %819 = load i32, i32* %10, align 4
  %820 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %818, i32 %819)
  br label %2006

821:                                              ; preds = %807
  %822 = load i8*, i8** %2, align 8
  %823 = call i32 @strcmp(i8* %822, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0)) #4
  %824 = icmp ne i32 %823, 0
  br i1 %824, label %841, label %825

825:                                              ; preds = %821
  %826 = load float, float* %6, align 4
  %827 = load i32, i32* %9, align 4
  %828 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %826, i32 %827)
  %829 = load float, float* %6, align 4
  %830 = load i32, i32* %9, align 4
  %831 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %829, i32 %830)
  %832 = load float, float* %3, align 4
  %833 = load i32, i32* %10, align 4
  %834 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %832, i32 %833)
  %835 = load float, float* %3, align 4
  %836 = load i32, i32* %10, align 4
  %837 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %835, i32 %836)
  %838 = load float, float* %7, align 4
  %839 = load i32, i32* %9, align 4
  %840 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %838, i32 %839)
  br label %2005

841:                                              ; preds = %821
  %842 = load i8*, i8** %2, align 8
  %843 = call i32 @strcmp(i8* %842, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #4
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %861, label %845

845:                                              ; preds = %841
  %846 = load float, float* %6, align 4
  %847 = load i32, i32* %9, align 4
  %848 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %846, i32 %847)
  %849 = load float, float* %6, align 4
  %850 = load i32, i32* %9, align 4
  %851 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %849, i32 %850)
  %852 = load float, float* %6, align 4
  %853 = load i32, i32* %9, align 4
  %854 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %852, i32 %853)
  %855 = load float, float* %8, align 4
  %856 = load i32, i32* %9, align 4
  %857 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %855, i32 %856)
  %858 = load float, float* %3, align 4
  %859 = load i32, i32* %10, align 4
  %860 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %858, i32 %859)
  br label %2004

861:                                              ; preds = %841
  %862 = load i8*, i8** %2, align 8
  %863 = call i32 @strcmp(i8* %862, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0)) #4
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %881, label %865

865:                                              ; preds = %861
  %866 = load float, float* %4, align 4
  %867 = load i32, i32* %9, align 4
  %868 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %866, i32 %867)
  %869 = load float, float* %6, align 4
  %870 = load i32, i32* %9, align 4
  %871 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %869, i32 %870)
  %872 = load float, float* %6, align 4
  %873 = load i32, i32* %9, align 4
  %874 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %872, i32 %873)
  %875 = load float, float* %3, align 4
  %876 = load i32, i32* %10, align 4
  %877 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %875, i32 %876)
  %878 = load float, float* %3, align 4
  %879 = load i32, i32* %10, align 4
  %880 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %878, i32 %879)
  br label %2003

881:                                              ; preds = %861
  %882 = load i8*, i8** %2, align 8
  %883 = call i32 @strcmp(i8* %882, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #4
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %895, label %885

885:                                              ; preds = %881
  %886 = load float, float* %6, align 4
  %887 = load i32, i32* %9, align 4
  %888 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %886, i32 %887)
  %889 = load float, float* %8, align 4
  %890 = load i32, i32* %9, align 4
  %891 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %889, i32 %890)
  %892 = load float, float* %8, align 4
  %893 = load i32, i32* %9, align 4
  %894 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %892, i32 %893)
  br label %2002

895:                                              ; preds = %881
  %896 = load i8*, i8** %2, align 8
  %897 = call i32 @strcmp(i8* %896, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)) #4
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %912, label %899

899:                                              ; preds = %895
  %900 = load float, float* %6, align 4
  %901 = load i32, i32* %9, align 4
  %902 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %900, i32 %901)
  %903 = load float, float* %3, align 4
  %904 = load i32, i32* %10, align 4
  %905 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %903, i32 %904)
  %906 = load float, float* %3, align 4
  %907 = load i32, i32* %10, align 4
  %908 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %906, i32 %907)
  %909 = load float, float* %3, align 4
  %910 = load i32, i32* %10, align 4
  %911 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %909, i32 %910)
  br label %2001

912:                                              ; preds = %895
  %913 = load i8*, i8** %2, align 8
  %914 = call i32 @strcmp(i8* %913, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0)) #4
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %936, label %916

916:                                              ; preds = %912
  %917 = load float, float* %6, align 4
  %918 = load i32, i32* %9, align 4
  %919 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %917, i32 %918)
  %920 = load float, float* %6, align 4
  %921 = load i32, i32* %9, align 4
  %922 = call i32 @set1ds(i32 16000, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %920, i32 %921)
  %923 = load float, float* %6, align 4
  %924 = fneg float %923
  %925 = load i32, i32* %9, align 4
  %926 = call i32 @set1ds(i32 16000, float* getelementptr inbounds (float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 16000), float %924, i32 %925)
  %927 = load float, float* %3, align 4
  %928 = load i32, i32* %10, align 4
  %929 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %927, i32 %928)
  %930 = load float, float* %3, align 4
  %931 = load i32, i32* %10, align 4
  %932 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %930, i32 %931)
  %933 = load float, float* %3, align 4
  %934 = load i32, i32* %10, align 4
  %935 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %933, i32 %934)
  br label %2000

936:                                              ; preds = %912
  %937 = load i8*, i8** %2, align 8
  %938 = call i32 @strcmp(i8* %937, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #4
  %939 = icmp ne i32 %938, 0
  br i1 %939, label %960, label %940

940:                                              ; preds = %936
  %941 = load float, float* %6, align 4
  %942 = fneg float %941
  %943 = load i32, i32* %9, align 4
  %944 = call i32 @set1ds(i32 16000, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %942, i32 %943)
  %945 = load float, float* %6, align 4
  %946 = load i32, i32* %9, align 4
  %947 = call i32 @set1ds(i32 16000, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i64 16000), float %945, i32 %946)
  %948 = load float, float* %6, align 4
  %949 = load i32, i32* %9, align 4
  %950 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %948, i32 %949)
  %951 = load float, float* %3, align 4
  %952 = load i32, i32* %10, align 4
  %953 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %951, i32 %952)
  %954 = load float, float* %3, align 4
  %955 = load i32, i32* %10, align 4
  %956 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %954, i32 %955)
  %957 = load float, float* %3, align 4
  %958 = load i32, i32* %10, align 4
  %959 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %957, i32 %958)
  br label %1999

960:                                              ; preds = %936
  %961 = load i8*, i8** %2, align 8
  %962 = call i32 @strcmp(i8* %961, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0)) #4
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %984, label %964

964:                                              ; preds = %960
  %965 = load float, float* %6, align 4
  %966 = fneg float %965
  %967 = load i32, i32* %9, align 4
  %968 = call i32 @set1ds(i32 16000, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %966, i32 %967)
  %969 = load float, float* %6, align 4
  %970 = load i32, i32* %9, align 4
  %971 = call i32 @set1ds(i32 16000, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i64 16000), float %969, i32 %970)
  %972 = load float, float* %6, align 4
  %973 = load i32, i32* %9, align 4
  %974 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %972, i32 %973)
  %975 = load float, float* %3, align 4
  %976 = load i32, i32* %10, align 4
  %977 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %975, i32 %976)
  %978 = load float, float* %3, align 4
  %979 = load i32, i32* %10, align 4
  %980 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %978, i32 %979)
  %981 = load float, float* %3, align 4
  %982 = load i32, i32* %10, align 4
  %983 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %981, i32 %982)
  br label %1998

984:                                              ; preds = %960
  %985 = load i8*, i8** %2, align 8
  %986 = call i32 @strcmp(i8* %985, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #4
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %1004, label %988

988:                                              ; preds = %984
  %989 = load float, float* %6, align 4
  %990 = load i32, i32* %9, align 4
  %991 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %989, i32 %990)
  %992 = load float, float* %6, align 4
  %993 = load i32, i32* %9, align 4
  %994 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %992, i32 %993)
  %995 = load float, float* %3, align 4
  %996 = load i32, i32* %10, align 4
  %997 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %995, i32 %996)
  %998 = load float, float* %3, align 4
  %999 = load i32, i32* %10, align 4
  %1000 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %998, i32 %999)
  %1001 = load float, float* %3, align 4
  %1002 = load i32, i32* %10, align 4
  %1003 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %1001, i32 %1002)
  br label %1997

1004:                                             ; preds = %984
  %1005 = load i8*, i8** %2, align 8
  %1006 = call i32 @strcmp(i8* %1005, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0)) #4
  %1007 = icmp ne i32 %1006, 0
  br i1 %1007, label %1018, label %1008

1008:                                             ; preds = %1004
  %1009 = load float, float* %6, align 4
  %1010 = load i32, i32* %9, align 4
  %1011 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1009, i32 %1010)
  %1012 = load float, float* %3, align 4
  %1013 = load i32, i32* %10, align 4
  %1014 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1012, i32 %1013)
  %1015 = load float, float* %3, align 4
  %1016 = load i32, i32* %10, align 4
  %1017 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1015, i32 %1016)
  br label %1996

1018:                                             ; preds = %1004
  %1019 = load i8*, i8** %2, align 8
  %1020 = call i32 @strcmp(i8* %1019, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0)) #4
  %1021 = icmp ne i32 %1020, 0
  br i1 %1021, label %1032, label %1022

1022:                                             ; preds = %1018
  %1023 = load float, float* %6, align 4
  %1024 = load i32, i32* %9, align 4
  %1025 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1023, i32 %1024)
  %1026 = load float, float* %3, align 4
  %1027 = load i32, i32* %10, align 4
  %1028 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1026, i32 %1027)
  %1029 = load float, float* %3, align 4
  %1030 = load i32, i32* %10, align 4
  %1031 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1029, i32 %1030)
  br label %1995

1032:                                             ; preds = %1018
  %1033 = load i8*, i8** %2, align 8
  %1034 = call i32 @strcmp(i8* %1033, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0)) #4
  %1035 = icmp ne i32 %1034, 0
  br i1 %1035, label %1046, label %1036

1036:                                             ; preds = %1032
  %1037 = load float, float* %4, align 4
  %1038 = load i32, i32* %9, align 4
  %1039 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1037, i32 %1038)
  %1040 = load float, float* %6, align 4
  %1041 = load i32, i32* %9, align 4
  %1042 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1040, i32 %1041)
  %1043 = load float, float* %6, align 4
  %1044 = load i32, i32* %9, align 4
  %1045 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1043, i32 %1044)
  br label %1994

1046:                                             ; preds = %1032
  %1047 = load i8*, i8** %2, align 8
  %1048 = call i32 @strcmp(i8* %1047, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #4
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1057, label %1050

1050:                                             ; preds = %1046
  %1051 = load float, float* %4, align 4
  %1052 = load i32, i32* %9, align 4
  %1053 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1051, i32 %1052)
  %1054 = load float, float* %6, align 4
  %1055 = load i32, i32* %9, align 4
  %1056 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1054, i32 %1055)
  br label %1993

1057:                                             ; preds = %1046
  %1058 = load i8*, i8** %2, align 8
  %1059 = call i32 @strcmp(i8* %1058, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #4
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1068, label %1061

1061:                                             ; preds = %1057
  %1062 = load float, float* %4, align 4
  %1063 = load i32, i32* %9, align 4
  %1064 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1062, i32 %1063)
  %1065 = load float, float* %6, align 4
  %1066 = load i32, i32* %9, align 4
  %1067 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1065, i32 %1066)
  br label %1992

1068:                                             ; preds = %1057
  %1069 = load i8*, i8** %2, align 8
  %1070 = call i32 @strcmp(i8* %1069, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0)) #4
  %1071 = icmp ne i32 %1070, 0
  br i1 %1071, label %1076, label %1072

1072:                                             ; preds = %1068
  %1073 = load float, float* %3, align 4
  %1074 = load i32, i32* %10, align 4
  %1075 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1073, i32 %1074)
  br label %1991

1076:                                             ; preds = %1068
  %1077 = load i8*, i8** %2, align 8
  %1078 = call i32 @strcmp(i8* %1077, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)) #4
  %1079 = icmp ne i32 %1078, 0
  br i1 %1079, label %1090, label %1080

1080:                                             ; preds = %1076
  %1081 = load float, float* %6, align 4
  %1082 = load i32, i32* %9, align 4
  %1083 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1081, i32 %1082)
  %1084 = load float, float* %3, align 4
  %1085 = load i32, i32* %10, align 4
  %1086 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %1084, i32 %1085)
  %1087 = load float, float* %3, align 4
  %1088 = load i32, i32* %10, align 4
  %1089 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %1087, i32 %1088)
  br label %1990

1090:                                             ; preds = %1076
  %1091 = load i8*, i8** %2, align 8
  %1092 = call i32 @strcmp(i8* %1091, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #4
  %1093 = icmp ne i32 %1092, 0
  br i1 %1093, label %1098, label %1094

1094:                                             ; preds = %1090
  %1095 = load float, float* %4, align 4
  %1096 = load i32, i32* %9, align 4
  %1097 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1095, i32 %1096)
  br label %1989

1098:                                             ; preds = %1090
  %1099 = load i8*, i8** %2, align 8
  %1100 = call i32 @strcmp(i8* %1099, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #4
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1106, label %1102

1102:                                             ; preds = %1098
  %1103 = load float, float* %4, align 4
  %1104 = load i32, i32* %9, align 4
  %1105 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1103, i32 %1104)
  br label %1988

1106:                                             ; preds = %1098
  %1107 = load i8*, i8** %2, align 8
  %1108 = call i32 @strcmp(i8* %1107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0)) #4
  %1109 = icmp ne i32 %1108, 0
  br i1 %1109, label %1114, label %1110

1110:                                             ; preds = %1106
  %1111 = load float, float* %3, align 4
  %1112 = load i32, i32* %10, align 4
  %1113 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1111, i32 %1112)
  br label %1987

1114:                                             ; preds = %1106
  %1115 = load i8*, i8** %2, align 8
  %1116 = call i32 @strcmp(i8* %1115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)) #4
  %1117 = icmp ne i32 %1116, 0
  br i1 %1117, label %1121, label %1118

1118:                                             ; preds = %1114
  %1119 = load i32, i32* %9, align 4
  %1120 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float 0x3FF0000100000000, i32 %1119)
  br label %1986

1121:                                             ; preds = %1114
  %1122 = load i8*, i8** %2, align 8
  %1123 = call i32 @strcmp(i8* %1122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #4
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1132, label %1125

1125:                                             ; preds = %1121
  %1126 = load float, float* %3, align 4
  %1127 = load i32, i32* %10, align 4
  %1128 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1126, i32 %1127)
  %1129 = load float, float* %3, align 4
  %1130 = load i32, i32* %10, align 4
  %1131 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1129, i32 %1130)
  br label %1985

1132:                                             ; preds = %1121
  %1133 = load i8*, i8** %2, align 8
  %1134 = call i32 @strcmp(i8* %1133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #4
  %1135 = icmp ne i32 %1134, 0
  br i1 %1135, label %1140, label %1136

1136:                                             ; preds = %1132
  %1137 = load float, float* %3, align 4
  %1138 = load i32, i32* %10, align 4
  %1139 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1137, i32 %1138)
  br label %1984

1140:                                             ; preds = %1132
  %1141 = load i8*, i8** %2, align 8
  %1142 = call i32 @strcmp(i8* %1141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0)) #4
  %1143 = icmp ne i32 %1142, 0
  br i1 %1143, label %1148, label %1144

1144:                                             ; preds = %1140
  %1145 = load float, float* %3, align 4
  %1146 = load i32, i32* %10, align 4
  %1147 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1145, i32 %1146)
  br label %1983

1148:                                             ; preds = %1140
  %1149 = load i8*, i8** %2, align 8
  %1150 = call i32 @strcmp(i8* %1149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0)) #4
  %1151 = icmp ne i32 %1150, 0
  br i1 %1151, label %1156, label %1152

1152:                                             ; preds = %1148
  %1153 = load float, float* %3, align 4
  %1154 = load i32, i32* %10, align 4
  %1155 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1153, i32 %1154)
  br label %1982

1156:                                             ; preds = %1148
  %1157 = load i8*, i8** %2, align 8
  %1158 = call i32 @strcmp(i8* %1157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0)) #4
  %1159 = icmp ne i32 %1158, 0
  br i1 %1159, label %1161, label %1160

1160:                                             ; preds = %1156
  br label %1981

1161:                                             ; preds = %1156
  %1162 = load i8*, i8** %2, align 8
  %1163 = call i32 @strcmp(i8* %1162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0)) #4
  %1164 = icmp ne i32 %1163, 0
  br i1 %1164, label %1171, label %1165

1165:                                             ; preds = %1161
  %1166 = load float, float* %3, align 4
  %1167 = load i32, i32* %10, align 4
  %1168 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1166, i32 %1167)
  %1169 = load float, float* %7, align 4
  %1170 = fneg float %1169
  store float %1170, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i64 31999), align 4
  br label %1980

1171:                                             ; preds = %1161
  %1172 = load i8*, i8** %2, align 8
  %1173 = call i32 @strcmp(i8* %1172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0)) #4
  %1174 = icmp ne i32 %1173, 0
  br i1 %1174, label %1191, label %1175

1175:                                             ; preds = %1171
  %1176 = load float, float* %4, align 4
  %1177 = load i32, i32* %9, align 4
  %1178 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1176, i32 %1177)
  %1179 = load float, float* %4, align 4
  %1180 = load i32, i32* %9, align 4
  %1181 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1179, i32 %1180)
  %1182 = load float, float* %3, align 4
  %1183 = load i32, i32* %10, align 4
  %1184 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1182, i32 %1183)
  %1185 = load float, float* %3, align 4
  %1186 = load i32, i32* %10, align 4
  %1187 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1185, i32 %1186)
  %1188 = load float, float* %3, align 4
  %1189 = load i32, i32* %10, align 4
  %1190 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %1188, i32 %1189)
  br label %1979

1191:                                             ; preds = %1171
  %1192 = load i8*, i8** %2, align 8
  %1193 = call i32 @strcmp(i8* %1192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0)) #4
  %1194 = icmp ne i32 %1193, 0
  br i1 %1194, label %1200, label %1195

1195:                                             ; preds = %1191
  %1196 = load float, float* %3, align 4
  %1197 = load i32, i32* %10, align 4
  %1198 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1196, i32 %1197)
  %1199 = load float, float* %7, align 4
  store float %1199, float* getelementptr inbounds ([256 x float], [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), i64 255, i64 255), align 4
  br label %1978

1200:                                             ; preds = %1191
  %1201 = load i8*, i8** %2, align 8
  %1202 = call i32 @strcmp(i8* %1201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0)) #4
  %1203 = icmp ne i32 %1202, 0
  br i1 %1203, label %1208, label %1204

1204:                                             ; preds = %1200
  %1205 = load float, float* %3, align 4
  %1206 = load i32, i32* %10, align 4
  %1207 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1205, i32 %1206)
  br label %1977

1208:                                             ; preds = %1200
  %1209 = load i8*, i8** %2, align 8
  %1210 = call i32 @strcmp(i8* %1209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #4
  %1211 = icmp ne i32 %1210, 0
  br i1 %1211, label %1219, label %1212

1212:                                             ; preds = %1208
  %1213 = load float, float* %3, align 4
  %1214 = load i32, i32* %11, align 4
  %1215 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1213, i32 %1214)
  %1216 = load float, float* %4, align 4
  %1217 = load i32, i32* %9, align 4
  %1218 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1216, i32 %1217)
  br label %1976

1219:                                             ; preds = %1208
  %1220 = load i8*, i8** %2, align 8
  %1221 = call i32 @strcmp(i8* %1220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0)) #4
  %1222 = icmp ne i32 %1221, 0
  br i1 %1222, label %1229, label %1223

1223:                                             ; preds = %1219
  %1224 = load float, float* %3, align 4
  %1225 = load i32, i32* %10, align 4
  %1226 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1224, i32 %1225)
  %1227 = load float, float* %7, align 4
  %1228 = fneg float %1227
  store float %1228, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i64 31999), align 4
  br label %1975

1229:                                             ; preds = %1219
  %1230 = load i8*, i8** %2, align 8
  %1231 = call i32 @strcmp(i8* %1230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0)) #4
  %1232 = icmp ne i32 %1231, 0
  br i1 %1232, label %1240, label %1233

1233:                                             ; preds = %1229
  %1234 = load float, float* %6, align 4
  %1235 = load i32, i32* %9, align 4
  %1236 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1234, i32 %1235)
  %1237 = load float, float* %4, align 4
  %1238 = load i32, i32* %9, align 4
  %1239 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1237, i32 %1238)
  br label %1974

1240:                                             ; preds = %1229
  %1241 = load i8*, i8** %2, align 8
  %1242 = call i32 @strcmp(i8* %1241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i64 0, i64 0)) #4
  %1243 = icmp ne i32 %1242, 0
  br i1 %1243, label %1254, label %1244

1244:                                             ; preds = %1240
  %1245 = load float, float* %6, align 4
  %1246 = load i32, i32* %9, align 4
  %1247 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1245, i32 %1246)
  %1248 = load float, float* %4, align 4
  %1249 = load i32, i32* %9, align 4
  %1250 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1248, i32 %1249)
  %1251 = load float, float* %4, align 4
  %1252 = load i32, i32* %9, align 4
  %1253 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1251, i32 %1252)
  br label %1973

1254:                                             ; preds = %1240
  %1255 = load i8*, i8** %2, align 8
  %1256 = call i32 @strcmp(i8* %1255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0)) #4
  %1257 = icmp ne i32 %1256, 0
  br i1 %1257, label %1274, label %1258

1258:                                             ; preds = %1254
  %1259 = load float, float* %6, align 4
  %1260 = load i32, i32* %9, align 4
  %1261 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1259, i32 %1260)
  %1262 = load float, float* %6, align 4
  %1263 = load i32, i32* %9, align 4
  %1264 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1262, i32 %1263)
  %1265 = load float, float* %3, align 4
  %1266 = load i32, i32* %10, align 4
  %1267 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1265, i32 %1266)
  %1268 = load float, float* %3, align 4
  %1269 = load i32, i32* %10, align 4
  %1270 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1268, i32 %1269)
  %1271 = load float, float* %3, align 4
  %1272 = load i32, i32* %10, align 4
  %1273 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %1271, i32 %1272)
  br label %1972

1274:                                             ; preds = %1254
  %1275 = load i8*, i8** %2, align 8
  %1276 = call i32 @strcmp(i8* %1275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0)) #4
  %1277 = icmp ne i32 %1276, 0
  br i1 %1277, label %1284, label %1278

1278:                                             ; preds = %1274
  %1279 = load float, float* %3, align 4
  %1280 = load i32, i32* %10, align 4
  %1281 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1279, i32 %1280)
  %1282 = load float, float* %6, align 4
  %1283 = fneg float %1282
  store float %1283, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i64 31999), align 4
  br label %1971

1284:                                             ; preds = %1274
  %1285 = load i8*, i8** %2, align 8
  %1286 = call i32 @strcmp(i8* %1285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #4
  %1287 = icmp ne i32 %1286, 0
  br i1 %1287, label %1293, label %1288

1288:                                             ; preds = %1284
  %1289 = load float, float* %3, align 4
  %1290 = load i32, i32* %11, align 4
  %1291 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1289, i32 %1290)
  %1292 = load float, float* %7, align 4
  store float %1292, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i64 31999), align 4
  br label %1970

1293:                                             ; preds = %1284
  %1294 = load i8*, i8** %2, align 8
  %1295 = call i32 @strcmp(i8* %1294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0)) #4
  %1296 = icmp ne i32 %1295, 0
  br i1 %1296, label %1304, label %1297

1297:                                             ; preds = %1293
  %1298 = load float, float* %4, align 4
  %1299 = load i32, i32* %9, align 4
  %1300 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1298, i32 %1299)
  %1301 = load float, float* %3, align 4
  %1302 = load i32, i32* %10, align 4
  %1303 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1301, i32 %1302)
  br label %1969

1304:                                             ; preds = %1293
  %1305 = load i8*, i8** %2, align 8
  %1306 = call i32 @strcmp(i8* %1305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0)) #4
  %1307 = icmp ne i32 %1306, 0
  br i1 %1307, label %1315, label %1308

1308:                                             ; preds = %1304
  %1309 = load float, float* %3, align 4
  %1310 = load i32, i32* %10, align 4
  %1311 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1309, i32 %1310)
  %1312 = load float, float* %3, align 4
  %1313 = load i32, i32* %10, align 4
  %1314 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1312, i32 %1313)
  br label %1968

1315:                                             ; preds = %1304
  %1316 = load i8*, i8** %2, align 8
  %1317 = call i32 @strcmp(i8* %1316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i64 0, i64 0)) #4
  %1318 = icmp ne i32 %1317, 0
  br i1 %1318, label %1326, label %1319

1319:                                             ; preds = %1315
  %1320 = load float, float* %3, align 4
  %1321 = load i32, i32* %10, align 4
  %1322 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1320, i32 %1321)
  %1323 = load float, float* %6, align 4
  %1324 = load i32, i32* %9, align 4
  %1325 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %1323, i32 %1324)
  br label %1967

1326:                                             ; preds = %1315
  %1327 = load i8*, i8** %2, align 8
  %1328 = call i32 @strcmp(i8* %1327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #4
  %1329 = icmp ne i32 %1328, 0
  br i1 %1329, label %1337, label %1330

1330:                                             ; preds = %1326
  %1331 = load float, float* %6, align 4
  %1332 = load i32, i32* %9, align 4
  %1333 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1331, i32 %1332)
  %1334 = load float, float* %6, align 4
  %1335 = load i32, i32* %9, align 4
  %1336 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1334, i32 %1335)
  store float 1.000000e+00, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), align 4
  br label %1966

1337:                                             ; preds = %1326
  %1338 = load i8*, i8** %2, align 8
  %1339 = call i32 @strcmp(i8* %1338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #4
  %1340 = icmp ne i32 %1339, 0
  br i1 %1340, label %1348, label %1341

1341:                                             ; preds = %1337
  %1342 = load float, float* %3, align 4
  %1343 = load i32, i32* %10, align 4
  %1344 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1342, i32 %1343)
  %1345 = load float, float* %3, align 4
  %1346 = load i32, i32* %10, align 4
  %1347 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1345, i32 %1346)
  br label %1965

1348:                                             ; preds = %1337
  %1349 = load i8*, i8** %2, align 8
  %1350 = call i32 @strcmp(i8* %1349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0)) #4
  %1351 = icmp ne i32 %1350, 0
  br i1 %1351, label %1359, label %1352

1352:                                             ; preds = %1348
  %1353 = load float, float* %6, align 4
  %1354 = load i32, i32* %9, align 4
  %1355 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1353, i32 %1354)
  %1356 = load float, float* %6, align 4
  %1357 = load i32, i32* %9, align 4
  %1358 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1356, i32 %1357)
  store float 1.000000e+00, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), align 4
  br label %1964

1359:                                             ; preds = %1348
  %1360 = load i8*, i8** %2, align 8
  %1361 = call i32 @strcmp(i8* %1360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0)) #4
  %1362 = icmp ne i32 %1361, 0
  br i1 %1362, label %1373, label %1363

1363:                                             ; preds = %1359
  %1364 = load float, float* %6, align 4
  %1365 = load i32, i32* %9, align 4
  %1366 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1364, i32 %1365)
  %1367 = load float, float* %3, align 4
  %1368 = load i32, i32* %10, align 4
  %1369 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1367, i32 %1368)
  %1370 = load float, float* %3, align 4
  %1371 = load i32, i32* %10, align 4
  %1372 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1370, i32 %1371)
  br label %1963

1373:                                             ; preds = %1359
  %1374 = load i8*, i8** %2, align 8
  %1375 = call i32 @strcmp(i8* %1374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i64 0, i64 0)) #4
  %1376 = icmp ne i32 %1375, 0
  br i1 %1376, label %1387, label %1377

1377:                                             ; preds = %1373
  %1378 = load float, float* %6, align 4
  %1379 = load i32, i32* %9, align 4
  %1380 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1378, i32 %1379)
  %1381 = load float, float* %3, align 4
  %1382 = load i32, i32* %10, align 4
  %1383 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1381, i32 %1382)
  %1384 = load float, float* %3, align 4
  %1385 = load i32, i32* %10, align 4
  %1386 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1384, i32 %1385)
  br label %1962

1387:                                             ; preds = %1373
  %1388 = load i8*, i8** %2, align 8
  %1389 = call i32 @strcmp(i8* %1388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0)) #4
  %1390 = icmp ne i32 %1389, 0
  br i1 %1390, label %1407, label %1391

1391:                                             ; preds = %1387
  %1392 = load float, float* %4, align 4
  %1393 = load i32, i32* %9, align 4
  %1394 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1392, i32 %1393)
  %1395 = load float, float* %6, align 4
  %1396 = load i32, i32* %9, align 4
  %1397 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1395, i32 %1396)
  %1398 = load float, float* %6, align 4
  %1399 = load i32, i32* %9, align 4
  %1400 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1398, i32 %1399)
  %1401 = load float, float* %3, align 4
  %1402 = load i32, i32* %10, align 4
  %1403 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1401, i32 %1402)
  %1404 = load float, float* %3, align 4
  %1405 = load i32, i32* %10, align 4
  %1406 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %1404, i32 %1405)
  br label %1961

1407:                                             ; preds = %1387
  %1408 = load i8*, i8** %2, align 8
  %1409 = call i32 @strcmp(i8* %1408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0)) #4
  %1410 = icmp ne i32 %1409, 0
  br i1 %1410, label %1421, label %1411

1411:                                             ; preds = %1407
  %1412 = load float, float* %6, align 4
  %1413 = load i32, i32* %9, align 4
  %1414 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1412, i32 %1413)
  %1415 = load float, float* %3, align 4
  %1416 = load i32, i32* %10, align 4
  %1417 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float %1415, i32 %1416)
  %1418 = load float, float* %3, align 4
  %1419 = load i32, i32* %10, align 4
  %1420 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %1418, i32 %1419)
  br label %1960

1421:                                             ; preds = %1407
  %1422 = load i8*, i8** %2, align 8
  %1423 = call i32 @strcmp(i8* %1422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i64 0, i64 0)) #4
  %1424 = icmp ne i32 %1423, 0
  br i1 %1424, label %1437, label %1425

1425:                                             ; preds = %1421
  %1426 = load float, float* %6, align 4
  %1427 = load i32, i32* %9, align 4
  %1428 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1426, i32 %1427)
  %1429 = load float, float* %3, align 4
  %1430 = load i32, i32* %10, align 4
  %1431 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1429, i32 %1430)
  %1432 = load float, float* %3, align 4
  %1433 = load i32, i32* %10, align 4
  %1434 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1432, i32 %1433)
  %1435 = load float, float* %6, align 4
  %1436 = fneg float %1435
  store float %1436, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i64 31999), align 4
  br label %1959

1437:                                             ; preds = %1421
  %1438 = load i8*, i8** %2, align 8
  %1439 = call i32 @strcmp(i8* %1438, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i64 0, i64 0)) #4
  %1440 = icmp ne i32 %1439, 0
  br i1 %1440, label %1448, label %1441

1441:                                             ; preds = %1437
  %1442 = load float, float* %3, align 4
  %1443 = load i32, i32* %11, align 4
  %1444 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1442, i32 %1443)
  %1445 = load float, float* %6, align 4
  %1446 = load i32, i32* %9, align 4
  %1447 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1445, i32 %1446)
  br label %1958

1448:                                             ; preds = %1437
  %1449 = load i8*, i8** %2, align 8
  %1450 = call i32 @strcmp(i8* %1449, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0)) #4
  %1451 = icmp ne i32 %1450, 0
  br i1 %1451, label %1459, label %1452

1452:                                             ; preds = %1448
  %1453 = load float, float* %6, align 4
  %1454 = load i32, i32* %9, align 4
  %1455 = call i32 @set1d(float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i64 0, i64 0), float %1453, i32 %1454)
  %1456 = load float, float* %3, align 4
  %1457 = load i32, i32* %11, align 4
  %1458 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1456, i32 %1457)
  br label %1957

1459:                                             ; preds = %1448
  %1460 = load i8*, i8** %2, align 8
  %1461 = call i32 @strcmp(i8* %1460, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i64 0, i64 0)) #4
  %1462 = icmp ne i32 %1461, 0
  br i1 %1462, label %1470, label %1463

1463:                                             ; preds = %1459
  %1464 = load float, float* %4, align 4
  %1465 = load i32, i32* %9, align 4
  %1466 = call i32 @set1d(float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i64 0, i64 0), float %1464, i32 %1465)
  %1467 = load float, float* %3, align 4
  %1468 = load i32, i32* %11, align 4
  %1469 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1467, i32 %1468)
  br label %1956

1470:                                             ; preds = %1459
  %1471 = load i8*, i8** %2, align 8
  %1472 = call i32 @strcmp(i8* %1471, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0)) #4
  %1473 = icmp ne i32 %1472, 0
  br i1 %1473, label %1481, label %1474

1474:                                             ; preds = %1470
  %1475 = load float, float* %6, align 4
  %1476 = load i32, i32* %9, align 4
  %1477 = call i32 @set1d(float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i64 0, i64 0), float %1475, i32 %1476)
  %1478 = load float, float* %3, align 4
  %1479 = load i32, i32* %11, align 4
  %1480 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1478, i32 %1479)
  br label %1955

1481:                                             ; preds = %1470
  %1482 = load i8*, i8** %2, align 8
  %1483 = call i32 @strcmp(i8* %1482, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i64 0, i64 0)) #4
  %1484 = icmp ne i32 %1483, 0
  br i1 %1484, label %1492, label %1485

1485:                                             ; preds = %1481
  %1486 = load float, float* %6, align 4
  %1487 = load i32, i32* %9, align 4
  %1488 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1486, i32 %1487)
  %1489 = load float, float* %3, align 4
  %1490 = load i32, i32* %11, align 4
  %1491 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1489, i32 %1490)
  br label %1954

1492:                                             ; preds = %1481
  %1493 = load i8*, i8** %2, align 8
  %1494 = call i32 @strcmp(i8* %1493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i64 0, i64 0)) #4
  %1495 = icmp ne i32 %1494, 0
  br i1 %1495, label %1503, label %1496

1496:                                             ; preds = %1492
  %1497 = load float, float* %6, align 4
  %1498 = load i32, i32* %9, align 4
  %1499 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1497, i32 %1498)
  %1500 = load float, float* %3, align 4
  %1501 = load i32, i32* %11, align 4
  %1502 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1500, i32 %1501)
  br label %1953

1503:                                             ; preds = %1492
  %1504 = load i8*, i8** %2, align 8
  %1505 = call i32 @strcmp(i8* %1504, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i64 0, i64 0)) #4
  %1506 = icmp ne i32 %1505, 0
  br i1 %1506, label %1527, label %1507

1507:                                             ; preds = %1503
  %1508 = load float, float* %6, align 4
  %1509 = load i32, i32* %9, align 4
  %1510 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1508, i32 %1509)
  %1511 = load float, float* %3, align 4
  %1512 = load i32, i32* %10, align 4
  %1513 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1511, i32 %1512)
  %1514 = load float, float* %3, align 4
  %1515 = load i32, i32* %10, align 4
  %1516 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1514, i32 %1515)
  %1517 = load float, float* %6, align 4
  %1518 = fneg float %1517
  %1519 = load i32, i32* %9, align 4
  %1520 = call i32 @set1ds(i32 10666, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1518, i32 %1519)
  %1521 = load float, float* %4, align 4
  %1522 = load i32, i32* %9, align 4
  %1523 = call i32 @set1ds(i32 10666, float* getelementptr inbounds (float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), i64 10666), float %1521, i32 %1522)
  %1524 = load float, float* %6, align 4
  %1525 = load i32, i32* %9, align 4
  %1526 = call i32 @set1ds(i32 10667, float* getelementptr inbounds (float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), i64 21333), float %1524, i32 %1525)
  br label %1952

1527:                                             ; preds = %1503
  %1528 = load i8*, i8** %2, align 8
  %1529 = call i32 @strcmp(i8* %1528, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i64 0, i64 0)) #4
  %1530 = icmp ne i32 %1529, 0
  br i1 %1530, label %1547, label %1531

1531:                                             ; preds = %1527
  %1532 = load float, float* %6, align 4
  %1533 = load i32, i32* %9, align 4
  %1534 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1532, i32 %1533)
  %1535 = load float, float* %3, align 4
  %1536 = load i32, i32* %10, align 4
  %1537 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1535, i32 %1536)
  %1538 = load float, float* %3, align 4
  %1539 = load i32, i32* %10, align 4
  %1540 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1538, i32 %1539)
  %1541 = load float, float* %3, align 4
  %1542 = load i32, i32* %10, align 4
  %1543 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1541, i32 %1542)
  %1544 = load float, float* %3, align 4
  %1545 = load i32, i32* %10, align 4
  %1546 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %1544, i32 %1545)
  br label %1951

1547:                                             ; preds = %1527
  %1548 = load i8*, i8** %2, align 8
  %1549 = call i32 @strcmp(i8* %1548, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i64 0, i64 0)) #4
  %1550 = icmp ne i32 %1549, 0
  br i1 %1550, label %1561, label %1551

1551:                                             ; preds = %1547
  %1552 = load float, float* %6, align 4
  %1553 = load i32, i32* %9, align 4
  %1554 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1552, i32 %1553)
  %1555 = load float, float* %3, align 4
  %1556 = load i32, i32* %10, align 4
  %1557 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1555, i32 %1556)
  %1558 = load float, float* %3, align 4
  %1559 = load i32, i32* %10, align 4
  %1560 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1558, i32 %1559)
  br label %1950

1561:                                             ; preds = %1547
  %1562 = load i8*, i8** %2, align 8
  %1563 = call i32 @strcmp(i8* %1562, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i64 0, i64 0)) #4
  %1564 = icmp ne i32 %1563, 0
  br i1 %1564, label %1572, label %1565

1565:                                             ; preds = %1561
  %1566 = load float, float* %3, align 4
  %1567 = load i32, i32* %10, align 4
  %1568 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1566, i32 %1567)
  %1569 = load float, float* %3, align 4
  %1570 = load i32, i32* %10, align 4
  %1571 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1569, i32 %1570)
  br label %1949

1572:                                             ; preds = %1561
  %1573 = load i8*, i8** %2, align 8
  %1574 = call i32 @strcmp(i8* %1573, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0)) #4
  %1575 = icmp ne i32 %1574, 0
  br i1 %1575, label %1586, label %1576

1576:                                             ; preds = %1572
  %1577 = load float, float* %4, align 4
  %1578 = load i32, i32* %9, align 4
  %1579 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1577, i32 %1578)
  %1580 = load float, float* %6, align 4
  %1581 = load i32, i32* %9, align 4
  %1582 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1580, i32 %1581)
  %1583 = load float, float* %8, align 4
  %1584 = load i32, i32* %9, align 4
  %1585 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1583, i32 %1584)
  br label %1948

1586:                                             ; preds = %1572
  %1587 = load i8*, i8** %2, align 8
  %1588 = call i32 @strcmp(i8* %1587, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #4
  %1589 = icmp ne i32 %1588, 0
  br i1 %1589, label %1597, label %1590

1590:                                             ; preds = %1586
  %1591 = load float, float* %4, align 4
  %1592 = load i32, i32* %9, align 4
  %1593 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1591, i32 %1592)
  %1594 = load float, float* %3, align 4
  %1595 = load i32, i32* %11, align 4
  %1596 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1594, i32 %1595)
  br label %1947

1597:                                             ; preds = %1586
  %1598 = load i8*, i8** %2, align 8
  %1599 = call i32 @strcmp(i8* %1598, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0)) #4
  %1600 = icmp ne i32 %1599, 0
  br i1 %1600, label %1617, label %1601

1601:                                             ; preds = %1597
  %1602 = load float, float* %6, align 4
  %1603 = load i32, i32* %9, align 4
  %1604 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1602, i32 %1603)
  %1605 = load float, float* %6, align 4
  %1606 = load i32, i32* %9, align 4
  %1607 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1605, i32 %1606)
  %1608 = load float, float* %6, align 4
  %1609 = load i32, i32* %9, align 4
  %1610 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1608, i32 %1609)
  %1611 = load float, float* %3, align 4
  %1612 = load i32, i32* %10, align 4
  %1613 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1611, i32 %1612)
  %1614 = load float, float* %3, align 4
  %1615 = load i32, i32* %10, align 4
  %1616 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %1614, i32 %1615)
  br label %1946

1617:                                             ; preds = %1597
  %1618 = load i8*, i8** %2, align 8
  %1619 = call i32 @strcmp(i8* %1618, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i64 0, i64 0)) #4
  %1620 = icmp ne i32 %1619, 0
  br i1 %1620, label %1634, label %1621

1621:                                             ; preds = %1617
  %1622 = load float, float* %6, align 4
  %1623 = load i32, i32* %9, align 4
  %1624 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1622, i32 %1623)
  %1625 = load float, float* %3, align 4
  %1626 = load i32, i32* %10, align 4
  %1627 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1625, i32 %1626)
  %1628 = load float, float* %3, align 4
  %1629 = load i32, i32* %10, align 4
  %1630 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1628, i32 %1629)
  %1631 = load float, float* %3, align 4
  %1632 = load i32, i32* %10, align 4
  %1633 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1631, i32 %1632)
  br label %1945

1634:                                             ; preds = %1617
  %1635 = load i8*, i8** %2, align 8
  %1636 = call i32 @strcmp(i8* %1635, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i64 0, i64 0)) #4
  %1637 = icmp ne i32 %1636, 0
  br i1 %1637, label %1648, label %1638

1638:                                             ; preds = %1634
  %1639 = load float, float* %6, align 4
  %1640 = load i32, i32* %9, align 4
  %1641 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1639, i32 %1640)
  %1642 = load float, float* %3, align 4
  %1643 = load i32, i32* %10, align 4
  %1644 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1642, i32 %1643)
  %1645 = load float, float* %3, align 4
  %1646 = load i32, i32* %10, align 4
  %1647 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1645, i32 %1646)
  br label %1944

1648:                                             ; preds = %1634
  %1649 = load i8*, i8** %2, align 8
  %1650 = call i32 @strcmp(i8* %1649, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0)) #4
  %1651 = icmp ne i32 %1650, 0
  br i1 %1651, label %1665, label %1652

1652:                                             ; preds = %1648
  %1653 = load float, float* %4, align 4
  %1654 = load i32, i32* %9, align 4
  %1655 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1653, i32 %1654)
  %1656 = load float, float* %6, align 4
  %1657 = load i32, i32* %9, align 4
  %1658 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1656, i32 %1657)
  %1659 = load float, float* %3, align 4
  %1660 = load i32, i32* %10, align 4
  %1661 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1659, i32 %1660)
  %1662 = load float, float* %3, align 4
  %1663 = load i32, i32* %10, align 4
  %1664 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1662, i32 %1663)
  br label %1943

1665:                                             ; preds = %1648
  %1666 = load i8*, i8** %2, align 8
  %1667 = call i32 @strcmp(i8* %1666, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i64 0, i64 0)) #4
  %1668 = icmp ne i32 %1667, 0
  br i1 %1668, label %1676, label %1669

1669:                                             ; preds = %1665
  %1670 = load float, float* %6, align 4
  %1671 = load i32, i32* %9, align 4
  %1672 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1670, i32 %1671)
  %1673 = load float, float* %3, align 4
  %1674 = load i32, i32* %10, align 4
  %1675 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1673, i32 %1674)
  br label %1942

1676:                                             ; preds = %1665
  %1677 = load i8*, i8** %2, align 8
  %1678 = call i32 @strcmp(i8* %1677, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0)) #4
  %1679 = icmp ne i32 %1678, 0
  br i1 %1679, label %1690, label %1680

1680:                                             ; preds = %1676
  %1681 = load float, float* %4, align 4
  %1682 = load i32, i32* %9, align 4
  %1683 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1681, i32 %1682)
  %1684 = load float, float* %6, align 4
  %1685 = load i32, i32* %9, align 4
  %1686 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1684, i32 %1685)
  %1687 = load float, float* %3, align 4
  %1688 = load i32, i32* %11, align 4
  %1689 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1687, i32 %1688)
  br label %1941

1690:                                             ; preds = %1676
  %1691 = load i8*, i8** %2, align 8
  %1692 = call i32 @strcmp(i8* %1691, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i64 0, i64 0)) #4
  %1693 = icmp ne i32 %1692, 0
  br i1 %1693, label %1707, label %1694

1694:                                             ; preds = %1690
  %1695 = load float, float* %4, align 4
  %1696 = load i32, i32* %9, align 4
  %1697 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1695, i32 %1696)
  %1698 = load float, float* %6, align 4
  %1699 = load i32, i32* %9, align 4
  %1700 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1698, i32 %1699)
  %1701 = load float, float* %3, align 4
  %1702 = load i32, i32* %10, align 4
  %1703 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1701, i32 %1702)
  %1704 = load float, float* %3, align 4
  %1705 = load i32, i32* %10, align 4
  %1706 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1704, i32 %1705)
  br label %1940

1707:                                             ; preds = %1690
  %1708 = load i8*, i8** %2, align 8
  %1709 = call i32 @strcmp(i8* %1708, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0)) #4
  %1710 = icmp ne i32 %1709, 0
  br i1 %1710, label %1718, label %1711

1711:                                             ; preds = %1707
  %1712 = load float, float* %3, align 4
  %1713 = load i32, i32* %10, align 4
  %1714 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1712, i32 %1713)
  %1715 = load float, float* %3, align 4
  %1716 = load i32, i32* %10, align 4
  %1717 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1715, i32 %1716)
  br label %1939

1718:                                             ; preds = %1707
  %1719 = load i8*, i8** %2, align 8
  %1720 = call i32 @strcmp(i8* %1719, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i64 0, i64 0)) #4
  %1721 = icmp ne i32 %1720, 0
  br i1 %1721, label %1729, label %1722

1722:                                             ; preds = %1718
  %1723 = load float, float* %3, align 4
  %1724 = load i32, i32* %10, align 4
  %1725 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1723, i32 %1724)
  %1726 = load float, float* %3, align 4
  %1727 = load i32, i32* %10, align 4
  %1728 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1726, i32 %1727)
  br label %1938

1729:                                             ; preds = %1718
  %1730 = load i8*, i8** %2, align 8
  %1731 = call i32 @strcmp(i8* %1730, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0)) #4
  %1732 = icmp ne i32 %1731, 0
  br i1 %1732, label %1746, label %1733

1733:                                             ; preds = %1729
  %1734 = load float, float* %4, align 4
  %1735 = load i32, i32* %9, align 4
  %1736 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1734, i32 %1735)
  %1737 = load float, float* %6, align 4
  %1738 = load i32, i32* %9, align 4
  %1739 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1737, i32 %1738)
  %1740 = load float, float* %3, align 4
  %1741 = load i32, i32* %10, align 4
  %1742 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1740, i32 %1741)
  %1743 = load float, float* %3, align 4
  %1744 = load i32, i32* %10, align 4
  %1745 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1743, i32 %1744)
  br label %1937

1746:                                             ; preds = %1729
  %1747 = load i8*, i8** %2, align 8
  %1748 = call i32 @strcmp(i8* %1747, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i64 0, i64 0)) #4
  %1749 = icmp ne i32 %1748, 0
  br i1 %1749, label %1760, label %1750

1750:                                             ; preds = %1746
  %1751 = load float, float* %6, align 4
  %1752 = load i32, i32* %9, align 4
  %1753 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1751, i32 %1752)
  %1754 = load float, float* %3, align 4
  %1755 = load i32, i32* %10, align 4
  %1756 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1754, i32 %1755)
  %1757 = load float, float* %3, align 4
  %1758 = load i32, i32* %10, align 4
  %1759 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1757, i32 %1758)
  br label %1936

1760:                                             ; preds = %1746
  %1761 = load i8*, i8** %2, align 8
  %1762 = call i32 @strcmp(i8* %1761, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0)) #4
  %1763 = icmp ne i32 %1762, 0
  br i1 %1763, label %1771, label %1764

1764:                                             ; preds = %1760
  %1765 = load float, float* %4, align 4
  %1766 = load i32, i32* %9, align 4
  %1767 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1765, i32 %1766)
  %1768 = load float, float* %3, align 4
  %1769 = load i32, i32* %11, align 4
  %1770 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1768, i32 %1769)
  br label %1935

1771:                                             ; preds = %1760
  %1772 = load i8*, i8** %2, align 8
  %1773 = call i32 @strcmp(i8* %1772, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0)) #4
  %1774 = icmp ne i32 %1773, 0
  br i1 %1774, label %1782, label %1775

1775:                                             ; preds = %1771
  %1776 = load float, float* %4, align 4
  %1777 = load i32, i32* %9, align 4
  %1778 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1776, i32 %1777)
  %1779 = load float, float* %3, align 4
  %1780 = load i32, i32* %11, align 4
  %1781 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1779, i32 %1780)
  br label %1934

1782:                                             ; preds = %1771
  %1783 = load i8*, i8** %2, align 8
  %1784 = call i32 @strcmp(i8* %1783, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0)) #4
  %1785 = icmp ne i32 %1784, 0
  br i1 %1785, label %1793, label %1786

1786:                                             ; preds = %1782
  %1787 = load float, float* %4, align 4
  %1788 = load i32, i32* %9, align 4
  %1789 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1787, i32 %1788)
  %1790 = load float, float* %3, align 4
  %1791 = load i32, i32* %11, align 4
  %1792 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1790, i32 %1791)
  br label %1933

1793:                                             ; preds = %1782
  %1794 = load i8*, i8** %2, align 8
  %1795 = call i32 @strcmp(i8* %1794, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0)) #4
  %1796 = icmp ne i32 %1795, 0
  br i1 %1796, label %1804, label %1797

1797:                                             ; preds = %1793
  %1798 = load float, float* %4, align 4
  %1799 = load i32, i32* %9, align 4
  %1800 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1798, i32 %1799)
  %1801 = load float, float* %3, align 4
  %1802 = load i32, i32* %11, align 4
  %1803 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1801, i32 %1802)
  br label %1932

1804:                                             ; preds = %1793
  %1805 = load i8*, i8** %2, align 8
  %1806 = call i32 @strcmp(i8* %1805, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i64 0, i64 0)) #4
  %1807 = icmp ne i32 %1806, 0
  br i1 %1807, label %1815, label %1808

1808:                                             ; preds = %1804
  %1809 = load float, float* %4, align 4
  %1810 = load i32, i32* %9, align 4
  %1811 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1809, i32 %1810)
  %1812 = load float, float* %3, align 4
  %1813 = load i32, i32* %11, align 4
  %1814 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1812, i32 %1813)
  br label %1931

1815:                                             ; preds = %1804
  %1816 = load i8*, i8** %2, align 8
  %1817 = call i32 @strcmp(i8* %1816, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i64 0, i64 0)) #4
  %1818 = icmp ne i32 %1817, 0
  br i1 %1818, label %1826, label %1819

1819:                                             ; preds = %1815
  %1820 = load float, float* %6, align 4
  %1821 = load i32, i32* %9, align 4
  %1822 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1820, i32 %1821)
  %1823 = load float, float* %6, align 4
  %1824 = load i32, i32* %9, align 4
  %1825 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1823, i32 %1824)
  br label %1930

1826:                                             ; preds = %1815
  %1827 = load i8*, i8** %2, align 8
  %1828 = call i32 @strcmp(i8* %1827, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0)) #4
  %1829 = icmp ne i32 %1828, 0
  br i1 %1829, label %1840, label %1830

1830:                                             ; preds = %1826
  %1831 = load float, float* %6, align 4
  %1832 = load i32, i32* %9, align 4
  %1833 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1831, i32 %1832)
  %1834 = load float, float* %3, align 4
  %1835 = load i32, i32* %10, align 4
  %1836 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1834, i32 %1835)
  %1837 = load float, float* %3, align 4
  %1838 = load i32, i32* %10, align 4
  %1839 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1837, i32 %1838)
  br label %1929

1840:                                             ; preds = %1826
  %1841 = load i8*, i8** %2, align 8
  %1842 = call i32 @strcmp(i8* %1841, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i64 0, i64 0)) #4
  %1843 = icmp ne i32 %1842, 0
  br i1 %1843, label %1851, label %1844

1844:                                             ; preds = %1840
  %1845 = load float, float* %6, align 4
  %1846 = load i32, i32* %9, align 4
  %1847 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1845, i32 %1846)
  %1848 = load float, float* %3, align 4
  %1849 = load i32, i32* %11, align 4
  %1850 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1848, i32 %1849)
  br label %1928

1851:                                             ; preds = %1840
  %1852 = load i8*, i8** %2, align 8
  %1853 = call i32 @strcmp(i8* %1852, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i64 0, i64 0)) #4
  %1854 = icmp ne i32 %1853, 0
  br i1 %1854, label %1866, label %1855

1855:                                             ; preds = %1851
  %1856 = load float, float* %3, align 4
  %1857 = load i32, i32* %11, align 4
  %1858 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1856, i32 %1857)
  %1859 = load float, float* %6, align 4
  %1860 = load i32, i32* %9, align 4
  %1861 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1859, i32 %1860)
  %1862 = load float, float* %6, align 4
  %1863 = fneg float %1862
  %1864 = load i32, i32* %9, align 4
  %1865 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1863, i32 %1864)
  br label %1927

1866:                                             ; preds = %1851
  %1867 = load i8*, i8** %2, align 8
  %1868 = call i32 @strcmp(i8* %1867, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i64 0, i64 0)) #4
  %1869 = icmp ne i32 %1868, 0
  br i1 %1869, label %1880, label %1870

1870:                                             ; preds = %1866
  %1871 = load float, float* %6, align 4
  %1872 = load i32, i32* %9, align 4
  %1873 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1871, i32 %1872)
  %1874 = load float, float* %7, align 4
  %1875 = load i32, i32* %9, align 4
  %1876 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1874, i32 %1875)
  %1877 = load float, float* %5, align 4
  %1878 = load i32, i32* %9, align 4
  %1879 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1877, i32 %1878)
  br label %1926

1880:                                             ; preds = %1866
  %1881 = load i8*, i8** %2, align 8
  %1882 = call i32 @strcmp(i8* %1881, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i64 0, i64 0)) #4
  %1883 = icmp ne i32 %1882, 0
  br i1 %1883, label %1888, label %1884

1884:                                             ; preds = %1880
  %1885 = load float, float* %3, align 4
  %1886 = load i32, i32* %10, align 4
  %1887 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1885, i32 %1886)
  br label %1925

1888:                                             ; preds = %1880
  %1889 = load i8*, i8** %2, align 8
  %1890 = call i32 @strcmp(i8* %1889, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0)) #4
  %1891 = icmp ne i32 %1890, 0
  br i1 %1891, label %1899, label %1892

1892:                                             ; preds = %1888
  %1893 = load float, float* %3, align 4
  %1894 = load i32, i32* %10, align 4
  %1895 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1893, i32 %1894)
  %1896 = load float, float* %3, align 4
  %1897 = load i32, i32* %10, align 4
  %1898 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1896, i32 %1897)
  br label %1924

1899:                                             ; preds = %1888
  %1900 = load i8*, i8** %2, align 8
  %1901 = call i32 @strcmp(i8* %1900, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i64 0, i64 0)) #4
  %1902 = icmp ne i32 %1901, 0
  br i1 %1902, label %1922, label %1903

1903:                                             ; preds = %1899
  %1904 = load float, float* %3, align 4
  %1905 = load i32, i32* %10, align 4
  %1906 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float %1904, i32 %1905)
  %1907 = load float, float* %3, align 4
  %1908 = load i32, i32* %10, align 4
  %1909 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float %1907, i32 %1908)
  %1910 = load float, float* %6, align 4
  %1911 = load i32, i32* %10, align 4
  %1912 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float %1910, i32 %1911)
  %1913 = load float, float* %7, align 4
  %1914 = load i32, i32* %10, align 4
  %1915 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float %1913, i32 %1914)
  %1916 = load float, float* %5, align 4
  %1917 = load i32, i32* %10, align 4
  %1918 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float %1916, i32 %1917)
  %1919 = load float, float* %3, align 4
  %1920 = load i32, i32* %10, align 4
  %1921 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float %1919, i32 %1920)
  br label %1923

1922:                                             ; preds = %1899
  br label %1923

1923:                                             ; preds = %1922, %1903
  br label %1924

1924:                                             ; preds = %1923, %1892
  br label %1925

1925:                                             ; preds = %1924, %1884
  br label %1926

1926:                                             ; preds = %1925, %1870
  br label %1927

1927:                                             ; preds = %1926, %1855
  br label %1928

1928:                                             ; preds = %1927, %1844
  br label %1929

1929:                                             ; preds = %1928, %1830
  br label %1930

1930:                                             ; preds = %1929, %1819
  br label %1931

1931:                                             ; preds = %1930, %1808
  br label %1932

1932:                                             ; preds = %1931, %1797
  br label %1933

1933:                                             ; preds = %1932, %1786
  br label %1934

1934:                                             ; preds = %1933, %1775
  br label %1935

1935:                                             ; preds = %1934, %1764
  br label %1936

1936:                                             ; preds = %1935, %1750
  br label %1937

1937:                                             ; preds = %1936, %1733
  br label %1938

1938:                                             ; preds = %1937, %1722
  br label %1939

1939:                                             ; preds = %1938, %1711
  br label %1940

1940:                                             ; preds = %1939, %1694
  br label %1941

1941:                                             ; preds = %1940, %1680
  br label %1942

1942:                                             ; preds = %1941, %1669
  br label %1943

1943:                                             ; preds = %1942, %1652
  br label %1944

1944:                                             ; preds = %1943, %1638
  br label %1945

1945:                                             ; preds = %1944, %1621
  br label %1946

1946:                                             ; preds = %1945, %1601
  br label %1947

1947:                                             ; preds = %1946, %1590
  br label %1948

1948:                                             ; preds = %1947, %1576
  br label %1949

1949:                                             ; preds = %1948, %1565
  br label %1950

1950:                                             ; preds = %1949, %1551
  br label %1951

1951:                                             ; preds = %1950, %1531
  br label %1952

1952:                                             ; preds = %1951, %1507
  br label %1953

1953:                                             ; preds = %1952, %1496
  br label %1954

1954:                                             ; preds = %1953, %1485
  br label %1955

1955:                                             ; preds = %1954, %1474
  br label %1956

1956:                                             ; preds = %1955, %1463
  br label %1957

1957:                                             ; preds = %1956, %1452
  br label %1958

1958:                                             ; preds = %1957, %1441
  br label %1959

1959:                                             ; preds = %1958, %1425
  br label %1960

1960:                                             ; preds = %1959, %1411
  br label %1961

1961:                                             ; preds = %1960, %1391
  br label %1962

1962:                                             ; preds = %1961, %1377
  br label %1963

1963:                                             ; preds = %1962, %1363
  br label %1964

1964:                                             ; preds = %1963, %1352
  br label %1965

1965:                                             ; preds = %1964, %1341
  br label %1966

1966:                                             ; preds = %1965, %1330
  br label %1967

1967:                                             ; preds = %1966, %1319
  br label %1968

1968:                                             ; preds = %1967, %1308
  br label %1969

1969:                                             ; preds = %1968, %1297
  br label %1970

1970:                                             ; preds = %1969, %1288
  br label %1971

1971:                                             ; preds = %1970, %1278
  br label %1972

1972:                                             ; preds = %1971, %1258
  br label %1973

1973:                                             ; preds = %1972, %1244
  br label %1974

1974:                                             ; preds = %1973, %1233
  br label %1975

1975:                                             ; preds = %1974, %1223
  br label %1976

1976:                                             ; preds = %1975, %1212
  br label %1977

1977:                                             ; preds = %1976, %1204
  br label %1978

1978:                                             ; preds = %1977, %1195
  br label %1979

1979:                                             ; preds = %1978, %1175
  br label %1980

1980:                                             ; preds = %1979, %1165
  br label %1981

1981:                                             ; preds = %1980, %1160
  br label %1982

1982:                                             ; preds = %1981, %1152
  br label %1983

1983:                                             ; preds = %1982, %1144
  br label %1984

1984:                                             ; preds = %1983, %1136
  br label %1985

1985:                                             ; preds = %1984, %1125
  br label %1986

1986:                                             ; preds = %1985, %1118
  br label %1987

1987:                                             ; preds = %1986, %1110
  br label %1988

1988:                                             ; preds = %1987, %1102
  br label %1989

1989:                                             ; preds = %1988, %1094
  br label %1990

1990:                                             ; preds = %1989, %1080
  br label %1991

1991:                                             ; preds = %1990, %1072
  br label %1992

1992:                                             ; preds = %1991, %1061
  br label %1993

1993:                                             ; preds = %1992, %1050
  br label %1994

1994:                                             ; preds = %1993, %1036
  br label %1995

1995:                                             ; preds = %1994, %1022
  br label %1996

1996:                                             ; preds = %1995, %1008
  br label %1997

1997:                                             ; preds = %1996, %988
  br label %1998

1998:                                             ; preds = %1997, %964
  br label %1999

1999:                                             ; preds = %1998, %940
  br label %2000

2000:                                             ; preds = %1999, %916
  br label %2001

2001:                                             ; preds = %2000, %899
  br label %2002

2002:                                             ; preds = %2001, %885
  br label %2003

2003:                                             ; preds = %2002, %865
  br label %2004

2004:                                             ; preds = %2003, %845
  br label %2005

2005:                                             ; preds = %2004, %825
  br label %2006

2006:                                             ; preds = %2005, %811
  br label %2007

2007:                                             ; preds = %2006, %794
  br label %2008

2008:                                             ; preds = %2007, %771
  br label %2009

2009:                                             ; preds = %2008, %757
  br label %2010

2010:                                             ; preds = %2009, %743
  br label %2011

2011:                                             ; preds = %2010, %732
  br label %2012

2012:                                             ; preds = %2011, %721
  br label %2013

2013:                                             ; preds = %2012, %704
  br label %2014

2014:                                             ; preds = %2013, %690
  br label %2015

2015:                                             ; preds = %2014, %670
  br label %2016

2016:                                             ; preds = %2015, %653
  br label %2017

2017:                                             ; preds = %2016, %633
  br label %2018

2018:                                             ; preds = %2017, %616
  br label %2019

2019:                                             ; preds = %2018, %599
  br label %2020

2020:                                             ; preds = %2019, %579
  br label %2021

2021:                                             ; preds = %2020, %565
  br label %2022

2022:                                             ; preds = %2021, %551
  br label %2023

2023:                                             ; preds = %2022, %540
  br label %2024

2024:                                             ; preds = %2023, %529
  br label %2025

2025:                                             ; preds = %2024, %515
  br label %2026

2026:                                             ; preds = %2025, %498
  br label %2027

2027:                                             ; preds = %2026, %481
  br label %2028

2028:                                             ; preds = %2027, %461
  br label %2029

2029:                                             ; preds = %2028, %447
  br label %2030

2030:                                             ; preds = %2029, %436
  br label %2031

2031:                                             ; preds = %2030, %425
  br label %2032

2032:                                             ; preds = %2031, %414
  br label %2033

2033:                                             ; preds = %2032, %403
  br label %2034

2034:                                             ; preds = %2033, %392
  br label %2035

2035:                                             ; preds = %2034, %378
  br label %2036

2036:                                             ; preds = %2035, %356
  br label %2037

2037:                                             ; preds = %2036, %336
  br label %2038

2038:                                             ; preds = %2037, %325
  br label %2039

2039:                                             ; preds = %2038, %314
  br label %2040

2040:                                             ; preds = %2039, %300
  br label %2041

2041:                                             ; preds = %2040, %289
  br label %2042

2042:                                             ; preds = %2041, %272
  br label %2043

2043:                                             ; preds = %2042, %252
  br label %2044

2044:                                             ; preds = %2043, %238
  br label %2045

2045:                                             ; preds = %2044, %221
  br label %2046

2046:                                             ; preds = %2045, %201
  br label %2047

2047:                                             ; preds = %2046, %181
  br label %2048

2048:                                             ; preds = %2047, %170
  br label %2049

2049:                                             ; preds = %2048, %159
  br label %2050

2050:                                             ; preds = %2049, %148
  br label %2051

2051:                                             ; preds = %2050, %137
  br label %2052

2052:                                             ; preds = %2051, %129
  br label %2053

2053:                                             ; preds = %2052, %112
  br label %2054

2054:                                             ; preds = %2053, %101
  br label %2055

2055:                                             ; preds = %2054, %90
  br label %2056

2056:                                             ; preds = %2055, %79
  br label %2057

2057:                                             ; preds = %2056, %59
  br label %2058

2058:                                             ; preds = %2057, %54
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s351() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  %8 = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  %9 = load float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), align 4
  store float %9, float* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %88, %0
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ntimes, align 4
  %13 = mul nsw i32 8, %12
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %83, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 32000
  br i1 %18, label %19, label %86

19:                                               ; preds = %16
  %20 = load float, float* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float %20, %24
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %27
  %29 = load float, float* %28, align 4
  %30 = fadd float %29, %25
  store float %30, float* %28, align 4
  %31 = load float, float* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %34
  %36 = load float, float* %35, align 4
  %37 = fmul float %31, %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %40
  %42 = load float, float* %41, align 4
  %43 = fadd float %42, %37
  store float %43, float* %41, align 4
  %44 = load float, float* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %47
  %49 = load float, float* %48, align 4
  %50 = fmul float %44, %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %53
  %55 = load float, float* %54, align 4
  %56 = fadd float %55, %50
  store float %56, float* %54, align 4
  %57 = load float, float* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %60
  %62 = load float, float* %61, align 4
  %63 = fmul float %57, %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %66
  %68 = load float, float* %67, align 4
  %69 = fadd float %68, %63
  store float %69, float* %67, align 4
  %70 = load float, float* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %73
  %75 = load float, float* %74, align 4
  %76 = fmul float %70, %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %79
  %81 = load float, float* %80, align 4
  %82 = fadd float %81, %76
  store float %82, float* %80, align 4
  br label %83

83:                                               ; preds = %19
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 5
  store i32 %85, i32* %7, align 4
  br label %16

86:                                               ; preds = %16
  %87 = call i32 @dummy(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float 0.000000e+00)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %10

91:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* %1, align 8
  %94 = sub nsw i64 %92, %93
  store i64 %94, i64* %3, align 8
  %95 = load i64, i64* %3, align 8
  %96 = sitofp i64 %95 to double
  %97 = fdiv double %96, 1.000000e+06
  store double %97, double* %4, align 8
  %98 = load double, double* %4, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i64 0, i64 0), double %98)
  call void @check(i32 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s1351() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  %10 = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %38, %0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ntimes, align 4
  %14 = mul nsw i32 8, %13
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  store float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float** %6, align 8
  store float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float** %7, align 8
  store float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load float*, float** %7, align 8
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %8, align 8
  %24 = load float, float* %23, align 4
  %25 = fadd float %22, %24
  %26 = load float*, float** %6, align 8
  store float %25, float* %26, align 4
  %27 = load float*, float** %6, align 8
  %28 = getelementptr inbounds float, float* %27, i32 1
  store float* %28, float** %6, align 8
  %29 = load float*, float** %7, align 8
  %30 = getelementptr inbounds float, float* %29, i32 1
  store float* %30, float** %7, align 8
  %31 = load float*, float** %8, align 8
  %32 = getelementptr inbounds float, float* %31, i32 1
  store float* %32, float** %8, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %17

36:                                               ; preds = %17
  %37 = call i32 @dummy(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float 0.000000e+00)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  store i64 0, i64* %2, align 8
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* %1, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = sitofp i64 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  store double %47, double* %4, align 8
  %48 = load double, double* %4, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.138, i64 0, i64 0), double %48)
  call void @check(i32 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s352() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  %8 = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %84, %0
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ntimes, align 4
  %12 = mul nsw i32 8, %11
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %9
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %78, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 32000
  br i1 %17, label %18, label %81

18:                                               ; preds = %15
  %19 = load float, float* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %21
  %23 = load float, float* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %23, %27
  %29 = fadd float %19, %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %32
  %34 = load float, float* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %37
  %39 = load float, float* %38, align 4
  %40 = fmul float %34, %39
  %41 = fadd float %29, %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %44
  %46 = load float, float* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %49
  %51 = load float, float* %50, align 4
  %52 = fmul float %46, %51
  %53 = fadd float %41, %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %56
  %58 = load float, float* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %61
  %63 = load float, float* %62, align 4
  %64 = fmul float %58, %63
  %65 = fadd float %53, %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %68
  %70 = load float, float* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %73
  %75 = load float, float* %74, align 4
  %76 = fmul float %70, %75
  %77 = fadd float %65, %76
  store float %77, float* %5, align 4
  br label %78

78:                                               ; preds = %18
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 5
  store i32 %80, i32* %7, align 4
  br label %15

81:                                               ; preds = %15
  %82 = load float, float* %5, align 4
  %83 = call i32 @dummy(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float %82)
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %9

87:                                               ; preds = %9
  store i64 0, i64* %2, align 8
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* %1, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = sitofp i64 %91 to double
  %93 = fdiv double %92, 1.000000e+06
  store double %93, double* %4, align 8
  %94 = load double, double* %4, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i64 0, i64 0), double %94)
  %96 = load float, float* %5, align 4
  store float %96, float* @temp, align 4
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s353(i32* noalias %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %10 = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  %11 = load float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), align 4
  store float %11, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %109, %1
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @ntimes, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %112

16:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %104, %16
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 32000
  br i1 %19, label %20, label %107

20:                                               ; preds = %17
  %21 = load float, float* %7, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %27
  %29 = load float, float* %28, align 4
  %30 = fmul float %21, %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %32
  %34 = load float, float* %33, align 4
  %35 = fadd float %34, %30
  store float %35, float* %33, align 4
  %36 = load float, float* %7, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %43
  %45 = load float, float* %44, align 4
  %46 = fmul float %36, %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %49
  %51 = load float, float* %50, align 4
  %52 = fadd float %51, %46
  store float %52, float* %50, align 4
  %53 = load float, float* %7, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %60
  %62 = load float, float* %61, align 4
  %63 = fmul float %53, %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %66
  %68 = load float, float* %67, align 4
  %69 = fadd float %68, %63
  store float %69, float* %67, align 4
  %70 = load float, float* %7, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %77
  %79 = load float, float* %78, align 4
  %80 = fmul float %70, %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %83
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, %80
  store float %86, float* %84, align 4
  %87 = load float, float* %7, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), i64 %94
  %96 = load float, float* %95, align 4
  %97 = fmul float %87, %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), i64 %100
  %102 = load float, float* %101, align 4
  %103 = fadd float %102, %97
  store float %103, float* %101, align 4
  br label %104

104:                                              ; preds = %20
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 5
  store i32 %106, i32* %9, align 4
  br label %17

107:                                              ; preds = %17
  %108 = call i32 @dummy(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float 0.000000e+00)
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %12

112:                                              ; preds = %12
  store i64 0, i64* %4, align 8
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* %3, align 8
  %115 = sub nsw i64 %113, %114
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = sitofp i64 %116 to double
  %118 = fdiv double %117, 1.000000e+06
  store double %118, double* %6, align 8
  %119 = load double, double* %6, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.140, i64 0, i64 0), double %119)
  call void @check(i32 1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @min(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set(i32* %0, float* %1, float* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %9 = call i32 @posix_memalign(i8** bitcast (float** @xx to i8**), i64 16, i64 128000) #5
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %48, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 32000
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %22, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 3
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  br label %48

48:                                               ; preds = %14
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 5
  store i32 %50, i32* %7, align 4
  br label %11

51:                                               ; preds = %11
  %52 = call i32 @set1d(float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), float 1.000000e+00, i32 1)
  %53 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), float 1.000000e+00, i32 1)
  %54 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), float 1.000000e+00, i32 1)
  %55 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), float 1.000000e+00, i32 1)
  %56 = call i32 @set1d(float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), float 1.000000e+00, i32 1)
  %57 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), float 0.000000e+00, i32 -1)
  %58 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), float 0.000000e+00, i32 -1)
  %59 = call i32 @set2d([256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), float 0.000000e+00, i32 -1)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %71, %51
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 32000
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = srem i32 %65, 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [32000 x i32], [32000 x i32]* @indx, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %60

74:                                               ; preds = %60
  %75 = load float*, float** %5, align 8
  store float 1.000000e+00, float* %75, align 4
  %76 = load float*, float** %6, align 8
  store float 2.000000e+00, float* %76, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %11 = bitcast i32** %8 to i8**
  %12 = call i32 @posix_memalign(i8** %11, i64 16, i64 128000) #5
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atoi(i8* %18) #4
  store i32 %19, i32* @ntimes, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @ntimes, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.142, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28) #4
  store i32 %29, i32* @digits, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32*, i32** %8, align 8
  call void @set(i32* %31, float* %9, float* %10)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.143, i64 0, i64 0))
  %33 = call i32 @s351()
  %34 = call i32 @s1351()
  %35 = call i32 @s352()
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @s353(i32* %36)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
