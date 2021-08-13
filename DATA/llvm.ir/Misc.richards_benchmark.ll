; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.task = type { %struct.task*, i32, i32, %struct.packet*, i32, %struct.task* (%struct.packet*)*, i64, i64 }
%struct.packet = type { %struct.packet*, i32, i32, i32, [4 x i8] }

@alphabet = dso_local global [28 x i8] c"0ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@tasktab = dso_local global [11 x %struct.task*] zeroinitializer, align 16
@tasklist = dso_local global %struct.task* null, align 8
@qpktcount = dso_local global i32 0, align 4
@holdcount = dso_local global i32 0, align 4
@tracing = dso_local global i32 1, align 4
@layout = dso_local global i32 0, align 4
@tcb = common dso_local global %struct.task* null, align 8
@taskid = common dso_local global i64 0, align 8
@v1 = common dso_local global i64 0, align 8
@v2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0ABad task id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Bench mark starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Starting\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"finished\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"qpkt count = %d  holdcount = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"These results are \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"incorrect\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0Aend of run\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @createtask(i32 %0, i32 %1, %struct.packet* %2, i32 %3, %struct.task* (%struct.packet*)* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.packet*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.task* (%struct.packet*)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.task*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.packet* %2, %struct.packet** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.task* (%struct.packet*)* %4, %struct.task* (%struct.packet*)** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = call noalias i8* @malloc(i64 56) #3
  %17 = bitcast i8* %16 to %struct.task*
  store %struct.task* %17, %struct.task** %15, align 8
  %18 = load %struct.task*, %struct.task** %15, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [11 x %struct.task*], [11 x %struct.task*]* @tasktab, i64 0, i64 %20
  store %struct.task* %18, %struct.task** %21, align 8
  %22 = load %struct.task*, %struct.task** @tasklist, align 8
  %23 = load %struct.task*, %struct.task** %15, align 8
  %24 = getelementptr inbounds %struct.task, %struct.task* %23, i32 0, i32 0
  store %struct.task* %22, %struct.task** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.task*, %struct.task** %15, align 8
  %27 = getelementptr inbounds %struct.task, %struct.task* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.task*, %struct.task** %15, align 8
  %30 = getelementptr inbounds %struct.task, %struct.task* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.packet*, %struct.packet** %10, align 8
  %32 = load %struct.task*, %struct.task** %15, align 8
  %33 = getelementptr inbounds %struct.task, %struct.task* %32, i32 0, i32 3
  store %struct.packet* %31, %struct.packet** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.task*, %struct.task** %15, align 8
  %36 = getelementptr inbounds %struct.task, %struct.task* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.task* (%struct.packet*)*, %struct.task* (%struct.packet*)** %12, align 8
  %38 = load %struct.task*, %struct.task** %15, align 8
  %39 = getelementptr inbounds %struct.task, %struct.task* %38, i32 0, i32 5
  store %struct.task* (%struct.packet*)* %37, %struct.task* (%struct.packet*)** %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.task*, %struct.task** %15, align 8
  %42 = getelementptr inbounds %struct.task, %struct.task* %41, i32 0, i32 6
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.task*, %struct.task** %15, align 8
  %45 = getelementptr inbounds %struct.task, %struct.task* %44, i32 0, i32 7
  store i64 %43, i64* %45, align 8
  %46 = load %struct.task*, %struct.task** %15, align 8
  store %struct.task* %46, %struct.task** @tasklist, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.packet* @pkt(%struct.packet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.packet*, align 8
  store %struct.packet* %0, %struct.packet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call noalias i8* @malloc(i64 24) #3
  %10 = bitcast i8* %9 to %struct.packet*
  store %struct.packet* %10, %struct.packet** %8, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %20, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 3
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.packet*, %struct.packet** %8, align 8
  %16 = getelementptr inbounds %struct.packet, %struct.packet* %15, i32 0, i32 4
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 %18
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.packet*, %struct.packet** %4, align 8
  %25 = load %struct.packet*, %struct.packet** %8, align 8
  %26 = getelementptr inbounds %struct.packet, %struct.packet* %25, i32 0, i32 0
  store %struct.packet* %24, %struct.packet** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.packet*, %struct.packet** %8, align 8
  %29 = getelementptr inbounds %struct.packet, %struct.packet* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.packet*, %struct.packet** %8, align 8
  %32 = getelementptr inbounds %struct.packet, %struct.packet* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.packet*, %struct.packet** %8, align 8
  %34 = getelementptr inbounds %struct.packet, %struct.packet* %33, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = load %struct.packet*, %struct.packet** %8, align 8
  ret %struct.packet* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @trace(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i32, i32* @layout, align 4
  %4 = add nsw i32 %3, -1
  store i32 %4, i32* @layout, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 50, i32* @layout, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i8, i8* %2, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @schedule() #0 {
  %1 = alloca %struct.packet*, align 8
  %2 = alloca %struct.task*, align 8
  br label %3

3:                                                ; preds = %62, %0
  %4 = load %struct.task*, %struct.task** @tcb, align 8
  %5 = icmp ne %struct.task* %4, null
  br i1 %5, label %6, label %63

6:                                                ; preds = %3
  store %struct.packet* null, %struct.packet** %1, align 8
  %7 = load %struct.task*, %struct.task** @tcb, align 8
  %8 = getelementptr inbounds %struct.task, %struct.task* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %61 [
    i32 3, label %10
    i32 0, label %27
    i32 1, label %27
    i32 2, label %57
    i32 4, label %57
    i32 5, label %57
    i32 6, label %57
    i32 7, label %57
  ]

10:                                               ; preds = %6
  %11 = load %struct.task*, %struct.task** @tcb, align 8
  %12 = getelementptr inbounds %struct.task, %struct.task* %11, i32 0, i32 3
  %13 = load %struct.packet*, %struct.packet** %12, align 8
  store %struct.packet* %13, %struct.packet** %1, align 8
  %14 = load %struct.packet*, %struct.packet** %1, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 0
  %16 = load %struct.packet*, %struct.packet** %15, align 8
  %17 = load %struct.task*, %struct.task** @tcb, align 8
  %18 = getelementptr inbounds %struct.task, %struct.task* %17, i32 0, i32 3
  store %struct.packet* %16, %struct.packet** %18, align 8
  %19 = load %struct.task*, %struct.task** @tcb, align 8
  %20 = getelementptr inbounds %struct.task, %struct.task* %19, i32 0, i32 3
  %21 = load %struct.packet*, %struct.packet** %20, align 8
  %22 = icmp eq %struct.packet* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = load %struct.task*, %struct.task** @tcb, align 8
  %26 = getelementptr inbounds %struct.task, %struct.task* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %10, %6, %6
  %28 = load %struct.task*, %struct.task** @tcb, align 8
  %29 = getelementptr inbounds %struct.task, %struct.task* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  store i64 %31, i64* @taskid, align 8
  %32 = load %struct.task*, %struct.task** @tcb, align 8
  %33 = getelementptr inbounds %struct.task, %struct.task* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* @v1, align 8
  %35 = load %struct.task*, %struct.task** @tcb, align 8
  %36 = getelementptr inbounds %struct.task, %struct.task* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* @v2, align 8
  %38 = load i32, i32* @tracing, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i64, i64* @taskid, align 8
  %42 = add nsw i64 %41, 48
  %43 = trunc i64 %42 to i8
  call void @trace(i8 signext %43)
  br label %44

44:                                               ; preds = %40, %27
  %45 = load %struct.task*, %struct.task** @tcb, align 8
  %46 = getelementptr inbounds %struct.task, %struct.task* %45, i32 0, i32 5
  %47 = load %struct.task* (%struct.packet*)*, %struct.task* (%struct.packet*)** %46, align 8
  %48 = load %struct.packet*, %struct.packet** %1, align 8
  %49 = call %struct.task* %47(%struct.packet* %48)
  store %struct.task* %49, %struct.task** %2, align 8
  %50 = load i64, i64* @v1, align 8
  %51 = load %struct.task*, %struct.task** @tcb, align 8
  %52 = getelementptr inbounds %struct.task, %struct.task* %51, i32 0, i32 6
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* @v2, align 8
  %54 = load %struct.task*, %struct.task** @tcb, align 8
  %55 = getelementptr inbounds %struct.task, %struct.task* %54, i32 0, i32 7
  store i64 %53, i64* %55, align 8
  %56 = load %struct.task*, %struct.task** %2, align 8
  store %struct.task* %56, %struct.task** @tcb, align 8
  br label %62

57:                                               ; preds = %6, %6, %6, %6, %6
  %58 = load %struct.task*, %struct.task** @tcb, align 8
  %59 = getelementptr inbounds %struct.task, %struct.task* %58, i32 0, i32 0
  %60 = load %struct.task*, %struct.task** %59, align 8
  store %struct.task* %60, %struct.task** @tcb, align 8
  br label %62

61:                                               ; preds = %6
  br label %63

62:                                               ; preds = %57, %44
  br label %3

63:                                               ; preds = %61, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @Wait() #0 {
  %1 = load %struct.task*, %struct.task** @tcb, align 8
  %2 = getelementptr inbounds %struct.task, %struct.task* %1, i32 0, i32 4
  %3 = load i32, i32* %2, align 8
  %4 = or i32 %3, 2
  store i32 %4, i32* %2, align 8
  %5 = load %struct.task*, %struct.task** @tcb, align 8
  ret %struct.task* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @holdself() #0 {
  %1 = load i32, i32* @holdcount, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @holdcount, align 4
  %3 = load %struct.task*, %struct.task** @tcb, align 8
  %4 = getelementptr inbounds %struct.task, %struct.task* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = or i32 %5, 4
  store i32 %6, i32* %4, align 8
  %7 = load %struct.task*, %struct.task** @tcb, align 8
  %8 = getelementptr inbounds %struct.task, %struct.task* %7, i32 0, i32 0
  %9 = load %struct.task*, %struct.task** %8, align 8
  ret %struct.task* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @findtcb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.task* null, %struct.task** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 1, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp sle i64 %8, 10
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [11 x %struct.task*], [11 x %struct.task*]* @tasktab, i64 0, i64 %12
  %14 = load %struct.task*, %struct.task** %13, align 8
  store %struct.task* %14, %struct.task** %3, align 8
  br label %15

15:                                               ; preds = %10, %6, %1
  %16 = load %struct.task*, %struct.task** %3, align 8
  %17 = icmp eq %struct.task* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.task*, %struct.task** %3, align 8
  ret %struct.task* %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @release(i32 %0) #0 {
  %2 = alloca %struct.task*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.task* @findtcb(i32 %5)
  store %struct.task* %6, %struct.task** %4, align 8
  %7 = load %struct.task*, %struct.task** %4, align 8
  %8 = icmp eq %struct.task* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.task* null, %struct.task** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.task*, %struct.task** %4, align 8
  %12 = getelementptr inbounds %struct.task, %struct.task* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 65531
  store i32 %14, i32* %12, align 8
  %15 = load %struct.task*, %struct.task** %4, align 8
  %16 = getelementptr inbounds %struct.task, %struct.task* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.task*, %struct.task** @tcb, align 8
  %19 = getelementptr inbounds %struct.task, %struct.task* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load %struct.task*, %struct.task** %4, align 8
  store %struct.task* %23, %struct.task** %2, align 8
  br label %26

24:                                               ; preds = %10
  %25 = load %struct.task*, %struct.task** @tcb, align 8
  store %struct.task* %25, %struct.task** %2, align 8
  br label %26

26:                                               ; preds = %24, %22, %9
  %27 = load %struct.task*, %struct.task** %2, align 8
  ret %struct.task* %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @qpkt(%struct.packet* %0) #0 {
  %2 = alloca %struct.task*, align 8
  %3 = alloca %struct.packet*, align 8
  %4 = alloca %struct.task*, align 8
  store %struct.packet* %0, %struct.packet** %3, align 8
  %5 = load %struct.packet*, %struct.packet** %3, align 8
  %6 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.task* @findtcb(i32 %7)
  store %struct.task* %8, %struct.task** %4, align 8
  %9 = load %struct.task*, %struct.task** %4, align 8
  %10 = icmp eq %struct.task* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.task*, %struct.task** %4, align 8
  store %struct.task* %12, %struct.task** %2, align 8
  br label %51

13:                                               ; preds = %1
  %14 = load i32, i32* @qpktcount, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @qpktcount, align 4
  %16 = load %struct.packet*, %struct.packet** %3, align 8
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %16, i32 0, i32 0
  store %struct.packet* null, %struct.packet** %17, align 8
  %18 = load i64, i64* @taskid, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.packet*, %struct.packet** %3, align 8
  %21 = getelementptr inbounds %struct.packet, %struct.packet* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.task*, %struct.task** %4, align 8
  %23 = getelementptr inbounds %struct.task, %struct.task* %22, i32 0, i32 3
  %24 = load %struct.packet*, %struct.packet** %23, align 8
  %25 = icmp eq %struct.packet* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %13
  %27 = load %struct.packet*, %struct.packet** %3, align 8
  %28 = load %struct.task*, %struct.task** %4, align 8
  %29 = getelementptr inbounds %struct.task, %struct.task* %28, i32 0, i32 3
  store %struct.packet* %27, %struct.packet** %29, align 8
  %30 = load %struct.task*, %struct.task** %4, align 8
  %31 = getelementptr inbounds %struct.task, %struct.task* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.task*, %struct.task** %4, align 8
  %35 = getelementptr inbounds %struct.task, %struct.task* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.task*, %struct.task** @tcb, align 8
  %38 = getelementptr inbounds %struct.task, %struct.task* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load %struct.task*, %struct.task** %4, align 8
  store %struct.task* %42, %struct.task** %2, align 8
  br label %51

43:                                               ; preds = %26
  br label %49

44:                                               ; preds = %13
  %45 = load %struct.packet*, %struct.packet** %3, align 8
  %46 = load %struct.task*, %struct.task** %4, align 8
  %47 = getelementptr inbounds %struct.task, %struct.task* %46, i32 0, i32 3
  %48 = bitcast %struct.packet** %47 to %struct.packet*
  call void @append(%struct.packet* %45, %struct.packet* %48)
  br label %49

49:                                               ; preds = %44, %43
  %50 = load %struct.task*, %struct.task** @tcb, align 8
  store %struct.task* %50, %struct.task** %2, align 8
  br label %51

51:                                               ; preds = %49, %41, %11
  %52 = load %struct.task*, %struct.task** %2, align 8
  ret %struct.task* %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @append(%struct.packet* %0, %struct.packet* %1) #0 {
  %3 = alloca %struct.packet*, align 8
  %4 = alloca %struct.packet*, align 8
  store %struct.packet* %0, %struct.packet** %3, align 8
  store %struct.packet* %1, %struct.packet** %4, align 8
  %5 = load %struct.packet*, %struct.packet** %3, align 8
  %6 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 0
  store %struct.packet* null, %struct.packet** %6, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.packet*, %struct.packet** %4, align 8
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %8, i32 0, i32 0
  %10 = load %struct.packet*, %struct.packet** %9, align 8
  %11 = icmp ne %struct.packet* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.packet*, %struct.packet** %4, align 8
  %14 = getelementptr inbounds %struct.packet, %struct.packet* %13, i32 0, i32 0
  %15 = load %struct.packet*, %struct.packet** %14, align 8
  store %struct.packet* %15, %struct.packet** %4, align 8
  br label %7

16:                                               ; preds = %7
  %17 = load %struct.packet*, %struct.packet** %3, align 8
  %18 = load %struct.packet*, %struct.packet** %4, align 8
  %19 = getelementptr inbounds %struct.packet, %struct.packet* %18, i32 0, i32 0
  store %struct.packet* %17, %struct.packet** %19, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @idlefn(%struct.packet* %0) #0 {
  %2 = alloca %struct.task*, align 8
  %3 = alloca %struct.packet*, align 8
  store %struct.packet* %0, %struct.packet** %3, align 8
  %4 = load i64, i64* @v2, align 8
  %5 = add nsw i64 %4, -1
  store i64 %5, i64* @v2, align 8
  %6 = load i64, i64* @v2, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call %struct.task* @holdself()
  store %struct.task* %9, %struct.task** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load i64, i64* @v1, align 8
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i64, i64* @v1, align 8
  %16 = ashr i64 %15, 1
  %17 = and i64 %16, 32767
  store i64 %17, i64* @v1, align 8
  %18 = call %struct.task* @release(i32 5)
  store %struct.task* %18, %struct.task** %2, align 8
  br label %25

19:                                               ; preds = %10
  %20 = load i64, i64* @v1, align 8
  %21 = ashr i64 %20, 1
  %22 = and i64 %21, 32767
  %23 = xor i64 %22, 53256
  store i64 %23, i64* @v1, align 8
  %24 = call %struct.task* @release(i32 6)
  store %struct.task* %24, %struct.task** %2, align 8
  br label %25

25:                                               ; preds = %19, %14, %8
  %26 = load %struct.task*, %struct.task** %2, align 8
  ret %struct.task* %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @workfn(%struct.packet* %0) #0 {
  %2 = alloca %struct.task*, align 8
  %3 = alloca %struct.packet*, align 8
  %4 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %3, align 8
  %5 = load %struct.packet*, %struct.packet** %3, align 8
  %6 = icmp eq %struct.packet* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call %struct.task* @Wait()
  store %struct.task* %8, %struct.task** %2, align 8
  br label %42

9:                                                ; preds = %1
  %10 = load i64, i64* @v1, align 8
  %11 = sub nsw i64 7, %10
  store i64 %11, i64* @v1, align 8
  %12 = load i64, i64* @v1, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.packet*, %struct.packet** %3, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.packet*, %struct.packet** %3, align 8
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %16, i32 0, i32 3
  store i32 0, i32* %17, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %36, %9
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 3
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i64, i64* @v2, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @v2, align 8
  %24 = load i64, i64* @v2, align 8
  %25 = icmp sgt i64 %24, 26
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i64 1, i64* @v2, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i64, i64* @v2, align 8
  %29 = getelementptr inbounds [28 x i8], [28 x i8]* @alphabet, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.packet*, %struct.packet** %3, align 8
  %32 = getelementptr inbounds %struct.packet, %struct.packet* %31, i32 0, i32 4
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 %34
  store i8 %30, i8* %35, align 1
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.packet*, %struct.packet** %3, align 8
  %41 = call %struct.task* @qpkt(%struct.packet* %40)
  store %struct.task* %41, %struct.task** %2, align 8
  br label %42

42:                                               ; preds = %39, %7
  %43 = load %struct.task*, %struct.task** %2, align 8
  ret %struct.task* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @handlerfn(%struct.packet* %0) #0 {
  %2 = alloca %struct.task*, align 8
  %3 = alloca %struct.packet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet*, align 8
  %6 = alloca %struct.packet*, align 8
  store %struct.packet* %0, %struct.packet** %3, align 8
  %7 = load %struct.packet*, %struct.packet** %3, align 8
  %8 = icmp ne %struct.packet* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.packet*, %struct.packet** %3, align 8
  %11 = load %struct.packet*, %struct.packet** %3, align 8
  %12 = getelementptr inbounds %struct.packet, %struct.packet* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1001
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64* @v1, i64* @v2
  %17 = bitcast i64* %16 to %struct.packet*
  call void @append(%struct.packet* %10, %struct.packet* %17)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load i64, i64* @v1, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load i64, i64* @v1, align 8
  %23 = inttoptr i64 %22 to %struct.packet*
  store %struct.packet* %23, %struct.packet** %5, align 8
  %24 = load %struct.packet*, %struct.packet** %5, align 8
  %25 = getelementptr inbounds %struct.packet, %struct.packet* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load i64, i64* @v1, align 8
  %31 = inttoptr i64 %30 to %struct.packet*
  %32 = getelementptr inbounds %struct.packet, %struct.packet* %31, i32 0, i32 0
  %33 = load %struct.packet*, %struct.packet** %32, align 8
  %34 = ptrtoint %struct.packet* %33 to i64
  store i64 %34, i64* @v1, align 8
  %35 = load %struct.packet*, %struct.packet** %5, align 8
  %36 = call %struct.task* @qpkt(%struct.packet* %35)
  store %struct.task* %36, %struct.task** %2, align 8
  br label %66

37:                                               ; preds = %21
  %38 = load i64, i64* @v2, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i64, i64* @v2, align 8
  %42 = inttoptr i64 %41 to %struct.packet*
  store %struct.packet* %42, %struct.packet** %6, align 8
  %43 = load i64, i64* @v2, align 8
  %44 = inttoptr i64 %43 to %struct.packet*
  %45 = getelementptr inbounds %struct.packet, %struct.packet* %44, i32 0, i32 0
  %46 = load %struct.packet*, %struct.packet** %45, align 8
  %47 = ptrtoint %struct.packet* %46 to i64
  store i64 %47, i64* @v2, align 8
  %48 = load %struct.packet*, %struct.packet** %5, align 8
  %49 = getelementptr inbounds %struct.packet, %struct.packet* %48, i32 0, i32 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %49, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load %struct.packet*, %struct.packet** %6, align 8
  %56 = getelementptr inbounds %struct.packet, %struct.packet* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.packet*, %struct.packet** %5, align 8
  %60 = getelementptr inbounds %struct.packet, %struct.packet* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.packet*, %struct.packet** %6, align 8
  %62 = call %struct.task* @qpkt(%struct.packet* %61)
  store %struct.task* %62, %struct.task** %2, align 8
  br label %66

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %18
  %65 = call %struct.task* @Wait()
  store %struct.task* %65, %struct.task** %2, align 8
  br label %66

66:                                               ; preds = %64, %40, %29
  %67 = load %struct.task*, %struct.task** %2, align 8
  ret %struct.task* %67
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @devfn(%struct.packet* %0) #0 {
  %2 = alloca %struct.task*, align 8
  %3 = alloca %struct.packet*, align 8
  store %struct.packet* %0, %struct.packet** %3, align 8
  %4 = load %struct.packet*, %struct.packet** %3, align 8
  %5 = icmp eq %struct.packet* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i64, i64* @v1, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call %struct.task* @Wait()
  store %struct.task* %10, %struct.task** %2, align 8
  br label %28

11:                                               ; preds = %6
  %12 = load i64, i64* @v1, align 8
  %13 = inttoptr i64 %12 to %struct.packet*
  store %struct.packet* %13, %struct.packet** %3, align 8
  store i64 0, i64* @v1, align 8
  %14 = load %struct.packet*, %struct.packet** %3, align 8
  %15 = call %struct.task* @qpkt(%struct.packet* %14)
  store %struct.task* %15, %struct.task** %2, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.packet*, %struct.packet** %3, align 8
  %18 = ptrtoint %struct.packet* %17 to i64
  store i64 %18, i64* @v1, align 8
  %19 = load i32, i32* @tracing, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.packet*, %struct.packet** %3, align 8
  %23 = getelementptr inbounds %struct.packet, %struct.packet* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = trunc i32 %24 to i8
  call void @trace(i8 signext %25)
  br label %26

26:                                               ; preds = %21, %16
  %27 = call %struct.task* @holdself()
  store %struct.task* %27, %struct.task** %2, align 8
  br label %28

28:                                               ; preds = %26, %11, %9
  %29 = load %struct.task*, %struct.task** %2, align 8
  ret %struct.task* %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.packet*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.packet* null, %struct.packet** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %5 = load %struct.packet*, %struct.packet** %2, align 8
  call void @createtask(i32 1, i32 0, %struct.packet* %5, i32 0, %struct.task* (%struct.packet*)* @idlefn, i64 1, i64 10000000)
  %6 = call %struct.packet* @pkt(%struct.packet* null, i32 0, i32 1001)
  store %struct.packet* %6, %struct.packet** %2, align 8
  %7 = load %struct.packet*, %struct.packet** %2, align 8
  %8 = call %struct.packet* @pkt(%struct.packet* %7, i32 0, i32 1001)
  store %struct.packet* %8, %struct.packet** %2, align 8
  %9 = load %struct.packet*, %struct.packet** %2, align 8
  call void @createtask(i32 2, i32 1000, %struct.packet* %9, i32 3, %struct.task* (%struct.packet*)* @workfn, i64 3, i64 0)
  %10 = call %struct.packet* @pkt(%struct.packet* null, i32 5, i32 1000)
  store %struct.packet* %10, %struct.packet** %2, align 8
  %11 = load %struct.packet*, %struct.packet** %2, align 8
  %12 = call %struct.packet* @pkt(%struct.packet* %11, i32 5, i32 1000)
  store %struct.packet* %12, %struct.packet** %2, align 8
  %13 = load %struct.packet*, %struct.packet** %2, align 8
  %14 = call %struct.packet* @pkt(%struct.packet* %13, i32 5, i32 1000)
  store %struct.packet* %14, %struct.packet** %2, align 8
  %15 = load %struct.packet*, %struct.packet** %2, align 8
  call void @createtask(i32 3, i32 2000, %struct.packet* %15, i32 3, %struct.task* (%struct.packet*)* @handlerfn, i64 0, i64 0)
  %16 = call %struct.packet* @pkt(%struct.packet* null, i32 6, i32 1000)
  store %struct.packet* %16, %struct.packet** %2, align 8
  %17 = load %struct.packet*, %struct.packet** %2, align 8
  %18 = call %struct.packet* @pkt(%struct.packet* %17, i32 6, i32 1000)
  store %struct.packet* %18, %struct.packet** %2, align 8
  %19 = load %struct.packet*, %struct.packet** %2, align 8
  %20 = call %struct.packet* @pkt(%struct.packet* %19, i32 6, i32 1000)
  store %struct.packet* %20, %struct.packet** %2, align 8
  %21 = load %struct.packet*, %struct.packet** %2, align 8
  call void @createtask(i32 4, i32 3000, %struct.packet* %21, i32 3, %struct.task* (%struct.packet*)* @handlerfn, i64 0, i64 0)
  store %struct.packet* null, %struct.packet** %2, align 8
  %22 = load %struct.packet*, %struct.packet** %2, align 8
  call void @createtask(i32 5, i32 4000, %struct.packet* %22, i32 2, %struct.task* (%struct.packet*)* @devfn, i64 0, i64 0)
  %23 = load %struct.packet*, %struct.packet** %2, align 8
  call void @createtask(i32 6, i32 5000, %struct.packet* %23, i32 2, %struct.task* (%struct.packet*)* @devfn, i64 0, i64 0)
  %24 = load %struct.task*, %struct.task** @tasklist, align 8
  store %struct.task* %24, %struct.task** @tcb, align 8
  store i32 0, i32* @holdcount, align 4
  store i32 0, i32* @qpktcount, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @tracing, align 4
  store i32 0, i32* @layout, align 4
  call void @schedule()
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @qpktcount, align 4
  %28 = load i32, i32* @holdcount, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %27, i32 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %31 = load i32, i32* @qpktcount, align 4
  %32 = icmp eq i32 %31, 23263894
  br i1 %32, label %33, label %38

33:                                               ; preds = %0
  %34 = load i32, i32* @holdcount, align 4
  %35 = icmp eq i32 %34, 9305557
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

38:                                               ; preds = %33, %0
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
