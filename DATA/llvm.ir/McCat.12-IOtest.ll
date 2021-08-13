; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.global_result = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [33 x i8] c"A %d min %d max %d add %d mult \0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"B %d min %d max %d add %d mult \0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"C %d min %d max %d add %d mult \0A\00", align 1
@array_count = common dso_local global i64 0, align 8
@testarray = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @initA(%struct.global_result* %0) #0 {
  %2 = alloca %struct.global_result*, align 8
  store %struct.global_result* %0, %struct.global_result** %2, align 8
  call void @setac(i64 0)
  %3 = load %struct.global_result*, %struct.global_result** %2, align 8
  %4 = getelementptr inbounds %struct.global_result, %struct.global_result* %3, i32 0, i32 0
  store i8 -1, i8* %4, align 1
  %5 = load %struct.global_result*, %struct.global_result** %2, align 8
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %5, i32 0, i32 1
  store i8 0, i8* %6, align 1
  %7 = load %struct.global_result*, %struct.global_result** %2, align 8
  %8 = getelementptr inbounds %struct.global_result, %struct.global_result* %7, i32 0, i32 2
  store i8 0, i8* %8, align 1
  %9 = load %struct.global_result*, %struct.global_result** %2, align 8
  %10 = getelementptr inbounds %struct.global_result, %struct.global_result* %9, i32 0, i32 3
  store i8 1, i8* %10, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stepA(%struct.global_result* %0) #0 {
  %2 = alloca %struct.global_result*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store %struct.global_result* %0, %struct.global_result** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load %struct.global_result*, %struct.global_result** %2, align 8
  %8 = getelementptr inbounds %struct.global_result, %struct.global_result* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = load i8, i8* %3, align 1
  %11 = call signext i8 @min(i8 signext %9, i8 signext %10)
  %12 = load %struct.global_result*, %struct.global_result** %2, align 8
  %13 = getelementptr inbounds %struct.global_result, %struct.global_result* %12, i32 0, i32 0
  store i8 %11, i8* %13, align 1
  %14 = load %struct.global_result*, %struct.global_result** %2, align 8
  %15 = getelementptr inbounds %struct.global_result, %struct.global_result* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = load i8, i8* %3, align 1
  %18 = call signext i8 @max(i8 signext %16, i8 signext %17)
  %19 = load %struct.global_result*, %struct.global_result** %2, align 8
  %20 = getelementptr inbounds %struct.global_result, %struct.global_result* %19, i32 0, i32 1
  store i8 %18, i8* %20, align 1
  %21 = load %struct.global_result*, %struct.global_result** %2, align 8
  %22 = getelementptr inbounds %struct.global_result, %struct.global_result* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = load i8, i8* %3, align 1
  %25 = call signext i8 @add(i8 signext %23, i8 signext %24)
  %26 = load %struct.global_result*, %struct.global_result** %2, align 8
  %27 = getelementptr inbounds %struct.global_result, %struct.global_result* %26, i32 0, i32 2
  store i8 %25, i8* %27, align 1
  %28 = load %struct.global_result*, %struct.global_result** %2, align 8
  %29 = getelementptr inbounds %struct.global_result, %struct.global_result* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 1
  %31 = load i8, i8* %3, align 1
  %32 = call signext i8 @mult(i8 signext %30, i8 signext %31)
  %33 = load %struct.global_result*, %struct.global_result** %2, align 8
  %34 = getelementptr inbounds %struct.global_result, %struct.global_result* %33, i32 0, i32 3
  store i8 %32, i8* %34, align 1
  %35 = call i64 @getac()
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  call void @setac(i64 %38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testA() #0 {
  %1 = alloca %struct.global_result, align 1
  call void @initarray()
  %2 = bitcast %struct.global_result* %1 to i8*
  call void @loop(void (i8*)* bitcast (void (%struct.global_result*)* @initA to void (i8*)*), void (i8*)* bitcast (void (%struct.global_result*)* @stepA to void (i8*)*), i8* %2)
  %3 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initminB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 -1, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initmaxB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 0, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initaddB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 0, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initmultB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 1, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stepminB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @min(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stepmaxB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @max(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stepaddB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @add(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stepmultB(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @mult(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testB() #0 {
  %1 = alloca %struct.global_result, align 1
  call void @initarray()
  %2 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  call void @loop(void (i8*)* @initminB, void (i8*)* @stepminB, i8* %2)
  %3 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  call void @loop(void (i8*)* @initmaxB, void (i8*)* @stepmaxB, i8* %3)
  %4 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  call void @loop(void (i8*)* @initaddB, void (i8*)* @stepaddB, i8* %4)
  %5 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  call void @loop(void (i8*)* @initmultB, void (i8*)* @stepmultB, i8* %5)
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testC() #0 {
  %1 = alloca %struct.global_result, align 1
  call void @initarray()
  %2 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  call void @loop(void (i8*)* @initminB.2, void (i8*)* @stepminB.3, i8* %2)
  %3 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  call void @loop(void (i8*)* @initmaxB.4, void (i8*)* @stepmaxB.5, i8* %3)
  %4 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  call void @loop(void (i8*)* @initaddB.6, void (i8*)* @stepaddB.7, i8* %4)
  %5 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  call void @loop(void (i8*)* @initmultB.8, void (i8*)* @stepmultB.9, i8* %5)
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initminB.2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 -1, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepminB.3(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @min(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initmaxB.4(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 0, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepmaxB.5(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @max(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initaddB.6(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 0, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepaddB.7(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @add(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initmultB.8(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 0)
  %3 = load i8*, i8** %2, align 8
  store i8 1, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepmultB.9(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @mult(i8 signext %8, i8 signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getac() #0 {
  %1 = load i64, i64* @array_count, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setac(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = urem i64 %3, 2684050
  store i64 %4, i64* @array_count, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initarray() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load i64, i64* %1, align 8
  %4 = icmp ult i64 %3, 2684050
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i64, i64* %1, align 8
  %7 = urem i64 %6, 255
  %8 = trunc i64 %7 to i8
  %9 = load i8*, i8** @testarray, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 %8, i8* %11, align 1
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %1, align 8
  br label %2

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @array(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i8*, i8** @testarray, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds i8, i8* %3, i64 %4
  %6 = load i8, i8* %5, align 1
  ret i8 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @min(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @max(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @add(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @mult(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = mul nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @loop(void (i8*)* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca void (i8*)*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store void (i8*)* %0, void (i8*)** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load void (i8*)*, void (i8*)** %4, align 8
  %9 = load i8*, i8** %6, align 8
  call void %8(i8* %9)
  br label %10

10:                                               ; preds = %13, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 2684050
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load void (i8*)*, void (i8*)** %5, align 8
  %15 = load i8*, i8** %6, align 8
  call void %14(i8* %15)
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %7, align 8
  br label %10

18:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call noalias i8* @malloc(i64 2684050) #3
  store i8* %2, i8** @testarray, align 8
  call void @testA()
  call void @testB()
  call void @testC()
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
