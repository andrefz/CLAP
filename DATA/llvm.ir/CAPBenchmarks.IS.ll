; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.problem = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.darray = type { i32, i32, i32* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"darray_get() out of bounds\00", align 1
@verbose = dso_local global i32 0, align 4
@nthreads = dso_local global i32 1, align 4
@seed = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"initializing...\0A\00", align 1
@p = internal global %struct.problem* @tiny, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"sorting...\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"timing statistics:\0A\00", align 1
@tiny = internal global %struct.problem { i32 8388608, i32 1048576 }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"tiny\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@small = internal global %struct.problem { i32 16777216, i32 1048576 }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@standard = internal global %struct.problem { i32 33554432, i32 1048576 }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@large = internal global %struct.problem { i32 67108864, i32 1048576 }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@huge = internal global %struct.problem { i32 134217728, i32 1048576 }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.9.10 = private unnamed_addr constant [11 x i8] c"--nthreads\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"--class\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Usage: is [options]\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Brief: Integer Sort Benchmark Kernel\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"  --help             Display this information and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"  --class <name>     Set problem class:\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"                       - tiny\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"                       - small\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"                       - standard\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"                       - large\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"                       - huge\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"  --verbose          Be verbose\0A\00", align 1
@timer_error = internal global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1.23 = private unnamed_addr constant [13 x i8] c"warning: %s\0A\00", align 1
@.str.2.26 = private unnamed_addr constant [16 x i8] c"cannot malloc()\00", align 1
@.str.3.29 = private unnamed_addr constant [16 x i8] c"cannot calloc()\00", align 1
@.str.4.32 = private unnamed_addr constant [17 x i8] c"cannot realloc()\00", align 1
@randum_w = internal global i32 521288629, align 4
@randum_z = internal global i32 362436069, align 4
@normalnum.call = internal global i32 0, align 4
@normalnum.X2 = internal global double 0.000000e+00, align 8
@normalnum.X1 = internal global double 0.000000e+00, align 8
@prngseed = internal global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @integer_sort(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.darray**, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = call i8* @smalloc(i64 32768)
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = call i8* @smalloc(i64 65536)
  %16 = bitcast i8* %15 to %struct.darray**
  store %struct.darray** %16, %struct.darray*** %12, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 8192
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 8192
  %23 = call %struct.darray* @darray_create(i32 %22)
  %24 = load %struct.darray**, %struct.darray*** %12, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.darray*, %struct.darray** %24, i64 %26
  store %struct.darray* %23, %struct.darray** %27, align 8
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %17

31:                                               ; preds = %17
  store i32 -2147483648, i32* %5, align 4
  store i32 -2147483648, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %5, align 4
  %62 = sdiv i32 %61, 8192
  store i32 %62, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %89, %60
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sge i32 %75, 8192
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 8191, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %67
  %79 = load %struct.darray**, %struct.darray*** %12, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.darray*, %struct.darray** %79, i64 %81
  %83 = load %struct.darray*, %struct.darray** %82, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  call void @darray_append(%struct.darray* %83, i32 %88)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %63

92:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 8192
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load %struct.darray**, %struct.darray*** %12, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.darray*, %struct.darray** %97, i64 %99
  %101 = load %struct.darray*, %struct.darray** %100, align 8
  %102 = getelementptr inbounds %struct.darray, %struct.darray* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.darray**, %struct.darray*** %12, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.darray*, %struct.darray** %106, i64 %108
  %110 = load %struct.darray*, %struct.darray** %109, align 8
  call void @sort(%struct.darray* %110)
  br label %111

111:                                              ; preds = %105, %96
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 0, i32* %117, align 4
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %140, %115
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 8192
  br i1 %120, label %121, label %143

121:                                              ; preds = %118
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.darray**, %struct.darray*** %12, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.darray*, %struct.darray** %128, i64 %130
  %132 = load %struct.darray*, %struct.darray** %131, align 8
  %133 = getelementptr inbounds %struct.darray, %struct.darray* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %127, %134
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %121
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %118

143:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %181, %143
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 8192
  br i1 %146, label %147, label %184

147:                                              ; preds = %144
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %177, %147
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.darray**, %struct.darray*** %12, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.darray*, %struct.darray** %155, i64 %157
  %159 = load %struct.darray*, %struct.darray** %158, align 8
  %160 = getelementptr inbounds %struct.darray, %struct.darray* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %154, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %153
  %164 = load %struct.darray**, %struct.darray*** %12, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.darray*, %struct.darray** %164, i64 %166
  %168 = load %struct.darray*, %struct.darray** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @darray_get(%struct.darray* %168, i32 %169)
  %171 = load i32*, i32** %3, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %163
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %153

180:                                              ; preds = %153
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %144

184:                                              ; preds = %144
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %194, %184
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %186, 8192
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load %struct.darray**, %struct.darray*** %12, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.darray*, %struct.darray** %189, i64 %191
  %193 = load %struct.darray*, %struct.darray** %192, align 8
  call void @darray_destroy(%struct.darray* %193)
  br label %194

194:                                              ; preds = %188
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %185

197:                                              ; preds = %185
  %198 = load %struct.darray**, %struct.darray*** %12, align 8
  %199 = bitcast %struct.darray** %198 to i8*
  call void @free(i8* %199) #5
  %200 = load i32*, i32** %11, align 8
  %201 = bitcast i32* %200 to i8*
  call void @free(i8* %201) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.darray* @darray_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.darray*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @smalloc(i64 16)
  %5 = bitcast i8* %4 to %struct.darray*
  store %struct.darray* %5, %struct.darray** %3, align 8
  %6 = load %struct.darray*, %struct.darray** %3, align 8
  %7 = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.darray*, %struct.darray** %3, align 8
  %10 = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = call i8* @scalloc(i64 %12, i64 4)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.darray*, %struct.darray** %3, align 8
  %16 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.darray*, %struct.darray** %3, align 8
  ret %struct.darray* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @darray_destroy(%struct.darray* %0) #0 {
  %2 = alloca %struct.darray*, align 8
  store %struct.darray* %0, %struct.darray** %2, align 8
  %3 = load %struct.darray*, %struct.darray** %2, align 8
  %4 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #5
  %7 = load %struct.darray*, %struct.darray** %2, align 8
  %8 = bitcast %struct.darray* %7 to i8*
  call void @free(i8* %8) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @darray_append(%struct.darray* %0, i32 %1) #0 {
  %3 = alloca %struct.darray*, align 8
  %4 = alloca i32, align 4
  store %struct.darray* %0, %struct.darray** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.darray*, %struct.darray** %3, align 8
  %6 = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.darray*, %struct.darray** %3, align 8
  %9 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.darray*, %struct.darray** %3, align 8
  call void @darray_expand(%struct.darray* %13)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.darray*, %struct.darray** %3, align 8
  %17 = getelementptr inbounds %struct.darray, %struct.darray* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.darray*, %struct.darray** %3, align 8
  %20 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  store i32 %15, i32* %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @darray_expand(%struct.darray* %0) #0 {
  %2 = alloca %struct.darray*, align 8
  store %struct.darray* %0, %struct.darray** %2, align 8
  %3 = load %struct.darray*, %struct.darray** %2, align 8
  %4 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.darray*, %struct.darray** %2, align 8
  %8 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct.darray*, %struct.darray** %2, align 8
  %12 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = call i8* @srealloc(i8* %10, i64 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.darray*, %struct.darray** %2, align 8
  %19 = getelementptr inbounds %struct.darray, %struct.darray* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @darray_get(%struct.darray* %0, i32 %1) #0 {
  %3 = alloca %struct.darray*, align 8
  %4 = alloca i32, align 4
  store %struct.darray* %0, %struct.darray** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.darray*, %struct.darray** %3, align 8
  %7 = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %5, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  call void @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %10
  %15 = load %struct.darray*, %struct.darray** %3, align 8
  %16 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @darray_set(%struct.darray* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.darray*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.darray* %0, %struct.darray** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %13, %3
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.darray*, %struct.darray** %4, align 8
  %10 = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load %struct.darray*, %struct.darray** %4, align 8
  call void @darray_append(%struct.darray* %14, i32 0)
  br label %7

15:                                               ; preds = %7
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.darray*, %struct.darray** %4, align 8
  %18 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  call void @readargs(i32 %11, i8** %12)
  call void @timer_init()
  %13 = load i32, i32* @seed, align 4
  call void @srandnum(i32 %13)
  %14 = load i32, i32* @verbose, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = call i64 @timer_get()
  store i64 %19, i64* %10, align 8
  %20 = load %struct.problem*, %struct.problem** @p, align 8
  %21 = getelementptr inbounds %struct.problem, %struct.problem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call i8* @smalloc(i64 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %7, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %55, %18
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.problem*, %struct.problem** @p, align 8
  %30 = getelementptr inbounds %struct.problem, %struct.problem* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.problem*, %struct.problem** @p, align 8
  %35 = getelementptr inbounds %struct.problem, %struct.problem* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = sitofp i32 %37 to double
  %39 = call double @normalnum(double 0.000000e+00, double %38)
  store double %39, double* %8, align 8
  %40 = load double, double* %8, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load double, double* %8, align 8
  %44 = fneg double %43
  br label %47

45:                                               ; preds = %33
  %46 = load double, double* %8, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi double [ %44, %42 ], [ %46, %45 ]
  %49 = fptosi double %48 to i32
  %50 = add nsw i32 %49, 1
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %27

58:                                               ; preds = %27
  %59 = call i64 @timer_get()
  store i64 %59, i64* %9, align 8
  %60 = load i32, i32* @verbose, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = call i64 @timer_get()
  store i64 %65, i64* %10, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.problem*, %struct.problem** @p, align 8
  %68 = getelementptr inbounds %struct.problem, %struct.problem* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  call void @integer_sort(i32* %66, i32 %69)
  %70 = call i64 @timer_get()
  store i64 %70, i64* %9, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32*, i32** %7, align 8
  %73 = bitcast i32* %72 to i8*
  call void @free(i8* %73) #5
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @readargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %94, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %97

12:                                               ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %73 [
    i32 2, label %22
  ]

22:                                               ; preds = %20
  %23 = load i8**, i8*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store %struct.problem* @tiny, %struct.problem** @p, align 8
  br label %72

31:                                               ; preds = %22
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #6
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store %struct.problem* @small, %struct.problem** @p, align 8
  br label %71

40:                                               ; preds = %31
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #6
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store %struct.problem* @standard, %struct.problem** @p, align 8
  br label %70

49:                                               ; preds = %40
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #6
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store %struct.problem* @large, %struct.problem** @p, align 8
  br label %69

58:                                               ; preds = %49
  %59 = load i8**, i8*** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #6
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store %struct.problem* @huge, %struct.problem** @p, align 8
  br label %68

67:                                               ; preds = %58
  call void @usage()
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %30
  store i32 0, i32* %7, align 4
  br label %74

73:                                               ; preds = %20
  call void @usage()
  br label %74

74:                                               ; preds = %73, %72
  br label %94

75:                                               ; preds = %12
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #6
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, i32* @verbose, align 4
  br label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9.10, i64 0, i64 0)) #6
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #6
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 2, i32* %7, align 4
  br label %91

90:                                               ; preds = %85
  call void @usage()
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %8

97:                                               ; preds = %8
  %98 = load i32, i32* @nthreads, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @usage()
  br label %101

101:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  call void @exit(i32 0) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort(%struct.darray* %0) #0 {
  %2 = alloca %struct.darray*, align 8
  store %struct.darray* %0, %struct.darray** %2, align 8
  %3 = load %struct.darray*, %struct.darray** %2, align 8
  %4 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.darray*, %struct.darray** %2, align 8
  %7 = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  call void @quicksort(i32* %5, i32 0, i32 %9)
  %10 = load %struct.darray*, %struct.darray** %2, align 8
  %11 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.darray*, %struct.darray** %2, align 8
  %14 = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  call void @insertion(i32* %12, i32 0, i32 %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @quicksort(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %9, %10
  %12 = icmp sle i32 %11, 64
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %158

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = ashr i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = ashr i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %14
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %54, %14
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %76
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %88, %76
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %113, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %108
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %121, %108
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %147, 1
  %149 = call i32 @partition(i32* %144, i32 %146, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %152, 1
  call void @quicksort(i32* %150, i32 %151, i32 %153)
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* %6, align 4
  call void @quicksort(i32* %154, i32 %156, i32 %157)
  br label %158

158:                                              ; preds = %143, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @insertion(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %52, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %21, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %16
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %29, %16
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  br label %12

55:                                               ; preds = %12
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %97, %55
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %78, %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %70, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  br label %69

91:                                               ; preds = %69
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %58

100:                                              ; preds = %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @partition(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %51, %3
  br label %20

20:                                               ; preds = %29, %19
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %46

45:                                               ; preds = %40
  br label %31

46:                                               ; preds = %44, %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %71

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %19

71:                                               ; preds = %50
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_get() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %2, %struct.problem* null) #5
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 1000000, %5
  store i64 %6, i64* %1, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %1, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.problem*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_diff(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub i64 %5, %6
  %8 = load i64, i64* @timer_error, align 8
  %9 = sub i64 %7, %8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @timer_get()
  store i64 %3, i64* %1, align 8
  %4 = call i64 @timer_get()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* %1, align 8
  %7 = sub i64 %5, %6
  store i64 %7, i64* @timer_error, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* %4)
  call void @exit(i32 1) #7
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @warning(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.23, i64 0, i64 0), i8* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @smalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #5
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.26, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i8*, i8** %3, align 8
  ret i8* %10
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @scalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #5
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.29, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i8*, i8** %5, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @srealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #5
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.32, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @srandnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul nsw i32 %5, 104623
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 521288629, %11 ]
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 %14, 48947
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 362436069, %20 ]
  store i32 %22, i32* @randum_z, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randnum() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @randum_z, align 4
  %3 = and i32 %2, 65535
  %4 = mul i32 36969, %3
  %5 = load i32, i32* @randum_z, align 4
  %6 = lshr i32 %5, 16
  %7 = add i32 %4, %6
  store i32 %7, i32* @randum_z, align 4
  %8 = load i32, i32* @randum_w, align 4
  %9 = and i32 %8, 65535
  %10 = mul i32 18000, %9
  %11 = load i32, i32* @randum_w, align 4
  %12 = lshr i32 %11, 16
  %13 = add i32 %10, %12
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* @randum_z, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* @randum_w, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @normalnum(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %10 = load i32, i32* @normalnum.call, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @normalnum.call, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* @normalnum.call, align 4
  %17 = load double, double* %4, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* @normalnum.X2, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %17, %20
  store double %21, double* %3, align 8
  br label %69

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %45, %22
  %24 = call i32 @randnum()
  %25 = uitofp i32 %24 to double
  %26 = fdiv double %25, 0x41DFFFFFFFC00000
  %27 = fmul double %26, 2.000000e+00
  %28 = fadd double -1.000000e+00, %27
  store double %28, double* %6, align 8
  %29 = call i32 @randnum()
  %30 = uitofp i32 %29 to double
  %31 = fdiv double %30, 0x41DFFFFFFFC00000
  %32 = fmul double %31, 2.000000e+00
  %33 = fadd double -1.000000e+00, %32
  store double %33, double* %7, align 8
  %34 = load double, double* %6, align 8
  %35 = call double @pow(double %34, double 2.000000e+00) #5
  %36 = load double, double* %7, align 8
  %37 = call double @pow(double %36, double 2.000000e+00) #5
  %38 = fadd double %35, %37
  store double %38, double* %8, align 8
  br label %39

39:                                               ; preds = %23
  %40 = load double, double* %8, align 8
  %41 = fcmp oge double %40, 1.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load double, double* %8, align 8
  %44 = fcmp oeq double %43, 0.000000e+00
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  br i1 %46, label %23, label %47

47:                                               ; preds = %45
  %48 = load double, double* %8, align 8
  %49 = call double @log(double %48) #5
  %50 = fmul double -2.000000e+00, %49
  %51 = load double, double* %8, align 8
  %52 = fdiv double %50, %51
  %53 = call double @sqrt(double %52) #5
  store double %53, double* %9, align 8
  %54 = load double, double* %6, align 8
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  store double %56, double* @normalnum.X1, align 8
  %57 = load double, double* %7, align 8
  %58 = load double, double* %9, align 8
  %59 = fmul double %57, %58
  store double %59, double* @normalnum.X2, align 8
  %60 = load i32, i32* @normalnum.call, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* @normalnum.call, align 4
  %64 = load double, double* %4, align 8
  %65 = load double, double* %5, align 8
  %66 = load double, double* @normalnum.X1, align 8
  %67 = fmul double %65, %66
  %68 = fadd double %64, %67
  store double %68, double* %3, align 8
  br label %69

69:                                               ; preds = %47, %12
  %70 = load double, double* %3, align 8
  ret double %70
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @prngnum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 44488, i64* %1, align 8
  store i64 3399, i64* %2, align 8
  %4 = load i64, i64* @prngseed, align 8
  %5 = srem i64 %4, 44488
  %6 = mul nsw i64 48271, %5
  %7 = load i64, i64* @prngseed, align 8
  %8 = sdiv i64 %7, 44488
  %9 = mul nsw i64 3399, %8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* @prngseed, align 8
  br label %18

15:                                               ; preds = %0
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 2147483647
  store i64 %17, i64* @prngseed, align 8
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i64, i64* @prngseed, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 0x41DFFFFFFFC00000
  ret double %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prng_set_seed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  store i64 %4, i64* @prngseed, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
