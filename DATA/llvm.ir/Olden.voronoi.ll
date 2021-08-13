; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.edge_rec = type { %struct.VERTEX*, %struct.edge_rec*, i64, i8* }
%struct.VERTEX = type { %struct.VEC2, %struct.VERTEX*, %struct.VERTEX* }
%struct.VEC2 = type { double, double, double }
%struct.EDGE_PAIR = type { %struct.edge_rec*, %struct.edge_rec* }
%struct.EDGE_STACK = type { i32, %struct.edge_rec**, i32 }
%struct.get_point = type { %struct.VERTEX*, double, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Voronoi with %d size on %d procs of dim %d\0A\00", align 1
@next_edge = common dso_local global %struct.edge_rec* null, align 8
@avail_edge = common dso_local global %struct.edge_rec* null, align 8
@loop = dso_local global i32 0, align 4
@randum = dso_local global i32 1, align 4
@filein = dso_local global i32 0, align 4
@fileout = dso_local global i32 1, align 4
@statistics = dso_local global i32 0, align 4
@to_color = common dso_local global i32 0, align 4
@to_3d_out = common dso_local global i32 0, align 4
@to_off = common dso_local global i32 0, align 4
@to_lincoln = common dso_local global i32 0, align 4
@delaunay = common dso_local global i32 0, align 4
@voronoi = common dso_local global i32 0, align 4
@ahost = common dso_local global i32 0, align 4
@interactive = common dso_local global i32 0, align 4
@NumNodes = common dso_local global i32 0, align 4
@num_vertices = common dso_local global i32 0, align 4
@flag = common dso_local global i32 0, align 4
@num_edgeparts = common dso_local global i32 0, align 4
@vp = common dso_local global %struct.VERTEX** null, align 8
@va = common dso_local global %struct.VERTEX* null, align 8
@next = common dso_local global %struct.edge_rec** null, align 8
@org = common dso_local global %struct.VERTEX** null, align 8
@stack_size = common dso_local global i32 0, align 4
@see = common dso_local global i8* null, align 8
@NDim = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Aborting in alloc_edge, ans = 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"myalign() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ERROR: Only 1 point!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Entered DUMP_QUAD: ptr=0x%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DUMP_QUAD: ptr=0x%p onext=0x%p,v=0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"X=%f, Y=%f\0A\00", align 1
@.str.7.8 = private unnamed_addr constant [11 x i8] c"argc = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"getting %d points\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Done getting points\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Doing voronoi on %d nodes\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"cannot push onto stack: stack is too large\0A\00", align 1
@earray = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"Dedge %g %g %g %g \0A\00", align 1
@.str.1.13 = private unnamed_addr constant [20 x i8] c"Vedge %g %g %g %g \0A\00", align 1
@.str.2.16 = private unnamed_addr constant [18 x i8] c"mystack_ptr = %d\0A\00", align 1

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
  %12 = call i32 @atoi(i8* %11) #8
  store i32 %12, i32* @flag, align 4
  br label %14

13:                                               ; preds = %2
  store i32 1, i32* @flag, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20) #8
  store i32 %21, i32* @NumNodes, align 4
  br label %23

22:                                               ; preds = %14
  store i32 1, i32* @NumNodes, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29) #8
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %23
  store i32 32, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* @NumNodes, align 4
  %34 = call i32 @mylog(i32 %33)
  store i32 %34, i32* @NDim, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NumNodes, align 4
  %37 = load i32, i32* @NDim, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edge_rec* @connect_left(%struct.edge_rec* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.edge_rec*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.VERTEX*, align 8
  %6 = alloca %struct.VERTEX*, align 8
  %7 = alloca %struct.edge_rec*, align 8
  %8 = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %9 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %10 = ptrtoint %struct.edge_rec* %9 to i64
  %11 = xor i64 %10, 64
  %12 = inttoptr i64 %11 to %struct.edge_rec*
  %13 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %12, i32 0, i32 0
  %14 = load %struct.VERTEX*, %struct.VERTEX** %13, align 8
  store %struct.VERTEX* %14, %struct.VERTEX** %5, align 8
  %15 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %16 = ptrtoint %struct.edge_rec* %15 to i64
  %17 = add i64 %16, 96
  %18 = and i64 %17, 127
  %19 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %20 = ptrtoint %struct.edge_rec* %19 to i64
  %21 = and i64 %20, -128
  %22 = or i64 %18, %21
  %23 = inttoptr i64 %22 to %struct.edge_rec*
  %24 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %23, i32 0, i32 1
  %25 = load %struct.edge_rec*, %struct.edge_rec** %24, align 8
  %26 = ptrtoint %struct.edge_rec* %25 to i64
  %27 = add i64 %26, 32
  %28 = and i64 %27, 127
  %29 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %30 = ptrtoint %struct.edge_rec* %29 to i64
  %31 = add i64 %30, 96
  %32 = and i64 %31, 127
  %33 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %34 = ptrtoint %struct.edge_rec* %33 to i64
  %35 = and i64 %34, -128
  %36 = or i64 %32, %35
  %37 = inttoptr i64 %36 to %struct.edge_rec*
  %38 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %37, i32 0, i32 1
  %39 = load %struct.edge_rec*, %struct.edge_rec** %38, align 8
  %40 = ptrtoint %struct.edge_rec* %39 to i64
  %41 = and i64 %40, -128
  %42 = or i64 %28, %41
  %43 = inttoptr i64 %42 to %struct.edge_rec*
  store %struct.edge_rec* %43, %struct.edge_rec** %8, align 8
  %44 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %45 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %44, i32 0, i32 0
  %46 = load %struct.VERTEX*, %struct.VERTEX** %45, align 8
  store %struct.VERTEX* %46, %struct.VERTEX** %6, align 8
  %47 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  %48 = load %struct.VERTEX*, %struct.VERTEX** %6, align 8
  %49 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %47, %struct.VERTEX* %48)
  store %struct.edge_rec* %49, %struct.edge_rec** %7, align 8
  %50 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %51 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  call void @splice(%struct.edge_rec* %50, %struct.edge_rec* %51)
  %52 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %53 = ptrtoint %struct.edge_rec* %52 to i64
  %54 = xor i64 %53, 64
  %55 = inttoptr i64 %54 to %struct.edge_rec*
  %56 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  call void @splice(%struct.edge_rec* %55, %struct.edge_rec* %56)
  %57 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  ret %struct.edge_rec* %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edge_rec* @makeedge(%struct.VERTEX* %0, %struct.VERTEX* %1) #0 {
  %3 = alloca %struct.VERTEX*, align 8
  %4 = alloca %struct.VERTEX*, align 8
  %5 = alloca %struct.edge_rec*, align 8
  %6 = alloca %struct.edge_rec*, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %3, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %4, align 8
  %7 = call %struct.edge_rec* @alloc_edge()
  store %struct.edge_rec* %7, %struct.edge_rec** %5, align 8
  %8 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  store %struct.edge_rec* %8, %struct.edge_rec** %6, align 8
  %9 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %10 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %11 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %10, i32 0, i32 1
  store %struct.edge_rec* %9, %struct.edge_rec** %11, align 8
  %12 = load %struct.VERTEX*, %struct.VERTEX** %3, align 8
  %13 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %14 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %13, i32 0, i32 0
  store %struct.VERTEX* %12, %struct.VERTEX** %14, align 8
  %15 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %16 = ptrtoint %struct.edge_rec* %15 to i64
  %17 = add i64 %16, 32
  %18 = inttoptr i64 %17 to %struct.edge_rec*
  store %struct.edge_rec* %18, %struct.edge_rec** %5, align 8
  %19 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %20 = ptrtoint %struct.edge_rec* %19 to i64
  %21 = add i64 %20, 96
  %22 = inttoptr i64 %21 to %struct.edge_rec*
  %23 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %24 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %23, i32 0, i32 1
  store %struct.edge_rec* %22, %struct.edge_rec** %24, align 8
  %25 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %26 = ptrtoint %struct.edge_rec* %25 to i64
  %27 = add i64 %26, 32
  %28 = inttoptr i64 %27 to %struct.edge_rec*
  store %struct.edge_rec* %28, %struct.edge_rec** %5, align 8
  %29 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %30 = ptrtoint %struct.edge_rec* %29 to i64
  %31 = add i64 %30, 64
  %32 = inttoptr i64 %31 to %struct.edge_rec*
  %33 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %34 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %33, i32 0, i32 1
  store %struct.edge_rec* %32, %struct.edge_rec** %34, align 8
  %35 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %36 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %37 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %36, i32 0, i32 0
  store %struct.VERTEX* %35, %struct.VERTEX** %37, align 8
  %38 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %39 = ptrtoint %struct.edge_rec* %38 to i64
  %40 = add i64 %39, 32
  %41 = inttoptr i64 %40 to %struct.edge_rec*
  store %struct.edge_rec* %41, %struct.edge_rec** %5, align 8
  %42 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %43 = ptrtoint %struct.edge_rec* %42 to i64
  %44 = add i64 %43, 32
  %45 = inttoptr i64 %44 to %struct.edge_rec*
  %46 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %47 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %46, i32 0, i32 1
  store %struct.edge_rec* %45, %struct.edge_rec** %47, align 8
  %48 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  ret %struct.edge_rec* %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @splice(%struct.edge_rec* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.edge_rec*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.edge_rec*, align 8
  %6 = alloca %struct.edge_rec*, align 8
  %7 = alloca %struct.edge_rec*, align 8
  %8 = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %9 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %10 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %9, i32 0, i32 1
  %11 = load %struct.edge_rec*, %struct.edge_rec** %10, align 8
  %12 = ptrtoint %struct.edge_rec* %11 to i64
  %13 = add i64 %12, 32
  %14 = and i64 %13, 127
  %15 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %16 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %15, i32 0, i32 1
  %17 = load %struct.edge_rec*, %struct.edge_rec** %16, align 8
  %18 = ptrtoint %struct.edge_rec* %17 to i64
  %19 = and i64 %18, -128
  %20 = or i64 %14, %19
  %21 = inttoptr i64 %20 to %struct.edge_rec*
  store %struct.edge_rec* %21, %struct.edge_rec** %5, align 8
  %22 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %23 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %22, i32 0, i32 1
  %24 = load %struct.edge_rec*, %struct.edge_rec** %23, align 8
  %25 = ptrtoint %struct.edge_rec* %24 to i64
  %26 = add i64 %25, 32
  %27 = and i64 %26, 127
  %28 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %29 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %28, i32 0, i32 1
  %30 = load %struct.edge_rec*, %struct.edge_rec** %29, align 8
  %31 = ptrtoint %struct.edge_rec* %30 to i64
  %32 = and i64 %31, -128
  %33 = or i64 %27, %32
  %34 = inttoptr i64 %33 to %struct.edge_rec*
  store %struct.edge_rec* %34, %struct.edge_rec** %6, align 8
  %35 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %36 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %35, i32 0, i32 1
  %37 = load %struct.edge_rec*, %struct.edge_rec** %36, align 8
  store %struct.edge_rec* %37, %struct.edge_rec** %8, align 8
  %38 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %39 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %38, i32 0, i32 1
  %40 = load %struct.edge_rec*, %struct.edge_rec** %39, align 8
  store %struct.edge_rec* %40, %struct.edge_rec** %7, align 8
  %41 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %42 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %43 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %42, i32 0, i32 1
  store %struct.edge_rec* %41, %struct.edge_rec** %43, align 8
  %44 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %45 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %46 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %45, i32 0, i32 1
  store %struct.edge_rec* %44, %struct.edge_rec** %46, align 8
  %47 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %48 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %47, i32 0, i32 1
  %49 = load %struct.edge_rec*, %struct.edge_rec** %48, align 8
  store %struct.edge_rec* %49, %struct.edge_rec** %7, align 8
  %50 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %51 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %50, i32 0, i32 1
  %52 = load %struct.edge_rec*, %struct.edge_rec** %51, align 8
  store %struct.edge_rec* %52, %struct.edge_rec** %8, align 8
  %53 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %54 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %55 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %54, i32 0, i32 1
  store %struct.edge_rec* %53, %struct.edge_rec** %55, align 8
  %56 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %57 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %58 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %57, i32 0, i32 1
  store %struct.edge_rec* %56, %struct.edge_rec** %58, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edge_rec* @alloc_edge() #0 {
  %1 = alloca %struct.edge_rec*, align 8
  %2 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  %3 = icmp eq %struct.edge_rec* %2, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = call i8* @myalign(i32 128, i32 128)
  %6 = bitcast i8* %5 to %struct.edge_rec*
  store %struct.edge_rec* %6, %struct.edge_rec** %1, align 8
  %7 = load %struct.edge_rec*, %struct.edge_rec** %1, align 8
  %8 = ptrtoint %struct.edge_rec* %7 to i64
  %9 = and i64 %8, 127
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load %struct.edge_rec*, %struct.edge_rec** %1, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.edge_rec* %12)
  call void @exit(i32 -1) #9
  unreachable

14:                                               ; preds = %4
  br label %20

15:                                               ; preds = %0
  %16 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  store %struct.edge_rec* %16, %struct.edge_rec** %1, align 8
  %17 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  %18 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %17, i32 0, i32 1
  %19 = load %struct.edge_rec*, %struct.edge_rec** %18, align 8
  store %struct.edge_rec* %19, %struct.edge_rec** @avail_edge, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.edge_rec*, %struct.edge_rec** %1, align 8
  %22 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %21, i64 0
  %23 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.edge_rec*, %struct.edge_rec** %1, align 8
  %25 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %24, i64 1
  %26 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.edge_rec*, %struct.edge_rec** %1, align 8
  %28 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %27, i64 2
  %29 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.edge_rec*, %struct.edge_rec** %1, align 8
  %31 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %30, i64 3
  %32 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.edge_rec*, %struct.edge_rec** %1, align 8
  ret %struct.edge_rec* %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @myalign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = call noalias i8* @memalign(i64 %8, i64 %10) #10
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 -1) #9
  unreachable

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  ret i8* %17
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @memalign(i64, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edge_rec* @connect_right(%struct.edge_rec* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.edge_rec*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.VERTEX*, align 8
  %6 = alloca %struct.VERTEX*, align 8
  %7 = alloca %struct.edge_rec*, align 8
  %8 = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %9 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %10 = ptrtoint %struct.edge_rec* %9 to i64
  %11 = xor i64 %10, 64
  %12 = inttoptr i64 %11 to %struct.edge_rec*
  %13 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %12, i32 0, i32 0
  %14 = load %struct.VERTEX*, %struct.VERTEX** %13, align 8
  store %struct.VERTEX* %14, %struct.VERTEX** %5, align 8
  %15 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %16 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %15, i32 0, i32 0
  %17 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  store %struct.VERTEX* %17, %struct.VERTEX** %6, align 8
  %18 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %19 = ptrtoint %struct.edge_rec* %18 to i64
  %20 = add i64 %19, 32
  %21 = and i64 %20, 127
  %22 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %23 = ptrtoint %struct.edge_rec* %22 to i64
  %24 = and i64 %23, -128
  %25 = or i64 %21, %24
  %26 = inttoptr i64 %25 to %struct.edge_rec*
  %27 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %26, i32 0, i32 1
  %28 = load %struct.edge_rec*, %struct.edge_rec** %27, align 8
  %29 = ptrtoint %struct.edge_rec* %28 to i64
  %30 = add i64 %29, 32
  %31 = and i64 %30, 127
  %32 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %33 = ptrtoint %struct.edge_rec* %32 to i64
  %34 = add i64 %33, 32
  %35 = and i64 %34, 127
  %36 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %37 = ptrtoint %struct.edge_rec* %36 to i64
  %38 = and i64 %37, -128
  %39 = or i64 %35, %38
  %40 = inttoptr i64 %39 to %struct.edge_rec*
  %41 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %40, i32 0, i32 1
  %42 = load %struct.edge_rec*, %struct.edge_rec** %41, align 8
  %43 = ptrtoint %struct.edge_rec* %42 to i64
  %44 = and i64 %43, -128
  %45 = or i64 %31, %44
  %46 = inttoptr i64 %45 to %struct.edge_rec*
  store %struct.edge_rec* %46, %struct.edge_rec** %8, align 8
  %47 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  %48 = load %struct.VERTEX*, %struct.VERTEX** %6, align 8
  %49 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %47, %struct.VERTEX* %48)
  store %struct.edge_rec* %49, %struct.edge_rec** %7, align 8
  %50 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %51 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %52 = ptrtoint %struct.edge_rec* %51 to i64
  %53 = xor i64 %52, 64
  %54 = inttoptr i64 %53 to %struct.edge_rec*
  call void @splice(%struct.edge_rec* %50, %struct.edge_rec* %54)
  %55 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %56 = ptrtoint %struct.edge_rec* %55 to i64
  %57 = xor i64 %56, 64
  %58 = inttoptr i64 %57 to %struct.edge_rec*
  %59 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  call void @splice(%struct.edge_rec* %58, %struct.edge_rec* %59)
  %60 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  ret %struct.edge_rec* %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteedge(%struct.edge_rec* %0) #0 {
  %2 = alloca %struct.edge_rec*, align 8
  %3 = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %2, align 8
  %4 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %5 = ptrtoint %struct.edge_rec* %4 to i64
  %6 = add i64 %5, 32
  %7 = and i64 %6, 127
  %8 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %9 = ptrtoint %struct.edge_rec* %8 to i64
  %10 = and i64 %9, -128
  %11 = or i64 %7, %10
  %12 = inttoptr i64 %11 to %struct.edge_rec*
  %13 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %12, i32 0, i32 1
  %14 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %15 = ptrtoint %struct.edge_rec* %14 to i64
  %16 = add i64 %15, 32
  %17 = and i64 %16, 127
  %18 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %19 = ptrtoint %struct.edge_rec* %18 to i64
  %20 = add i64 %19, 32
  %21 = and i64 %20, 127
  %22 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %23 = ptrtoint %struct.edge_rec* %22 to i64
  %24 = and i64 %23, -128
  %25 = or i64 %21, %24
  %26 = inttoptr i64 %25 to %struct.edge_rec*
  %27 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %26, i32 0, i32 1
  %28 = load %struct.edge_rec*, %struct.edge_rec** %27, align 8
  %29 = ptrtoint %struct.edge_rec* %28 to i64
  %30 = and i64 %29, -128
  %31 = or i64 %17, %30
  %32 = inttoptr i64 %31 to %struct.edge_rec*
  store %struct.edge_rec* %32, %struct.edge_rec** %3, align 8
  %33 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %34 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  call void @splice(%struct.edge_rec* %33, %struct.edge_rec* %34)
  %35 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %36 = ptrtoint %struct.edge_rec* %35 to i64
  %37 = xor i64 %36, 64
  %38 = inttoptr i64 %37 to %struct.edge_rec*
  %39 = ptrtoint %struct.edge_rec* %38 to i64
  %40 = add i64 %39, 32
  %41 = and i64 %40, 127
  %42 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %43 = ptrtoint %struct.edge_rec* %42 to i64
  %44 = xor i64 %43, 64
  %45 = inttoptr i64 %44 to %struct.edge_rec*
  %46 = ptrtoint %struct.edge_rec* %45 to i64
  %47 = and i64 %46, -128
  %48 = or i64 %41, %47
  %49 = inttoptr i64 %48 to %struct.edge_rec*
  %50 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %49, i32 0, i32 1
  %51 = load %struct.edge_rec*, %struct.edge_rec** %50, align 8
  %52 = ptrtoint %struct.edge_rec* %51 to i64
  %53 = add i64 %52, 32
  %54 = and i64 %53, 127
  %55 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %56 = ptrtoint %struct.edge_rec* %55 to i64
  %57 = xor i64 %56, 64
  %58 = inttoptr i64 %57 to %struct.edge_rec*
  %59 = ptrtoint %struct.edge_rec* %58 to i64
  %60 = add i64 %59, 32
  %61 = and i64 %60, 127
  %62 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %63 = ptrtoint %struct.edge_rec* %62 to i64
  %64 = xor i64 %63, 64
  %65 = inttoptr i64 %64 to %struct.edge_rec*
  %66 = ptrtoint %struct.edge_rec* %65 to i64
  %67 = and i64 %66, -128
  %68 = or i64 %61, %67
  %69 = inttoptr i64 %68 to %struct.edge_rec*
  %70 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %69, i32 0, i32 1
  %71 = load %struct.edge_rec*, %struct.edge_rec** %70, align 8
  %72 = ptrtoint %struct.edge_rec* %71 to i64
  %73 = and i64 %72, -128
  %74 = or i64 %54, %73
  %75 = inttoptr i64 %74 to %struct.edge_rec*
  store %struct.edge_rec* %75, %struct.edge_rec** %3, align 8
  %76 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %77 = ptrtoint %struct.edge_rec* %76 to i64
  %78 = xor i64 %77, 64
  %79 = inttoptr i64 %78 to %struct.edge_rec*
  %80 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  call void @splice(%struct.edge_rec* %79, %struct.edge_rec* %80)
  %81 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  call void @free_edge(%struct.edge_rec* %81)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_edge(%struct.edge_rec* %0) #0 {
  %2 = alloca %struct.edge_rec*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %2, align 8
  %3 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %4 = ptrtoint %struct.edge_rec* %3 to i64
  %5 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %6 = ptrtoint %struct.edge_rec* %5 to i64
  %7 = and i64 %6, 127
  %8 = xor i64 %4, %7
  %9 = inttoptr i64 %8 to %struct.edge_rec*
  store %struct.edge_rec* %9, %struct.edge_rec** %2, align 8
  %10 = load %struct.edge_rec*, %struct.edge_rec** @avail_edge, align 8
  %11 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %12 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %11, i32 0, i32 1
  store %struct.edge_rec* %10, %struct.edge_rec** %12, align 8
  %13 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  store %struct.edge_rec* %13, %struct.edge_rec** @avail_edge, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edge_rec* @build_delaunay_triangulation(%struct.VERTEX* %0, %struct.VERTEX* %1) #0 {
  %3 = alloca %struct.VERTEX*, align 8
  %4 = alloca %struct.VERTEX*, align 8
  %5 = alloca %struct.EDGE_PAIR, align 8
  %6 = alloca %struct.EDGE_PAIR, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %3, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %4, align 8
  %7 = load %struct.VERTEX*, %struct.VERTEX** %3, align 8
  %8 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %9 = call { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %7, %struct.VERTEX* %8)
  %10 = bitcast %struct.EDGE_PAIR* %6 to { %struct.edge_rec*, %struct.edge_rec* }*
  %11 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %10, i32 0, i32 0
  %12 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %9, 0
  store %struct.edge_rec* %12, %struct.edge_rec** %11, align 8
  %13 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %10, i32 0, i32 1
  %14 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %9, 1
  store %struct.edge_rec* %14, %struct.edge_rec** %13, align 8
  %15 = bitcast %struct.EDGE_PAIR* %5 to i8*
  %16 = bitcast %struct.EDGE_PAIR* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %5, i32 0, i32 0
  %18 = load %struct.edge_rec*, %struct.edge_rec** %17, align 8
  ret %struct.edge_rec* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %0, %struct.VERTEX* %1) #0 {
  %3 = alloca %struct.EDGE_PAIR, align 8
  %4 = alloca %struct.VERTEX*, align 8
  %5 = alloca %struct.VERTEX*, align 8
  %6 = alloca %struct.edge_rec*, align 8
  %7 = alloca %struct.edge_rec*, align 8
  %8 = alloca %struct.edge_rec*, align 8
  %9 = alloca %struct.edge_rec*, align 8
  %10 = alloca %struct.edge_rec*, align 8
  %11 = alloca %struct.edge_rec*, align 8
  %12 = alloca %struct.edge_rec*, align 8
  %13 = alloca %struct.VERTEX*, align 8
  %14 = alloca %struct.VERTEX*, align 8
  %15 = alloca %struct.VERTEX*, align 8
  %16 = alloca %struct.VERTEX*, align 8
  %17 = alloca %struct.VERTEX*, align 8
  %18 = alloca %struct.EDGE_PAIR, align 8
  %19 = alloca %struct.EDGE_PAIR, align 8
  %20 = alloca %struct.EDGE_PAIR, align 8
  %21 = alloca %struct.EDGE_PAIR, align 8
  %22 = alloca %struct.EDGE_PAIR, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %4, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %5, align 8
  %23 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %24 = icmp ne %struct.VERTEX* %23, null
  br i1 %24, label %25, label %114

25:                                               ; preds = %2
  %26 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %27 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %26, i32 0, i32 2
  %28 = load %struct.VERTEX*, %struct.VERTEX** %27, align 8
  %29 = icmp ne %struct.VERTEX* %28, null
  br i1 %29, label %30, label %114

30:                                               ; preds = %25
  %31 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %32 = call %struct.VERTEX* @get_low(%struct.VERTEX* %31)
  store %struct.VERTEX* %32, %struct.VERTEX** %14, align 8
  %33 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  store %struct.VERTEX* %33, %struct.VERTEX** %13, align 8
  %34 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %35 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %34, i32 0, i32 2
  %36 = load %struct.VERTEX*, %struct.VERTEX** %35, align 8
  %37 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  %38 = call { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %36, %struct.VERTEX* %37)
  %39 = bitcast %struct.EDGE_PAIR* %20 to { %struct.edge_rec*, %struct.edge_rec* }*
  %40 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %39, i32 0, i32 0
  %41 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %38, 0
  store %struct.edge_rec* %41, %struct.edge_rec** %40, align 8
  %42 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %39, i32 0, i32 1
  %43 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %38, 1
  store %struct.edge_rec* %43, %struct.edge_rec** %42, align 8
  %44 = bitcast %struct.EDGE_PAIR* %19 to i8*
  %45 = bitcast %struct.EDGE_PAIR* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %47 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %46, i32 0, i32 1
  %48 = load %struct.VERTEX*, %struct.VERTEX** %47, align 8
  %49 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %50 = call { %struct.edge_rec*, %struct.edge_rec* } @build_delaunay(%struct.VERTEX* %48, %struct.VERTEX* %49)
  %51 = bitcast %struct.EDGE_PAIR* %21 to { %struct.edge_rec*, %struct.edge_rec* }*
  %52 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %51, i32 0, i32 0
  %53 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %50, 0
  store %struct.edge_rec* %53, %struct.edge_rec** %52, align 8
  %54 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %51, i32 0, i32 1
  %55 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %50, 1
  store %struct.edge_rec* %55, %struct.edge_rec** %54, align 8
  %56 = bitcast %struct.EDGE_PAIR* %18 to i8*
  %57 = bitcast %struct.EDGE_PAIR* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %18, i32 0, i32 0
  %59 = load %struct.edge_rec*, %struct.edge_rec** %58, align 8
  store %struct.edge_rec* %59, %struct.edge_rec** %9, align 8
  %60 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %18, i32 0, i32 1
  %61 = load %struct.edge_rec*, %struct.edge_rec** %60, align 8
  store %struct.edge_rec* %61, %struct.edge_rec** %11, align 8
  %62 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %19, i32 0, i32 0
  %63 = load %struct.edge_rec*, %struct.edge_rec** %62, align 8
  store %struct.edge_rec* %63, %struct.edge_rec** %10, align 8
  %64 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %19, i32 0, i32 1
  %65 = load %struct.edge_rec*, %struct.edge_rec** %64, align 8
  store %struct.edge_rec* %65, %struct.edge_rec** %12, align 8
  %66 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %67 = load %struct.edge_rec*, %struct.edge_rec** %11, align 8
  %68 = load %struct.edge_rec*, %struct.edge_rec** %10, align 8
  %69 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %70 = call { %struct.edge_rec*, %struct.edge_rec* } @do_merge(%struct.edge_rec* %66, %struct.edge_rec* %67, %struct.edge_rec* %68, %struct.edge_rec* %69)
  %71 = bitcast %struct.EDGE_PAIR* %22 to { %struct.edge_rec*, %struct.edge_rec* }*
  %72 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %71, i32 0, i32 0
  %73 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %70, 0
  store %struct.edge_rec* %73, %struct.edge_rec** %72, align 8
  %74 = getelementptr inbounds { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %71, i32 0, i32 1
  %75 = extractvalue { %struct.edge_rec*, %struct.edge_rec* } %70, 1
  store %struct.edge_rec* %75, %struct.edge_rec** %74, align 8
  %76 = bitcast %struct.EDGE_PAIR* %3 to i8*
  %77 = bitcast %struct.EDGE_PAIR* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 0
  %79 = load %struct.edge_rec*, %struct.edge_rec** %78, align 8
  store %struct.edge_rec* %79, %struct.edge_rec** %9, align 8
  %80 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 1
  %81 = load %struct.edge_rec*, %struct.edge_rec** %80, align 8
  store %struct.edge_rec* %81, %struct.edge_rec** %12, align 8
  br label %82

82:                                               ; preds = %88, %30
  %83 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %84 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %83, i32 0, i32 0
  %85 = load %struct.VERTEX*, %struct.VERTEX** %84, align 8
  %86 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %87 = icmp ne %struct.VERTEX* %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %90 = ptrtoint %struct.edge_rec* %89 to i64
  %91 = xor i64 %90, 64
  %92 = inttoptr i64 %91 to %struct.edge_rec*
  %93 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %92, i32 0, i32 1
  %94 = load %struct.edge_rec*, %struct.edge_rec** %93, align 8
  store %struct.edge_rec* %94, %struct.edge_rec** %9, align 8
  br label %82

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %102, %95
  %97 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %98 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %97, i32 0, i32 0
  %99 = load %struct.VERTEX*, %struct.VERTEX** %98, align 8
  %100 = load %struct.VERTEX*, %struct.VERTEX** %13, align 8
  %101 = icmp ne %struct.VERTEX* %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %104 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %103, i32 0, i32 1
  %105 = load %struct.edge_rec*, %struct.edge_rec** %104, align 8
  %106 = ptrtoint %struct.edge_rec* %105 to i64
  %107 = xor i64 %106, 64
  %108 = inttoptr i64 %107 to %struct.edge_rec*
  store %struct.edge_rec* %108, %struct.edge_rec** %12, align 8
  br label %96

109:                                              ; preds = %96
  %110 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %111 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 0
  store %struct.edge_rec* %110, %struct.edge_rec** %111, align 8
  %112 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %113 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 1
  store %struct.edge_rec* %112, %struct.edge_rec** %113, align 8
  br label %187

114:                                              ; preds = %25, %2
  %115 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %116 = icmp ne %struct.VERTEX* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 -1) #9
  unreachable

119:                                              ; preds = %114
  %120 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %121 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %120, i32 0, i32 1
  %122 = load %struct.VERTEX*, %struct.VERTEX** %121, align 8
  %123 = icmp ne %struct.VERTEX* %122, null
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %126 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  %127 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %125, %struct.VERTEX* %126)
  store %struct.edge_rec* %127, %struct.edge_rec** %6, align 8
  %128 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %129 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 0
  store %struct.edge_rec* %128, %struct.edge_rec** %129, align 8
  %130 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %131 = ptrtoint %struct.edge_rec* %130 to i64
  %132 = xor i64 %131, 64
  %133 = inttoptr i64 %132 to %struct.edge_rec*
  %134 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 1
  store %struct.edge_rec* %133, %struct.edge_rec** %134, align 8
  br label %185

135:                                              ; preds = %119
  %136 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %137 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %136, i32 0, i32 1
  %138 = load %struct.VERTEX*, %struct.VERTEX** %137, align 8
  store %struct.VERTEX* %138, %struct.VERTEX** %15, align 8
  %139 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  store %struct.VERTEX* %139, %struct.VERTEX** %16, align 8
  %140 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  store %struct.VERTEX* %140, %struct.VERTEX** %17, align 8
  %141 = load %struct.VERTEX*, %struct.VERTEX** %15, align 8
  %142 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %143 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %141, %struct.VERTEX* %142)
  store %struct.edge_rec* %143, %struct.edge_rec** %6, align 8
  %144 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %145 = load %struct.VERTEX*, %struct.VERTEX** %17, align 8
  %146 = call %struct.edge_rec* @makeedge(%struct.VERTEX* %144, %struct.VERTEX* %145)
  store %struct.edge_rec* %146, %struct.edge_rec** %7, align 8
  %147 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %148 = ptrtoint %struct.edge_rec* %147 to i64
  %149 = xor i64 %148, 64
  %150 = inttoptr i64 %149 to %struct.edge_rec*
  %151 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  call void @splice(%struct.edge_rec* %150, %struct.edge_rec* %151)
  %152 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %153 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %154 = call %struct.edge_rec* @connect_left(%struct.edge_rec* %152, %struct.edge_rec* %153)
  store %struct.edge_rec* %154, %struct.edge_rec** %8, align 8
  %155 = load %struct.VERTEX*, %struct.VERTEX** %15, align 8
  %156 = load %struct.VERTEX*, %struct.VERTEX** %17, align 8
  %157 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %158 = call i32 @ccw(%struct.VERTEX* %155, %struct.VERTEX* %156, %struct.VERTEX* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %135
  %161 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %162 = ptrtoint %struct.edge_rec* %161 to i64
  %163 = xor i64 %162, 64
  %164 = inttoptr i64 %163 to %struct.edge_rec*
  %165 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 0
  store %struct.edge_rec* %164, %struct.edge_rec** %165, align 8
  %166 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %167 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 1
  store %struct.edge_rec* %166, %struct.edge_rec** %167, align 8
  br label %184

168:                                              ; preds = %135
  %169 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %170 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 0
  store %struct.edge_rec* %169, %struct.edge_rec** %170, align 8
  %171 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %172 = ptrtoint %struct.edge_rec* %171 to i64
  %173 = xor i64 %172, 64
  %174 = inttoptr i64 %173 to %struct.edge_rec*
  %175 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %3, i32 0, i32 1
  store %struct.edge_rec* %174, %struct.edge_rec** %175, align 8
  %176 = load %struct.VERTEX*, %struct.VERTEX** %15, align 8
  %177 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %178 = load %struct.VERTEX*, %struct.VERTEX** %17, align 8
  %179 = call i32 @ccw(%struct.VERTEX* %176, %struct.VERTEX* %177, %struct.VERTEX* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %168
  %182 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  call void @deleteedge(%struct.edge_rec* %182)
  br label %183

183:                                              ; preds = %181, %168
  br label %184

184:                                              ; preds = %183, %160
  br label %185

185:                                              ; preds = %184, %124
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %109
  %188 = bitcast %struct.EDGE_PAIR* %3 to { %struct.edge_rec*, %struct.edge_rec* }*
  %189 = load { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %188, align 8
  ret { %struct.edge_rec*, %struct.edge_rec* } %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VERTEX* @get_low(%struct.VERTEX* %0) #0 {
  %2 = alloca %struct.VERTEX*, align 8
  %3 = alloca %struct.VERTEX*, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %6 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %5, i32 0, i32 1
  %7 = load %struct.VERTEX*, %struct.VERTEX** %6, align 8
  store %struct.VERTEX* %7, %struct.VERTEX** %3, align 8
  %8 = icmp ne %struct.VERTEX* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load %struct.VERTEX*, %struct.VERTEX** %3, align 8
  store %struct.VERTEX* %10, %struct.VERTEX** %2, align 8
  br label %4

11:                                               ; preds = %4
  %12 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  ret %struct.VERTEX* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local { %struct.edge_rec*, %struct.edge_rec* } @do_merge(%struct.edge_rec* %0, %struct.edge_rec* %1, %struct.edge_rec* %2, %struct.edge_rec* %3) #0 {
  %5 = alloca %struct.EDGE_PAIR, align 8
  %6 = alloca %struct.edge_rec*, align 8
  %7 = alloca %struct.edge_rec*, align 8
  %8 = alloca %struct.edge_rec*, align 8
  %9 = alloca %struct.edge_rec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.edge_rec*, align 8
  %13 = alloca %struct.edge_rec*, align 8
  %14 = alloca %struct.edge_rec*, align 8
  %15 = alloca %struct.edge_rec*, align 8
  %16 = alloca %struct.VERTEX*, align 8
  %17 = alloca %struct.VERTEX*, align 8
  %18 = alloca %struct.VERTEX*, align 8
  %19 = alloca %struct.VERTEX*, align 8
  %20 = alloca %struct.VERTEX*, align 8
  %21 = alloca %struct.VERTEX*, align 8
  %22 = alloca %struct.VERTEX*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %6, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %7, align 8
  store %struct.edge_rec* %2, %struct.edge_rec** %8, align 8
  store %struct.edge_rec* %3, %struct.edge_rec** %9, align 8
  br label %23

23:                                               ; preds = %101, %4
  %24 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %25 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %24, i32 0, i32 0
  %26 = load %struct.VERTEX*, %struct.VERTEX** %25, align 8
  store %struct.VERTEX* %26, %struct.VERTEX** %18, align 8
  %27 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %28 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %27, i32 0, i32 0
  %29 = load %struct.VERTEX*, %struct.VERTEX** %28, align 8
  store %struct.VERTEX* %29, %struct.VERTEX** %16, align 8
  %30 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %31 = ptrtoint %struct.edge_rec* %30 to i64
  %32 = xor i64 %31, 64
  %33 = inttoptr i64 %32 to %struct.edge_rec*
  %34 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %33, i32 0, i32 0
  %35 = load %struct.VERTEX*, %struct.VERTEX** %34, align 8
  store %struct.VERTEX* %35, %struct.VERTEX** %17, align 8
  br label %36

36:                                               ; preds = %42, %23
  %37 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %38 = load %struct.VERTEX*, %struct.VERTEX** %17, align 8
  %39 = load %struct.VERTEX*, %struct.VERTEX** %18, align 8
  %40 = call i32 @ccw(%struct.VERTEX* %37, %struct.VERTEX* %38, %struct.VERTEX* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %36
  %43 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %44 = ptrtoint %struct.edge_rec* %43 to i64
  %45 = add i64 %44, 96
  %46 = and i64 %45, 127
  %47 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %48 = ptrtoint %struct.edge_rec* %47 to i64
  %49 = and i64 %48, -128
  %50 = or i64 %46, %49
  %51 = inttoptr i64 %50 to %struct.edge_rec*
  %52 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %51, i32 0, i32 1
  %53 = load %struct.edge_rec*, %struct.edge_rec** %52, align 8
  %54 = ptrtoint %struct.edge_rec* %53 to i64
  %55 = add i64 %54, 32
  %56 = and i64 %55, 127
  %57 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %58 = ptrtoint %struct.edge_rec* %57 to i64
  %59 = add i64 %58, 96
  %60 = and i64 %59, 127
  %61 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %62 = ptrtoint %struct.edge_rec* %61 to i64
  %63 = and i64 %62, -128
  %64 = or i64 %60, %63
  %65 = inttoptr i64 %64 to %struct.edge_rec*
  %66 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %65, i32 0, i32 1
  %67 = load %struct.edge_rec*, %struct.edge_rec** %66, align 8
  %68 = ptrtoint %struct.edge_rec* %67 to i64
  %69 = and i64 %68, -128
  %70 = or i64 %56, %69
  %71 = inttoptr i64 %70 to %struct.edge_rec*
  store %struct.edge_rec* %71, %struct.edge_rec** %7, align 8
  %72 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %73 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %72, i32 0, i32 0
  %74 = load %struct.VERTEX*, %struct.VERTEX** %73, align 8
  store %struct.VERTEX* %74, %struct.VERTEX** %16, align 8
  %75 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %76 = ptrtoint %struct.edge_rec* %75 to i64
  %77 = xor i64 %76, 64
  %78 = inttoptr i64 %77 to %struct.edge_rec*
  %79 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %78, i32 0, i32 0
  %80 = load %struct.VERTEX*, %struct.VERTEX** %79, align 8
  store %struct.VERTEX* %80, %struct.VERTEX** %17, align 8
  br label %36

81:                                               ; preds = %36
  %82 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %83 = ptrtoint %struct.edge_rec* %82 to i64
  %84 = xor i64 %83, 64
  %85 = inttoptr i64 %84 to %struct.edge_rec*
  %86 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %85, i32 0, i32 0
  %87 = load %struct.VERTEX*, %struct.VERTEX** %86, align 8
  store %struct.VERTEX* %87, %struct.VERTEX** %17, align 8
  %88 = load %struct.VERTEX*, %struct.VERTEX** %17, align 8
  %89 = load %struct.VERTEX*, %struct.VERTEX** %18, align 8
  %90 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %91 = call i32 @ccw(%struct.VERTEX* %88, %struct.VERTEX* %89, %struct.VERTEX* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %81
  %94 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %95 = ptrtoint %struct.edge_rec* %94 to i64
  %96 = xor i64 %95, 64
  %97 = inttoptr i64 %96 to %struct.edge_rec*
  %98 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %97, i32 0, i32 1
  %99 = load %struct.edge_rec*, %struct.edge_rec** %98, align 8
  store %struct.edge_rec* %99, %struct.edge_rec** %8, align 8
  br label %101

100:                                              ; preds = %81
  br label %102

101:                                              ; preds = %93
  br label %23

102:                                              ; preds = %100
  %103 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %104 = ptrtoint %struct.edge_rec* %103 to i64
  %105 = xor i64 %104, 64
  %106 = inttoptr i64 %105 to %struct.edge_rec*
  %107 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %108 = call %struct.edge_rec* @connect_left(%struct.edge_rec* %106, %struct.edge_rec* %107)
  store %struct.edge_rec* %108, %struct.edge_rec** %12, align 8
  %109 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %110 = ptrtoint %struct.edge_rec* %109 to i64
  %111 = xor i64 %110, 64
  %112 = inttoptr i64 %111 to %struct.edge_rec*
  %113 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %112, i32 0, i32 1
  %114 = load %struct.edge_rec*, %struct.edge_rec** %113, align 8
  store %struct.edge_rec* %114, %struct.edge_rec** %13, align 8
  %115 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %116 = ptrtoint %struct.edge_rec* %115 to i64
  %117 = add i64 %116, 32
  %118 = and i64 %117, 127
  %119 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %120 = ptrtoint %struct.edge_rec* %119 to i64
  %121 = and i64 %120, -128
  %122 = or i64 %118, %121
  %123 = inttoptr i64 %122 to %struct.edge_rec*
  %124 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %123, i32 0, i32 1
  %125 = load %struct.edge_rec*, %struct.edge_rec** %124, align 8
  %126 = ptrtoint %struct.edge_rec* %125 to i64
  %127 = add i64 %126, 32
  %128 = and i64 %127, 127
  %129 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %130 = ptrtoint %struct.edge_rec* %129 to i64
  %131 = add i64 %130, 32
  %132 = and i64 %131, 127
  %133 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %134 = ptrtoint %struct.edge_rec* %133 to i64
  %135 = and i64 %134, -128
  %136 = or i64 %132, %135
  %137 = inttoptr i64 %136 to %struct.edge_rec*
  %138 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %137, i32 0, i32 1
  %139 = load %struct.edge_rec*, %struct.edge_rec** %138, align 8
  %140 = ptrtoint %struct.edge_rec* %139 to i64
  %141 = and i64 %140, -128
  %142 = or i64 %128, %141
  %143 = inttoptr i64 %142 to %struct.edge_rec*
  store %struct.edge_rec* %143, %struct.edge_rec** %14, align 8
  %144 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %145 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %144, i32 0, i32 0
  %146 = load %struct.VERTEX*, %struct.VERTEX** %145, align 8
  store %struct.VERTEX* %146, %struct.VERTEX** %16, align 8
  %147 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %148 = ptrtoint %struct.edge_rec* %147 to i64
  %149 = xor i64 %148, 64
  %150 = inttoptr i64 %149 to %struct.edge_rec*
  %151 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %150, i32 0, i32 0
  %152 = load %struct.VERTEX*, %struct.VERTEX** %151, align 8
  store %struct.VERTEX* %152, %struct.VERTEX** %17, align 8
  %153 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %154 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %155 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %154, i32 0, i32 0
  %156 = load %struct.VERTEX*, %struct.VERTEX** %155, align 8
  %157 = icmp eq %struct.VERTEX* %153, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %102
  %159 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  store %struct.edge_rec* %159, %struct.edge_rec** %9, align 8
  br label %160

160:                                              ; preds = %158, %102
  %161 = load %struct.VERTEX*, %struct.VERTEX** %17, align 8
  %162 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %163 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %162, i32 0, i32 0
  %164 = load %struct.VERTEX*, %struct.VERTEX** %163, align 8
  %165 = icmp eq %struct.VERTEX* %161, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %168 = ptrtoint %struct.edge_rec* %167 to i64
  %169 = xor i64 %168, 64
  %170 = inttoptr i64 %169 to %struct.edge_rec*
  store %struct.edge_rec* %170, %struct.edge_rec** %6, align 8
  br label %171

171:                                              ; preds = %166, %160
  br label %172

172:                                              ; preds = %450, %171
  %173 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %174 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %173, i32 0, i32 1
  %175 = load %struct.edge_rec*, %struct.edge_rec** %174, align 8
  store %struct.edge_rec* %175, %struct.edge_rec** %15, align 8
  %176 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  %177 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %178 = call i32 @valid(%struct.edge_rec* %176, %struct.edge_rec* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %228

180:                                              ; preds = %172
  %181 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %182 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %181, i32 0, i32 0
  %183 = load %struct.VERTEX*, %struct.VERTEX** %182, align 8
  store %struct.VERTEX* %183, %struct.VERTEX** %22, align 8
  %184 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %185 = ptrtoint %struct.edge_rec* %184 to i64
  %186 = xor i64 %185, 64
  %187 = inttoptr i64 %186 to %struct.edge_rec*
  %188 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %187, i32 0, i32 0
  %189 = load %struct.VERTEX*, %struct.VERTEX** %188, align 8
  store %struct.VERTEX* %189, %struct.VERTEX** %19, align 8
  %190 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %191 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %190, i32 0, i32 0
  %192 = load %struct.VERTEX*, %struct.VERTEX** %191, align 8
  store %struct.VERTEX* %192, %struct.VERTEX** %21, align 8
  %193 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  %194 = ptrtoint %struct.edge_rec* %193 to i64
  %195 = xor i64 %194, 64
  %196 = inttoptr i64 %195 to %struct.edge_rec*
  %197 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %196, i32 0, i32 0
  %198 = load %struct.VERTEX*, %struct.VERTEX** %197, align 8
  store %struct.VERTEX* %198, %struct.VERTEX** %20, align 8
  br label %199

199:                                              ; preds = %206, %180
  %200 = load %struct.VERTEX*, %struct.VERTEX** %19, align 8
  %201 = load %struct.VERTEX*, %struct.VERTEX** %20, align 8
  %202 = load %struct.VERTEX*, %struct.VERTEX** %21, align 8
  %203 = load %struct.VERTEX*, %struct.VERTEX** %22, align 8
  %204 = call i32 @incircle(%struct.VERTEX* %200, %struct.VERTEX* %201, %struct.VERTEX* %202, %struct.VERTEX* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %227

206:                                              ; preds = %199
  %207 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  call void @deleteedge(%struct.edge_rec* %207)
  %208 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  store %struct.edge_rec* %208, %struct.edge_rec** %13, align 8
  %209 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %210 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %209, i32 0, i32 1
  %211 = load %struct.edge_rec*, %struct.edge_rec** %210, align 8
  store %struct.edge_rec* %211, %struct.edge_rec** %15, align 8
  %212 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %213 = ptrtoint %struct.edge_rec* %212 to i64
  %214 = xor i64 %213, 64
  %215 = inttoptr i64 %214 to %struct.edge_rec*
  %216 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %215, i32 0, i32 0
  %217 = load %struct.VERTEX*, %struct.VERTEX** %216, align 8
  store %struct.VERTEX* %217, %struct.VERTEX** %19, align 8
  %218 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %219 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %218, i32 0, i32 0
  %220 = load %struct.VERTEX*, %struct.VERTEX** %219, align 8
  store %struct.VERTEX* %220, %struct.VERTEX** %21, align 8
  %221 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  %222 = ptrtoint %struct.edge_rec* %221 to i64
  %223 = xor i64 %222, 64
  %224 = inttoptr i64 %223 to %struct.edge_rec*
  %225 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %224, i32 0, i32 0
  %226 = load %struct.VERTEX*, %struct.VERTEX** %225, align 8
  store %struct.VERTEX* %226, %struct.VERTEX** %20, align 8
  br label %199

227:                                              ; preds = %199
  br label %228

228:                                              ; preds = %227, %172
  %229 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %230 = ptrtoint %struct.edge_rec* %229 to i64
  %231 = add i64 %230, 32
  %232 = and i64 %231, 127
  %233 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %234 = ptrtoint %struct.edge_rec* %233 to i64
  %235 = and i64 %234, -128
  %236 = or i64 %232, %235
  %237 = inttoptr i64 %236 to %struct.edge_rec*
  %238 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %237, i32 0, i32 1
  %239 = load %struct.edge_rec*, %struct.edge_rec** %238, align 8
  %240 = ptrtoint %struct.edge_rec* %239 to i64
  %241 = add i64 %240, 32
  %242 = and i64 %241, 127
  %243 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %244 = ptrtoint %struct.edge_rec* %243 to i64
  %245 = add i64 %244, 32
  %246 = and i64 %245, 127
  %247 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %248 = ptrtoint %struct.edge_rec* %247 to i64
  %249 = and i64 %248, -128
  %250 = or i64 %246, %249
  %251 = inttoptr i64 %250 to %struct.edge_rec*
  %252 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %251, i32 0, i32 1
  %253 = load %struct.edge_rec*, %struct.edge_rec** %252, align 8
  %254 = ptrtoint %struct.edge_rec* %253 to i64
  %255 = and i64 %254, -128
  %256 = or i64 %242, %255
  %257 = inttoptr i64 %256 to %struct.edge_rec*
  store %struct.edge_rec* %257, %struct.edge_rec** %15, align 8
  %258 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  %259 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %260 = call i32 @valid(%struct.edge_rec* %258, %struct.edge_rec* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %339

262:                                              ; preds = %228
  %263 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %264 = ptrtoint %struct.edge_rec* %263 to i64
  %265 = xor i64 %264, 64
  %266 = inttoptr i64 %265 to %struct.edge_rec*
  %267 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %266, i32 0, i32 0
  %268 = load %struct.VERTEX*, %struct.VERTEX** %267, align 8
  store %struct.VERTEX* %268, %struct.VERTEX** %22, align 8
  %269 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  %270 = ptrtoint %struct.edge_rec* %269 to i64
  %271 = xor i64 %270, 64
  %272 = inttoptr i64 %271 to %struct.edge_rec*
  %273 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %272, i32 0, i32 0
  %274 = load %struct.VERTEX*, %struct.VERTEX** %273, align 8
  store %struct.VERTEX* %274, %struct.VERTEX** %19, align 8
  %275 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %276 = ptrtoint %struct.edge_rec* %275 to i64
  %277 = xor i64 %276, 64
  %278 = inttoptr i64 %277 to %struct.edge_rec*
  %279 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %278, i32 0, i32 0
  %280 = load %struct.VERTEX*, %struct.VERTEX** %279, align 8
  store %struct.VERTEX* %280, %struct.VERTEX** %20, align 8
  %281 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %282 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %281, i32 0, i32 0
  %283 = load %struct.VERTEX*, %struct.VERTEX** %282, align 8
  store %struct.VERTEX* %283, %struct.VERTEX** %21, align 8
  br label %284

284:                                              ; preds = %291, %262
  %285 = load %struct.VERTEX*, %struct.VERTEX** %19, align 8
  %286 = load %struct.VERTEX*, %struct.VERTEX** %20, align 8
  %287 = load %struct.VERTEX*, %struct.VERTEX** %21, align 8
  %288 = load %struct.VERTEX*, %struct.VERTEX** %22, align 8
  %289 = call i32 @incircle(%struct.VERTEX* %285, %struct.VERTEX* %286, %struct.VERTEX* %287, %struct.VERTEX* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %338

291:                                              ; preds = %284
  %292 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  call void @deleteedge(%struct.edge_rec* %292)
  %293 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  store %struct.edge_rec* %293, %struct.edge_rec** %14, align 8
  %294 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %295 = ptrtoint %struct.edge_rec* %294 to i64
  %296 = add i64 %295, 32
  %297 = and i64 %296, 127
  %298 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %299 = ptrtoint %struct.edge_rec* %298 to i64
  %300 = and i64 %299, -128
  %301 = or i64 %297, %300
  %302 = inttoptr i64 %301 to %struct.edge_rec*
  %303 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %302, i32 0, i32 1
  %304 = load %struct.edge_rec*, %struct.edge_rec** %303, align 8
  %305 = ptrtoint %struct.edge_rec* %304 to i64
  %306 = add i64 %305, 32
  %307 = and i64 %306, 127
  %308 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %309 = ptrtoint %struct.edge_rec* %308 to i64
  %310 = add i64 %309, 32
  %311 = and i64 %310, 127
  %312 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %313 = ptrtoint %struct.edge_rec* %312 to i64
  %314 = and i64 %313, -128
  %315 = or i64 %311, %314
  %316 = inttoptr i64 %315 to %struct.edge_rec*
  %317 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %316, i32 0, i32 1
  %318 = load %struct.edge_rec*, %struct.edge_rec** %317, align 8
  %319 = ptrtoint %struct.edge_rec* %318 to i64
  %320 = and i64 %319, -128
  %321 = or i64 %307, %320
  %322 = inttoptr i64 %321 to %struct.edge_rec*
  store %struct.edge_rec* %322, %struct.edge_rec** %15, align 8
  %323 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %324 = ptrtoint %struct.edge_rec* %323 to i64
  %325 = xor i64 %324, 64
  %326 = inttoptr i64 %325 to %struct.edge_rec*
  %327 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %326, i32 0, i32 0
  %328 = load %struct.VERTEX*, %struct.VERTEX** %327, align 8
  store %struct.VERTEX* %328, %struct.VERTEX** %20, align 8
  %329 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %330 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %329, i32 0, i32 0
  %331 = load %struct.VERTEX*, %struct.VERTEX** %330, align 8
  store %struct.VERTEX* %331, %struct.VERTEX** %21, align 8
  %332 = load %struct.edge_rec*, %struct.edge_rec** %15, align 8
  %333 = ptrtoint %struct.edge_rec* %332 to i64
  %334 = xor i64 %333, 64
  %335 = inttoptr i64 %334 to %struct.edge_rec*
  %336 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %335, i32 0, i32 0
  %337 = load %struct.VERTEX*, %struct.VERTEX** %336, align 8
  store %struct.VERTEX* %337, %struct.VERTEX** %19, align 8
  br label %284

338:                                              ; preds = %284
  br label %339

339:                                              ; preds = %338, %228
  %340 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %341 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %342 = call i32 @valid(%struct.edge_rec* %340, %struct.edge_rec* %341)
  store i32 %342, i32* %11, align 4
  %343 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %344 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %345 = call i32 @valid(%struct.edge_rec* %343, %struct.edge_rec* %344)
  store i32 %345, i32* %10, align 4
  %346 = load i32, i32* %11, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %339
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %358, label %351

351:                                              ; preds = %348
  %352 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  %353 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %5, i32 0, i32 0
  store %struct.edge_rec* %352, %struct.edge_rec** %353, align 8
  %354 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %355 = getelementptr inbounds %struct.EDGE_PAIR, %struct.EDGE_PAIR* %5, i32 0, i32 1
  store %struct.edge_rec* %354, %struct.edge_rec** %355, align 8
  %356 = bitcast %struct.EDGE_PAIR* %5 to { %struct.edge_rec*, %struct.edge_rec* }*
  %357 = load { %struct.edge_rec*, %struct.edge_rec* }, { %struct.edge_rec*, %struct.edge_rec* }* %356, align 8
  ret { %struct.edge_rec*, %struct.edge_rec* } %357

358:                                              ; preds = %348, %339
  %359 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %360 = ptrtoint %struct.edge_rec* %359 to i64
  %361 = xor i64 %360, 64
  %362 = inttoptr i64 %361 to %struct.edge_rec*
  %363 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %362, i32 0, i32 0
  %364 = load %struct.VERTEX*, %struct.VERTEX** %363, align 8
  store %struct.VERTEX* %364, %struct.VERTEX** %19, align 8
  %365 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %366 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %365, i32 0, i32 0
  %367 = load %struct.VERTEX*, %struct.VERTEX** %366, align 8
  store %struct.VERTEX* %367, %struct.VERTEX** %20, align 8
  %368 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %369 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %368, i32 0, i32 0
  %370 = load %struct.VERTEX*, %struct.VERTEX** %369, align 8
  store %struct.VERTEX* %370, %struct.VERTEX** %21, align 8
  %371 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %372 = ptrtoint %struct.edge_rec* %371 to i64
  %373 = xor i64 %372, 64
  %374 = inttoptr i64 %373 to %struct.edge_rec*
  %375 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %374, i32 0, i32 0
  %376 = load %struct.VERTEX*, %struct.VERTEX** %375, align 8
  store %struct.VERTEX* %376, %struct.VERTEX** %22, align 8
  %377 = load i32, i32* %11, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %358
  %380 = load i32, i32* %10, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %437

382:                                              ; preds = %379
  %383 = load %struct.VERTEX*, %struct.VERTEX** %19, align 8
  %384 = load %struct.VERTEX*, %struct.VERTEX** %20, align 8
  %385 = load %struct.VERTEX*, %struct.VERTEX** %21, align 8
  %386 = load %struct.VERTEX*, %struct.VERTEX** %22, align 8
  %387 = call i32 @incircle(%struct.VERTEX* %383, %struct.VERTEX* %384, %struct.VERTEX* %385, %struct.VERTEX* %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %437

389:                                              ; preds = %382, %358
  %390 = load %struct.edge_rec*, %struct.edge_rec** %14, align 8
  %391 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %392 = ptrtoint %struct.edge_rec* %391 to i64
  %393 = xor i64 %392, 64
  %394 = inttoptr i64 %393 to %struct.edge_rec*
  %395 = call %struct.edge_rec* @connect_left(%struct.edge_rec* %390, %struct.edge_rec* %394)
  store %struct.edge_rec* %395, %struct.edge_rec** %12, align 8
  %396 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %397 = ptrtoint %struct.edge_rec* %396 to i64
  %398 = xor i64 %397, 64
  %399 = inttoptr i64 %398 to %struct.edge_rec*
  %400 = ptrtoint %struct.edge_rec* %399 to i64
  %401 = add i64 %400, 96
  %402 = and i64 %401, 127
  %403 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %404 = ptrtoint %struct.edge_rec* %403 to i64
  %405 = xor i64 %404, 64
  %406 = inttoptr i64 %405 to %struct.edge_rec*
  %407 = ptrtoint %struct.edge_rec* %406 to i64
  %408 = and i64 %407, -128
  %409 = or i64 %402, %408
  %410 = inttoptr i64 %409 to %struct.edge_rec*
  %411 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %410, i32 0, i32 1
  %412 = load %struct.edge_rec*, %struct.edge_rec** %411, align 8
  %413 = ptrtoint %struct.edge_rec* %412 to i64
  %414 = add i64 %413, 32
  %415 = and i64 %414, 127
  %416 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %417 = ptrtoint %struct.edge_rec* %416 to i64
  %418 = xor i64 %417, 64
  %419 = inttoptr i64 %418 to %struct.edge_rec*
  %420 = ptrtoint %struct.edge_rec* %419 to i64
  %421 = add i64 %420, 96
  %422 = and i64 %421, 127
  %423 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %424 = ptrtoint %struct.edge_rec* %423 to i64
  %425 = xor i64 %424, 64
  %426 = inttoptr i64 %425 to %struct.edge_rec*
  %427 = ptrtoint %struct.edge_rec* %426 to i64
  %428 = and i64 %427, -128
  %429 = or i64 %422, %428
  %430 = inttoptr i64 %429 to %struct.edge_rec*
  %431 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %430, i32 0, i32 1
  %432 = load %struct.edge_rec*, %struct.edge_rec** %431, align 8
  %433 = ptrtoint %struct.edge_rec* %432 to i64
  %434 = and i64 %433, -128
  %435 = or i64 %415, %434
  %436 = inttoptr i64 %435 to %struct.edge_rec*
  store %struct.edge_rec* %436, %struct.edge_rec** %14, align 8
  br label %450

437:                                              ; preds = %382, %379
  %438 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  %439 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %440 = call %struct.edge_rec* @connect_right(%struct.edge_rec* %438, %struct.edge_rec* %439)
  %441 = ptrtoint %struct.edge_rec* %440 to i64
  %442 = xor i64 %441, 64
  %443 = inttoptr i64 %442 to %struct.edge_rec*
  store %struct.edge_rec* %443, %struct.edge_rec** %12, align 8
  %444 = load %struct.edge_rec*, %struct.edge_rec** %12, align 8
  %445 = ptrtoint %struct.edge_rec* %444 to i64
  %446 = xor i64 %445, 64
  %447 = inttoptr i64 %446 to %struct.edge_rec*
  %448 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %447, i32 0, i32 1
  %449 = load %struct.edge_rec*, %struct.edge_rec** %448, align 8
  store %struct.edge_rec* %449, %struct.edge_rec** %13, align 8
  br label %450

450:                                              ; preds = %437, %389
  br label %172
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ccw(%struct.VERTEX* %0, %struct.VERTEX* %1, %struct.VERTEX* %2) #0 {
  %4 = alloca %struct.VERTEX*, align 8
  %5 = alloca %struct.VERTEX*, align 8
  %6 = alloca %struct.VERTEX*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.VERTEX*, align 8
  %15 = alloca %struct.VERTEX*, align 8
  %16 = alloca %struct.VERTEX*, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %4, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %5, align 8
  store %struct.VERTEX* %2, %struct.VERTEX** %6, align 8
  %17 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  store %struct.VERTEX* %17, %struct.VERTEX** %14, align 8
  %18 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %19 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  store double %21, double* %8, align 8
  %22 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %23 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %23, i32 0, i32 1
  %25 = load double, double* %24, align 8
  store double %25, double* %9, align 8
  %26 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  store %struct.VERTEX* %26, %struct.VERTEX** %15, align 8
  %27 = load %struct.VERTEX*, %struct.VERTEX** %15, align 8
  %28 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  store double %30, double* %10, align 8
  %31 = load %struct.VERTEX*, %struct.VERTEX** %15, align 8
  %32 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  store double %34, double* %11, align 8
  %35 = load %struct.VERTEX*, %struct.VERTEX** %6, align 8
  store %struct.VERTEX* %35, %struct.VERTEX** %16, align 8
  %36 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %37 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  store double %39, double* %12, align 8
  %40 = load %struct.VERTEX*, %struct.VERTEX** %16, align 8
  %41 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  store double %43, double* %13, align 8
  %44 = load double, double* %8, align 8
  %45 = load double, double* %12, align 8
  %46 = fsub double %44, %45
  %47 = load double, double* %11, align 8
  %48 = load double, double* %13, align 8
  %49 = fsub double %47, %48
  %50 = fmul double %46, %49
  %51 = load double, double* %10, align 8
  %52 = load double, double* %12, align 8
  %53 = fsub double %51, %52
  %54 = load double, double* %9, align 8
  %55 = load double, double* %13, align 8
  %56 = fsub double %54, %55
  %57 = fmul double %53, %56
  %58 = fsub double %50, %57
  store double %58, double* %7, align 8
  %59 = load double, double* %7, align 8
  %60 = fcmp ogt double %59, 0.000000e+00
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid(%struct.edge_rec* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.edge_rec*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.VERTEX*, align 8
  %6 = alloca %struct.VERTEX*, align 8
  %7 = alloca %struct.VERTEX*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %8 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %9 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %8, i32 0, i32 0
  %10 = load %struct.VERTEX*, %struct.VERTEX** %9, align 8
  store %struct.VERTEX* %10, %struct.VERTEX** %5, align 8
  %11 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %12 = ptrtoint %struct.edge_rec* %11 to i64
  %13 = xor i64 %12, 64
  %14 = inttoptr i64 %13 to %struct.edge_rec*
  %15 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %14, i32 0, i32 0
  %16 = load %struct.VERTEX*, %struct.VERTEX** %15, align 8
  store %struct.VERTEX* %16, %struct.VERTEX** %7, align 8
  %17 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %18 = ptrtoint %struct.edge_rec* %17 to i64
  %19 = xor i64 %18, 64
  %20 = inttoptr i64 %19 to %struct.edge_rec*
  %21 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %20, i32 0, i32 0
  %22 = load %struct.VERTEX*, %struct.VERTEX** %21, align 8
  store %struct.VERTEX* %22, %struct.VERTEX** %6, align 8
  %23 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  %24 = load %struct.VERTEX*, %struct.VERTEX** %6, align 8
  %25 = load %struct.VERTEX*, %struct.VERTEX** %7, align 8
  %26 = call i32 @ccw(%struct.VERTEX* %23, %struct.VERTEX* %24, %struct.VERTEX* %25)
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @incircle(%struct.VERTEX* %0, %struct.VERTEX* %1, %struct.VERTEX* %2, %struct.VERTEX* %3) #0 {
  %5 = alloca %struct.VERTEX*, align 8
  %6 = alloca %struct.VERTEX*, align 8
  %7 = alloca %struct.VERTEX*, align 8
  %8 = alloca %struct.VERTEX*, align 8
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
  %22 = alloca %struct.VERTEX*, align 8
  %23 = alloca %struct.VERTEX*, align 8
  %24 = alloca %struct.VERTEX*, align 8
  %25 = alloca %struct.VERTEX*, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %5, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %6, align 8
  store %struct.VERTEX* %2, %struct.VERTEX** %7, align 8
  store %struct.VERTEX* %3, %struct.VERTEX** %8, align 8
  %26 = load %struct.VERTEX*, %struct.VERTEX** %8, align 8
  store %struct.VERTEX* %26, %struct.VERTEX** %25, align 8
  %27 = load %struct.VERTEX*, %struct.VERTEX** %25, align 8
  %28 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  store double %30, double* %15, align 8
  %31 = load %struct.VERTEX*, %struct.VERTEX** %25, align 8
  %32 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  store double %34, double* %16, align 8
  %35 = load %struct.VERTEX*, %struct.VERTEX** %25, align 8
  %36 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %36, i32 0, i32 2
  %38 = load double, double* %37, align 8
  store double %38, double* %20, align 8
  %39 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  store %struct.VERTEX* %39, %struct.VERTEX** %22, align 8
  %40 = load %struct.VERTEX*, %struct.VERTEX** %22, align 8
  %41 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = load double, double* %15, align 8
  %45 = fsub double %43, %44
  store double %45, double* %9, align 8
  %46 = load %struct.VERTEX*, %struct.VERTEX** %22, align 8
  %47 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = load double, double* %16, align 8
  %51 = fsub double %49, %50
  store double %51, double* %10, align 8
  %52 = load %struct.VERTEX*, %struct.VERTEX** %22, align 8
  %53 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  store double %55, double* %17, align 8
  %56 = load %struct.VERTEX*, %struct.VERTEX** %6, align 8
  store %struct.VERTEX* %56, %struct.VERTEX** %23, align 8
  %57 = load %struct.VERTEX*, %struct.VERTEX** %23, align 8
  %58 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = load double, double* %15, align 8
  %62 = fsub double %60, %61
  store double %62, double* %11, align 8
  %63 = load %struct.VERTEX*, %struct.VERTEX** %23, align 8
  %64 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %64, i32 0, i32 1
  %66 = load double, double* %65, align 8
  %67 = load double, double* %16, align 8
  %68 = fsub double %66, %67
  store double %68, double* %12, align 8
  %69 = load %struct.VERTEX*, %struct.VERTEX** %23, align 8
  %70 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %70, i32 0, i32 2
  %72 = load double, double* %71, align 8
  store double %72, double* %18, align 8
  %73 = load %struct.VERTEX*, %struct.VERTEX** %7, align 8
  store %struct.VERTEX* %73, %struct.VERTEX** %24, align 8
  %74 = load %struct.VERTEX*, %struct.VERTEX** %24, align 8
  %75 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %75, i32 0, i32 0
  %77 = load double, double* %76, align 8
  %78 = load double, double* %15, align 8
  %79 = fsub double %77, %78
  store double %79, double* %13, align 8
  %80 = load %struct.VERTEX*, %struct.VERTEX** %24, align 8
  %81 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %81, i32 0, i32 1
  %83 = load double, double* %82, align 8
  %84 = load double, double* %16, align 8
  %85 = fsub double %83, %84
  store double %85, double* %14, align 8
  %86 = load %struct.VERTEX*, %struct.VERTEX** %24, align 8
  %87 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %87, i32 0, i32 2
  %89 = load double, double* %88, align 8
  store double %89, double* %19, align 8
  %90 = load double, double* %17, align 8
  %91 = load double, double* %20, align 8
  %92 = fsub double %90, %91
  %93 = load double, double* %11, align 8
  %94 = load double, double* %14, align 8
  %95 = fmul double %93, %94
  %96 = load double, double* %12, align 8
  %97 = load double, double* %13, align 8
  %98 = fmul double %96, %97
  %99 = fsub double %95, %98
  %100 = fmul double %92, %99
  store double %100, double* %21, align 8
  %101 = load double, double* %18, align 8
  %102 = load double, double* %20, align 8
  %103 = fsub double %101, %102
  %104 = load double, double* %13, align 8
  %105 = load double, double* %10, align 8
  %106 = fmul double %104, %105
  %107 = load double, double* %14, align 8
  %108 = load double, double* %9, align 8
  %109 = fmul double %107, %108
  %110 = fsub double %106, %109
  %111 = fmul double %103, %110
  %112 = load double, double* %21, align 8
  %113 = fadd double %112, %111
  store double %113, double* %21, align 8
  %114 = load double, double* %19, align 8
  %115 = load double, double* %20, align 8
  %116 = fsub double %114, %115
  %117 = load double, double* %9, align 8
  %118 = load double, double* %12, align 8
  %119 = fmul double %117, %118
  %120 = load double, double* %10, align 8
  %121 = load double, double* %11, align 8
  %122 = fmul double %120, %121
  %123 = fsub double %119, %122
  %124 = fmul double %116, %123
  %125 = load double, double* %21, align 8
  %126 = fadd double %125, %124
  store double %126, double* %21, align 8
  %127 = load double, double* %21, align 8
  %128 = fcmp olt double 0.000000e+00, %127
  %129 = zext i1 %128 to i32
  ret i32 %129
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @delete_all_edges() #0 {
  store %struct.edge_rec* null, %struct.edge_rec** @next_edge, align 8
  store %struct.edge_rec* null, %struct.edge_rec** @avail_edge, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @swapedge(%struct.edge_rec* %0) #0 {
  %2 = alloca %struct.edge_rec*, align 8
  %3 = alloca %struct.edge_rec*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.edge_rec*, align 8
  %6 = alloca %struct.edge_rec*, align 8
  %7 = alloca %struct.VERTEX*, align 8
  %8 = alloca %struct.VERTEX*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %2, align 8
  %9 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %10 = ptrtoint %struct.edge_rec* %9 to i64
  %11 = add i64 %10, 32
  %12 = and i64 %11, 127
  %13 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %14 = ptrtoint %struct.edge_rec* %13 to i64
  %15 = and i64 %14, -128
  %16 = or i64 %12, %15
  %17 = inttoptr i64 %16 to %struct.edge_rec*
  %18 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %17, i32 0, i32 1
  %19 = load %struct.edge_rec*, %struct.edge_rec** %18, align 8
  %20 = ptrtoint %struct.edge_rec* %19 to i64
  %21 = add i64 %20, 32
  %22 = and i64 %21, 127
  %23 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %24 = ptrtoint %struct.edge_rec* %23 to i64
  %25 = add i64 %24, 32
  %26 = and i64 %25, 127
  %27 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %28 = ptrtoint %struct.edge_rec* %27 to i64
  %29 = and i64 %28, -128
  %30 = or i64 %26, %29
  %31 = inttoptr i64 %30 to %struct.edge_rec*
  %32 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %31, i32 0, i32 1
  %33 = load %struct.edge_rec*, %struct.edge_rec** %32, align 8
  %34 = ptrtoint %struct.edge_rec* %33 to i64
  %35 = and i64 %34, -128
  %36 = or i64 %22, %35
  %37 = inttoptr i64 %36 to %struct.edge_rec*
  store %struct.edge_rec* %37, %struct.edge_rec** %3, align 8
  %38 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %39 = ptrtoint %struct.edge_rec* %38 to i64
  %40 = xor i64 %39, 64
  %41 = inttoptr i64 %40 to %struct.edge_rec*
  store %struct.edge_rec* %41, %struct.edge_rec** %5, align 8
  %42 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %43 = ptrtoint %struct.edge_rec* %42 to i64
  %44 = add i64 %43, 32
  %45 = and i64 %44, 127
  %46 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %47 = ptrtoint %struct.edge_rec* %46 to i64
  %48 = and i64 %47, -128
  %49 = or i64 %45, %48
  %50 = inttoptr i64 %49 to %struct.edge_rec*
  %51 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %50, i32 0, i32 1
  %52 = load %struct.edge_rec*, %struct.edge_rec** %51, align 8
  %53 = ptrtoint %struct.edge_rec* %52 to i64
  %54 = add i64 %53, 32
  %55 = and i64 %54, 127
  %56 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %57 = ptrtoint %struct.edge_rec* %56 to i64
  %58 = add i64 %57, 32
  %59 = and i64 %58, 127
  %60 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %61 = ptrtoint %struct.edge_rec* %60 to i64
  %62 = and i64 %61, -128
  %63 = or i64 %59, %62
  %64 = inttoptr i64 %63 to %struct.edge_rec*
  %65 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %64, i32 0, i32 1
  %66 = load %struct.edge_rec*, %struct.edge_rec** %65, align 8
  %67 = ptrtoint %struct.edge_rec* %66 to i64
  %68 = and i64 %67, -128
  %69 = or i64 %55, %68
  %70 = inttoptr i64 %69 to %struct.edge_rec*
  store %struct.edge_rec* %70, %struct.edge_rec** %4, align 8
  %71 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %72 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  call void @splice(%struct.edge_rec* %71, %struct.edge_rec* %72)
  %73 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %74 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  call void @splice(%struct.edge_rec* %73, %struct.edge_rec* %74)
  %75 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %76 = ptrtoint %struct.edge_rec* %75 to i64
  %77 = add i64 %76, 96
  %78 = and i64 %77, 127
  %79 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %80 = ptrtoint %struct.edge_rec* %79 to i64
  %81 = and i64 %80, -128
  %82 = or i64 %78, %81
  %83 = inttoptr i64 %82 to %struct.edge_rec*
  %84 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %83, i32 0, i32 1
  %85 = load %struct.edge_rec*, %struct.edge_rec** %84, align 8
  %86 = ptrtoint %struct.edge_rec* %85 to i64
  %87 = add i64 %86, 32
  %88 = and i64 %87, 127
  %89 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %90 = ptrtoint %struct.edge_rec* %89 to i64
  %91 = add i64 %90, 96
  %92 = and i64 %91, 127
  %93 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %94 = ptrtoint %struct.edge_rec* %93 to i64
  %95 = and i64 %94, -128
  %96 = or i64 %92, %95
  %97 = inttoptr i64 %96 to %struct.edge_rec*
  %98 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %97, i32 0, i32 1
  %99 = load %struct.edge_rec*, %struct.edge_rec** %98, align 8
  %100 = ptrtoint %struct.edge_rec* %99 to i64
  %101 = and i64 %100, -128
  %102 = or i64 %88, %101
  %103 = inttoptr i64 %102 to %struct.edge_rec*
  store %struct.edge_rec* %103, %struct.edge_rec** %6, align 8
  %104 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %105 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  call void @splice(%struct.edge_rec* %104, %struct.edge_rec* %105)
  %106 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %107 = ptrtoint %struct.edge_rec* %106 to i64
  %108 = add i64 %107, 96
  %109 = and i64 %108, 127
  %110 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %111 = ptrtoint %struct.edge_rec* %110 to i64
  %112 = and i64 %111, -128
  %113 = or i64 %109, %112
  %114 = inttoptr i64 %113 to %struct.edge_rec*
  %115 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %114, i32 0, i32 1
  %116 = load %struct.edge_rec*, %struct.edge_rec** %115, align 8
  %117 = ptrtoint %struct.edge_rec* %116 to i64
  %118 = add i64 %117, 32
  %119 = and i64 %118, 127
  %120 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %121 = ptrtoint %struct.edge_rec* %120 to i64
  %122 = add i64 %121, 96
  %123 = and i64 %122, 127
  %124 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %125 = ptrtoint %struct.edge_rec* %124 to i64
  %126 = and i64 %125, -128
  %127 = or i64 %123, %126
  %128 = inttoptr i64 %127 to %struct.edge_rec*
  %129 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %128, i32 0, i32 1
  %130 = load %struct.edge_rec*, %struct.edge_rec** %129, align 8
  %131 = ptrtoint %struct.edge_rec* %130 to i64
  %132 = and i64 %131, -128
  %133 = or i64 %119, %132
  %134 = inttoptr i64 %133 to %struct.edge_rec*
  store %struct.edge_rec* %134, %struct.edge_rec** %6, align 8
  %135 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %136 = load %struct.edge_rec*, %struct.edge_rec** %6, align 8
  call void @splice(%struct.edge_rec* %135, %struct.edge_rec* %136)
  %137 = load %struct.edge_rec*, %struct.edge_rec** %3, align 8
  %138 = ptrtoint %struct.edge_rec* %137 to i64
  %139 = xor i64 %138, 64
  %140 = inttoptr i64 %139 to %struct.edge_rec*
  %141 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %140, i32 0, i32 0
  %142 = load %struct.VERTEX*, %struct.VERTEX** %141, align 8
  store %struct.VERTEX* %142, %struct.VERTEX** %7, align 8
  %143 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %144 = ptrtoint %struct.edge_rec* %143 to i64
  %145 = xor i64 %144, 64
  %146 = inttoptr i64 %145 to %struct.edge_rec*
  %147 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %146, i32 0, i32 0
  %148 = load %struct.VERTEX*, %struct.VERTEX** %147, align 8
  store %struct.VERTEX* %148, %struct.VERTEX** %8, align 8
  %149 = load %struct.VERTEX*, %struct.VERTEX** %7, align 8
  %150 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %151 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %150, i32 0, i32 0
  store %struct.VERTEX* %149, %struct.VERTEX** %151, align 8
  %152 = load %struct.VERTEX*, %struct.VERTEX** %8, align 8
  %153 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %154 = ptrtoint %struct.edge_rec* %153 to i64
  %155 = xor i64 %154, 64
  %156 = inttoptr i64 %155 to %struct.edge_rec*
  %157 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %156, i32 0, i32 0
  store %struct.VERTEX* %152, %struct.VERTEX** %157, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_quad(%struct.edge_rec* %0) #0 {
  %2 = alloca %struct.edge_rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.VERTEX*, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %2, align 8
  %6 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %7 = ptrtoint %struct.edge_rec* %6 to i64
  %8 = and i64 %7, -128
  %9 = inttoptr i64 %8 to %struct.edge_rec*
  store %struct.edge_rec* %9, %struct.edge_rec** %2, align 8
  %10 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.edge_rec* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %16, i64 %18
  %20 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %19, i32 0, i32 1
  %21 = load %struct.edge_rec*, %struct.edge_rec** %20, align 8
  store %struct.edge_rec* %21, %struct.edge_rec** %4, align 8
  %22 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %23 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %22, i32 0, i32 0
  %24 = load %struct.VERTEX*, %struct.VERTEX** %23, align 8
  store %struct.VERTEX* %24, %struct.VERTEX** %5, align 8
  %25 = load %struct.edge_rec*, %struct.edge_rec** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %25, i64 %27
  %29 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %30 = load %struct.VERTEX*, %struct.VERTEX** %5, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), %struct.edge_rec* %28, %struct.edge_rec* %29, %struct.VERTEX* %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %12

35:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @in_order(%struct.VERTEX* %0) #0 {
  %2 = alloca %struct.VERTEX*, align 8
  %3 = alloca %struct.VERTEX*, align 8
  %4 = alloca %struct.VERTEX*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %2, align 8
  %7 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %8 = icmp ne %struct.VERTEX* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %13 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  store double %15, double* %5, align 8
  %16 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %17 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %17, i32 0, i32 1
  %19 = load double, double* %18, align 8
  store double %19, double* %6, align 8
  %20 = load double, double* %5, align 8
  %21 = load double, double* %6, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), double %20, double %21)
  %23 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %24 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %23, i32 0, i32 1
  %25 = load %struct.VERTEX*, %struct.VERTEX** %24, align 8
  store %struct.VERTEX* %25, %struct.VERTEX** %3, align 8
  %26 = load %struct.VERTEX*, %struct.VERTEX** %3, align 8
  call void @in_order(%struct.VERTEX* %26)
  %27 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %28 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %27, i32 0, i32 2
  %29 = load %struct.VERTEX*, %struct.VERTEX** %28, align 8
  store %struct.VERTEX* %29, %struct.VERTEX** %4, align 8
  %30 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  call void @in_order(%struct.VERTEX* %30)
  br label %31

31:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mult(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sdiv i32 %9, 10000
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = srem i32 %11, 10000
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 10000
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = srem i32 %15, 10000
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = srem i32 %23, 10000
  %25 = mul nsw i32 %24, 10000
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @skiprand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @myrandom(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @myrandom(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @mult(i32 %3, i32 31415821)
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_extra(%struct.VERTEX* %0) #0 {
  %2 = alloca %struct.VERTEX*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %2, align 8
  %5 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %6 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  store double %8, double* %3, align 8
  %9 = load %struct.VERTEX*, %struct.VERTEX** %2, align 8
  %10 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %4, align 8
  %13 = load double, double* %3, align 8
  %14 = load double, double* %4, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), double %13, double %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.EDGE_STACK*, align 8
  %7 = alloca %struct.get_point, align 8
  %8 = alloca %struct.get_point, align 8
  %9 = alloca %struct.edge_rec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.get_point, align 8
  %13 = alloca %struct.get_point, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* @to_color, align 4
  store i32 0, i32* @to_3d_out, align 4
  store i32 0, i32* @to_off, align 4
  store i32 0, i32* @to_lincoln, align 4
  store i32 1, i32* @delaunay, align 4
  store i32 1, i32* @voronoi, align 4
  store i32 0, i32* @ahost, align 4
  store i32 0, i32* @interactive, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.8, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @dealwithargs(i32 %16, i8** %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @NumNodes, align 4
  %23 = sub nsw i32 %22, 1
  call void @get_points(%struct.get_point* sret %12, i32 1, double 1.000000e+00, i32 %21, i32 1023, i32 %23, i32 1)
  %24 = bitcast %struct.get_point* %8 to i8*
  %25 = bitcast %struct.get_point* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 1
  %28 = getelementptr inbounds %struct.get_point, %struct.get_point* %8, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.get_point, %struct.get_point* %8, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NumNodes, align 4
  call void @get_points(%struct.get_point* sret %13, i32 %27, double %29, i32 %31, i32 %33, i32 0, i32 %34)
  %35 = bitcast %struct.get_point* %7 to i8*
  %36 = bitcast %struct.get_point* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @num_vertices, align 4
  %40 = load i32, i32* @num_vertices, align 4
  %41 = call %struct.EDGE_STACK* @allocate_stack(i32 %40)
  store %struct.EDGE_STACK* %41, %struct.EDGE_STACK** %6, align 8
  %42 = load i32, i32* @flag, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.get_point, %struct.get_point* %7, i32 0, i32 0
  %46 = load %struct.VERTEX*, %struct.VERTEX** %45, align 8
  call void @in_order(%struct.VERTEX* %46)
  br label %47

47:                                               ; preds = %44, %2
  %48 = load i32, i32* @flag, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.get_point, %struct.get_point* %8, i32 0, i32 0
  %52 = load %struct.VERTEX*, %struct.VERTEX** %51, align 8
  call void @print_extra(%struct.VERTEX* %52)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.get_point, %struct.get_point* %7, i32 0, i32 0
  %57 = load %struct.VERTEX*, %struct.VERTEX** %56, align 8
  %58 = getelementptr inbounds %struct.get_point, %struct.get_point* %8, i32 0, i32 0
  %59 = load %struct.VERTEX*, %struct.VERTEX** %58, align 8
  %60 = call %struct.edge_rec* @build_delaunay_triangulation(%struct.VERTEX* %57, %struct.VERTEX* %59)
  store %struct.edge_rec* %60, %struct.edge_rec** %9, align 8
  %61 = load i32, i32* @flag, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  call void @output_voronoi_diagram(%struct.edge_rec* %64, i32 %65, %struct.EDGE_STACK* %66)
  br label %67

67:                                               ; preds = %63, %53
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_points(%struct.get_point* noalias sret %0, i32 %1, double %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.VERTEX*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.get_point, align 8
  %17 = alloca %struct.get_point, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 %6, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 0
  store %struct.VERTEX* null, %struct.VERTEX** %21, align 8
  %22 = load double, double* %9, align 8
  %23 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 1
  store double %22, double* %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  br label %124

26:                                               ; preds = %7
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 2
  %29 = load double, double* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* %13, align 4
  %37 = sdiv i32 %36, 2
  call void @get_points(%struct.get_point* sret %16, i32 %28, double %29, i32 %30, i32 %31, i32 %35, i32 %37)
  %38 = bitcast %struct.get_point* %0 to i8*
  %39 = bitcast %struct.get_point* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 24, i1 false)
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %40, 2
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @NumNodes, align 4
  %45 = load i32, i32* @NumNodes, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sdiv i32 %46, 2
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %15, align 4
  %49 = call noalias i8* @malloc(i64 40) #10
  %50 = bitcast i8* %49 to %struct.VERTEX*
  store %struct.VERTEX* %50, %struct.VERTEX** %14, align 8
  %51 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 1
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @myrandom(i32 %54)
  %56 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = sitofp i32 %55 to double
  %58 = fdiv double %57, 0x41DFFFFFFFC00000
  %59 = call double @log(double %58) #10
  %60 = load i32, i32* %10, align 4
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %59, %61
  %63 = call double @exp(double %62) #10
  %64 = fmul double %52, %63
  %65 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %66 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %66, i32 0, i32 0
  store double %64, double* %67, align 8
  %68 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @myrandom(i32 %69)
  %71 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = sitofp i32 %70 to double
  %73 = fdiv double %72, 0x41DFFFFFFFC00000
  %74 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %75 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %75, i32 0, i32 1
  store double %73, double* %76, align 8
  %77 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %78 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %82 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %82, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fmul double %80, %84
  %86 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %87 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %87, i32 0, i32 1
  %89 = load double, double* %88, align 8
  %90 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %91 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %91, i32 0, i32 1
  %93 = load double, double* %92, align 8
  %94 = fmul double %89, %93
  %95 = fadd double %85, %94
  %96 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %97 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %97, i32 0, i32 2
  store double %95, double* %98, align 8
  %99 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 0
  %100 = load %struct.VERTEX*, %struct.VERTEX** %99, align 8
  %101 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %102 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %101, i32 0, i32 2
  store %struct.VERTEX* %100, %struct.VERTEX** %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sdiv i32 %103, 2
  %105 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %106 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %106, i32 0, i32 0
  %108 = load double, double* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 1
  %111 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sdiv i32 %114, 2
  call void @get_points(%struct.get_point* sret %17, i32 %104, double %108, i32 %110, i32 %112, i32 %113, i32 %115)
  %116 = bitcast %struct.get_point* %0 to i8*
  %117 = bitcast %struct.get_point* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 24, i1 false)
  %118 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 0
  %119 = load %struct.VERTEX*, %struct.VERTEX** %118, align 8
  %120 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %121 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %120, i32 0, i32 1
  store %struct.VERTEX* %119, %struct.VERTEX** %121, align 8
  %122 = load %struct.VERTEX*, %struct.VERTEX** %14, align 8
  %123 = getelementptr inbounds %struct.get_point, %struct.get_point* %0, i32 0, i32 0
  store %struct.VERTEX* %122, %struct.VERTEX** %123, align 8
  br label %124

124:                                              ; preds = %26, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.EDGE_STACK* @allocate_stack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.EDGE_STACK*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = mul nsw i32 12, %4
  store i32 %5, i32* @num_edgeparts, align 4
  %6 = call noalias i8* @malloc(i64 24) #10
  %7 = bitcast i8* %6 to %struct.EDGE_STACK*
  store %struct.EDGE_STACK* %7, %struct.EDGE_STACK** %3, align 8
  %8 = load i32, i32* @num_edgeparts, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = call noalias i8* @malloc(i64 %10) #10
  %12 = bitcast i8* %11 to %struct.edge_rec**
  %13 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %14 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %13, i32 0, i32 1
  store %struct.edge_rec** %12, %struct.edge_rec*** %14, align 8
  %15 = load i32, i32* @num_edgeparts, align 4
  %16 = sdiv i32 %15, 2
  %17 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %18 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  ret %struct.EDGE_STACK* %19
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare dso_local double @log(double) #4

; Function Attrs: nounwind
declare dso_local double @exp(double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_all(i32 %0, %struct.EDGE_STACK* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.EDGE_STACK*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.EDGE_STACK* %1, %struct.EDGE_STACK** %4, align 8
  %5 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %4, align 8
  %6 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %5, i32 0, i32 1
  %7 = load %struct.edge_rec**, %struct.edge_rec*** %6, align 8
  %8 = bitcast %struct.edge_rec** %7 to i8*
  call void @free(i8* %8) #10
  %9 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %4, align 8
  %10 = bitcast %struct.EDGE_STACK* %9 to i8*
  call void @free(i8* %10) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edge_rec* @pop_edge(%struct.EDGE_STACK* %0) #0 {
  %2 = alloca %struct.EDGE_STACK*, align 8
  %3 = alloca i32, align 4
  store %struct.EDGE_STACK* %0, %struct.EDGE_STACK** %2, align 8
  %4 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %2, align 8
  %5 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %8 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %2, align 8
  %9 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %8, i32 0, i32 1
  %10 = load %struct.edge_rec**, %struct.edge_rec*** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.edge_rec*, %struct.edge_rec** %10, i64 %12
  %14 = load %struct.edge_rec*, %struct.edge_rec** %13, align 8
  ret %struct.edge_rec* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_edge(%struct.EDGE_STACK* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.EDGE_STACK*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca i32, align 4
  store %struct.EDGE_STACK* %0, %struct.EDGE_STACK** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %6 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %7 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %10 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %17 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %23 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %25 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %26 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %25, i32 0, i32 1
  %27 = load %struct.edge_rec**, %struct.edge_rec*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.edge_rec*, %struct.edge_rec** %27, i64 %29
  store %struct.edge_rec* %24, %struct.edge_rec** %30, align 8
  br label %31

31:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_ring(%struct.EDGE_STACK* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.EDGE_STACK*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.edge_rec*, align 8
  store %struct.EDGE_STACK* %0, %struct.EDGE_STACK** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %6 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %7 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 1
  %8 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  store %struct.edge_rec* %8, %struct.edge_rec** %5, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %11 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %12 = icmp ne %struct.edge_rec* %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %15 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %20 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %19, i32 0, i32 2
  store i64 1, i64* %20, align 8
  %21 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %22 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  call void @push_edge(%struct.EDGE_STACK* %21, %struct.edge_rec* %22)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %25 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %24, i32 0, i32 1
  %26 = load %struct.edge_rec*, %struct.edge_rec** %25, align 8
  store %struct.edge_rec* %26, %struct.edge_rec** %5, align 8
  br label %9

27:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_nonzero_ring(%struct.EDGE_STACK* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.EDGE_STACK*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca %struct.edge_rec*, align 8
  store %struct.EDGE_STACK* %0, %struct.EDGE_STACK** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %6 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %7 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 1
  %8 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  store %struct.edge_rec* %8, %struct.edge_rec** %5, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %11 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %12 = icmp ne %struct.edge_rec* %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %15 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %20 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %22 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  call void @push_edge(%struct.EDGE_STACK* %21, %struct.edge_rec* %22)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.edge_rec*, %struct.edge_rec** %5, align 8
  %25 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %24, i32 0, i32 1
  %26 = load %struct.edge_rec*, %struct.edge_rec** %25, align 8
  store %struct.edge_rec* %26, %struct.edge_rec** %5, align 8
  br label %9

27:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zero_seen(%struct.EDGE_STACK* %0, %struct.edge_rec* %1) #0 {
  %3 = alloca %struct.EDGE_STACK*, align 8
  %4 = alloca %struct.edge_rec*, align 8
  store %struct.EDGE_STACK* %0, %struct.EDGE_STACK** %3, align 8
  store %struct.edge_rec* %1, %struct.edge_rec** %4, align 8
  %5 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %6 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %8 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  call void @push_nonzero_ring(%struct.EDGE_STACK* %7, %struct.edge_rec* %8)
  br label %9

9:                                                ; preds = %14, %2
  %10 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %11 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %16 = call %struct.edge_rec* @pop_edge(%struct.EDGE_STACK* %15)
  store %struct.edge_rec* %16, %struct.edge_rec** %4, align 8
  %17 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %3, align 8
  %18 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %19 = ptrtoint %struct.edge_rec* %18 to i64
  %20 = xor i64 %19, 64
  %21 = inttoptr i64 %20 to %struct.edge_rec*
  call void @push_nonzero_ring(%struct.EDGE_STACK* %17, %struct.edge_rec* %21)
  br label %9

22:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @plot_dedge(%struct.VERTEX* %0, %struct.VERTEX* %1) #0 {
  %3 = alloca %struct.VERTEX*, align 8
  %4 = alloca %struct.VERTEX*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.VERTEX* %0, %struct.VERTEX** %3, align 8
  store %struct.VERTEX* %1, %struct.VERTEX** %4, align 8
  %9 = load %struct.VERTEX*, %struct.VERTEX** %3, align 8
  %10 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  store double %12, double* %5, align 8
  %13 = load %struct.VERTEX*, %struct.VERTEX** %3, align 8
  %14 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  store double %16, double* %7, align 8
  %17 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %18 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %6, align 8
  %21 = load %struct.VERTEX*, %struct.VERTEX** %4, align 8
  %22 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  store double %24, double* %8, align 8
  %25 = load double, double* %5, align 8
  %26 = fptrunc double %25 to float
  %27 = fpext float %26 to double
  %28 = load double, double* %7, align 8
  %29 = fptrunc double %28 to float
  %30 = fpext float %29 to double
  %31 = load double, double* %6, align 8
  %32 = fptrunc double %31 to float
  %33 = fpext float %32 to double
  %34 = load double, double* %8, align 8
  %35 = fptrunc double %34 to float
  %36 = fpext float %35 to double
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), double %27, double %30, double %33, double %36)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @plot_vedge(%struct.VEC2* byval(%struct.VEC2) align 8 %0, %struct.VEC2* byval(%struct.VEC2) align 8 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fptrunc double %8 to float
  store float %9, float* %3, align 4
  %10 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fptrunc double %11 to float
  store float %12, float* %4, align 4
  %13 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fptrunc double %14 to float
  store float %15, float* %5, align 4
  %16 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fptrunc double %17 to float
  store float %18, float* %6, align 4
  br i1 true, label %19, label %23

19:                                               ; preds = %2
  %20 = load float, float* %3, align 4
  %21 = call i32 @__isnanf(float %20) #11
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %39

23:                                               ; preds = %2
  br i1 false, label %24, label %29

24:                                               ; preds = %23
  %25 = load float, float* %3, align 4
  %26 = fpext float %25 to double
  %27 = call i32 @__isnan(double %26) #11
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %39

29:                                               ; preds = %23
  %30 = load float, float* %3, align 4
  %31 = fpext float %30 to x86_fp80
  %32 = call i32 @__isnanl(x86_fp80 %31) #11
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %24, %19
  %35 = load float, float* %3, align 4
  %36 = fpext float %35 to double
  %37 = call double @llvm.copysign.f64(double %36, double 1.000000e+00)
  %38 = fptrunc double %37 to float
  store float %38, float* %3, align 4
  br label %39

39:                                               ; preds = %34, %29, %24, %19
  br i1 true, label %40, label %44

40:                                               ; preds = %39
  %41 = load float, float* %4, align 4
  %42 = call i32 @__isnanf(float %41) #11
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %60

44:                                               ; preds = %39
  br i1 false, label %45, label %50

45:                                               ; preds = %44
  %46 = load float, float* %4, align 4
  %47 = fpext float %46 to double
  %48 = call i32 @__isnan(double %47) #11
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %60

50:                                               ; preds = %44
  %51 = load float, float* %4, align 4
  %52 = fpext float %51 to x86_fp80
  %53 = call i32 @__isnanl(x86_fp80 %52) #11
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45, %40
  %56 = load float, float* %4, align 4
  %57 = fpext float %56 to double
  %58 = call double @llvm.copysign.f64(double %57, double 1.000000e+00)
  %59 = fptrunc double %58 to float
  store float %59, float* %4, align 4
  br label %60

60:                                               ; preds = %55, %50, %45, %40
  br i1 true, label %61, label %65

61:                                               ; preds = %60
  %62 = load float, float* %5, align 4
  %63 = call i32 @__isnanf(float %62) #11
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %81

65:                                               ; preds = %60
  br i1 false, label %66, label %71

66:                                               ; preds = %65
  %67 = load float, float* %5, align 4
  %68 = fpext float %67 to double
  %69 = call i32 @__isnan(double %68) #11
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %81

71:                                               ; preds = %65
  %72 = load float, float* %5, align 4
  %73 = fpext float %72 to x86_fp80
  %74 = call i32 @__isnanl(x86_fp80 %73) #11
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71, %66, %61
  %77 = load float, float* %5, align 4
  %78 = fpext float %77 to double
  %79 = call double @llvm.copysign.f64(double %78, double 1.000000e+00)
  %80 = fptrunc double %79 to float
  store float %80, float* %5, align 4
  br label %81

81:                                               ; preds = %76, %71, %66, %61
  br i1 true, label %82, label %86

82:                                               ; preds = %81
  %83 = load float, float* %6, align 4
  %84 = call i32 @__isnanf(float %83) #11
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %102

86:                                               ; preds = %81
  br i1 false, label %87, label %92

87:                                               ; preds = %86
  %88 = load float, float* %6, align 4
  %89 = fpext float %88 to double
  %90 = call i32 @__isnan(double %89) #11
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %102

92:                                               ; preds = %86
  %93 = load float, float* %6, align 4
  %94 = fpext float %93 to x86_fp80
  %95 = call i32 @__isnanl(x86_fp80 %94) #11
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %87, %82
  %98 = load float, float* %6, align 4
  %99 = fpext float %98 to double
  %100 = call double @llvm.copysign.f64(double %99, double 1.000000e+00)
  %101 = fptrunc double %100 to float
  store float %101, float* %6, align 4
  br label %102

102:                                              ; preds = %97, %92, %87, %82
  %103 = load float, float* %3, align 4
  %104 = fpext float %103 to double
  %105 = load float, float* %4, align 4
  %106 = fpext float %105 to double
  %107 = load float, float* %5, align 4
  %108 = fpext float %107 to double
  %109 = load float, float* %6, align 4
  %110 = fpext float %109 to double
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.13, i64 0, i64 0), double %104, double %106, double %108, double %110)
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @__isnanf(float) #6

; Function Attrs: nounwind readnone
declare dso_local i32 @__isnan(double) #6

; Function Attrs: nounwind readnone
declare dso_local i32 @__isnanl(x86_fp80) #6

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @circle_center(%struct.VEC2* noalias sret %0, %struct.VEC2* byval(%struct.VEC2) align 8 %1, %struct.VEC2* byval(%struct.VEC2) align 8 %2, %struct.VEC2* byval(%struct.VEC2) align 8 %3) #0 {
  %5 = alloca %struct.VEC2, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.VEC2, align 8
  %11 = alloca %struct.VEC2, align 8
  %12 = alloca %struct.VEC2, align 8
  %13 = alloca %struct.VEC2, align 8
  %14 = alloca %struct.VEC2, align 8
  %15 = alloca %struct.VEC2, align 8
  %16 = alloca %struct.VEC2, align 8
  %17 = alloca %struct.VEC2, align 8
  %18 = alloca %struct.VEC2, align 8
  %19 = alloca %struct.VEC2, align 8
  %20 = alloca %struct.VEC2, align 8
  %21 = alloca %struct.VEC2, align 8
  %22 = alloca %struct.VEC2, align 8
  %23 = alloca %struct.VEC2, align 8
  %24 = alloca %struct.VEC2, align 8
  %25 = alloca %struct.VEC2, align 8
  call void @V2_sub(%struct.VEC2* sret %17, %struct.VEC2* byval(%struct.VEC2) align 8 %2, %struct.VEC2* byval(%struct.VEC2) align 8 %3)
  %26 = bitcast %struct.VEC2* %10 to i8*
  %27 = bitcast %struct.VEC2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false)
  %28 = call double @V2_magn(%struct.VEC2* byval(%struct.VEC2) align 8 %10)
  store double %28, double* %6, align 8
  call void @V2_sum(%struct.VEC2* sret %18, %struct.VEC2* byval(%struct.VEC2) align 8 %1, %struct.VEC2* byval(%struct.VEC2) align 8 %2)
  %29 = bitcast %struct.VEC2* %10 to i8*
  %30 = bitcast %struct.VEC2* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 24, i1 false)
  call void @V2_times(%struct.VEC2* sret %19, double 5.000000e-01, %struct.VEC2* byval(%struct.VEC2) align 8 %10)
  %31 = bitcast %struct.VEC2* %11 to i8*
  %32 = bitcast %struct.VEC2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  %33 = load double, double* %6, align 8
  %34 = fcmp olt double %33, 0.000000e+00
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = bitcast %struct.VEC2* %0 to i8*
  %37 = bitcast %struct.VEC2* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  br label %60

38:                                               ; preds = %4
  call void @V2_sub(%struct.VEC2* sret %20, %struct.VEC2* byval(%struct.VEC2) align 8 %2, %struct.VEC2* byval(%struct.VEC2) align 8 %1)
  %39 = bitcast %struct.VEC2* %12 to i8*
  %40 = bitcast %struct.VEC2* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 24, i1 false)
  call void @V2_sub(%struct.VEC2* sret %21, %struct.VEC2* byval(%struct.VEC2) align 8 %3, %struct.VEC2* byval(%struct.VEC2) align 8 %1)
  %41 = bitcast %struct.VEC2* %13 to i8*
  %42 = bitcast %struct.VEC2* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  %43 = call double @V2_cprod(%struct.VEC2* byval(%struct.VEC2) align 8 %12, %struct.VEC2* byval(%struct.VEC2) align 8 %13)
  store double %43, double* %8, align 8
  %44 = load double, double* %8, align 8
  %45 = fmul double -2.000000e+00, %44
  store double %45, double* %7, align 8
  call void @V2_sub(%struct.VEC2* sret %22, %struct.VEC2* byval(%struct.VEC2) align 8 %3, %struct.VEC2* byval(%struct.VEC2) align 8 %2)
  %46 = bitcast %struct.VEC2* %14 to i8*
  %47 = bitcast %struct.VEC2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = call double @V2_dot(%struct.VEC2* byval(%struct.VEC2) align 8 %14, %struct.VEC2* byval(%struct.VEC2) align 8 %13)
  store double %48, double* %9, align 8
  call void @V2_cross(%struct.VEC2* sret %23, %struct.VEC2* byval(%struct.VEC2) align 8 %12)
  %49 = bitcast %struct.VEC2* %15 to i8*
  %50 = bitcast %struct.VEC2* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 24, i1 false)
  %51 = load double, double* %9, align 8
  %52 = load double, double* %7, align 8
  %53 = fdiv double %51, %52
  call void @V2_times(%struct.VEC2* sret %24, double %53, %struct.VEC2* byval(%struct.VEC2) align 8 %15)
  %54 = bitcast %struct.VEC2* %16 to i8*
  %55 = bitcast %struct.VEC2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  call void @V2_sum(%struct.VEC2* sret %25, %struct.VEC2* byval(%struct.VEC2) align 8 %11, %struct.VEC2* byval(%struct.VEC2) align 8 %16)
  %56 = bitcast %struct.VEC2* %5 to i8*
  %57 = bitcast %struct.VEC2* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  %58 = bitcast %struct.VEC2* %0 to i8*
  %59 = bitcast %struct.VEC2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  br label %60

60:                                               ; preds = %38, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output_voronoi_diagram(%struct.edge_rec* %0, i32 %1, %struct.EDGE_STACK* %2) #0 {
  %4 = alloca %struct.edge_rec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.EDGE_STACK*, align 8
  %7 = alloca %struct.edge_rec*, align 8
  %8 = alloca %struct.edge_rec*, align 8
  %9 = alloca %struct.edge_rec*, align 8
  %10 = alloca %struct.edge_rec*, align 8
  %11 = alloca %struct.VEC2, align 8
  %12 = alloca %struct.VEC2, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.VEC2, align 8
  %16 = alloca %struct.VEC2, align 8
  %17 = alloca %struct.VEC2, align 8
  %18 = alloca %struct.VEC2, align 8
  %19 = alloca %struct.VEC2, align 8
  %20 = alloca %struct.VEC2, align 8
  %21 = alloca %struct.edge_rec*, align 8
  %22 = alloca %struct.VEC2, align 8
  %23 = alloca %struct.VEC2, align 8
  %24 = alloca %struct.VEC2, align 8
  %25 = alloca %struct.VEC2, align 8
  %26 = alloca %struct.VEC2, align 8
  %27 = alloca %struct.VEC2, align 8
  %28 = alloca %struct.VEC2, align 8
  %29 = alloca %struct.VEC2, align 8
  %30 = alloca %struct.VERTEX*, align 8
  %31 = alloca %struct.VERTEX*, align 8
  %32 = alloca %struct.VERTEX*, align 8
  %33 = alloca %struct.VERTEX*, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca %struct.VEC2, align 8
  %37 = alloca %struct.VEC2, align 8
  %38 = alloca %struct.VEC2, align 8
  %39 = alloca %struct.VEC2, align 8
  %40 = alloca %struct.VEC2, align 8
  store %struct.edge_rec* %0, %struct.edge_rec** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.EDGE_STACK* %2, %struct.EDGE_STACK** %6, align 8
  %41 = load i32, i32* @voronoi, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %131

43:                                               ; preds = %3
  %44 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %45 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  call void (%struct.EDGE_STACK*, %struct.edge_rec*, ...) bitcast (void (%struct.EDGE_STACK*, %struct.edge_rec*)* @zero_seen to void (%struct.EDGE_STACK*, %struct.edge_rec*, ...)*)(%struct.EDGE_STACK* %44, %struct.edge_rec* %45)
  %46 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  store %struct.edge_rec* %46, %struct.edge_rec** %7, align 8
  br label %47

47:                                               ; preds = %126, %43
  %48 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %49 = ptrtoint %struct.edge_rec* %48 to i64
  %50 = xor i64 %49, 64
  %51 = inttoptr i64 %50 to %struct.edge_rec*
  %52 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %51, i32 0, i32 0
  %53 = load %struct.VERTEX*, %struct.VERTEX** %52, align 8
  %54 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %53, i32 0, i32 0
  %55 = bitcast %struct.VEC2* %18 to i8*
  %56 = bitcast %struct.VEC2* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %58 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %57, i32 0, i32 0
  %59 = load %struct.VERTEX*, %struct.VERTEX** %58, align 8
  %60 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %59, i32 0, i32 0
  %61 = bitcast %struct.VEC2* %19 to i8*
  %62 = bitcast %struct.VEC2* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 24, i1 false)
  %63 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %64 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %63, i32 0, i32 1
  %65 = load %struct.edge_rec*, %struct.edge_rec** %64, align 8
  store %struct.edge_rec* %65, %struct.edge_rec** %21, align 8
  %66 = load %struct.edge_rec*, %struct.edge_rec** %21, align 8
  %67 = ptrtoint %struct.edge_rec* %66 to i64
  %68 = xor i64 %67, 64
  %69 = inttoptr i64 %68 to %struct.edge_rec*
  %70 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %69, i32 0, i32 0
  %71 = load %struct.VERTEX*, %struct.VERTEX** %70, align 8
  %72 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %71, i32 0, i32 0
  %73 = bitcast %struct.VEC2* %20 to i8*
  %74 = bitcast %struct.VEC2* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  call void @V2_sub(%struct.VEC2* sret %22, %struct.VEC2* byval(%struct.VEC2) align 8 %18, %struct.VEC2* byval(%struct.VEC2) align 8 %19)
  %75 = bitcast %struct.VEC2* %11 to i8*
  %76 = bitcast %struct.VEC2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 24, i1 false)
  call void @circle_center(%struct.VEC2* sret %23, %struct.VEC2* byval(%struct.VEC2) align 8 %19, %struct.VEC2* byval(%struct.VEC2) align 8 %18, %struct.VEC2* byval(%struct.VEC2) align 8 %20)
  %77 = bitcast %struct.VEC2* %12 to i8*
  %78 = bitcast %struct.VEC2* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 24, i1 false)
  call void @V2_sum(%struct.VEC2* sret %24, %struct.VEC2* byval(%struct.VEC2) align 8 %19, %struct.VEC2* byval(%struct.VEC2) align 8 %18)
  %79 = bitcast %struct.VEC2* %15 to i8*
  %80 = bitcast %struct.VEC2* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 24, i1 false)
  call void @V2_times(%struct.VEC2* sret %25, double 5.000000e-01, %struct.VEC2* byval(%struct.VEC2) align 8 %15)
  %81 = bitcast %struct.VEC2* %16 to i8*
  %82 = bitcast %struct.VEC2* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 24, i1 false)
  call void @V2_sub(%struct.VEC2* sret %26, %struct.VEC2* byval(%struct.VEC2) align 8 %12, %struct.VEC2* byval(%struct.VEC2) align 8 %16)
  %83 = bitcast %struct.VEC2* %17 to i8*
  %84 = bitcast %struct.VEC2* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 24, i1 false)
  %85 = call double @V2_magn(%struct.VEC2* byval(%struct.VEC2) align 8 %17)
  %86 = fadd double 1.000000e+00, %85
  store double %86, double* %13, align 8
  %87 = load double, double* %13, align 8
  %88 = call double @V2_magn(%struct.VEC2* byval(%struct.VEC2) align 8 %11)
  %89 = fdiv double %87, %88
  store double %89, double* %14, align 8
  call void @V2_cross(%struct.VEC2* sret %27, %struct.VEC2* byval(%struct.VEC2) align 8 %11)
  %90 = bitcast %struct.VEC2* %15 to i8*
  %91 = bitcast %struct.VEC2* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 24, i1 false)
  %92 = load double, double* %14, align 8
  call void @V2_times(%struct.VEC2* sret %28, double %92, %struct.VEC2* byval(%struct.VEC2) align 8 %15)
  %93 = bitcast %struct.VEC2* %16 to i8*
  %94 = bitcast %struct.VEC2* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  call void @V2_sum(%struct.VEC2* sret %29, %struct.VEC2* byval(%struct.VEC2) align 8 %12, %struct.VEC2* byval(%struct.VEC2) align 8 %16)
  %95 = bitcast %struct.VEC2* %17 to i8*
  %96 = bitcast %struct.VEC2* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false)
  call void @plot_vedge(%struct.VEC2* byval(%struct.VEC2) align 8 %12, %struct.VEC2* byval(%struct.VEC2) align 8 %17)
  %97 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %98 = ptrtoint %struct.edge_rec* %97 to i64
  %99 = add i64 %98, 32
  %100 = and i64 %99, 127
  %101 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %102 = ptrtoint %struct.edge_rec* %101 to i64
  %103 = and i64 %102, -128
  %104 = or i64 %100, %103
  %105 = inttoptr i64 %104 to %struct.edge_rec*
  %106 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %105, i32 0, i32 1
  %107 = load %struct.edge_rec*, %struct.edge_rec** %106, align 8
  %108 = ptrtoint %struct.edge_rec* %107 to i64
  %109 = add i64 %108, 96
  %110 = and i64 %109, 127
  %111 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %112 = ptrtoint %struct.edge_rec* %111 to i64
  %113 = add i64 %112, 32
  %114 = and i64 %113, 127
  %115 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %116 = ptrtoint %struct.edge_rec* %115 to i64
  %117 = and i64 %116, -128
  %118 = or i64 %114, %117
  %119 = inttoptr i64 %118 to %struct.edge_rec*
  %120 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %119, i32 0, i32 1
  %121 = load %struct.edge_rec*, %struct.edge_rec** %120, align 8
  %122 = ptrtoint %struct.edge_rec* %121 to i64
  %123 = and i64 %122, -128
  %124 = or i64 %110, %123
  %125 = inttoptr i64 %124 to %struct.edge_rec*
  store %struct.edge_rec* %125, %struct.edge_rec** %7, align 8
  br label %126

126:                                              ; preds = %47
  %127 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %128 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %129 = icmp ne %struct.edge_rec* %127, %128
  br i1 %129, label %47, label %130

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %3
  %132 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %133 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %135 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  call void @push_ring(%struct.EDGE_STACK* %134, %struct.edge_rec* %135)
  %136 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %137 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.16, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %284, %131
  %141 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %142 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %290

145:                                              ; preds = %140
  %146 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %147 = call %struct.edge_rec* (%struct.EDGE_STACK*, ...) bitcast (%struct.edge_rec* (%struct.EDGE_STACK*)* @pop_edge to %struct.edge_rec* (%struct.EDGE_STACK*, ...)*)(%struct.EDGE_STACK* %146)
  store %struct.edge_rec* %147, %struct.edge_rec** %4, align 8
  %148 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %149 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 1
  br i1 %151, label %152, label %284

152:                                              ; preds = %145
  %153 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  store %struct.edge_rec* %153, %struct.edge_rec** %8, align 8
  %154 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %155 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %154, i32 0, i32 1
  %156 = load %struct.edge_rec*, %struct.edge_rec** %155, align 8
  store %struct.edge_rec* %156, %struct.edge_rec** %7, align 8
  br label %157

157:                                              ; preds = %279, %152
  %158 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %159 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %158, i32 0, i32 0
  %160 = load %struct.VERTEX*, %struct.VERTEX** %159, align 8
  store %struct.VERTEX* %160, %struct.VERTEX** %30, align 8
  %161 = load %struct.VERTEX*, %struct.VERTEX** %30, align 8
  %162 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %162, i32 0, i32 0
  %164 = load double, double* %163, align 8
  store double %164, double* %34, align 8
  %165 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %166 = ptrtoint %struct.edge_rec* %165 to i64
  %167 = xor i64 %166, 64
  %168 = inttoptr i64 %167 to %struct.edge_rec*
  %169 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %168, i32 0, i32 0
  %170 = load %struct.VERTEX*, %struct.VERTEX** %169, align 8
  store %struct.VERTEX* %170, %struct.VERTEX** %31, align 8
  %171 = load %struct.VERTEX*, %struct.VERTEX** %31, align 8
  %172 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %172, i32 0, i32 0
  %174 = load double, double* %173, align 8
  store double %174, double* %35, align 8
  %175 = load double, double* %34, align 8
  %176 = load double, double* %35, align 8
  %177 = fcmp oge double %175, %176
  br i1 %177, label %178, label %272

178:                                              ; preds = %157
  %179 = load %struct.VERTEX*, %struct.VERTEX** %30, align 8
  %180 = load %struct.VERTEX*, %struct.VERTEX** %31, align 8
  call void @plot_dedge(%struct.VERTEX* %179, %struct.VERTEX* %180)
  %181 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %182 = ptrtoint %struct.edge_rec* %181 to i64
  %183 = xor i64 %182, 64
  %184 = inttoptr i64 %183 to %struct.edge_rec*
  store %struct.edge_rec* %184, %struct.edge_rec** %10, align 8
  %185 = load %struct.edge_rec*, %struct.edge_rec** %10, align 8
  %186 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %185, i32 0, i32 1
  %187 = load %struct.edge_rec*, %struct.edge_rec** %186, align 8
  store %struct.edge_rec* %187, %struct.edge_rec** %9, align 8
  %188 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %189 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %188, i32 0, i32 0
  %190 = load %struct.VERTEX*, %struct.VERTEX** %189, align 8
  store %struct.VERTEX* %190, %struct.VERTEX** %30, align 8
  %191 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %192 = ptrtoint %struct.edge_rec* %191 to i64
  %193 = xor i64 %192, 64
  %194 = inttoptr i64 %193 to %struct.edge_rec*
  %195 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %194, i32 0, i32 0
  %196 = load %struct.VERTEX*, %struct.VERTEX** %195, align 8
  store %struct.VERTEX* %196, %struct.VERTEX** %31, align 8
  %197 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %198 = ptrtoint %struct.edge_rec* %197 to i64
  %199 = xor i64 %198, 64
  %200 = inttoptr i64 %199 to %struct.edge_rec*
  %201 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %200, i32 0, i32 0
  %202 = load %struct.VERTEX*, %struct.VERTEX** %201, align 8
  store %struct.VERTEX* %202, %struct.VERTEX** %32, align 8
  %203 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %204 = ptrtoint %struct.edge_rec* %203 to i64
  %205 = xor i64 %204, 64
  %206 = inttoptr i64 %205 to %struct.edge_rec*
  %207 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %206, i32 0, i32 0
  %208 = load %struct.VERTEX*, %struct.VERTEX** %207, align 8
  store %struct.VERTEX* %208, %struct.VERTEX** %33, align 8
  %209 = load %struct.VERTEX*, %struct.VERTEX** %30, align 8
  %210 = load %struct.VERTEX*, %struct.VERTEX** %31, align 8
  %211 = load %struct.VERTEX*, %struct.VERTEX** %32, align 8
  %212 = call i32 @ccw(%struct.VERTEX* %209, %struct.VERTEX* %210, %struct.VERTEX* %211)
  %213 = load %struct.VERTEX*, %struct.VERTEX** %30, align 8
  %214 = load %struct.VERTEX*, %struct.VERTEX** %31, align 8
  %215 = load %struct.VERTEX*, %struct.VERTEX** %33, align 8
  %216 = call i32 @ccw(%struct.VERTEX* %213, %struct.VERTEX* %214, %struct.VERTEX* %215)
  %217 = icmp ne i32 %212, %216
  br i1 %217, label %218, label %271

218:                                              ; preds = %178
  %219 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %220 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %219, i32 0, i32 0
  %221 = load %struct.VERTEX*, %struct.VERTEX** %220, align 8
  %222 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %221, i32 0, i32 0
  %223 = bitcast %struct.VEC2* %36 to i8*
  %224 = bitcast %struct.VEC2* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 %224, i64 24, i1 false)
  %225 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %226 = ptrtoint %struct.edge_rec* %225 to i64
  %227 = xor i64 %226, 64
  %228 = inttoptr i64 %227 to %struct.edge_rec*
  %229 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %228, i32 0, i32 0
  %230 = load %struct.VERTEX*, %struct.VERTEX** %229, align 8
  %231 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %230, i32 0, i32 0
  %232 = bitcast %struct.VEC2* %37 to i8*
  %233 = bitcast %struct.VEC2* %231 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %232, i8* align 8 %233, i64 24, i1 false)
  %234 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %235 = ptrtoint %struct.edge_rec* %234 to i64
  %236 = xor i64 %235, 64
  %237 = inttoptr i64 %236 to %struct.edge_rec*
  %238 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %237, i32 0, i32 0
  %239 = load %struct.VERTEX*, %struct.VERTEX** %238, align 8
  %240 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %239, i32 0, i32 0
  %241 = bitcast %struct.VEC2* %38 to i8*
  %242 = bitcast %struct.VEC2* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %241, i8* align 8 %242, i64 24, i1 false)
  call void @circle_center(%struct.VEC2* sret %39, %struct.VEC2* byval(%struct.VEC2) align 8 %36, %struct.VEC2* byval(%struct.VEC2) align 8 %37, %struct.VEC2* byval(%struct.VEC2) align 8 %38)
  %243 = bitcast %struct.VEC2* %15 to i8*
  %244 = bitcast %struct.VEC2* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 8 %244, i64 24, i1 false)
  %245 = load %struct.edge_rec*, %struct.edge_rec** %10, align 8
  %246 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %245, i32 0, i32 0
  %247 = load %struct.VERTEX*, %struct.VERTEX** %246, align 8
  %248 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %247, i32 0, i32 0
  %249 = bitcast %struct.VEC2* %36 to i8*
  %250 = bitcast %struct.VEC2* %248 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %249, i8* align 8 %250, i64 24, i1 false)
  %251 = load %struct.edge_rec*, %struct.edge_rec** %10, align 8
  %252 = ptrtoint %struct.edge_rec* %251 to i64
  %253 = xor i64 %252, 64
  %254 = inttoptr i64 %253 to %struct.edge_rec*
  %255 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %254, i32 0, i32 0
  %256 = load %struct.VERTEX*, %struct.VERTEX** %255, align 8
  %257 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %256, i32 0, i32 0
  %258 = bitcast %struct.VEC2* %37 to i8*
  %259 = bitcast %struct.VEC2* %257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %258, i8* align 8 %259, i64 24, i1 false)
  %260 = load %struct.edge_rec*, %struct.edge_rec** %9, align 8
  %261 = ptrtoint %struct.edge_rec* %260 to i64
  %262 = xor i64 %261, 64
  %263 = inttoptr i64 %262 to %struct.edge_rec*
  %264 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %263, i32 0, i32 0
  %265 = load %struct.VERTEX*, %struct.VERTEX** %264, align 8
  %266 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %265, i32 0, i32 0
  %267 = bitcast %struct.VEC2* %38 to i8*
  %268 = bitcast %struct.VEC2* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 24, i1 false)
  call void @circle_center(%struct.VEC2* sret %40, %struct.VEC2* byval(%struct.VEC2) align 8 %36, %struct.VEC2* byval(%struct.VEC2) align 8 %37, %struct.VEC2* byval(%struct.VEC2) align 8 %38)
  %269 = bitcast %struct.VEC2* %16 to i8*
  %270 = bitcast %struct.VEC2* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %270, i64 24, i1 false)
  call void @plot_vedge(%struct.VEC2* byval(%struct.VEC2) align 8 %15, %struct.VEC2* byval(%struct.VEC2) align 8 %16)
  br label %271

271:                                              ; preds = %218, %178
  br label %272

272:                                              ; preds = %271, %157
  %273 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %274 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %273, i32 0, i32 2
  store i64 2, i64* %274, align 8
  %275 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  store %struct.edge_rec* %275, %struct.edge_rec** %8, align 8
  %276 = load %struct.edge_rec*, %struct.edge_rec** %7, align 8
  %277 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %276, i32 0, i32 1
  %278 = load %struct.edge_rec*, %struct.edge_rec** %277, align 8
  store %struct.edge_rec* %278, %struct.edge_rec** %7, align 8
  br label %279

279:                                              ; preds = %272
  %280 = load %struct.edge_rec*, %struct.edge_rec** %8, align 8
  %281 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %282 = icmp ne %struct.edge_rec* %280, %281
  br i1 %282, label %157, label %283

283:                                              ; preds = %279
  br label %284

284:                                              ; preds = %283, %145
  %285 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %286 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  %287 = ptrtoint %struct.edge_rec* %286 to i64
  %288 = xor i64 %287, 64
  %289 = inttoptr i64 %288 to %struct.edge_rec*
  call void @push_ring(%struct.EDGE_STACK* %285, %struct.edge_rec* %289)
  br label %140

290:                                              ; preds = %140
  %291 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %6, align 8
  %292 = load %struct.edge_rec*, %struct.edge_rec** %4, align 8
  call void (%struct.EDGE_STACK*, %struct.edge_rec*, ...) bitcast (void (%struct.EDGE_STACK*, %struct.edge_rec*)* @zero_seen to void (%struct.EDGE_STACK*, %struct.edge_rec*, ...)*)(%struct.EDGE_STACK* %291, %struct.edge_rec* %292)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @V2_cprod(%struct.VEC2* byval(%struct.VEC2) align 8 %0, %struct.VEC2* byval(%struct.VEC2) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 1
  %6 = load double, double* %5, align 8
  %7 = fmul double %4, %6
  %8 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  %13 = fsub double %7, %12
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @V2_dot(%struct.VEC2* byval(%struct.VEC2) align 8 %0, %struct.VEC2* byval(%struct.VEC2) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = fmul double %4, %6
  %8 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  %13 = fadd double %7, %12
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @V2_times(%struct.VEC2* noalias sret %0, double %1, %struct.VEC2* byval(%struct.VEC2) align 8 %2) #0 {
  %4 = alloca double, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fmul double %5, %7
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = load double, double* %4, align 8
  %11 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fmul double %10, %12
  %14 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  store double %13, double* %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @V2_sum(%struct.VEC2* noalias sret %0, %struct.VEC2* byval(%struct.VEC2) align 8 %1, %struct.VEC2* byval(%struct.VEC2) align 8 %2) #0 {
  %4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fadd double %5, %7
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  %15 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  store double %14, double* %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @V2_sub(%struct.VEC2* noalias sret %0, %struct.VEC2* byval(%struct.VEC2) align 8 %1, %struct.VEC2* byval(%struct.VEC2) align 8 %2) #0 {
  %4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fsub double %5, %7
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  %15 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  store double %14, double* %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @V2_magn(%struct.VEC2* byval(%struct.VEC2) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  %3 = load double, double* %2, align 8
  %4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = fmul double %3, %5
  %7 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = fmul double %8, %10
  %12 = fadd double %6, %11
  %13 = call double @sqrt(double %12) #10
  ret double %13
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @V2_cross(%struct.VEC2* noalias sret %0, %struct.VEC2* byval(%struct.VEC2) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 1
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 0
  store double %4, double* %5, align 8
  %6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fneg double %7
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i32 0, i32 1
  store double %8, double* %9, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
