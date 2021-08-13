; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Knode = type { %struct.point, i32, i32, i32 }
%struct.point = type { i32, i32 }
%struct.Enode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct.CHsplay_node = type { %struct.CHsplay_element, %struct.CHsplay_node*, %struct.CHsplay_node*, %struct.CHsplay_node* }
%struct.CHsplay_element = type { %struct.key, %struct.CHpoints* }
%struct.key = type { double, double, i32 }
%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.DCEL_segment = type { %struct.point, %struct.point, %struct.DCEL_segment*, %struct.DCEL_segment*, %struct.DCEL_segment*, %struct.DCEL_segment* }
%struct.dpoint = type { double, double }

@.str = private unnamed_addr constant [20 x i8] c"Can't create point\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"(%d,%d)  key: (%f,%f,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't create node\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"No elements in tree! [CHdelete_max]\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"No elements in tree! [CHdelete]\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Can't create node\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [35 x i8] c"No elements in tree! [delete_min]\0A\00", align 1
@CHno = dso_local global i32 0, align 4
@Kcount = dso_local global i32 1, align 4
@Ecount = dso_local global i32 1, align 4
@K = common dso_local global %struct.Knode* null, align 8
@E = common dso_local global %struct.Enode* null, align 8
@Splaytree = common dso_local global %struct.splay_node* null, align 8
@CHSplaytree = common dso_local global %struct.CHsplay_node* null, align 8
@S = common dso_local global %struct.CHpoints* null, align 8
@default_radius = common dso_local global i32 0, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.17 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.2.18 = private unnamed_addr constant [24 x i8] c"Error: Can't intersect\0A\00", align 1
@.str.3.19 = private unnamed_addr constant [23 x i8] c"The center is (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"The radius is %9.2f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @empty() #0 {
  %1 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  %2 = icmp eq %struct.splay_node* %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @point_equal(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.point, align 4
  %5 = bitcast %struct.point* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @determinant(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %7, align 4
  %8 = bitcast %struct.point* %5 to i64*
  store i64 %1, i64* %8, align 4
  %9 = bitcast %struct.point* %6 to i64*
  store i64 %2, i64* %9, align 4
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  %17 = mul nsw i32 %11, %16
  %18 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  %25 = mul nsw i32 %19, %24
  %26 = sub nsw i32 %17, %25
  %27 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %28, %30
  %32 = add nsw i32 %26, %31
  %33 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %34, %36
  %38 = sub nsw i32 %32, %37
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @visible(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca %struct.point, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.point* %6 to i64*
  store i64 %1, i64* %10, align 4
  %11 = bitcast %struct.point* %7 to i64*
  store i64 %2, i64* %11, align 4
  %12 = bitcast %struct.point* %8 to i64*
  store i64 %3, i64* %12, align 4
  store i32 %0, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = bitcast %struct.point* %6 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = bitcast %struct.point* %7 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = bitcast %struct.point* %8 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i32 @determinant(i64 %17, i64 %19, i64 %21)
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = bitcast %struct.point* %6 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.point* %7 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = bitcast %struct.point* %8 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i32 @determinant(i64 %27, i64 %29, i64 %31)
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %15
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* %0, %struct.DCEL_segment* %1) #0 {
  %3 = alloca %struct.DCEL_segment*, align 8
  %4 = alloca %struct.DCEL_segment*, align 8
  %5 = alloca %struct.DCEL_segment*, align 8
  %6 = alloca %struct.DCEL_segment*, align 8
  %7 = alloca %struct.DCEL_segment*, align 8
  %8 = alloca %struct.CHpoints*, align 8
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %3, align 8
  store %struct.DCEL_segment* %1, %struct.DCEL_segment** %4, align 8
  store %struct.CHpoints* null, %struct.CHpoints** %8, align 8
  %9 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  store %struct.DCEL_segment* %9, %struct.DCEL_segment** %6, align 8
  %10 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %11 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %10, i32 0, i32 1
  %12 = bitcast %struct.point* %11 to i64*
  %13 = load i64, i64* %12, align 8
  call void @point_list_insert(%struct.CHpoints** %8, i64 %13)
  %14 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %15 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %14, i32 0, i32 4
  %16 = load %struct.DCEL_segment*, %struct.DCEL_segment** %15, align 8
  %17 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %18 = icmp eq %struct.DCEL_segment* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %21 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %20, i32 0, i32 3
  %22 = load %struct.DCEL_segment*, %struct.DCEL_segment** %21, align 8
  store %struct.DCEL_segment* %22, %struct.DCEL_segment** %7, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %25 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %24, i32 0, i32 2
  %26 = load %struct.DCEL_segment*, %struct.DCEL_segment** %25, align 8
  store %struct.DCEL_segment* %26, %struct.DCEL_segment** %7, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  store %struct.DCEL_segment* %28, %struct.DCEL_segment** %4, align 8
  %29 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  store %struct.DCEL_segment* %29, %struct.DCEL_segment** %3, align 8
  %30 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %31 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %32 = icmp ne %struct.DCEL_segment* %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %60, %33
  %35 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %36 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %37 = icmp ne %struct.DCEL_segment* %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %40 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %39, i32 0, i32 4
  %41 = load %struct.DCEL_segment*, %struct.DCEL_segment** %40, align 8
  %42 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %43 = icmp eq %struct.DCEL_segment* %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %46 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %45, i32 0, i32 0
  %47 = bitcast %struct.point* %46 to i64*
  %48 = load i64, i64* %47, align 8
  call void @point_list_insert(%struct.CHpoints** %8, i64 %48)
  %49 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %50 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %49, i32 0, i32 3
  %51 = load %struct.DCEL_segment*, %struct.DCEL_segment** %50, align 8
  store %struct.DCEL_segment* %51, %struct.DCEL_segment** %7, align 8
  br label %60

52:                                               ; preds = %38
  %53 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %54 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %53, i32 0, i32 1
  %55 = bitcast %struct.point* %54 to i64*
  %56 = load i64, i64* %55, align 8
  call void @point_list_insert(%struct.CHpoints** %8, i64 %56)
  %57 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %58 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %57, i32 0, i32 2
  %59 = load %struct.DCEL_segment*, %struct.DCEL_segment** %58, align 8
  store %struct.DCEL_segment* %59, %struct.DCEL_segment** %7, align 8
  br label %60

60:                                               ; preds = %52, %44
  %61 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  store %struct.DCEL_segment* %61, %struct.DCEL_segment** %4, align 8
  %62 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  store %struct.DCEL_segment* %62, %struct.DCEL_segment** %3, align 8
  br label %34

63:                                               ; preds = %34
  %64 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %65 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %64, i32 0, i32 4
  %66 = load %struct.DCEL_segment*, %struct.DCEL_segment** %65, align 8
  %67 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %68 = icmp eq %struct.DCEL_segment* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %71 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %70, i32 0, i32 0
  %72 = bitcast %struct.point* %71 to i64*
  %73 = load i64, i64* %72, align 8
  call void @point_list_insert(%struct.CHpoints** %8, i64 %73)
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %76 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %75, i32 0, i32 1
  %77 = bitcast %struct.point* %76 to i64*
  %78 = load i64, i64* %77, align 8
  call void @point_list_insert(%struct.CHpoints** %8, i64 %78)
  br label %79

79:                                               ; preds = %74, %69
  br label %97

80:                                               ; preds = %27
  %81 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %82 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %81, i32 0, i32 1
  %83 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %84 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %83, i32 0, i32 0
  %85 = bitcast %struct.point* %82 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = bitcast %struct.point* %84 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @point_equal(i64 %86, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %80
  %92 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %93 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %92, i32 0, i32 0
  %94 = bitcast %struct.point* %93 to i64*
  %95 = load i64, i64* %94, align 8
  call void @point_list_insert(%struct.CHpoints** %8, i64 %95)
  br label %96

96:                                               ; preds = %91, %80
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.CHpoints*, %struct.CHpoints** %8, align 8
  ret %struct.CHpoints* %98
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_segments(%struct.DCEL_segment* %0, %struct.DCEL_segment* %1, %struct.DCEL_segment* %2, i32 %3) #0 {
  %5 = alloca %struct.DCEL_segment*, align 8
  %6 = alloca %struct.DCEL_segment*, align 8
  %7 = alloca %struct.DCEL_segment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.DCEL_segment*, align 8
  %10 = alloca %struct.point, align 4
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %5, align 8
  store %struct.DCEL_segment* %1, %struct.DCEL_segment** %6, align 8
  store %struct.DCEL_segment* %2, %struct.DCEL_segment** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %12 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %11, i32 0, i32 0
  %13 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %14 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %13, i32 0, i32 0
  %15 = bitcast %struct.point* %12 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %struct.point* %14 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @point_equal(i64 %16, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %23 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %22, i32 0, i32 1
  %24 = bitcast %struct.point* %10 to i8*
  %25 = bitcast %struct.point* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 8, i1 false)
  br label %31

26:                                               ; preds = %4
  %27 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %28 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %27, i32 0, i32 0
  %29 = bitcast %struct.point* %10 to i8*
  %30 = bitcast %struct.point* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 8 %30, i64 8, i1 false)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %34 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %33, i32 0, i32 0
  %35 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %36 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %35, i32 0, i32 1
  %37 = bitcast %struct.point* %34 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %struct.point* %36 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = bitcast %struct.point* %10 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call i32 @visible(i32 %32, i64 %38, i64 %40, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %167

45:                                               ; preds = %31
  %46 = call noalias i8* @malloc(i64 48) #5
  %47 = bitcast i8* %46 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %47, %struct.DCEL_segment** %9, align 8
  %48 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %49 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %48, i32 0, i32 0
  %50 = bitcast %struct.point* %49 to i8*
  %51 = bitcast %struct.point* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %53 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %52, i32 0, i32 1
  %54 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %55 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %54, i32 0, i32 1
  %56 = bitcast %struct.point* %53 to i8*
  %57 = bitcast %struct.point* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %45
  %61 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %62 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %61, i32 0, i32 2
  %63 = load %struct.DCEL_segment*, %struct.DCEL_segment** %62, align 8
  %64 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %65 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %64, i32 0, i32 2
  store %struct.DCEL_segment* %63, %struct.DCEL_segment** %65, align 8
  %66 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %67 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %68 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %67, i32 0, i32 3
  store %struct.DCEL_segment* %66, %struct.DCEL_segment** %68, align 8
  %69 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %70 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %71 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %70, i32 0, i32 4
  store %struct.DCEL_segment* %69, %struct.DCEL_segment** %71, align 8
  %72 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %73 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %74 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %73, i32 0, i32 5
  store %struct.DCEL_segment* %72, %struct.DCEL_segment** %74, align 8
  %75 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %76 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %77 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %76, i32 0, i32 5
  store %struct.DCEL_segment* %75, %struct.DCEL_segment** %77, align 8
  %78 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %79 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %78, i32 0, i32 2
  %80 = load %struct.DCEL_segment*, %struct.DCEL_segment** %79, align 8
  %81 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %80, i32 0, i32 0
  %82 = bitcast %struct.point* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = bitcast %struct.point* %10 to i64*
  %85 = load i64, i64* %84, align 4
  %86 = call i32 @point_equal(i64 %83, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %60
  %89 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %90 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %91 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %90, i32 0, i32 2
  %92 = load %struct.DCEL_segment*, %struct.DCEL_segment** %91, align 8
  %93 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %92, i32 0, i32 4
  store %struct.DCEL_segment* %89, %struct.DCEL_segment** %93, align 8
  br label %100

94:                                               ; preds = %60
  %95 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %96 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %97 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %96, i32 0, i32 2
  %98 = load %struct.DCEL_segment*, %struct.DCEL_segment** %97, align 8
  %99 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %98, i32 0, i32 5
  store %struct.DCEL_segment* %95, %struct.DCEL_segment** %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %102 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %103 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %102, i32 0, i32 2
  store %struct.DCEL_segment* %101, %struct.DCEL_segment** %103, align 8
  %104 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %105 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %106 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %105, i32 0, i32 3
  store %struct.DCEL_segment* %104, %struct.DCEL_segment** %106, align 8
  %107 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %108 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %109 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %108, i32 0, i32 2
  %110 = load %struct.DCEL_segment*, %struct.DCEL_segment** %109, align 8
  %111 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %112 = load i32, i32* %8, align 4
  call void @add_segments(%struct.DCEL_segment* %107, %struct.DCEL_segment* %110, %struct.DCEL_segment* %111, i32 %112)
  br label %166

113:                                              ; preds = %45
  %114 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %115 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %114, i32 0, i32 4
  %116 = load %struct.DCEL_segment*, %struct.DCEL_segment** %115, align 8
  %117 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %118 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %117, i32 0, i32 4
  store %struct.DCEL_segment* %116, %struct.DCEL_segment** %118, align 8
  %119 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %120 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %121 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %120, i32 0, i32 5
  store %struct.DCEL_segment* %119, %struct.DCEL_segment** %121, align 8
  %122 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %123 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %124 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %123, i32 0, i32 2
  store %struct.DCEL_segment* %122, %struct.DCEL_segment** %124, align 8
  %125 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %126 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %127 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %126, i32 0, i32 3
  store %struct.DCEL_segment* %125, %struct.DCEL_segment** %127, align 8
  %128 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %129 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %130 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %129, i32 0, i32 3
  store %struct.DCEL_segment* %128, %struct.DCEL_segment** %130, align 8
  %131 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %132 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %131, i32 0, i32 4
  %133 = load %struct.DCEL_segment*, %struct.DCEL_segment** %132, align 8
  %134 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %133, i32 0, i32 0
  %135 = bitcast %struct.point* %134 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = bitcast %struct.point* %10 to i64*
  %138 = load i64, i64* %137, align 4
  %139 = call i32 @point_equal(i64 %136, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %113
  %142 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %143 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %144 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %143, i32 0, i32 4
  %145 = load %struct.DCEL_segment*, %struct.DCEL_segment** %144, align 8
  %146 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %145, i32 0, i32 2
  store %struct.DCEL_segment* %142, %struct.DCEL_segment** %146, align 8
  br label %153

147:                                              ; preds = %113
  %148 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %149 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %150 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %149, i32 0, i32 4
  %151 = load %struct.DCEL_segment*, %struct.DCEL_segment** %150, align 8
  %152 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %151, i32 0, i32 3
  store %struct.DCEL_segment* %148, %struct.DCEL_segment** %152, align 8
  br label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %155 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %156 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %155, i32 0, i32 4
  store %struct.DCEL_segment* %154, %struct.DCEL_segment** %156, align 8
  %157 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %158 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %159 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %158, i32 0, i32 5
  store %struct.DCEL_segment* %157, %struct.DCEL_segment** %159, align 8
  %160 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %161 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %162 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %161, i32 0, i32 4
  %163 = load %struct.DCEL_segment*, %struct.DCEL_segment** %162, align 8
  %164 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %165 = load i32, i32* %8, align 4
  call void @add_segments(%struct.DCEL_segment* %160, %struct.DCEL_segment* %163, %struct.DCEL_segment* %164, i32 %165)
  br label %166

166:                                              ; preds = %153, %100
  br label %167

167:                                              ; preds = %166, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @construct_ch() #0 {
  %1 = alloca %struct.CHpoints*, align 8
  %2 = alloca %struct.DCEL_segment*, align 8
  %3 = alloca %struct.DCEL_segment*, align 8
  %4 = alloca %struct.DCEL_segment*, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.DCEL_segment*, align 8
  %8 = alloca %struct.point, align 4
  store i32 0, i32* @CHno, align 4
  %9 = call i32 @empty()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %106, label %11

11:                                               ; preds = %0
  %12 = call noalias i8* @malloc(i64 48) #5
  %13 = bitcast i8* %12 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %13, %struct.DCEL_segment** %2, align 8
  %14 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %15 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %14, i32 0, i32 0
  %16 = call i64 @delete_min(%struct.splay_node** @Splaytree)
  %17 = bitcast %struct.point* %5 to i64*
  store i64 %16, i64* %17, align 4
  %18 = bitcast %struct.point* %15 to i8*
  %19 = bitcast %struct.point* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %21 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %22 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %21, i32 0, i32 2
  store %struct.DCEL_segment* %20, %struct.DCEL_segment** %22, align 8
  %23 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %24 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %25 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %24, i32 0, i32 3
  store %struct.DCEL_segment* %23, %struct.DCEL_segment** %25, align 8
  %26 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %27 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %28 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %27, i32 0, i32 4
  store %struct.DCEL_segment* %26, %struct.DCEL_segment** %28, align 8
  %29 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %30 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %31 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %30, i32 0, i32 5
  store %struct.DCEL_segment* %29, %struct.DCEL_segment** %31, align 8
  %32 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  store %struct.DCEL_segment* %32, %struct.DCEL_segment** %3, align 8
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  store %struct.DCEL_segment* %33, %struct.DCEL_segment** %4, align 8
  %34 = call i32 @empty()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %11
  %37 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %38 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %37, i32 0, i32 1
  %39 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %40 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %39, i32 0, i32 0
  %41 = bitcast %struct.point* %38 to i8*
  %42 = bitcast %struct.point* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  br label %100

43:                                               ; preds = %11
  %44 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %45 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %44, i32 0, i32 1
  %46 = call i64 @delete_min(%struct.splay_node** @Splaytree)
  %47 = bitcast %struct.point* %6 to i64*
  store i64 %46, i64* %47, align 4
  %48 = bitcast %struct.point* %45 to i8*
  %49 = bitcast %struct.point* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 4 %49, i64 8, i1 false)
  br label %50

50:                                               ; preds = %54, %43
  %51 = call i32 @empty()
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %99

54:                                               ; preds = %50
  %55 = call noalias i8* @malloc(i64 48) #5
  %56 = bitcast i8* %55 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %56, %struct.DCEL_segment** %7, align 8
  %57 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %58 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %57, i32 0, i32 0
  %59 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %60 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %59, i32 0, i32 1
  %61 = bitcast %struct.point* %58 to i8*
  %62 = bitcast %struct.point* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %64 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %63, i32 0, i32 1
  %65 = call i64 @delete_min(%struct.splay_node** @Splaytree)
  %66 = bitcast %struct.point* %8 to i64*
  store i64 %65, i64* %66, align 4
  %67 = bitcast %struct.point* %64 to i8*
  %68 = bitcast %struct.point* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 %68, i64 8, i1 false)
  %69 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %70 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %71 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %70, i32 0, i32 2
  store %struct.DCEL_segment* %69, %struct.DCEL_segment** %71, align 8
  %72 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %73 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %74 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %73, i32 0, i32 4
  store %struct.DCEL_segment* %72, %struct.DCEL_segment** %74, align 8
  %75 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %76 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %77 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %76, i32 0, i32 3
  store %struct.DCEL_segment* %75, %struct.DCEL_segment** %77, align 8
  %78 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %79 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %80 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %79, i32 0, i32 5
  store %struct.DCEL_segment* %78, %struct.DCEL_segment** %80, align 8
  %81 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %82 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %83 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %82, i32 0, i32 3
  store %struct.DCEL_segment* %81, %struct.DCEL_segment** %83, align 8
  %84 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %85 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %86 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %85, i32 0, i32 5
  store %struct.DCEL_segment* %84, %struct.DCEL_segment** %86, align 8
  %87 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %88 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %89 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  call void @add_segments(%struct.DCEL_segment* %87, %struct.DCEL_segment* %88, %struct.DCEL_segment* %89, i32 0)
  %90 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %91 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %90, i32 0, i32 3
  %92 = load %struct.DCEL_segment*, %struct.DCEL_segment** %91, align 8
  store %struct.DCEL_segment* %92, %struct.DCEL_segment** %3, align 8
  %93 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %94 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %95 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  call void @add_segments(%struct.DCEL_segment* %93, %struct.DCEL_segment* %94, %struct.DCEL_segment* %95, i32 1)
  %96 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %97 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %96, i32 0, i32 5
  %98 = load %struct.DCEL_segment*, %struct.DCEL_segment** %97, align 8
  store %struct.DCEL_segment* %98, %struct.DCEL_segment** %4, align 8
  br label %50

99:                                               ; preds = %50
  br label %100

100:                                              ; preds = %99, %36
  %101 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  call void @free_tree(%struct.splay_node* %101)
  %102 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %103 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %104 = call %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* %102, %struct.DCEL_segment* %103)
  %105 = call %struct.CHpoints* @remove_points(%struct.CHpoints* %104)
  store %struct.CHpoints* %105, %struct.CHpoints** %1, align 8
  br label %106

106:                                              ; preds = %100, %0
  %107 = load %struct.CHpoints*, %struct.CHpoints** %1, align 8
  ret %struct.CHpoints* %107
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @midpoint(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.dpoint, align 8
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.point* %5 to i64*
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = fadd double %10, %13
  %15 = fdiv double %14, 2.000000e+00
  %16 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 0
  store double %15, double* %16, align 8
  %17 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to double
  %20 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to double
  %23 = fadd double %19, %22
  %24 = fdiv double %23, 2.000000e+00
  %25 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 1
  store double %24, double* %25, align 8
  %26 = bitcast %struct.dpoint* %3 to { double, double }*
  %27 = load { double, double }, { double, double }* %26, align 8
  ret { double, double } %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @vector(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.point* %5 to i64*
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.point* %3 to i64*
  %21 = load i64, i64* %20, align 4
  ret i64 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @length2(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.point, align 4
  %5 = bitcast %struct.point* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  %17 = mul nsw i32 %11, %16
  %18 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  %23 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  %28 = mul nsw i32 %22, %27
  %29 = add nsw i32 %17, %28
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @calculate_c(i64 %0, double %1, double %2) #0 {
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.dpoint, align 8
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.dpoint* %5 to { double, double }*
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %1, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %2, double* %9, align 8
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fmul double %12, %14
  %16 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = fmul double %18, %20
  %22 = fadd double %15, %21
  ret double %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @intersect(i64 %0, i64 %1, double %2, double %3) #0 {
  %5 = alloca %struct.dpoint, align 8
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = bitcast %struct.point* %6 to i64*
  store i64 %0, i64* %10, align 4
  %11 = bitcast %struct.point* %7 to i64*
  store i64 %1, i64* %11, align 4
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %12 = load double, double* %8, align 8
  %13 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sitofp i32 %14 to double
  %16 = fmul double %12, %15
  %17 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to double
  %20 = load double, double* %9, align 8
  %21 = fmul double %19, %20
  %22 = fsub double %16, %21
  %23 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sitofp i32 %24 to double
  %26 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to double
  %29 = fmul double %25, %28
  %30 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sitofp i32 %31 to double
  %33 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sitofp i32 %34 to double
  %36 = fmul double %32, %35
  %37 = fsub double %29, %36
  %38 = fdiv double %22, %37
  %39 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  store double %38, double* %39, align 8
  %40 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to double
  %43 = load double, double* %9, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %8, align 8
  %46 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to double
  %49 = fmul double %45, %48
  %50 = fsub double %44, %49
  %51 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to double
  %54 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to double
  %57 = fmul double %53, %56
  %58 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to double
  %61 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sitofp i32 %62 to double
  %64 = fmul double %60, %63
  %65 = fsub double %57, %64
  %66 = fdiv double %50, %65
  %67 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  store double %66, double* %67, align 8
  %68 = bitcast %struct.dpoint* %5 to { double, double }*
  %69 = load { double, double }, { double, double }* %68, align 8
  ret { double, double } %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @centre(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dpoint, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca %struct.point, align 4
  %9 = alloca %struct.point, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.point, align 4
  %13 = alloca %struct.point, align 4
  %14 = alloca %struct.dpoint, align 8
  %15 = alloca %struct.dpoint, align 8
  %16 = bitcast %struct.point* %5 to i64*
  store i64 %0, i64* %16, align 4
  %17 = bitcast %struct.point* %6 to i64*
  store i64 %1, i64* %17, align 4
  %18 = bitcast %struct.point* %7 to i64*
  store i64 %2, i64* %18, align 4
  %19 = bitcast %struct.point* %5 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = bitcast %struct.point* %6 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i64 @vector(i64 %20, i64 %22)
  %24 = bitcast %struct.point* %12 to i64*
  store i64 %23, i64* %24, align 4
  %25 = bitcast %struct.point* %8 to i8*
  %26 = bitcast %struct.point* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = bitcast %struct.point* %6 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = bitcast %struct.point* %7 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i64 @vector(i64 %28, i64 %30)
  %32 = bitcast %struct.point* %13 to i64*
  store i64 %31, i64* %32, align 4
  %33 = bitcast %struct.point* %9 to i8*
  %34 = bitcast %struct.point* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  %35 = bitcast %struct.point* %5 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = bitcast %struct.point* %6 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call { double, double } @midpoint(i64 %36, i64 %38)
  %40 = bitcast %struct.dpoint* %14 to { double, double }*
  %41 = getelementptr inbounds { double, double }, { double, double }* %40, i32 0, i32 0
  %42 = extractvalue { double, double } %39, 0
  store double %42, double* %41, align 8
  %43 = getelementptr inbounds { double, double }, { double, double }* %40, i32 0, i32 1
  %44 = extractvalue { double, double } %39, 1
  store double %44, double* %43, align 8
  %45 = bitcast %struct.point* %8 to i64*
  %46 = load i64, i64* %45, align 4
  %47 = bitcast %struct.dpoint* %14 to { double, double }*
  %48 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = call double @calculate_c(i64 %46, double %49, double %51)
  store double %52, double* %10, align 8
  %53 = bitcast %struct.point* %6 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = bitcast %struct.point* %7 to i64*
  %56 = load i64, i64* %55, align 4
  %57 = call { double, double } @midpoint(i64 %54, i64 %56)
  %58 = bitcast %struct.dpoint* %15 to { double, double }*
  %59 = getelementptr inbounds { double, double }, { double, double }* %58, i32 0, i32 0
  %60 = extractvalue { double, double } %57, 0
  store double %60, double* %59, align 8
  %61 = getelementptr inbounds { double, double }, { double, double }* %58, i32 0, i32 1
  %62 = extractvalue { double, double } %57, 1
  store double %62, double* %61, align 8
  %63 = bitcast %struct.point* %9 to i64*
  %64 = load i64, i64* %63, align 4
  %65 = bitcast %struct.dpoint* %15 to { double, double }*
  %66 = getelementptr inbounds { double, double }, { double, double }* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds { double, double }, { double, double }* %65, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = call double @calculate_c(i64 %64, double %67, double %69)
  store double %70, double* %11, align 8
  %71 = load double, double* %10, align 8
  %72 = load double, double* %11, align 8
  %73 = bitcast %struct.point* %8 to i64*
  %74 = load i64, i64* %73, align 4
  %75 = bitcast %struct.point* %9 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = call { double, double } @intersect(i64 %74, i64 %76, double %71, double %72)
  %78 = bitcast %struct.dpoint* %4 to { double, double }*
  %79 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 0
  %80 = extractvalue { double, double } %77, 0
  store double %80, double* %79, align 8
  %81 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 1
  %82 = extractvalue { double, double } %77, 1
  store double %82, double* %81, align 8
  %83 = bitcast %struct.dpoint* %4 to { double, double }*
  %84 = load { double, double }, { double, double }* %83, align 8
  ret { double, double } %84
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @radius2(i64 %0, double %1, double %2) #0 {
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.dpoint, align 8
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.dpoint* %5 to { double, double }*
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %1, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %2, double* %9, align 8
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fsub double %12, %14
  %16 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to double
  %19 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fsub double %18, %20
  %22 = fmul double %15, %21
  %23 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sitofp i32 %24 to double
  %26 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = fsub double %25, %27
  %29 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sitofp i32 %30 to double
  %32 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %5, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fsub double %31, %33
  %35 = fmul double %28, %34
  %36 = fadd double %22, %35
  ret double %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @create_point(i64 %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.CHpoints*, align 8
  %4 = bitcast %struct.point* %2 to i64*
  store i64 %0, i64* %4, align 4
  %5 = call noalias i8* @malloc(i64 32) #5
  %6 = bitcast i8* %5 to %struct.CHpoints*
  store %struct.CHpoints* %6, %struct.CHpoints** %3, align 8
  %7 = icmp ne %struct.CHpoints* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 0) #6
  unreachable

10:                                               ; preds = %1
  %11 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %12 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %11, i32 0, i32 4
  store %struct.CHpoints* null, %struct.CHpoints** %12, align 8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i32 0, i32 3
  store %struct.CHpoints* null, %struct.CHpoints** %14, align 8
  %15 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %16 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %15, i32 0, i32 1
  %17 = bitcast %struct.point* %16 to i8*
  %18 = bitcast %struct.point* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  %19 = load i32, i32* @CHno, align 4
  %20 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  ret %struct.CHpoints* %22
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @point_list_insert(%struct.CHpoints** %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.CHpoints**, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = bitcast %struct.point* %3 to i64*
  store i64 %1, i64* %6, align 4
  store %struct.CHpoints** %0, %struct.CHpoints*** %4, align 8
  %7 = load i32, i32* @CHno, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @CHno, align 4
  %9 = bitcast %struct.point* %3 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = call %struct.CHpoints* @create_point(i64 %10)
  store %struct.CHpoints* %11, %struct.CHpoints** %5, align 8
  %12 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %12, align 8
  %14 = icmp eq %struct.CHpoints* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %17 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %18 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %17, i32 0, i32 4
  store %struct.CHpoints* %16, %struct.CHpoints** %18, align 8
  %19 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %20 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 3
  store %struct.CHpoints* %19, %struct.CHpoints** %21, align 8
  %22 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %23 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  store %struct.CHpoints* %22, %struct.CHpoints** %23, align 8
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %26 = load %struct.CHpoints*, %struct.CHpoints** %25, align 8
  %27 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %28 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %27, i32 0, i32 3
  store %struct.CHpoints* %26, %struct.CHpoints** %28, align 8
  %29 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %30 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %31 = load %struct.CHpoints*, %struct.CHpoints** %30, align 8
  %32 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %31, i32 0, i32 4
  %33 = load %struct.CHpoints*, %struct.CHpoints** %32, align 8
  %34 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %33, i32 0, i32 3
  store %struct.CHpoints* %29, %struct.CHpoints** %34, align 8
  %35 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %36 = load %struct.CHpoints*, %struct.CHpoints** %35, align 8
  %37 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %36, i32 0, i32 4
  %38 = load %struct.CHpoints*, %struct.CHpoints** %37, align 8
  %39 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %40 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %39, i32 0, i32 4
  store %struct.CHpoints* %38, %struct.CHpoints** %40, align 8
  %41 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %42 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  %43 = load %struct.CHpoints*, %struct.CHpoints** %42, align 8
  %44 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %43, i32 0, i32 4
  store %struct.CHpoints* %41, %struct.CHpoints** %44, align 8
  %45 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %46 = load %struct.CHpoints**, %struct.CHpoints*** %4, align 8
  store %struct.CHpoints* %45, %struct.CHpoints** %46, align 8
  br label %47

47:                                               ; preds = %24, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @before(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %3 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %4 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %3, i32 0, i32 4
  %5 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  ret %struct.CHpoints* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @next(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %3 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %4 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %3, i32 0, i32 3
  %5 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  ret %struct.CHpoints* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @angle(%struct.CHpoints* %0, %struct.CHpoints* %1, %struct.CHpoints* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.CHpoints*, align 8
  %7 = alloca %struct.CHpoints*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.point, align 4
  %13 = alloca %struct.point, align 4
  %14 = alloca %struct.point, align 4
  %15 = alloca %struct.point, align 4
  store %struct.CHpoints* %0, %struct.CHpoints** %5, align 8
  store %struct.CHpoints* %1, %struct.CHpoints** %6, align 8
  store %struct.CHpoints* %2, %struct.CHpoints** %7, align 8
  %16 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %17 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %16, i32 0, i32 1
  %18 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %19 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i32 0, i32 1
  %20 = bitcast %struct.point* %17 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = bitcast %struct.point* %19 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i64 @vector(i64 %21, i64 %23)
  %25 = bitcast %struct.point* %14 to i64*
  store i64 %24, i64* %25, align 4
  %26 = bitcast %struct.point* %12 to i8*
  %27 = bitcast %struct.point* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %29 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %28, i32 0, i32 1
  %30 = load %struct.CHpoints*, %struct.CHpoints** %7, align 8
  %31 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %30, i32 0, i32 1
  %32 = bitcast %struct.point* %29 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = bitcast %struct.point* %31 to i64*
  %35 = load i64, i64* %34, align 4
  %36 = call i64 @vector(i64 %33, i64 %35)
  %37 = bitcast %struct.point* %15 to i64*
  store i64 %36, i64* %37, align 4
  %38 = bitcast %struct.point* %13 to i8*
  %39 = bitcast %struct.point* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %41, %43
  %45 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = add nsw i32 %44, %49
  %51 = sitofp i32 %50 to double
  store double %51, double* %8, align 8
  %52 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %58, %60
  %62 = add nsw i32 %56, %61
  %63 = sitofp i32 %62 to double
  store double %63, double* %9, align 8
  %64 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = add nsw i32 %68, %73
  %75 = sitofp i32 %74 to double
  store double %75, double* %10, align 8
  %76 = load double, double* %8, align 8
  %77 = load double, double* %8, align 8
  %78 = fmul double %76, %77
  %79 = load double, double* %9, align 8
  %80 = load double, double* %10, align 8
  %81 = fmul double %79, %80
  %82 = fdiv double %78, %81
  store double %82, double* %11, align 8
  %83 = load double, double* %8, align 8
  %84 = fcmp olt double %83, 0.000000e+00
  br i1 %84, label %85, label %88

85:                                               ; preds = %3
  %86 = load double, double* %11, align 8
  %87 = fneg double %86
  store double %87, double* %4, align 8
  br label %90

88:                                               ; preds = %3
  %89 = load double, double* %11, align 8
  store double %89, double* %4, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = load double, double* %4, align 8
  ret double %91
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @number_points(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca [5 x i8], align 1
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %5 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %6 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i32 0, i32 3
  %7 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  store %struct.CHpoints* %7, %struct.CHpoints** %3, align 8
  br label %8

8:                                                ; preds = %12, %1
  %9 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %10 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %11 = icmp ne %struct.CHpoints* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i32 0, i32 3
  %15 = load %struct.CHpoints*, %struct.CHpoints** %14, align 8
  store %struct.CHpoints* %15, %struct.CHpoints** %3, align 8
  br label %8

16:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @remove_points(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %11 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %10, i32 0, i32 3
  %12 = load %struct.CHpoints*, %struct.CHpoints** %11, align 8
  store %struct.CHpoints* %12, %struct.CHpoints** %3, align 8
  br label %13

13:                                               ; preds = %165, %1
  %14 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %15 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %16 = icmp ne %struct.CHpoints* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %19 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i32 0, i32 3
  %20 = load %struct.CHpoints*, %struct.CHpoints** %19, align 8
  %21 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %22 = icmp ne %struct.CHpoints* %20, %21
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i1 [ false, %13 ], [ %22, %17 ]
  br i1 %24, label %25, label %166

25:                                               ; preds = %23
  %26 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %27 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %26, i32 0, i32 4
  %28 = load %struct.CHpoints*, %struct.CHpoints** %27, align 8
  %29 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %28, i32 0, i32 1
  %30 = bitcast %struct.point* %5 to i8*
  %31 = bitcast %struct.point* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %33 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %32, i32 0, i32 1
  %34 = bitcast %struct.point* %7 to i8*
  %35 = bitcast %struct.point* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %37 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %36, i32 0, i32 3
  %38 = load %struct.CHpoints*, %struct.CHpoints** %37, align 8
  %39 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %38, i32 0, i32 1
  %40 = bitcast %struct.point* %6 to i8*
  %41 = bitcast %struct.point* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  %52 = mul nsw i32 %46, %51
  %53 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %59, %61
  %63 = mul nsw i32 %57, %62
  %64 = add nsw i32 %52, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %161

66:                                               ; preds = %25
  %67 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %138, label %78

78:                                               ; preds = %72, %66
  %79 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %138, label %90

90:                                               ; preds = %84, %78
  %91 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %138, label %114

114:                                              ; preds = %108, %102, %96, %90
  %115 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %161

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %161

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %128, %130
  br i1 %131, label %132, label %161

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %134, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %132, %108, %84, %72
  %139 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  store %struct.CHpoints* %139, %struct.CHpoints** %4, align 8
  %140 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %141 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %140, i32 0, i32 4
  %142 = load %struct.CHpoints*, %struct.CHpoints** %141, align 8
  %143 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %144 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %143, i32 0, i32 3
  %145 = load %struct.CHpoints*, %struct.CHpoints** %144, align 8
  %146 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %145, i32 0, i32 4
  store %struct.CHpoints* %142, %struct.CHpoints** %146, align 8
  %147 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %148 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %147, i32 0, i32 3
  %149 = load %struct.CHpoints*, %struct.CHpoints** %148, align 8
  %150 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %151 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %150, i32 0, i32 4
  %152 = load %struct.CHpoints*, %struct.CHpoints** %151, align 8
  %153 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %152, i32 0, i32 3
  store %struct.CHpoints* %149, %struct.CHpoints** %153, align 8
  %154 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %155 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %154, i32 0, i32 3
  %156 = load %struct.CHpoints*, %struct.CHpoints** %155, align 8
  store %struct.CHpoints* %156, %struct.CHpoints** %3, align 8
  %157 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %158 = bitcast %struct.CHpoints* %157 to i8*
  call void @free(i8* %158) #5
  %159 = load i32, i32* @CHno, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* @CHno, align 4
  br label %165

161:                                              ; preds = %132, %126, %120, %114, %25
  %162 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %163 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %162, i32 0, i32 3
  %164 = load %struct.CHpoints*, %struct.CHpoints** %163, align 8
  store %struct.CHpoints* %164, %struct.CHpoints** %3, align 8
  br label %165

165:                                              ; preds = %161, %138
  br label %13

166:                                              ; preds = %23
  %167 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %168 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %167, i32 0, i32 4
  %169 = load %struct.CHpoints*, %struct.CHpoints** %168, align 8
  %170 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %169, i32 0, i32 1
  %171 = bitcast %struct.point* %5 to i8*
  %172 = bitcast %struct.point* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 8, i1 false)
  %173 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %174 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %173, i32 0, i32 1
  %175 = bitcast %struct.point* %7 to i8*
  %176 = bitcast %struct.point* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 4 %176, i64 8, i1 false)
  %177 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %178 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %177, i32 0, i32 3
  %179 = load %struct.CHpoints*, %struct.CHpoints** %178, align 8
  %180 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %179, i32 0, i32 1
  %181 = bitcast %struct.point* %6 to i8*
  %182 = bitcast %struct.point* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 4 %182, i64 8, i1 false)
  %183 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %184, %186
  %188 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %189, %191
  %193 = mul nsw i32 %187, %192
  %194 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %195, %197
  %199 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %200, %202
  %204 = mul nsw i32 %198, %203
  %205 = add nsw i32 %193, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %302

207:                                              ; preds = %166
  %208 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %279, label %219

219:                                              ; preds = %213, %207
  %220 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %221, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %227, %229
  br i1 %230, label %279, label %231

231:                                              ; preds = %225, %219
  %232 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %255

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %279, label %255

255:                                              ; preds = %249, %243, %237, %231
  %256 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %257, %259
  br i1 %260, label %261, label %302

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %302

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp sgt i32 %269, %271
  br i1 %272, label %273, label %302

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %275, %277
  br i1 %278, label %279, label %302

279:                                              ; preds = %273, %249, %225, %213
  %280 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  store %struct.CHpoints* %280, %struct.CHpoints** %4, align 8
  %281 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %282 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %281, i32 0, i32 4
  %283 = load %struct.CHpoints*, %struct.CHpoints** %282, align 8
  %284 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %285 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %284, i32 0, i32 3
  %286 = load %struct.CHpoints*, %struct.CHpoints** %285, align 8
  %287 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %286, i32 0, i32 4
  store %struct.CHpoints* %283, %struct.CHpoints** %287, align 8
  %288 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %289 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %288, i32 0, i32 3
  %290 = load %struct.CHpoints*, %struct.CHpoints** %289, align 8
  %291 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %292 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %291, i32 0, i32 4
  %293 = load %struct.CHpoints*, %struct.CHpoints** %292, align 8
  %294 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %293, i32 0, i32 3
  store %struct.CHpoints* %290, %struct.CHpoints** %294, align 8
  %295 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %296 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %295, i32 0, i32 3
  %297 = load %struct.CHpoints*, %struct.CHpoints** %296, align 8
  store %struct.CHpoints* %297, %struct.CHpoints** %3, align 8
  %298 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %299 = bitcast %struct.CHpoints* %298 to i8*
  call void @free(i8* %299) #5
  %300 = load i32, i32* @CHno, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* @CHno, align 4
  br label %302

302:                                              ; preds = %279, %273, %267, %261, %255, %166
  %303 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  ret %struct.CHpoints* %303
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %0, %struct.key* byval(%struct.key) align 8 %1) #0 {
  %3 = alloca %struct.CHsplay_node*, align 8
  %4 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %4, align 8
  %5 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %6 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fcmp olt double %9, %11
  br i1 %12, label %58, label %13

13:                                               ; preds = %2
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fcmp oeq double %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %24 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fcmp ogt double %27, %29
  br i1 %30, label %58, label %31

31:                                               ; preds = %22, %13
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fcmp oeq double %36, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = fcmp oeq double %45, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %40
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49, %22, %2
  %59 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %60 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %59, i32 0, i32 3
  %61 = load %struct.CHsplay_node*, %struct.CHsplay_node** %60, align 8
  %62 = icmp ne %struct.CHsplay_node* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %65 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %64, i32 0, i32 3
  %66 = load %struct.CHsplay_node*, %struct.CHsplay_node** %65, align 8
  %67 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %66, %struct.key* byval(%struct.key) align 8 %1)
  store %struct.CHsplay_node* %67, %struct.CHsplay_node** %3, align 8
  br label %134

68:                                               ; preds = %58, %49, %40, %31
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.key, %struct.key* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fcmp ogt double %73, %75
  br i1 %76, label %122, label %77

77:                                               ; preds = %68
  %78 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %79 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.key, %struct.key* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fcmp oeq double %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %88 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.key, %struct.key* %89, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %93 = load double, double* %92, align 8
  %94 = fcmp olt double %91, %93
  br i1 %94, label %122, label %95

95:                                               ; preds = %86, %77
  %96 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %97 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.key, %struct.key* %98, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fcmp oeq double %100, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %95
  %105 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %106 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.key, %struct.key* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 1
  %111 = load double, double* %110, align 8
  %112 = fcmp oeq double %109, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %115 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.key, %struct.key* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.key, %struct.key* %1, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %113, %86, %68
  %123 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %124 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %123, i32 0, i32 2
  %125 = load %struct.CHsplay_node*, %struct.CHsplay_node** %124, align 8
  %126 = icmp ne %struct.CHsplay_node* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %129 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %128, i32 0, i32 2
  %130 = load %struct.CHsplay_node*, %struct.CHsplay_node** %129, align 8
  %131 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %130, %struct.key* byval(%struct.key) align 8 %1)
  store %struct.CHsplay_node* %131, %struct.CHsplay_node** %3, align 8
  br label %134

132:                                              ; preds = %122, %113, %104, %95
  %133 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  store %struct.CHsplay_node* %133, %struct.CHsplay_node** %3, align 8
  br label %134

134:                                              ; preds = %132, %127, %63
  %135 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  ret %struct.CHsplay_node* %135
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %0) #0 {
  %2 = alloca %struct.CHsplay_node*, align 8
  %3 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %2, align 8
  %4 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %5 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %4, i32 0, i32 1
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 2
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %7, align 8
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %10 = icmp eq %struct.CHsplay_node* %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %13 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %12, i32 0, i32 3
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %13, align 8
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 1
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 2
  store %struct.CHsplay_node* %14, %struct.CHsplay_node** %18, align 8
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %20 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %19, i32 0, i32 3
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %20, align 8
  %22 = icmp ne %struct.CHsplay_node* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %24, i32 0, i32 1
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %25, align 8
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %28 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %27, i32 0, i32 3
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %28, align 8
  %30 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %29, i32 0, i32 1
  store %struct.CHsplay_node* %26, %struct.CHsplay_node** %30, align 8
  br label %31

31:                                               ; preds = %23, %11
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %32, i32 0, i32 1
  %34 = load %struct.CHsplay_node*, %struct.CHsplay_node** %33, align 8
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %36 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %35, i32 0, i32 3
  store %struct.CHsplay_node* %34, %struct.CHsplay_node** %36, align 8
  br label %63

37:                                               ; preds = %1
  %38 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %39 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %38, i32 0, i32 2
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %39, align 8
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %41, i32 0, i32 1
  %43 = load %struct.CHsplay_node*, %struct.CHsplay_node** %42, align 8
  %44 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %43, i32 0, i32 3
  store %struct.CHsplay_node* %40, %struct.CHsplay_node** %44, align 8
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i32 0, i32 2
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %46, align 8
  %48 = icmp ne %struct.CHsplay_node* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i32 0, i32 1
  %52 = load %struct.CHsplay_node*, %struct.CHsplay_node** %51, align 8
  %53 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %54 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %53, i32 0, i32 2
  %55 = load %struct.CHsplay_node*, %struct.CHsplay_node** %54, align 8
  %56 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %55, i32 0, i32 1
  store %struct.CHsplay_node* %52, %struct.CHsplay_node** %56, align 8
  br label %57

57:                                               ; preds = %49, %37
  %58 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %59 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %58, i32 0, i32 1
  %60 = load %struct.CHsplay_node*, %struct.CHsplay_node** %59, align 8
  %61 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %62 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %61, i32 0, i32 2
  store %struct.CHsplay_node* %60, %struct.CHsplay_node** %62, align 8
  br label %63

63:                                               ; preds = %57, %31
  %64 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %65 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %64, i32 0, i32 1
  %66 = load %struct.CHsplay_node*, %struct.CHsplay_node** %65, align 8
  %67 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %66, i32 0, i32 1
  %68 = load %struct.CHsplay_node*, %struct.CHsplay_node** %67, align 8
  store %struct.CHsplay_node* %68, %struct.CHsplay_node** %3, align 8
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %70 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %71 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %70, i32 0, i32 1
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %71, align 8
  %73 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %72, i32 0, i32 1
  store %struct.CHsplay_node* %69, %struct.CHsplay_node** %73, align 8
  %74 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %75 = icmp ne %struct.CHsplay_node* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %63
  %77 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %78 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %77, i32 0, i32 2
  %79 = load %struct.CHsplay_node*, %struct.CHsplay_node** %78, align 8
  %80 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %81 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %80, i32 0, i32 1
  %82 = load %struct.CHsplay_node*, %struct.CHsplay_node** %81, align 8
  %83 = icmp eq %struct.CHsplay_node* %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %86 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %87 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %86, i32 0, i32 2
  store %struct.CHsplay_node* %85, %struct.CHsplay_node** %87, align 8
  br label %92

88:                                               ; preds = %76
  %89 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %90 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %91 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %90, i32 0, i32 3
  store %struct.CHsplay_node* %89, %struct.CHsplay_node** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %95 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %96 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %95, i32 0, i32 1
  store %struct.CHsplay_node* %94, %struct.CHsplay_node** %96, align 8
  %97 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  ret %struct.CHsplay_node* %97
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @CHsplay(%struct.CHsplay_node** %0, %struct.key* byval(%struct.key) align 8 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.CHsplay_node**, align 8
  %5 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %4, align 8
  %6 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %7 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %8 = call %struct.CHsplay_node* @CHfind(%struct.CHsplay_node* %7, %struct.key* byval(%struct.key) align 8 %1)
  store %struct.CHsplay_node* %8, %struct.CHsplay_node** %5, align 8
  br label %9

9:                                                ; preds = %85, %2
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %11 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %10, i32 0, i32 1
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %11, align 8
  %13 = icmp ne %struct.CHsplay_node* %12, null
  br i1 %13, label %14, label %86

14:                                               ; preds = %9
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 1
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 1
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  %20 = icmp eq %struct.CHsplay_node* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %23 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %22)
  store %struct.CHsplay_node* %23, %struct.CHsplay_node** %5, align 8
  br label %85

24:                                               ; preds = %14
  %25 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %26 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %25, i32 0, i32 1
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %26, align 8
  %28 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %27, i32 0, i32 2
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %28, align 8
  %30 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %31 = icmp eq %struct.CHsplay_node* %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 1
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %34, align 8
  %36 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %35, i32 0, i32 1
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %36, align 8
  %38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i32 0, i32 2
  %39 = load %struct.CHsplay_node*, %struct.CHsplay_node** %38, align 8
  %40 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %41 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %40, i32 0, i32 1
  %42 = load %struct.CHsplay_node*, %struct.CHsplay_node** %41, align 8
  %43 = icmp eq %struct.CHsplay_node* %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i32 0, i32 1
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %46, align 8
  %48 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %47)
  %49 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %50 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %49)
  store %struct.CHsplay_node* %50, %struct.CHsplay_node** %5, align 8
  br label %84

51:                                               ; preds = %32, %24
  %52 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %53 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %52, i32 0, i32 1
  %54 = load %struct.CHsplay_node*, %struct.CHsplay_node** %53, align 8
  %55 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %54, i32 0, i32 3
  %56 = load %struct.CHsplay_node*, %struct.CHsplay_node** %55, align 8
  %57 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %58 = icmp eq %struct.CHsplay_node* %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %61 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %60, i32 0, i32 1
  %62 = load %struct.CHsplay_node*, %struct.CHsplay_node** %61, align 8
  %63 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %62, i32 0, i32 1
  %64 = load %struct.CHsplay_node*, %struct.CHsplay_node** %63, align 8
  %65 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %64, i32 0, i32 3
  %66 = load %struct.CHsplay_node*, %struct.CHsplay_node** %65, align 8
  %67 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %68 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %67, i32 0, i32 1
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %68, align 8
  %70 = icmp eq %struct.CHsplay_node* %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %59
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %73 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %72, i32 0, i32 1
  %74 = load %struct.CHsplay_node*, %struct.CHsplay_node** %73, align 8
  %75 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %74)
  %76 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %77 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %76)
  store %struct.CHsplay_node* %77, %struct.CHsplay_node** %5, align 8
  br label %83

78:                                               ; preds = %59, %51
  %79 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %80 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %79)
  store %struct.CHsplay_node* %80, %struct.CHsplay_node** %5, align 8
  %81 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %82 = call %struct.CHsplay_node* @CHrotate(%struct.CHsplay_node* %81)
  store %struct.CHsplay_node* %82, %struct.CHsplay_node** %5, align 8
  br label %83

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83, %44
  br label %85

85:                                               ; preds = %84, %21
  br label %9

86:                                               ; preds = %9
  %87 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %88 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  store %struct.CHsplay_node* %87, %struct.CHsplay_node** %88, align 8
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHtraverse(%struct.CHsplay_node* %0) #0 {
  %2 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %2, align 8
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %4 = icmp ne %struct.CHsplay_node* %3, null
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 2
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %7, align 8
  call void @CHtraverse(%struct.CHsplay_node* %8)
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %10, i32 0, i32 1
  %12 = load %struct.CHpoints*, %struct.CHpoints** %11, align 8
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.point, %struct.point* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %17 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %17, i32 0, i32 1
  %19 = load %struct.CHpoints*, %struct.CHpoints** %18, align 8
  %20 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.point, %struct.point* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %24 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %29 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.key, %struct.key* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.key, %struct.key* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %15, i32 %22, double %27, double %32, i32 %37)
  %39 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %40 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %39, i32 0, i32 3
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %40, align 8
  call void @CHtraverse(%struct.CHsplay_node* %41)
  br label %42

42:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHfree_tree(%struct.CHsplay_node* %0) #0 {
  %2 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node* %0, %struct.CHsplay_node** %2, align 8
  %3 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %4 = icmp ne %struct.CHsplay_node* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %7 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %6, i32 0, i32 2
  %8 = load %struct.CHsplay_node*, %struct.CHsplay_node** %7, align 8
  call void @CHfree_tree(%struct.CHsplay_node* %8)
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %10 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %9, i32 0, i32 3
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %10, align 8
  call void @CHfree_tree(%struct.CHsplay_node* %11)
  %12 = load %struct.CHsplay_node*, %struct.CHsplay_node** %2, align 8
  %13 = bitcast %struct.CHsplay_node* %12 to i8*
  call void @free(i8* %13) #5
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHsplay_node*, align 8
  %4 = alloca %struct.dpoint, align 8
  %5 = alloca %struct.key, align 8
  %6 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %7 = call noalias i8* @malloc(i64 56) #5
  %8 = bitcast i8* %7 to %struct.CHsplay_node*
  store %struct.CHsplay_node* %8, %struct.CHsplay_node** %3, align 8
  %9 = icmp ne %struct.CHsplay_node* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 0) #6
  unreachable

12:                                               ; preds = %1
  %13 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %14 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %13, i32 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %14, align 8
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %16 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %15, i32 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %16, align 8
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %18, align 8
  %19 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %20 = call %struct.CHpoints* @before(%struct.CHpoints* %19)
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 1
  %22 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %23 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %22, i32 0, i32 1
  %24 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %25 = call %struct.CHpoints* @next(%struct.CHpoints* %24)
  %26 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %25, i32 0, i32 1
  %27 = bitcast %struct.point* %21 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = bitcast %struct.point* %23 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = bitcast %struct.point* %26 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call { double, double } @centre(i64 %28, i64 %30, i64 %32)
  %34 = bitcast %struct.dpoint* %6 to { double, double }*
  %35 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = extractvalue { double, double } %33, 0
  store double %36, double* %35, align 8
  %37 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = extractvalue { double, double } %33, 1
  store double %38, double* %37, align 8
  %39 = bitcast %struct.dpoint* %4 to i8*
  %40 = bitcast %struct.dpoint* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %42 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %41, i32 0, i32 1
  %43 = bitcast %struct.point* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = bitcast %struct.dpoint* %4 to { double, double }*
  %46 = getelementptr inbounds { double, double }, { double, double }* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds { double, double }, { double, double }* %45, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = call double @radius2(i64 %44, double %47, double %49)
  %51 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 0
  store double %50, double* %51, align 8
  %52 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %53 = call %struct.CHpoints* @before(%struct.CHpoints* %52)
  %54 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %55 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %56 = call %struct.CHpoints* @next(%struct.CHpoints* %55)
  %57 = call double @angle(%struct.CHpoints* %53, %struct.CHpoints* %54, %struct.CHpoints* %56)
  %58 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 1
  store double %57, double* %58, align 8
  %59 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %60 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %64 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %64, i32 0, i32 0
  %66 = bitcast %struct.key* %65 to i8*
  %67 = bitcast %struct.key* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 24, i1 false)
  %68 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %70, i32 0, i32 1
  store %struct.CHpoints* %68, %struct.CHpoints** %71, align 8
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %3, align 8
  ret %struct.CHsplay_node* %72
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHsplay_node* @CHinit() #0 {
  ret %struct.CHsplay_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @CHinsert(%struct.CHsplay_node** %0, %struct.CHpoints* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.CHsplay_node**, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.CHsplay_node*, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %4, align 8
  store %struct.CHpoints* %1, %struct.CHpoints** %5, align 8
  %7 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %8 = call %struct.CHsplay_node* @CHcreate_node(%struct.CHpoints* %7)
  store %struct.CHsplay_node* %8, %struct.CHsplay_node** %6, align 8
  %9 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %10 = load %struct.CHsplay_node*, %struct.CHsplay_node** %9, align 8
  %11 = icmp ne %struct.CHsplay_node* %10, null
  br i1 %11, label %12, label %150

12:                                               ; preds = %2
  %13 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %14 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %15 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %15, i32 0, i32 0
  %17 = call i8* @CHsplay(%struct.CHsplay_node** %13, %struct.key* byval(%struct.key) align 8 %16)
  %18 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  %20 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.key, %struct.key* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fcmp ogt double %23, %28
  br i1 %29, label %95, label %30

30:                                               ; preds = %12
  %31 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %31, align 8
  %33 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %38 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fcmp oeq double %36, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %30
  %44 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %45 = load %struct.CHsplay_node*, %struct.CHsplay_node** %44, align 8
  %46 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.key, %struct.key* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %51 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fcmp olt double %49, %54
  br i1 %55, label %95, label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %58 = load %struct.CHsplay_node*, %struct.CHsplay_node** %57, align 8
  %59 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.key, %struct.key* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %64 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.key, %struct.key* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fcmp oeq double %62, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %56
  %70 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %71 = load %struct.CHsplay_node*, %struct.CHsplay_node** %70, align 8
  %72 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.key, %struct.key* %73, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %77 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.key, %struct.key* %78, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = fcmp oeq double %75, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %69
  %83 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %84 = load %struct.CHsplay_node*, %struct.CHsplay_node** %83, align 8
  %85 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.key, %struct.key* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %90 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.key, %struct.key* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %88, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %82, %43, %12
  %96 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %97 = load %struct.CHsplay_node*, %struct.CHsplay_node** %96, align 8
  %98 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %97, i32 0, i32 2
  %99 = load %struct.CHsplay_node*, %struct.CHsplay_node** %98, align 8
  %100 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %101 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %100, i32 0, i32 2
  store %struct.CHsplay_node* %99, %struct.CHsplay_node** %101, align 8
  %102 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %103 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %102, i32 0, i32 2
  %104 = load %struct.CHsplay_node*, %struct.CHsplay_node** %103, align 8
  %105 = icmp ne %struct.CHsplay_node* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %95
  %107 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %108 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %109 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %108, i32 0, i32 2
  %110 = load %struct.CHsplay_node*, %struct.CHsplay_node** %109, align 8
  %111 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %110, i32 0, i32 1
  store %struct.CHsplay_node* %107, %struct.CHsplay_node** %111, align 8
  br label %112

112:                                              ; preds = %106, %95
  %113 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %114 = load %struct.CHsplay_node*, %struct.CHsplay_node** %113, align 8
  %115 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %116 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %115, i32 0, i32 3
  store %struct.CHsplay_node* %114, %struct.CHsplay_node** %116, align 8
  %117 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %118 = load %struct.CHsplay_node*, %struct.CHsplay_node** %117, align 8
  %119 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %118, i32 0, i32 2
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %119, align 8
  br label %145

120:                                              ; preds = %82, %69, %56
  %121 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %122 = load %struct.CHsplay_node*, %struct.CHsplay_node** %121, align 8
  %123 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %122, i32 0, i32 3
  %124 = load %struct.CHsplay_node*, %struct.CHsplay_node** %123, align 8
  %125 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %126 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %125, i32 0, i32 3
  store %struct.CHsplay_node* %124, %struct.CHsplay_node** %126, align 8
  %127 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %128 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %127, i32 0, i32 3
  %129 = load %struct.CHsplay_node*, %struct.CHsplay_node** %128, align 8
  %130 = icmp ne %struct.CHsplay_node* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %133 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %134 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %133, i32 0, i32 3
  %135 = load %struct.CHsplay_node*, %struct.CHsplay_node** %134, align 8
  %136 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %135, i32 0, i32 1
  store %struct.CHsplay_node* %132, %struct.CHsplay_node** %136, align 8
  br label %137

137:                                              ; preds = %131, %120
  %138 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %139 = load %struct.CHsplay_node*, %struct.CHsplay_node** %138, align 8
  %140 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %141 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %140, i32 0, i32 2
  store %struct.CHsplay_node* %139, %struct.CHsplay_node** %141, align 8
  %142 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %143 = load %struct.CHsplay_node*, %struct.CHsplay_node** %142, align 8
  %144 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %143, i32 0, i32 3
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %144, align 8
  br label %145

145:                                              ; preds = %137, %112
  %146 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %147 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  %148 = load %struct.CHsplay_node*, %struct.CHsplay_node** %147, align 8
  %149 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %148, i32 0, i32 1
  store %struct.CHsplay_node* %146, %struct.CHsplay_node** %149, align 8
  br label %150

150:                                              ; preds = %145, %2
  %151 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %152 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %4, align 8
  store %struct.CHsplay_node* %151, %struct.CHsplay_node** %152, align 8
  %153 = load i8*, i8** %3, align 8
  ret i8* %153
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHsplay_node**, align 8
  %4 = alloca %struct.CHsplay_element, align 8
  %5 = alloca %struct.CHsplay_node*, align 8
  %6 = alloca %struct.key, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  store double 0x47EFFFFFE0000000, double* %7, align 8
  %8 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  store double 1.000000e+03, double* %8, align 8
  %9 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 2
  store i32 1000, i32* %9, align 8
  %10 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %11 = load %struct.CHsplay_node*, %struct.CHsplay_node** %10, align 8
  %12 = icmp ne %struct.CHsplay_node* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %15 = call i8* @CHsplay(%struct.CHsplay_node** %14, %struct.key* byval(%struct.key) align 8 %6)
  %16 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 0
  %19 = bitcast %struct.CHsplay_element* %4 to i8*
  %20 = bitcast %struct.CHsplay_element* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  %21 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %22 = load %struct.CHsplay_node*, %struct.CHsplay_node** %21, align 8
  store %struct.CHsplay_node* %22, %struct.CHsplay_node** %5, align 8
  %23 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %23, align 8
  %25 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %24, i32 0, i32 2
  %26 = load %struct.CHsplay_node*, %struct.CHsplay_node** %25, align 8
  %27 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %26, %struct.CHsplay_node** %27, align 8
  %28 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %29 = load %struct.CHsplay_node*, %struct.CHsplay_node** %28, align 8
  %30 = icmp ne %struct.CHsplay_node* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %33 = load %struct.CHsplay_node*, %struct.CHsplay_node** %32, align 8
  %34 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %33, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %34, align 8
  br label %35

35:                                               ; preds = %31, %13
  %36 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %37 = bitcast %struct.CHsplay_node* %36 to i8*
  call void @free(i8* %37) #5
  br label %40

38:                                               ; preds = %1
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store %struct.CHpoints* null, %struct.CHpoints** %2, align 8
  br label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.CHsplay_element, %struct.CHsplay_element* %4, i32 0, i32 1
  %42 = load %struct.CHpoints*, %struct.CHpoints** %41, align 8
  store %struct.CHpoints* %42, %struct.CHpoints** %2, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  ret %struct.CHpoints* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CHdelete(%struct.CHsplay_node** %0, %struct.key* byval(%struct.key) align 8 %1) #0 {
  %3 = alloca %struct.CHsplay_node**, align 8
  %4 = alloca %struct.CHsplay_node*, align 8
  %5 = alloca %struct.CHsplay_node*, align 8
  %6 = alloca %struct.CHsplay_node*, align 8
  %7 = alloca %struct.key, align 8
  store %struct.CHsplay_node** %0, %struct.CHsplay_node*** %3, align 8
  %8 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %9 = load %struct.CHsplay_node*, %struct.CHsplay_node** %8, align 8
  %10 = icmp ne %struct.CHsplay_node* %9, null
  br i1 %10, label %11, label %83

11:                                               ; preds = %2
  %12 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %13 = call i8* @CHsplay(%struct.CHsplay_node** %12, %struct.key* byval(%struct.key) align 8 %1)
  %14 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %15 = load %struct.CHsplay_node*, %struct.CHsplay_node** %14, align 8
  store %struct.CHsplay_node* %15, %struct.CHsplay_node** %4, align 8
  %16 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %17 = load %struct.CHsplay_node*, %struct.CHsplay_node** %16, align 8
  %18 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %17, i32 0, i32 2
  %19 = load %struct.CHsplay_node*, %struct.CHsplay_node** %18, align 8
  store %struct.CHsplay_node* %19, %struct.CHsplay_node** %5, align 8
  %20 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %21 = load %struct.CHsplay_node*, %struct.CHsplay_node** %20, align 8
  %22 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %21, i32 0, i32 3
  %23 = load %struct.CHsplay_node*, %struct.CHsplay_node** %22, align 8
  store %struct.CHsplay_node* %23, %struct.CHsplay_node** %6, align 8
  %24 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %25 = icmp eq %struct.CHsplay_node* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %28 = icmp eq %struct.CHsplay_node* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %30, align 8
  br label %80

31:                                               ; preds = %26, %11
  %32 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %33 = icmp eq %struct.CHsplay_node* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %36 = icmp ne %struct.CHsplay_node* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %39 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %38, %struct.CHsplay_node** %39, align 8
  %40 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %41 = load %struct.CHsplay_node*, %struct.CHsplay_node** %40, align 8
  %42 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %41, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %42, align 8
  br label %79

43:                                               ; preds = %34, %31
  %44 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %45 = icmp ne %struct.CHsplay_node* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %48 = icmp eq %struct.CHsplay_node* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %51 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %50, %struct.CHsplay_node** %51, align 8
  %52 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  %53 = load %struct.CHsplay_node*, %struct.CHsplay_node** %52, align 8
  %54 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %53, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %54, align 8
  br label %78

55:                                               ; preds = %46, %43
  %56 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  store double 0x47EFFFFFE0000000, double* %56, align 8
  %57 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 1
  store double 1.000000e+03, double* %57, align 8
  %58 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  store i32 1000, i32* %58, align 8
  %59 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %60 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %59, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %60, align 8
  %61 = call i8* @CHsplay(%struct.CHsplay_node** %5, %struct.key* byval(%struct.key) align 8 %7)
  %62 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  store double -1.000000e+00, double* %62, align 8
  %63 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 1
  store double -1.000000e+00, double* %63, align 8
  %64 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  store i32 -1, i32* %64, align 8
  %65 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %66 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %65, i32 0, i32 1
  store %struct.CHsplay_node* null, %struct.CHsplay_node** %66, align 8
  %67 = call i8* @CHsplay(%struct.CHsplay_node** %6, %struct.key* byval(%struct.key) align 8 %7)
  %68 = load %struct.CHsplay_node*, %struct.CHsplay_node** %6, align 8
  %69 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %70 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %69, i32 0, i32 3
  store %struct.CHsplay_node* %68, %struct.CHsplay_node** %70, align 8
  %71 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %72 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %73 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %72, i32 0, i32 3
  %74 = load %struct.CHsplay_node*, %struct.CHsplay_node** %73, align 8
  %75 = getelementptr inbounds %struct.CHsplay_node, %struct.CHsplay_node* %74, i32 0, i32 1
  store %struct.CHsplay_node* %71, %struct.CHsplay_node** %75, align 8
  %76 = load %struct.CHsplay_node*, %struct.CHsplay_node** %5, align 8
  %77 = load %struct.CHsplay_node**, %struct.CHsplay_node*** %3, align 8
  store %struct.CHsplay_node* %76, %struct.CHsplay_node** %77, align 8
  br label %78

78:                                               ; preds = %55, %49
  br label %79

79:                                               ; preds = %78, %37
  br label %80

80:                                               ; preds = %79, %29
  %81 = load %struct.CHsplay_node*, %struct.CHsplay_node** %4, align 8
  %82 = bitcast %struct.CHsplay_node* %81 to i8*
  call void @free(i8* %82) #5
  br label %85

83:                                               ; preds = %2
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @find(%struct.splay_node* %0, i64 %1) #0 {
  %3 = alloca %struct.splay_node*, align 8
  %4 = alloca %struct.splay_node*, align 8
  %5 = alloca i64, align 8
  store %struct.splay_node* %0, %struct.splay_node** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 3
  %15 = load %struct.splay_node*, %struct.splay_node** %14, align 8
  %16 = icmp ne %struct.splay_node* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %19 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %18, i32 0, i32 3
  %20 = load %struct.splay_node*, %struct.splay_node** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.splay_node* @find(%struct.splay_node* %20, i64 %21)
  store %struct.splay_node* %22, %struct.splay_node** %3, align 8
  br label %43

23:                                               ; preds = %12, %2
  %24 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %32 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %31, i32 0, i32 2
  %33 = load %struct.splay_node*, %struct.splay_node** %32, align 8
  %34 = icmp ne %struct.splay_node* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %37 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %36, i32 0, i32 2
  %38 = load %struct.splay_node*, %struct.splay_node** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call %struct.splay_node* @find(%struct.splay_node* %38, i64 %39)
  store %struct.splay_node* %40, %struct.splay_node** %3, align 8
  br label %43

41:                                               ; preds = %30, %23
  %42 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  store %struct.splay_node* %42, %struct.splay_node** %3, align 8
  br label %43

43:                                               ; preds = %41, %35, %17
  %44 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  ret %struct.splay_node* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @rotate(%struct.splay_node* %0) #0 {
  %2 = alloca %struct.splay_node*, align 8
  %3 = alloca %struct.splay_node*, align 8
  store %struct.splay_node* %0, %struct.splay_node** %2, align 8
  %4 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %5 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i32 0, i32 1
  %6 = load %struct.splay_node*, %struct.splay_node** %5, align 8
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 2
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  %9 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %10 = icmp eq %struct.splay_node* %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %13 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %12, i32 0, i32 3
  %14 = load %struct.splay_node*, %struct.splay_node** %13, align 8
  %15 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %16 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %15, i32 0, i32 1
  %17 = load %struct.splay_node*, %struct.splay_node** %16, align 8
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %17, i32 0, i32 2
  store %struct.splay_node* %14, %struct.splay_node** %18, align 8
  %19 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %20 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i32 0, i32 3
  %21 = load %struct.splay_node*, %struct.splay_node** %20, align 8
  %22 = icmp ne %struct.splay_node* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i32 0, i32 1
  %26 = load %struct.splay_node*, %struct.splay_node** %25, align 8
  %27 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %28 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 3
  %29 = load %struct.splay_node*, %struct.splay_node** %28, align 8
  %30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 1
  store %struct.splay_node* %26, %struct.splay_node** %30, align 8
  br label %31

31:                                               ; preds = %23, %11
  %32 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %33 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %32, i32 0, i32 1
  %34 = load %struct.splay_node*, %struct.splay_node** %33, align 8
  %35 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %36 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %35, i32 0, i32 3
  store %struct.splay_node* %34, %struct.splay_node** %36, align 8
  br label %63

37:                                               ; preds = %1
  %38 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %39 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %38, i32 0, i32 2
  %40 = load %struct.splay_node*, %struct.splay_node** %39, align 8
  %41 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %42 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %41, i32 0, i32 1
  %43 = load %struct.splay_node*, %struct.splay_node** %42, align 8
  %44 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %43, i32 0, i32 3
  store %struct.splay_node* %40, %struct.splay_node** %44, align 8
  %45 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %46 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i32 0, i32 2
  %47 = load %struct.splay_node*, %struct.splay_node** %46, align 8
  %48 = icmp ne %struct.splay_node* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %51 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %50, i32 0, i32 1
  %52 = load %struct.splay_node*, %struct.splay_node** %51, align 8
  %53 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %54 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %53, i32 0, i32 2
  %55 = load %struct.splay_node*, %struct.splay_node** %54, align 8
  %56 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %55, i32 0, i32 1
  store %struct.splay_node* %52, %struct.splay_node** %56, align 8
  br label %57

57:                                               ; preds = %49, %37
  %58 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %59 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %58, i32 0, i32 1
  %60 = load %struct.splay_node*, %struct.splay_node** %59, align 8
  %61 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %62 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %61, i32 0, i32 2
  store %struct.splay_node* %60, %struct.splay_node** %62, align 8
  br label %63

63:                                               ; preds = %57, %31
  %64 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %65 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %64, i32 0, i32 1
  %66 = load %struct.splay_node*, %struct.splay_node** %65, align 8
  %67 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %66, i32 0, i32 1
  %68 = load %struct.splay_node*, %struct.splay_node** %67, align 8
  store %struct.splay_node* %68, %struct.splay_node** %3, align 8
  %69 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %70 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %71 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %70, i32 0, i32 1
  %72 = load %struct.splay_node*, %struct.splay_node** %71, align 8
  %73 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %72, i32 0, i32 1
  store %struct.splay_node* %69, %struct.splay_node** %73, align 8
  %74 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %75 = icmp ne %struct.splay_node* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %63
  %77 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %78 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %77, i32 0, i32 2
  %79 = load %struct.splay_node*, %struct.splay_node** %78, align 8
  %80 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %81 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %80, i32 0, i32 1
  %82 = load %struct.splay_node*, %struct.splay_node** %81, align 8
  %83 = icmp eq %struct.splay_node* %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %86 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %87 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %86, i32 0, i32 2
  store %struct.splay_node* %85, %struct.splay_node** %87, align 8
  br label %92

88:                                               ; preds = %76
  %89 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %90 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %91 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %90, i32 0, i32 3
  store %struct.splay_node* %89, %struct.splay_node** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %95 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %96 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %95, i32 0, i32 1
  store %struct.splay_node* %94, %struct.splay_node** %96, align 8
  %97 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  ret %struct.splay_node* %97
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @splay(%struct.splay_node** %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.splay_node**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.splay_node*, align 8
  store %struct.splay_node** %0, %struct.splay_node*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.splay_node**, %struct.splay_node*** %4, align 8
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.splay_node* @find(%struct.splay_node* %8, i64 %9)
  store %struct.splay_node* %10, %struct.splay_node** %6, align 8
  br label %11

11:                                               ; preds = %87, %2
  %12 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %13 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %12, i32 0, i32 1
  %14 = load %struct.splay_node*, %struct.splay_node** %13, align 8
  %15 = icmp ne %struct.splay_node* %14, null
  br i1 %15, label %16, label %88

16:                                               ; preds = %11
  %17 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %17, i32 0, i32 1
  %19 = load %struct.splay_node*, %struct.splay_node** %18, align 8
  %20 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i32 0, i32 1
  %21 = load %struct.splay_node*, %struct.splay_node** %20, align 8
  %22 = icmp eq %struct.splay_node* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %25 = call %struct.splay_node* @rotate(%struct.splay_node* %24)
  store %struct.splay_node* %25, %struct.splay_node** %6, align 8
  br label %87

26:                                               ; preds = %16
  %27 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %28 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 1
  %29 = load %struct.splay_node*, %struct.splay_node** %28, align 8
  %30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 2
  %31 = load %struct.splay_node*, %struct.splay_node** %30, align 8
  %32 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %33 = icmp eq %struct.splay_node* %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %36 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %35, i32 0, i32 1
  %37 = load %struct.splay_node*, %struct.splay_node** %36, align 8
  %38 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %37, i32 0, i32 1
  %39 = load %struct.splay_node*, %struct.splay_node** %38, align 8
  %40 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %39, i32 0, i32 2
  %41 = load %struct.splay_node*, %struct.splay_node** %40, align 8
  %42 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %43 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %42, i32 0, i32 1
  %44 = load %struct.splay_node*, %struct.splay_node** %43, align 8
  %45 = icmp eq %struct.splay_node* %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %48 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %47, i32 0, i32 1
  %49 = load %struct.splay_node*, %struct.splay_node** %48, align 8
  %50 = call %struct.splay_node* @rotate(%struct.splay_node* %49)
  %51 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %52 = call %struct.splay_node* @rotate(%struct.splay_node* %51)
  store %struct.splay_node* %52, %struct.splay_node** %6, align 8
  br label %86

53:                                               ; preds = %34, %26
  %54 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %55 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %54, i32 0, i32 1
  %56 = load %struct.splay_node*, %struct.splay_node** %55, align 8
  %57 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %56, i32 0, i32 3
  %58 = load %struct.splay_node*, %struct.splay_node** %57, align 8
  %59 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %60 = icmp eq %struct.splay_node* %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %53
  %62 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %63 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %62, i32 0, i32 1
  %64 = load %struct.splay_node*, %struct.splay_node** %63, align 8
  %65 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %64, i32 0, i32 1
  %66 = load %struct.splay_node*, %struct.splay_node** %65, align 8
  %67 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %66, i32 0, i32 3
  %68 = load %struct.splay_node*, %struct.splay_node** %67, align 8
  %69 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %70 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %69, i32 0, i32 1
  %71 = load %struct.splay_node*, %struct.splay_node** %70, align 8
  %72 = icmp eq %struct.splay_node* %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %75 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %74, i32 0, i32 1
  %76 = load %struct.splay_node*, %struct.splay_node** %75, align 8
  %77 = call %struct.splay_node* @rotate(%struct.splay_node* %76)
  %78 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %79 = call %struct.splay_node* @rotate(%struct.splay_node* %78)
  store %struct.splay_node* %79, %struct.splay_node** %6, align 8
  br label %85

80:                                               ; preds = %61, %53
  %81 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %82 = call %struct.splay_node* @rotate(%struct.splay_node* %81)
  store %struct.splay_node* %82, %struct.splay_node** %6, align 8
  %83 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %84 = call %struct.splay_node* @rotate(%struct.splay_node* %83)
  store %struct.splay_node* %84, %struct.splay_node** %6, align 8
  br label %85

85:                                               ; preds = %80, %73
  br label %86

86:                                               ; preds = %85, %46
  br label %87

87:                                               ; preds = %86, %23
  br label %11

88:                                               ; preds = %11
  %89 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %90 = load %struct.splay_node**, %struct.splay_node*** %4, align 8
  store %struct.splay_node* %89, %struct.splay_node** %90, align 8
  %91 = load i8*, i8** %3, align 8
  ret i8* %91
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_tree(%struct.splay_node* %0) #0 {
  %2 = alloca %struct.splay_node*, align 8
  store %struct.splay_node* %0, %struct.splay_node** %2, align 8
  %3 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %4 = icmp ne %struct.splay_node* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 2
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  call void @free_tree(%struct.splay_node* %8)
  %9 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %9, i32 0, i32 3
  %11 = load %struct.splay_node*, %struct.splay_node** %10, align 8
  call void @free_tree(%struct.splay_node* %11)
  %12 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %13 = bitcast %struct.splay_node* %12 to i8*
  call void @free(i8* %13) #5
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @create_node(i64 %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.splay_node*, align 8
  %4 = bitcast %struct.point* %2 to i64*
  store i64 %0, i64* %4, align 4
  %5 = call noalias i8* @malloc(i64 40) #5
  %6 = bitcast i8* %5 to %struct.splay_node*
  store %struct.splay_node* %6, %struct.splay_node** %3, align 8
  %7 = icmp ne %struct.splay_node* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 0) #6
  unreachable

10:                                               ; preds = %1
  %11 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %12 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %11, i32 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %12, align 8
  %13 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %14, align 8
  %15 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %16 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %15, i32 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %16, align 8
  %17 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 10000
  %20 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %19, %21
  %23 = sext i32 %22 to i64
  %24 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %28 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %28, i32 0, i32 1
  %30 = bitcast %struct.point* %29 to i8*
  %31 = bitcast %struct.point* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  ret %struct.splay_node* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @init() #0 {
  ret %struct.splay_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @insert(%struct.splay_node** %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.splay_node**, align 8
  %6 = alloca %struct.splay_node*, align 8
  %7 = bitcast %struct.point* %4 to i64*
  store i64 %1, i64* %7, align 4
  store %struct.splay_node** %0, %struct.splay_node*** %5, align 8
  %8 = bitcast %struct.point* %4 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = call %struct.splay_node* @create_node(i64 %9)
  store %struct.splay_node* %10, %struct.splay_node** %6, align 8
  %11 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %12 = load %struct.splay_node*, %struct.splay_node** %11, align 8
  %13 = icmp ne %struct.splay_node* %12, null
  br i1 %13, label %14, label %99

14:                                               ; preds = %2
  %15 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %16 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %17 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @splay(%struct.splay_node** %15, i64 %19)
  %21 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %22 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %26 = load %struct.splay_node*, %struct.splay_node** %25, align 8
  %27 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %102

32:                                               ; preds = %14
  %33 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %34 = load %struct.splay_node*, %struct.splay_node** %33, align 8
  %35 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %39 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %32
  %44 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %45 = load %struct.splay_node*, %struct.splay_node** %44, align 8
  %46 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i32 0, i32 2
  %47 = load %struct.splay_node*, %struct.splay_node** %46, align 8
  %48 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %49 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %48, i32 0, i32 2
  store %struct.splay_node* %47, %struct.splay_node** %49, align 8
  %50 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %51 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %50, i32 0, i32 2
  %52 = load %struct.splay_node*, %struct.splay_node** %51, align 8
  %53 = icmp ne %struct.splay_node* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %56 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %57 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %56, i32 0, i32 2
  %58 = load %struct.splay_node*, %struct.splay_node** %57, align 8
  %59 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %58, i32 0, i32 1
  store %struct.splay_node* %55, %struct.splay_node** %59, align 8
  br label %60

60:                                               ; preds = %54, %43
  %61 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %62 = load %struct.splay_node*, %struct.splay_node** %61, align 8
  %63 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %64 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %63, i32 0, i32 3
  store %struct.splay_node* %62, %struct.splay_node** %64, align 8
  %65 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %66 = load %struct.splay_node*, %struct.splay_node** %65, align 8
  %67 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %66, i32 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %67, align 8
  br label %93

68:                                               ; preds = %32
  %69 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %70 = load %struct.splay_node*, %struct.splay_node** %69, align 8
  %71 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %70, i32 0, i32 3
  %72 = load %struct.splay_node*, %struct.splay_node** %71, align 8
  %73 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %74 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %73, i32 0, i32 3
  store %struct.splay_node* %72, %struct.splay_node** %74, align 8
  %75 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %76 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %75, i32 0, i32 3
  %77 = load %struct.splay_node*, %struct.splay_node** %76, align 8
  %78 = icmp ne %struct.splay_node* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %81 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %82 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %81, i32 0, i32 3
  %83 = load %struct.splay_node*, %struct.splay_node** %82, align 8
  %84 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %83, i32 0, i32 1
  store %struct.splay_node* %80, %struct.splay_node** %84, align 8
  br label %85

85:                                               ; preds = %79, %68
  %86 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %87 = load %struct.splay_node*, %struct.splay_node** %86, align 8
  %88 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %89 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %88, i32 0, i32 2
  store %struct.splay_node* %87, %struct.splay_node** %89, align 8
  %90 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %91 = load %struct.splay_node*, %struct.splay_node** %90, align 8
  %92 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %91, i32 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %92, align 8
  br label %93

93:                                               ; preds = %85, %60
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %96 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %97 = load %struct.splay_node*, %struct.splay_node** %96, align 8
  %98 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %97, i32 0, i32 1
  store %struct.splay_node* %95, %struct.splay_node** %98, align 8
  br label %99

99:                                               ; preds = %94, %2
  %100 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %101 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  store %struct.splay_node* %100, %struct.splay_node** %101, align 8
  br label %102

102:                                              ; preds = %99, %31
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @delete_min(%struct.splay_node** %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.splay_node**, align 8
  %4 = alloca %struct.splay_element, align 8
  %5 = alloca %struct.splay_node*, align 8
  store %struct.splay_node** %0, %struct.splay_node*** %3, align 8
  %6 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %7 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %8 = icmp ne %struct.splay_node* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %11 = call i8* @splay(%struct.splay_node** %10, i64 -1)
  %12 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %13 = load %struct.splay_node*, %struct.splay_node** %12, align 8
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 0
  %15 = bitcast %struct.splay_element* %4 to i8*
  %16 = bitcast %struct.splay_element* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %18 = load %struct.splay_node*, %struct.splay_node** %17, align 8
  store %struct.splay_node* %18, %struct.splay_node** %5, align 8
  %19 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %20 = load %struct.splay_node*, %struct.splay_node** %19, align 8
  %21 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %20, i32 0, i32 3
  %22 = load %struct.splay_node*, %struct.splay_node** %21, align 8
  %23 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  store %struct.splay_node* %22, %struct.splay_node** %23, align 8
  %24 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %25 = load %struct.splay_node*, %struct.splay_node** %24, align 8
  %26 = icmp ne %struct.splay_node* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %9
  %28 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %29 = load %struct.splay_node*, %struct.splay_node** %28, align 8
  %30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %30, align 8
  br label %31

31:                                               ; preds = %27, %9
  %32 = load %struct.splay_node*, %struct.splay_node** %5, align 8
  %33 = bitcast %struct.splay_node* %32 to i8*
  call void @free(i8* %33) #5
  br label %39

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1.11, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %4, i32 0, i32 1
  %37 = bitcast %struct.point* %2 to i8*
  %38 = bitcast %struct.point* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %38, i64 8, i1 false)
  br label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %4, i32 0, i32 1
  %41 = bitcast %struct.point* %2 to i8*
  %42 = bitcast %struct.point* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 8 %42, i64 8, i1 false)
  br label %43

43:                                               ; preds = %39, %34
  %44 = bitcast %struct.point* %2 to i64*
  %45 = load i64, i64* %44, align 4
  ret i64 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clean_up() #0 {
  %1 = load %struct.Knode*, %struct.Knode** @K, align 8
  %2 = bitcast %struct.Knode* %1 to i8*
  call void @free(i8* %2) #5
  %3 = load %struct.Enode*, %struct.Enode** @E, align 8
  %4 = bitcast %struct.Enode* %3 to i8*
  call void @free(i8* %4) #5
  store i32 1, i32* @Kcount, align 4
  store i32 1, i32* @Ecount, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getpoint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.point, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = bitcast %struct.point* %5 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i8* @insert(%struct.splay_node** @Splaytree, i64 %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.splay_node* @init()
  store %struct.splay_node* %5, %struct.splay_node** @Splaytree, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* %4)
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %17, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.17, i64 0, i64 0), i32* %2, i32* %3)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  call void @getpoint(i32 %15, i32 %16)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %8

20:                                               ; preds = %8
  ret void
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_point(i64 %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = bitcast %struct.point* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = load %struct.Knode*, %struct.Knode** @K, align 8
  %5 = load i32, i32* @Kcount, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.Knode, %struct.Knode* %4, i64 %6
  %8 = getelementptr inbounds %struct.Knode, %struct.Knode* %7, i32 0, i32 0
  %9 = bitcast %struct.point* %8 to i8*
  %10 = bitcast %struct.point* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 8, i1 false)
  %11 = load %struct.Knode*, %struct.Knode** @K, align 8
  %12 = load i32, i32* @Kcount, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Knode, %struct.Knode* %11, i64 %13
  %15 = getelementptr inbounds %struct.Knode, %struct.Knode* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.Knode*, %struct.Knode** @K, align 8
  %17 = load i32, i32* @Kcount, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Knode, %struct.Knode* %16, i64 %18
  %20 = getelementptr inbounds %struct.Knode, %struct.Knode* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.Knode*, %struct.Knode** @K, align 8
  %22 = load i32, i32* @Kcount, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.Knode, %struct.Knode* %21, i64 %23
  %25 = getelementptr inbounds %struct.Knode, %struct.Knode* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @Kcount, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @Kcount, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @compute_v(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca %struct.point, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.dpoint, align 8
  %11 = alloca %struct.point, align 4
  %12 = alloca %struct.point, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.point, align 4
  %18 = alloca %struct.dpoint, align 8
  %19 = alloca %struct.dpoint, align 8
  %20 = alloca %struct.dpoint, align 8
  %21 = alloca %struct.dpoint, align 8
  %22 = alloca %struct.dpoint, align 8
  %23 = alloca %struct.dpoint, align 8
  %24 = alloca %struct.dpoint, align 8
  %25 = alloca %struct.dpoint, align 8
  %26 = alloca %struct.dpoint, align 8
  %27 = alloca %struct.dpoint, align 8
  %28 = alloca %struct.dpoint, align 8
  %29 = alloca %struct.dpoint, align 8
  %30 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %3, align 8
  store double -1.000000e+04, double* %13, align 8
  store double -1.000000e+04, double* %14, align 8
  store double 1.000000e+04, double* %15, align 8
  store double 1.000000e+04, double* %16, align 8
  %31 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.point, %struct.point* %7, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %40 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %39, i32 0, i32 1
  %41 = bitcast %struct.point* %11 to i8*
  %42 = bitcast %struct.point* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %44 = call %struct.CHpoints* @next(%struct.CHpoints* %43)
  %45 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %44, i32 0, i32 1
  %46 = bitcast %struct.point* %12 to i8*
  %47 = bitcast %struct.point* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = bitcast %struct.point* %11 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = bitcast %struct.point* %12 to i64*
  %51 = load i64, i64* %50, align 4
  %52 = call i64 @vector(i64 %49, i64 %51)
  %53 = bitcast %struct.point* %17 to i64*
  store i64 %52, i64* %53, align 4
  %54 = bitcast %struct.point* %8 to i8*
  %55 = bitcast %struct.point* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  %56 = bitcast %struct.point* %11 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = bitcast %struct.point* %12 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = call { double, double } @midpoint(i64 %57, i64 %59)
  %61 = bitcast %struct.dpoint* %18 to { double, double }*
  %62 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 0
  %63 = extractvalue { double, double } %60, 0
  store double %63, double* %62, align 8
  %64 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 1
  %65 = extractvalue { double, double } %60, 1
  store double %65, double* %64, align 8
  %66 = bitcast %struct.point* %8 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = bitcast %struct.dpoint* %18 to { double, double }*
  %69 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = call double @calculate_c(i64 %67, double %70, double %72)
  store double %73, double* %9, align 8
  %74 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %1
  %80 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %79
  %86 = load double, double* %9, align 8
  %87 = load double, double* %16, align 8
  %88 = bitcast %struct.point* %8 to i64*
  %89 = load i64, i64* %88, align 4
  %90 = bitcast %struct.point* %7 to i64*
  %91 = load i64, i64* %90, align 4
  %92 = call { double, double } @intersect(i64 %89, i64 %91, double %86, double %87)
  %93 = bitcast %struct.dpoint* %19 to { double, double }*
  %94 = getelementptr inbounds { double, double }, { double, double }* %93, i32 0, i32 0
  %95 = extractvalue { double, double } %92, 0
  store double %95, double* %94, align 8
  %96 = getelementptr inbounds { double, double }, { double, double }* %93, i32 0, i32 1
  %97 = extractvalue { double, double } %92, 1
  store double %97, double* %96, align 8
  %98 = bitcast %struct.dpoint* %10 to i8*
  %99 = bitcast %struct.dpoint* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 16, i1 false)
  %100 = load double, double* %13, align 8
  %101 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fcmp ogt double %100, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %85
  %105 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = load double, double* %15, align 8
  %108 = fcmp ogt double %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %104, %85
  %110 = load double, double* %9, align 8
  %111 = load double, double* %13, align 8
  %112 = bitcast %struct.point* %8 to i64*
  %113 = load i64, i64* %112, align 4
  %114 = bitcast %struct.point* %4 to i64*
  %115 = load i64, i64* %114, align 4
  %116 = call { double, double } @intersect(i64 %113, i64 %115, double %110, double %111)
  %117 = bitcast %struct.dpoint* %20 to { double, double }*
  %118 = getelementptr inbounds { double, double }, { double, double }* %117, i32 0, i32 0
  %119 = extractvalue { double, double } %116, 0
  store double %119, double* %118, align 8
  %120 = getelementptr inbounds { double, double }, { double, double }* %117, i32 0, i32 1
  %121 = extractvalue { double, double } %116, 1
  store double %121, double* %120, align 8
  %122 = bitcast %struct.dpoint* %10 to i8*
  %123 = bitcast %struct.dpoint* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  br label %124

124:                                              ; preds = %109, %104
  br label %398

125:                                              ; preds = %79, %1
  %126 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %131
  %138 = load double, double* %9, align 8
  %139 = load double, double* %16, align 8
  %140 = bitcast %struct.point* %8 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = bitcast %struct.point* %7 to i64*
  %143 = load i64, i64* %142, align 4
  %144 = call { double, double } @intersect(i64 %141, i64 %143, double %138, double %139)
  %145 = bitcast %struct.dpoint* %21 to { double, double }*
  %146 = getelementptr inbounds { double, double }, { double, double }* %145, i32 0, i32 0
  %147 = extractvalue { double, double } %144, 0
  store double %147, double* %146, align 8
  %148 = getelementptr inbounds { double, double }, { double, double }* %145, i32 0, i32 1
  %149 = extractvalue { double, double } %144, 1
  store double %149, double* %148, align 8
  %150 = bitcast %struct.dpoint* %10 to i8*
  %151 = bitcast %struct.dpoint* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 16, i1 false)
  br label %397

152:                                              ; preds = %131, %125
  %153 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %204

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %164, label %204

164:                                              ; preds = %158
  %165 = load double, double* %9, align 8
  %166 = load double, double* %16, align 8
  %167 = bitcast %struct.point* %8 to i64*
  %168 = load i64, i64* %167, align 4
  %169 = bitcast %struct.point* %7 to i64*
  %170 = load i64, i64* %169, align 4
  %171 = call { double, double } @intersect(i64 %168, i64 %170, double %165, double %166)
  %172 = bitcast %struct.dpoint* %22 to { double, double }*
  %173 = getelementptr inbounds { double, double }, { double, double }* %172, i32 0, i32 0
  %174 = extractvalue { double, double } %171, 0
  store double %174, double* %173, align 8
  %175 = getelementptr inbounds { double, double }, { double, double }* %172, i32 0, i32 1
  %176 = extractvalue { double, double } %171, 1
  store double %176, double* %175, align 8
  %177 = bitcast %struct.dpoint* %10 to i8*
  %178 = bitcast %struct.dpoint* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 16, i1 false)
  %179 = load double, double* %13, align 8
  %180 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %181 = load double, double* %180, align 8
  %182 = fcmp ogt double %179, %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %164
  %184 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %185 = load double, double* %184, align 8
  %186 = load double, double* %15, align 8
  %187 = fcmp ogt double %185, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %183, %164
  %189 = load double, double* %9, align 8
  %190 = load double, double* %15, align 8
  %191 = bitcast %struct.point* %8 to i64*
  %192 = load i64, i64* %191, align 4
  %193 = bitcast %struct.point* %6 to i64*
  %194 = load i64, i64* %193, align 4
  %195 = call { double, double } @intersect(i64 %192, i64 %194, double %189, double %190)
  %196 = bitcast %struct.dpoint* %23 to { double, double }*
  %197 = getelementptr inbounds { double, double }, { double, double }* %196, i32 0, i32 0
  %198 = extractvalue { double, double } %195, 0
  store double %198, double* %197, align 8
  %199 = getelementptr inbounds { double, double }, { double, double }* %196, i32 0, i32 1
  %200 = extractvalue { double, double } %195, 1
  store double %200, double* %199, align 8
  %201 = bitcast %struct.dpoint* %10 to i8*
  %202 = bitcast %struct.dpoint* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %201, i8* align 8 %202, i64 16, i1 false)
  br label %203

203:                                              ; preds = %188, %183
  br label %396

204:                                              ; preds = %158, %152
  %205 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %210
  %217 = load double, double* %9, align 8
  %218 = load double, double* %13, align 8
  %219 = bitcast %struct.point* %8 to i64*
  %220 = load i64, i64* %219, align 4
  %221 = bitcast %struct.point* %4 to i64*
  %222 = load i64, i64* %221, align 4
  %223 = call { double, double } @intersect(i64 %220, i64 %222, double %217, double %218)
  %224 = bitcast %struct.dpoint* %24 to { double, double }*
  %225 = getelementptr inbounds { double, double }, { double, double }* %224, i32 0, i32 0
  %226 = extractvalue { double, double } %223, 0
  store double %226, double* %225, align 8
  %227 = getelementptr inbounds { double, double }, { double, double }* %224, i32 0, i32 1
  %228 = extractvalue { double, double } %223, 1
  store double %228, double* %227, align 8
  %229 = bitcast %struct.dpoint* %10 to i8*
  %230 = bitcast %struct.dpoint* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 8 %230, i64 16, i1 false)
  br label %395

231:                                              ; preds = %210, %204
  %232 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %258

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %239, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %237
  %244 = load double, double* %9, align 8
  %245 = load double, double* %15, align 8
  %246 = bitcast %struct.point* %8 to i64*
  %247 = load i64, i64* %246, align 4
  %248 = bitcast %struct.point* %6 to i64*
  %249 = load i64, i64* %248, align 4
  %250 = call { double, double } @intersect(i64 %247, i64 %249, double %244, double %245)
  %251 = bitcast %struct.dpoint* %25 to { double, double }*
  %252 = getelementptr inbounds { double, double }, { double, double }* %251, i32 0, i32 0
  %253 = extractvalue { double, double } %250, 0
  store double %253, double* %252, align 8
  %254 = getelementptr inbounds { double, double }, { double, double }* %251, i32 0, i32 1
  %255 = extractvalue { double, double } %250, 1
  store double %255, double* %254, align 8
  %256 = bitcast %struct.dpoint* %10 to i8*
  %257 = bitcast %struct.dpoint* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %256, i8* align 8 %257, i64 16, i1 false)
  br label %394

258:                                              ; preds = %237, %231
  %259 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp sgt i32 %260, %262
  br i1 %263, label %264, label %310

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %266, %268
  br i1 %269, label %270, label %310

270:                                              ; preds = %264
  %271 = load double, double* %9, align 8
  %272 = load double, double* %14, align 8
  %273 = bitcast %struct.point* %8 to i64*
  %274 = load i64, i64* %273, align 4
  %275 = bitcast %struct.point* %5 to i64*
  %276 = load i64, i64* %275, align 4
  %277 = call { double, double } @intersect(i64 %274, i64 %276, double %271, double %272)
  %278 = bitcast %struct.dpoint* %26 to { double, double }*
  %279 = getelementptr inbounds { double, double }, { double, double }* %278, i32 0, i32 0
  %280 = extractvalue { double, double } %277, 0
  store double %280, double* %279, align 8
  %281 = getelementptr inbounds { double, double }, { double, double }* %278, i32 0, i32 1
  %282 = extractvalue { double, double } %277, 1
  store double %282, double* %281, align 8
  %283 = bitcast %struct.dpoint* %10 to i8*
  %284 = bitcast %struct.dpoint* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 16, i1 false)
  %285 = load double, double* %13, align 8
  %286 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %287 = load double, double* %286, align 8
  %288 = fcmp ogt double %285, %287
  br i1 %288, label %294, label %289

289:                                              ; preds = %270
  %290 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %291 = load double, double* %290, align 8
  %292 = load double, double* %15, align 8
  %293 = fcmp ogt double %291, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %289, %270
  %295 = load double, double* %9, align 8
  %296 = load double, double* %13, align 8
  %297 = bitcast %struct.point* %8 to i64*
  %298 = load i64, i64* %297, align 4
  %299 = bitcast %struct.point* %4 to i64*
  %300 = load i64, i64* %299, align 4
  %301 = call { double, double } @intersect(i64 %298, i64 %300, double %295, double %296)
  %302 = bitcast %struct.dpoint* %27 to { double, double }*
  %303 = getelementptr inbounds { double, double }, { double, double }* %302, i32 0, i32 0
  %304 = extractvalue { double, double } %301, 0
  store double %304, double* %303, align 8
  %305 = getelementptr inbounds { double, double }, { double, double }* %302, i32 0, i32 1
  %306 = extractvalue { double, double } %301, 1
  store double %306, double* %305, align 8
  %307 = bitcast %struct.dpoint* %10 to i8*
  %308 = bitcast %struct.dpoint* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %307, i8* align 8 %308, i64 16, i1 false)
  br label %309

309:                                              ; preds = %294, %289
  br label %393

310:                                              ; preds = %264, %258
  %311 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp sgt i32 %312, %314
  br i1 %315, label %316, label %337

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %316
  %323 = load double, double* %9, align 8
  %324 = load double, double* %14, align 8
  %325 = bitcast %struct.point* %8 to i64*
  %326 = load i64, i64* %325, align 4
  %327 = bitcast %struct.point* %5 to i64*
  %328 = load i64, i64* %327, align 4
  %329 = call { double, double } @intersect(i64 %326, i64 %328, double %323, double %324)
  %330 = bitcast %struct.dpoint* %28 to { double, double }*
  %331 = getelementptr inbounds { double, double }, { double, double }* %330, i32 0, i32 0
  %332 = extractvalue { double, double } %329, 0
  store double %332, double* %331, align 8
  %333 = getelementptr inbounds { double, double }, { double, double }* %330, i32 0, i32 1
  %334 = extractvalue { double, double } %329, 1
  store double %334, double* %333, align 8
  %335 = bitcast %struct.dpoint* %10 to i8*
  %336 = bitcast %struct.dpoint* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %335, i8* align 8 %336, i64 16, i1 false)
  br label %392

337:                                              ; preds = %316, %310
  %338 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp sgt i32 %339, %341
  br i1 %342, label %343, label %389

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.point, %struct.point* %11, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.point, %struct.point* %12, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = icmp sgt i32 %345, %347
  br i1 %348, label %349, label %389

349:                                              ; preds = %343
  %350 = load double, double* %9, align 8
  %351 = load double, double* %14, align 8
  %352 = bitcast %struct.point* %8 to i64*
  %353 = load i64, i64* %352, align 4
  %354 = bitcast %struct.point* %5 to i64*
  %355 = load i64, i64* %354, align 4
  %356 = call { double, double } @intersect(i64 %353, i64 %355, double %350, double %351)
  %357 = bitcast %struct.dpoint* %29 to { double, double }*
  %358 = getelementptr inbounds { double, double }, { double, double }* %357, i32 0, i32 0
  %359 = extractvalue { double, double } %356, 0
  store double %359, double* %358, align 8
  %360 = getelementptr inbounds { double, double }, { double, double }* %357, i32 0, i32 1
  %361 = extractvalue { double, double } %356, 1
  store double %361, double* %360, align 8
  %362 = bitcast %struct.dpoint* %10 to i8*
  %363 = bitcast %struct.dpoint* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %362, i8* align 8 %363, i64 16, i1 false)
  %364 = load double, double* %13, align 8
  %365 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %366 = load double, double* %365, align 8
  %367 = fcmp ogt double %364, %366
  br i1 %367, label %373, label %368

368:                                              ; preds = %349
  %369 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %370 = load double, double* %369, align 8
  %371 = load double, double* %15, align 8
  %372 = fcmp ogt double %370, %371
  br i1 %372, label %373, label %388

373:                                              ; preds = %368, %349
  %374 = load double, double* %9, align 8
  %375 = load double, double* %15, align 8
  %376 = bitcast %struct.point* %8 to i64*
  %377 = load i64, i64* %376, align 4
  %378 = bitcast %struct.point* %6 to i64*
  %379 = load i64, i64* %378, align 4
  %380 = call { double, double } @intersect(i64 %377, i64 %379, double %374, double %375)
  %381 = bitcast %struct.dpoint* %30 to { double, double }*
  %382 = getelementptr inbounds { double, double }, { double, double }* %381, i32 0, i32 0
  %383 = extractvalue { double, double } %380, 0
  store double %383, double* %382, align 8
  %384 = getelementptr inbounds { double, double }, { double, double }* %381, i32 0, i32 1
  %385 = extractvalue { double, double } %380, 1
  store double %385, double* %384, align 8
  %386 = bitcast %struct.dpoint* %10 to i8*
  %387 = bitcast %struct.dpoint* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %386, i8* align 8 %387, i64 16, i1 false)
  br label %388

388:                                              ; preds = %373, %368
  br label %391

389:                                              ; preds = %343, %337
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2.18, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %391, %322
  br label %393

393:                                              ; preds = %392, %309
  br label %394

394:                                              ; preds = %393, %243
  br label %395

395:                                              ; preds = %394, %216
  br label %396

396:                                              ; preds = %395, %203
  br label %397

397:                                              ; preds = %396, %137
  br label %398

398:                                              ; preds = %397, %124
  %399 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 0
  %400 = load double, double* %399, align 8
  %401 = fptosi double %400 to i32
  %402 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 0
  store i32 %401, i32* %402, align 4
  %403 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %10, i32 0, i32 1
  %404 = load double, double* %403, align 8
  %405 = fptosi double %404 to i32
  %406 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 1
  store i32 %405, i32* %406, align 4
  %407 = bitcast %struct.point* %2 to i64*
  %408 = load i64, i64* %407, align 4
  ret i64 %408
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_infinit_points_to_K(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.key, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %7 = load i32, i32* @CHno, align 4
  %8 = mul nsw i32 2, %7
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = call noalias i8* @calloc(i64 %10, i64 20) #5
  %12 = bitcast i8* %11 to %struct.Knode*
  store %struct.Knode* %12, %struct.Knode** @K, align 8
  %13 = load i32, i32* @CHno, align 4
  %14 = mul nsw i32 2, %13
  %15 = sub nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @calloc(i64 %16, i64 32) #5
  %18 = bitcast i8* %17 to %struct.Enode*
  store %struct.Enode* %18, %struct.Enode** @E, align 8
  %19 = call %struct.CHsplay_node* @CHinit()
  store %struct.CHsplay_node* %19, %struct.CHsplay_node** @CHSplaytree, align 8
  %20 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 3
  %22 = load %struct.CHpoints*, %struct.CHpoints** %21, align 8
  store %struct.CHpoints* %22, %struct.CHpoints** %3, align 8
  %23 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %24 = call i64 @compute_v(%struct.CHpoints* %23)
  %25 = bitcast %struct.point* %5 to i64*
  store i64 %24, i64* %25, align 4
  %26 = bitcast %struct.point* %5 to i64*
  %27 = load i64, i64* %26, align 4
  call void @add_point(i64 %27)
  %28 = load i32, i32* @Kcount, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %31 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %33 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %32)
  br label %34

34:                                               ; preds = %38, %1
  %35 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %36 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %37 = icmp ne %struct.CHpoints* %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %40 = call i64 @compute_v(%struct.CHpoints* %39)
  %41 = bitcast %struct.point* %6 to i64*
  store i64 %40, i64* %41, align 4
  %42 = bitcast %struct.point* %6 to i64*
  %43 = load i64, i64* %42, align 4
  call void @add_point(i64 %43)
  %44 = load i32, i32* @Kcount, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %47 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %49 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %48)
  %50 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %51 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %50, i32 0, i32 3
  %52 = load %struct.CHpoints*, %struct.CHpoints** %51, align 8
  store %struct.CHpoints* %52, %struct.CHpoints** %3, align 8
  br label %34

53:                                               ; preds = %34
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_edge(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.Enode*, %struct.Enode** @E, align 8
  %9 = load i32, i32* @Ecount, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.Enode, %struct.Enode* %8, i64 %10
  %12 = getelementptr inbounds %struct.Enode, %struct.Enode* %11, i32 0, i32 0
  store i32 %7, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.Enode*, %struct.Enode** @E, align 8
  %15 = load i32, i32* @Ecount, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Enode, %struct.Enode* %14, i64 %16
  %18 = getelementptr inbounds %struct.Enode, %struct.Enode* %17, i32 0, i32 1
  store i32 %13, i32* %18, align 4
  %19 = load %struct.Knode*, %struct.Knode** @K, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Knode, %struct.Knode* %19, i64 %21
  %23 = getelementptr inbounds %struct.Knode, %struct.Knode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load i32, i32* @Ecount, align 4
  %28 = load %struct.Knode*, %struct.Knode** @K, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Knode, %struct.Knode* %28, i64 %30
  %32 = getelementptr inbounds %struct.Knode, %struct.Knode* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* @Ecount, align 4
  %34 = load %struct.Enode*, %struct.Enode** @E, align 8
  %35 = load i32, i32* @Ecount, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Enode, %struct.Enode* %34, i64 %36
  %38 = getelementptr inbounds %struct.Enode, %struct.Enode* %37, i32 0, i32 2
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* @Ecount, align 4
  %40 = load %struct.Enode*, %struct.Enode** @E, align 8
  %41 = load i32, i32* @Ecount, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Enode, %struct.Enode* %40, i64 %42
  %44 = getelementptr inbounds %struct.Enode, %struct.Enode* %43, i32 0, i32 4
  store i32 %39, i32* %44, align 4
  br label %150

45:                                               ; preds = %2
  %46 = load %struct.Knode*, %struct.Knode** @K, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Knode, %struct.Knode* %46, i64 %48
  %50 = getelementptr inbounds %struct.Knode, %struct.Knode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %142

53:                                               ; preds = %45
  %54 = load i32, i32* @Ecount, align 4
  %55 = load %struct.Knode*, %struct.Knode** @K, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.Knode, %struct.Knode* %55, i64 %57
  %59 = getelementptr inbounds %struct.Knode, %struct.Knode* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 4
  %60 = load %struct.Knode*, %struct.Knode** @K, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.Knode, %struct.Knode* %60, i64 %62
  %64 = getelementptr inbounds %struct.Knode, %struct.Knode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.Enode*, %struct.Enode** @E, align 8
  %67 = load i32, i32* @Ecount, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Enode, %struct.Enode* %66, i64 %68
  %70 = getelementptr inbounds %struct.Enode, %struct.Enode* %69, i32 0, i32 2
  store i32 %65, i32* %70, align 4
  %71 = load %struct.Knode*, %struct.Knode** @K, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Knode, %struct.Knode* %71, i64 %73
  %75 = getelementptr inbounds %struct.Knode, %struct.Knode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.Enode*, %struct.Enode** @E, align 8
  %78 = load i32, i32* @Ecount, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.Enode, %struct.Enode* %77, i64 %79
  %81 = getelementptr inbounds %struct.Enode, %struct.Enode* %80, i32 0, i32 4
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.Enode*, %struct.Enode** @E, align 8
  %84 = load %struct.Knode*, %struct.Knode** @K, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.Knode, %struct.Knode* %84, i64 %86
  %88 = getelementptr inbounds %struct.Knode, %struct.Knode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Enode, %struct.Enode* %83, i64 %90
  %92 = getelementptr inbounds %struct.Enode, %struct.Enode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %82, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %53
  %96 = load i32, i32* @Ecount, align 4
  %97 = load %struct.Enode*, %struct.Enode** @E, align 8
  %98 = load %struct.Knode*, %struct.Knode** @K, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.Knode, %struct.Knode* %98, i64 %100
  %102 = getelementptr inbounds %struct.Knode, %struct.Knode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.Enode, %struct.Enode* %97, i64 %104
  %106 = getelementptr inbounds %struct.Enode, %struct.Enode* %105, i32 0, i32 2
  store i32 %96, i32* %106, align 4
  %107 = load i32, i32* @Ecount, align 4
  %108 = load %struct.Enode*, %struct.Enode** @E, align 8
  %109 = load %struct.Knode*, %struct.Knode** @K, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.Knode, %struct.Knode* %109, i64 %111
  %113 = getelementptr inbounds %struct.Knode, %struct.Knode* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Enode, %struct.Enode* %108, i64 %115
  %117 = getelementptr inbounds %struct.Enode, %struct.Enode* %116, i32 0, i32 4
  store i32 %107, i32* %117, align 4
  br label %141

118:                                              ; preds = %53
  %119 = load i32, i32* @Ecount, align 4
  %120 = load %struct.Enode*, %struct.Enode** @E, align 8
  %121 = load %struct.Knode*, %struct.Knode** @K, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.Knode, %struct.Knode* %121, i64 %123
  %125 = getelementptr inbounds %struct.Knode, %struct.Knode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Enode, %struct.Enode* %120, i64 %127
  %129 = getelementptr inbounds %struct.Enode, %struct.Enode* %128, i32 0, i32 3
  store i32 %119, i32* %129, align 4
  %130 = load i32, i32* @Ecount, align 4
  %131 = load %struct.Enode*, %struct.Enode** @E, align 8
  %132 = load %struct.Knode*, %struct.Knode** @K, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.Knode, %struct.Knode* %132, i64 %134
  %136 = getelementptr inbounds %struct.Knode, %struct.Knode* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Enode, %struct.Enode* %131, i64 %138
  %140 = getelementptr inbounds %struct.Enode, %struct.Enode* %139, i32 0, i32 5
  store i32 %130, i32* %140, align 4
  br label %141

141:                                              ; preds = %118, %95
  br label %149

142:                                              ; preds = %45
  %143 = load i32, i32* @Ecount, align 4
  %144 = load %struct.Knode*, %struct.Knode** @K, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Knode, %struct.Knode* %144, i64 %146
  %148 = getelementptr inbounds %struct.Knode, %struct.Knode* %147, i32 0, i32 3
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %141
  br label %150

150:                                              ; preds = %149, %26
  %151 = load %struct.Knode*, %struct.Knode** @K, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.Knode, %struct.Knode* %151, i64 %153
  %155 = getelementptr inbounds %struct.Knode, %struct.Knode* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %150
  %159 = load i32, i32* @Ecount, align 4
  %160 = load %struct.Knode*, %struct.Knode** @K, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.Knode, %struct.Knode* %160, i64 %162
  %164 = getelementptr inbounds %struct.Knode, %struct.Knode* %163, i32 0, i32 1
  store i32 %159, i32* %164, align 4
  %165 = load i32, i32* @Ecount, align 4
  %166 = load %struct.Enode*, %struct.Enode** @E, align 8
  %167 = load i32, i32* @Ecount, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.Enode, %struct.Enode* %166, i64 %168
  %170 = getelementptr inbounds %struct.Enode, %struct.Enode* %169, i32 0, i32 2
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* @Ecount, align 4
  %172 = load %struct.Enode*, %struct.Enode** @E, align 8
  %173 = load i32, i32* @Ecount, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.Enode, %struct.Enode* %172, i64 %174
  %176 = getelementptr inbounds %struct.Enode, %struct.Enode* %175, i32 0, i32 4
  store i32 %171, i32* %176, align 4
  br label %282

177:                                              ; preds = %150
  %178 = load %struct.Knode*, %struct.Knode** @K, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.Knode, %struct.Knode* %178, i64 %180
  %182 = getelementptr inbounds %struct.Knode, %struct.Knode* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %274

185:                                              ; preds = %177
  %186 = load i32, i32* @Ecount, align 4
  %187 = load %struct.Knode*, %struct.Knode** @K, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.Knode, %struct.Knode* %187, i64 %189
  %191 = getelementptr inbounds %struct.Knode, %struct.Knode* %190, i32 0, i32 2
  store i32 %186, i32* %191, align 4
  %192 = load %struct.Knode*, %struct.Knode** @K, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.Knode, %struct.Knode* %192, i64 %194
  %196 = getelementptr inbounds %struct.Knode, %struct.Knode* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.Enode*, %struct.Enode** @E, align 8
  %199 = load i32, i32* @Ecount, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.Enode, %struct.Enode* %198, i64 %200
  %202 = getelementptr inbounds %struct.Enode, %struct.Enode* %201, i32 0, i32 2
  store i32 %197, i32* %202, align 4
  %203 = load %struct.Knode*, %struct.Knode** @K, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.Knode, %struct.Knode* %203, i64 %205
  %207 = getelementptr inbounds %struct.Knode, %struct.Knode* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.Enode*, %struct.Enode** @E, align 8
  %210 = load i32, i32* @Ecount, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.Enode, %struct.Enode* %209, i64 %211
  %213 = getelementptr inbounds %struct.Enode, %struct.Enode* %212, i32 0, i32 4
  store i32 %208, i32* %213, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.Enode*, %struct.Enode** @E, align 8
  %216 = load %struct.Knode*, %struct.Knode** @K, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.Knode, %struct.Knode* %216, i64 %218
  %220 = getelementptr inbounds %struct.Knode, %struct.Knode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.Enode, %struct.Enode* %215, i64 %222
  %224 = getelementptr inbounds %struct.Enode, %struct.Enode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %214, %225
  br i1 %226, label %227, label %250

227:                                              ; preds = %185
  %228 = load i32, i32* @Ecount, align 4
  %229 = load %struct.Enode*, %struct.Enode** @E, align 8
  %230 = load %struct.Knode*, %struct.Knode** @K, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.Knode, %struct.Knode* %230, i64 %232
  %234 = getelementptr inbounds %struct.Knode, %struct.Knode* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.Enode, %struct.Enode* %229, i64 %236
  %238 = getelementptr inbounds %struct.Enode, %struct.Enode* %237, i32 0, i32 2
  store i32 %228, i32* %238, align 4
  %239 = load i32, i32* @Ecount, align 4
  %240 = load %struct.Enode*, %struct.Enode** @E, align 8
  %241 = load %struct.Knode*, %struct.Knode** @K, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.Knode, %struct.Knode* %241, i64 %243
  %245 = getelementptr inbounds %struct.Knode, %struct.Knode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.Enode, %struct.Enode* %240, i64 %247
  %249 = getelementptr inbounds %struct.Enode, %struct.Enode* %248, i32 0, i32 4
  store i32 %239, i32* %249, align 4
  br label %273

250:                                              ; preds = %185
  %251 = load i32, i32* @Ecount, align 4
  %252 = load %struct.Enode*, %struct.Enode** @E, align 8
  %253 = load %struct.Knode*, %struct.Knode** @K, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.Knode, %struct.Knode* %253, i64 %255
  %257 = getelementptr inbounds %struct.Knode, %struct.Knode* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.Enode, %struct.Enode* %252, i64 %259
  %261 = getelementptr inbounds %struct.Enode, %struct.Enode* %260, i32 0, i32 3
  store i32 %251, i32* %261, align 4
  %262 = load i32, i32* @Ecount, align 4
  %263 = load %struct.Enode*, %struct.Enode** @E, align 8
  %264 = load %struct.Knode*, %struct.Knode** @K, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.Knode, %struct.Knode* %264, i64 %266
  %268 = getelementptr inbounds %struct.Knode, %struct.Knode* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.Enode, %struct.Enode* %263, i64 %270
  %272 = getelementptr inbounds %struct.Enode, %struct.Enode* %271, i32 0, i32 5
  store i32 %262, i32* %272, align 4
  br label %273

273:                                              ; preds = %250, %227
  br label %281

274:                                              ; preds = %177
  %275 = load i32, i32* @Ecount, align 4
  %276 = load %struct.Knode*, %struct.Knode** @K, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.Knode, %struct.Knode* %276, i64 %278
  %280 = getelementptr inbounds %struct.Knode, %struct.Knode* %279, i32 0, i32 3
  store i32 %275, i32* %280, align 4
  br label %281

281:                                              ; preds = %274, %273
  br label %282

282:                                              ; preds = %281, %158
  %283 = load i32, i32* @Ecount, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* @Ecount, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.key, align 8
  %7 = alloca %struct.key, align 8
  %8 = alloca %struct.dpoint, align 8
  %9 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %10 = call %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** @CHSplaytree)
  store %struct.CHpoints* %10, %struct.CHpoints** %4, align 8
  %11 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %12 = call %struct.CHpoints* @before(%struct.CHpoints* %11)
  store %struct.CHpoints* %12, %struct.CHpoints** %3, align 8
  %13 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %14 = call %struct.CHpoints* @next(%struct.CHpoints* %13)
  store %struct.CHpoints* %14, %struct.CHpoints** %5, align 8
  %15 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %16 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %15, i32 0, i32 1
  %17 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %18 = call %struct.CHpoints* @before(%struct.CHpoints* %17)
  %19 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %18, i32 0, i32 1
  %20 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %21 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 1
  %22 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %23 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %22, i32 0, i32 1
  %24 = bitcast %struct.point* %19 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = bitcast %struct.point* %21 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.point* %23 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call { double, double } @centre(i64 %25, i64 %27, i64 %29)
  %31 = bitcast %struct.dpoint* %8 to { double, double }*
  %32 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 0
  %33 = extractvalue { double, double } %30, 0
  store double %33, double* %32, align 8
  %34 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 1
  %35 = extractvalue { double, double } %30, 1
  store double %35, double* %34, align 8
  %36 = bitcast %struct.point* %16 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = bitcast %struct.dpoint* %8 to { double, double }*
  %39 = getelementptr inbounds { double, double }, { double, double }* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = getelementptr inbounds { double, double }, { double, double }* %38, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = call double @radius2(i64 %37, double %40, double %42)
  %44 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  store double %43, double* %44, align 8
  %45 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %46 = call %struct.CHpoints* @before(%struct.CHpoints* %45)
  %47 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %48 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %49 = call double @angle(%struct.CHpoints* %46, %struct.CHpoints* %47, %struct.CHpoints* %48)
  %50 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  store double %49, double* %50, align 8
  %51 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %52 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  call void @CHdelete(%struct.CHsplay_node** @CHSplaytree, %struct.key* byval(%struct.key) align 8 %6)
  %55 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %56 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %55, i32 0, i32 1
  %57 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %58 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %57, i32 0, i32 1
  %59 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %60 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %59, i32 0, i32 1
  %61 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %62 = call %struct.CHpoints* @next(%struct.CHpoints* %61)
  %63 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %62, i32 0, i32 1
  %64 = bitcast %struct.point* %58 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = bitcast %struct.point* %60 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = bitcast %struct.point* %63 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call { double, double } @centre(i64 %65, i64 %67, i64 %69)
  %71 = bitcast %struct.dpoint* %9 to { double, double }*
  %72 = getelementptr inbounds { double, double }, { double, double }* %71, i32 0, i32 0
  %73 = extractvalue { double, double } %70, 0
  store double %73, double* %72, align 8
  %74 = getelementptr inbounds { double, double }, { double, double }* %71, i32 0, i32 1
  %75 = extractvalue { double, double } %70, 1
  store double %75, double* %74, align 8
  %76 = bitcast %struct.point* %56 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = bitcast %struct.dpoint* %9 to { double, double }*
  %79 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = getelementptr inbounds { double, double }, { double, double }* %78, i32 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = call double @radius2(i64 %77, double %80, double %82)
  %84 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 0
  store double %83, double* %84, align 8
  %85 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %86 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %87 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %88 = call %struct.CHpoints* @next(%struct.CHpoints* %87)
  %89 = call double @angle(%struct.CHpoints* %85, %struct.CHpoints* %86, %struct.CHpoints* %88)
  %90 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 1
  store double %89, double* %90, align 8
  %91 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %92 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  call void @CHdelete(%struct.CHsplay_node** @CHSplaytree, %struct.key* byval(%struct.key) align 8 %7)
  %95 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  ret %struct.CHpoints* %95
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @draw_sec(%struct.CHpoints* %0) #0 {
  %2 = alloca %struct.CHpoints*, align 8
  %3 = alloca %struct.dpoint, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.CHpoints*, align 8
  %6 = alloca %struct.CHpoints*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.dpoint, align 8
  %9 = alloca %struct.dpoint, align 8
  %10 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %0, %struct.CHpoints** %2, align 8
  %11 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %12 = call %struct.CHpoints* @before(%struct.CHpoints* %11)
  %13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %12, i32 0, i32 1
  %14 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %15 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %14, i32 0, i32 1
  %16 = bitcast %struct.point* %13 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = bitcast %struct.point* %15 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @length2(i64 %17, i64 %19)
  %21 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %22 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %21, i32 0, i32 1
  %23 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %24 = call %struct.CHpoints* @next(%struct.CHpoints* %23)
  %25 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %24, i32 0, i32 1
  %26 = bitcast %struct.point* %22 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.point* %25 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @length2(i64 %27, i64 %29)
  %31 = icmp sgt i32 %20, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %1
  %33 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %34 = call %struct.CHpoints* @before(%struct.CHpoints* %33)
  %35 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %34, i32 0, i32 1
  %36 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %37 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %36, i32 0, i32 1
  %38 = bitcast %struct.point* %35 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = bitcast %struct.point* %37 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i32 @length2(i64 %39, i64 %41)
  %43 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %44 = call %struct.CHpoints* @before(%struct.CHpoints* %43)
  %45 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %44, i32 0, i32 1
  %46 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %47 = call %struct.CHpoints* @next(%struct.CHpoints* %46)
  %48 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %47, i32 0, i32 1
  %49 = bitcast %struct.point* %45 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = bitcast %struct.point* %48 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i32 @length2(i64 %50, i64 %52)
  %54 = icmp sgt i32 %42, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %57 = call %struct.CHpoints* @next(%struct.CHpoints* %56)
  store %struct.CHpoints* %57, %struct.CHpoints** %5, align 8
  br label %109

58:                                               ; preds = %32, %1
  %59 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %60 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %59, i32 0, i32 1
  %61 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %62 = call %struct.CHpoints* @next(%struct.CHpoints* %61)
  %63 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %62, i32 0, i32 1
  %64 = bitcast %struct.point* %60 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = bitcast %struct.point* %63 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = call i32 @length2(i64 %65, i64 %67)
  %69 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %70 = call %struct.CHpoints* @before(%struct.CHpoints* %69)
  %71 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %70, i32 0, i32 1
  %72 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %73 = call %struct.CHpoints* @next(%struct.CHpoints* %72)
  %74 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %73, i32 0, i32 1
  %75 = bitcast %struct.point* %71 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = bitcast %struct.point* %74 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call i32 @length2(i64 %76, i64 %78)
  %80 = icmp sgt i32 %68, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %58
  %82 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %83 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %82, i32 0, i32 1
  %84 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %85 = call %struct.CHpoints* @next(%struct.CHpoints* %84)
  %86 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %85, i32 0, i32 1
  %87 = bitcast %struct.point* %83 to i64*
  %88 = load i64, i64* %87, align 4
  %89 = bitcast %struct.point* %86 to i64*
  %90 = load i64, i64* %89, align 4
  %91 = call i32 @length2(i64 %88, i64 %90)
  %92 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %93 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %92, i32 0, i32 1
  %94 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %95 = call %struct.CHpoints* @before(%struct.CHpoints* %94)
  %96 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %95, i32 0, i32 1
  %97 = bitcast %struct.point* %93 to i64*
  %98 = load i64, i64* %97, align 4
  %99 = bitcast %struct.point* %96 to i64*
  %100 = load i64, i64* %99, align 4
  %101 = call i32 @length2(i64 %98, i64 %100)
  %102 = icmp sgt i32 %91, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %81
  %104 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %105 = call %struct.CHpoints* @before(%struct.CHpoints* %104)
  store %struct.CHpoints* %105, %struct.CHpoints** %5, align 8
  br label %108

106:                                              ; preds = %81, %58
  %107 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  store %struct.CHpoints* %107, %struct.CHpoints** %5, align 8
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108, %55
  %110 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %111 = call %struct.CHpoints* @before(%struct.CHpoints* %110)
  store %struct.CHpoints* %111, %struct.CHpoints** %4, align 8
  %112 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %113 = call %struct.CHpoints* @next(%struct.CHpoints* %112)
  store %struct.CHpoints* %113, %struct.CHpoints** %6, align 8
  %114 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %115 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %116 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %117 = call double @angle(%struct.CHpoints* %114, %struct.CHpoints* %115, %struct.CHpoints* %116)
  %118 = fcmp olt double %117, 0.000000e+00
  br i1 %118, label %119, label %166

119:                                              ; preds = %109
  %120 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %121 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %120, i32 0, i32 1
  %122 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %123 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %122, i32 0, i32 1
  %124 = bitcast %struct.point* %121 to i64*
  %125 = load i64, i64* %124, align 4
  %126 = bitcast %struct.point* %123 to i64*
  %127 = load i64, i64* %126, align 4
  %128 = call { double, double } @midpoint(i64 %125, i64 %127)
  %129 = bitcast %struct.dpoint* %8 to { double, double }*
  %130 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 0
  %131 = extractvalue { double, double } %128, 0
  store double %131, double* %130, align 8
  %132 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 1
  %133 = extractvalue { double, double } %128, 1
  store double %133, double* %132, align 8
  %134 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %8, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 0
  store double %135, double* %136, align 8
  %137 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %138 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %137, i32 0, i32 1
  %139 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %140 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %139, i32 0, i32 1
  %141 = bitcast %struct.point* %138 to i64*
  %142 = load i64, i64* %141, align 4
  %143 = bitcast %struct.point* %140 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call { double, double } @midpoint(i64 %142, i64 %144)
  %146 = bitcast %struct.dpoint* %9 to { double, double }*
  %147 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 0
  %148 = extractvalue { double, double } %145, 0
  store double %148, double* %147, align 8
  %149 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 1
  %150 = extractvalue { double, double } %145, 1
  store double %150, double* %149, align 8
  %151 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %9, i32 0, i32 1
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 1
  store double %152, double* %153, align 8
  %154 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %155 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %154, i32 0, i32 1
  %156 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %157 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %156, i32 0, i32 1
  %158 = bitcast %struct.point* %155 to i64*
  %159 = load i64, i64* %158, align 4
  %160 = bitcast %struct.point* %157 to i64*
  %161 = load i64, i64* %160, align 4
  %162 = call i32 @length2(i64 %159, i64 %161)
  %163 = sitofp i32 %162 to double
  %164 = call double @sqrt(double %163) #5
  %165 = fdiv double %164, 2.000000e+00
  store double %165, double* %7, align 8
  br label %198

166:                                              ; preds = %109
  %167 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %168 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %167, i32 0, i32 1
  %169 = load %struct.CHpoints*, %struct.CHpoints** %5, align 8
  %170 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %169, i32 0, i32 1
  %171 = load %struct.CHpoints*, %struct.CHpoints** %6, align 8
  %172 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %171, i32 0, i32 1
  %173 = bitcast %struct.point* %168 to i64*
  %174 = load i64, i64* %173, align 4
  %175 = bitcast %struct.point* %170 to i64*
  %176 = load i64, i64* %175, align 4
  %177 = bitcast %struct.point* %172 to i64*
  %178 = load i64, i64* %177, align 4
  %179 = call { double, double } @centre(i64 %174, i64 %176, i64 %178)
  %180 = bitcast %struct.dpoint* %10 to { double, double }*
  %181 = getelementptr inbounds { double, double }, { double, double }* %180, i32 0, i32 0
  %182 = extractvalue { double, double } %179, 0
  store double %182, double* %181, align 8
  %183 = getelementptr inbounds { double, double }, { double, double }* %180, i32 0, i32 1
  %184 = extractvalue { double, double } %179, 1
  store double %184, double* %183, align 8
  %185 = bitcast %struct.dpoint* %3 to i8*
  %186 = bitcast %struct.dpoint* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 16, i1 false)
  %187 = load %struct.CHpoints*, %struct.CHpoints** %2, align 8
  %188 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %187, i32 0, i32 1
  %189 = bitcast %struct.point* %188 to i64*
  %190 = load i64, i64* %189, align 4
  %191 = bitcast %struct.dpoint* %3 to { double, double }*
  %192 = getelementptr inbounds { double, double }, { double, double }* %191, i32 0, i32 0
  %193 = load double, double* %192, align 8
  %194 = getelementptr inbounds { double, double }, { double, double }* %191, i32 0, i32 1
  %195 = load double, double* %194, align 8
  %196 = call double @radius2(i64 %190, double %193, double %195)
  %197 = call double @sqrt(double %196) #5
  store double %197, double* %7, align 8
  br label %198

198:                                              ; preds = %166, %119
  %199 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 0
  %200 = load double, double* %199, align 8
  %201 = fptosi double %200 to i32
  %202 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %3, i32 0, i32 1
  %203 = load double, double* %202, align 8
  %204 = fptosi double %203 to i32
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.19, i64 0, i64 0), i32 %201, i32 %204)
  %206 = load double, double* %7, align 8
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %206)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @alg2() #0 {
  %1 = alloca %struct.point, align 4
  %2 = alloca %struct.dpoint, align 8
  %3 = alloca %struct.CHpoints*, align 8
  %4 = alloca %struct.CHpoints*, align 8
  %5 = alloca %struct.dpoint, align 8
  %6 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  call void @add_infinit_points_to_K(%struct.CHpoints* %6)
  %7 = load i32, i32* @CHno, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %93

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %20, %9
  %11 = load i32, i32* @CHno, align 4
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %85

13:                                               ; preds = %10
  %14 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %15 = call %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* %14)
  store %struct.CHpoints* %15, %struct.CHpoints** %3, align 8
  %16 = load i32, i32* @CHno, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  call void @draw_sec(%struct.CHpoints* %19)
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %22 = call %struct.CHpoints* @before(%struct.CHpoints* %21)
  store %struct.CHpoints* %22, %struct.CHpoints** %4, align 8
  %23 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %24 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %23, i32 0, i32 1
  %25 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %26 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %25, i32 0, i32 1
  %27 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %28 = call %struct.CHpoints* @next(%struct.CHpoints* %27)
  %29 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %28, i32 0, i32 1
  %30 = bitcast %struct.point* %24 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = bitcast %struct.point* %26 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = bitcast %struct.point* %29 to i64*
  %35 = load i64, i64* %34, align 4
  %36 = call { double, double } @centre(i64 %31, i64 %33, i64 %35)
  %37 = bitcast %struct.dpoint* %5 to { double, double }*
  %38 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 0
  %39 = extractvalue { double, double } %36, 0
  store double %39, double* %38, align 8
  %40 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 1
  %41 = extractvalue { double, double } %36, 1
  store double %41, double* %40, align 8
  %42 = bitcast %struct.dpoint* %2 to i8*
  %43 = bitcast %struct.dpoint* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = fptosi double %45 to i32
  %47 = getelementptr inbounds %struct.point, %struct.point* %1, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %2, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fptosi double %49 to i32
  %51 = getelementptr inbounds %struct.point, %struct.point* %1, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.point* %1 to i64*
  %53 = load i64, i64* %52, align 4
  call void @add_point(i64 %53)
  %54 = load i32, i32* @Kcount, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %57 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  call void @add_edge(i32 %55, i32 %58)
  %59 = load i32, i32* @Kcount, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %62 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  call void @add_edge(i32 %60, i32 %63)
  %64 = load i32, i32* @Kcount, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %67 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %69 = call %struct.CHpoints* @next(%struct.CHpoints* %68)
  %70 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %71 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %70, i32 0, i32 3
  store %struct.CHpoints* %69, %struct.CHpoints** %71, align 8
  %72 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %73 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %74 = call %struct.CHpoints* @next(%struct.CHpoints* %73)
  %75 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %74, i32 0, i32 4
  store %struct.CHpoints* %72, %struct.CHpoints** %75, align 8
  %76 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  store %struct.CHpoints* %76, %struct.CHpoints** @S, align 8
  %77 = load i32, i32* @CHno, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* @CHno, align 4
  %79 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %80 = call %struct.CHpoints* @next(%struct.CHpoints* %79)
  %81 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %80)
  %82 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  %83 = call %struct.CHpoints* @before(%struct.CHpoints* %82)
  %84 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %83)
  br label %10

85:                                               ; preds = %10
  %86 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %87 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.CHpoints*, %struct.CHpoints** %4, align 8
  %90 = call %struct.CHpoints* @next(%struct.CHpoints* %89)
  %91 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  call void @add_edge(i32 %88, i32 %92)
  br label %103

93:                                               ; preds = %0
  store i32 2, i32* @CHno, align 4
  br i1 true, label %94, label %102

94:                                               ; preds = %93
  %95 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %96 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %99 = call %struct.CHpoints* @next(%struct.CHpoints* %98)
  %100 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  call void @add_edge(i32 %97, i32 %101)
  br label %102

102:                                              ; preds = %94, %93
  br label %103

103:                                              ; preds = %102, %85
  %104 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %105 = bitcast %struct.CHpoints* %104 to i8*
  call void @free(i8* %105) #5
  %106 = load %struct.CHsplay_node*, %struct.CHsplay_node** @CHSplaytree, align 8
  call void @CHfree_tree(%struct.CHsplay_node* %106)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @construct_vor() #0 {
  %1 = call %struct.CHpoints* (...) bitcast (%struct.CHpoints* ()* @construct_ch to %struct.CHpoints* (...)*)()
  store %struct.CHpoints* %1, %struct.CHpoints** @S, align 8
  %2 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  call void @number_points(%struct.CHpoints* %2)
  call void @alg2()
  call void @clean_up()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @get_file()
  call void @construct_vor()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
