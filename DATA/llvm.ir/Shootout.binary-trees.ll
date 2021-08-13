; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.apr_pool_t = type opaque
%struct.tree_node = type { %struct.tree_node*, %struct.tree_node* }
%struct.apr_allocator_t = type opaque

@.str = private unnamed_addr constant [39 x i8] c"stretch tree of depth %jd\09 check: %jd\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%jd\09 trees of depth %jd\09 check: %jd\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"long lived tree of depth %jd\09 check: %jd\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.apr_pool_t*, align 8
  %9 = alloca %struct.tree_node*, align 8
  %10 = alloca %struct.tree_node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.apr_pool_t*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 4, i64* %6, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21) #5
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %23, 6
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %32

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29) #5
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %26, %25
  %33 = phi i64 [ 6, %25 ], [ %31, %26 ]
  store i64 %33, i64* %7, align 8
  %34 = call i32 @apr_initialize()
  %35 = call i32 @apr_pool_create_unmanaged_ex(%struct.apr_pool_t** %8, i32 (i32)* null, %struct.apr_allocator_t* null)
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.apr_pool_t*, %struct.apr_pool_t** %8, align 8
  %39 = call %struct.tree_node* @create_Tree(i64 %37, %struct.apr_pool_t* %38)
  store %struct.tree_node* %39, %struct.tree_node** %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.tree_node*, %struct.tree_node** %9, align 8
  %43 = call i64 @compute_Tree_Checksum(%struct.tree_node* %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %43)
  %45 = load %struct.apr_pool_t*, %struct.apr_pool_t** %8, align 8
  call void @apr_pool_clear(%struct.apr_pool_t* %45)
  %46 = load i64, i64* %7, align 8
  %47 = sub nsw i64 %46, 4
  %48 = add nsw i64 %47, 2
  %49 = sdiv i64 %48, 2
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %12, align 8
  %51 = alloca i64, i64 %49, align 16
  store i64 %49, i64* %13, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.apr_pool_t*, %struct.apr_pool_t** %8, align 8
  %54 = call %struct.tree_node* @create_Tree(i64 %52, %struct.apr_pool_t* %53)
  store %struct.tree_node* %54, %struct.tree_node** %10, align 8
  %55 = load %struct.tree_node*, %struct.tree_node** %10, align 8
  %56 = call i64 @compute_Tree_Checksum(%struct.tree_node* %55)
  store i64 %56, i64* %11, align 8
  %57 = call i32 @apr_pool_create_unmanaged_ex(%struct.apr_pool_t** %14, i32 (i32)* null, %struct.apr_allocator_t* null)
  store i64 4, i64* %15, align 8
  br label %58

58:                                               ; preds = %88, %32
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  store i64 0, i64* %16, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %15, align 8
  %65 = sub nsw i64 %63, %64
  %66 = add nsw i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = shl i32 1, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %17, align 8
  br label %70

70:                                               ; preds = %74, %62
  %71 = load i64, i64* %17, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %17, align 8
  %73 = icmp sgt i64 %71, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.apr_pool_t*, %struct.apr_pool_t** %14, align 8
  call void @apr_pool_clear(%struct.apr_pool_t* %75)
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.apr_pool_t*, %struct.apr_pool_t** %14, align 8
  %78 = call %struct.tree_node* @create_Tree(i64 %76, %struct.apr_pool_t* %77)
  %79 = call i64 @compute_Tree_Checksum(%struct.tree_node* %78)
  %80 = load i64, i64* %16, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %16, align 8
  br label %70

82:                                               ; preds = %70
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub nsw i64 %84, 4
  %86 = sdiv i64 %85, 2
  %87 = getelementptr inbounds i64, i64* %51, i64 %86
  store i64 %83, i64* %87, align 8
  br label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %15, align 8
  %90 = add nsw i64 %89, 2
  store i64 %90, i64* %15, align 8
  br label %58

91:                                               ; preds = %58
  %92 = load %struct.apr_pool_t*, %struct.apr_pool_t** %14, align 8
  call void @apr_pool_destroy(%struct.apr_pool_t* %92)
  store i64 4, i64* %18, align 8
  br label %93

93:                                               ; preds = %110, %91
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %18, align 8
  %100 = sub nsw i64 %98, %99
  %101 = add nsw i64 %100, 4
  %102 = shl i64 1, %101
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %18, align 8
  %105 = sub nsw i64 %104, 4
  %106 = sdiv i64 %105, 2
  %107 = getelementptr inbounds i64, i64* %51, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %102, i64 %103, i64 %108)
  br label %110

110:                                              ; preds = %97
  %111 = load i64, i64* %18, align 8
  %112 = add nsw i64 %111, 2
  store i64 %112, i64* %18, align 8
  br label %93

113:                                              ; preds = %93
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %114, i64 %115)
  %117 = load %struct.apr_pool_t*, %struct.apr_pool_t** %8, align 8
  call void @apr_pool_destroy(%struct.apr_pool_t* %117)
  call void @apr_terminate()
  store i32 0, i32* %3, align 4
  %118 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @apr_initialize() #2

declare dso_local i32 @apr_pool_create_unmanaged_ex(%struct.apr_pool_t**, i32 (i32)*, %struct.apr_allocator_t*) #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.tree_node* @create_Tree(i64 %0, %struct.apr_pool_t* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.apr_pool_t*, align 8
  %5 = alloca %struct.tree_node*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.apr_pool_t* %1, %struct.apr_pool_t** %4, align 8
  %6 = load %struct.apr_pool_t*, %struct.apr_pool_t** %4, align 8
  %7 = call i8* @apr_palloc(%struct.apr_pool_t* %6, i64 16)
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 16, i1 false)
  %8 = bitcast i8* %7 to %struct.tree_node*
  store %struct.tree_node* %8, %struct.tree_node** %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %12, 1
  %14 = load %struct.apr_pool_t*, %struct.apr_pool_t** %4, align 8
  %15 = call %struct.tree_node* @create_Tree(i64 %13, %struct.apr_pool_t* %14)
  %16 = load %struct.tree_node*, %struct.tree_node** %5, align 8
  %17 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %16, i32 0, i32 0
  store %struct.tree_node* %15, %struct.tree_node** %17, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.apr_pool_t*, %struct.apr_pool_t** %4, align 8
  %21 = call %struct.tree_node* @create_Tree(i64 %19, %struct.apr_pool_t* %20)
  %22 = load %struct.tree_node*, %struct.tree_node** %5, align 8
  %23 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %22, i32 0, i32 1
  store %struct.tree_node* %21, %struct.tree_node** %23, align 8
  br label %24

24:                                               ; preds = %11, %2
  %25 = load %struct.tree_node*, %struct.tree_node** %5, align 8
  ret %struct.tree_node* %25
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @compute_Tree_Checksum(%struct.tree_node* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tree_node*, align 8
  store %struct.tree_node* %0, %struct.tree_node** %3, align 8
  %4 = load %struct.tree_node*, %struct.tree_node** %3, align 8
  %5 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %4, i32 0, i32 0
  %6 = load %struct.tree_node*, %struct.tree_node** %5, align 8
  %7 = icmp ne %struct.tree_node* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.tree_node*, %struct.tree_node** %3, align 8
  %10 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %9, i32 0, i32 1
  %11 = load %struct.tree_node*, %struct.tree_node** %10, align 8
  %12 = icmp ne %struct.tree_node* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.tree_node*, %struct.tree_node** %3, align 8
  %15 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %14, i32 0, i32 0
  %16 = load %struct.tree_node*, %struct.tree_node** %15, align 8
  %17 = call i64 @compute_Tree_Checksum(%struct.tree_node* %16)
  %18 = load %struct.tree_node*, %struct.tree_node** %3, align 8
  %19 = getelementptr inbounds %struct.tree_node, %struct.tree_node* %18, i32 0, i32 1
  %20 = load %struct.tree_node*, %struct.tree_node** %19, align 8
  %21 = call i64 @compute_Tree_Checksum(%struct.tree_node* %20)
  %22 = add nsw i64 %17, %21
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %2, align 8
  br label %25

24:                                               ; preds = %8, %1
  store i64 1, i64* %2, align 8
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local void @apr_pool_clear(%struct.apr_pool_t*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local void @apr_pool_destroy(%struct.apr_pool_t*) #2

declare dso_local void @apr_terminate() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i8* @apr_palloc(%struct.apr_pool_t*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
