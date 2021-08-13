; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree = type { i32, double, double, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree* }

@flag = common dso_local global i32 0, align 4
@NumNodes = common dso_local global i32 0, align 4
@NDim = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"x=%f,y=%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Building tree of size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Past build\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"newgraph\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"newcurve pts\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Call tsp(t, %d, %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"linetype solid\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mylog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 3
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* @flag, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* @flag, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* @NumNodes, align 4
  br label %23

22:                                               ; preds = %14
  store i32 4, i32* @NumNodes, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* @NumNodes, align 4
  %25 = call i32 @mylog(i32 %24)
  store i32 %25, i32* @NDim, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %23
  store i32 65535, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tree* @build_tree(i32 %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6, double %7) #0 {
  %9 = alloca %struct.tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.tree*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store %struct.tree* null, %struct.tree** %9, align 8
  br label %129

23:                                               ; preds = %8
  %24 = call noalias i8* @malloc(i64 56) #3
  %25 = bitcast i8* %24 to %struct.tree*
  store %struct.tree* %25, %struct.tree** %19, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load double, double* %14, align 8
  %34 = load double, double* %15, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call double @median(double %33, double %34, i32 %35)
  store double %36, double* %18, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sdiv i32 %37, 2
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %40, %42
  %44 = load i32, i32* %13, align 4
  %45 = sdiv i32 %44, 2
  %46 = load double, double* %14, align 8
  %47 = load double, double* %18, align 8
  %48 = load double, double* %16, align 8
  %49 = load double, double* %17, align 8
  %50 = call %struct.tree* @build_tree(i32 %38, i32 %39, i32 %43, i32 %45, double %46, double %47, double %48, double %49)
  %51 = load %struct.tree*, %struct.tree** %19, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 3
  store %struct.tree* %50, %struct.tree** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sdiv i32 %57, 2
  %59 = load double, double* %18, align 8
  %60 = load double, double* %15, align 8
  %61 = load double, double* %16, align 8
  %62 = load double, double* %17, align 8
  %63 = call %struct.tree* @build_tree(i32 %54, i32 %55, i32 %56, i32 %58, double %59, double %60, double %61, double %62)
  %64 = load %struct.tree*, %struct.tree** %19, align 8
  %65 = getelementptr inbounds %struct.tree, %struct.tree* %64, i32 0, i32 4
  store %struct.tree* %63, %struct.tree** %65, align 8
  %66 = load double, double* %18, align 8
  %67 = load %struct.tree*, %struct.tree** %19, align 8
  %68 = getelementptr inbounds %struct.tree, %struct.tree* %67, i32 0, i32 1
  store double %66, double* %68, align 8
  %69 = load double, double* %16, align 8
  %70 = load double, double* %17, align 8
  %71 = call double @uniform(double %69, double %70)
  %72 = load %struct.tree*, %struct.tree** %19, align 8
  %73 = getelementptr inbounds %struct.tree, %struct.tree* %72, i32 0, i32 2
  store double %71, double* %73, align 8
  br label %120

74:                                               ; preds = %23
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load double, double* %16, align 8
  %80 = load double, double* %17, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call double @median(double %79, double %80, i32 %81)
  store double %82, double* %18, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sdiv i32 %83, 2
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* %13, align 4
  %91 = sdiv i32 %90, 2
  %92 = load double, double* %14, align 8
  %93 = load double, double* %15, align 8
  %94 = load double, double* %16, align 8
  %95 = load double, double* %18, align 8
  %96 = call %struct.tree* @build_tree(i32 %84, i32 %85, i32 %89, i32 %91, double %92, double %93, double %94, double %95)
  %97 = load %struct.tree*, %struct.tree** %19, align 8
  %98 = getelementptr inbounds %struct.tree, %struct.tree* %97, i32 0, i32 3
  store %struct.tree* %96, %struct.tree** %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sdiv i32 %99, 2
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sdiv i32 %103, 2
  %105 = load double, double* %14, align 8
  %106 = load double, double* %15, align 8
  %107 = load double, double* %18, align 8
  %108 = load double, double* %17, align 8
  %109 = call %struct.tree* @build_tree(i32 %100, i32 %101, i32 %102, i32 %104, double %105, double %106, double %107, double %108)
  %110 = load %struct.tree*, %struct.tree** %19, align 8
  %111 = getelementptr inbounds %struct.tree, %struct.tree* %110, i32 0, i32 4
  store %struct.tree* %109, %struct.tree** %111, align 8
  %112 = load double, double* %18, align 8
  %113 = load %struct.tree*, %struct.tree** %19, align 8
  %114 = getelementptr inbounds %struct.tree, %struct.tree* %113, i32 0, i32 2
  store double %112, double* %114, align 8
  %115 = load double, double* %14, align 8
  %116 = load double, double* %15, align 8
  %117 = call double @uniform(double %115, double %116)
  %118 = load %struct.tree*, %struct.tree** %19, align 8
  %119 = getelementptr inbounds %struct.tree, %struct.tree* %118, i32 0, i32 1
  store double %117, double* %119, align 8
  br label %120

120:                                              ; preds = %74, %28
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.tree*, %struct.tree** %19, align 8
  %123 = getelementptr inbounds %struct.tree, %struct.tree* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.tree*, %struct.tree** %19, align 8
  %125 = getelementptr inbounds %struct.tree, %struct.tree* %124, i32 0, i32 5
  store %struct.tree* null, %struct.tree** %125, align 8
  %126 = load %struct.tree*, %struct.tree** %19, align 8
  %127 = getelementptr inbounds %struct.tree, %struct.tree* %126, i32 0, i32 6
  store %struct.tree* null, %struct.tree** %127, align 8
  %128 = load %struct.tree*, %struct.tree** %19, align 8
  store %struct.tree* %128, %struct.tree** %9, align 8
  br label %129

129:                                              ; preds = %120, %22
  %130 = load %struct.tree*, %struct.tree** %9, align 8
  ret %struct.tree* %130
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define internal double @median(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call double @drand48() #3
  store double %9, double* %7, align 8
  %10 = load double, double* %7, align 8
  %11 = fcmp ogt double %10, 5.000000e-01
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load double, double* %7, align 8
  %14 = fsub double %13, 5.000000e-01
  %15 = fmul double 0x4113DE0E54D37C9A, %14
  %16 = fdiv double %15, 0x4103DE1654D37C9A
  %17 = fsub double 1.000000e+00, %16
  %18 = call double @log(double %17) #3
  %19 = fdiv double %18, 1.200000e+01
  store double %19, double* %8, align 8
  br label %28

20:                                               ; preds = %3
  %21 = load double, double* %7, align 8
  %22 = fmul double 0x4113DE0E54D37C9A, %21
  %23 = fdiv double %22, 0x4103DE1654D37C9A
  %24 = fsub double 1.000000e+00, %23
  %25 = call double @log(double %24) #3
  %26 = fneg double %25
  %27 = fdiv double %26, 1.200000e+01
  store double %27, double* %8, align 8
  br label %28

28:                                               ; preds = %20, %12
  %29 = load double, double* %8, align 8
  %30 = fadd double %29, 1.000000e+00
  %31 = load double, double* %5, align 8
  %32 = load double, double* %4, align 8
  %33 = fsub double %31, %32
  %34 = fmul double %30, %33
  %35 = fdiv double %34, 2.000000e+00
  store double %35, double* %8, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* %4, align 8
  %38 = fadd double %36, %37
  store double %38, double* %8, align 8
  %39 = load double, double* %8, align 8
  ret double %39
}

; Function Attrs: noinline nounwind uwtable
define internal double @uniform(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %6 = call double @drand48() #3
  store double %6, double* %5, align 8
  %7 = load double, double* %5, align 8
  %8 = load double, double* %4, align 8
  %9 = load double, double* %3, align 8
  %10 = fsub double %8, %9
  %11 = fmul double %7, %10
  store double %11, double* %5, align 8
  %12 = load double, double* %5, align 8
  %13 = load double, double* %3, align 8
  %14 = fadd double %12, %13
  ret double %14
}

; Function Attrs: nounwind
declare dso_local double @drand48() #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_tree(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %7 = load %struct.tree*, %struct.tree** %2, align 8
  %8 = icmp ne %struct.tree* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.tree*, %struct.tree** %2, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  store double %13, double* %5, align 8
  %14 = load %struct.tree*, %struct.tree** %2, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 2
  %16 = load double, double* %15, align 8
  store double %16, double* %6, align 8
  %17 = load double, double* %5, align 8
  %18 = load double, double* %6, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %17, double %18)
  %20 = load %struct.tree*, %struct.tree** %2, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 3
  %22 = load %struct.tree*, %struct.tree** %21, align 8
  store %struct.tree* %22, %struct.tree** %3, align 8
  %23 = load %struct.tree*, %struct.tree** %2, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 4
  %25 = load %struct.tree*, %struct.tree** %24, align 8
  store %struct.tree* %25, %struct.tree** %4, align 8
  %26 = load %struct.tree*, %struct.tree** %3, align 8
  call void @print_tree(%struct.tree* %26)
  %27 = load %struct.tree*, %struct.tree** %4, align 8
  call void @print_tree(%struct.tree* %27)
  br label %28

28:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_list(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.tree*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %6 = load %struct.tree*, %struct.tree** %2, align 8
  %7 = icmp ne %struct.tree* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.tree*, %struct.tree** %2, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %4, align 8
  %13 = load %struct.tree*, %struct.tree** %2, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 2
  %15 = load double, double* %14, align 8
  store double %15, double* %5, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %16, double %17)
  %19 = load %struct.tree*, %struct.tree** %2, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 5
  %21 = load %struct.tree*, %struct.tree** %20, align 8
  store %struct.tree* %21, %struct.tree** %3, align 8
  br label %22

22:                                               ; preds = %36, %9
  %23 = load %struct.tree*, %struct.tree** %3, align 8
  %24 = load %struct.tree*, %struct.tree** %2, align 8
  %25 = icmp ne %struct.tree* %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.tree*, %struct.tree** %3, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  store double %29, double* %4, align 8
  %30 = load %struct.tree*, %struct.tree** %3, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 2
  %32 = load double, double* %31, align 8
  store double %32, double* %5, align 8
  %33 = load double, double* %4, align 8
  %34 = load double, double* %5, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %33, double %34)
  br label %36

36:                                               ; preds = %26
  %37 = load %struct.tree*, %struct.tree** %3, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 5
  %39 = load %struct.tree*, %struct.tree** %38, align 8
  store %struct.tree* %39, %struct.tree** %3, align 8
  br label %22

40:                                               ; preds = %22, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @dealwithargs(i32 %8, i8** %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NumNodes, align 4
  %15 = call %struct.tree* @build_tree(i32 %13, i32 0, i32 0, i32 %14, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  store %struct.tree* %15, %struct.tree** %6, align 8
  %16 = load i32, i32* @flag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* @flag, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @flag, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @NumNodes, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 150, i32 %31)
  %33 = load %struct.tree*, %struct.tree** %6, align 8
  %34 = load i32, i32* @NumNodes, align 4
  %35 = call %struct.tree* @tsp(%struct.tree* %33, i32 150, i32 %34)
  %36 = load i32, i32* @flag, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load %struct.tree*, %struct.tree** %6, align 8
  call void @print_list(%struct.tree* %39)
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i32, i32* @flag, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tree* @tsp(%struct.tree* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree*, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca %struct.tree*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %12, align 4
  %15 = load %struct.tree*, %struct.tree** %5, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.tree*, %struct.tree** %5, align 8
  %22 = call %struct.tree* @conquer(%struct.tree* %21)
  store %struct.tree* %22, %struct.tree** %4, align 8
  br label %43

23:                                               ; preds = %3
  %24 = load %struct.tree*, %struct.tree** %5, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 3
  %26 = load %struct.tree*, %struct.tree** %25, align 8
  store %struct.tree* %26, %struct.tree** %8, align 8
  %27 = load %struct.tree*, %struct.tree** %5, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 4
  %29 = load %struct.tree*, %struct.tree** %28, align 8
  store %struct.tree* %29, %struct.tree** %9, align 8
  %30 = load %struct.tree*, %struct.tree** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call %struct.tree* @tsp(%struct.tree* %30, i32 %31, i32 %32)
  store %struct.tree* %33, %struct.tree** %10, align 8
  %34 = load %struct.tree*, %struct.tree** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call %struct.tree* @tsp(%struct.tree* %34, i32 %35, i32 %36)
  store %struct.tree* %37, %struct.tree** %11, align 8
  %38 = load %struct.tree*, %struct.tree** %10, align 8
  %39 = load %struct.tree*, %struct.tree** %11, align 8
  %40 = load %struct.tree*, %struct.tree** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.tree* @merge(%struct.tree* %38, %struct.tree* %39, %struct.tree* %40, i32 %41)
  store %struct.tree* %42, %struct.tree** %4, align 8
  br label %43

43:                                               ; preds = %23, %20
  %44 = load %struct.tree*, %struct.tree** %4, align 8
  ret %struct.tree* %44
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.tree* @conquer(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca %struct.tree*, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  %16 = load %struct.tree*, %struct.tree** %3, align 8
  %17 = icmp ne %struct.tree* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.tree* null, %struct.tree** %2, align 8
  br label %122

19:                                               ; preds = %1
  %20 = load %struct.tree*, %struct.tree** %3, align 8
  %21 = call %struct.tree* @makelist(%struct.tree* %20)
  store %struct.tree* %21, %struct.tree** %3, align 8
  %22 = load %struct.tree*, %struct.tree** %3, align 8
  store %struct.tree* %22, %struct.tree** %4, align 8
  %23 = load %struct.tree*, %struct.tree** %3, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 5
  %25 = load %struct.tree*, %struct.tree** %24, align 8
  store %struct.tree* %25, %struct.tree** %3, align 8
  %26 = load %struct.tree*, %struct.tree** %4, align 8
  %27 = load %struct.tree*, %struct.tree** %4, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 5
  store %struct.tree* %26, %struct.tree** %28, align 8
  %29 = load %struct.tree*, %struct.tree** %4, align 8
  %30 = load %struct.tree*, %struct.tree** %4, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 6
  store %struct.tree* %29, %struct.tree** %31, align 8
  br label %32

32:                                               ; preds = %118, %19
  %33 = load %struct.tree*, %struct.tree** %3, align 8
  %34 = icmp ne %struct.tree* %33, null
  br i1 %34, label %35, label %120

35:                                               ; preds = %32
  %36 = load %struct.tree*, %struct.tree** %3, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 5
  %38 = load %struct.tree*, %struct.tree** %37, align 8
  store %struct.tree* %38, %struct.tree** %9, align 8
  %39 = load %struct.tree*, %struct.tree** %4, align 8
  store %struct.tree* %39, %struct.tree** %6, align 8
  %40 = load %struct.tree*, %struct.tree** %3, align 8
  %41 = load %struct.tree*, %struct.tree** %4, align 8
  %42 = call double @distance(%struct.tree* %40, %struct.tree* %41)
  store double %42, double* %10, align 8
  %43 = load %struct.tree*, %struct.tree** %4, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 5
  %45 = load %struct.tree*, %struct.tree** %44, align 8
  store %struct.tree* %45, %struct.tree** %5, align 8
  br label %46

46:                                               ; preds = %61, %35
  %47 = load %struct.tree*, %struct.tree** %5, align 8
  %48 = load %struct.tree*, %struct.tree** %4, align 8
  %49 = icmp ne %struct.tree* %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.tree*, %struct.tree** %5, align 8
  %52 = load %struct.tree*, %struct.tree** %3, align 8
  %53 = call double @distance(%struct.tree* %51, %struct.tree* %52)
  store double %53, double* %11, align 8
  %54 = load double, double* %11, align 8
  %55 = load double, double* %10, align 8
  %56 = fcmp olt double %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load double, double* %11, align 8
  store double %58, double* %10, align 8
  %59 = load %struct.tree*, %struct.tree** %5, align 8
  store %struct.tree* %59, %struct.tree** %6, align 8
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.tree*, %struct.tree** %5, align 8
  %63 = getelementptr inbounds %struct.tree, %struct.tree* %62, i32 0, i32 5
  %64 = load %struct.tree*, %struct.tree** %63, align 8
  store %struct.tree* %64, %struct.tree** %5, align 8
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.tree*, %struct.tree** %6, align 8
  %67 = getelementptr inbounds %struct.tree, %struct.tree* %66, i32 0, i32 5
  %68 = load %struct.tree*, %struct.tree** %67, align 8
  store %struct.tree* %68, %struct.tree** %8, align 8
  %69 = load %struct.tree*, %struct.tree** %6, align 8
  %70 = getelementptr inbounds %struct.tree, %struct.tree* %69, i32 0, i32 6
  %71 = load %struct.tree*, %struct.tree** %70, align 8
  store %struct.tree* %71, %struct.tree** %7, align 8
  %72 = load %struct.tree*, %struct.tree** %6, align 8
  %73 = load %struct.tree*, %struct.tree** %8, align 8
  %74 = call double @distance(%struct.tree* %72, %struct.tree* %73)
  store double %74, double* %12, align 8
  %75 = load %struct.tree*, %struct.tree** %6, align 8
  %76 = load %struct.tree*, %struct.tree** %7, align 8
  %77 = call double @distance(%struct.tree* %75, %struct.tree* %76)
  store double %77, double* %13, align 8
  %78 = load %struct.tree*, %struct.tree** %3, align 8
  %79 = load %struct.tree*, %struct.tree** %8, align 8
  %80 = call double @distance(%struct.tree* %78, %struct.tree* %79)
  store double %80, double* %14, align 8
  %81 = load %struct.tree*, %struct.tree** %3, align 8
  %82 = load %struct.tree*, %struct.tree** %7, align 8
  %83 = call double @distance(%struct.tree* %81, %struct.tree* %82)
  store double %83, double* %15, align 8
  %84 = load double, double* %15, align 8
  %85 = load double, double* %13, align 8
  %86 = fsub double %84, %85
  %87 = load double, double* %14, align 8
  %88 = load double, double* %12, align 8
  %89 = fsub double %87, %88
  %90 = fcmp olt double %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %65
  %92 = load %struct.tree*, %struct.tree** %3, align 8
  %93 = load %struct.tree*, %struct.tree** %7, align 8
  %94 = getelementptr inbounds %struct.tree, %struct.tree* %93, i32 0, i32 5
  store %struct.tree* %92, %struct.tree** %94, align 8
  %95 = load %struct.tree*, %struct.tree** %6, align 8
  %96 = load %struct.tree*, %struct.tree** %3, align 8
  %97 = getelementptr inbounds %struct.tree, %struct.tree* %96, i32 0, i32 5
  store %struct.tree* %95, %struct.tree** %97, align 8
  %98 = load %struct.tree*, %struct.tree** %7, align 8
  %99 = load %struct.tree*, %struct.tree** %3, align 8
  %100 = getelementptr inbounds %struct.tree, %struct.tree* %99, i32 0, i32 6
  store %struct.tree* %98, %struct.tree** %100, align 8
  %101 = load %struct.tree*, %struct.tree** %3, align 8
  %102 = load %struct.tree*, %struct.tree** %6, align 8
  %103 = getelementptr inbounds %struct.tree, %struct.tree* %102, i32 0, i32 6
  store %struct.tree* %101, %struct.tree** %103, align 8
  br label %117

104:                                              ; preds = %65
  %105 = load %struct.tree*, %struct.tree** %3, align 8
  %106 = load %struct.tree*, %struct.tree** %8, align 8
  %107 = getelementptr inbounds %struct.tree, %struct.tree* %106, i32 0, i32 6
  store %struct.tree* %105, %struct.tree** %107, align 8
  %108 = load %struct.tree*, %struct.tree** %8, align 8
  %109 = load %struct.tree*, %struct.tree** %3, align 8
  %110 = getelementptr inbounds %struct.tree, %struct.tree* %109, i32 0, i32 5
  store %struct.tree* %108, %struct.tree** %110, align 8
  %111 = load %struct.tree*, %struct.tree** %3, align 8
  %112 = load %struct.tree*, %struct.tree** %6, align 8
  %113 = getelementptr inbounds %struct.tree, %struct.tree* %112, i32 0, i32 5
  store %struct.tree* %111, %struct.tree** %113, align 8
  %114 = load %struct.tree*, %struct.tree** %6, align 8
  %115 = load %struct.tree*, %struct.tree** %3, align 8
  %116 = getelementptr inbounds %struct.tree, %struct.tree* %115, i32 0, i32 6
  store %struct.tree* %114, %struct.tree** %116, align 8
  br label %117

117:                                              ; preds = %104, %91
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.tree*, %struct.tree** %9, align 8
  store %struct.tree* %119, %struct.tree** %3, align 8
  br label %32

120:                                              ; preds = %32
  %121 = load %struct.tree*, %struct.tree** %4, align 8
  store %struct.tree* %121, %struct.tree** %2, align 8
  br label %122

122:                                              ; preds = %120, %18
  %123 = load %struct.tree*, %struct.tree** %2, align 8
  ret %struct.tree* %123
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.tree* @merge(%struct.tree* %0, %struct.tree* %1, %struct.tree* %2, i32 %3) #0 {
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tree*, align 8
  %10 = alloca %struct.tree*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca %struct.tree*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.tree*, align 8
  %20 = alloca %struct.tree*, align 8
  %21 = alloca %struct.tree*, align 8
  %22 = alloca %struct.tree*, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %5, align 8
  store %struct.tree* %1, %struct.tree** %6, align 8
  store %struct.tree* %2, %struct.tree** %7, align 8
  store i32 %3, i32* %8, align 4
  %32 = load %struct.tree*, %struct.tree** %5, align 8
  store %struct.tree* %32, %struct.tree** %9, align 8
  %33 = load %struct.tree*, %struct.tree** %7, align 8
  %34 = load %struct.tree*, %struct.tree** %5, align 8
  %35 = call double @distance(%struct.tree* %33, %struct.tree* %34)
  store double %35, double* %13, align 8
  %36 = load %struct.tree*, %struct.tree** %5, align 8
  store %struct.tree* %36, %struct.tree** %12, align 8
  %37 = load %struct.tree*, %struct.tree** %5, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 5
  %39 = load %struct.tree*, %struct.tree** %38, align 8
  store %struct.tree* %39, %struct.tree** %5, align 8
  br label %40

40:                                               ; preds = %55, %4
  %41 = load %struct.tree*, %struct.tree** %5, align 8
  %42 = load %struct.tree*, %struct.tree** %12, align 8
  %43 = icmp ne %struct.tree* %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.tree*, %struct.tree** %5, align 8
  %46 = load %struct.tree*, %struct.tree** %7, align 8
  %47 = call double @distance(%struct.tree* %45, %struct.tree* %46)
  store double %47, double* %14, align 8
  %48 = load double, double* %14, align 8
  %49 = load double, double* %13, align 8
  %50 = fcmp olt double %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load double, double* %14, align 8
  store double %52, double* %13, align 8
  %53 = load %struct.tree*, %struct.tree** %5, align 8
  store %struct.tree* %53, %struct.tree** %9, align 8
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.tree*, %struct.tree** %5, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 5
  %58 = load %struct.tree*, %struct.tree** %57, align 8
  store %struct.tree* %58, %struct.tree** %5, align 8
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.tree*, %struct.tree** %9, align 8
  %61 = getelementptr inbounds %struct.tree, %struct.tree* %60, i32 0, i32 5
  %62 = load %struct.tree*, %struct.tree** %61, align 8
  store %struct.tree* %62, %struct.tree** %10, align 8
  %63 = load %struct.tree*, %struct.tree** %9, align 8
  %64 = getelementptr inbounds %struct.tree, %struct.tree* %63, i32 0, i32 6
  %65 = load %struct.tree*, %struct.tree** %64, align 8
  store %struct.tree* %65, %struct.tree** %11, align 8
  %66 = load %struct.tree*, %struct.tree** %9, align 8
  %67 = load %struct.tree*, %struct.tree** %10, align 8
  %68 = call double @distance(%struct.tree* %66, %struct.tree* %67)
  store double %68, double* %15, align 8
  %69 = load %struct.tree*, %struct.tree** %9, align 8
  %70 = load %struct.tree*, %struct.tree** %11, align 8
  %71 = call double @distance(%struct.tree* %69, %struct.tree* %70)
  store double %71, double* %16, align 8
  %72 = load %struct.tree*, %struct.tree** %7, align 8
  %73 = load %struct.tree*, %struct.tree** %10, align 8
  %74 = call double @distance(%struct.tree* %72, %struct.tree* %73)
  store double %74, double* %17, align 8
  %75 = load %struct.tree*, %struct.tree** %7, align 8
  %76 = load %struct.tree*, %struct.tree** %11, align 8
  %77 = call double @distance(%struct.tree* %75, %struct.tree* %76)
  store double %77, double* %18, align 8
  %78 = load double, double* %18, align 8
  %79 = load double, double* %16, align 8
  %80 = fsub double %78, %79
  %81 = load double, double* %17, align 8
  %82 = load double, double* %15, align 8
  %83 = fsub double %81, %82
  %84 = fcmp olt double %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %59
  %86 = load %struct.tree*, %struct.tree** %11, align 8
  store %struct.tree* %86, %struct.tree** %20, align 8
  %87 = load %struct.tree*, %struct.tree** %9, align 8
  store %struct.tree* %87, %struct.tree** %19, align 8
  %88 = load double, double* %13, align 8
  store double %88, double* %23, align 8
  %89 = load double, double* %18, align 8
  store double %89, double* %24, align 8
  br label %95

90:                                               ; preds = %59
  %91 = load %struct.tree*, %struct.tree** %9, align 8
  store %struct.tree* %91, %struct.tree** %20, align 8
  %92 = load %struct.tree*, %struct.tree** %10, align 8
  store %struct.tree* %92, %struct.tree** %19, align 8
  %93 = load double, double* %13, align 8
  store double %93, double* %24, align 8
  %94 = load double, double* %17, align 8
  store double %94, double* %23, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.tree*, %struct.tree** %6, align 8
  store %struct.tree* %96, %struct.tree** %9, align 8
  %97 = load %struct.tree*, %struct.tree** %7, align 8
  %98 = load %struct.tree*, %struct.tree** %6, align 8
  %99 = call double @distance(%struct.tree* %97, %struct.tree* %98)
  store double %99, double* %13, align 8
  %100 = load %struct.tree*, %struct.tree** %6, align 8
  store %struct.tree* %100, %struct.tree** %12, align 8
  %101 = load %struct.tree*, %struct.tree** %6, align 8
  %102 = getelementptr inbounds %struct.tree, %struct.tree* %101, i32 0, i32 5
  %103 = load %struct.tree*, %struct.tree** %102, align 8
  store %struct.tree* %103, %struct.tree** %6, align 8
  br label %104

104:                                              ; preds = %119, %95
  %105 = load %struct.tree*, %struct.tree** %6, align 8
  %106 = load %struct.tree*, %struct.tree** %12, align 8
  %107 = icmp ne %struct.tree* %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load %struct.tree*, %struct.tree** %6, align 8
  %110 = load %struct.tree*, %struct.tree** %7, align 8
  %111 = call double @distance(%struct.tree* %109, %struct.tree* %110)
  store double %111, double* %14, align 8
  %112 = load double, double* %14, align 8
  %113 = load double, double* %13, align 8
  %114 = fcmp olt double %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load double, double* %14, align 8
  store double %116, double* %13, align 8
  %117 = load %struct.tree*, %struct.tree** %6, align 8
  store %struct.tree* %117, %struct.tree** %9, align 8
  br label %118

118:                                              ; preds = %115, %108
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.tree*, %struct.tree** %6, align 8
  %121 = getelementptr inbounds %struct.tree, %struct.tree* %120, i32 0, i32 5
  %122 = load %struct.tree*, %struct.tree** %121, align 8
  store %struct.tree* %122, %struct.tree** %6, align 8
  br label %104

123:                                              ; preds = %104
  %124 = load %struct.tree*, %struct.tree** %9, align 8
  %125 = getelementptr inbounds %struct.tree, %struct.tree* %124, i32 0, i32 5
  %126 = load %struct.tree*, %struct.tree** %125, align 8
  store %struct.tree* %126, %struct.tree** %10, align 8
  %127 = load %struct.tree*, %struct.tree** %9, align 8
  %128 = getelementptr inbounds %struct.tree, %struct.tree* %127, i32 0, i32 6
  %129 = load %struct.tree*, %struct.tree** %128, align 8
  store %struct.tree* %129, %struct.tree** %11, align 8
  %130 = load %struct.tree*, %struct.tree** %9, align 8
  %131 = load %struct.tree*, %struct.tree** %10, align 8
  %132 = call double @distance(%struct.tree* %130, %struct.tree* %131)
  store double %132, double* %15, align 8
  %133 = load %struct.tree*, %struct.tree** %9, align 8
  %134 = load %struct.tree*, %struct.tree** %11, align 8
  %135 = call double @distance(%struct.tree* %133, %struct.tree* %134)
  store double %135, double* %16, align 8
  %136 = load %struct.tree*, %struct.tree** %7, align 8
  %137 = load %struct.tree*, %struct.tree** %10, align 8
  %138 = call double @distance(%struct.tree* %136, %struct.tree* %137)
  store double %138, double* %17, align 8
  %139 = load %struct.tree*, %struct.tree** %7, align 8
  %140 = load %struct.tree*, %struct.tree** %11, align 8
  %141 = call double @distance(%struct.tree* %139, %struct.tree* %140)
  store double %141, double* %18, align 8
  %142 = load double, double* %18, align 8
  %143 = load double, double* %16, align 8
  %144 = fsub double %142, %143
  %145 = load double, double* %17, align 8
  %146 = load double, double* %15, align 8
  %147 = fsub double %145, %146
  %148 = fcmp olt double %144, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %123
  %150 = load %struct.tree*, %struct.tree** %11, align 8
  store %struct.tree* %150, %struct.tree** %22, align 8
  %151 = load %struct.tree*, %struct.tree** %9, align 8
  store %struct.tree* %151, %struct.tree** %21, align 8
  %152 = load double, double* %13, align 8
  store double %152, double* %25, align 8
  %153 = load double, double* %18, align 8
  store double %153, double* %26, align 8
  br label %159

154:                                              ; preds = %123
  %155 = load %struct.tree*, %struct.tree** %9, align 8
  store %struct.tree* %155, %struct.tree** %22, align 8
  %156 = load %struct.tree*, %struct.tree** %10, align 8
  store %struct.tree* %156, %struct.tree** %21, align 8
  %157 = load double, double* %13, align 8
  store double %157, double* %26, align 8
  %158 = load double, double* %17, align 8
  store double %158, double* %25, align 8
  br label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.tree*, %struct.tree** %19, align 8
  %161 = load %struct.tree*, %struct.tree** %21, align 8
  %162 = call double @distance(%struct.tree* %160, %struct.tree* %161)
  store double %162, double* %27, align 8
  %163 = load %struct.tree*, %struct.tree** %19, align 8
  %164 = load %struct.tree*, %struct.tree** %22, align 8
  %165 = call double @distance(%struct.tree* %163, %struct.tree* %164)
  store double %165, double* %28, align 8
  %166 = load %struct.tree*, %struct.tree** %20, align 8
  %167 = load %struct.tree*, %struct.tree** %21, align 8
  %168 = call double @distance(%struct.tree* %166, %struct.tree* %167)
  store double %168, double* %29, align 8
  %169 = load %struct.tree*, %struct.tree** %20, align 8
  %170 = load %struct.tree*, %struct.tree** %22, align 8
  %171 = call double @distance(%struct.tree* %169, %struct.tree* %170)
  store double %171, double* %30, align 8
  %172 = load double, double* %24, align 8
  %173 = load double, double* %26, align 8
  %174 = fadd double %172, %173
  %175 = load double, double* %27, align 8
  %176 = fadd double %174, %175
  store double %176, double* %13, align 8
  store i32 1, i32* %31, align 4
  %177 = load double, double* %24, align 8
  %178 = load double, double* %25, align 8
  %179 = fadd double %177, %178
  %180 = load double, double* %28, align 8
  %181 = fadd double %179, %180
  store double %181, double* %14, align 8
  %182 = load double, double* %14, align 8
  %183 = load double, double* %13, align 8
  %184 = fcmp olt double %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %159
  store i32 2, i32* %31, align 4
  %186 = load double, double* %14, align 8
  store double %186, double* %13, align 8
  br label %187

187:                                              ; preds = %185, %159
  %188 = load double, double* %23, align 8
  %189 = load double, double* %26, align 8
  %190 = fadd double %188, %189
  %191 = load double, double* %29, align 8
  %192 = fadd double %190, %191
  store double %192, double* %14, align 8
  %193 = load double, double* %14, align 8
  %194 = load double, double* %13, align 8
  %195 = fcmp olt double %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  store i32 3, i32* %31, align 4
  %197 = load double, double* %14, align 8
  store double %197, double* %13, align 8
  br label %198

198:                                              ; preds = %196, %187
  %199 = load double, double* %23, align 8
  %200 = load double, double* %25, align 8
  %201 = fadd double %199, %200
  %202 = load double, double* %30, align 8
  %203 = fadd double %201, %202
  store double %203, double* %14, align 8
  %204 = load double, double* %14, align 8
  %205 = load double, double* %13, align 8
  %206 = fcmp olt double %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  store i32 4, i32* %31, align 4
  br label %208

208:                                              ; preds = %207, %198
  %209 = load i32, i32* %31, align 4
  switch i32 %209, label %288 [
    i32 1, label %210
    i32 2, label %230
    i32 3, label %249
    i32 4, label %268
  ]

210:                                              ; preds = %208
  %211 = load %struct.tree*, %struct.tree** %21, align 8
  call void @reverse(%struct.tree* %211)
  %212 = load %struct.tree*, %struct.tree** %7, align 8
  %213 = load %struct.tree*, %struct.tree** %20, align 8
  %214 = getelementptr inbounds %struct.tree, %struct.tree* %213, i32 0, i32 5
  store %struct.tree* %212, %struct.tree** %214, align 8
  %215 = load %struct.tree*, %struct.tree** %20, align 8
  %216 = load %struct.tree*, %struct.tree** %7, align 8
  %217 = getelementptr inbounds %struct.tree, %struct.tree* %216, i32 0, i32 6
  store %struct.tree* %215, %struct.tree** %217, align 8
  %218 = load %struct.tree*, %struct.tree** %22, align 8
  %219 = load %struct.tree*, %struct.tree** %7, align 8
  %220 = getelementptr inbounds %struct.tree, %struct.tree* %219, i32 0, i32 5
  store %struct.tree* %218, %struct.tree** %220, align 8
  %221 = load %struct.tree*, %struct.tree** %7, align 8
  %222 = load %struct.tree*, %struct.tree** %22, align 8
  %223 = getelementptr inbounds %struct.tree, %struct.tree* %222, i32 0, i32 6
  store %struct.tree* %221, %struct.tree** %223, align 8
  %224 = load %struct.tree*, %struct.tree** %19, align 8
  %225 = load %struct.tree*, %struct.tree** %21, align 8
  %226 = getelementptr inbounds %struct.tree, %struct.tree* %225, i32 0, i32 5
  store %struct.tree* %224, %struct.tree** %226, align 8
  %227 = load %struct.tree*, %struct.tree** %21, align 8
  %228 = load %struct.tree*, %struct.tree** %19, align 8
  %229 = getelementptr inbounds %struct.tree, %struct.tree* %228, i32 0, i32 6
  store %struct.tree* %227, %struct.tree** %229, align 8
  br label %288

230:                                              ; preds = %208
  %231 = load %struct.tree*, %struct.tree** %7, align 8
  %232 = load %struct.tree*, %struct.tree** %20, align 8
  %233 = getelementptr inbounds %struct.tree, %struct.tree* %232, i32 0, i32 5
  store %struct.tree* %231, %struct.tree** %233, align 8
  %234 = load %struct.tree*, %struct.tree** %20, align 8
  %235 = load %struct.tree*, %struct.tree** %7, align 8
  %236 = getelementptr inbounds %struct.tree, %struct.tree* %235, i32 0, i32 6
  store %struct.tree* %234, %struct.tree** %236, align 8
  %237 = load %struct.tree*, %struct.tree** %21, align 8
  %238 = load %struct.tree*, %struct.tree** %7, align 8
  %239 = getelementptr inbounds %struct.tree, %struct.tree* %238, i32 0, i32 5
  store %struct.tree* %237, %struct.tree** %239, align 8
  %240 = load %struct.tree*, %struct.tree** %7, align 8
  %241 = load %struct.tree*, %struct.tree** %21, align 8
  %242 = getelementptr inbounds %struct.tree, %struct.tree* %241, i32 0, i32 6
  store %struct.tree* %240, %struct.tree** %242, align 8
  %243 = load %struct.tree*, %struct.tree** %19, align 8
  %244 = load %struct.tree*, %struct.tree** %22, align 8
  %245 = getelementptr inbounds %struct.tree, %struct.tree* %244, i32 0, i32 5
  store %struct.tree* %243, %struct.tree** %245, align 8
  %246 = load %struct.tree*, %struct.tree** %22, align 8
  %247 = load %struct.tree*, %struct.tree** %19, align 8
  %248 = getelementptr inbounds %struct.tree, %struct.tree* %247, i32 0, i32 6
  store %struct.tree* %246, %struct.tree** %248, align 8
  br label %288

249:                                              ; preds = %208
  %250 = load %struct.tree*, %struct.tree** %7, align 8
  %251 = load %struct.tree*, %struct.tree** %22, align 8
  %252 = getelementptr inbounds %struct.tree, %struct.tree* %251, i32 0, i32 5
  store %struct.tree* %250, %struct.tree** %252, align 8
  %253 = load %struct.tree*, %struct.tree** %22, align 8
  %254 = load %struct.tree*, %struct.tree** %7, align 8
  %255 = getelementptr inbounds %struct.tree, %struct.tree* %254, i32 0, i32 6
  store %struct.tree* %253, %struct.tree** %255, align 8
  %256 = load %struct.tree*, %struct.tree** %19, align 8
  %257 = load %struct.tree*, %struct.tree** %7, align 8
  %258 = getelementptr inbounds %struct.tree, %struct.tree* %257, i32 0, i32 5
  store %struct.tree* %256, %struct.tree** %258, align 8
  %259 = load %struct.tree*, %struct.tree** %7, align 8
  %260 = load %struct.tree*, %struct.tree** %19, align 8
  %261 = getelementptr inbounds %struct.tree, %struct.tree* %260, i32 0, i32 6
  store %struct.tree* %259, %struct.tree** %261, align 8
  %262 = load %struct.tree*, %struct.tree** %21, align 8
  %263 = load %struct.tree*, %struct.tree** %20, align 8
  %264 = getelementptr inbounds %struct.tree, %struct.tree* %263, i32 0, i32 5
  store %struct.tree* %262, %struct.tree** %264, align 8
  %265 = load %struct.tree*, %struct.tree** %20, align 8
  %266 = load %struct.tree*, %struct.tree** %21, align 8
  %267 = getelementptr inbounds %struct.tree, %struct.tree* %266, i32 0, i32 6
  store %struct.tree* %265, %struct.tree** %267, align 8
  br label %288

268:                                              ; preds = %208
  %269 = load %struct.tree*, %struct.tree** %19, align 8
  call void @reverse(%struct.tree* %269)
  %270 = load %struct.tree*, %struct.tree** %7, align 8
  %271 = load %struct.tree*, %struct.tree** %19, align 8
  %272 = getelementptr inbounds %struct.tree, %struct.tree* %271, i32 0, i32 5
  store %struct.tree* %270, %struct.tree** %272, align 8
  %273 = load %struct.tree*, %struct.tree** %19, align 8
  %274 = load %struct.tree*, %struct.tree** %7, align 8
  %275 = getelementptr inbounds %struct.tree, %struct.tree* %274, i32 0, i32 6
  store %struct.tree* %273, %struct.tree** %275, align 8
  %276 = load %struct.tree*, %struct.tree** %21, align 8
  %277 = load %struct.tree*, %struct.tree** %7, align 8
  %278 = getelementptr inbounds %struct.tree, %struct.tree* %277, i32 0, i32 5
  store %struct.tree* %276, %struct.tree** %278, align 8
  %279 = load %struct.tree*, %struct.tree** %7, align 8
  %280 = load %struct.tree*, %struct.tree** %21, align 8
  %281 = getelementptr inbounds %struct.tree, %struct.tree* %280, i32 0, i32 6
  store %struct.tree* %279, %struct.tree** %281, align 8
  %282 = load %struct.tree*, %struct.tree** %20, align 8
  %283 = load %struct.tree*, %struct.tree** %22, align 8
  %284 = getelementptr inbounds %struct.tree, %struct.tree* %283, i32 0, i32 5
  store %struct.tree* %282, %struct.tree** %284, align 8
  %285 = load %struct.tree*, %struct.tree** %22, align 8
  %286 = load %struct.tree*, %struct.tree** %20, align 8
  %287 = getelementptr inbounds %struct.tree, %struct.tree* %286, i32 0, i32 6
  store %struct.tree* %285, %struct.tree** %287, align 8
  br label %288

288:                                              ; preds = %268, %249, %230, %210, %208
  %289 = load %struct.tree*, %struct.tree** %7, align 8
  ret %struct.tree* %289
}

; Function Attrs: noinline nounwind uwtable
define internal double @distance(%struct.tree* %0, %struct.tree* %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store %struct.tree* %1, %struct.tree** %4, align 8
  %9 = load %struct.tree*, %struct.tree** %3, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 1
  %11 = load double, double* %10, align 8
  store double %11, double* %5, align 8
  %12 = load %struct.tree*, %struct.tree** %3, align 8
  %13 = getelementptr inbounds %struct.tree, %struct.tree* %12, i32 0, i32 2
  %14 = load double, double* %13, align 8
  store double %14, double* %6, align 8
  %15 = load %struct.tree*, %struct.tree** %4, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  store double %17, double* %7, align 8
  %18 = load %struct.tree*, %struct.tree** %4, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 2
  %20 = load double, double* %19, align 8
  store double %20, double* %8, align 8
  %21 = load double, double* %5, align 8
  %22 = load double, double* %7, align 8
  %23 = fsub double %21, %22
  %24 = load double, double* %5, align 8
  %25 = load double, double* %7, align 8
  %26 = fsub double %24, %25
  %27 = fmul double %23, %26
  %28 = load double, double* %6, align 8
  %29 = load double, double* %8, align 8
  %30 = fsub double %28, %29
  %31 = load double, double* %6, align 8
  %32 = load double, double* %8, align 8
  %33 = fsub double %31, %32
  %34 = fmul double %30, %33
  %35 = fadd double %27, %34
  %36 = call double @sqrt(double %35) #3
  ret double %36
}

; Function Attrs: noinline nounwind uwtable
define internal void @reverse(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %7 = load %struct.tree*, %struct.tree** %2, align 8
  %8 = icmp ne %struct.tree* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.tree*, %struct.tree** %2, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 6
  %13 = load %struct.tree*, %struct.tree** %12, align 8
  store %struct.tree* %13, %struct.tree** %3, align 8
  %14 = load %struct.tree*, %struct.tree** %3, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 5
  store %struct.tree* null, %struct.tree** %15, align 8
  %16 = load %struct.tree*, %struct.tree** %2, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 6
  store %struct.tree* null, %struct.tree** %17, align 8
  %18 = load %struct.tree*, %struct.tree** %2, align 8
  store %struct.tree* %18, %struct.tree** %4, align 8
  %19 = load %struct.tree*, %struct.tree** %2, align 8
  store %struct.tree* %19, %struct.tree** %6, align 8
  %20 = load %struct.tree*, %struct.tree** %2, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 5
  %22 = load %struct.tree*, %struct.tree** %21, align 8
  store %struct.tree* %22, %struct.tree** %2, align 8
  br label %23

23:                                               ; preds = %36, %10
  %24 = load %struct.tree*, %struct.tree** %2, align 8
  %25 = icmp ne %struct.tree* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.tree*, %struct.tree** %2, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 5
  %29 = load %struct.tree*, %struct.tree** %28, align 8
  store %struct.tree* %29, %struct.tree** %5, align 8
  %30 = load %struct.tree*, %struct.tree** %4, align 8
  %31 = load %struct.tree*, %struct.tree** %2, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 5
  store %struct.tree* %30, %struct.tree** %32, align 8
  %33 = load %struct.tree*, %struct.tree** %2, align 8
  %34 = load %struct.tree*, %struct.tree** %4, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 6
  store %struct.tree* %33, %struct.tree** %35, align 8
  br label %36

36:                                               ; preds = %26
  %37 = load %struct.tree*, %struct.tree** %2, align 8
  store %struct.tree* %37, %struct.tree** %4, align 8
  %38 = load %struct.tree*, %struct.tree** %5, align 8
  store %struct.tree* %38, %struct.tree** %2, align 8
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.tree*, %struct.tree** %3, align 8
  %41 = load %struct.tree*, %struct.tree** %6, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 5
  store %struct.tree* %40, %struct.tree** %42, align 8
  %43 = load %struct.tree*, %struct.tree** %6, align 8
  %44 = load %struct.tree*, %struct.tree** %3, align 8
  %45 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 6
  store %struct.tree* %43, %struct.tree** %45, align 8
  br label %46

46:                                               ; preds = %39, %9
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.tree* @makelist(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.tree*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  %9 = load %struct.tree*, %struct.tree** %3, align 8
  store %struct.tree* %9, %struct.tree** %8, align 8
  %10 = load %struct.tree*, %struct.tree** %3, align 8
  %11 = icmp ne %struct.tree* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.tree* null, %struct.tree** %2, align 8
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.tree*, %struct.tree** %3, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 3
  %16 = load %struct.tree*, %struct.tree** %15, align 8
  %17 = call %struct.tree* @makelist(%struct.tree* %16)
  store %struct.tree* %17, %struct.tree** %4, align 8
  %18 = load %struct.tree*, %struct.tree** %3, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 4
  %20 = load %struct.tree*, %struct.tree** %19, align 8
  %21 = call %struct.tree* @makelist(%struct.tree* %20)
  store %struct.tree* %21, %struct.tree** %5, align 8
  %22 = load %struct.tree*, %struct.tree** %5, align 8
  %23 = icmp ne %struct.tree* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load %struct.tree*, %struct.tree** %5, align 8
  store %struct.tree* %25, %struct.tree** %8, align 8
  %26 = load %struct.tree*, %struct.tree** %3, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 4
  %28 = load %struct.tree*, %struct.tree** %27, align 8
  store %struct.tree* %28, %struct.tree** %7, align 8
  %29 = load %struct.tree*, %struct.tree** %3, align 8
  %30 = load %struct.tree*, %struct.tree** %7, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 5
  store %struct.tree* %29, %struct.tree** %31, align 8
  br label %32

32:                                               ; preds = %24, %13
  %33 = load %struct.tree*, %struct.tree** %4, align 8
  %34 = icmp ne %struct.tree* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.tree*, %struct.tree** %4, align 8
  store %struct.tree* %36, %struct.tree** %8, align 8
  %37 = load %struct.tree*, %struct.tree** %3, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 3
  %39 = load %struct.tree*, %struct.tree** %38, align 8
  store %struct.tree* %39, %struct.tree** %6, align 8
  %40 = load %struct.tree*, %struct.tree** %5, align 8
  %41 = icmp ne %struct.tree* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load %struct.tree*, %struct.tree** %5, align 8
  br label %46

44:                                               ; preds = %35
  %45 = load %struct.tree*, %struct.tree** %3, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi %struct.tree* [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.tree*, %struct.tree** %6, align 8
  %49 = getelementptr inbounds %struct.tree, %struct.tree* %48, i32 0, i32 5
  store %struct.tree* %47, %struct.tree** %49, align 8
  br label %50

50:                                               ; preds = %46, %32
  %51 = load %struct.tree*, %struct.tree** %3, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 5
  store %struct.tree* null, %struct.tree** %52, align 8
  %53 = load %struct.tree*, %struct.tree** %8, align 8
  store %struct.tree* %53, %struct.tree** %2, align 8
  br label %54

54:                                               ; preds = %50, %12
  %55 = load %struct.tree*, %struct.tree** %2, align 8
  ret %struct.tree* %55
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
