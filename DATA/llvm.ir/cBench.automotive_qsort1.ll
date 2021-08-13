; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.my3DVertexStruct = type { i32, i32, i32, double }

@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Usage: qsort_large <file> <output>\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3.7 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4.8 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\0AError: Can't open output file\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %6, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %8)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %18 = call i32 @fclose(%struct._IO_FILE* %17)
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %32, %14
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @main1(i32 %24, i8** %25, i32 %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %19

35:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.my3DVertexStruct*
  %9 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %8, i32 0, i32 3
  %10 = load double, double* %9, align 8
  store double %10, double* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.my3DVertexStruct*
  %13 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %12, i32 0, i32 3
  %14 = load double, double* %13, align 8
  store double %14, double* %6, align 8
  %15 = load double, double* %5, align 8
  %16 = load double, double* %6, align 8
  %17 = fcmp ogt double %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %25

19:                                               ; preds = %2
  %20 = load double, double* %5, align 8
  %21 = load double, double* %6, align 8
  %22 = fcmp oeq double %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  br label %25

25:                                               ; preds = %19, %18
  %26 = phi i32 [ 1, %18 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main1(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

20:                                               ; preds = %3
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %9, align 8
  br label %25

25:                                               ; preds = %42, %20
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.6, i64 0, i64 0), i32* %12)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.6, i64 0, i64 0), i32* %13)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.6, i64 0, i64 0), i32* %14)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 60000
  br label %40

40:                                               ; preds = %37, %33, %29, %25
  %41 = phi i1 [ false, %33 ], [ false, %29 ], [ false, %25 ], [ %39, %37 ]
  br i1 %41, label %42, label %76

42:                                               ; preds = %40
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sitofp i32 %58 to double
  %60 = call double @pow(double %59, double 2.000000e+00) #5
  %61 = load i32, i32* %13, align 4
  %62 = sitofp i32 %61 to double
  %63 = call double @pow(double %62, double 2.000000e+00) #5
  %64 = fadd double %60, %63
  %65 = load i32, i32* %14, align 4
  %66 = sitofp i32 %65 to double
  %67 = call double @pow(double %66, double 2.000000e+00) #5
  %68 = fadd double %64, %67
  %69 = call double @sqrt(double %68) #5
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %72, i32 0, i32 3
  store double %69, double* %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %25

76:                                               ; preds = %40
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %78 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3.7, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 0
  %87 = bitcast %struct.my3DVertexStruct* %86 to i8*
  %88 = load i32, i32* %11, align 4
  call void @qsortx(i8* %87, i32 %88, i32 24, i32 (i8*, i8*)* @compare)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %131

91:                                               ; preds = %85
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = call %struct._IO_FILE* @fopen(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.8, i64 0, i64 0))
  store %struct._IO_FILE* %95, %struct._IO_FILE** %7, align 8
  %96 = icmp eq %struct._IO_FILE* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

100:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %123, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %8, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %116, i32 %121)
  br label %123

123:                                              ; preds = %105
  %124 = load i32, i32* %11, align 4
  %125 = sdiv i32 %124, 100
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %101

128:                                              ; preds = %101
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %130 = call i32 @fclose(%struct._IO_FILE* %129)
  br label %131

131:                                              ; preds = %128, %85
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @qsortx(i8* %0, i32 %1, i32 %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [30 x i8*], align 16
  %16 = alloca [30 x i8*], align 16
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  br label %203

24:                                               ; preds = %20
  store i32 0, i32* %17, align 4
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub i32 %28, 1
  %30 = mul i32 %27, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %193, %180, %155, %24
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = sdiv i64 %38, %40
  %42 = add nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ule i32 %44, 8
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  call void @shortsort(i8* %47, i8* %48, i32 %49, i32 (i8*, i8*)* %50)
  br label %188

51:                                               ; preds = %33
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %14, align 4
  %54 = udiv i32 %53, 2
  %55 = load i32, i32* %7, align 4
  %56 = mul i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %7, align 4
  call void @swap(i8* %59, i8* %60, i32 %61)
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8* %66, i8** %13, align 8
  br label %67

67:                                               ; preds = %109, %51
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %12, align 8
  br label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ule i8* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 %78(i8* %79, i8* %80)
  %82 = icmp sle i32 %81, 0
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i1 [ false, %73 ], [ %82, %77 ]
  br i1 %84, label %68, label %85

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %102, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = zext i32 %87 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %91, i8** %13, align 8
  br label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ugt i8* %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 %97(i8* %98, i8* %99)
  %101 = icmp sge i32 %100, 0
  br label %102

102:                                              ; preds = %96, %92
  %103 = phi i1 [ false, %92 ], [ %101, %96 ]
  br i1 %103, label %86, label %104

104:                                              ; preds = %102
  %105 = load i8*, i8** %13, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ult i8* %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %113

109:                                              ; preds = %104
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %7, align 4
  call void @swap(i8* %110, i8* %111, i32 %112)
  br label %67

113:                                              ; preds = %108
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %7, align 4
  call void @swap(i8* %114, i8* %115, i32 %116)
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 -1
  %119 = load i8*, i8** %9, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = icmp sge i64 %122, %127
  br i1 %128, label %129, label %158

129:                                              ; preds = %113
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8*, i8** %13, align 8
  %135 = icmp ult i8* %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %129
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [30 x i8*], [30 x i8*]* %15, i64 0, i64 %139
  store i8* %137, i8** %140, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* %7, align 4
  %143 = zext i32 %142 to i64
  %144 = sub i64 0, %143
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [30 x i8*], [30 x i8*]* %16, i64 0, i64 %147
  store i8* %145, i8** %148, align 8
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %136, %129
  %152 = load i8*, i8** %12, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = icmp ult i8* %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i8*, i8** %12, align 8
  store i8* %156, i8** %9, align 8
  br label %33

157:                                              ; preds = %151
  br label %187

158:                                              ; preds = %113
  %159 = load i8*, i8** %12, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ult i8* %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [30 x i8*], [30 x i8*]* %15, i64 0, i64 %165
  store i8* %163, i8** %166, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [30 x i8*], [30 x i8*]* %16, i64 0, i64 %169
  store i8* %167, i8** %170, align 8
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %162, %158
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* %7, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8*, i8** %13, align 8
  %179 = icmp ult i8* %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load i8*, i8** %13, align 8
  %182 = load i32, i32* %7, align 4
  %183 = zext i32 %182 to i64
  %184 = sub i64 0, %183
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  store i8* %185, i8** %10, align 8
  br label %33

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186, %157
  br label %188

188:                                              ; preds = %187, %46
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [30 x i8*], [30 x i8*]* %15, i64 0, i64 %195
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %9, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [30 x i8*], [30 x i8*]* %16, i64 0, i64 %199
  %201 = load i8*, i8** %200, align 8
  store i8* %201, i8** %10, align 8
  br label %33

202:                                              ; preds = %188
  br label %203

203:                                              ; preds = %202, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @shortsort(i8* %0, i8* %1, i32 %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  br label %11

11:                                               ; preds = %39, %4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %34, %15
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ule i8* %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 %26(i8* %27, i8* %28)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %31, %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %9, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  call void @swap(i8* %40, i8* %41, i32 %42)
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = zext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %6, align 8
  br label %11

48:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @swap(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %16, %11
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  %23 = load i8, i8* %7, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  store i8 %23, i8* %24, align 1
  br label %12

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
