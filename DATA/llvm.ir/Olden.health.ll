; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Village = type { [4 x %struct.Village*], %struct.Village*, %struct.List, %struct.Hosp, i32, i64 }
%struct.List = type { %struct.List*, %struct.Patient*, %struct.List* }
%struct.Patient = type { i32, i32, i32, %struct.Village* }
%struct.Hosp = type { i32, i32, i32, %struct.List, %struct.List, %struct.List, %struct.List }
%struct.Results = type { float, float, float }

@.str = private unnamed_addr constant [37 x i8] c"max_level=%d  max_time=%d  seed=%d \0A\00", align 1
@seed = common dso_local global i64 0, align 8
@max_level = common dso_local global i32 0, align 4
@max_time = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"\0A\0A    Columbian Health Care Simulator\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Working...\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Getting Results\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Done.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"# of people treated:              %f people\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Average length of stay:           %0.2f time units\0A\00", align 1
@.str.7.8 = private unnamed_addr constant [49 x i8] c"Average # of hospitals visited:   %f hospitals\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dealwithargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 3, i32* @max_level, align 4
  store i64 15, i64* @max_time, align 8
  store i64 4, i64* @seed, align 8
  br label %21

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11) #5
  store i32 %12, i32* @max_level, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 2
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @atol(i8* %15) #5
  store i64 %16, i64* @max_time, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 3
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @atol(i8* %19) #5
  store i64 %20, i64* @seed, align 8
  br label %21

21:                                               ; preds = %8, %7
  %22 = load i32, i32* @max_level, align 4
  %23 = load i64, i64* @max_time, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* @seed, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Village* @alloc_tree(i32 %0, i32 %1, %struct.Village* %2) #0 {
  %4 = alloca %struct.Village*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Village*, align 8
  %8 = alloca %struct.Village*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x %struct.Village*], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.Village* %2, %struct.Village** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.Village* null, %struct.Village** %4, align 8
  br label %140

14:                                               ; preds = %3
  %15 = call noalias i8* @malloc(i64 192) #6
  %16 = bitcast i8* %15 to %struct.Village*
  store %struct.Village* %16, %struct.Village** %8, align 8
  store i32 3, i32* %9, align 4
  br label %17

17:                                               ; preds = %33, %14
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = load %struct.Village*, %struct.Village** %8, align 8
  %29 = call %struct.Village* @alloc_tree(i32 %22, i32 %27, %struct.Village* %28)
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %10, i64 0, i64 %31
  store %struct.Village* %29, %struct.Village** %32, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.Village*, %struct.Village** %7, align 8
  %38 = load %struct.Village*, %struct.Village** %8, align 8
  %39 = getelementptr inbounds %struct.Village, %struct.Village* %38, i32 0, i32 1
  store %struct.Village* %37, %struct.Village** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.Village*, %struct.Village** %8, align 8
  %42 = getelementptr inbounds %struct.Village, %struct.Village* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @seed, align 8
  %46 = add nsw i64 127773, %45
  %47 = mul nsw i64 %44, %46
  %48 = load %struct.Village*, %struct.Village** %8, align 8
  %49 = getelementptr inbounds %struct.Village, %struct.Village* %48, i32 0, i32 5
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sitofp i32 %51 to double
  %53 = call double @pow(double 2.000000e+00, double %52) #6
  %54 = fptosi double %53 to i32
  %55 = load %struct.Village*, %struct.Village** %8, align 8
  %56 = getelementptr inbounds %struct.Village, %struct.Village* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.Village*, %struct.Village** %8, align 8
  %59 = getelementptr inbounds %struct.Village, %struct.Village* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.Village*, %struct.Village** %8, align 8
  %63 = getelementptr inbounds %struct.Village, %struct.Village* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.Village*, %struct.Village** %8, align 8
  %66 = getelementptr inbounds %struct.Village, %struct.Village* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load %struct.Village*, %struct.Village** %8, align 8
  %69 = getelementptr inbounds %struct.Village, %struct.Village* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.List, %struct.List* %70, i32 0, i32 0
  store %struct.List* null, %struct.List** %71, align 8
  %72 = load %struct.Village*, %struct.Village** %8, align 8
  %73 = getelementptr inbounds %struct.Village, %struct.Village* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.List, %struct.List* %74, i32 0, i32 2
  store %struct.List* null, %struct.List** %75, align 8
  %76 = load %struct.Village*, %struct.Village** %8, align 8
  %77 = getelementptr inbounds %struct.Village, %struct.Village* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.List, %struct.List* %78, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %79, align 8
  %80 = load %struct.Village*, %struct.Village** %8, align 8
  %81 = getelementptr inbounds %struct.Village, %struct.Village* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.List, %struct.List* %82, i32 0, i32 0
  store %struct.List* null, %struct.List** %83, align 8
  %84 = load %struct.Village*, %struct.Village** %8, align 8
  %85 = getelementptr inbounds %struct.Village, %struct.Village* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.List, %struct.List* %86, i32 0, i32 2
  store %struct.List* null, %struct.List** %87, align 8
  %88 = load %struct.Village*, %struct.Village** %8, align 8
  %89 = getelementptr inbounds %struct.Village, %struct.Village* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.List, %struct.List* %90, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %91, align 8
  %92 = load %struct.Village*, %struct.Village** %8, align 8
  %93 = getelementptr inbounds %struct.Village, %struct.Village* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.List, %struct.List* %94, i32 0, i32 0
  store %struct.List* null, %struct.List** %95, align 8
  %96 = load %struct.Village*, %struct.Village** %8, align 8
  %97 = getelementptr inbounds %struct.Village, %struct.Village* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.List, %struct.List* %98, i32 0, i32 2
  store %struct.List* null, %struct.List** %99, align 8
  %100 = load %struct.Village*, %struct.Village** %8, align 8
  %101 = getelementptr inbounds %struct.Village, %struct.Village* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.List, %struct.List* %102, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %103, align 8
  %104 = load %struct.Village*, %struct.Village** %8, align 8
  %105 = getelementptr inbounds %struct.Village, %struct.Village* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.List, %struct.List* %106, i32 0, i32 0
  store %struct.List* null, %struct.List** %107, align 8
  %108 = load %struct.Village*, %struct.Village** %8, align 8
  %109 = getelementptr inbounds %struct.Village, %struct.Village* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.List, %struct.List* %110, i32 0, i32 2
  store %struct.List* null, %struct.List** %111, align 8
  %112 = load %struct.Village*, %struct.Village** %8, align 8
  %113 = getelementptr inbounds %struct.Village, %struct.Village* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.List, %struct.List* %114, i32 0, i32 1
  store %struct.Patient* null, %struct.Patient** %115, align 8
  %116 = load %struct.Village*, %struct.Village** %8, align 8
  %117 = getelementptr inbounds %struct.Village, %struct.Village* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.List, %struct.List* %117, i32 0, i32 2
  store %struct.List* null, %struct.List** %118, align 8
  %119 = load %struct.Village*, %struct.Village** %8, align 8
  %120 = getelementptr inbounds %struct.Village, %struct.Village* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.List, %struct.List* %120, i32 0, i32 0
  store %struct.List* null, %struct.List** %121, align 8
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %135, %36
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 4
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %10, i64 0, i64 %127
  %129 = load %struct.Village*, %struct.Village** %128, align 8
  %130 = load %struct.Village*, %struct.Village** %8, align 8
  %131 = getelementptr inbounds %struct.Village, %struct.Village* %130, i32 0, i32 0
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %131, i64 0, i64 %133
  store %struct.Village* %129, %struct.Village** %134, align 8
  br label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %122

138:                                              ; preds = %122
  %139 = load %struct.Village*, %struct.Village** %8, align 8
  store %struct.Village* %139, %struct.Village** %4, align 8
  br label %140

140:                                              ; preds = %138, %13
  %141 = load %struct.Village*, %struct.Village** %4, align 8
  ret %struct.Village* %141
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @get_results(%struct.Village* %0) #0 {
  %2 = alloca %struct.Results, align 4
  %3 = alloca %struct.Village*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.List*, align 8
  %6 = alloca %struct.Patient*, align 8
  %7 = alloca [4 x %struct.Results], align 16
  %8 = alloca %struct.Village*, align 8
  %9 = alloca %struct.Results, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = alloca %struct.Results, align 4
  %12 = alloca { <2 x float>, float }, align 8
  %13 = alloca { <2 x float>, float }, align 8
  store %struct.Village* %0, %struct.Village** %3, align 8
  %14 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 2
  store float 0.000000e+00, float* %14, align 4
  %15 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 0
  store float 0.000000e+00, float* %15, align 4
  %16 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 1
  store float 0.000000e+00, float* %16, align 4
  %17 = load %struct.Village*, %struct.Village** %3, align 8
  %18 = icmp eq %struct.Village* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %120

20:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.Village*, %struct.Village** %3, align 8
  %26 = getelementptr inbounds %struct.Village, %struct.Village* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %26, i64 0, i64 %28
  %30 = load %struct.Village*, %struct.Village** %29, align 8
  store %struct.Village* %30, %struct.Village** %8, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %7, i64 0, i64 %32
  %34 = load %struct.Village*, %struct.Village** %8, align 8
  %35 = call { <2 x float>, float } @get_results(%struct.Village* %34)
  store { <2 x float>, float } %35, { <2 x float>, float }* %10, align 8
  %36 = bitcast { <2 x float>, float }* %10 to i8*
  %37 = bitcast %struct.Results* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %36, i64 12, i1 false)
  %38 = bitcast %struct.Results* %33 to i8*
  %39 = bitcast %struct.Results* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 12, i1 false)
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  br label %21

43:                                               ; preds = %21
  %44 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %7, i64 0, i64 0
  %45 = load %struct.Village*, %struct.Village** %3, align 8
  %46 = getelementptr inbounds %struct.Village, %struct.Village* %45, i32 0, i32 0
  %47 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %46, i64 0, i64 0
  %48 = load %struct.Village*, %struct.Village** %47, align 8
  %49 = call { <2 x float>, float } @get_results(%struct.Village* %48)
  store { <2 x float>, float } %49, { <2 x float>, float }* %12, align 8
  %50 = bitcast { <2 x float>, float }* %12 to i8*
  %51 = bitcast %struct.Results* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 8 %50, i64 12, i1 false)
  %52 = bitcast %struct.Results* %44 to i8*
  %53 = bitcast %struct.Results* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 4 %53, i64 12, i1 false)
  store i32 3, i32* %4, align 4
  br label %54

54:                                               ; preds = %82, %43
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %7, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.Results, %struct.Results* %60, i32 0, i32 2
  %62 = load float, float* %61, align 4
  %63 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 2
  %64 = load float, float* %63, align 4
  %65 = fadd float %64, %62
  store float %65, float* %63, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %7, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.Results, %struct.Results* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  %71 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 0
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %70
  store float %73, float* %71, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %7, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.Results, %struct.Results* %76, i32 0, i32 1
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 1
  %80 = load float, float* %79, align 4
  %81 = fadd float %80, %78
  store float %81, float* %79, align 4
  br label %82

82:                                               ; preds = %57
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %4, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load %struct.Village*, %struct.Village** %3, align 8
  %87 = getelementptr inbounds %struct.Village, %struct.Village* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.List, %struct.List* %87, i32 0, i32 0
  %89 = load %struct.List*, %struct.List** %88, align 8
  store %struct.List* %89, %struct.List** %5, align 8
  br label %90

90:                                               ; preds = %93, %85
  %91 = load %struct.List*, %struct.List** %5, align 8
  %92 = icmp ne %struct.List* %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = load %struct.List*, %struct.List** %5, align 8
  %95 = getelementptr inbounds %struct.List, %struct.List* %94, i32 0, i32 1
  %96 = load %struct.Patient*, %struct.Patient** %95, align 8
  store %struct.Patient* %96, %struct.Patient** %6, align 8
  %97 = load %struct.Patient*, %struct.Patient** %6, align 8
  %98 = getelementptr inbounds %struct.Patient, %struct.Patient* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sitofp i32 %99 to float
  %101 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 2
  %102 = load float, float* %101, align 4
  %103 = fadd float %102, %100
  store float %103, float* %101, align 4
  %104 = load %struct.Patient*, %struct.Patient** %6, align 8
  %105 = getelementptr inbounds %struct.Patient, %struct.Patient* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to float
  %108 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = fadd float %109, %107
  store float %110, float* %108, align 4
  %111 = getelementptr inbounds %struct.Results, %struct.Results* %2, i32 0, i32 0
  %112 = load float, float* %111, align 4
  %113 = fpext float %112 to double
  %114 = fadd double %113, 1.000000e+00
  %115 = fptrunc double %114 to float
  store float %115, float* %111, align 4
  %116 = load %struct.List*, %struct.List** %5, align 8
  %117 = getelementptr inbounds %struct.List, %struct.List* %116, i32 0, i32 0
  %118 = load %struct.List*, %struct.List** %117, align 8
  store %struct.List* %118, %struct.List** %5, align 8
  br label %90

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119, %19
  %121 = bitcast { <2 x float>, float }* %13 to i8*
  %122 = bitcast %struct.Results* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 4 %122, i64 12, i1 false)
  %123 = load { <2 x float>, float }, { <2 x float>, float }* %13, align 8
  ret { <2 x float>, float } %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_patients_inside(%struct.Village* %0, %struct.List* %1) #0 {
  %3 = alloca %struct.Village*, align 8
  %4 = alloca %struct.List*, align 8
  %5 = alloca %struct.List*, align 8
  %6 = alloca %struct.Patient*, align 8
  %7 = alloca i32, align 4
  store %struct.Village* %0, %struct.Village** %3, align 8
  store %struct.List* %1, %struct.List** %4, align 8
  br label %8

8:                                                ; preds = %45, %2
  %9 = load %struct.List*, %struct.List** %4, align 8
  %10 = icmp ne %struct.List* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %8
  %12 = load %struct.List*, %struct.List** %4, align 8
  %13 = getelementptr inbounds %struct.List, %struct.List* %12, i32 0, i32 1
  %14 = load %struct.Patient*, %struct.Patient** %13, align 8
  store %struct.Patient* %14, %struct.Patient** %6, align 8
  %15 = load %struct.Patient*, %struct.Patient** %6, align 8
  %16 = getelementptr inbounds %struct.Patient, %struct.Patient* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.Patient*, %struct.Patient** %6, align 8
  %21 = getelementptr inbounds %struct.Patient, %struct.Patient* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.Patient*, %struct.Patient** %6, align 8
  %23 = getelementptr inbounds %struct.Patient, %struct.Patient* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %11
  %27 = load %struct.Village*, %struct.Village** %3, align 8
  %28 = getelementptr inbounds %struct.Village, %struct.Village* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.Village*, %struct.Village** %3, align 8
  %34 = getelementptr inbounds %struct.Village, %struct.Village* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.Village*, %struct.Village** %3, align 8
  %37 = getelementptr inbounds %struct.Village, %struct.Village* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %37, i32 0, i32 5
  store %struct.List* %38, %struct.List** %5, align 8
  %39 = load %struct.List*, %struct.List** %5, align 8
  %40 = load %struct.Patient*, %struct.Patient** %6, align 8
  call void @removeList(%struct.List* %39, %struct.Patient* %40)
  %41 = load %struct.Village*, %struct.Village** %3, align 8
  %42 = getelementptr inbounds %struct.Village, %struct.Village* %41, i32 0, i32 2
  store %struct.List* %42, %struct.List** %5, align 8
  %43 = load %struct.List*, %struct.List** %5, align 8
  %44 = load %struct.Patient*, %struct.Patient** %6, align 8
  call void @addList(%struct.List* %43, %struct.Patient* %44)
  br label %45

45:                                               ; preds = %26, %11
  %46 = load %struct.List*, %struct.List** %4, align 8
  %47 = getelementptr inbounds %struct.List, %struct.List* %46, i32 0, i32 0
  %48 = load %struct.List*, %struct.List** %47, align 8
  store %struct.List* %48, %struct.List** %4, align 8
  br label %8

49:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.List* @check_patients_assess(%struct.Village* %0, %struct.List* %1) #0 {
  %3 = alloca %struct.Village*, align 8
  %4 = alloca %struct.List*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.Patient*, align 8
  %7 = alloca %struct.List*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Village* %0, %struct.Village** %3, align 8
  store %struct.List* %1, %struct.List** %4, align 8
  store %struct.List* null, %struct.List** %7, align 8
  br label %11

11:                                               ; preds = %90, %2
  %12 = load %struct.List*, %struct.List** %4, align 8
  %13 = icmp ne %struct.List* %12, null
  br i1 %13, label %14, label %94

14:                                               ; preds = %11
  %15 = load %struct.List*, %struct.List** %4, align 8
  %16 = getelementptr inbounds %struct.List, %struct.List* %15, i32 0, i32 1
  %17 = load %struct.Patient*, %struct.Patient** %16, align 8
  store %struct.Patient* %17, %struct.Patient** %6, align 8
  %18 = load %struct.Patient*, %struct.Patient** %6, align 8
  %19 = getelementptr inbounds %struct.Patient, %struct.Patient* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.Patient*, %struct.Patient** %6, align 8
  %24 = getelementptr inbounds %struct.Patient, %struct.Patient* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.Village*, %struct.Village** %3, align 8
  %26 = getelementptr inbounds %struct.Village, %struct.Village* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.Patient*, %struct.Patient** %6, align 8
  %29 = getelementptr inbounds %struct.Patient, %struct.Patient* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %14
  %33 = load %struct.Village*, %struct.Village** %3, align 8
  %34 = getelementptr inbounds %struct.Village, %struct.Village* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call float @my_rand(i64 %36)
  store float %37, float* %5, align 4
  %38 = load float, float* %5, align 4
  %39 = fmul float %38, 0x41E0000000000000
  %40 = fptosi float %39 to i64
  %41 = load %struct.Village*, %struct.Village** %3, align 8
  %42 = getelementptr inbounds %struct.Village, %struct.Village* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.Village*, %struct.Village** %3, align 8
  %44 = getelementptr inbounds %struct.Village, %struct.Village* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load float, float* %5, align 4
  %47 = fpext float %46 to double
  %48 = fcmp ogt double %47, 1.000000e-01
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49, %32
  %53 = load %struct.Village*, %struct.Village** %3, align 8
  %54 = getelementptr inbounds %struct.Village, %struct.Village* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %54, i32 0, i32 4
  %56 = load %struct.Patient*, %struct.Patient** %6, align 8
  call void @removeList(%struct.List* %55, %struct.Patient* %56)
  %57 = load %struct.Village*, %struct.Village** %3, align 8
  %58 = getelementptr inbounds %struct.Village, %struct.Village* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %58, i32 0, i32 5
  %60 = load %struct.Patient*, %struct.Patient** %6, align 8
  call void @addList(%struct.List* %59, %struct.Patient* %60)
  %61 = load %struct.Patient*, %struct.Patient** %6, align 8
  %62 = getelementptr inbounds %struct.Patient, %struct.Patient* %61, i32 0, i32 2
  store i32 10, i32* %62, align 8
  %63 = load %struct.Patient*, %struct.Patient** %6, align 8
  %64 = getelementptr inbounds %struct.Patient, %struct.Patient* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 10
  %68 = load %struct.Patient*, %struct.Patient** %6, align 8
  %69 = getelementptr inbounds %struct.Patient, %struct.Patient* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %89

70:                                               ; preds = %49
  %71 = load %struct.Village*, %struct.Village** %3, align 8
  %72 = getelementptr inbounds %struct.Village, %struct.Village* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.Village*, %struct.Village** %3, align 8
  %78 = getelementptr inbounds %struct.Village, %struct.Village* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.Village*, %struct.Village** %3, align 8
  %81 = getelementptr inbounds %struct.Village, %struct.Village* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %81, i32 0, i32 4
  %83 = load %struct.Patient*, %struct.Patient** %6, align 8
  call void @removeList(%struct.List* %82, %struct.Patient* %83)
  %84 = load %struct.Village*, %struct.Village** %3, align 8
  %85 = getelementptr inbounds %struct.Village, %struct.Village* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %85, i32 0, i32 6
  store %struct.List* %86, %struct.List** %7, align 8
  %87 = load %struct.List*, %struct.List** %7, align 8
  %88 = load %struct.Patient*, %struct.Patient** %6, align 8
  call void @addList(%struct.List* %87, %struct.Patient* %88)
  br label %89

89:                                               ; preds = %70, %52
  br label %90

90:                                               ; preds = %89, %14
  %91 = load %struct.List*, %struct.List** %4, align 8
  %92 = getelementptr inbounds %struct.List, %struct.List* %91, i32 0, i32 0
  %93 = load %struct.List*, %struct.List** %92, align 8
  store %struct.List* %93, %struct.List** %4, align 8
  br label %11

94:                                               ; preds = %11
  %95 = load %struct.List*, %struct.List** %7, align 8
  ret %struct.List* %95
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_patients_waiting(%struct.Village* %0, %struct.List* %1) #0 {
  %3 = alloca %struct.Village*, align 8
  %4 = alloca %struct.List*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Patient*, align 8
  store %struct.Village* %0, %struct.Village** %3, align 8
  store %struct.List* %1, %struct.List** %4, align 8
  br label %8

8:                                                ; preds = %56, %2
  %9 = load %struct.List*, %struct.List** %4, align 8
  %10 = icmp ne %struct.List* %9, null
  br i1 %10, label %11, label %60

11:                                               ; preds = %8
  %12 = load %struct.Village*, %struct.Village** %3, align 8
  %13 = getelementptr inbounds %struct.Village, %struct.Village* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.List*, %struct.List** %4, align 8
  %17 = getelementptr inbounds %struct.List, %struct.List* %16, i32 0, i32 1
  %18 = load %struct.Patient*, %struct.Patient** %17, align 8
  store %struct.Patient* %18, %struct.Patient** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %11
  %22 = load %struct.Village*, %struct.Village** %3, align 8
  %23 = getelementptr inbounds %struct.Village, %struct.Village* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.Village*, %struct.Village** %3, align 8
  %29 = getelementptr inbounds %struct.Village, %struct.Village* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.Patient*, %struct.Patient** %7, align 8
  %32 = getelementptr inbounds %struct.Patient, %struct.Patient* %31, i32 0, i32 2
  store i32 3, i32* %32, align 8
  %33 = load %struct.Patient*, %struct.Patient** %7, align 8
  %34 = getelementptr inbounds %struct.Patient, %struct.Patient* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 3
  %38 = load %struct.Patient*, %struct.Patient** %7, align 8
  %39 = getelementptr inbounds %struct.Patient, %struct.Patient* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.Village*, %struct.Village** %3, align 8
  %41 = getelementptr inbounds %struct.Village, %struct.Village* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %41, i32 0, i32 3
  %43 = load %struct.Patient*, %struct.Patient** %7, align 8
  call void @removeList(%struct.List* %42, %struct.Patient* %43)
  %44 = load %struct.Village*, %struct.Village** %3, align 8
  %45 = getelementptr inbounds %struct.Village, %struct.Village* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %45, i32 0, i32 4
  %47 = load %struct.Patient*, %struct.Patient** %7, align 8
  call void @addList(%struct.List* %46, %struct.Patient* %47)
  br label %56

48:                                               ; preds = %11
  %49 = load %struct.Patient*, %struct.Patient** %7, align 8
  %50 = getelementptr inbounds %struct.Patient, %struct.Patient* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.Patient*, %struct.Patient** %7, align 8
  %55 = getelementptr inbounds %struct.Patient, %struct.Patient* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %21
  %57 = load %struct.List*, %struct.List** %4, align 8
  %58 = getelementptr inbounds %struct.List, %struct.List* %57, i32 0, i32 0
  %59 = load %struct.List*, %struct.List** %58, align 8
  store %struct.List* %59, %struct.List** %4, align 8
  br label %8

60:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @put_in_hosp(%struct.Hosp* %0, %struct.Patient* %1) #0 {
  %3 = alloca %struct.Hosp*, align 8
  %4 = alloca %struct.Patient*, align 8
  %5 = alloca i32, align 4
  store %struct.Hosp* %0, %struct.Hosp** %3, align 8
  store %struct.Patient* %1, %struct.Patient** %4, align 8
  %6 = load %struct.Patient*, %struct.Patient** %4, align 8
  %7 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  %11 = load %struct.Patient*, %struct.Patient** %4, align 8
  %12 = getelementptr inbounds %struct.Patient, %struct.Patient* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.Hosp*, %struct.Hosp** %3, align 8
  %14 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.Hosp*, %struct.Hosp** %3, align 8
  %19 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.Hosp*, %struct.Hosp** %3, align 8
  %24 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.Hosp*, %struct.Hosp** %3, align 8
  %26 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %25, i32 0, i32 4
  %27 = load %struct.Patient*, %struct.Patient** %4, align 8
  call void @addList(%struct.List* %26, %struct.Patient* %27)
  %28 = load %struct.Patient*, %struct.Patient** %4, align 8
  %29 = getelementptr inbounds %struct.Patient, %struct.Patient* %28, i32 0, i32 2
  store i32 3, i32* %29, align 8
  %30 = load %struct.Patient*, %struct.Patient** %4, align 8
  %31 = getelementptr inbounds %struct.Patient, %struct.Patient* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 3
  %35 = load %struct.Patient*, %struct.Patient** %4, align 8
  %36 = getelementptr inbounds %struct.Patient, %struct.Patient* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.Hosp*, %struct.Hosp** %3, align 8
  %39 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %38, i32 0, i32 3
  %40 = load %struct.Patient*, %struct.Patient** %4, align 8
  call void @addList(%struct.List* %39, %struct.Patient* %40)
  br label %41

41:                                               ; preds = %37, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Patient* @generate_patient(%struct.Village* %0) #0 {
  %2 = alloca %struct.Patient*, align 8
  %3 = alloca %struct.Village*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Patient*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.Village* %0, %struct.Village** %3, align 8
  %9 = load %struct.Village*, %struct.Village** %3, align 8
  %10 = getelementptr inbounds %struct.Village, %struct.Village* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call float @my_rand(i64 %12)
  store float %13, float* %7, align 4
  %14 = load float, float* %7, align 4
  %15 = fmul float %14, 0x41E0000000000000
  %16 = fptosi float %15 to i64
  %17 = load %struct.Village*, %struct.Village** %3, align 8
  %18 = getelementptr inbounds %struct.Village, %struct.Village* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  %19 = load %struct.Village*, %struct.Village** %3, align 8
  %20 = getelementptr inbounds %struct.Village, %struct.Village* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.Village*, %struct.Village** %3, align 8
  %23 = getelementptr inbounds %struct.Village, %struct.Village* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load float, float* %7, align 4
  %26 = fpext float %25 to double
  %27 = fcmp ogt double %26, 6.660000e-01
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = call noalias i8* @malloc(i64 24) #6
  %30 = bitcast i8* %29 to %struct.Patient*
  store %struct.Patient* %30, %struct.Patient** %6, align 8
  %31 = load %struct.Patient*, %struct.Patient** %6, align 8
  %32 = getelementptr inbounds %struct.Patient, %struct.Patient* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.Patient*, %struct.Patient** %6, align 8
  %34 = getelementptr inbounds %struct.Patient, %struct.Patient* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.Patient*, %struct.Patient** %6, align 8
  %36 = getelementptr inbounds %struct.Patient, %struct.Patient* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = load %struct.Village*, %struct.Village** %3, align 8
  %38 = load %struct.Patient*, %struct.Patient** %6, align 8
  %39 = getelementptr inbounds %struct.Patient, %struct.Patient* %38, i32 0, i32 3
  store %struct.Village* %37, %struct.Village** %39, align 8
  %40 = load %struct.Patient*, %struct.Patient** %6, align 8
  store %struct.Patient* %40, %struct.Patient** %2, align 8
  br label %42

41:                                               ; preds = %1
  store %struct.Patient* null, %struct.Patient** %2, align 8
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.Patient*, %struct.Patient** %2, align 8
  ret %struct.Patient* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Results, align 4
  %7 = alloca %struct.Village*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.Results, align 4
  %13 = alloca { <2 x float>, float }, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.Village* null, %struct.Village** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  call void @dealwithargs(i32 %14, i8** %15)
  %16 = load i32, i32* @max_level, align 4
  %17 = load %struct.Village*, %struct.Village** %7, align 8
  %18 = call %struct.Village* @alloc_tree(i32 %16, i32 0, %struct.Village* %17)
  store %struct.Village* %18, %struct.Village** %7, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %36, %2
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @max_time, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %27, 50
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.Village*, %struct.Village** %7, align 8
  %35 = call %struct.List* @sim(%struct.Village* %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %21

39:                                               ; preds = %21
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.Village*, %struct.Village** %7, align 8
  %42 = call { <2 x float>, float } @get_results(%struct.Village* %41)
  store { <2 x float>, float } %42, { <2 x float>, float }* %13, align 8
  %43 = bitcast { <2 x float>, float }* %13 to i8*
  %44 = bitcast %struct.Results* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %43, i64 12, i1 false)
  %45 = bitcast %struct.Results* %6 to i8*
  %46 = bitcast %struct.Results* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 12, i1 false)
  %47 = getelementptr inbounds %struct.Results, %struct.Results* %6, i32 0, i32 0
  %48 = load float, float* %47, align 4
  store float %48, float* %10, align 4
  %49 = getelementptr inbounds %struct.Results, %struct.Results* %6, i32 0, i32 1
  %50 = load float, float* %49, align 4
  store float %50, float* %9, align 4
  %51 = getelementptr inbounds %struct.Results, %struct.Results* %6, i32 0, i32 2
  %52 = load float, float* %51, align 4
  store float %52, float* %11, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %54 = load float, float* %10, align 4
  %55 = fpext float %54 to double
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), double %55)
  %57 = load float, float* %9, align 4
  %58 = load float, float* %10, align 4
  %59 = fdiv float %57, %58
  %60 = fpext float %59 to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), double %60)
  %62 = load float, float* %11, align 4
  %63 = load float, float* %10, align 4
  %64 = fdiv float %62, %63
  %65 = fpext float %64 to double
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7.8, i64 0, i64 0), double %65)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.List* @sim(%struct.Village* %0) #0 {
  %2 = alloca %struct.List*, align 8
  %3 = alloca %struct.Village*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Patient*, align 8
  %6 = alloca %struct.List*, align 8
  %7 = alloca %struct.List*, align 8
  %8 = alloca %struct.Hosp*, align 8
  %9 = alloca [4 x %struct.List*], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.Village*, align 8
  %12 = alloca %struct.List*, align 8
  %13 = alloca %struct.List*, align 8
  store %struct.Village* %0, %struct.Village** %3, align 8
  %14 = load %struct.Village*, %struct.Village** %3, align 8
  %15 = icmp eq %struct.Village* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.List* null, %struct.List** %2, align 8
  br label %115

17:                                               ; preds = %1
  %18 = load %struct.Village*, %struct.Village** %3, align 8
  %19 = getelementptr inbounds %struct.Village, %struct.Village* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  store i32 3, i32* %4, align 4
  br label %21

21:                                               ; preds = %37, %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.Village*, %struct.Village** %3, align 8
  %26 = getelementptr inbounds %struct.Village, %struct.Village* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %26, i64 0, i64 %28
  %30 = load %struct.Village*, %struct.Village** %29, align 8
  store %struct.Village* %30, %struct.Village** %11, align 8
  %31 = load %struct.Village*, %struct.Village** %11, align 8
  %32 = call %struct.List* @sim(%struct.Village* %31)
  store %struct.List* %32, %struct.List** %12, align 8
  %33 = load %struct.List*, %struct.List** %12, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %9, i64 0, i64 %35
  store %struct.List* %33, %struct.List** %36, align 8
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.Village*, %struct.Village** %3, align 8
  %42 = getelementptr inbounds %struct.Village, %struct.Village* %41, i32 0, i32 0
  %43 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %42, i64 0, i64 0
  %44 = load %struct.Village*, %struct.Village** %43, align 8
  %45 = call %struct.List* @sim(%struct.Village* %44)
  %46 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %9, i64 0, i64 0
  store %struct.List* %45, %struct.List** %46, align 16
  %47 = load %struct.Village*, %struct.Village** %3, align 8
  %48 = getelementptr inbounds %struct.Village, %struct.Village* %47, i32 0, i32 3
  store %struct.Hosp* %48, %struct.Hosp** %8, align 8
  store i32 3, i32* %4, align 4
  br label %49

49:                                               ; preds = %80, %40
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %9, i64 0, i64 %54
  %56 = load %struct.List*, %struct.List** %55, align 8
  store %struct.List* %56, %struct.List** %6, align 8
  store %struct.List* %56, %struct.List** %13, align 8
  %57 = load %struct.List*, %struct.List** %6, align 8
  %58 = icmp ne %struct.List* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %52
  %60 = load %struct.List*, %struct.List** %6, align 8
  %61 = getelementptr inbounds %struct.List, %struct.List* %60, i32 0, i32 0
  %62 = load %struct.List*, %struct.List** %61, align 8
  store %struct.List* %62, %struct.List** %6, align 8
  br label %63

63:                                               ; preds = %66, %59
  %64 = load %struct.List*, %struct.List** %6, align 8
  %65 = icmp ne %struct.List* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.Hosp*, %struct.Hosp** %8, align 8
  %68 = load %struct.List*, %struct.List** %6, align 8
  %69 = getelementptr inbounds %struct.List, %struct.List* %68, i32 0, i32 1
  %70 = load %struct.Patient*, %struct.Patient** %69, align 8
  call void @put_in_hosp(%struct.Hosp* %67, %struct.Patient* %70)
  %71 = load %struct.List*, %struct.List** %13, align 8
  %72 = load %struct.List*, %struct.List** %6, align 8
  %73 = getelementptr inbounds %struct.List, %struct.List* %72, i32 0, i32 1
  %74 = load %struct.Patient*, %struct.Patient** %73, align 8
  call void @removeList(%struct.List* %71, %struct.Patient* %74)
  %75 = load %struct.List*, %struct.List** %6, align 8
  %76 = getelementptr inbounds %struct.List, %struct.List* %75, i32 0, i32 0
  %77 = load %struct.List*, %struct.List** %76, align 8
  store %struct.List* %77, %struct.List** %6, align 8
  br label %63

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  br label %49

83:                                               ; preds = %49
  %84 = load %struct.Village*, %struct.Village** %3, align 8
  %85 = load %struct.Village*, %struct.Village** %3, align 8
  %86 = getelementptr inbounds %struct.Village, %struct.Village* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.List, %struct.List* %87, i32 0, i32 0
  %89 = load %struct.List*, %struct.List** %88, align 8
  call void @check_patients_inside(%struct.Village* %84, %struct.List* %89)
  %90 = load %struct.Village*, %struct.Village** %3, align 8
  %91 = load %struct.Village*, %struct.Village** %3, align 8
  %92 = getelementptr inbounds %struct.Village, %struct.Village* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.List, %struct.List* %93, i32 0, i32 0
  %95 = load %struct.List*, %struct.List** %94, align 8
  %96 = call %struct.List* @check_patients_assess(%struct.Village* %90, %struct.List* %95)
  store %struct.List* %96, %struct.List** %7, align 8
  %97 = load %struct.Village*, %struct.Village** %3, align 8
  %98 = load %struct.Village*, %struct.Village** %3, align 8
  %99 = getelementptr inbounds %struct.Village, %struct.Village* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.List, %struct.List* %100, i32 0, i32 0
  %102 = load %struct.List*, %struct.List** %101, align 8
  call void @check_patients_waiting(%struct.Village* %97, %struct.List* %102)
  %103 = load %struct.Village*, %struct.Village** %3, align 8
  %104 = call %struct.Patient* @generate_patient(%struct.Village* %103)
  store %struct.Patient* %104, %struct.Patient** %5, align 8
  %105 = icmp ne %struct.Patient* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %83
  %107 = load %struct.Village*, %struct.Village** %3, align 8
  %108 = getelementptr inbounds %struct.Village, %struct.Village* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %10, align 4
  %110 = load %struct.Village*, %struct.Village** %3, align 8
  %111 = getelementptr inbounds %struct.Village, %struct.Village* %110, i32 0, i32 3
  %112 = load %struct.Patient*, %struct.Patient** %5, align 8
  call void @put_in_hosp(%struct.Hosp* %111, %struct.Patient* %112)
  br label %113

113:                                              ; preds = %106, %83
  %114 = load %struct.List*, %struct.List** %7, align 8
  store %struct.List* %114, %struct.List** %2, align 8
  br label %115

115:                                              ; preds = %113, %16
  %116 = load %struct.List*, %struct.List** %2, align 8
  ret %struct.List* %116
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addList(%struct.List* %0, %struct.Patient* %1) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca %struct.Patient*, align 8
  %5 = alloca %struct.List*, align 8
  store %struct.List* %0, %struct.List** %3, align 8
  store %struct.Patient* %1, %struct.Patient** %4, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load %struct.List*, %struct.List** %3, align 8
  %8 = icmp ne %struct.List* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.List*, %struct.List** %3, align 8
  store %struct.List* %10, %struct.List** %5, align 8
  %11 = load %struct.List*, %struct.List** %3, align 8
  %12 = getelementptr inbounds %struct.List, %struct.List* %11, i32 0, i32 0
  %13 = load %struct.List*, %struct.List** %12, align 8
  store %struct.List* %13, %struct.List** %3, align 8
  br label %6

14:                                               ; preds = %6
  %15 = call noalias i8* @malloc(i64 24) #6
  %16 = bitcast i8* %15 to %struct.List*
  store %struct.List* %16, %struct.List** %3, align 8
  %17 = load %struct.Patient*, %struct.Patient** %4, align 8
  %18 = load %struct.List*, %struct.List** %3, align 8
  %19 = getelementptr inbounds %struct.List, %struct.List* %18, i32 0, i32 1
  store %struct.Patient* %17, %struct.Patient** %19, align 8
  %20 = load %struct.List*, %struct.List** %3, align 8
  %21 = getelementptr inbounds %struct.List, %struct.List* %20, i32 0, i32 0
  store %struct.List* null, %struct.List** %21, align 8
  %22 = load %struct.List*, %struct.List** %5, align 8
  %23 = load %struct.List*, %struct.List** %3, align 8
  %24 = getelementptr inbounds %struct.List, %struct.List* %23, i32 0, i32 2
  store %struct.List* %22, %struct.List** %24, align 8
  %25 = load %struct.List*, %struct.List** %3, align 8
  %26 = load %struct.List*, %struct.List** %5, align 8
  %27 = getelementptr inbounds %struct.List, %struct.List* %26, i32 0, i32 0
  store %struct.List* %25, %struct.List** %27, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @removeList(%struct.List* %0, %struct.Patient* %1) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca %struct.Patient*, align 8
  %5 = alloca %struct.List*, align 8
  %6 = alloca %struct.List*, align 8
  %7 = alloca %struct.Patient*, align 8
  store %struct.List* %0, %struct.List** %3, align 8
  store %struct.Patient* %1, %struct.Patient** %4, align 8
  %8 = load %struct.List*, %struct.List** %3, align 8
  %9 = getelementptr inbounds %struct.List, %struct.List* %8, i32 0, i32 1
  %10 = load %struct.Patient*, %struct.Patient** %9, align 8
  store %struct.Patient* %10, %struct.Patient** %7, align 8
  br label %11

11:                                               ; preds = %15, %2
  %12 = load %struct.Patient*, %struct.Patient** %7, align 8
  %13 = load %struct.Patient*, %struct.Patient** %4, align 8
  %14 = icmp ne %struct.Patient* %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.List*, %struct.List** %3, align 8
  %17 = getelementptr inbounds %struct.List, %struct.List* %16, i32 0, i32 0
  %18 = load %struct.List*, %struct.List** %17, align 8
  store %struct.List* %18, %struct.List** %3, align 8
  %19 = load %struct.List*, %struct.List** %3, align 8
  %20 = getelementptr inbounds %struct.List, %struct.List* %19, i32 0, i32 1
  %21 = load %struct.Patient*, %struct.Patient** %20, align 8
  store %struct.Patient* %21, %struct.Patient** %7, align 8
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.List*, %struct.List** %3, align 8
  %24 = getelementptr inbounds %struct.List, %struct.List* %23, i32 0, i32 2
  %25 = load %struct.List*, %struct.List** %24, align 8
  store %struct.List* %25, %struct.List** %5, align 8
  %26 = load %struct.List*, %struct.List** %3, align 8
  %27 = getelementptr inbounds %struct.List, %struct.List* %26, i32 0, i32 0
  %28 = load %struct.List*, %struct.List** %27, align 8
  store %struct.List* %28, %struct.List** %6, align 8
  %29 = load %struct.List*, %struct.List** %6, align 8
  %30 = load %struct.List*, %struct.List** %5, align 8
  %31 = getelementptr inbounds %struct.List, %struct.List* %30, i32 0, i32 0
  store %struct.List* %29, %struct.List** %31, align 8
  %32 = load %struct.List*, %struct.List** %3, align 8
  %33 = getelementptr inbounds %struct.List, %struct.List* %32, i32 0, i32 0
  %34 = load %struct.List*, %struct.List** %33, align 8
  %35 = icmp ne %struct.List* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %22
  %37 = load %struct.List*, %struct.List** %3, align 8
  %38 = getelementptr inbounds %struct.List, %struct.List* %37, i32 0, i32 0
  %39 = load %struct.List*, %struct.List** %38, align 8
  store %struct.List* %39, %struct.List** %5, align 8
  %40 = load %struct.List*, %struct.List** %3, align 8
  %41 = getelementptr inbounds %struct.List, %struct.List* %40, i32 0, i32 2
  %42 = load %struct.List*, %struct.List** %41, align 8
  store %struct.List* %42, %struct.List** %6, align 8
  %43 = load %struct.List*, %struct.List** %6, align 8
  %44 = load %struct.List*, %struct.List** %5, align 8
  %45 = getelementptr inbounds %struct.List, %struct.List* %44, i32 0, i32 2
  store %struct.List* %43, %struct.List** %45, align 8
  br label %46

46:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @my_rand(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca float, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = xor i64 %5, 123459876
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = sdiv i64 %7, 127773
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = mul nsw i64 %10, 127773
  %12 = sub nsw i64 %9, %11
  %13 = mul nsw i64 16807, %12
  %14 = load i64, i64* %3, align 8
  %15 = mul nsw i64 2836, %14
  %16 = sub nsw i64 %13, %15
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = xor i64 %17, 123459876
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i64, i64* %2, align 8
  %23 = add nsw i64 %22, 2147483647
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i64, i64* %2, align 8
  %26 = sitofp i64 %25 to double
  %27 = fmul double 0x3E00000000200000, %26
  %28 = fptrunc double %27 to float
  store float %28, float* %4, align 4
  %29 = load float, float* %4, align 4
  ret float %29
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
